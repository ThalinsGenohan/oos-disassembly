; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $032", ROMX

    xor b

Jump_032_4001:
    add h
    ld hl, sp-$0c
    ret c

    or d
    call c, $dcba
    ld d, h
    nop
    jr @+$68

    ld h, h
    dec h
    sub c
    ld [$0891], sp
    reti


    nop
    db $db
    nop

jr_032_4017:
    db $db
    nop
    nop
    dec d
    ret nz

    sub $a0
    ld d, [hl]
    db $20, $93
    ld h, b
    cp e

Jump_032_4023:
    ld b, b
    cp c
    ld b, b
    ld sp, $2535
    ld d, h
    nop
    ld [bc], a
    sbc c
    inc d
    ld d, h
    sub a
    nop
    or e
    inc b
    and c
    inc b
    add sp, $05
    jp z, $0005

    ld d, l
    ld hl, $3041
    ld b, c
    jr nc, jr_032_4092

    jr nz, jr_032_4096

    jr nz, jr_032_4017

    sub $d6
    jp nz, Jump_032_4001

    adc c
    cp h
    inc bc
    cp b
    rlca
    sub d
    dec c
    ld d, $36
    and [hl]
    add hl, de
    db $e4
    dec de
    call nz, $143b
    nop
    rrca
    sbc d
    ld b, a
    jp nc, $f6f2

    dec bc
    db $ec
    inc bc
    call z, $5603
    adc c
    and [hl]
    add hl, de
    nop
    dec d
    ld a, c
    inc h
    db $db
    ld h, h
    sbc e
    pop de
    ld a, $d2
    dec a
    sub e
    ld a, l
    and [hl]
    add $c6
    ld d, l
    ld d, l
    rst $38
    inc bc
    inc de
    ld d, l
    ld d, l
    ld e, l
    ld e, l
    ld a, l
    scf
    ld b, d
    xor d
    nop
    ldh [$38], a
    ret nz

    rlca
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38

jr_032_4092:
    db $f4
    ld a, [hli]
    nop
    add b

jr_032_4096:
    adc [hl]
    ld [hl], b
    inc e
    ldh [rIE], a
    rst $38
    rst $38
    jr nz, jr_032_40b3

    cp $fa
    db $ec
    db $ec
    xor $fc
    and $fc
    or $fc
    db $f4
    ld a, h
    cp h
    ld a, [hl]
    push af
    ld d, l
    rst $38
    ld a, a
    ld a, a

jr_032_40b2:
    ccf

jr_032_40b3:
    ccf
    xor a
    xor a
    ld d, h
    nop
    ld b, b
    xor c
    xor c
    adc c
    ld d, e
    add b
    ld d, d
    add c
    ld d, [hl]
    add c
    ld d, h
    add e
    sub l
    ld [bc], a
    ld bc, $0055
    di
    inc b
    db $d3
    inc b
    db $db
    inc b
    adc [hl]
    xor [hl]
    xor h
    dec a
    dec a
    ld d, b
    ld bc, $b900
    dec sp
    jr nc, jr_032_40dd

    ld [hl], h
    ld [bc], a

jr_032_40dd:
    ld [hl], d
    inc b
    ld a, d
    inc b
    ei
    inc b
    rst $38
    ld b, d
    ld [bc], a
    db $fc
    jp z, $eed8

    call c, $eeee
    db $ec
    cp $ed
    cp $fd
    cp $ff
    rst $38
    jp z, $feff

    cp $fe
    cp $01
    ld d, b

jr_032_40fd:
    ld l, b
    inc h
    ret nz

    inc c
    ldh [$0e], a
    ldh [$86], a
    add h
    sub l
    or c
    ld c, h
    or c
    ld c, h
    inc d
    nop
    dec c
    ld a, [bc]
    dec b
    jr nz, jr_032_40b2

    and h
    add hl, bc
    add b

jr_032_4115:
    add hl, bc
    ld a, [de]
    ld bc, $0310
    inc [hl]

jr_032_411b:
    inc bc
    nop
    dec d
    nop
    jp z, $8a21

    ld h, c
    ld [bc], a
    pop hl
    inc hl
    ret nz

    cp c
    ld b, b
    reti


    sbc c

Jump_032_412b:
    cp h
    nop
    ld d, l
    jr nz, jr_032_40fd

    ld [hl-], a
    call $cd32
    ld [hl-], a
    rst $08
    jr nc, jr_032_4115

    db $dd
    reti


    reti


    and b
    nop
    adc a
    jr nc, jr_032_4170

    ld c, $31
    ld l, $11
    inc l
    inc de
    ld a, h
    inc bc
    ld a, l
    ld [bc], a
    ld a, c
    ld b, $80
    ld d, b
    jp nz, $927d

    ld l, l
    jr z, jr_032_411b

    add hl, de
    add $1d
    rra
    ld a, [hl-]
    rst $00
    ld a, [hl-]
    rst $00
    ld d, c
    ld d, l
    rst $38
    scf
    scf
    and a
    ld a, a
    daa
    daa
    cpl
    cpl
    daa
    rlca
    ld c, d
    nop
    jr nz, @+$21

    ld [$0307], sp

jr_032_4170:
    ldh a, [$1f]
    ldh [rIE], a
    rst $38
    and b
    ld a, [bc]
    nop
    rst $38
    rst $38
    ret nz

    ccf
    jr nc, jr_032_418d

    ld c, $01
    ret nz

    ccf
    rst $38
    rst $38
    ld d, h
    nop
    cp [hl]
    ld a, h
    db $fd
    db $fd
    sbc l
    cp $fe

jr_032_418d:
    rst JumpTable
    jp c, $eaff

    rst $38
    jp z, $60ff

    nop
    jr c, jr_032_4198

jr_032_4198:
    ld b, h
    ld b, h
    cp d
    ld e, l
    and e
    ld e, l
    and e
    ld b, l
    cp e
    add hl, sp
    ld b, l

Jump_032_41a3:
    inc bc
    dec sp
    ld [bc], a
    ld c, a
    ld c, h
    ld c, [hl]
    ld e, l
    ld c, a
    ld c, h
    nop
    jr c, jr_032_41fe

    inc b
    ld e, l

jr_032_41b1:
    ld c, [hl]
    ld c, h
    ld c, a
    add b
    nop
    ld c, b
    ld c, l
    ld e, a
    ld sp, $5e5c
    inc bc
    ld [$2800], sp
    ld e, a
    ld c, l
    ld e, [hl]

Jump_032_41c3:
    inc bc
    ld [$1fc3], sp
    ld d, b
    dec a
    db $10
    ld c, [hl]
    ld e, l
    ld b, b
    ld b, c
    ld bc, $3d20
    db $10
    ld sp, $4e5d
    rra
    ld d, b
    dec a
    jr jr_032_4238

    ld d, b
    ld d, c
    ld bc, $9f20
    dec a
    db $10
    ld e, [hl]
    ld e, h
    rra
    ld d, b
    dec a
    ld d, b
    ld b, c
    jr nc, jr_032_4269

    ld [hl], b
    dec a
    jr nc, @-$3e

    ld b, c
    jr nc, jr_032_4210

    ld e, b
    ld e, l
    add a
    ld b, b
    ld b, c
    ld h, h
    ld h, h
    sub b
    inc bc
    ld b, b
    add a
    ld e, l
    rra

jr_032_41fe:
    ld [hl], b
    ld d, b
    ld d, c
    ld h, l
    ld h, l
    db $fd
    inc bc
    ld b, b
    rra
    add b
    ld a, [hl]
    ld d, b
    ccf
    and b
    ld bc, $1f50
    ld l, b

jr_032_4210:
    ld c, [hl]
    ccf
    jr nz, jr_032_424e

    ld b, h
    ld b, l
    ld bc, $3f10
    jr nz, @+$01

    ld l, b

Jump_032_421c:
    add a
    nop
    db $10
    ld d, h
    ld a, e
    ld d, l
    ld bc, $0a10
    jr @+$01

    ld [hl], b
    nop
    jr @+$17

    nop
    jr jr_032_41b1

    add hl, hl
    rst $38
    rst $38
    ld l, b
    nop
    db $10
    rra
    jr nz, @-$7b

    add hl, hl

jr_032_4238:
    sbc a
    ld h, b
    or [hl]
    jr jr_032_42bc

    jr nz, @+$43

    ld hl, $1f83
    ld l, b
    ld d, b
    ld d, c
    sub b
    sub c
    ld d, b
    ld a, a
    jr nz, jr_032_4254

    db $10
    ld b, e
    ld d, c

jr_032_424e:
    rra
    ld [hl], b
    ld b, b
    ld b, c
    add [hl]
    add [hl]

jr_032_4254:
    ccf
    jr nc, jr_032_4260

    ld [$3ffe], sp
    adc b
    ld bc, $3f08
    jr z, jr_032_426b

jr_032_4260:
    db $10
    ccf
    add b
    ld a, a
    nop
    nop
    ld bc, $3008

jr_032_4269:
    push hl
    nop

jr_032_426b:
    jr @+$81

    xor b
    ld bc, $3008
    jr nz, jr_032_4273

jr_032_4273:
    ld [$3f30], sp
    ret z

    ret nz

    rra
    jr jr_032_42ba

    ret nz

    add sp, -$17
    ld hl, $e821
    jp hl


    ret nz

    ccf
    sub b
    rra
    ld [hli], a
    ld hl, sp-$07
    ld [hli], a
    ld [hli], a
    ld hl, sp-$07
    ret nz

    rra
    adc d
    ld e, a
    ld a, [hli]
    ld [$80eb], a
    add b
    ld [$c0eb], a
    ld e, a
    adc d
    ld d, a
    dec bc
    nop
    ld h, b
    dec hl
    nop
    db $10
    ld [$4800], sp
    ld e, $88
    rra
    adc b
    ld a, h
    inc c
    nop
    jr z, @+$21

    nop
    ld [hl], $1d
    jr nc, jr_032_42d4

    jr nc, jr_032_42d4

    nop
    ld l, $0e
    inc c

jr_032_42b9:
    rla

jr_032_42ba:
    inc c
    ld a, [bc]

jr_032_42bc:
    ld a, [hli]
    inc bc
    ld b, b
    ld c, $1f
    nop
    inc sp
    nop
    ld d, b
    rra
    nop
    ld d, d
    rst $38
    nop
    db $10
    dec de
    jr z, jr_032_42ce

jr_032_42ce:
    db $10
    ld e, a
    sbc c
    rra
    jr nz, @+$66

jr_032_42d4:
    add hl, hl
    rra
    ldh [$3f], a
    ld [hl], b
    rst $20
    ld a, [hl]
    ld h, b
    ld hl, $1f11
    ld [hl], b
    ld [$1b08], sp
    jr nc, @+$0b

    db $10
    rra
    adc b
    ld a, a
    jr z, jr_032_430a

    jr c, @+$0b

    ld [$005f], sp
    ld [hl-], a
    ld a, a
    nop
    nop
    reti


    ld sp, $21e5
    rra
    and b
    ld [$0d0d], sp
    dec l
    dec l
    rra
    nop
    dec sp
    dec bc
    dec bc
    dec c
    ld l, [hl]
    dec l
    ld a, [bc]
    jr z, @+$21

jr_032_430a:
    ld l, b
    ld c, e
    nop
    jr jr_032_432e

    jr nz, @+$0c

    jr @+$6d

    db $e4
    rra
    ld e, b
    ld e, $20
    rra
    ld [$0e0e], sp
    rra
    jr z, jr_032_436a

    ld l, e
    ret nz

    rra
    ld d, b
    ld b, b
    add e
    jr nz, @+$32

    ld sp, $d4d3
    push de
    sub $00
    rst AddAToHL

jr_032_432e:
    ret c

    reti


    jp c, $32db

    inc sp
    inc [hl]
    ld e, b
    dec [hl]
    jr nc, jr_032_42b9

    nop
    dec bc
    dec l
    call nz, $36e1
    nop
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eb06], a
    db $ec
    db $ed
    xor $ca
    rra
    db $10
    jr nz, @-$35

    nop
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fb0c]
    db $fc
    db $fd
    cp $4f
    rra
    db $10
    ret z

    inc bc
    nop
    rlc l
    ld b, $07

jr_032_436a:
    ld [$0a09], sp
    dec bc
    ld [$0d0c], sp
    ld c, $cb
    rra
    ld de, $1211
    jp $cb00


    ret nz

    ld d, $17
    jr jr_032_4398

    ld a, [de]
    dec de
    ld [$1d1c], sp
    ld e, $c1
    rra
    ld de, $2221
    inc hl
    add hl, sp
    inc h
    ld d, h
    ld b, a
    nop
    add hl, bc
    rra
    inc c
    inc a
    dec a
    add hl, de
    inc c
    sub [hl]

jr_032_4398:
    ld h, b
    dec a
    inc a
    rra
    inc c
    ld c, h
    ld e, $10
    jr nz, jr_032_43ee

    xor d
    rra
    inc c
    ld e, h
    rra
    ld [de], a
    ld e, h
    rra
    inc c
    ld c, l
    rra
    ld [de], a
    ld c, l
    push af
    rra
    inc c
    ld e, $12
    jr nz, jr_032_43d5

    xor h
    ld b, [hl]
    rra
    rra
    ld b, a
    ld e, $12
    ld b, l
    ld a, $1f
    inc c
    ld d, a
    ld e, b
    ld e, c
    rra
    db $10
    ccf
    rra
    inc c
    ld [bc], a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    add e
    ld b, l
    ld e, $0c
    ld c, [hl]
    ld b, b
    ld c, a

jr_032_43d5:
    rra
    inc c
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    add e
    ld d, l
    ld b, b
    ld d, [hl]
    db $db
    ld e, d
    ld e, e
    add e
    ld e, l
    ld e, [hl]
    ld e, a
    ret nz

    rra
    inc c
    ld e, a
    ld bc, $0020
    nop

jr_032_43ee:
    ld c, $51
    nop
    dec c
    ld e, $0f
    rra
    ld de, $20eb
    ld e, $1f
    ld e, a
    ld h, b
    rra
    ld a, [bc]
    jr nz, jr_032_441e

    inc de
    nop
    dec c
    rst $20
    rra
    ld d, $15
    ld de, $1900
    ld hl, $1f21
    ld a, [hl]
    nop
    nop
    nop
    ld c, [hl]
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    ld l, b
    add e

jr_032_441e:
    add e
    add e
    ld c, e
    ld l, c
    ld l, d
    ld l, e
    inc b
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    add b
    nop
    ld c, b
    ld [hl], b
    ld [hl], c
    nop
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l

jr_032_4433:
    db $76
    ld [hl], a
    ld a, b
    ld c, b
    nop
    add e
    ld c, c
    ld c, d

jr_032_443b:
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    jr nz, jr_032_44c0

    ld a, a
    rra
    ld d, b
    scf
    jr c, jr_032_4481

    ld a, [hl-]
    dec sp
    nop
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ld b, $8c
    adc l
    adc [hl]
    adc a
    cp a
    dec e
    ld d, b
    nop
    ld [$0090], sp
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    nop
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    or b
    add b
    ld e, $60
    and b
    and c
    add b
    and d
    and e
    and h
    and l
    nop
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e

jr_032_4481:
    xor h
    xor l
    jr nz, jr_032_4433

    xor a
    ld a, $68
    or b
    or c
    or d
    add b
    or e
    nop
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    sbc c
    ld de, $bb18
    cp h
    ld [hli], a
    ld l, b
    ld a, e
    jr nz, jr_032_443b

    sbc h
    ld a, $08
    ld b, $80
    add b
    cp h
    cp l
    cp [hl]
    ld e, $68
    nop
    db $10
    push af
    ld [bc], a
    or $f7
    ld hl, sp-$07
    ld a, [$19fc]
    adc b
    add b
    ld bc, $e280
    db $e3
    db $e4
    push hl
    and $81

jr_032_44c0:
    nop
    ld [$e704], sp
    add sp, -$17
    ld [$21eb], a
    sub b
    add h
    add c
    ld c, e
    add c
    cp a
    ld [$8181], sp
    sbc $10
    ldh a, [rNR32]
    ld [hl], b
    sbc $08
    ld c, b
    add l
    dec a
    db $10
    sbc c
    sbc d
    call c, $8208
    add d
    nop
    ld e, b
    ld bc, $70df
    add c
    db $fd
    jr jr_032_450d

    ld [$82a5], sp
    add d
    ld a, [bc]
    set 1, h

jr_032_44f3:
    res 0, d
    ld [c], a
    ld h, b
    add c
    db $fd
    ld [$4481], sp
    add c
    cp $18
    di
    db $f4
    add d
    nop
    ld [$becf], sp
    add [hl]
    ld b, c
    ld e, c
    add c
    or d
    or e
    add c

jr_032_450d:
    cp $20
    inc e
    db $10
    add d
    jr nc, jr_032_44f3

    sbc $04
    ld [$501f], sp
    or c
    pop bc
    jp nz, $00c3

    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $3082

    add d
    call $1823
    rra
    ld e, b
    ret nc

    pop de
    jp nc, $00d3

    call nc, $d6d5
    rst AddAToHL
    ret c

    reti


jr_032_4538:
    jp c, $22db

    call c, $1cdd
    ld [$0302], sp
    inc b
    rra
    ld d, b
    ldh [$60], a
    pop hl
    ld hl, sp+$09
    nop
    jr z, jr_032_4538

    db $ed
    xor $ef
    ld de, $1210
    inc de
    inc d
    rra
    ld d, b
    pop af
    ld a, [c]
    add e
    add e
    nop
    rst $38
    cp $fd
    add e
    db $ec
    add e
    add e
    ei
    rlca
    add e
    add e
    db $fd
    cp $ff
    daa
    ld [$501f], sp
    ld c, $08
    inc b
    rrca
    ld c, $83
    dec c
    inc c
    dec e
    db $10
    dec bc
    inc c
    ld c, h
    dec c
    ld c, $08
    ld a, [c]
    pop af
    rra
    ld l, b
    nop
    ld [$0706], sp
    ld [de], a
    ld [$0a09], sp
    ld [$0e10], sp
    rrca
    ccf
    ld a, b
    inc e
    nop
    dec e
    add e
    dec d
    ld d, $17
    jr jr_032_45b1

    ld a, [de]
    inc c
    dec de
    add e
    add e
    ld e, $2d
    jr @+$21

    ld d, b
    jr nz, jr_032_45c5

    nop
    ld [hli], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_032_45d6

    nop
    ld a, [hli]
    dec hl
    add e

jr_032_45b1:
    add e
    cpl
    inc h
    inc hl
    ld [hli], a
    inc h
    ld hl, $1f20
    ld d, b
    ld e, h
    ld e, l
    db $d3
    ld [$3635], sp
    adc b
    add [hl]
    ld a, [de]
    add e

jr_032_45c5:
    add e
    ld a, $ff
    ld a, b
    ld l, h
    ld l, l
    ld a, h
    nop
    ld a, l
    add d
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    add hl, bc

jr_032_45d6:
    ld c, e
    add e
    add e
    ld c, [hl]
    dec e
    ld [$5c5d], sp
    rra
    ld d, b
    nop
    inc l
    dec l
    ld l, $82
    add d
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    add e
    add e
    ld e, [hl]
    add d
    rrca
    ld a, l
    ld a, h
    ld l, l
    ld l, h
    rra
    ld d, b
    ld d, b
    jr jr_032_461b

    inc de
    dec de
    dec bc
    rla
    add e
    add e
    ld l, [hl]
    ld e, a
    ld a, b
    inc a
    rrca
    ld [$1b1f], sp
    dec de
    dec bc
    ld d, $83
    add e
    ld a, [hl]
    ld e, $10
    inc a
    rra
    ld d, b
    ld a, l
    ld [$0082], sp
    jr nc, jr_032_464c

jr_032_461b:
    ld d, d
    ld h, d
    ld [hl], d
    ccf
    ld c, a
    ld e, a
    nop
    ld l, a
    add e
    ld [hl-], a
    inc sp
    add d
    add d
    ld c, h
    ld c, l
    add h
    ld e, a
    ld [hl], b
    ld b, b
    ld b, c
    ld [hl], $34
    ret nz

    jr nz, jr_032_4676

    ld b, e
    jp nz, $705f

    rrca
    db $10
    ld d, b
    ld d, c
    ld b, [hl]
    ld b, h
    ret nz

    jr z, jr_032_4694

    add l
    rra
    sub b
    ld h, b
    ld h, c
    ld d, [hl]
    ld d, h
    ret nz

    jr z, jr_032_46ae

    rra

jr_032_464c:
    sub b
    dec bc
    ld [hl], b
    ld [hl], c
    ld h, [hl]
    ld h, h
    ret nz

    jr z, jr_032_46c8

    rra
    ld [hl], b
    ld e, a
    ld bc, $1300
    add hl, bc
    nop
    dec bc
    rra
    ld [hl-], a
    dec e
    inc c
    rra
    inc d

jr_032_4664:
    jr nz, jr_032_4664

    rra
    ld c, $42
    rra
    dec e
    ld l, $18
    dec c
    dec e
    dec c
    nop
    ld de, $dc01
    ld b, b
    rla

jr_032_4676:
    inc d
    rrca
    add b
    add hl, de
    inc d
    dec e
    ld a, [bc]
    inc c
    inc c
    rst $38
    inc hl
    ld e, $18
    dec sp
    ld e, h
    add h
    inc e
    inc d
    ld b, e
    ld a, h
    db $fd
    ld h, b
    jr z, jr_032_46ac

    ld de, $a69a
    inc h
    cpl
    ld b, e

jr_032_4694:
    cp $1f
    ld c, $75
    ld e, d
    nop
    dec bc
    rra
    dec c
    ld e, [hl]
    ld a, [de]
    dec bc
    inc l
    ld a, d
    inc l
    rra
    rrca
    dec de
    dec bc
    nop
    add hl, bc
    rra
    ld l, $0b

jr_032_46ac:
    nop
    add hl, bc

jr_032_46ae:
    dec c
    cp a

jr_032_46b0:
    rra
    rla
    dec l
    jr nz, jr_032_46d8

    ld e, [hl]
    ld b, d
    jr nz, jr_032_46dd

    ld a, h
    dec bc
    rra
    inc c
    ld c, [hl]
    ld a, l
    ld b, d
    db $fd
    inc l
    inc l
    cp $1f
    rrca
    ld b, b
    ld e, c

jr_032_46c8:
    sbc e
    ld c, b
    ld b, h
    rra
    ld c, $0c
    ld a, a
    inc c
    cp [hl]
    ld a, d
    ld a, l
    rra
    ld c, $3d
    ld b, b
    rra

jr_032_46d8:
    ld a, [bc]
    ld [hl], l
    inc l
    ld h, b
    rra

jr_032_46dd:
    inc c
    add b
    ld c, $ff
    dec bc
    ld a, [de]
    ld de, $1f9f
    ld [de], a
    add hl, hl
    add hl, hl
    rra
    inc e
    dec a
    rra
    ld e, $00
    inc d
    sbc $bb
    rst $38
    add hl, hl
    rra
    ld [de], a
    ld hl, $0b80
    ld hl, $101b
    cp e
    cp a
    dec c
    ld b, d
    rra
    dec e
    and b
    dec bc
    jr nz, jr_032_4725

    inc [hl]
    ldh [$fe], a
    rra
    inc d
    nop
    add b
    add b
    add d
    add e
    add h
    add l
    add [hl]
    ld a, a
    and b
    nop
    ld d, b
    and h
    nop
    ld c, b
    adc e
    add b
    add b
    adc l
    adc [hl]
    jr z, jr_032_46b0

    sub b
    jr jr_032_4744

    sub [hl]

jr_032_4725:
    rra
    add b
    sbc b
    add b
    add b
    nop
    sbc d
    sbc e
    sbc h
    sbc l
    ld a, a
    ld a, a
    sbc [hl]
    sbc a
    db $10
    and b
    and c
    and d
    rra
    add b
    add b
    add b
    add b
    and a
    nop
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l

jr_032_4744:
    xor [hl]
    xor a
    inc b
    add b
    or b
    or c
    or d
    ld d, a
    rra
    add b
    or l
    or [hl]
    nop
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    inc b
    cp a
    ret nz

    pop bc
    ld e, b
    ld e, c
    rra
    ld a, b
    add b
    call nz, $c500
    add $c7
    ret z

    ret


    jp z, $cccb

    inc b
    call $cfce
    ld e, d
    ld e, e
    rra
    add b
    jp nc, $00d3

    call nc, $d6d5
    rst AddAToHL
    ret c

    reti


    jp c, $08db

    call c, Call_032_5cdd
    ld e, l
    rra
    add b
    ldh [$e1], a
    ld [c], a
    nop
    db $e3
    db $e4
    push hl
    and $e7
    or e
    add sp, -$17
    db $10
    ld [$955e], a
    rra
    add b
    rst $28
    ldh a, [$f1]
    ld a, [c]
    nop
    ld a, a
    ld a, a
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld [$9595], sp
    ld h, c
    ld h, d
    rra
    ld d, b
    ld a, [$8080]
    nop
    ei
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0002
    inc bc
    inc b
    dec b
    ld b, $95
    sub l
    sub l
    ld [hl], c
    ld b, b
    ld [hl], d
    rra
    ld d, b
    rlca
    ld [$0980], sp
    ld a, [bc]
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    jr @+$16

    dec d
    ld e, a
    ld hl, $1f08
    ld d, b
    ld d, $17
    ld [$1800], sp
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    jr nz, jr_032_480c

    add b
    ld [hli], a
    inc hl
    ld h, b
    ld h, e
    ld h, h
    ld b, b
    ld h, l
    ld a, a
    ld e, b
    inc h
    dec h
    inc d
    ld h, $27
    jr z, jr_032_47fc

jr_032_47fc:
    add hl, hl
    ld a, [hli]
    dec hl
    inc l
    dec l
    add b
    ld l, $2f
    ld [$70b3], sp
    ld a, a
    dec l
    sbc a
    ld h, b
    inc d

jr_032_480c:
    jr nc, jr_032_483f

    nop
    ld [hl-], a
    inc sp
    inc [hl]
    ld a, a
    dec [hl]
    ld [hl], $37
    add b
    nop
    add b
    jr c, jr_032_4854

    ld a, [hl-]
    ld h, [hl]
    ld h, a
    di
    dec hl
    add b
    cp a
    ld h, b
    ld a, [$3c3b]
    dec a
    ld a, $7f
    ccf
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    db $76
    db $10
    ld [hl], a
    ld a, a
    inc l
    rra
    ld d, b
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    ld c, e

jr_032_483f:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld [bc], a
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld [hl], e
    ld [hl], h
    rst $38
    ld l, b
    add c
    add b
    rst $38
    add hl, de
    add a

jr_032_4854:
    adc b
    adc c
    adc d
    ld l, h
    ld l, l
    ld l, [hl]
    ld [hli], a
    ld l, b
    ld l, c
    cp a
    ld [hl], c
    add d
    adc e
    adc h
    rst $38
    ld de, $0091
    sub d
    sub e
    sub h
    add b

jr_032_486a:
    ld l, a
    ld a, a
    ld a, b
    ld a, c
    add d
    rra
    ld [hl], b
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    ld bc, $9e12
    inc bc
    sbc a
    ld a, h
    ld a, l
    ld a, a
    ld l, d
    ld l, e
    rra
    ld [hl], b
    inc d
    ld a, [bc]
    ld [$a4a3], sp
    and l
    and [hl]
    inc bc
    ld [hli], a
    ld a, [hl]
    ld a, d
    ld a, e
    rst $20
    rra
    ld [hl], b

jr_032_4891:
    ld d, $0a
    dec d
    ld a, [bc]
    or e
    or h
    inc b
    ld [hli], a
    ccf
    add d
    ld d, $2a
    ld c, $c2
    add b
    add b
    jp $0a06


    rra
    add b
    jr jr_032_48e2

jr_032_48a8:
    ret nc

    ld [hl], d
    pop de
    ld b, $1a
    rra
    ld [hl], b
    ld d, $2a
    sbc $df
    inc b
    ld a, [de]
    add d
    inc h
    push hl
    dec bc
    rst JumpTable
    ld [hl], b
    and $e7
    dec d
    ld a, [bc]
    db $eb
    db $ec
    ld c, $ed
    ldh [$ee], a
    rst $28
    dec bc
    ld [de], a
    rst $00
    ld de, $581f
    ld a, [c]
    ld c, h
    di
    jr jr_032_48f3

    ldh [$e0], a
    ld a, [bc]
    ld a, [bc]
    dec l
    dec bc
    dec d
    ld d, $60
    rla
    rra
    ld e, b
    ld a, [de]
    ld [hli], a
    ldh [rDIV], a
    dec b

jr_032_48e2:
    ldh [rTMA], a
    adc b
    rra
    jr jr_032_486a

    dec e
    ld e, $1f
    ld e, b
    add d
    ldh a, [$e0]
    nop
    pop af
    ldh [rNR12], a

jr_032_48f3:
    ldh [rNR13], a
    inc d
    or e
    or e
    ld b, d
    or h
    dec e
    ld [$8282], sp
    dec h
    ld h, $1f
    ld d, b
    add c
    and c
    ld e, [hl]
    ld [de], a
    ldh [rNR43], a
    ld [de], a
    or e
    or e
    jp nz, Jump_032_41c3

    db $10
    jr nz, jr_032_4891

    adc h
    rra
    ld d, b
    adc c
    adc d
    rlca
    ld [$2109], sp
    ld a, [bc]
    ldh [$3c], a
    ld a, [bc]
    or e
    or e
    ret nc

    pop de
    ccf
    db $10
    jr nz, jr_032_48a8

    sbc c
    rra
    ld d, b
    sub a
    sub l
    xor h
    inc c
    dec c
    ld b, d
    xor h
    ld b, b
    ld [de], a
    or e
    or e
    sbc $df
    ld a, $10
    add a
    ld b, b
    and [hl]
    rra
    ld d, b
    and e
    and h
    adc b
    inc h
    xor h
    xor h
    ld a, [bc]
    xor h
    ld [hli], a
    inc hl
    inc e
    db $e3
    ld [$c6ee], sp
    ld de, $6095
    and l
    rra
    ld d, b
    ld d, l
    ld [bc], a
    ld b, b
    nop

jr_032_4956:
    jr nz, jr_032_4959

    nop

jr_032_4959:
    inc c
    stop
    dec bc
    and d
    ld a, a
    ld [bc], a
    rra
    ld b, b
    ld [bc], a
    nop
    nop
    jp c, $5d05

    dec b
    rra
    jr nz, jr_032_4971

    rra
    inc de
    ld a, $ff
    inc bc

jr_032_4971:
    rra
    ld a, [de]
    ld a, d
    inc bc
    jr nz, jr_032_4956

    dec l
    rra
    rrca
    ld [bc], a
    ld sp, $5300
    ld bc, $0339
    ld b, b
    dec b
    ld b, $1f
    inc d
    ld h, b
    rst $08
    ld e, e
    ld e, a
    inc bc
    ld b, $1d
    inc c
    rra
    add hl, bc
    ld a, b
    ld hl, $20eb
    rra
    rla
    ld e, [hl]
    dec b
    ld a, a
    dec b
    jr nz, jr_032_49e6

    cp a
    rra
    ld [de], a
    ld [bc], a
    ld a, [hl-]
    ld e, e
    ld [hli], a
    ld b, [hl]
    ld b, h
    rra
    rrca
    ld a, b
    ld h, d
    cp a
    jr c, jr_032_49cc

    ld b, l
    ld [bc], a
    ld [$f102], sp
    rra
    rrca
    add b
    sbc [hl]
    ld a, a
    ld b, $00
    ld [$0e1f], sp
    ld d, d
    ld h, d
    sbc a
    ld [bc], a
    ld a, a
    inc bc
    inc bc
    ld e, a
    ld [bc], a
    push af
    rra
    rrca
    cp l
    ld a, [hl]
    ld e, a
    inc bc
    ld e, a

jr_032_49cc:
    ld [bc], a
    rra
    inc c
    ld b, e
    ld a, [bc]
    ld b, b
    rrca
    rrca
    ld a, [bc]
    dec c
    ld b, b
    ld a, [hl]
    ld l, h
    inc bc
    dec a
    rra
    inc de
    inc c
    ld h, b
    ccf
    ld b, $06
    cpl
    inc bc
    ld b, $1f

jr_032_49e6:
    inc de
    rrca
    rra
    ld a, [bc]
    jr nz, jr_032_4a0b

    ld de, $cf3d
    ld h, b
    ld a, a
    dec c
    ld c, $1f
    inc de
    cp [hl]
    ld h, b
    ld e, a
    ld a, e
    ld c, $7d
    rra
    ld d, $35
    ld b, h
    ld a, [bc]
    rra
    ld a, [de]
    and b
    inc hl
    ld a, [bc]
    ld a, [bc]
    rra
    ld e, $0f
    ld a, [bc]
    ld a, [bc]

jr_032_4a0b:
    rra
    dec de
    ld e, d
    dec [hl]
    ld [bc], a
    ld a, [bc]
    ld b, b
    rra
    inc e
    rrca
    rra
    jr nz, jr_032_4a27

    rra
    ld c, $56
    ld a, [bc]
    dec e
    add hl, bc
    rlca
    jr nz, jr_032_4a23

    ld l, l
    rra

jr_032_4a23:
    ld c, $02
    ld e, l
    ld [bc], a

jr_032_4a27:
    rra
    dec bc
    rlca
    dec l
    ld h, b
    rra
    ld a, [de]
    ld a, [bc]
    ld l, b
    di
    rra
    dec de
    dec l
    ld h, b
    rra
    ld c, $02
    ld a, [bc]
    ld b, b
    ld a, $60
    ld a, [bc]
    rra
    ld d, $44
    nop
    nop
    ret nc

    ld bc, $0807
    inc e
    ret nz

    rra
    jr nz, jr_032_4a53

    ldh [$1f], a
    ld a, a
    rst $38
    dec d
    ld [hl], b
    jr jr_032_4a53

jr_032_4a53:
    inc e
    nop
    ld [$150e], sp
    rrca
    ld b, $07
    inc bc
    push hl
    ld [$1e1b], sp
    pop hl
    db $fc
    rra
    ld a, b
    nop
    nop
    rlca
    nop
    ld [$2418], sp
    ldh [rNR10], a
    ld b, b
    and b
    rst $38
    inc b
    ret nz

    ld hl, sp-$09
    db $fc
    ld a, e
    dec e
    ld [hl], b
    ld a, a
    add b
    nop
    cp a
    ld a, a
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld [bc], a
    ret nz

    ccf
    cp b
    rst $00
    or $f9
    rra
    ld [hl], b
    db $fc
    inc bc
    ld [bc], a
    ei
    db $fc
    rst $38
    rst $38
    rrca
    rra
    ld [$2801], sp
    add b
    nop
    ld a, b
    ldh [rNR10], a
    call c, $fbe2
    db $fc
    ld e, $30
    rst $38
    inc bc
    rra
    xor b
    nop
    jr nz, @-$3e

    nop
    or b
    ret nz

    ld [$f04c], sp
    ld [bc], a
    db $fc
    dec bc
    db $10
    inc bc
    inc bc
    rrca
    nop
    rrca
    rra
    rra
    ld [hl], $36
    ld h, [hl]
    ld h, [hl]
    ld b, h
    ld h, b
    ld b, h
    rrca
    reti


    nop
    jr z, @+$14

    ld [de], a
    ld e, $1e
    inc c
    ld b, b
    inc c
    dec c
    jr nc, jr_032_4ad4

    inc b
    rlca
    rlca
    inc c

jr_032_4ad4:
    inc c
    ld d, c
    ld c, $00
    ld [$001e], sp
    ld [$1f1f], sp
    rrca
    nop
    ld [$0703], sp
    rlca
    inc bc
    inc bc
    ld bc, $8d01
    jr jr_032_4aeb

jr_032_4aeb:
    ld [$f000], sp
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    ld a, a
    ld a, a
    ld c, $3e
    ld a, $0e
    ld c, $19
    db $10
    ld h, a
    add c
    ld bc, $0308
    adc c
    ld bc, $0708
    nop
    add e
    ld a, [de]
    ld [hl], b
    ld [hl], b
    ld a, h
    ld bc, $0c08
    ld a, b
    jr nc, jr_032_4b81

    jr nz, jr_032_4b13

jr_032_4b13:
    ld [$f898], sp
    ret nz

    nop
    ld b, c
    ld hl, sp+$13
    ld a, b
    ld a, a
    nop
    rra
    nop
    rrca
    ld e, c
    ld [$75c0], sp
    add b
    nop
    cp b
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc b
    inc b
    and b
    dec bc
    jr nz, @+$01

    nop
    jr @+$7a

    ld a, b
    ld c, $0e
    ret nz

    inc b
    ret nz

    ld hl, sp-$08
    rrca
    rrca
    rrca
    jr nz, @+$01

    rst $38
    inc h
    rlca
    rlca
    dec e
    db $10
    add b
    add b
    ret nz

    jr c, jr_032_4b4f

    rlca
    nop

jr_032_4b4f:
    ld bc, $0b07
    rrca
    rla
    dec de
    daa
    cpl
    nop
    ld e, a
    ld a, h
    cp h
    ldh a, [rSVBK]
    ldh [$e0], a
    ret


    nop
    ret


    sbc c
    sbc c
    cp e
    cp e
    rst $38
    rst $38
    ld a, a
    add b
    nop
    ld [$ffff], sp
    rst $28
    rst $28
    rst $00
    rst $00
    add a
    db $10
    add a
    rlca
    rlca
    ccf
    jr nc, @+$01

    rst $38
    rst $30
    rst $30
    nop
    jp $83c7


jr_032_4b81:
    add a
    ld e, [hl]
    cp l
    add c
    cp $01
    pop bc

jr_032_4b88:
    cp $c0
    rst $38
    pop bc
    rst $38
    rst $00
    ld bc, $2018
    ld bc, $f9fe
    ld de, $8f70
    adc h
    di
    ld [c], a
    nop
    db $fd
    ld sp, hl
    cp $fe
    rst $38
    add b
    ld a, a
    ld h, b
    nop
    sbc a
    db $10
    rst $28
    ld [$04f7], sp
    ei
    inc bc
    ld b, $fc
    ld bc, $80fe
    ld a, a
    rst $30
    add hl, sp
    dec h
    ld [$e0fc], sp
    ld [c], a
    add hl, bc

jr_032_4bba:
    cpl
    db $10
    ld bc, $0058
    add b
    nop
    ld b, b
    add b
    nop
    jr nz, @-$3e

    jr nz, jr_032_4b88

    db $10
    ldh [$08], a
    ldh a, [rSC]
    ld [$dff4], sp
    xor h
    rst $38
    adc $01
    ld [$d0ef], sp
    ld bc, $0008
    db $10
    ld a, a
    ld a, l
    ld de, $c0c0
    jr c, jr_032_4c1a

jr_032_4be2:
    nop
    db $ec
    db $ec
    rra
    rra
    rst $38
    rst $38
    inc c
    inc c
    inc c
    add b
    add b
    ldh a, [$f0]
    sub c
    jr nc, jr_032_4be2

    jr nz, jr_032_4c74

    ld a, a
    add b
    db $db
    jr nz, jr_032_4bba

    ret nz

    jr nc, @+$32

    rst $00
    rst $00
    db $fc
    nop
    db $fc
    ld e, $1e
    jp $e0c3


    ldh [$fc], a
    ret nz

    ld [hl], l
    ld a, [bc]
    ld hl, $1f10
    rrca
    ld l, $1f
    inc a
    rra
    nop
    ld e, l
    dec sp
    ld a, e
    scf
    ld [hl], e

jr_032_4c1a:
    cpl
    rst AddAToHL
    ld l, a
    ld sp, $1fef
    ld [hl], a
    add hl, sp
    ld a, e
    db $10
    cp a
    nop
    rst $08
    ld d, h
    cp c
    ld b, $fc
    nop
    ldh a, [rP1]
    ldh [$9c], a
    ld [$7000], sp
    rst $38
    inc l
    nop
    cp $01
    ld [$383c], sp
    dec bc
    nop
    sbc b
    rst $38
    ld bc, $7f00
    add e
    ld a, l
    add l
    dec sp
    sla a
    rst AddAToHL
    nop
    dec [hl]
    rst AddAToHL
    ld c, [hl]
    xor e
    ld l, d
    and a
    ret nz

    ccf
    nop
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc

jr_032_4c5b:
    jr nz, jr_032_4c5b

    ld bc, $1072
    inc b
    ld hl, sp+$02
    db $fc
    ld [bc], a
    inc e
    db $fd
    ld bc, $07fe
    add hl, sp
    nop
    jr nc, @-$64

    add hl, bc
    add b
    ld b, b
    nop
    ld b, b
    add b

jr_032_4c74:
    xor a
    rra
    cp a
    rra

jr_032_4c78:
    ld e, a
    ccf
    ld c, h
    ld a, a
    ld bc, $bf18
    ld a, a
    ld e, e
    inc de
    adc e
    add hl, bc
    rst $38
    rst $08
    ld hl, $9eff
    ld bc, $3c08
    rst JumpTable
    inc a
    rst JumpTable
    ld l, a
    ld [hl], b
    inc d
    inc bc
    nop
    inc b
    ld bc, $0808
    ld bc, $1008
    nop
    dec de
    ccf
    nop
    jr c, jr_032_4caa

    add hl, de
    ld h, b
    ld d, d
    jr nc, jr_032_4cbf

    ld [$1021], sp
    ld b, b

jr_032_4caa:
    ld [bc], a
    ld bc, $7f08
    nop
    db $e3
    inc e
    ld h, b
    add b
    ld bc, $c030
    jr nc, jr_032_4c78

    ld d, b

jr_032_4cb9:
    add b
    sbc b
    ret nz

    ld [$1600], sp

jr_032_4cbf:
    nop
    sub e
    nop
    ld e, c
    nop
    ld a, [hli]
    nop
    ld e, $26
    nop
    inc hl
    add hl, hl
    ld [$8c4e], sp
    inc sp
    ld [$305b], sp
    jr nz, jr_032_4cd4

jr_032_4cd4:
    nop
    ld a, h
    nop
    ld [hl], d
    inc c
    ld h, c
    ld e, $c0
    pop bc
    and a
    db $10
    ld bc, $e008
    nop
    pop af
    nop
    ld sp, hl
    ld [hl], c
    ld [$aad0], sp
    ld [de], a
    xor h
    ld [de], a
    ld [bc], a
    or [hl]
    ld a, [bc]
    inc hl
    inc e
    ld b, c
    ld a, $e8
    ld l, c
    jr nz, @+$4c

    dec de
    ccf
    sbc b
    add d
    dec e
    jr @-$75

    nop
    ret z

    adc b
    ld e, [hl]
    add hl, de
    ld a, b
    nop
    ld a, $ee
    ld a, [de]
    dec bc
    nop
    dec b
    add a
    add hl, bc
    ld [$3846], sp
    add d
    ld a, h
    db $db
    ld [hl], b
    dec sp
    db $10
    dec a
    stop
    inc a
    nop
    ld [hl-], a
    inc c
    ld hl, $401e
    ccf
    adc h
    and [hl]
    adc b

jr_032_4d25:
    ld [$2703], sp
    ld c, $0c
    add hl, de
    ld a, b
    add b
    nop
    ld l, c
    ld h, b
    add hl, sp
    ld [$30fd], sp
    ld a, [hl-]
    ld e, l
    jr jr_032_4cb9

    ld a, [hl]
    rra
    nop
    jr z, jr_032_4d59

    ld bc, $0600
    ld a, e
    jr c, jr_032_4dc0

    db $10
    cp e
    db $10
    ld b, b
    ccf
    ld [$7e81], sp
    add c
    add c
    ld hl, $0138
    inc bc
    inc bc
    ldh a, [$1f]
    ld d, e
    sub e
    ld b, d
    nop
    nop

jr_032_4d59:
    inc h
    sbc c
    ld h, c
    ld a, $00   ; xor a
    ld h, e
    inc e
    jr z, jr_032_4d25

    inc a
    ld e, l
    ld [$167e], sp
    inc sp
    ccf
    ld b, b
    rrca
    nop
    db $10
    rlca
    ld [$0201], sp
    db $10
    ldh [$88], a
    nop
    ld [hl], b
    call nz, $e238
    inc e
    ld a, [c]
    inc c
    ld sp, hl
    nop
    ld b, $f9
    ld b, $fc
    inc bc
    sub b
    ld h, b
    ld d, b
    nop
    jr nz, jr_032_4dba

    nop
    ld de, $0200
    ld bc, $0803
    ld bc, $0503
    dec b
    rrca
    ld [$68d8], sp
    call z, $f400
    add $fa
    rst $00
    ld sp, hl
    push bc
    ld hl, sp-$78
    nop
    db $f4
    adc b
    ldh a, [$1f]
    nop
    rra
    db $10
    ld b, $00
    add hl, bc
    dec b
    inc bc
    rlca
    inc b
    add b
    add b
    and c
    nop
    ld h, c
    ld sp, $8051
    ld b, b

jr_032_4dba:
    ldh [rP1], a
    db $10
    ld [$10e0], sp

jr_032_4dc0:
    nop
    ret nz

    adc l
    ld h, h
    ld bc, $000f
    jr nz, jr_032_4dd8

    rlca
    ld bc, $1708
    cp b
    ld a, a

jr_032_4dcf:
    cp b
    ld a, a
    ld b, [hl]
    ld hl, sp+$01

jr_032_4dd4:
    jr jr_032_4dcf

    ld a, [hl]
    pop af

jr_032_4dd8:
    ld bc, $f208
    ld [de], a
    add b
    inc hl
    nop
    add c
    ld bc, $0308
    nop
    inc c
    and e
    ld [$21ed], sp
    add [hl]
    nop
    db $10
    ld hl, sp+$04
    rrca
    ldh a, [$b5]
    ld a, [bc]
    ld h, d
    ld e, c
    ret nz

    and h
    xor c
    ld [$057f], sp
    ld [de], a
    db $10
    inc bc
    ld a, a
    inc l
    rlca
    inc bc
    sub b
    ld bc, $0510
    inc bc
    ld [bc], a
    ld [$0101], sp
    ld [bc], a
    ld bc, $0000
    sub b
    add sp, -$70
    ldh [$a0], a

jr_032_4e13:
    ret nz

    ret nz

    jr c, @-$5e

    ld b, b
    ld a, d
    inc l
    ld l, [hl]
    dec c
    jp nc, $040b

    inc bc

jr_032_4e20:
    ld [$0701], sp
    db $10
    rrca
    jr nz, jr_032_4e46

    ld [hl], b
    rrca
    or l
    ld e, $50
    adc b
    dec de
    dec bc
    ldh a, [rSB]
    jr jr_032_4e13

    ccf
    inc bc
    rst $00
    ld b, b
    inc hl
    ld [hl], d
    dec c
    dec b
    inc bc
    add c
    add e
    ld bc, $0083
    ld b, c

jr_032_4e42:
    ld b, e
    add l
    ld a, [c]
    ld a, l

jr_032_4e46:
    di
    ld a, h
    db $f4
    nop
    ld a, b
    cp b
    ld [hl], b
    ld [hl], b
    and b
    ld [hl], b
    and b
    ld h, b
    jr nc, jr_032_4dd4

    and b
    and a
    add d
    ld c, e
    ld c, h
    add b
    ld a, a
    add b
    ld a, a
    inc bc
    jr nc, jr_032_4e20

    jr jr_032_4e42

    inc c
    ldh a, [$65]
    dec de
    ld a, a
    inc c

jr_032_4e68:
    inc h
    ld bc, $94fe
    add hl, de
    cp $ff
    ret c

    ld c, $87
    ld a, b
    nop
    ld a, a
    add b
    jp $df24


    ldh [$78], a
    add a
    nop

jr_032_4e7d:
    rst $20
    jr @-$1f

    jr nz, jr_032_4e7d

    rlca
    rst $30
    rrca
    nop
    db $ed
    inc de
    jp $ff3c


    inc bc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    cp $01
    rst $30
    ld hl, sp+$2a
    jr nz, jr_032_4e98

jr_032_4e98:
    jr jr_032_4e9a

jr_032_4e9a:
    ccf
    ccf
    rst JumpTable
    sbc a
    ld l, a
    rst $08
    scf
    rst $20
    db $10
    sbc e
    di
    call Call_032_7311
    rrca
    nop
    ld [$0007], sp
    inc e
    rrca
    inc a
    rra
    ld e, b
    ccf
    ld [hl], b
    ccf
    ld [bc], a
    and b
    ccf
    ret nz

    rst $38
    rra
    jr nz, jr_032_4e68

    add hl, hl
    nop
    db $10
    inc bc
    inc b
    ld bc, $0929
    ld b, a
    ld [bc], a
    rlca
    ld b, d
    add b
    ld e, c
    dec c
    inc bc
    rlca
    adc e
    adc a
    rlca
    adc a
    ld b, a
    jr nz, jr_032_4f24

    and a
    db $ed
    ld l, h
    rst $38
    dec b
    ld a, [$f609]
    nop
    add hl, bc
    or $0a
    push af
    ld a, [bc]
    push af
    inc c
    di
    ld [$fb04], sp
    inc b
    ei
    dec de
    ld d, b
    inc bc
    db $fc
    rlca
    ld b, e
    ld hl, sp+$1f
    ld d, l
    ldh a, [rIF]
    db $fc
    inc bc
    rla
    inc [hl]
    ld bc, $6008
    and b
    dec h
    dec d
    nop
    add b
    ld b, b
    ld h, b
    sbc b
    call c, $fbe3
    db $fc
    ld b, b
    rst $38
    ld h, b
    cp a
    rst $38
    rst $08
    ld hl, sp+$01
    nop
    add b
    ld b, b
    rst $38
    nop
    db $fd
    cp $f6
    ld hl, sp-$08
    nop
    db $e4
    ldh [$90], a
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf

jr_032_4f24:
    nop
    rra
    rra
    adc a
    rrca
    rla
    dec bc
    rlca
    rlca
    nop
    inc bc
    inc b
    dec bc
    ld sp, hl
    and $e9
    or $fc
    nop

jr_032_4f37:
    di
    db $f4
    ei
    cp $f9
    ld a, [$fefd]
    nop
    db $fd
    rst $38
    nop
    rst $38
    rst $38
    ld a, e
    db $fc
    db $f4
    nop
    ld a, b
    cp b
    ld [hl], b
    ld a, b
    or b
    ld e, h
    or b
    inc a
    db $10
    db $db
    ld a, [c]
    dec c
    cpl
    rst $38
    ld a, a
    ld e, a
    ccf
    nop
    cpl
    rra
    rra
    rlca
    rlca
    inc bc
    ld e, $01
    ld [bc], a
    ld h, c
    sub b
    inc bc
    ld bc, $0305
    ld b, c
    ld [bc], a
    ld [$0003], sp
    ld bc, $2b00
    rst $00
    inc bc
    ret nz

    jr nz, jr_032_4f37

    nop
    ld b, b
    ldh [rP1], a
    sbc h
    ld h, b
    add a
    nop
    ld hl, sp+$01
    cp $00  ; and a / or a
    rst $38
    ret nz

    ccf
    ld b, b
    inc b
    cp a
    ld b, e
    cp h
    ld h, d
    sbc l
    ld hl, $1ee1
    inc h
    ldh a, [rIF]
    ld hl, $c03f
    ld sp, $f807
    nop
    inc a
    jp $36c9


    sub e
    ld l, h
    ld [c], a
    dec e
    inc bc
    ld h, h
    sbc e
    nop
    rst $38
    add b
    ld a, a
    pop hl
    add hl, sp
    ld bc, $bf40
    ld [$0b00], sp
    nop
    rrca
    ld b, c
    nop
    ld c, $01
    ld b, $01
    ld [bc], a
    ld bc, $0304
    rlca
    rst $38
    nop
    add c
    ld a, [hl]
    nop
    inc h
    ld bc, $6409
    ld h, $7f
    add b
    ld hl, $c03f
    ld hl, $2067
    ld [$90d0], sp
    ld h, b
    ret nc

    inc h
    jr nz, @-$1e

    db $10
    db $10
    add b
    ld b, b
    nop
    ld b, b
    rra
    rst $38
    ld c, $ff
    nop
    add a
    rst $38
    pop bc
    rst $38
    db $e3
    ld a, a
    rst $20
    ld a, a
    jr nz, @+$01

    ccf
    ld hl, $00e0
    ld de, $0fe2
    nop
    ldh a, [$bc]
    ld b, e
    ldh a, [rIF]
    rst $00
    jr c, @+$01

    ld c, b
    nop
    ld hl, $201f
    add hl, hl
    add b
    ld a, a
    rlca
    ld b, e
    ld hl, sp+$6b
    ldh a, [$0c]
    nop
    pop bc
    dec hl
    jr z, jr_032_5030

    ccf
    ret nz

    ld l, l
    scf
    adc $5a
    daa
    call nz, $3b00
    rra
    ldh [rIF], a
    ldh a, [$fc]
    ld [bc], a
    ld hl, sp+$40
    inc b
    dec sp
    ldh [rNR34], a
    pop hl
    ld e, $e6
    add hl, de
    inc b
    ret nz

    jr nz, jr_032_502e

jr_032_502e:
    add b
    nop

jr_032_5030:
    ld h, b
    ld e, $38
    ld b, b
    rst $00
    ld c, e
    ret nz

    add hl, sp
    ld b, l
    rlca
    add hl, bc
    ld bc, $0241
    ld c, a
    ld bc, $0700
    nop
    rrca
    inc hl
    ld d, b
    rst $38

jr_032_5047:
    jr nz, jr_032_5047

    ld b, c
    inc a
    ccf
    ret c

jr_032_504d:
    rra
    ld bc, $0f20
    db $10
    rrca
    jr nc, jr_032_504d

    rlca
    ld hl, $fc20
    inc bc
    ld hl, $01fa
    ld a, [c]
    ld bc, $00e1
    ld [bc], a
    pop bc
    nop
    ld c, [hl]
    or c
    ld c, a
    or b
    ld a, [hl]
    ld [de], a
    add c
    ld [bc], a
    db $fd
    ld hl, $ff00
    ld h, c
    ret nz

    jr jr_032_50b3

    add b
    ld a, a
    xor c
    and c
    inc b
    inc bc
    ld [$0748], sp
    ld hl, $0f10
    ld hl, $1f20
    ld h, b
    ld h, h
    rra
    dec a
    or l
    ld bc, $61fe
    inc bc
    db $fc
    sub b
    ld hl, $04fa
    ld hl, $0cf2
    pop af
    ld c, $20
    pop hl
    ld e, $61
    pop bc
    ld a, $00   ; xor a
    nop
    add b
    jr nz, @-$7e

    ret nz

    jr nz, jr_032_5104

    ldh [$61], a
    db $e3
    scf
    nop
    db $fc
    ccf
    ldh a, [$1f]
    inc b
    inc b
    inc c
    inc c
    nop
    inc d

jr_032_50b3:
    inc e
    inc h
    ld a, h
    call nz, $04fc
    db $fc
    ld b, c
    ld [$f821], sp
    ld hl, sp+$1f
    db $fc
    rrca
    ld hl, $fe26
    rlca
    ld b, c
    inc bc
    rst $38
    ld b, c
    ld sp, $8010

jr_032_50cd:
    ld hl, $20f0
    ldh [rLCDC], a
    pop bc
    jp $00c7


    inc a
    rst $38
    nop
    rst $38
    ld [bc], a
    ld [bc], a
    ld b, $0e
    inc bc
    ld a, [de]
    ld a, $74
    ld a, h
    call nz, Call_032_59fc
    ld d, a
    db $10
    rst $38
    inc bc
    cp $21
    rlca
    db $fc
    rrca
    db $fc
    nop
    rra
    db $fc
    scf
    cp $43
    rst $38
    ld bc, $0203
    rst $38
    inc c
    cp $70
    ld hl, sp+$0c
    ld [hl], $ff
    ld d, d
    nop

jr_032_5104:
    ld b, c
    add b
    inc hl
    add b
    nop
    add b
    add b
    jr c, jr_032_50cd

    ld a, a
    sub c
    xor l
    ld h, b
    cp $fe
    jr jr_032_5115

jr_032_5115:
    ld hl, sp+$60
    ldh [$f0], a
    ccf
    ld hl, sp+$1f
    ld hl, sp+$00
    rrca
    db $fc
    rrca
    cp $07
    cp $43
    rst $38
    ld [bc], a
    ld sp, $19ff
    inc bc
    rst $38
    nop
    add c
    jr jr_032_5132

    rst $38
    rrca

jr_032_5132:
    rst $38
    rlca
    rst $38
    add c
    add hl, hl
    add b
    nop
    ret nz

    ldh [$30], a
    ld hl, sp+$0c
    db $fc
    ld [bc], a
    rst $38
    and b
    jr nz, jr_032_5144

jr_032_5144:
    inc l
    add b
    cp $63
    rst $38
    ld h, c
    and d
    ld b, c
    ld [hl], b
    pop hl
    ld bc, $20ff
    ld b, c
    or b
    nop
    rst $38
    sbc b
    rst $38
    sbc h
    rst $38
    call c, $de77
    ld sp, $ff77
    jr nc, jr_032_5162

    inc c

jr_032_5162:
    inc bc
    nop
    rst $38
    ld hl, $268c
    rlca
    rst $38
    jr @+$49

    ld h, c

jr_032_516d:
    ld b, b
    ret nz

    nop
    add b
    add b
    ccf

jr_032_5173:
    ld a, a
    jp nz, $04fe

    db $fc
    inc b
    jr jr_032_5173

    jr nc, jr_032_516d

    ldh [rNR41], a
    ld a, a
    ldh a, [rP1]
    ccf
    db $fc
    rra
    cp $07
    rst $38
    inc bc
    rst $38
    ld d, b
    ld bc, $005e
    ld h, $3c
    db $fc
    db $10
    ldh a, [rNR42]
    inc c
    db $fc
    daa
    add b
    rst $38
    ret nz

    rst $38
    dec a
    ld de, $8080
    nop
    ret nz

    ret nz

    ret nz

    jr nc, jr_032_51fc

    ld bc, $0cff
    rst $38

jr_032_51a9:
    ld b, $ff
    rlca
    rst $38
    ld a, $50
    ld bc, $0041
    ld hl, $ff80
    ret nz

    rst $38
    nop
    ldh [$7f], a
    ldh a, [$3f]
    ld hl, sp-$61
    ld hl, sp-$31
    nop
    db $fc
    rst $00
    cp $e7
    ret nz

    ret nz

    jr nz, jr_032_51a9

    ld [bc], a
    db $10
    ldh a, [$08]
    ld hl, sp+$06
    cp $7e
    rlca
    dec d
    rst $38
    rst $38
    ld a, b
    ld b, c
    ld a, h
    ld b, c
    cp $41
    add h
    ld b, b
    ldh a, [$f0]
    db $fc
    db $fc
    dec h
    ccf
    ccf
    inc b
    rra
    rra
    rrca
    rrca
    nop
    ld b, b
    ldh [$e0], a
    nop
    ld a, c
    ld a, c
    inc e
    inc e
    ld c, $0e
    add c
    add c
    nop
    ld hl, sp-$08
    cp $fe
    inc bc

jr_032_51fc:
    inc bc
    ld bc, $9001
    inc sp
    add b
    add b
    ld h, e
    ld [hl], b
    ld [hl], b
    add hl, bc
    add hl, bc
    sbc [hl]
    dec a
    ret nz

    ret nz

    daa
    ccf
    ld [hl], l
    and b
    ld a, [c]
    nop
    ld a, [c]
    ldh a, [$f0]
    pop af
    pop af
    db $e3
    db $e3
    rst $20
    ld [$efe7], sp
    rst $28
    rst $38
    ld b, b
    dec bc
    rrca
    ld h, e
    ld bc, $376f
    ei
    daa
    ei
    rrca
    di
    ld h, c
    ld [hl-], a
    rla
    db $eb
    ld [hl], e

jr_032_5230:
    jr nz, jr_032_5230

    cp $65
    ld c, a
    nop
    rst $08
    and b
    ld h, b
    daa
    daa

jr_032_523b:
    ld h, h
    ld h, h
    pop hl
    nop
    pop hl
    ld [c], a
    db $e3
    db $e4
    rst $20
    add sp, -$11
    ldh a, [rSB]
    rst $38
    ldh [rIE], a
    jp $8bff


    rst $30
    ld hl, $8d00
    di
    adc e
    push af
    ld [de], a
    db $ed
    ld de, $00ee
    jr nz, jr_032_523b

    ld b, b
    cp a
    and b
    rst JumpTable
    ret nc

    rst $28
    nop
    add sp, -$09
    inc [hl]
    dec sp
    ld a, [de]
    dec e
    ld a, [bc]
    dec c
    nop
    dec c
    ld c, $93
    ld l, h
    sub a
    ld l, b
    and a
    ld e, b
    add b
    ld hl, $f00f
    dec bc
    db $f4
    inc de
    db $ec
    inc hl
    inc b
    call c, $01fe
    rst $38
    nop
    ld bc, $c00c
    rst $38
    ld b, b
    add b
    jp z, $fe01

    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$08
    ld d, $eb
    ld h, $db
    ld hl, $bb44
    add l
    nop
    ld a, d
    ld a, [bc]
    push af
    inc e
    di
    db $fd
    ld [hl], a
    jr nz, jr_032_52a3

jr_032_52a3:
    rst JumpTable
    ld b, c
    cp [hl]
    ld b, [hl]
    cp c
    sbc b
    ld [hl], a
    ld sp, $ee00
    ld h, a
    ret c

    rst JumpTable
    and b
    cp a
    ld b, c
    ld d, b
    nop
    or b
    db $ec
    inc e
    dec de
    rst $20
    ld h, h
    sbc e
    add e
    nop
    ld a, h
    ldh a, [rIF]
    sbc b

jr_032_52c2:
    ld h, a
    inc l
    inc sp
    ld a, a
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ccf
    ld a, $7d
    cp $02
    nop
    db $fd
    jp nz, $b43d

jr_032_52d4:
    ld c, e
    ld h, h
    cp e
    sbc d
    nop
    ld d, a
    sub $4f
    ld [hl], a
    xor $e5
    sbc $ad
    add hl, bc
    sbc $df
    xor h
    ld e, e
    ld b, c
    rst $38
    nop
    ld bc, $020e
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, $40f0
    rrca
    ld hl, $07f8
    db $fc
    inc bc

jr_032_52fb:
    ld b, b
    and b
    nop
    ld b, b
    add b
    jr nz, jr_032_52c2

    jr nz, jr_032_52d4

    db $10
    ldh [rP1], a
    ld [$08f0], sp
    db $f4
    inc b
    ld hl, sp-$02
    ld a, a
    and b
    ld h, c
    db $fc
    ld b, c
    cp h
    ld a, a
    cp b
    ld a, a
    ld a, b
    dec b
    ccf
    jr c, jr_032_52fb

    ld e, b
    cp a
    ld hl, $c170
    nop
    ld d, c
    cp [hl]
    ld c, $f1
    rra
    ldh [$37], a
    ret z

    nop
    daa
    ret c

    ld h, e
    sub h
    jp nz, $d021

    ld h, c
    nop
    push af
    db $e4
    ld a, a
    cp [hl]
    rst $38
    ld a, a
    di
    inc sp
    ld [$f393], sp
    ld b, e
    and e
    ld hl, $27c7
    add a
    nop
    ld h, a
    adc $31
    adc a
    ldh a, [$eb]
    db $f4
    add sp, $00
    rst $30
    db $e4
    di
    di
    ldh a, [$fe]

jr_032_5355:
    cp $e1
    inc b
    pop hl
    ld d, h
    sbc e
    call z, $210b
    ld c, a
    adc e
    nop
    rlc a
    sub a
    rrca
    ccf
    ccf
    rst $38
    rst $38
    ld [bc], a
    ld h, h
    cp e
    ld d, d
    cp l
    ld [hl-], a
    db $dd
    ld hl, $08b1
    sbc $b9
    sbc $f9
    ld b, c
    inc b
    ld a, [$0002]
    db $fd
    add c
    ld a, [hl]
    pop bc
    ld a, $e0
    rra
    ldh a, [rSC]
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    nop
    and b
    add b

jr_032_538d:
    db $10
    add b
    ld b, b
    ld b, b
    ld [hli], a
    and b
    jr nz, jr_032_5355

    ld e, b
    nop
    ccf
    jr c, jr_032_53b9

    jr z, jr_032_53bb

    db $10
    rrca
    ld [$0700], sp
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    ld d, c
    nop
    cp [hl]
    ld [hl], d
    sbc l
    ld [hl-], a
    call c, $d826
    inc [hl]
    nop
    jp z, $c02c

    inc h
    ret nz

    jr nz, jr_032_538d

jr_032_53b9:
    rst $30
    nop

jr_032_53bb:
    rst $20
    db $fc
    db $ec
    adc $ff
    rst $08
    xor $ff
    nop
    sbc $fe
    rst JumpTable
    rst $38
    rst JumpTable
    rst $28
    adc a
    cpl
    nop
    ld l, a
    rst JumpTable
    sbc a
    cp a
    ccf
    ld a, a
    ld a, a
    cp a
    nop
    cp a
    sbc [hl]
    ld e, [hl]
    sbc h
    ld a, h
    nop
    nop
    ld hl, sp+$42
    rst JumpTable
    ld h, c
    cp b
    rst JumpTable
    ret c

    cp a
    ld hl, $9078
    ld b, c
    jp $213c


    rst $00
    jr c, @-$77

    ld a, b
    nop
    add l
    ld a, b
    adc b
    ld [hl], b
    sub b
    ld h, b
    cp a
    ld b, b
    ld [hli], a
    rst $38
    nop
    ld bc, $3f0a
    nop
    add a
    ld b, l
    rra
    ld [de], a
    nop
    inc bc
    nop
    ldh [$c0], a

jr_032_5409:
    nop
    ld e, b
    reti


    nop
    inc d
    nop
    nop
    ld a, [bc]
    inc de
    add hl, bc

jr_032_5413:
    and h
    and l
    and [hl]
    ld bc, $a8a7
    xor c
    xor d
    xor e
    xor h
    xor l
    rra
    dec c
    jr nz, jr_032_543f

    ld e, $df
    or e
    add hl, sp
    inc a
    ld a, [hl-]
    dec a
    ld [bc], a
    dec sp
    ld a, $ba
    cp e
    cp h
    cp l
    rra
    inc c
    rra
    jr nz, jr_032_5455

    ld hl, $bebf
    cp a
    ld b, c
    ld b, d
    ld b, e
    ld [bc], a
    ld b, h
    ld b, l

jr_032_543f:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    rra
    inc c
    dec hl
    jr nz, jr_032_5474

    dec l
    cp a
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld bc, $504f
    ccf
    ld b, a
    ld b, b

jr_032_5455:
    ld d, c
    ld d, d
    rra
    dec bc
    ld [$2322], sp
    inc h
    dec h
    sbc a
    ld d, e
    ld d, h
    ld d, l
    nop
    ld d, [hl]
    ret c

    reti


    ld d, a
    ld e, b
    ld e, c
    ld b, a
    ld b, b
    ld b, d
    rst JumpTable
    rra
    dec bc
    ld b, a
    ld l, $2f
    jr nc, jr_032_5413

jr_032_5474:
    reti


    nop
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    db $10
    ld e, d
    sbc $40
    rra
    inc c
    ld b, a
    ld h, $27
    jr z, jr_032_5409

    sbc a
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$08]
    pop af
    ld a, [c]
    reti


    jp hl


    rra
    dec c
    ld sp, $3332
    nop
    di
    db $f4
    push af
    or $d9
    reti


    rst $30
    ld hl, sp+$00
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $ff
    reti


    add b
    rra
    dec c
    ld b, a
    add hl, hl
    ld a, [hli]
    nop
    ld bc, $0302
    nop
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    db $10
    inc c
    dec c
    ld c, $1f
    rrca
    inc [hl]
    ld b, a
    rrca
    stop
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_032_54da

    add hl, de
    ld a, [de]
    dec de
    inc e
    reti


    rra

jr_032_54da:
    inc c
    ld e, b
    ld c, $00
    inc d
    stop
    ld a, [bc]
    inc de
    add hl, bc
    dec c
    dec c
    ld a, [bc]
    or e
    ld h, b
    add hl, bc
    jr nz, jr_032_550b

    dec c
    rrca
    rrca
    rst $38
    sbc [hl]
    call nc, $3f20
    add hl, bc
    rra
    ld c, $0f
    rra
    add hl, bc
    ld [$d108], sp
    ld b, e

jr_032_54fe:
    rra
    ld a, [de]
    ld c, $3f
    ld [$0a0a], sp
    ld e, a
    ld d, l
    add hl, bc
    rra
    ld c, $0f

jr_032_550b:
    cp a
    dec c
    sbc a
    dec c
    rra
    jr @+$23

    ld c, $0d
    jr nz, jr_032_5521

    dec bc
    ld a, [bc]
    inc c
    ld a, a
    ld d, l
    nop
    rra
    ld c, $0f
    rst JumpTable
    add hl, bc

jr_032_5521:
    ccf
    inc c
    ld e, a
    jr c, jr_032_5534

    add hl, bc
    ld e, $0a
    rra
    dec bc
    ld [hl], $09
    inc c
    dec bc
    jp nc, Jump_032_4023

    ld c, $1f

jr_032_5534:
    db $10
    dec bc
    dec bc
    sbc a
    inc c
    or h
    ld e, e
    inc c
    jr nz, @+$21

    ld [de], a
    rrca
    ld a, [hl]
    ld c, $0b
    ld a, b
    dec bc
    sbc a
    ld a, $1f
    inc c
    ld e, b
    reti


jr_032_554b:
    nop
    inc de
    ld a, a
    nop
    dec bc
    rra
    ld b, b
    and d
    and e
    or b
    nop
    or d
    xor a
    or c
    dec [hl]
    ld [hl], $37
    jr c, jr_032_54fe

    ld hl, sp+$00
    add hl, bc
    rra
    inc c
    dec d
    ld a, [bc]
    rra
    ld d, $5b
    adc a
    nop
    inc de
    jr jr_032_556d

jr_032_556d:
    dec bc
    rra
    ld b, b
    add hl, bc
    nop
    inc de
    rra
    inc l
    nop

jr_032_5576:
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    nop
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    and b
    rlca
    jr nc, jr_032_558b

jr_032_558b:
    nop
    jr z, @-$6e

    sub c
    sub d
    sub e
    sub h
    nop
    sub l
    sub [hl]
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
    ld l, a
    ret nc

    pop de
    jp nc, $10d3

    ld l, a
    ld l, a
    ld l, a
    rra
    jr nc, jr_032_554b

    and c
    and d
    and e
    ld [bc], a
    and h
    and l
    and [hl]
    and a
    xor b
    cp [hl]
    nop
    ld [$00ad], sp
    xor [hl]
    xor a
    xor e
    xor h
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld b, b
    ld l, [hl]
    rra
    jr c, jr_032_5576

    or c
    or d
    or e
    or h
    or l
    nop
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    nop
    cp [hl]

jr_032_55d6:
    cp a
    xor c
    xor d
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    jr nz, jr_032_565d

    ld a, a
    rra
    jr nc, @-$3e

    pop bc
    jp nz, $c4c3

    nop
    push bc
    add $c7

jr_032_55eb:
    ret z

    ret


    jp z, $cccb

    nop
    call $cfce
    jr nz, @+$23

    ld [hli], a
    inc hl
    add b
    inc d
    add c
    xor [hl]

jr_032_55fc:
    xor a
    rra
    jr nc, jr_032_55eb

    nop
    ld [$d5d4], sp
    nop
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    nop
    sbc $df
    jr nc, jr_032_5643

    ld [hl-], a
    inc sp
    sub b
    sub c
    jr nz, jr_032_55d6

    cp a
    rra
    jr nc, jr_032_55fc

    pop hl
    ld [c], a
    db $e3
    db $e4
    nop
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a

jr_032_5629:
    nop
    db $ed
    xor $eb
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    sbc [hl]
    db $10
    sbc a
    adc $cf
    rra
    jr nc, jr_032_5629

    pop af
    ld a, [c]
    di
    nop
    db $f4
    push af
    or $f7
    ld hl, sp-$07

jr_032_5643:
    ld a, [$1cfb]
    db $fc
    db $fd
    cp $4e
    stop
    jr @+$21

    jr nc, jr_032_5650

jr_032_5650:
    ld bc, $0200
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0c09], sp
    ld a, [bc]
    dec bc

jr_032_565d:
    inc c
    dec c
    ld e, $38
    rra
    jr c, @+$12

    ld de, $1200
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_032_5687

    inc bc
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    dec l
    ld hl, $401f
    nop
    ld l, $51
    ld d, d
    ld d, e
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_032_56ae

    ld a, [hli]
    dec hl

jr_032_5687:
    inc l
    dec l
    ld l, $2f
    sub h
    dec l
    ld hl, $9797
    rra
    jr nc, jr_032_56d1

jr_032_5693:
    rra
    ld [$3534], sp
    nop
    ld [hl], $37
    jr c, jr_032_56d5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc [hl]
    ld a, $3f
    cpl
    ld sp, $301f
    ld c, [hl]
    rra
    ld [$4544], sp
    nop
    ld b, [hl]

jr_032_56ae:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    inc [hl]
    ld c, [hl]
    ld c, a
    cpl
    ld sp, $301f
    jp nz, $081f

    ld d, h
    ld d, l
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    jr nc, jr_032_572a

    ld e, a
    cpl
    ld sp, $301f

jr_032_56d1:
    sbc b
    ld h, c
    ld h, d
    ld h, e

jr_032_56d5:
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    db $76
    ld [hl], a
    sbc l
    ldh [$a3], a
    ld hl, $2005
    rra
    jr nc, @-$56

    xor c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    xor h
    xor l

jr_032_56f2:
    xor b
    rra
    xor c
    xor d
    xor e
    dec b
    jr nc, @+$21

    jr nc, jr_032_5693

    ld hl, $8005
    rra
    jr nc, jr_032_56f2

    sub a
    ld hl, $8005
    rra
    jr nc, @+$18

    inc bc
    inc bc
    nop
    ld h, b
    ld bc, $4085
    ld [$c0bb], sp
    db $10
    ret nz

    ccf
    ld h, b
    ld bc, $df20
    pop af
    ldh [$1f], a
    ld sp, $1f45
    jr jr_032_5726

    inc b
    ld bc, $df22

jr_032_5726:
    ld l, b
    ret nz

    dec bc
    ld b, b

jr_032_572a:
    rst $38
    jr c, jr_032_578d

    ld e, a
    ld a, a
    inc b
    rra
    ld d, $4e
    ld e, e
    ldh [$2b], a
    rra
    db $10
    sub [hl]
    ld a, $05
    dec b
    rst JumpTable
    nop
    ld a, [bc]
    rra
    inc c
    ld a, $1f
    ld a, [de]
    inc bc
    ld h, e
    ld [bc], a
    ld b, b
    rra
    add hl, bc
    rlca
    rlca
    rrca
    add b
    rra
    ld a, [bc]
    ld [hl], b
    ld b, $bf
    ld b, b
    ld b, l
    inc b
    ld b, $06
    ld c, $d7
    ret nz

    rra
    dec [hl]
    dec b
    rra
    ld [de], a
    ld c, $7f
    ld a, d
    add b
    and $1f
    inc de
    ld [hl-], a
    cp [hl]
    rlca
    rlca
    ld a, [$0e1f]
    ld c, $17
    ld b, $06
    ld [bc], a
    dec sp
    rlca
    dec h
    ld e, $0d
    rra
    dec bc
    ldh [rP1], a
    ld d, $1f
    jr z, jr_032_57c0

    nop
    nop
    adc b
    ld [bc], a
    nop
    ld b, $00
    rlca
    ld bc, $0710
    inc bc
    inc b

jr_032_578d:
    rlca
    ld [$0003], sp
    ld b, l
    inc bc
    nop
    db $eb
    ld b, a
    or a
    ld l, a
    sbc e
    ld l, a
    ld e, e
    cpl
    nop
    scf
    dec bc
    dec a
    inc de
    ld l, d
    dec [hl]
    ld b, e
    ld a, $00   ; xor a
    ld e, e
    daa
    ld e, c
    cpl
    ret


    or a
    ldh [$9f], a
    dec b
    daa
    jr jr_032_57dd

    rla
    inc bc
    ld hl, $0108
    inc sp
    ld [$0109], sp
    nop
    inc bc
    ld bc, $3001

jr_032_57c0:
    dec b
    inc bc
    ld bc, $4010
    rlca
    ld bc, $7c18
    rrca
    ld [hl], a
    jr @-$15

    scf
    nop
    di
    cpl
    or $89
    ld c, d
    or l
    adc $33
    ld [bc], a
    sub a
    ld a, c
    sbc l
    ld a, [hl]
    sbc a

jr_032_57dd:
    ld a, a
    ld bc, $8f10
    ld bc, $867f
    ld a, a
    pop bc
    ld a, $63
    sbc h
    ld [hl], c
    jr nz, jr_032_5861

    ld bc, $1843
    dec bc
    ld b, b
    ld d, l
    db $10
    ld [bc], a
    ld bc, $0018
    add hl, bc
    ld [$c500], sp
    inc bc
    db $eb
    rst $00
    ld l, a
    rst $00
    sub l
    ld l, a
    nop
    ld d, a
    dec l
    ld [hl], $19
    ld h, e
    ld a, $d9
    daa
    nop
    reti


    xor a
    ret


    or a
    ret nz

    cp a
    db $e3
    sbc h
    ld [$132f], sp
    inc a
    rrca
    ld a, a
    ldh a, [rPCM34]
    jr jr_032_5899

    nop
    daa
    or $29
    sub $29
    ld [$5595], a
    inc c
    cp e
    db $db
    inc a
    sbc [hl]
    ld a, e
    jr jr_032_5830

    db $10

jr_032_5830:
    sbc [hl]
    ld a, a
    inc bc
    call z, $c03f
    ccf
    pop hl
    sbc [hl]
    rst $38
    sub b
    add l
    ld d, b
    add b
    nop
    jr nz, @+$65

    nop
    push af
    ld h, e
    sbc e
    ld [hl], a
    ld c, a
    nop
    dec [hl]
    ld a, $05
    scf

jr_032_584c:
    ld a, [de]
    ld h, e
    ccf
    ld b, e
    ld d, d
    ccf
    add e
    db $10
    ret z

    add e
    ld [$1867], sp
    and l
    jr nz, jr_032_585e

    ldh [$85], a

jr_032_585e:
    jr c, @-$77

jr_032_5860:
    ld b, b

jr_032_5861:
    add l
    jr nz, @+$31

    rla
    dec sp
    inc c
    ld [hl], l
    nop
    dec de
    ld l, e
    scf
    db $76
    add hl, hl
    jp c, $b525

    nop
    ld c, e
    xor e
    call nc, $bbd5
    sbc e
    ld a, h
    sbc h
    cp d
    add e
    jr z, jr_032_584c

jr_032_587e:
    ld a, a
    jr z, jr_032_587e

    ld d, b
    ld a, a
    ld hl, $7f03
    ld de, $1001
    inc b
    nop
    inc b
    dec c
    ld [$00c3], sp
    push hl
    jp $3f00


    rst $20
    sbc d
    ld l, a
    ld e, [hl]
    dec hl

jr_032_5899:
    dec a
    ld a, [bc]
    or e
    ld a, l
    add hl, bc
    dec a
    ld a, l
    ld hl, $20ff
    ld [hl], $0f

jr_032_58a5:
    and e
    ld de, $11a5
    rlca
    ld bc, $0200
    ld bc, $0102
    add hl, sp
    ld a, a
    jr nz, @+$01

    stop
    ld a, a
    jr jr_032_58a5

    ld d, e
    pop af
    ld c, a
    or e
    ld c, a
    nop
    sub $29
    sub [hl]
    ld l, c
    adc d
    ld [hl], l
    sbc l
    ld [hl], e
    jr nz, jr_032_5860

    ld a, b
    ld a, l
    jr nz, @-$1f

    ccf
    rst $08
    ccf
    xor $1c
    rra
    push af
    adc [hl]
    ld a, l
    add b
    ld a, a
    db $10
    ld bc, $0710
    nop
    db $10
    rrca
    ld bc, $7d0c
    jr jr_032_591f

    rst $20
    sub l
    ld l, a
    nop
    ld d, l
    cpl
    cpl
    dec d
    ld [hl], $19
    ld h, l
    ld a, [hl-]
    jr nz, jr_032_5934

    ccf
    ld a, a
    db $10
    ld c, c
    scf
    ld b, b
    ccf
    db $e3
    nop
    inc e
    xor a
    db $d3
    db $fc
    rrca
    inc c
    inc b
    dec c
    ld hl, sp+$29
    ld [$1043], sp
    ei
    ld d, b
    db $fd

jr_032_590b:
    jr nz, jr_032_598c

    db $10
    rst $38
    ld d, b
    ei
    nop
    ld b, a
    or [hl]
    ld c, c
    sub $a9
    ld e, d
    and l
    adc b
    jr jr_032_5993

    sub l
    ld a, e
    ei

jr_032_591f:
    ld b, b
    ld a, a
    db $10
    ld h, [hl]
    sbc a
    pop af
    ret nz

    ld a, a
    ld [$6000], sp
    ret nz

    nop
    or b
    ret nz

    add sp, -$10
    nop
    ld sp, hl
    ldh a, [$f7]

jr_032_5934:
    ld sp, hl
    cp $f9
    db $ed

jr_032_5938:
    ld a, [$7d20]
    ld [$8199], a

jr_032_593e:
    ld [hl], b
    nop
    ldh a, [$60]
    ret nc

    nop
    and b
    sub b
    ld h, b
    and b
    ld b, b
    jr nz, jr_032_590b

    ld b, b
    nop
    add b
    db $fd
    ld l, d
    db $fc
    ld l, e
    db $fd
    ld l, e
    reti


    db $10

jr_032_5956:
    ld h, a
    ldh [$5f], a
    ld bc, $bf08
    db $e3
    db $fc
    rst $20
    nop
    ld hl, sp-$39
    db $fc
    rst $00
    ld hl, sp-$3a
    ld sp, hl
    ret nz

    nop
    rst $38
    add b
    rst $38
    ldh a, [rIF]
    db $ec
    di
    add b
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    add b
    and b
    nop
    ret nz

    jr nz, jr_032_593e

    ld h, $c0
    ld a, $d8
    ld a, a
    ld [$5b98], sp
    cp h
    ld a, a
    ld bc, $ff08
    inc a

jr_032_598c:
    rst $38
    nop
    jr c, jr_032_5956

    jr nz, jr_032_5938

    ld b, b

jr_032_5993:
    ld_long a, $fffd
    nop
    ld b, $0d
    di
    add $f9
    db $e3
    db $fc
    db $db
    nop
    db $e4
    cp e
    call nz, $c53a
    ld h, $d9
    inc l
    nop
    db $d3
    ld a, [hl-]
    rst $20
    rst $30
    rst $08
    rst $28
    rra
    rra
    nop
    rst $38
    rst $38
    rst $38
    cp $ff

jr_032_59b7:
    xor [hl]
    ld b, b
    db $ec
    nop
    nop
    db $fc
    jr nz, jr_032_59b7

    and b
    ldh a, [$80]
    ld hl, sp+$00
    jr nz, jr_032_59fe

    ret nc

    inc [hl]
    ret c

    inc l
    ret c

    inc e
    nop
    add sp, $1e
    add sp, $1a
    db $ec
    ld a, [de]
    db $ec
    rra
    inc b
    db $ec
    cpl
    call c, $dc2f
    sbc a
    add b
    ldh [rP1], a
    nop
    ret c

    ldh [$f5], a
    ld hl, sp-$01
    ld sp, hl
    ld a, [hl]
    ld sp, hl
    ld [$7aed], sp
    db $fd
    ld l, d
    ld e, e
    sub d
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [$e8]
    db $10
    adc b
    ld [hl], b
    db $10
    ldh [rNR41], a
    nop

Call_032_59fc:
    ret nz

    db $fd

jr_032_59fe:
    ld l, d
    push de
    ld l, e
    jp hl


    ld d, a
    add sp, $00
    ld d, a
    ldh [$bf], a
    ldh [rIE], a
    ret nz

    rst $38
    jp $bb82


    ld [$fcc7], sp
    add [hl]
    ld sp, hl
    nop
    cp e
    jr jr_032_5a32

    add b
    sbc e
    ld [$8040], sp
    add b
    nop
    ret nz

    add b
    rst JumpTable
    ld [$3eba], sp
    call nc, $bd3e
    ld [$d83e], sp
    ld a, [hl]
    nop
    sbc b
    ld a, [hl]
    sbc b
    ld a, a
    cp b

jr_032_5a32:
    add $00
    adc $01
    nop
    call z, $ac00
    ld b, b

jr_032_5a3b:
    xor h
    ld b, b
    cp e
    db $10
    ld [$ecf3], sp
    add hl, sp
    add $01
    db $10
    ld [hl-], a
    call $06c4
    ei
    ld a, [$d707]
    rst $28
    cp e
    jr nz, jr_032_5a52

jr_032_5a52:
    db $10
    cp $40
    rst $38
    cp l
    ld [$fca0], sp
    and b
    ld hl, sp+$00
    ld [hl], b
    ld a, [bc]

jr_032_5a5f:
    add b
    jr c, jr_032_5a32

    inc a
    cp a
    ld [$bd1e], sp
    ld [$009e], sp
    add sp, -$65
    db $ec
    sbc e
    db $ec
    sbc a
    db $ec
    rra
    db $10
    xor $3f
    adc $9f
    sub b
    ldh [rP1], a
    ret nc

    ldh [$90], a
    add c
    ld de, $f96e
    ld a, a
    sub c
    nop
    nop
    ld a, b
    nop
    nop
    ld hl, sp+$70
    ret z

    or b
    adc b
    ld [hl], b
    sub b
    ld h, b
    add b
    cp a
    db $10
    db $fd
    ld c, d
    add sp, $57
    pop hl
    cp a
    pop hl
    ret nz

    cp a
    jr jr_032_5a5f

    ld [hl], b
    ld a, [$40fd]
    add b
    ld b, b
    add b
    ld bc, $5aff
    ld c, [hl]
    or b
    db $fc
    add b
    cp h
    ld a, a
    ld [$3e20], sp
    ret nc

    pop bc
    db $10
    ld h, a
    add b
    ld b, a
    add b
    ld b, e
    jr nz, jr_032_5a3b

    jp $0a5b


    jp $ff00


    ld b, $0e
    ld bc, $c5f3
    ei
    ld [c], a
    db $fd
    sbc c
    and $c1
    jr nz, jr_032_5ace

jr_032_5ace:
    ld h, $d9
    call c, $f6e3
    dec bc
    db $eb
    rla
    ret nz

    push bc
    db $10
    cp a
    db $10
    and e
    ld b, b
    and e
    ld b, b
    db $e3
    nop
    nop
    di
    and b

jr_032_5ae4:
    ei
    and b
    cp $00  ; and a / or a
    ld e, [hl]
    and b
    rra
    inc [hl]
    ret c

    inc a
    add c
    add hl, bc
    ld a, a
    ld sp, $1181
    cp l
    and e
    pop bc
    db $10
    ld c, b

jr_032_5af9:
    jp hl


    pop bc
    ld [$f9f6], sp
    rra
    and b
    jr c, jr_032_5b02

jr_032_5b02:
    ld hl, sp+$00
    jr nc, jr_032_5ace

    ldh a, [$c8]
    or b
    sub b
    ld h, b
    ld l, l
    add b
    ld h, e
    ld a, [bc]
    db $fd
    ld l, d
    call c, $ed6b
    ld e, e
    jp hl


    sub e
    add e
    add hl, de
    pop hl
    cp $c1
    jr nz, jr_032_5ae4

    ld sp, hl
    jp Jump_032_6320


    ld [de], a
    nop
    add b
    nop
    rst $38
    ld a, $7f
    sbc d
    db $fd
    sbc d
    add hl, de
    xor [hl]
    ret nc

    inc a
    add e
    add hl, bc
    ld a, a
    add hl, bc
    sbc b
    ld h, e
    cp a
    jr c, jr_032_5af9

    db $e3
    db $10
    jp $0710


    ld sp, hl
    rlca
    ld sp, hl
    jp nz, $9cfd

    ld b, l
    ld [de], a
    cp d
    push bc
    ld b, l
    ld d, d
    cp a
    db $10
    pop bc
    jr @+$22

    ld [hl], a
    ld b, $a0
    rst $38
    add b
    cp [hl]

jr_032_5b55:
    ld b, b
    add e
    ld hl, $30bf
    rra
    ld d, d
    db $ec
    rst $38
    add d
    ldh a, [rIE]
    ld c, d
    ld l, l
    ld a, [$f2ff]
    ld a, l
    ld c, $ea

jr_032_5b69:
    call c, $d56b
    rst $38
    sbc d
    ld bc, $ff23
    ld [de], a

jr_032_5b72:
    ld a, a
    ld [bc], a
    cp [hl]
    rst $38
    xor d
    cp a
    jp z, Jump_032_412b

    ld a, [de]
    ld a, a
    add hl, bc
    sbc b
    ld a, a
    sbc h
    ld b, e
    cp l
    jr c, @-$5b

    ld b, b
    cp a
    jr nz, jr_032_5b69

    ld bc, $bb33
    ld h, b
    ld a, a
    ld de, $40b6
    or $00

jr_032_5b93:
    cp $08

jr_032_5b95:
    jr nz, jr_032_5b93

    jr nz, jr_032_5b95

    rst $38
    ld a, [bc]
    ld [hl], b
    and b
    jr c, @+$1b

    ret nc

    jr c, jr_032_5b72

    ld bc, $bf13
    jr nz, @+$41

    call z, $b17f
    ldh [$8d], a
    inc h
    ld d, a
    ld [hl], h
    nop
    db $10
    or b
    ld c, a
    adc a
    ld [hl], b
    add c
    ld bc, $017f
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ld h, b
    ld [$2da0], sp
    jr c, jr_032_5bc8

jr_032_5bc4:
    dec hl
    inc c
    rrca
    rlca

jr_032_5bc8:
    dec bc
    rlca
    ld [$0702], sp
    rrca
    nop
    dec bc
    rlca
    rlca
    cpl
    jr c, jr_032_5b55

    nop
    ld a, a
    ret nz

    ccf
    ld bc, $00fe
    rst $38
    inc b
    nop
    ei
    inc bc
    db $fc
    add e
    db $fd

jr_032_5be4:
    rlca
    ld hl, sp+$1e
    ld [bc], a
    db $e4
    db $fc
    jr jr_032_5be4

    ldh [$e0], a
    or [hl]
    or l
    nop

jr_032_5bf1:
    nop
    pop hl
    sbc [hl]
    sbc $e1
    ldh a, [rIE]
    ldh a, [$7f]
    nop
    ld hl, sp+$7f
    ld a, [hl]
    ccf
    ld a, a
    rra
    ld e, a
    jr nz, jr_032_5bc4

    rra
    ld [hl], b
    dec [hl]
    ld de, $c020
    db $10
    ldh [$08], a
    ldh a, [rNR10]
    ld [$10f0], sp
    ld b, a
    ld [$3f40], sp
    ld b, b
    ccf
    nop
    jr nc, jr_032_5c2a

    jr nz, jr_032_5c3c

    inc h
    dec de
    jr c, jr_032_5c28

    nop
    jr c, jr_032_5c3b

    inc e
    inc bc
    rrca
    inc b

jr_032_5c28:
    rlca
    inc bc

jr_032_5c2a:
    jp nz, $35f5

    nop
    db $10
    jr nz, jr_032_5bf1

    ld h, b
    add b
    dec l
    db $10
    inc b
    nop
    ld hl, sp+$1c
    ld hl, sp+$3e

jr_032_5c3b:
    db $fc

jr_032_5c3c:
    ld a, [de]
    db $fc
    ld [bc], a
    ld [bc], a
    db $fc
    cp $00  ; and a / or a
    ld a, [$fcfc]
    ld d, h
    ld h, b
    rlca
    ld bc, $0e07
    rrca
    inc e
    rra
    nop
    rla
    add hl, bc
    dec c
    add b
    dec [hl]
    dec c
    nop
    dec bc
    inc b
    dec de
    inc b
    rra
    nop
    jr jr_032_5c7e

    ld [$0d0f], sp
    ld [$228e], sp
    ldh [rNR10], a
    ldh a, [rDIV]
    ld [$04f8], sp
    ld hl, sp+$04
    ld a, $08
    ld [bc], a
    cp $04
    nop
    sub $20
    jp c, $0320

    inc c
    db $10
    ldh a, [$81]
    and a

jr_032_5c7e:
    ld a, [bc]
    rra
    nop
    ccf
    nop
    ld a, a
    jr nz, @+$03

    ld [$002b], sp
    ld a, a
    add hl, bc
    ld [$010f], sp
    jr jr_032_5c9e

    ld bc, $5518
    dec d
    ld [de], a
    rrca
    nop
    ldh a, [$2d]
    inc c
    db $fc
    ld [$0801], sp

jr_032_5c9e:
    nop
    ld d, [hl]
    db $fc
    add hl, bc
    ld [$01e0], sp
    ld c, b
    ldh a, [rNR31]
    jr jr_032_5cca

    rla

Call_032_5cab:
    inc bc
    ld b, $07
    rlca
    inc c
    rrca
    db $10
    ld a, a
    ld b, b
    ld a, l

jr_032_5cb5:
    ld b, b
    rra
    add b
    ld a, l
    ld l, b
    xor $00
    and $00
    ld a, [c]
    nop
    ret c

    sub b
    ld a, l
    jr c, jr_032_5cb5

    nop
    ld [$103f], sp
    ld a, a

jr_032_5cca:
    jr nz, @+$03

    ld [$3f00], sp
    nop
    db $10
    rra
    nop
    rrca
    inc bc
    ld [$001f], sp
    inc e
    nop
    ld d, b
    ld c, $01

Call_032_5cdd:
    ld [$0101], sp
    jr jr_032_5cf1

    nop
    ld hl, sp+$10
    ld hl, $08fc
    ld bc, $0008
    ld hl, sp+$00
    ldh a, [rSB]
    jr c, jr_032_5d37

jr_032_5cf1:
    ldh [rSB], a
    jr jr_032_5cb5

    nop
    add b
    dec b
    ld [$0800], sp
    rlca
    ld bc, $0c07
    rrca
    jr @+$41

    nop
    rlca
    ld bc, $9028
    ld b, l
    jr jr_032_5d12

    rrca
    add hl, bc
    ld [$001f], sp
    ccf
    db $10
    add b

jr_032_5d12:
    rra
    ld [$e0e0], sp
    db $10
    ld a, [c]
    inc c
    cp $00  ; and a / or a
    ld d, h
    db $fc
    add hl, sp
    ld [$31c0], sp
    ld [$4bf0], sp
    ld [$10f8], sp
    and $45
    db $10
    add hl, bc
    ld [$187d], sp
    ld e, a
    jr nz, jr_032_5dae

    db $10
    ld bc, $1e20
    xor [hl]
    ld a, a

jr_032_5d37:
    ld [$7f1e], sp
    ld [$5906], sp

jr_032_5d3d:
    db $10
    ld b, e
    ld [$107d], sp
    db $f4
    ld a, b
    ld [$907d], sp
    nop
    db $10
    dec b
    jr nz, @-$7d

    ld [$0f0e], sp
    jr jr_032_5d7f

    rrca
    db $10
    add e
    jr nz, jr_032_5d65

    ld bc, $0d38
    stop
    jr jr_032_5d3d

    inc a
    ldh [rNR23], a
    add c
    jr nc, @+$77

    db $10
    ld c, c

jr_032_5d65:
    ld d, b
    xor l
    db $10
    ccf
    nop
    db $ed
    add e
    jr nc, @+$39

    jr nz, @+$7f

    db $10
    ld b, $cd
    jr z, @-$51

jr_032_5d75:
    db $10
    db $fc
    add l
    ld [$838b], sp
    jr nc, jr_032_5d75

    nop
    ld a, b

jr_032_5d7f:
    dec bc
    add hl, de
    ldh [$fd], a
    ld [$28ff], sp
    add hl, bc
    nop
    nop
    inc bc
    inc bc

jr_032_5d8b:
    inc bc
    ld de, $1710
    ld a, a
    ld e, b
    ret nz

    dec bc
    jr nz, jr_032_5e14

    jr nz, @-$3e

    jr nc, @-$1e

    jr jr_032_5d8b

    ld [$f005], sp
    inc c
    ld hl, sp+$04
    db $ec
    ld c, l
    ld [$7df4], sp
    jr c, jr_032_5e27

    ldh a, [$7d]
    jr z, jr_032_5e2b

    jr nz, jr_032_5e29

jr_032_5dae:
    jr nz, jr_032_5e2d

    ld b, b
    nop
    db $10
    ld a, l
    jr nz, jr_032_5e35

    ld b, b
    ld l, h
    ld [hl], b
    ld bc, $0708
    db $10
    ld h, b
    ld a, e
    jr nc, jr_032_5dc1

jr_032_5dc1:
    ld a, b
    dec c
    ld [bc], a
    nop
    dec bc
    dec b
    add hl, de
    rlca
    dec e
    inc bc
    ld e, $09
    dec bc
    inc c
    inc bc
    dec b
    inc bc
    ld hl, $1b90
    rra
    ld [$201d], sp
    ld [hli], a
    rra
    ld [bc], a
    dec e
    add b
    dec bc
    dec b
    jr jr_032_5dff

    jr c, jr_032_5e22

    ld b, b
    ld de, $a063
    dec bc
    dec b
    add hl, bc
    rlca
    ld c, $01
    ld b, b

jr_032_5def:
    inc b
    ld e, a
    xor b
    ld bc, $0b01
    dec b
    ld [$0207], sp
    ld b, $01
    dec b
    inc bc
    rrca
    ld [bc], a

jr_032_5dff:
    ld b, e
    db $10
    ld [hl], c
    nop
    ld l, $78
    cpl
    ld a, h
    cpl
    ld d, a
    cpl
    ccf
    ld bc, $0b07
    rlca
    add hl, bc
    ld b, $0b
    inc b
    db $e3

jr_032_5e14:
    db $10
    db $10
    add hl, bc
    ld b, $07
    ld e, a
    ld a, [de]
    ldh a, [rLCDC]
    ld a, b
    sub b
    nop
    sbc h
    ld l, b

jr_032_5e22:
    inc a
    add sp, $7c
    add sp, -$2c

jr_032_5e27:
    add sp, $00

jr_032_5e29:
    ld hl, sp-$40

jr_032_5e2b:
    and b
    ret nz

jr_032_5e2d:
    jr nz, jr_032_5def

    and b
    ld b, b
    add b
    ld bc, $9020

jr_032_5e35:
    ld h, b
    ld [hl], b
    ldh [$f8], a
    nop
    ld a, [hl-]
    nop
    dec d
    ld [hl], c
    ld l, $70
    cpl
    ld e, b
    cpl
    inc a
    nop
    rrca
    rla
    rrca
    dec bc
    rlca
    inc de
    inc c
    rla
    inc bc
    ld [$0c16], sp
    ld e, $0c
    inc c
    sbc a
    ld a, [hl-]
    ld a, a
    ld hl, $0210
    rlca
    rlca
    ret z

    add hl, bc
    inc bc
    stop
    inc bc
    jr @+$09

    ld bc, $3a09
    ld [hli], a
    nop
    ld d, b
    ldh [$80], a
    ld [hl], b
    nop
    ld b, b
    cp b
    ldh a, [rNR32]
    or b
    ld e, h
    ldh a, [$ce]
    ld [bc], a
    or b
    adc $98
    ld h, [hl]
    inc b
    ld [bc], a
    or $58
    inc bc
    nop
    ld [bc], a
    rrca
    rlca
    rra
    inc c
    rra
    ld bc, $181e
    inc bc
    db $10
    ld bc, $903f
    dec a
    jr c, jr_032_5f02

    adc $e8
    ld b, $c6
    and h
    jp nz, Jump_032_6092

    rra
    ld l, b
    ld a, e
    ld [$010e], sp
    rra
    ld bc, $033e
    nop
    ld bc, $3f03
    ld [$0e80], sp
    add c
    ldh [rLCDC], a
    or b
    ret nz

    ld a, $f0
    ld e, $03
    cp h
    ld d, b
    ldh a, [$c0]
    add b
    ret nz

    or l
    sbc c
    ccf
    ld [de], a
    rlca
    rrca
    ld bc, $070e
    ld [$207f], sp

jr_032_5ec6:
    push de
    jr z, jr_032_5f0a

    ld d, b
    db $10
    cp b
    ld h, b
    sbc [hl]
    ld b, c
    jr nz, @-$5e

    ret nz

    sub b
    ld h, b
    ld b, b
    ldh a, [$3f]
    ld a, b
    ld [bc], a
    rlca
    ld b, $0f
    ld bc, $521e
    rlca
    cp a
    jr z, jr_032_5ef1

    rst $38
    sbc b
    ret nc

    jr c, @+$01

    ld [$06cc], sp
    xor b
    call nz, Call_032_6498

jr_032_5eef:
    ld [hl], h
    ld a, [de]

jr_032_5ef1:
    ld c, b
    ld a, l
    ld de, $001c
    add sp, $34
    add sp, $78
    ldh [$d0], a
    ldh [$b0], a
    inc h
    ret nz

    jr nc, jr_032_5f5f

jr_032_5f02:
    ld [$6090], sp
    ld a, l
    ld de, $c020
    ret nz

jr_032_5f0a:
    xor h
    ld [$0a63], sp
    ld a, e
    inc h
    ld [hl], d
    dec l
    ld d, c
    ld l, $40
    jr c, @+$7f

    add hl, bc
    inc de

jr_032_5f19:
    rrca
    db $10
    rrca
    inc de
    inc c
    inc e
    ld [de], a
    inc c
    inc d
    add c
    add hl, de
    ld h, e
    jr nz, jr_032_5ec6

    inc de
    ld e, h
    xor b
    inc de
    sub h
    ld l, b
    jr c, @+$3f

    jr jr_032_5f41

    ldh [$3d], a
    db $10

Jump_032_5f34:
    sbc a
    ld h, e
    nop
    rrca
    ld [bc], a
    ld e, $09
    ld a, [hl-]
    dec d
    ld a, c
    ld l, $16
    ld d, a

jr_032_5f41:
    cpl
    inc sp
    ccf
    ld [$ff08], sp
    add hl, bc
    ld bc, $0510
    ld c, h
    ld [bc], a
    ld bc, $0308
    rlca
    dec l
    add hl, bc
    rst $38
    ld de, $a85c
    ld bc, $68bc
    call nc, $98e8
    ldh [rNR10], a

jr_032_5f5f:
    ld bc, $0108
    ret z

    jr nc, jr_032_5fad

    jr nc, jr_032_5eef

    ld [hl], b
    ldh a, [rLYC]
    ld [$5f85], sp
    inc hl
    ld e, $09
    add hl, sp
    ld d, $3d
    ld [hli], a
    inc sp
    dec a
    jr @+$7a

    ld a, [bc]
    dec a
    ld a, [bc]
    rra
    ld d, e
    dec a
    ld b, d

jr_032_5f7f:
    ccf
    db $10
    sub b
    ld h, b
    ld d, b
    ld bc, $5020
    jr nz, jr_032_5f19

    ld h, b
    ret nc

    ld h, b
    rra
    ld d, e
    sbc h
    add hl, hl
    ld [de], a
    ld [bc], a
    ld bc, $1001
    dec [hl]
    ld [hli], a
    add hl, bc
    db $10
    inc b
    inc bc
    ld b, b
    ld [$0a8d], sp
    rlca
    nop
    ld a, h
    ld a, h
    db $fc
    ld a, h
    ld [bc], a
    db $fc
    ld a, b
    ld e, h
    cp b
    inc b
    ld hl, sp+$01

jr_032_5fad:
    db $10
    jr c, jr_032_5ff8

    ret nz

    sbc e
    inc c
    nop
    jr c, jr_032_5f7f

    ld [$e030], sp
    ldh a, [rDIV]
    ret nz

    ld h, b
    add b
    add b
    nop
    rst $38
    ret nc

    nop
    ld bc, $0102
    dec b
    inc bc
    sub l
    nop
    rlca
    inc bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec b
    ld c, $01
    ld a, [bc]
    ld bc, $0003
    push af
    nop
    nop
    ld b, b
    ld l, a
    ld a, a
    ld l, $bf
    ld [hl], c
    rst $38
    cp $ff
    rst $38
    ld d, b
    add b
    rst $38
    ld a, a
    jp c, $dbb4

    ld a, [hl]
    sub c
    nop
    jp c, $bd3d

    ld a, [hl]
    cp l
    ld a, [hl]
    rst $38
    ld b, b
    nop
    ret nz

jr_032_5ff8:
    and b
    ld b, b
    ret nc

    and b
    add sp, $50
    ld a, [hli]
    nop
    ld [hl], h

Call_032_6001:
    add sp, $50
    xor b
    xor b
    xor b
    ld h, h
    sbc b
    ld a, [c]
    ld l, h
    ld [c], a
    ld e, h
    pop hl
    sbc [hl]
    nop
    add h
    ld a, b
    rrca
    ld bc, $051b
    ld de, $200e
    rra
    rlca
    ld a, l
    ld [hl-], a
    cp a
    db $fd
    ld [hl], b
    nop
    rra
    nop
    ld sp, hl
    ld [hl], b
    cp [hl]
    ld h, b
    ld a, a
    ld a, $7f
    ld a, $21
    ld e, $1e
    ld bc, $d710
    db $db
    inc a
    ld a, l
    add d
    ld a, h
    cp e
    jr c, jr_032_6048

    rst $28
    jr z, jr_032_604b

    rst $28
    add c
    ld a, [hl]
    rst $38
    rst $38
    nop
    nop
    add h
    ld e, $f1

jr_032_6045:
    adc [hl]
    ld e, l
    and d

jr_032_6048:
    add [hl]
    ld a, b
    inc b

jr_032_604b:
    ld hl, sp-$20
    cp [hl]
    ld c, h
    db $fd
    cp a
    ld c, $00
    rra
    nop
    sbc a
    ld c, $7d
    ld b, $fe
    ld a, b
    db $fc
    ld a, b
    add h
    ld a, b
    ld a, b
    db $f4
    nop
    nop
    inc bc
    dec b
    inc bc
    dec bc
    rlca
    rrca
    rlca
    ld d, $0f
    dec d
    rrca
    ld [de], a
    ld [bc], a
    dec bc
    inc de
    rrca
    inc d
    dec d
    ld a, [bc]
    nop
    ld a, [bc]
    ld bc, $0103
    rlca
    ld bc, $0205
    cp l
    rst $38

jr_032_6081:
    jr nz, jr_032_6083

jr_032_6083:
    ld a, a
    jr nz, jr_032_6045

    ld [hl], d
    db $fd
    cp $df
    ld [bc], a
    ld [$7adb], sp
    sbc l
    rst $30
    jr jr_032_6081

Jump_032_6092:
    db $10
    inc a
    cp l
    ld a, [hl]
    cp l
    ld a, [hl]
    inc a
    ld a, l
    add d
    db $f4
    nop
    nop
    ret nz

    and b
    ld b, b
    ret nc

    and b
    add sp, $50
    add sp, $50
    ld [hl], h
    xor b
    nop
    nop
    ld [hl], h
    xor b
    ld h, d
    sbc h
    ld a, [c]
    ld l, h
    pop hl
    ld e, [hl]
    pop af
    ld c, $dd
    add d
    rst $20
    add b
    db $d3
    and b
    ld [$3004], sp
    ld [de], a
    dec c
    ld hl, $0f1e
    add hl, sp
    ld d, $5d
    ld a, [hl-]
    ld a, a
    jr c, jr_032_6147

    ld a, a
    inc a
    ld bc, $00ff
    ccf
    ld e, $3f
    ld e, $11
    ld c, $0e
    inc b
    ld b, b
    rst AddAToHL
    ld a, l
    cp d
    ld a, h
    cp e
    jr c, jr_032_60ef

    rst $28
    jr z, jr_032_60f2

    rst $28
    add c
    ld a, [hl]
    jp $ff3c


    rst $38
    nop
    nop
    inc d
    ld e, $48
    or b

jr_032_60ef:
    add h
    ld a, b
    inc c

jr_032_60f2:
    ldh a, [$9e]
    ld l, h
    cp [hl]
    ld c, h
    db $fd
    cp a
    cp a
    ld b, $01
    rst $38

jr_032_60fd:
    nop
    cp $3c
    cp $3c
    ld b, h
    jr c, jr_032_613d

    ld b, b
    nop
    add b
    inc bc
    nop
    dec b
    inc bc
    rrca
    rlca
    nop
    rra
    rrca
    dec e
    rrca
    dec hl
    rra
    inc hl
    rra
    nop
    ld a, [hli]
    rla
    add hl, de
    ld b, $1b
    inc b
    dec d
    ld [bc], a
    ld [$020f], sp
    rla
    ld a, [bc]
    dec sp
    ld b, b
    nop
    db $fc
    nop
    ld b, b
    ld e, a
    db $e4
    rst $38
    ld a, [$fdff]
    rst $38
    ld b, b
    cp $21
    or [hl]
    rst $38
    ld l, h
    or e
    cp $21
    nop
    rst $38

jr_032_613d:
    nop
    rst $08
    jr nc, jr_032_61bb

    db $fd
    ld a, e
    db $fd
    jr nc, jr_032_60fd

    ld a, c

jr_032_6147:
    ccf
    and b
    ret nz

    nop
    and b
    ld b, b
    nop
    ret nc

    and b
    ld l, h
    ret nc

    ld [c], a
    ld e, h
    pop hl
    ld e, [hl]
    ld bc, $3ec1
    and $d8
    ld hl, sp-$80
    add b
    sub e
    nop
    inc h
    dec de
    ld h, d
    dec e
    ld b, b
    ccf
    ld a, d
    dec b
    nop
    ld a, [hl]
    ld sp, $79be
    ld a, [$fb71]
    ld [hl], b
    nop
    cp a
    ld h, b
    ld a, [hl]

jr_032_6175:
    dec a
    ld a, a
    inc a
    ld [hli], a
    inc e
    jr nz, jr_032_6198

    nop
    and b
    ld a, [$f905]
    db $76
    ld hl, sp+$02
    ld [hl], a
    ld [hl], c
    xor [hl]
    ld hl, $51de
    ld b, e
    inc bc
    ld h, b
    db $fc
    sub $00
    add hl, bc
    sub b
    ld h, b
    jr jr_032_6175

    ld [$f000], sp

jr_032_6198:
    ld a, b
    add b
    ld hl, sp+$30
    db $f4
    ld a, b
    db $fc
    inc h
    jr c, jr_032_621e

    ld hl, $fc08
    daa
    ld a, b
    adc b
    jr nc, jr_032_621a

    ld [hl], b
    rst JumpTable
    rst $38
    ret nc

    nop
    inc bc
    dec b
    inc bc
    dec bc
    rlca
    ld d, h
    nop
    rrca
    rla
    ld d, $15
    dec d

jr_032_61bb:
    dec bc
    inc d
    dec bc
    dec c
    ld [bc], a
    dec bc
    ld bc, $0103
    push af
    nop
    nop
    jr nz, jr_032_61e9

    ld a, a
    jr nz, @+$01

    ld [hl], d
    rst $38
    db $fd
    rst $38
    cp $d0
    jr z, @+$01

    rst JumpTable
    cp d
    rst JumpTable
    ld [hl], h
    sbc e
    cp $11
    nop
    nop
    db $db
    inc a
    rst $38
    ret nc

    nop
    ldh [$9c], a
    ld h, b
    jp nz, $a0bc

    nop

jr_032_61e9:
    pop hl
    ld e, [hl]
    ld e, [hl]
    ld [hl], c
    xor [hl]
    ld [hl], e
    xor h
    ld h, [hl]
    sbc b
    ld a, h
    ldh [$f8], a
    ld b, b
    ret nz

    add b
    nop
    nop
    rlca
    ld bc, $050a
    ld de, $100e

jr_032_6201:
    rrca
    jr nz, jr_032_6223

    dec a
    ld [bc], a
    ccf
    jr jr_032_6268

    inc a
    nop
    ld e, b
    inc e
    ld a, a
    jr c, jr_032_628d

    jr c, jr_032_628f

    jr nc, @+$60

    inc a
    ld a, $22
    nop
    nop
    nop

jr_032_621a:
    and h
    nop
    cp l
    ld a, [hl]

jr_032_621e:
    ld a, [hl]
    ld e, d
    ld a, h
    add e
    ld a, h

jr_032_6223:
    cp e
    jr c, @-$27

    db $10
    rst $28
    jr z, jr_032_6201

    rst $38
    rst $38
    nop
    nop
    ld a, [bc]
    cp $e0
    add b
    ld d, b
    and b
    adc b
    ld [hl], b
    ld [$04f0], sp
    ld hl, sp-$44
    ld b, b
    inc e
    inc c
    nop
    rlca
    nop
    rst JumpTable
    ld c, $9f
    ld c, $bf
    ld b, $7e
    inc a
    ld a, [hl]
    inc a
    ld b, h
    jr c, jr_032_6286

    rst $38
    ld b, b
    nop
    ld bc, $0102
    dec b
    inc bc
    dec bc
    rlca
    sub l
    nop
    rrca
    rlca
    rla
    ld d, $15
    ld [de], a
    dec c
    ld d, $09
    ld a, [bc]
    ld bc, $0003
    push af

jr_032_6268:
    nop
    nop
    ld b, b
    ld a, [hl]
    rst $38
    ld [hl-], a
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    ret nz

    nop
    rst $38
    ld a, a
    ei
    sub $f9
    cp a
    ret nc

    ld l, a
    sub b
    db $db
    inc a
    cp l
    ld a, [hl]
    dec a
    cp $ff

jr_032_6286:
    ld b, b

jr_032_6287:
    nop
    ret nz

    and b
    ld b, b
    ret nc

    and b

jr_032_628d:
    ret nc

    ld h, b

jr_032_628f:
    jr z, jr_032_62d1

    ld l, b
    add sp, $50
    or b
    or b
    ld h, h
    sbc b
    db $f4
    db $e4
    ld e, b
    ld b, h
    cp b
    call nz, $00b8
    add c
    ld [hl], b
    dec c
    ld [bc], a

jr_032_62a4:
    ld de, $210e
    ld e, $20
    rra
    rrca
    ld a, c
    ld [hl], $bf
    ld a, b
    ld sp, hl
    ld bc, $1e58
    ld sp, hl
    ld [hl], b
    rst $38
    ld [hl], b
    ld a, a
    ld l, $3f
    ccf
    ld bc, $0000
    nop
    nop
    adc b
    db $10
    db $db
    cp h
    db $fd
    add d
    ld a, l
    cp d
    cp b
    ld d, a
    rst $28
    jr z, jr_032_62a4

    rst $28
    add c
    ld a, [hl]
    rst $38

jr_032_62d1:
    rst $38
    nop
    nop
    add h
    ld e, $e2
    sbc h
    ld d, d
    xor h
    ld c, c
    or [hl]
    add l
    ld a, d
    ldh [$be], a
    ld e, h
    db $fd
    sbc a
    ld c, $00
    ld e, b
    jr c, jr_032_6287

    ld c, $bf
    ld b, $ff
    ld a, [hl-]
    ld a, [hl]
    inc a
    ld a, h
    ld b, h
    nop
    nop
    nop
    rst $38
    db $f4
    nop
    inc bc
    dec b
    inc bc
    add hl, bc
    ld d, b
    rra
    dec bc
    rlca
    rla
    rrca
    cpl
    cpl
    ccf
    ccf
    ccf
    ld e, $3f
    ld e, $00
    inc hl
    rst $38
    stop
    db $10
    ld [$0018], sp
    inc e
    ld [$0c1f], sp
    ld b, $7f
    ei
    rst $38
    ld b, b
    rst $38
    cp l
    ei
    ld a, a
    ld a, a

Jump_032_6320:
    di
    rst $30
    ld [$00fd], a
    nop
    ld hl, sp-$02
    jr @+$01

    and $df

jr_032_632c:
    dec sp
    cp $cd
    and b
    add b
    rst $38
    or $fa
    db $fd
    ei
    cp a

jr_032_6337:
    db $fd
    cp l
    cp $9d
    sbc a
    ld l, h
    ld l, a
    push af
    rst $38
    ret nc

    nop
    add b
    ret nz

    add b
    ldh [$c0], a
    ld a, [bc]
    nop
    adc b
    jr nc, jr_032_632c

    db $10
    add sp, $70
    ld [hl], h
    db $e4
    jr jr_032_6337

    ld e, d
    ld [c], a
    call c, $bdc2
    ld bc, $00f4
    dec b
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld bc, $0101
    inc bc
    ld bc, $0094
    rlca
    inc bc
    ld c, $0c
    inc e
    rrca
    jr c, jr_032_638e

    ld a, h
    inc bc
    ld a, [hl]

jr_032_6372:
    dec c
    ld a, a
    ld e, $8a
    nop
    rst JumpTable
    cp b
    push de
    cp d
    or h
    or a
    rst $38
    ld d, a
    ld a, a
    rlca
    rst $38
    ld l, e
    xor $dd
    nop
    nop
    cpl
    call c, Call_032_5cab
    ld e, l
    xor d
    ld c, c

jr_032_638e:
    or [hl]
    ld c, b
    or a
    jr nz, jr_032_6372

    add hl, sp
    add $3f
    ret nz

    dec bc
    ldh [rIE], a
    cp $b1
    ei
    ld h, [hl]
    di
    sbc [hl]
    cp $9d
    or $f9
    dec b
    inc b
    rst $30
    rst $38
    nop
    add hl, bc
    or $f8
    ld hl, sp-$10
    ld l, a
    ldh a, [rIF]
    ld [$00ff], sp
    nop
    nop
    ld hl, sp+$37
    ldh a, [$2f]
    or b
    ld c, a
    cp b
    ld b, a
    db $fc
    ld b, e
    rst $38
    ret nz

    cp $c1
    rst $20
    ret c

    ld b, b
    db $10
    call c, $d3a7
    xor [hl]
    and c
    ld e, a
    and c
    ld e, a
    ld hl, $23df
    rst $20
    dec de
    rst $08
    scf
    and b
    nop
    jr nz, @-$3e

    ret nc

    db $10
    ldh [$90], a
    ld l, b
    adc b
    ld [hl], b
    inc b
    ld hl, sp+$02
    db $fc
    add d
    ld a, h
    dec d
    stop
    db $e3
    inc e
    rst $38
    rst $38
    cp a
    rst JumpTable
    add b
    and $e0
    add b
    ldh [$c0], a
    dec h
    nop
    ld a, [hl]
    ld a, a
    rra
    dec a
    rst $38
    rst $38
    rst $38
    ld a, h
    cp a
    ld a, e
    ld e, a
    scf
    scf
    rrca
    ld bc, $00ff
    rla
    dec bc
    rla
    dec bc
    ld a, [bc]
    dec b
    rlca
    ld d, l
    nop
    nop
    rst JumpTable
    sbc a
    rra
    rra
    sub a
    ld [$8cd3], sp
    ld sp, hl
    add $eb
    push bc
    dec b
    rst $38
    nop
    rst $20
    ld b, c
    and e
    ld b, b
    pop hl
    ret nz

    xor d
    add b
    rst $38
    nop
    nop
    nop
    nop

jr_032_6430:
    nop
    cp $01
    ld hl, sp-$09
    inc c
    ei
    rlca
    rst $38
    nop
    rrca
    ld hl, sp-$04
    ldh a, [$f8]
    ld a, [bc]
    nop
    rst $00
    rst $38
    rlca
    rlc l
    inc bc
    inc bc
    ld b, a
    add e
    ld c, a
    add b
    rst JumpTable
    rrca
    cp a
    rra
    ld bc, $00ff
    ccf
    ld d, $2f
    ld d, $3a
    dec b
    rra
    dec h
    ld b, b
    ldh a, [$e0]
    ret nz

    ldh [$f8], a
    ld hl, sp-$08
    add sp, $70
    ret c

    and b
    or b
    ret nz

    ld bc, $00ff
    and b
    ret nz

    jr nz, jr_032_6430

    ld b, b
    add b
    add b
    rst $38
    ret nc

    nop
    ld bc, $0102
    dec b
    inc bc
    sub l
    ld d, h
    rlca
    inc bc
    dec bc
    rrca
    rrca
    rrca
    rrca
    dec bc
    ld b, $0b
    nop
    rra
    rst $38
    nop
    nop
    ld bc, $0300
    ld bc, HeaderManufacturerCode
    rst JumpTable
    ld a, $7f
    ld_long a, $ff00

Call_032_6498:
    rst $28
    rst JumpTable
    sbc $bf
    ld a, a
    cp h
    or l
    ld a, d
    rst $28
    ld [hl], b
    ld a, [bc]
    xor e
    rst $38
    ldh [rP1], a

jr_032_64a7:
    rst JumpTable
    add b

jr_032_64a9:
    sbc a
    pop bc
    ld a, [c]
    db $fd
    cp $f4
    ld [bc], a
    rst $38
    rst $30
    ld a, a
    di
    ei
    ld [hl], l
    ld [hl], l
    xor $ee
    rst JumpTable
    or c
    ret nc

    nop
    nop
    add b
    ldh [$80], a
    ldh a, [$e0]
    ld a, b
    ldh a, [$9c]
    ld a, b
    add $bc
    db $e3

jr_032_64ca:
    ld e, [hl]
    ld [bc], a
    jr nz, jr_032_64ca

    pop hl
    ld e, [hl]
    or b
    ld l, a
    ldh a, [$af]
    and e
    call c, $9bab
    ld hl, sp+$37
    ld a, b
    or a
    rst $38
    rst $38
    nop
    ret nc

    nop
    nop
    add b
    ld b, b
    add b
    jr nz, jr_032_64a7

    jr nz, jr_032_64a9

    db $10
    ldh [$08], a
    ldh a, [rDIV]
    ld hl, sp+$1b
    db $f4
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    inc bc
    inc d
    nop
    rrca
    ld c, $07
    inc e
    jr jr_032_6539

    rra
    inc a
    inc bc
    ld a, $0d
    ccf

jr_032_6507:
    ld e, $7f
    ccf
    ld a, [bc]
    nop
    ld a, a
    db $dd
    ld h, [hl]
    rst $38
    ld c, h
    rrca
    rla
    ld e, a
    scf
    rst JumpTable
    dec sp
    sbc $b9
    rst JumpTable
    cp b
    jr z, jr_032_651d

jr_032_651d:
    ld d, c
    add hl, sp
    sub $ae
    xor [hl]
    ld b, b
    cp a
    jr nz, @-$1f

    jr nz, jr_032_6507

    ld hl, $b0de
    ld c, a
    cpl
    add d
    rst $38
    ei
    ld h, [hl]
    di
    sbc [hl]
    cp $fd
    rst $30
    ld hl, sp+$00
    inc d

jr_032_6539:
    inc b
    rst $30
    add hl, bc
    or $f8
    ld hl, sp-$10
    ld l, a
    ldh a, [$6f]
    ldh a, [rIF]
    ld [$6f90], sp
    nop
    ld d, b
    ret nz

    ld sp, hl
    and [hl]
    db $fd
    add d
    cp [hl]
    ld b, c
    cp a
    ld b, b
    pop hl
    ld hl, sp-$12
    ret c

    and a
    sbc $10
    ld [bc], a
    ld a, a
    jp $81bf


    sub b
    ld l, a
    db $10
    rst $28
    inc hl
    call c, $db27
    ccf
    rst $00
    add a
    nop
    dec d
    nop
    inc b
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    pop bc
    ld a, $f9
    ld b, $1f
    rrca
    ld b, $02
    xor c
    ldh [$80], a
    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    ld b, b
    add b
    ret nz

    ldh a, [$a8]
    nop
    rst $38
    ld a, a
    ld a, [hl]
    ld a, h
    ld a, a
    dec sp
    ld e, a
    scf
    ccf
    rrca
    rra
    rrca
    rra
    dec bc
    rra
    rst $38
    nop
    ld [$0707], sp
    jr z, jr_032_65a0

jr_032_65a0:
    cp a
    db $fc
    inc bc
    nop
    nop
    rst JumpTable
    add b
    rst $30
    ret z

    di
    call z, $c6f9
    xor e
    push bc
    rla
    rst $38
    nop
    daa
    pop bc
    jp $2a01


    add b
    rst $38
    ld h, c
    sbc [hl]
    nop
    nop
    nop
    nop
    cp $01
    ld hl, sp-$09
    inc c
    ei
    rlca
    rst $38
    nop
    rrca
    ld hl, sp-$04
    ldh a, [$f8]
    add b
    ld [$07ff], sp
    rst $20
    inc bc
    rst $00
    inc bc
    rst $08
    nop

jr_032_65d7:
    ld e, a
    adc a
    ld e, a
    sbc a
    rra
    xor a
    ld e, $1f
    rst $38
    nop
    jr nz, jr_032_6602

    rra
    ld d, h
    jr z, jr_032_65d7

    ld hl, sp-$08
    ld hl, sp-$18
    ld [hl], b
    ret nc

    and b
    ret nz

    ret nz

    ldh [$c0], a
    rra
    rst $38
    nop
    ld b, b
    add b
    add b
    rst $38
    ld b, b
    nop
    ld bc, $0102
    dec b
    inc bc
    rlca
    inc bc

jr_032_6602:
    ld d, l
    ld b, b
    rlca
    dec bc
    rrca
    rrca
    rrca
    dec bc
    ld b, $0b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld bc, $3b00
    dec b
    rst JumpTable
    add hl, sp
    ld a, a
    cp $e0
    nop
    rst $38
    rst $28
    cp a
    rst JumpTable
    ld e, [hl]
    cp a
    db $fd
    ld a, $ba
    ld a, l
    push af
    ld a, d
    db $eb
    db $76
    ld [$ffab], sp
    ldh [rP1], a
    rst JumpTable
    add b
    sbc a
    ei
    add a
    ldh a, [$fd]
    cp $f6
    nop
    rst $38
    ld [hl], a
    ld [hl], e
    ei
    ld [hl], l
    db $fd
    ld l, [hl]
    cp $9f
    cp a
    ld a, a
    db $f4
    nop
    nop
    ret nz

    ldh a, [$c0]
    ld a, b
    ldh a, [$9c]

jr_032_6650:
    ld a, b
    add $bc
    pop hl
    ld e, [hl]
    ld a, [hli]
    nop
    ldh a, [$e0]
    ld e, a
    xor a
    xor a
    xor a
    call c, $fca3
    sbc e
    db $fc
    dec sp
    db $fc
    inc sp
    rst $38
    db $fd
    nop
    add b
    ld bc, $fc10
    ld h, b
    add b
    jr jr_032_6650

    inc b
    ld hl, sp+$02
    ld bc, $03fe
    adc a
    ld [hl], b
    cp $00  ; and a / or a
    cp a
    ret nc

    nop
    ld [bc], a
    inc bc
    rlca
    inc bc
    ld c, $07
    nop
    xor c
    ccf
    inc c
    rlca
    inc e
    rrca
    inc e
    rrca
    ld e, $01
    ld b, $0f
    rra
    ld a, a
    ld a, [bc]
    nop
    ld a, a
    db $db
    ld h, a
    ccf
    ld c, b
    cpl
    cpl
    rst $38
    scf
    rst $38
    cp e
    cp $b1
    dec sp
    call nc, $000a
    ld hl, $ee11
    ld d, c
    xor [hl]
    sbc $de
    jr nz, @-$1f

    and b
    ld e, a
    pop bc
    cp [hl]
    ldh [$1f], a
    ld l, $a0
    rst $38
    ei
    db $fd
    db $e3
    cp $1e
    db $fd
    rst $30
    ld hl, sp-$03
    ld [bc], a
    ld d, l
    inc b
    rst $30
    ld [$f8f8], sp
    ld hl, sp-$10
    ld l, a
    ld h, b
    sbc a
    ld [$6f90], sp
    add b
    ld [$20ff], sp
    cp a
    ld b, b
    db $fc
    ld b, b
    ld hl, sp-$40
    ld hl, sp-$40
    cp $d8
    cp [hl]
    rst $00
    cp a
    nop
    ld a, [hli]
    ccf
    add c
    ld a, a
    sub c
    ld l, a
    jr nz, @-$1f

    daa
    ret c

    cpl
    db $d3
    rst $00
    rst $08
    rst $08
    ld a, a
    db $fd
    nop
    ldh [$80], a
    sub h
    ld d, b
    add b
    nop
    ret nz

    ret nz

    ret nz

    nop
    ldh [$e0], a
    ldh [$c0], a
    ldh [$c0], a
    ld e, d
    nop
    ccf
    ld a, a
    ld a, a
    inc e
    dec de
    cpl
    rla
    rla
    rrca
    rla
    rrca
    inc de
    rrca
    rra
    rst $38
    nop
    ld [$0707], sp
    and b
    nop
    and b
    rra
    rra
    or c
    ld c, $f8
    add a
    cp $c1
    di
    call z, $c6f9
    db $eb
    push bc
    rla
    rst $38
    nop
    daa
    pop bc
    jp $0401


    inc b
    rst $30
    ld h, b
    sbc a
    sub b
    ld l, a
    ld [$0ff0], sp
    inc bc
    db $fc
    cp $01
    ld hl, sp+$0c
    ei
    rlca
    rst $38
    nop
    rrca
    ld hl, sp-$04
    ldh a, [$f8]
    ld d, b
    nop
    rst $00
    ccf
    cpl
    ld l, a
    add a
    rst $28
    nop
    rst $38
    rrca
    ld a, a
    sbc a
    rst $38
    rra
    cp a
    rra
    rra
    rst $38
    nop
    jr nz, jr_032_677e

    rra
    ld d, h
    nop
    ldh [$d0], a
    ldh a, [$f0]
    ldh a, [$60]
    ret nc

    and b
    and b
    ret nz

    and b
    ret nz

    jr nz, @-$3e

    rra
    rst $38
    nop
    ld b, b
    add b
    add b
    rst $38
    db $f4
    nop
    ld bc, $0102
    dec h
    ld d, l

jr_032_677e:
    rlca
    dec b
    inc bc
    inc bc
    dec bc
    rrca
    rrca
    rrca
    rrca
    dec bc
    rst $38
    nop
    nop
    dec a
    ld [bc], a
    rst JumpTable
    inc a
    ld a, a
    cp $ff
    rst $38
    rst $38
    and d
    rst $38
    rst $28
    rst JumpTable
    sbc $bf
    inc a
    push af
    nop
    nop
    ld b, b
    ret nz

    ret nz

    add b
    rst JumpTable
    add b
    rst $38
    jp $dcff


    dec hl
    ret c

    rst $38
    ei
    rst $20
    ld sp, hl
    cp $77
    ld [hl], a
    ld a, a
    di
    rst $38
    db $f4
    nop
    ld hl, sp-$01
    ld hl, sp+$0a
    nop
    ldh [$9f], a
    ld a, a
    ret nz

    cp a
    rst JumpTable
    ld e, a
    or b
    ld l, a
    ldh a, [$af]
    db $fc
    and e
    call c, $ffab
    rst $38
    nop
    sub b
    ld bc, $00e0
    jr @+$06

    ld hl, sp+$02
    db $fc
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [rNR34]
    ld b, $ff
    nop
    ld b, $0b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld hl, $0741
    inc bc
    nop
    inc bc
    ld b, $03
    ld c, $0c
    inc e
    rrca

Call_032_67f2:
    ccf
    nop

jr_032_67f4:
    ccf
    nop
    and b
    ld a, a
    or l
    ld a, d
    db $eb

Call_032_67fb:
    db $76
    rst $30
    ld l, b
    db $fd
    ld b, [hl]
    inc l
    cpl
    ccf
    rla
    rst $38
    rla
    nop
    and b
    add hl, hl
    rst $38
    db $db
    xor [hl]
    db $dd
    ld e, a
    xor b
    dec a
    jp z, $d6d6

    jr nz, jr_032_67f4

    ldh [$1f], a
    nop
    cp d
    rst $38
    di
    db $ed
    rst $28
    sbc [hl]
    cp $71
    ei
    ld h, [hl]
    di
    cp $9e
    adc b
    nop
    rst $38
    sbc l
    rst $30
    ld sp, hl
    ld bc, $f609
    ld sp, hl
    or $f8
    rst $30
    ldh a, [$6f]
    ld h, b
    sbc a
    nop
    ld [hli], a
    ld hl, sp-$04
    sbc e
    ld a, b
    or a
    ei
    inc [hl]
    rst $38
    ld h, b
    cp $40
    nop
    ret nz

    add b
    add b
    ld bc, $df50
    cp $b8
    ld c, a
    cp [hl]
    sub e
    ld l, a
    ld hl, $2021
    cpl
    ret nc

    ccf
    jp $ff15


    nop
    ld [hl], b
    add b
    ldh [$c0], a
    add b
    push af
    inc b
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$e0], a
    add b
    jr z, jr_032_6875

    ld a, a
    ccf
    rra
    ccf
    dec a
    rst $38
    ld a, [hl]
    rst $38

jr_032_6875:
    ld a, [hl]
    cp a
    ld a, [hl]
    jr c, jr_032_68a9

    rla
    nop
    ld a, a
    nop
    rla
    rrca
    rla
    rrca
    rla
    rrca
    rrca
    rlca
    rlca
    jr z, jr_032_6889

jr_032_6889:
    ldh a, [$e1]
    sbc [hl]
    rst $08
    rst $08
    ret nc

    adc a
    sbc c
    ld b, $18
    rlca
    ld d, $09
    sub e
    inc c
    nop
    ld a, a
    nop
    reti


    add [hl]
    db $eb
    push bc
    rst $20
    pop bc
    db $e3
    ret nz

    ret nz

    add b
    add b
    ld [$90f7], sp

jr_032_68a9:
    ld l, a
    ld h, b
    sbc a
    sub b
    ld l, a
    rst $30
    ldh a, [rIF]
    inc bc
    db $fc
    cp $01
    nop
    rst $38
    nop
    ld hl, sp-$09
    inc c
    ei
    inc c
    ld a, [$f0fc]
    ld b, b
    nop
    nop
    rrca
    ld bc, $0200
    ld bc, $0503
    add hl, de
    dec b
    inc bc
    rlca
    pop bc
    ld sp, $0002
    inc h
    ld b, b
    inc bc
    inc sp
    ld bc, $001f
    ld l, a
    rra
    cp a
    inc d
    ld a, a
    ld a, a
    rst $38
    and b
    rst $30
    ld [hli], a
    rst $28
    rst $28
    jr @-$20

    cp $dd
    ccf
    ld h, b
    sbc a
    nop
    rst $38
    nop
    add e
    rst $38
    call c, Call_032_67fb
    rst $38
    ld sp, hl
    rst $38
    ld b, b
    cp $dd
    rst $30
    ld a, a
    di
    di
    ld l, l
    rst $28
    ld h, b
    ld e, [hl]
    cp a
    jr nz, @-$3e

    nop
    ldh a, [$c0]
    ld hl, sp+$00
    ld [hl], b
    call c, $eeb8
    call c, $5ce6
    or a
    nop
    ld l, [hl]
    di
    xor [hl]
    rst $38
    and d
    rst JumpTable
    xor d
    db $fc
    nop
    sbc e
    ld hl, sp-$49
    dec b
    inc bc
    inc bc
    ld bc, $1c02
    ld bc, $0001
    ld h, b
    dec h
    dec hl
    ld b, $03
    nop
    ld c, $07
    inc c
    rlca
    inc e
    rrca
    jr c, jr_032_6955

    nop
    ld a, h
    inc bc
    ld a, [hl]
    dec c
    ld a, a

jr_032_693c:
    ld e, $df
    cp b
    nop
    db $dd
    cp d
    db $db
    or h
    db $db
    or a
    rst $38
    ld d, a
    nop
    ld a, a
    rlca
    sbc a
    ld l, e
    ld l, $dd
    cpl
    call c, $ab00
    ld e, h
    ld e, l

jr_032_6955:
    xor d
    ld c, c
    or [hl]
    ld c, b
    or a
    nop
    jr nz, jr_032_693c

    ld sp, $30ce
    rst $08
    cp $b1
    inc b
    ei
    ld h, [hl]
    ld a, a
    di
    rst $38
    ld h, b
    sbc [hl]
    cp $00  ; and a / or a
    sbc l
    or $f9
    db $fd
    ld [bc], a
    add hl, bc
    or $f8
    ld b, b
    rst $30
    ld hl, $6ff0
    ldh a, [rIF]
    ld [$02f7], sp
    sub b
    ld l, a
    ld hl, sp+$37
    ldh a, [$2f]
    add hl, hl
    or b
    nop
    ld c, a
    db $fd
    ld b, d
    cp $c1
    rst $38
    ret nz

    rst $20
    ld bc, $a3d8
    sbc $d1
    xor a
    and c
    ld e, a
    ld hl, $2000
    rst JumpTable
    inc hl
    call c, $9b67
    ld c, a
    or a
    jr nz, @-$7e

    nop
    ld h, c
    ret nz

    nop
    ld b, b
    add b
    jr nz, jr_032_69f6

jr_032_69ac:
    ret nz

    ld hl, $00f0
    ld hl, $41f8
    ldh a, [rSC]
    add b
    ret nz

    add b
    ldh [rP1], a
    ldh [rNR44], a
    ret nz

    ld [bc], a
    ld a, a
    rra
    ld a, a
    dec a
    rst $38
    ld a, [hl]
    ld b, c
    ld a, h
    ld bc, $7bbf
    ld e, a
    scf
    scf
    rrca
    rla
    ld b, c
    ld [$070f], sp
    rlca
    nop
    ldh [hFFD8], a
    rlca
    sbc a
    jr nz, jr_032_69da

jr_032_69da:
    rra
    ld b, c
    sub a
    ld [$8cd3], sp
    ld sp, hl
    nop
    add $eb
    push bc
    rst $20
    pop bc
    db $e3
    ret nz

    pop hl
    jr nz, jr_032_69ac

    ret nz

    rra
    add hl, bc

jr_032_69ef:
    ld h, b
    sbc h
    sbc h
    ld h, b
    db $fc
    ld b, d
    nop

jr_032_69f6:
    and c
    ld hl, sp-$0c
    inc c
    ld hl, sp+$21
    db $fc
    jr c, jr_032_69ef

    ld hl, sp+$1d
    add hl, bc
    jr nz, jr_032_6a04

jr_032_6a04:
    nop
    nop
    inc b
    nop
    ld [$3000], sp
    nop
    nop
    ld c, e
    nop
    ld b, h
    inc bc
    ld d, $01
    and d
    ld bc, $8a00
    ld hl, $2162
    nop
    inc hl
    jr nz, jr_032_6a31

    nop
    inc b
    inc sp
    nop
    scf
    ld [$2633], sp
    add hl, de
    ld b, b
    nop
    nop
    jr jr_032_6a56

    ld bc, $17c3
    add hl, sp
    pop bc

jr_032_6a31:
    nop
    ld bc, $12f2
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$03]
    add hl, bc
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    ld bc, $0028
    ld [$2000], sp

jr_032_6a47:
    nop
    add b
    nop
    ret nz

    add b
    xor b
    ret nz

    nop
    ret z

    ldh [$c4], a
    add sp, -$1a
    add sp, -$0e

jr_032_6a56:
    db $ec
    nop
    jp nz, $80fc

    ld a, h
    nop
    db $fc
    inc b
    ld hl, sp+$00
    nop
    ld hl, sp+$08
    ldh a, [rSB]
    ld b, $07
    jr jr_032_6a6a

jr_032_6a6a:
    ld [$4226], sp
    inc c
    or b
    inc b
    ld e, h
    jr nz, jr_032_6a73

jr_032_6a73:
    sub b
    ld l, b
    jr z, jr_032_6a47

    inc d
    db $e4
    inc l
    call z, $9c20
    inc e
    nop
    db $10
    inc a
    inc a
    ld a, h
    ld a, h
    db $fc
    nop
    db $fc
    inc b
    nop
    ld [bc], a
    ld bc, $0708
    stop
    rrca
    ld bc, $211e
    ld e, $00
    ccf
    ld b, e
    nop
    inc a
    ld [bc], a
    ld a, h
    ld bc, $807e
    ld a, a
    inc c
    nop
    di
    ld [bc], a
    ld sp, hl
    ld bc, $60fc
    sbc [hl]
    or d
    jr nz, jr_032_6ab7

    nop
    ld e, e
    ld [$c020], sp
    ld d, d
    adc h
    ld bc, $1e00
    add b
    ccf

jr_032_6ab7:
    ld b, h
    dec sp
    ld [bc], a
    ld a, c
    ld a, [bc]
    nop
    ld [hl], c
    ld d, h
    inc hl
    adc h
    inc bc
    jr @-$37

    ld d, b
    nop
    adc a
    add b
    rra
    ld hl, $c01e
    ld a, $00   ; xor a
    add b
    ccf
    ld [$0300], sp
    ld bc, $0000
    ld b, $08
    nop
    rlca
    inc b
    inc bc
    ld c, d
    ld sp, $7902
    add e
    nop
    ld a, h
    ldh [$1f], a
    ld d, b
    rrca
    nop
    rra
    jr nz, jr_032_6aeb

jr_032_6aeb:
    rra
    ld b, c
    ld a, $43
    inc a

jr_032_6af0:
    and b
    ld b, b
    sub b
    nop
    ld h, b
    add c
    ld b, $04
    ld [hl], e
    add d
    ld a, c
    ld b, e
    nop
    inc a
    nop
    cp a
    jr nc, @-$2f

    nop
    rst $38
    inc b
    nop
    ei
    inc c
    di
    ld e, $e1
    ld a, $c1
    ld b, c
    nop
    cp [hl]
    db $e3
    inc e
    rst $20
    jr jr_032_6b45

    rrca
    pop hl
    nop
    ret nz

    add hl, sp
    ld a, [hl]
    sbc a
    ccf
    ld c, a
    rra
    ld h, $00
    rrca
    db $10
    rlca
    nop
    rlca
    ld [$0003], sp
    adc l
    ld bc, $0408
    ld bc, $0100
    jr nc, jr_032_6b32

jr_032_6b32:
    jr @+$12

    ld b, $20
    sbc b
    nop
    sbc b
    ld a, [bc]
    nop
    and h
    ld [$b800], sp
    cp $ff
    db $fc
    ld [bc], a
    cp $f8

jr_032_6b45:
    db $fc
    ldh a, [$f8]
    jr nc, @+$39

    add hl, bc
    nop
    ld [bc], a
    ldh [$c0], a
    ldh [$e0], a
    ret nz

jr_032_6b52:
    nop
    ld bc, $4048
    ld b, b
    add b
    scf
    or b
    ld [bc], a
    nop
    ld e, c
    ld e, d
    jr c, jr_032_6b98

    ret z

    inc de
    ld h, b
    adc [hl]
    jr nz, jr_032_6b68

    ld [bc], a
    inc d

jr_032_6b68:
    ld e, b
    stop
    ld h, b
    xor d
    ld c, a
    jr c, jr_032_6af0

    dec c
    ld [$0140], sp
    ld [$1a30], sp
    jr nz, @+$05

    jr nc, jr_032_6b7e

    ld a, $1f
    add hl, bc

jr_032_6b7e:
    ld a, [hli]
    ld c, b
    ld [$1820], sp
    jr z, jr_032_6bc5

    db $10
    bit 4, b
    and b
    rra
    inc b
    jr jr_032_6b9f

    dec c
    add d
    dec sp
    ld de, $1918
    ld c, $0e
    ld bc, $0860

jr_032_6b98:
    db $10
    inc b
    db $10
    inc e
    inc e
    ld b, $06

jr_032_6b9f:
    ret nz

    ld b, b
    ld [$2006], sp
    call z, Call_032_67f2
    add hl, bc
    cp $02
    db $fc
    add h
    ld a, b
    dec b
    ld bc, $0700
    nop
    ld b, $01
    ld [$f30e], sp
    ld [$0c5e], sp
    scf
    ld a, [bc]
    ld [$789f], sp
    ld a, $19
    dec h
    ld [$1001], sp

jr_032_6bc5:
    inc bc
    add b
    ld a, $29
    jr jr_032_6bcb

jr_032_6bcb:
    inc a
    nop
    ld b, h
    jr c, jr_032_6b52

    ld b, $7c
    add d
    ld a, h
    nop
    cp $01
    ld [$5800], sp
    inc a
    nop
    nop
    ld e, h
    nop
    ld hl, $1e00
    ld bc, $8003
    ld b, b
    cp c
    nop
    cp $04
    ld a, [$f608]
    ld [hl-], a
    inc b
    call z, Call_032_7884
    ret nc

    jr nz, jr_032_6c14

    adc b
    ld a, a
    add b
    add d
    ld bc, $4008
    ccf
    ld hl, $1f1e
    ld a, $98
    ld [hl], a
    nop
    adc b
    nop
    rst $38
    ld bc, $0cfe
    ldh a, [$e0]
    ret nz

    and e
    ret


    cp [hl]
    jr nc, @+$11

    ld b, $3a

jr_032_6c14:
    ld a, l
    ld a, [hl-]
    rlca
    nop
    ld b, d
    rst $38
    jp $217f


    ld a, a
    ld h, c
    ccf
    jr nz, jr_032_6c32

    ld a, $6d
    add hl, de
    nop
    inc b
    ld [bc], a
    dec c
    ld [bc], a
    nop
    dec d
    ld a, [bc]
    ld d, [hl]
    add hl, de
    ld [de], a
    cp l
    inc sp

jr_032_6c32:
    ld a, h
    nop
    ld a, [$fafc]
    db $fc
    ld sp, hl
    db $fc
    ld [hl], d
    ld hl, sp+$08
    ld h, h
    ldh a, [$08]
    ret nz

    adc h
    ld d, b
    inc e
    ld e, $11
    ld c, h
    inc de
    ld e, b
    add hl, bc
    jr jr_032_6c54

    nop
    ld [$0914], sp
    ld bc, $5007
    rlca

jr_032_6c54:
    ld d, a
    dec bc
    ld c, $5c
    ld d, b
    add b
    ret nz

    jr nz, jr_032_6ccd

    nop
    ld [$081c], sp
    inc c
    db $10
    jr jr_032_6c85

    jr nc, jr_032_6c7f

    add b
    and b
    add b
    rst $30
    cp c
    nop
    db $10
    ld a, b
    ld a, b
    db $fc

jr_032_6c71:
    ld [hli], a
    db $fc
    cp $00  ; and a / or a
    jr jr_032_6cf3

    ld a, h
    nop
    ld b, a
    add hl, bc
    rra
    ld [$7100], sp

jr_032_6c7f:
    nop
    add a
    ld [hl], e
    add hl, bc
    rra
    nop

jr_032_6c85:
    daa
    or b
    dec b
    ld [$e418], sp
    add hl, bc
    ld a, e
    ld d, b
    ldh [rP1], a
    ld hl, sp+$00
    ld e, l
    and $fa
    add hl, bc
    ld [hl], b
    nop
    ld a, [bc]
    nop
    ret nz

    ld d, $12
    ld b, b
    ld a, [hli]
    ld a, [bc]
    nop
    ld h, h
    nop
    inc h
    nop
    ld [hl], $00
    ld a, $00   ; xor a
    ld b, c
    ld e, $bf
    ld l, c
    stop
    jr c, jr_032_6cb1

jr_032_6cb1:
    dec sp
    add hl, de
    ld [$7406], sp
    nop
    ld l, h
    nop
    jr z, @-$6b

    sub b
    adc b
    add hl, bc
    rst $38
    jr nc, jr_032_6cc1

jr_032_6cc1:
    ccf
    dec l
    inc c
    nop
    ret nc

    jr @+$1a

    ld a, a
    ld a, a
    nop
    rst $38
    rst $38

jr_032_6ccd:
    jp $04c3


    inc b
    ldh [$e0], a
    add hl, sp
    ld e, $1e
    ld c, l
    ld [de], a
    ld sp, hl
    ld [$18eb], sp
    ld b, b
    ld b, b
    xor a
    jr c, jr_032_6c71

    nop
    ld [$2020], sp
    rrca
    db $10
    ldh a, [$f0]
    jr jr_032_6d03

    ld e, b
    rst $38
    nop
    ld l, b
    nop
    ld bc, $1068

jr_032_6cf3:
    add b
    rst $38
    rst $38
    cp $00  ; and a / or a
    cp $fe
    db $fc
    db $fd
    ld hl, sp-$08
    ld sp, hl
    ld hl, sp+$00
    di
    db $f4

jr_032_6d03:
    di
    and b
    sbc a
    ld b, b
    ccf
    add b
    ld d, e
    ld a, a
    jr nz, @+$4a

    cp $01
    jr nc, @+$03

    cp $36
    ld d, b
    inc hl
    ld [$0180], sp
    ld [$3f40], sp
    ret nc

    rst $08
    ret nc

    rst $08
    ret nz

    inc b
    rst JumpTable
    ret nz

    rst JumpTable
    jp $04dc


    ld [$dfc0], sp
    nop
    nop
    ld [hl], b
    rrca
    ld a, b
    rlca
    ld a, b
    rlca
    jr c, jr_032_6d54

    rlca
    cp b
    ld bc, $9c18
    inc bc
    dec b
    ld hl, sp+$03
    inc c
    ld hl, sp+$02
    ld hl, sp+$01
    dec b
    ld [$2001], sp
    pop bc
    nop
    jr z, @+$32

    rrca
    ld e, a
    ld d, b
    inc b
    inc de
    ld [$f00a], sp
    ld b, $08

jr_032_6d54:
    ldh a, [rDIV]
    ldh a, [$08]
    ld bc, $0008
    ld hl, sp+$42
    nop
    inc a
    jr nz, jr_032_6d7f

    or c
    adc [hl]
    ret c

    rst $00
    add sp, $00
    rst $00
    db $ec
    db $e3
    or $e1
    or $f1
    db $d3
    nop
    set 2, e
    ret


    ld d, l
    ld c, c
    ld de, $310d
    ld bc, $b10d
    dec c
    ld hl, $259d

jr_032_6d7f:
    sbc c
    rst AddAToHL
    jr nc, jr_032_6d83

jr_032_6d83:
    cp $fc
    ld sp, hl
    ldh a, [$e4]
    db $e3
    ret nc

    rst $08

jr_032_6d8b:
    add c
    dec bc
    db $10
    ldh a, [$e0]
    adc b
    rlca
    ld b, b
    ccf
    sbc a
    ld [$01d4], sp
    ld [$20cf], sp
    db $fd
    nop
    ld [$00fb], sp
    ld [$f7f7], sp
    add hl, bc
    jp $38c3


    jr c, jr_032_6db8

    db $10

jr_032_6daa:
    pop af
    pop af
    dec c
    db $10
    jr nz, @-$27

    rst AddAToHL
    rra
    db $10
    rra
    rra
    rst $00
    rst $20
    rst $30

jr_032_6db8:
    nop
    rst $20
    di
    db $eb
    ei
    db $e3
    cp c
    and l
    ldh a, [rSC]
    rst $20
    add sp, -$19
    ldh [$ef], a
    ldh [$c5], a
    jr z, jr_032_6d8b

    nop
    sbc a
    ei
    ld hl, sp-$03
    db $fc
    cp $fe
    rst $38
    add c
    ld b, a
    ld [$7e7e], sp
    add c
    nop
    jr nz, @+$21

    and l
    jr nz, jr_032_6de0

jr_032_6de0:
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rP1]
    rrca
    ldh a, [rTAC]
    jr c, jr_032_6daa

    inc bc
    add b
    rra
    nop
    db $d3
    inc c
    rst $08
    nop
    rst $20
    nop
    di
    nop
    nop
    ld hl, sp+$00
    xor a
    ld b, b
    cpl
    ret nz

    ld l, a
    add b
    nop
    rst $30
    nop
    rst $30
    nop
    db $eb
    db $10
    sub b
    ld h, b
    inc b
    ld l, b
    add a
    sbc h
    inc bc
    call c, $1801
    adc $01
    nop
    xor $01
    ld l, $01
    adc $01
    inc bc
    ld hl, sp+$41
    nop
    db $fd
    ld [$f805], sp
    dec d
    add sp, $00
    db $dd
    ld [$0002], sp
    db $fc
    add e
    nop
    ret nz

    ccf
    ld d, c
    db $10
    ld b, d
    nop
    add c
    ld bc, $0000
    inc bc
    inc b
    inc bc
    ld [$f020], sp
    ld bc, $0801
    ld a, [bc]
    pop af
    inc b
    ei
    nop
    nop
    ei
    add b
    ld a, l
    nop
    cp $fb
    ldh a, [$fb]
    nop
    ld a, b
    db $fd
    ld a, b
    ld a, l
    inc a
    cp l
    inc a
    inc a
    nop
    cp h
    ld a, $bc
    ld a, $be
    ld h, e
    sbc c
    ld b, e
    nop
    cp e
    ld c, e
    or e
    sub a
    ld h, e
    sub a
    ld h, a
    xor a
    inc b
    ld b, a
    rst $28
    rrca
    rst JumpTable

jr_032_6e70:
    rra
    rst $38
    jr nc, jr_032_6e70

    cp $02
    ld hl, sp-$07

jr_032_6e78:
    di
    db $f4
    rst $20
    add sp, $0d
    jr nz, jr_032_6e80

    dec b

jr_032_6e80:
    add e
    jr c, jr_032_6ec7

    cp $01
    xor d
    db $10
    rst $30
    nop
    ld [$ef40], sp
    nop
    jr z, jr_032_6e78

    jp hl


    add sp, -$20
    rst $20
    rst $20
    nop
    rst $30
    rst $30
    ld hl, sp-$08
    dec a
    dec a
    sbc l
    sbc l
    nop
    ret


    ret


    db $e3
    db $e3
    rst $28
    rst $28
    cp l
    and c
    nop
    ld a, l
    ld h, c
    ld a, c
    ld h, l
    ei
    db $e3
    di
    db $eb
    ld b, b
    rst $30
    inc bc
    add hl, bc
    rst $08
    rst $08
    and b
    sbc a
    add b
    cp a
    add d
    ld bc, $3f08
    nop
    ccf
    ld b, b
    ccf
    pop de
    ld de, $01c0
    nop
    add b

jr_032_6ec7:
    ccf
    ld h, b
    rra
    ld [hl], b
    rrca
    ld bc, $0230
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld bc, $7f10
    ld h, b
    add b
    ld bc, $0410
    ld e, d
    nop
    ldh [rP1], a
    ld [$0607], sp
    db $f4
    inc bc
    ld a, [$fd01]
    ld a, d
    add hl, bc
    rrca
    db $10
    ld a, $00   ; xor a
    nop
    daa
    ret nz

    add a
    nop
    scf
    add b
    dec de
    nop
    ret nz

    inc de
    ld l, b
    dec h
    jr jr_032_6eff

    nop

jr_032_6eff:
    inc a
    db $10
    jr @+$04

    db $fc
    ld bc, $0010
    cp $80
    ld a, [hl]
    nop
    add b
    ld a, [hl]
    add c
    ld a, [hl]
    pop bc
    ld a, $18
    rlca
    add [hl]
    inc a
    jr nc, @-$7d

    ld a, [hl]
    ld bc, $717e
    ld [$0959], sp
    ld [bc], a
    nop
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    add hl, bc
    ld a, [c]
    ld [$0600], sp
    ld [bc], a
    db $fc
    ld a, $be
    ccf
    cp [hl]
    cp a
    nop
    rra
    ld e, a
    rra
    ld e, a
    rrca
    ld l, a
    rrca
    inc sp
    ld bc, $0003
    nop

jr_032_6f3e:
    cp a
    ccf
    ld a, a
    ld a, a
    rst $08
    ld d, d
    nop
    rst $08
    ret nc

    adc a
    sub b
    inc bc
    inc a
    nop
    ccf
    inc h
    jr nc, jr_032_6f9f

    xor h
    ld [$0380], sp
    xor e
    add hl, bc
    db $fd
    db $fc
    ld [bc], a
    ld a, [$f4f9]
    di
    ldh a, [$f7]
    rst $00
    add hl, de
    rst $28
    nop
    db $f4
    db $f4
    or $f2
    ei
    ld sp, hl
    db $fc
    db $fc
    add b
    cpl
    jr c, jr_032_6f3e

    rra
    rra
    cp $fe
    ld a, l
    dec a
    nop
    adc a
    adc a
    rst $28
    rst $28
    rst AddAToHL
    ret nz

    xor b
    sub b
    nop
    rla
    ld b, a
    dec bc
    ld h, e
    inc bc
    di
    dec b
    pop af
    ld bc, $e509
    ld d, c
    adc l
    ld [hli], a
    inc e
    add b
    add c
    db $10
    call c, Call_032_6001
    sbc l
    jr z, jr_032_6f98

    rst $28

jr_032_6f98:
    ld a, [bc]
    ld bc, $7810

jr_032_6f9c:
    jr c, jr_032_6f9c

    db $fc

jr_032_6f9f:
    nop
    db $fc
    ld hl, sp-$05
    ld hl, sp-$08
    ld a, [c]
    ld bc, $20f9
    nop
    db $fc
    ld bc, $4249
    add b
    inc c
    ldh a, [$60]
    inc c
    rra
    ld e, $01
    jp $09dc


    rrca
    db $10
    ld a, [hl]
    inc a
    jr nz, jr_032_6fbf

jr_032_6fbf:
    nop
    ld [$e010], sp
    rra
    ccf
    nop
    inc bc
    inc c
    nop
    cp b
    db $10
    ret nz

    ld c, l
    add hl, bc
    ld d, c
    jr nc, @+$01

    nop
    nop
    rra
    nop
    ld b, b
    ccf
    ld [$0007], sp
    nop
    nop
    sbc a
    nop
    adc [hl]
    nop
    ret nz

    ld bc, $0ed0
    nop
    add b
    ld bc, $fd00
    nop
    ei
    nop
    rlca
    inc c
    nop
    rla
    nop
    ld l, a
    inc d
    ld [$087d], sp
    ld b, e
    inc a
    jr c, @-$5e

    sbc a
    adc c
    ld a, [de]
    ld bc, $9b08
    ld de, $0f0f
    inc de
    inc e
    db $e3
    dec b
    ld sp, hl
    ld b, c
    ld de, $237f
    pop de
    ld [$e1c7], sp
    nop
    pop hl
    ld a, [c]
    db $f4
    ld hl, sp-$0d
    ld a, d

jr_032_7017:
    ld a, c
    ld a, h
    db $10
    ld a, c
    ld a, h
    ld a, l
    sbc h
    jr nz, jr_032_709f

    ld a, a
    cp a
    ccf
    ld [bc], a
    ld e, a
    sbc a
    cpl
    rst $08
    rrca

jr_032_7029:
    rst $28
    ld a, [hli]
    ld c, c
    ld a, a
    add b
    nop
    db $10
    add b
    sbc a
    rst AddAToHL
    ret z

    jp $ebcc


    nop
    db $e4
    pop hl
    and $f5
    ld a, [c]
    pop af
    ld a, [c]
    ld a, [$f91a]
    ld h, b
    sbc [hl]
    ld a, l
    inc sp
    adc $11
    ret nz

    push af
    ld de, $313f
    add b
    ccf
    inc bc
    ld [de], a
    ld l, l
    ld [$c09f], sp
    sbc a
    di
    db $10
    jr nc, @+$05

    db $fc
    ld bc, $e540
    jr nz, jr_032_70a0

    nop
    ld hl, $811e
    scf
    jr nz, jr_032_7017

    jr nc, jr_032_7029

    rlca
    db $ec
    inc bc
    db $db
    ld [de], a
    nop
    ld c, a
    add b
    rrca
    ldh [rIF], a
    ldh [$ef], a
    nop
    ldh a, [rSB]
    db $10
    rst $38
    ld [de], a
    ret nz

    ld a, [bc]
    call z, $df08
    rra
    rst JumpTable
    rrca
    ld b, $ef
    rrca
    rst $20
    rlca
    di
    ld hl, sp+$0a
    or b
    db $10
    ret nz

    ld b, b
    add b
    inc sp
    add hl, bc
    pop af
    db $e4
    db $e3
    add sp, -$19
    ret nz

    nop
    rst $08
    db $10
    rrca
    add b
    rra

jr_032_709f:
    nop

jr_032_70a0:
    ccf
    and b
    ld [$001f], sp
    rst JumpTable
    jr nz, jr_032_70e6

    inc de
    ldh a, [$03]
    db $fc
    ret nz

    ld e, a
    ld de, $147c
    ldh a, [$f3]
    add b
    adc a
    inc h
    inc bc
    inc e
    cp b
    jr c, @-$60

    add e
    ld [de], a
    ld h, b
    ld d, d
    ei
    ld c, c
    ld a, a
    ld a, a
    nop
    ccf
    ccf
    sbc a
    sbc a
    ld a, l
    ld a, h
    ld a, l
    ld a, b
    nop
    ld a, c
    ld a, b
    ld a, c
    ld [hl], b
    or l
    jr nz, jr_032_7121

    add b
    nop
    add hl, de
    ret nz

    dec hl
    ret nz

    rla
    rst $20
    rlca
    rst $30
    nop
    add a
    ld [hl], a
    add a
    ld [hl], e
    adc e
    ld [hl], e
    add e

jr_032_70e6:
    ld a, e
    inc c
    jp $c33b


    dec sp
    db $f4
    jr jr_032_7119

    db $10
    ccf
    cp a
    add b

jr_032_70f3:
    ld bc, $3f08

jr_032_70f6:
    cp a
    ld hl, sp-$07
    db $fd
    db $fc
    db $fc
    ldh [$d1], a
    inc de
    nop
    jr z, jr_032_70f3

    ld [$e0bf], sp
    rra
    jr nz, @+$61

    nop
    jr nc, @+$51

    ld [hl], b
    rrca
    add hl, de
    ld h, $9f
    and b
    ld [hli], a
    ret nz

    rst JumpTable
    ld sp, hl
    dec bc
    rst $08
    ldh [$cf], a

jr_032_7119:
    dec a
    ld a, [bc]
    rst $20
    inc c
    ldh a, [$e7]
    db $f4
    di

jr_032_7121:
    rst $30
    jr nc, @+$01

    ld sp, $1f20
    jr jr_032_716b

    add c
    inc b
    jp c, $0121

    ld [$fc02], sp
    rrca
    nop
    ldh [$0e], a
    pop hl
    ld b, [hl]
    ld sp, $0196
    ld h, $01
    pop bc
    ld a, [bc]
    pop af
    ld [bc], a
    db $fc
    ld [$0f06], sp
    inc sp
    pop bc
    ei
    db $10
    dec bc
    jr nz, jr_032_71ca

    nop
    cp a
    nop
    rst $08
    dec de
    inc c
    ld c, a
    db $fc
    add hl, bc
    jr jr_032_70f6

    rra
    ld e, e
    ld b, e
    ld bc, $5310
    db $10
    ld h, e
    ld b, d
    nop
    inc bc
    db $fc
    sbc $1c
    ret z

    ld de, $03c4
    nop
    add sp, $00

jr_032_716b:
    ld [$e903], a
    inc bc
    dec l
    ld bc, $ec20
    ld bc, $399b
    rrca
    ldh [$f7], a
    ret nz

    rst $28
    ret nz

    inc de

jr_032_717d:
    ld a, [bc]
    xor h
    ld e, l
    ret nz

    ccf
    inc bc
    ldh [$03], a
    ldh [$08], a
    rla
    ldh [rTAC], a
    ldh a, [rSB]
    jr nz, jr_032_7199

    ldh a, [$cb]
    nop
    inc sp
    rst $00
    scf
    rst $00
    scf
    sub a
    ld h, a
    adc a

jr_032_7199:
    ld bc, $af6f
    ld c, a
    sbc a
    ld e, a
    rst JumpTable
    rra
    or $18
    nop
    sbc a
    rra
    sbc a
    ld e, a
    sbc a
    rra
    rst JumpTable
    rra
    jr nz, jr_032_717d

    cpl
    rra
    dec e
    db $dd
    rst $38
    db $fd
    rst $38
    rst $28
    and b
    ld bc, $fe08
    rlca
    ld [$9887], sp
    jp nz, $f9c1

    ld b, e
    ld hl, sp+$1f
    ld b, e
    ldh a, [$f3]
    ld a, [$23f9]

jr_032_71ca:
    add hl, sp
    dec h
    add hl, bc
    ld [$fe01], sp
    db $10
    rst $28
    ld bc, $0810
    rst $30
    adc b
    ld b, $77
    ld c, h
    inc sp
    inc b
    dec sp
    rst $08
    db $10
    ld bc, $bf10
    add b
    ld h, $0a
    ld e, a
    add b
    rra
    ret nz

    rst $38
    ld a, a
    ccf
    rlca
    rra
    rrca
    rst $00
    inc bc
    di
    ld a, [c]
    inc sp
    nop
    ld d, b
    db $76
    add hl, bc
    ld [bc], a
    cp a
    adc $00
    pop af
    nop
    ld sp, hl
    dec c
    add hl, bc
    ld a, [c]
    ld bc, $f401
    inc bc
    ldh [rTAC], a
    add sp, $07
    ld h, l
    ld [de], a
    add b
    pop bc
    ld d, b
    inc h
    ret c

    ld c, b
    or b
    inc bc
    ldh a, [rP1]
    nop
    ldh [$0e], a
    ldh [rIF], a
    ret nz

    rra
    add b
    cp a
    ld a, [hli]
    nop
    ld l, [hl]
    dec hl
    add hl, bc
    rst JumpTable
    and $08
    ccf
    inc bc
    ld [$00cf], sp
    nop
    db $e3
    inc b
    ld b, d
    inc a
    db $10
    ldh [$8e], a
    nop
    nop
    and c
    nop
    sub b
    rrca
    db $10
    db $e3
    adc b
    ld e, $6c
    xor l
    ld c, [hl]
    dec a
    db $10
    dec a
    add hl, bc
    rrca
    ld a, [hl-]
    ld b, e
    ld d, $02
    add l
    ld d, e
    dec c
    dec b
    ld sp, hl
    ld bc, $01fd
    ld [$e3fc], sp
    add hl, bc
    add b
    ld hl, $0f5c
    rst $20

jr_032_725b:
    inc de
    pop af
    inc e
    ld hl, sp+$0f
    inc h
    rst $38
    rlca
    dec l
    ld [$1ee1], sp
    and b
    db $10
    adc a
    sbc a
    nop
    cpl
    ld l, a
    rst $08
    rst $28
    xor a

jr_032_7271:
    rst $08
    ld c, a
    sbc a

jr_032_7274:
    nop
    sbc $1e
    cp b
    jr c, jr_032_725b

    pop hl
    adc $ce
    nop
    or a
    or a
    cp b
    cp b
    add a
    add a
    ld h, a
    ld h, a
    ld [$7777], sp
    ld a, e
    ld a, e
    or l
    db $10
    rlca
    rlca
    ld [hl], e
    nop
    ld a, e
    ld a, e
    ld [hl], e
    cp c
    or l
    cp h
    or b
    call c, $d200
    add [hl]
    sbc c
    pop bc
    call z, $e4e2
    pop af
    ld h, d
    ld a, [c]
    inc hl
    ld de, $1235
    cpl
    ret nz

    rrca
    ld l, a
    add hl, bc
    dec bc
    nop
    ld [hl], b
    add e
    jr c, jr_032_7274

    inc e
    ld h, b
    ld c, $90
    db $ec
    ld d, [hl]
    db $10
    sbc [hl]
    ld d, d
    dec c
    ld e, b
    cp $03
    ld a, [bc]
    sub $08
    rrca
    ret nc

    ld a, [$0ae7]
    push hl
    ld a, [bc]
    rr d
    sub l
    ld d, $bd
    dec bc
    db $fc
    ld bc, $f00f
    ld l, [hl]

jr_032_72d5:
    rlca
    inc e
    ld [$72e0], sp
    pop af
    inc e
    rrca
    call c, $0f0b
    jr c, jr_032_7271

    nop
    ld e, a
    jp c, Jump_032_421c

    add c
    inc a
    ld b, c
    ld e, d
    ld bc, $1722
    daa
    rrca
    cpl
    ld b, b
    jr nz, jr_032_7339

    jr nz, jr_032_72d5

    ld l, h
    jr nz, jr_032_7327

    add hl, bc
    ccf
    add hl, bc
    inc d
    sub c
    ld d, a
    ld a, h
    ld b, c
    rst $28
    inc hl
    nop
    rst $38
    nop
    ld a, h
    nop
    ld hl, $0f03
    sbc a
    nop
    cp a
    ccf
    ccf
    ld a, a

Call_032_7311:
    ld a, a
    ld a, a
    rst $38
    rst $38
    inc b
    ld [hl], a
    ld [hl], a
    rst $30
    rst $30
    rst $28
    nop
    ld [$e5e5], sp
    nop
    pop af
    pop af
    ei
    ei
    rst $30
    rst $30
    cp l

jr_032_7327:
    cp l
    db $10
    cp a
    cp a
    rst $38
    nop

jr_032_732d:
    jr jr_032_732d

    cp $fc
    db $fc
    ld [bc], a
    ld hl, sp-$08
    xor $e0
    cp $f0

jr_032_7339:
    ld bc, $7e10
    nop
    ld [hl], b
    ld a, $30
    ld a, $30
    inc e
    ld [de], a
    rst $38
    nop
    rst $38
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld hl, sp-$06
    ld a, [$f800]
    ld a, [$fbf9]
    ld hl, sp-$07
    ld a, [$01ce]
    add c
    di
    ldh [$fc], a
    ld hl, sp-$01
    cp $33
    jr nz, jr_032_7362

jr_032_7362:
    rst $38
    rst $38
    ccf
    add b
    rrca
    ret nz

    db $d3
    jr nz, jr_032_736b

jr_032_736b:
    inc [hl]
    ld [$80c2], sp
    ld hl, sp-$10
    cp $fe
    nop
    db $fd
    db $fc
    ldh a, [$03]
    ldh [rTAC], a
    ret nc

    rrca
    nop
    jr nz, jr_032_739e

    ld b, b
    ccf
    add b
    ld a, a
    nop
    rst $38
    add b
    ld bc, $0120
    cp $00  ; and a / or a
    cp $02
    db $fc
    dec b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [$9f]
    nop
    ccf
    ld b, h
    nop
    jr @+$32

    nop
    nop

jr_032_739e:
    ld bc, $3022
    nop
    cp $00  ; and a / or a
    nop
    ret nz

    nop
    rlca
    inc bc
    rst $38
    ld a, a
    cp $00  ; and a / or a

jr_032_73ad:
    nop
    db $fc
    nop
    ldh a, [rP1]
    call nz, $1800
    nop
    add hl, bc
    ld [hl], b
    inc sp
    ldh [$e7], a
    ret nz

    rst $08
    nop
    nop
    ld a, a
    add b
    ld a, c
    ld b, $f4
    ld c, $ee
    ld e, $01
    rst JumpTable
    ld b, e
    add a
    jr jr_032_73ad

    nop
    rst $30
    jr nc, jr_032_7409

    db $10
    ld a, a
    nop
    cp a
    ld c, d

jr_032_73d6:
    ld [$9fff], sp
    adc a
    xor a
    nop
    adc a
    xor a
    add a
    sub a
    add a
    rst $00
    sub a
    rst $00
    ld b, $d3
    set 2, e
    db $d3
    set 4, h
    ld [$5800], sp
    rst $38
    ld b, b
    rst $38
    dec b
    db $10
    ccf
    cp a
    inc a
    cp h
    ld a, [de]
    reti


    nop

jr_032_73fa:
    inc b
    db $e3
    nop
    rst $08
    add a
    add a
    add a
    or a
    nop
    add a
    and a
    ld c, a
    cpl
    add a
    ld h, a

jr_032_7409:
    rlca
    di
    nop
    inc bc
    ld sp, hl
    ld [$f3f4], sp
    di
    pop hl
    pop hl
    jr nz, jr_032_73d6

    ret nz

    rst $38
    jr nz, jr_032_73fa

    ldh [$c7], a
    rlca
    sub h
    nop
    sbc b
    ld bc, $010d
    add hl, bc
    di
    di
    rst $00
    inc e
    rst $00
    rra
    rra
    db $e3
    jr nc, jr_032_742e

jr_032_742e:
    jr nz, @+$47

    ld [$9f3f], sp
    ld b, b
    rra
    dec h
    ld de, $faf9
    ld a, [c]
    pop af
    ld [c], a
    add sp, $00
    ld [$c9e1], a
    sub $dc
    pop bc
    nop
    add hl, bc
    nop
    ld h, b
    sub e
    nop
    add a
    nop
    rrca
    nop
    rra
    cp b
    ret c

    db $10
    add b
    sub c
    ld [$20ce], sp
    db $ed
    ld [$02f0], sp
    ldh [rP1], a
    dec b
    add b
    rrca
    rst $20
    ld e, a
    adc a
    ccf
    ccf
    ld l, h
    rst $38
    add a
    ld [$1841], sp
    cp a
    ld h, [hl]
    ld [$2000], sp
    db $fc
    db $fd
    ld b, $fc
    ld hl, sp-$0f
    pop hl
    db $e4
    ld e, [hl]
    jr c, jr_032_7490

    jr z, @-$3e

    add hl, bc
    sbc a
    add b
    sbc a
    and b
    ld c, e
    ld [$3e41], sp
    ld c, l
    ld [$2880], sp
    add hl, bc
    ld [$18eb], sp
    db $dd
    inc a

jr_032_7490:
    cp l
    ld a, h
    nop
    ld a, [hl]
    ld b, $0e
    db $10
    ldh [rP1], a
    rst $08
    db $10
    ld h, c
    rst AddAToHL
    rst $38
    jr c, @+$03

    ld [$fb04], sp
    ld [bc], a
    db $fd
    ld h, c
    ld sp, $63f1
    ld de, $1001
    ld sp, hl
    ld c, b
    ld bc, $ff10
    ld b, b
    cp a
    cpl
    ld b, b
    nop
    ld bc, $07fe
    ld hl, sp+$0d
    ld a, [c]
    ld e, $e1
    nop
    rra
    ldh [$3f], a
    ret nz

    ld a, [hl]
    add c
    db $fc
    ld [bc], a
    nop
    ld sp, hl
    dec b
    di
    dec bc
    rlca
    rla
    rlca
    rst $30
    inc c
    adc a
    ld c, a
    ccf
    cp a
    add hl, hl
    ld de, $1000
    rst $00
    daa
    nop
    di
    dec bc
    ld hl, sp+$04
    db $fd
    nop
    db $fc
    ld [bc], a
    ld [bc], a
    ld a, $40
    ld e, $a0
    sbc [hl]
    ld b, c
    or a
    jr nz, jr_032_750d

    nop
    sbc a
    rst $08
    rst $28
    rst $20
    rst $30
    ld [hl], e
    ei
    ld a, e
    nop
    ld a, c
    sbc b
    and [hl]
    cp e
    add h
    or [hl]
    adc c
    add h
    nop
    cp e
    adc h
    sub e
    ret z

    rst AddAToHL
    ret nz

    rst $08
    add c
    nop
    add [hl]
    ret nz

    rra

jr_032_750d:
    ld h, b
    ld b, $30
    ret z

    inc c
    inc b
    ld a, [c]
    ld [hl], e
    adc h
    db $fc
    inc bc
    db $d3
    add hl, de
    ld a, [bc]
    nop
    nop
    rla
    nop
    ld l, $00
    dec e
    nop
    adc d
    ldh [rP1], a
    db $10
    inc e
    and d
    jp Jump_032_5f34


    rra
    cpl
    nop
    rrca
    rla
    add a
    inc bc
    dec de
    dec bc
    inc hl
    add hl, bc
    nop
    ld b, l
    dec c
    ld de, $01fd
    call nz, $90d9
    nop
    and e
    ret nz

    adc a
    add c
    ld a, $04
    ld a, b
    ld bc, $f103
    ld hl, $05c1
    ld bc, $07fc
    add hl, bc
    ld [bc], a
    ld [$01c0], sp
    jr z, @+$0d

    ld [$fbfc], sp
    ld hl, sp-$0a
    ldh a, [$f9]
    ld b, b
    ld hl, sp+$16
    ld sp, $bb18
    inc a
    cp l
    ld a, [hl-]
    ld a, h
    nop
    ld b, b
    ld h, c
    db $10
    rrca
    nop
    pop bc
    ld e, $de
    inc [hl]
    inc de
    db $d3
    db $e3
    ld [$4101], sp
    ccf
    rra
    ld a, [bc]
    ld a, [hl]
    and b
    ld bc, $0e1e
    ret nz

    ld d, $e0
    ld [bc], a
    ld hl, sp+$38
    ld a, [bc]
    ret z

    dec de
    ld [$71b3], sp
    rra
    ldh [$8e], a
    add hl, de
    ld bc, $06f8
    nop
    ld c, c
    ld sp, $0707
    rst $38
    rst $38
    rst $20
    rla
    inc c
    rst $08
    cpl
    sbc a
    ld e, a
    rst $28
    ld b, b
    nop
    ld h, b
    rra
    rra
    ld [bc], a
    ret z

    rla
    ret nz

    cpl
    ldh [rIF], a
    ld bc, $c020

jr_032_75b2:
    ld bc, $c02f
    ld l, $79
    ld a, l
    ld a, l
    ld a, h
    nop
    ld [$7e00], sp
    ld e, $7e
    ld c, $7e
    ld b, $7e
    rlca
    nop
    ld a, $ba
    ld bc, $007d
    ld e, $60
    inc bc
    ld [hl], b
    ld a, h
    ld a, a
    ld a, [bc]
    ld bc, $8618
    jr jr_032_7617

    rrca
    db $10
    inc bc
    nop
    call nz, $c000
    inc c
    xor $07
    rst $30
    ret c

    nop

jr_032_75e4:
    ld h, $9c
    ld h, e
    cp b
    ld b, a
    jr c, jr_032_75b2

    ld [hl], b
    nop
    adc a
    ld [hl], b
    adc a
    nop
    rra
    add b
    ret nz

    add hl, bc
    nop
    dec [hl]
    dec bc
    di
    inc de
    db $eb
    rla
    rst $20
    cpl
    db $10
    rst $08
    ld e, a
    sbc a
    add d
    inc de
    dec c
    ld bc, $21ab
    ld [bc], a
    ld l, e
    ld h, e
    rst $20
    db $e3
    rst $28
    rst $20
    or $29
    db $fc

jr_032_7612:
    jr nz, jr_032_7612

    db $fc
    ld c, l
    inc de

jr_032_7617:
    db $fc
    ld hl, sp-$10
    db $e3
    ret nz

    ld h, b
    adc a
    pop de
    ld [de], a
    push af
    add hl, bc
    ld a, a
    ld b, b
    ccf
    nop
    rlca
    nop
    jr nz, @-$3e

    inc b
    ld hl, sp+$41
    add b
    db $10
    call nc, $1800
    db $db
    ld [$08eb], sp
    db $eb
    nop
    ld [c], a
    nop
    ld bc, $0761
    rlca
    add b
    ld h, b
    ld [hl], b
    ld [hl], e
    nop
    inc e
    sbc l
    inc c
    db $ed
    jr jr_032_75e4

    jr nc, @+$39

    inc bc
    and b
    xor a
    add b
    sbc a
    ld [$0f70], sp
    ld d, d
    ld de, $000a
    ld hl, sp+$3f
    cp a
    rra
    rst JumpTable
    rrca
    rst $28
    rlca
    dec b

jr_032_7660:
    rst $30
    inc bc
    ei
    ld bc, $0ffd
    add hl, bc
    inc a
    db $dd
    ld d, b
    ret nz

    ld [hl], h
    ld [de], a
    add hl, bc
    jr nz, jr_032_7660

    ldh a, [$c3]
    call nz, $201f
    nop
    ld a, a
    add b
    rst $38
    nop
    ld sp, hl
    ld hl, sp-$04
    db $fd
    ld [$0000], sp
    ld a, $41
    ld b, d
    jr nc, @-$2f

    rrca
    pop hl
    ld bc, $3811
    call nz, $100f
    jp $1124


    jr z, @-$7e

    db $e3
    inc de
    ccf
    rrca
    adc a
    db $e3
    inc de
    pop af
    add hl, bc
    inc c
    ld hl, sp+$04
    db $fc
    ld bc, $10f3
    reti


    inc sp
    rlca
    ld hl, sp+$0c
    add hl, bc
    ldh a, [rTAC]
    rst $30
    ld bc, $df10
    ld [$2fc7], sp
    ld h, b
    rst $08
    ld bc, $1910
    jr nz, jr_032_76c1

    add a
    inc [hl]
    inc bc
    ld [bc], a
    ld hl, $7901
    sub d

jr_032_76c1:
    add hl, bc
    rra
    rst JumpTable
    cpl
    rst $08
    adc a
    stop
    dec bc
    di
    inc bc
    ei
    dec b
    ld sp, hl
    add c
    ld a, l
    add b
    add e
    db $10
    ld hl, sp-$05
    db $f4
    di
    ldh a, [$f7]
    add sp, $04
    rst $20
    xor $e1
    rst $28
    ret nz

    sbc d
    add hl, bc
    db $fc
    inc bc
    ld [$07f9], sp
    di
    rrca
    ld hl, $1f09
    rst $08
    rst JumpTable
    nop
    rrca
    inc h
    inc bc
    ld [$ede1], a
    ldh [$ee], a
    ld [bc], a
    ret nz

    rst $28
    ret nz

    rst $08
    ret nz

    rst JumpTable
    ld bc, $0e08
    db $10
    xor $00
    pop af
    inc de
    add hl, de
    ccf
    add b
    rra
    ret z

    nop
    rlca
    ldh a, [$03]
    ld bc, $01e1
    pop bc
    add hl, hl
    nop
    add c
    inc d
    add c
    xor d
    nop
    ld [hl], l
    nop
    ld a, d
    nop
    nop
    ld a, l
    nop
    nop
    ld h, b
    sbc h
    add b
    jp c, $c000

    cp h
    add b
    ld e, d
    jr nz, jr_032_7753

    jr @-$76

    add b
    ld d, c
    inc c
    ld b, c
    ld b, e
    ld c, a
    rst JumpTable
    rst $20
    rst $28
    di
    nop
    rst $30
    ld a, b
    ld sp, hl
    ld a, $7e
    inc c
    ld e, $e0
    nop
    nop
    ld sp, hl
    ld a, [$f0f3]
    di
    db $f4
    rst $20
    nop
    ldh [$e6], a
    jp hl


    db $ec
    db $e3
    ret z

jr_032_7753:
    add $c8
    ld b, a
    push de
    sbc [hl]
    db $10
    rst $28
    db $10
    sbc a
    sbc [hl]
    ld d, h
    or b
    inc hl
    add [hl]
    ld [$f008], sp
    rrca
    ldh [$1f], a
    ld e, d
    inc e
    add b
    ccf
    ret nz

    nop
    ccf
    ret nz

    ld a, $c1
    ld a, $c1
    inc a
    add e
    ld [bc], a
    db $fc
    ld [bc], a
    cp $00  ; and a / or a
    ld a, [hl]
    add b
    ld bc, $0008
    nop
    ld a, [hl]
    ld bc, $403f
    ccf
    ld b, b
    ld b, $e6
    inc b
    ld e, $de
    rra
    sbc a
    rra
    nop
    ld [$1f5f], sp
    nop
    ccf
    rra
    ccf
    ccf
    adc a
    ld l, a
    adc a
    ld l, a
    nop
    rrca
    ld l, a

jr_032_779e:
    rrca
    ld c, a
    ld l, a
    rrca
    rrca
    cpl
    ld [$af8f], sp
    rst JumpTable
    adc a
    ld c, [hl]
    ld e, d
    cp $f8
    ldh a, [$80]
    ld [$f820], sp
    ldh a, [$e0]
    ldh [$80], a
    add b
    ld bc, $1ca2
    dec bc
    rst $28
    push de
    jr jr_032_779e

    ret nz

    ld e, a
    ld [c], a
    add hl, bc
    ccf
    inc e
    nop
    cp d
    dec b
    ld a, [de]
    add hl, bc
    xor h
    ld de, $1801
    ld d, e
    xor e
    nop
    adc e
    ld [hl], e
    rst $08
    ret nc

    rst $00
    ret c

    pop bc
    sbc $d4
    inc h
    jr z, @+$03

    ld [$43f9], sp
    add hl, bc
    rst $38
    add c
    ld [$f901], sp
    jr nz, @+$05

    rst $30
    ld bc, $e00c
    ld a, [hl-]
    nop

jr_032_77ee:
    dec e
    ld b, b
    nop
    ld c, $60
    adc a
    ldh [$99], a
    add $28
    db $10
    add c
    xor $08
    nop
    adc a
    nop
    ld c, a
    nop
    sbc a
    ld a, h
    inc e
    ld e, b
    ccf
    dec b
    ld [$120f], sp
    stop
    ld e, b
    pop de
    ret z

    pop bc
    nop
    jp c, $d0c3

    jp $c7d4


    ret nz

    rst $00
    inc b
    ret nz

    rst AddAToHL
    ret nc

    rst $30

jr_032_781e:
    ldh a, [$eb]
    jr nc, jr_032_781e

    inc bc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [$0e]
    ld b, $19
    ld [hl], h
    dec c
    nop
    ld bc, $0ae0
    adc c
    db $10
    rla
    ld h, b
    ld h, b
    nop
    inc a
    add d
    jr c, @+$48

    ld [hl], b
    inc c
    ret nz

    jr c, jr_032_7863

    nop
    pop af
    pop de
    ld a, [bc]
    nop
    ld b, a
    ld b, a
    ld d, a
    db $10
    ccf
    add b
    sub $0c
    rra
    and b
    sbc a
    ld b, b
    ld e, a
    nop
    rrca
    ld b, b
    db $10
    inc sp
    add e
    db $fc
    ld hl, sp-$0e
    pop af
    add sp, -$19
    nop
    ret nc

    rst $08
    ret nz

jr_032_7863:
    sbc a
    and b
    sbc a
    add b
    ccf
    jr nc, jr_032_77ee

    inc bc
    ret c

    ld [$4958], sp

jr_032_786f:
    dec d
    nop
    ld a, [hli]
    nop
    ld h, b
    ld d, a
    inc [hl]
    ld a, [bc]
    ld b, e
    ld [$1080], sp
    rst $08
    ld bc, $21e0
    inc d
    dec hl
    ld [$3f08], sp

Call_032_7884:
    and b
    rra
    ret nz

    ld bc, $0008
    ldh [rIF], a
    ld d, $e0
    rlca
    di
    rlca
    di
    ld hl, $e717
    db $fd
    ld hl, $9f3f
    ld [hl], c

jr_032_789a:
    ld sp, $10f3
    jr nz, jr_032_786f

    rst $08
    ld bc, $e020
    rst $08
    ldh [$ef], a
    ld a, [bc]
    nop
    ldh [rTIMA], a
    ldh [rNR12], a
    ldh [rTIMA], a
    ldh a, [$0b]
    nop
    ldh a, [rDIV]
    ld hl, sp+$02
    db $fc
    ld bc, $00f0
    nop
    nop
    ld b, d
    ld bc, $0384
    ld e, c
    ld [bc], a

jr_032_78c1:
    sbc e
    nop
    nop
    add b
    nop
    jr nz, jr_032_78e6

    add h

jr_032_78c9:
    ld [bc], a
    rlca
    nop
    nop
    ld de, $84a0
    jr c, jr_032_789a

    db $10
    add e
    inc bc
    nop
    scf
    ld [hl], b
    rst $20
    ldh a, [$ef]
    db $ed
    dec de
    inc e
    ld d, $14
    rra
    nop
    rst $08
    inc l
    ld e, $f3

jr_032_78e6:
    ld l, d
    ld a, [bc]
    ld sp, hl
    ld a, [$e588]
    ld [de], a
    db $fc
    db $fc
    cp $67
    dec bc
    ldh a, [$0c]
    ldh a, [rNR10]
    inc c
    ldh [rNR23], a
    ld bc, $6010
    sbc b
    ld [hl-], a
    ld c, d
    add hl, bc
    ld [de], a
    ld a, [hli]
    sub a
    sub a
    cp b
    add hl, bc
    cpl
    ld b, a
    nop
    jr jr_032_790b

jr_032_790b:
    ld d, a
    ld d, a
    daa
    daa
    adc a
    adc a
    jp $00c3


    pop hl
    pop hl
    pop bc
    pop bc
    jp hl


    jp hl


    db $ed
    db $ed
    nop
    pop af
    pop af
    rst $38
    rst $38
    add a
    adc b
    rst AddAToHL
    ret nc

    nop
    db $d3
    call nc, $dad9
    sbc l
    sbc h
    cp l
    cp h
    ld [hl], b
    db $fd
    ld sp, hl
    dec c
    xor c
    dec h
    jp $f112


    or $e2
    db $ec
    jr c, jr_032_78c1

    sbc c
    db $ed
    ld [$1a48], sp
    ld [hli], a
    add hl, bc
    ccf
    add b
    cp a
    jr nz, jr_032_78c9

    cp [hl]
    dec bc
    db $10
    db $10
    ldh [$2f], a
    rst $00
    ld l, a
    nop
    adc a
    rst JumpTable
    rrca
    rst JumpTable
    rra
    rst JumpTable
    ld e, $16
    nop
    db $e4
    rlca
    di
    adc e

jr_032_795e:
    ld [hl], e
    ld b, e
    dec sp
    add e
    nop
    cp e
    add a
    or e
    ld b, a
    scf
    rrca
    ld l, a
    ld b, $40
    ld [bc], a
    dec sp
    ld [$f0fa], sp
    or $f1
    db $f4
    pop af
    nop
    db $e4
    pop hl
    db $ec
    pop hl
    db $ec
    ld [bc], a
    nop
    ld c, c
    ld bc, $8430
    ld a, b
    add d
    ld a, h
    add a
    ld a, b
    cp c
    jr nz, jr_032_7989

jr_032_7989:
    ld h, b
    ld l, a
    ld l, h
    ld h, b
    nop
    inc bc
    ld a, b
    ld a, d
    ld [de], a
    ld a, c
    ld a, b
    inc bc
    ld bc, $c418
    inc bc
    ld sp, hl
    inc c
    cp a
    ld [$3f40], sp
    ldh a, [rIF]
    rra
    jr nz, jr_032_79dc

    ret nz

    ld c, $01
    ldh a, [rTMA]
    ld hl, sp+$0e
    ldh a, [$3e]
    ret nz

    rrca
    jr nz, jr_032_79c1

    rst $28
    ldh [$ef], a
    xor h
    inc e
    sub a
    ld h, b
    rlca
    ld [hl], b
    ld c, $4b
    jr nc, jr_032_795e

    jr jr_032_79ce

    ld e, h

jr_032_79c1:
    ld bc, $1008
    rst $38
    rst $38
    ld a, a
    nop
    ld [$3fbf], sp
    ccf
    cp a
    nop

jr_032_79ce:
    ld e, a
    sbc a
    ld hl, $21c1
    db $dd
    add c
    sbc l
    inc b
    pop bc
    push bc
    pop af
    pop af
    rst $38

jr_032_79dc:
    nop

jr_032_79dd:
    jr z, jr_032_79dd

    cp $00  ; and a / or a
    nop
    daa
    nop
    ld l, a

jr_032_79e5:
    nop
    ld [hl], a
    nop
    ccf
    nop
    add b
    cp a
    add b
    cp h
    nop
    jr jr_032_79f1

jr_032_79f1:
    ld c, h
    ld [hli], a
    nop
    rst $38
    ld bc, $fe28
    nop
    ld [bc], a
    ld bc, $0310
    nop
    ld hl, sp+$03
    ld hl, sp+$07
    db $f4
    rlca
    ldh a, [rIF]
    nop

jr_032_7a07:
    jr z, jr_032_7a18

    add b
    rra
    ret nc

    ccf
    and b
    add b
    nop
    dec a
    add b
    dec sp
    add b
    daa
    add b
    rlca
    sub b

jr_032_7a18:
    dec b
    rla
    and b
    cpl
    add b
    sbc a
    dec [hl]
    ld [$017f], sp
    db $10
    jr nz, jr_032_79e5

    ccf
    ld bc, $e010
    rra
    ldh [$1f], a
    ldh a, [rP1]
    ei
    ld [c], a
    rst $30
    rst $20
    rst $28
    db $e3
    rst $28
    ldh [rSB], a
    rst $28
    ldh [$e7], a
    db $f4
    di
    ei
    ld hl, sp+$4b
    db $10
    inc de
    ldh [rIE], a
    db $fc
    ld d, l
    jr z, jr_032_7a07

    ccf
    ld e, a
    jr c, @+$03

    ld [$0200], sp
    db $fc
    ld b, c
    add b
    ld bc, $04f8
    ld hl, sp+$11
    ld c, $f0
    rrca
    ld bc, $1f08
    ldh [$7e], a
    ld [hl], h
    ld [$4180], sp
    ld [$780f], sp
    rlca
    ld a, d
    dec b
    ld a, $01
    nop
    ld e, $01
    ld c, [hl]
    ld d, c
    add $c9
    daa
    ret nz

    nop
    rst $08
    nop
    ld b, a
    add b
    ld b, b
    add b
    ld l, [hl]
    add b
    jr z, @-$2f

    jr nz, jr_032_7a81

    db $10

jr_032_7a81:
    db $fc
    inc hl
    ld [$00fe], sp
    ld a, [hl]
    add hl, bc
    nop
    ld b, $00
    ldh [rTAC], a
    ld [$00ff], sp
    ld c, e
    jr nc, jr_032_7a93

jr_032_7a93:
    add b
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    nop
    cp a
    nop
    ld b, $ff
    ld b, $ff
    dec b
    cp $0c
    cp $00  ; and a / or a
    ld [$11fc], sp
    ld sp, hl
    inc bc
    di
    daa
    rst $20
    nop
    ld hl, $40dd
    cp h
    ld b, a
    cp b
    add [hl]
    ld a, c
    nop
    ld [$60f7], sp
    sbc a
    add b
    ld a, a
    ld hl, sp+$07
    nop
    db $fc
    db $fc
    ld a, b
    ld a, c
    ld bc, $0302
    ldh a, [rLCDC]
    rlca
    ld bc, $0318
    ldh a, [$c0]
    rst $00
    add b
    sbc c
    nop
    nop
    ld a, $80
    sbc a
    ret nz

    ld c, a
    ret nz

    inc bc
    ld [$59c0], sp
    add b

jr_032_7adf:
    inc a
    ld e, [hl]
    jr jr_032_7adf

    inc bc
    nop
    nop
    rst $30
    nop
    ld [hl], $c0
    ld b, $e0
    ld c, $e0
    nop
    ccf
    add b
    ccf
    ld bc, $417f
    ld a, a
    inc bc
    nop
    ld a, [hl]
    ld [bc], a
    cp $86
    db $fc
    dec c
    db $fc
    dec e
    nop
    ccf
    nop
    ld e, a
    nop
    ld b, b
    nop
    ld e, $3f
    jr @+$81

    rst $38
    ld a, a
    ld b, c
    add hl, de
    xor a
    db $10
    ldh a, [rIF]
    jr c, jr_032_7b15

jr_032_7b15:
    rlca
    adc h
    jp $f0e7


    ei
    ld hl, sp-$03
    nop
    db $fc
    db $fc
    db $fc
    cp $fe
    db $fc
    cp $fc
    nop
    db $fc
    ld hl, sp-$03
    ld a, [$f0f9]
    ei
    db $f4
    ld hl, $00f3
    nop
    ld [$c0c0], sp
    ld a, a
    ld b, b
    ld b, $08

jr_032_7b3a:
    add b
    xor c
    jr nz, jr_032_7b3e

jr_032_7b3e:
    rst $00
    rst $00
    rst JumpTable
    rra

jr_032_7b42:
    ret nz

    ld b, b
    jr nz, jr_032_7b46

jr_032_7b46:
    rra
    rrca
    jr nz, @+$3e

    nop
    ld bc, $c701
    nop
    rlca
    rlca
    rlca
    di
    inc bc
    ld a, c
    add c
    ld a, c
    nop
    add l
    ld hl, sp+$04
    db $e3
    db $e4
    di
    db $f4
    pop af
    add hl, de
    ld a, [c]
    ld hl, sp-$07
    ld b, a
    db $10
    and c
    add hl, de
    rst $38
    rst $28
    ld bc, $0108
    ld a, a
    rst $38
    cp l
    rst $38

jr_032_7b71:
    cp c
    rst $38
    ei
    ld bc, $4008
    db $fd
    dec b
    jr jr_032_7b3a

    rst $38
    sub a
    rst $38
    call $60ff
    rst JumpTable
    add e

jr_032_7b83:
    jr z, jr_032_7b85

jr_032_7b85:
    jr nz, jr_032_7b83

    db $fc
    ld sp, hl
    ld hl, sp-$06
    ld b, c
    ld sp, hl
    add hl, bc
    jr nz, jr_032_7b71

    ldh [$0c], a
    inc bc
    ld h, b
    ld h, c
    jr @-$7d

    ld h, h
    db $10
    ccf
    ret nz

    ld hl, $801e
    add b
    dec h
    jr nz, jr_032_7b42

    adc $09
    ld bc, $1143
    ld c, [hl]
    jr nc, jr_032_7bb0

    nop
    pop af
    nop
    ldh a, [$fc]
    db $fc

jr_032_7bb0:
    add b
    ld a, $c0
    rst JumpTable
    ret nz

    ld h, b
    rst JumpTable
    adc l
    jr jr_032_7c10

    ld de, $0c3e
    ld h, b
    ld c, h
    jr nz, jr_032_7bc2

    adc b

jr_032_7bc2:
    ld [hli], a
    ld [$0082], sp
    nop
    ld a, [hl]
    xor e
    ld [$0200], sp
    ld h, h
    ld hl, sp+$3b
    ldh a, [rPCM34]
    ldh [$6f], a
    ld bc, $efe0
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    nop
    cp l
    add hl, bc
    inc b
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    ld bc, $0208
    rst $38
    inc b
    inc b
    cp $04
    db $fc
    add hl, bc
    and [hl]
    ld [$e1f2], sp
    inc d
    add c
    ret nz

    jr jr_032_7c2e

    add hl, bc
    ld a, h
    ld a, [hl-]
    add hl, de
    ldh [$e0], a
    ld [hl], b
    add c
    dec bc
    ld [$098d], sp
    push hl
    ld sp, $003f
    pop bc
    nop
    inc b
    ld a, [hl]
    add b
    ccf
    ld b, b
    sbc a
    cp h
    add hl, bc

jr_032_7c10:
    rst $00
    stop
    rst $20
    ld bc, $01fe
    cp $41
    ld a, $30
    ld b, d

jr_032_7c1c:
    rst $08
    rra
    jr nc, jr_032_7c1c

    ld [bc], a
    db $fc
    ld [bc], a
    ld a, d
    ld [$0001], sp
    ld a, $c1
    ld e, $e1
    rrca
    ldh a, [rTAC]

jr_032_7c2e:
    ld hl, sp-$10
    and d
    ld [$12b0], sp
    nop
    db $10
    or e
    ld a, [bc]
    rra
    sbc a
    db $fd
    rst $38
    db $10
    sbc $ff
    sbc a
    rst $28
    ld [$ff77], sp
    xor a
    rst $38
    ld [hl], b
    adc a
    pop af
    ld [$081e], sp
    dec bc
    ld [$ff6f], sp
    ld c, e
    rst $38
    db $10
    db $dd
    rst $38
    call c, $0a57
    ldh a, [$f3]
    db $f4
    di
    ld hl, $f7f0
    ld bc, $f420
    di
    ld hl, sp-$05
    ld d, l
    jr nz, @+$04

    ld bc, $02fc
    ld sp, hl
    inc c
    di
    ld [hl], c
    ld a, [de]
    jr z, jr_032_7c72

jr_032_7c72:
    add a
    ld h, a
    adc e
    ld c, e
    sub e
    inc de
    xor l
    dec l
    nop
    sbc l
    dec e
    cp d
    ld a, [hl-]
    or [hl]
    ld [hl], $c2
    rst JumpTable
    nop
    jp $83df


    cp a
    add c
    cp a
    ld bc, $437f
    ld bc, $1ab9
    sub b
    adc a
    ret z

    rst $00
    xor c
    ld [de], a
    ld [hl], e
    add hl, bc
    nop

jr_032_7c99:
    ld a, [$faf9]
    ld hl, sp-$05
    sub l
    jr nc, jr_032_7ceb

    dec b
    sbc c
    inc h
    xor l
    ld h, d
    ld b, [hl]
    rst $38
    jr nz, jr_032_7c99

    ld e, a
    ld e, d
    add b
    push de
    db $10
    adc c
    ld a, b
    add e
    ld a, b
    ld c, e
    or b
    ld b, e
    ld e, $b0

jr_032_7cb8:
    ld b, a
    or b
    ccf
    ld [hli], a
    db $f4
    jr jr_032_7cde

    jr jr_032_7cc6

    inc de
    ldh [$80], a
    push de
    add hl, hl

jr_032_7cc6:
    nop
    rst $38
    inc b
    ei
    rlca
    ld hl, sp+$0f
    nop
    ldh a, [rNR24]
    ldh [rNR10], a
    db $e3
    jr jr_032_7cb8

    ld [$f308], sp
    ld [$0cf1], sp
    ld bc, $fc08

jr_032_7cde:
    ld bc, $30fc
    ld bc, $da3f
    jr @-$49

    ld b, c
    inc bc
    db $fc
    inc bc
    db $fc

jr_032_7ceb:
    ret nz

    inc de
    ld de, $3037
    rrca
    adc a
    ld d, e
    add c
    sbc b
    ld e, h
    nop
    xor [hl]
    ld e, a
    adc a
    ld a, a
    rst $08
    ccf
    ld b, a
    cp a
    dec [hl]
    ld b, a
    cp a
    dec h
    jr nz, jr_032_7d11

    add hl, bc
    cp a
    ld bc, $bf10
    ld [hl], a
    ld a, [bc]
    inc b
    ld l, a
    rst $38
    or $ff

jr_032_7d11:
    push af
    dec c
    ld a, [bc]
    ld [hl], l
    rst $38
    inc bc
    dec [hl]
    rst $38
    cp e
    rst $38
    ld a, [$fef9]
    db $10
    inc bc
    ld de, $e01c
    rst $20
    add sp, $01
    ld [$28ab], sp
    ld c, l
    jr z, @+$03

    cp $00  ; and a / or a
    ld c, b
    jr nc, jr_032_7d55

    jr jr_032_7d4f

    nop
    ld c, $04
    nop
    rlca
    ld [bc], a
    inc b
    inc bc
    inc bc
    ld bc, $0103

jr_032_7d3f:
    jr nz, jr_032_7d41

jr_032_7d41:
    ld bc, $0802
    nop
    ld a, [bc]
    ld bc, $091e
    ld [bc], a
    ld de, $090e
    ld b, $06

jr_032_7d4f:
    nop
    rrca
    ld [$0007], sp
    inc bc

jr_032_7d55:
    rlca
    dec b
    ld b, $03
    ld bc, $0107
    nop
    add a
    ld [bc], a
    ret z

    rlca
    ld a, b
    add a
    or $a9
    nop
    db $db
    or h
    cp e
    ld d, h
    xor $53
    rst $30
    ld c, h
    nop
    ld [hl], h
    jr c, @+$3a

    nop
    nop
    nop
    ld h, b
    cp b
    nop
    or h
    ret c

    ld a, [$ae44]
    ret c

    ei
    inc d
    nop
    cp e
    ld b, h
    ld c, e
    or h
    rst $00
    jr c, @+$01

    stop
    sbc e
    jr nc, jr_032_7d3f

    ld h, b
    ldh [$c0], a
    and b
    ret nz

    ld h, b
    ret nz

    dec e
    ld [$9000], sp
    add hl, de
    nop
    ld a, $09
    ld [hl-], a
    ld [bc], a
    dec c
    add hl, sp
    ld b, $1b
    inc b
    ld c, $5f
    ld [$8000], sp
    ld [hl], a
    ld [$1807], sp
    ccf
    ld d, d
    ld e, b
    rst $20
    jp hl


    nop
    or $77
    xor b
    db $d3
    inc l
    or [hl]
    ld [$0a1a], sp
    inc b
    ld b, $03
    ld b, $15
    ld [$2b01], sp
    ld [$0098], sp
    ret z

    ret c

    db $ec
    db $ec
    ld [hl], $ea
    call nc, $00fe
    adc h
    sub $2c
    ld [hl], h
    adc b
    sbc h
    ld l, b
    or h
    nop
    ld a, b
    ret c

    jr nc, jr_032_7e54

    nop
    ld l, b
    db $10
    jr nc, jr_032_7e01

    ldh [$e0], a
    ld e, a
    ld e, b
    ld a, b
    nop
    add h
    ld a, b
    ld a, h
    ld b, $00
    jr jr_032_7dfa

    inc c
    ld b, $39
    jr nc, jr_032_7df3

jr_032_7df3:
    ret z

    add b
    nop
    add b
    ret nz

    ret nz

    ld h, b

jr_032_7dfa:
    ld h, b
    jr nc, jr_032_7e2d

    jr @+$22

    jr @+$0e

jr_032_7e01:
    dec h
    ret z

    dec a
    dec a
    ld a, [hl]
    ld e, c
    and $80
    ld a, [bc]
    jr nz, jr_032_7e12

    ld b, $06
    rrca
    nop
    rrca
    inc d

jr_032_7e12:
    nop
    dec de
    rra
    jr c, jr_032_7e46

    ld d, b
    dec e
    ld h, e
    ld [$7700], sp
    add hl, de
    ld h, $0b

jr_032_7e20:
    inc b
    rlca

jr_032_7e22:
    ld c, $0f
    nop
    ld e, $0b
    inc e
    add hl, hl
    ld e, $3d
    ld [de], a
    ld l, c

jr_032_7e2d:
    nop
    ld [hl], $62
    dec a
    ld a, l
    ld [hl], d
    ld a, l
    ld h, $fa
    nop
    dec c
    ld l, a
    ldh a, [$96]
    rst $28
    xor h
    ld e, a
    add sp, $00
    sbc a
    ld d, b
    rst $28
    ld sp, $a6ee

jr_032_7e46:
    ld a, c
    ld e, h
    nop
    inc hl
    jr c, jr_032_7e53

    ldh [$30], a
    ret nc

    cp b
    ld a, b

jr_032_7e51:
    nop
    ret nc

jr_032_7e53:
    ld a, h

jr_032_7e54:
    ret c

    inc [hl]
    ret c

    ld l, b
    or b
    ldh a, [rP1]
    jr nz, jr_032_7ead

    and b
    jr nc, jr_032_7e20

    jr nz, jr_032_7e22

    ld d, b
    nop
    and b
    ld d, b
    and b
    ld [$0ef0], sp
    ldh a, [$09]
    ld bc, $23f6
    sbc $04
    dec de
    inc c
    rlca
    or c
    ld [$7e88], sp
    adc b

jr_032_7e79:
    ld bc, $0201
    ret z

    ld [$0788], sp
    add [hl]
    inc bc
    ld bc, $0087
    rlca
    nop
    inc bc
    ld bc, $d508
    ld b, b
    nop
    dec b
    ld b, $13
    inc e
    inc b
    ei
    rlca
    ld hl, sp+$00
    add e
    db $fc
    jr nz, jr_032_7e79

    call c, $be3f
    ld a, a
    nop
    db $fd
    ld a, [hl]
    jp c, $9c7c

    ld a, b
    adc h
    ld a, b
    nop
    ld b, [hl]
    jr c, jr_032_7ece

    inc e
    ld a, c

jr_032_7ead:
    ld b, $b9
    ld b, [hl]
    nop
    inc sp
    call z, $3cd3
    rst $38
    jr c, @-$3f

    ret c

    nop
    rst $38
    nop
    add b
    nop
    add b
    jr c, jr_032_7e51

    ld a, h
    nop
    add sp, $1e
    ld d, h
    ld l, $2c
    rla
    inc [hl]
    rrca
    nop
    dec e
    ld a, [hl]

jr_032_7ece:
    add hl, sp
    ld a, [hl]
    ld b, d
    db $fc
    inc a
    ret nz

    nop
    ld h, b
    add b
    add b
    nop
    and b
    ld h, b
    ld [c], a
    ld e, $20
    add c
    ld a, a
    ld [hl], d
    ld h, b
    nop
    inc bc
    ld bc, $0306
    nop
    inc c
    ld c, $18
    ld a, [de]
    inc a
    ld [hl-], a
    inc c
    inc c
    ld [$0c30], sp
    jr nc, jr_032_7f11

    ld e, $58
    db $10
    jr c, jr_032_7f5e

    nop
    jr c, jr_032_7f63

    jr c, jr_032_7f25

    ld a, [de]
    inc h
    ld a, [de]
    ld h, e
    nop
    inc a
    jp $c37c


    ld a, l
    rst $08
    ld [hl-], a
    cpl
    ld b, b
    jp nc, $08a6

    inc bc

jr_032_7f11:
    inc b
    rrca
    ld c, $1f
    dec e
    nop
    ld c, $1b
    inc b
    db $76
    add hl, de
    ld [hl], $d9
    ld a, [$1d03]
    rst $38
    nop
    add l
    ld [bc], a

jr_032_7f25:
    ld [bc], a
    ld c, c
    ld a, [bc]
    xor l
    jr nz, jr_032_7f2b

jr_032_7f2b:
    add d
    rst $08
    ld l, l
    sbc $fa
    ld e, l
    db $ec
    ld d, e
    nop
    dec a
    jp nz, $dc3b

    ld e, l
    cp [hl]
    ld h, e
    cp [hl]
    nop
    ld bc, $13fe
    db $ec
    ldh [$1f], a
    ret nz

    ccf
    nop
    nop
    rst $38
    and b
    rst JumpTable
    ret nc

    cpl
    ld l, [hl]
    ld de, $fc00
    db $10
    inc a
    ret z

    ld e, b
    or b
    ld [hl], b
    and b
    inc c
    ldh [rP1], a
    sub b
    ld h, b
    sub l
    db $10

jr_032_7f5e:
    ld bc, $4030
    add b
    inc bc

jr_032_7f63:
    ld h, b
    add b
    ld d, b
    and b
    ret nc

    ld h, b
    sbc d
    and c
    xor b
    ld [$0000], sp
    inc h
    dec sp
    ld b, a
    ld a, b
    db $10
    rra
    ld [hl], $00
    add hl, bc
    ld [hl], l
    dec bc
    ld a, [$f807]
    rlca
    ld sp, hl
    add b
    ld bc, $7d08
    inc bc
    ld a, h

jr_032_7f85:
    inc bc
    ld a, [hl]
    ld bc, $00f4
    inc bc
    or h
    ld b, e
    add hl, hl
    add $ad
    ld b, [hl]
    rst $38
    ld bc, $ef0e
    ld [hl], $7f
    add b
    add sp, -$10
    ld bc, $0010
    ret nc

    ldh [$f0], a
    add b
    ld l, b
    sub c
    xor c
    inc de
    nop
    sbc d
    rrca
    ld d, l
    adc a
    ld d, d
    adc a
    adc b
    rlca
    ld b, b
    rlca
    ld b, e
    ld [$e020], sp
    ld [bc], a
    cp $08
    ld hl, sp-$80
    ld d, d
    jr c, @+$72

    ld [hl], b
    db $fc
    ldh [$fe], a
    sbc b
    ldh [rNR23], a
    jr nz, jr_032_7f85

jr_032_7fc5:
    ld b, b
    add l
    ld [$798a], sp
    inc bc
    inc bc
    inc b
    ld a, b
    ld [$1035], sp
    dec e
    inc de
    ld [bc], a
    jr jr_032_7fd6

jr_032_7fd6:
    ld b, b
    ld [$861c], sp
    nop
    db $fc
    set 6, [hl]
    ld a, [$e9c7]
    rla
    ld c, l
    nop
    or e
    db $ec
    inc de
    cp d
    push bc
    ld l, c
    add [hl]
    and l
    ld [bc], a
    ld b, d
    inc h
    jp Jump_032_41a3


    ld h, c
    dec e
    jr jr_032_7ff8

    nop
    rrca

jr_032_7ff8:
    dec c
    ld a, $3a
    db $dd
    jr c, jr_032_7fc5

    adc h
    nop

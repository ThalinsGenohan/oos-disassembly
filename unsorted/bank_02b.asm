; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02b", ROMX

    ld a, a
    jr jr_02b_4013

    nop
    ld b, c
    rst $38
    ld b, c
    rst $38
    dec d
    rst $38
    ccf
    rst $38
    db $e3
    adc e
    xor d
    nop
    inc b
    inc b

jr_02b_4012:
    inc b

jr_02b_4013:
    inc b
    add b
    add b
    add b
    adc b
    and d
    add b
    nop
    sbc h
    sbc $08
    cp $ff
    rst $38
    jr @+$01

    jr c, @+$01

    ld a, [hl]
    rst $00
    ld bc, $7c44
    nop
    inc e
    nop
    inc a
    inc c
    ld a, $18
    jr nc, jr_02b_406f

    ld a, [hl]
    jr c, jr_02b_4056

    ld a, c
    dec b
    ld b, b
    rst $38
    jr nz, jr_02b_40af

    ld h, c
    rst $30
    ld b, l
    ld c, b
    jr nc, jr_02b_4062

    db $fd
    nop
    ld a, c
    nop
    db $30, $8a
    and b
    ld a, a
    pop bc
    ld a, e
    push bc
    ld sp, hl
    db $dd
    rst $28
    di
    ccf
    ldh a, [$3f]
    ld hl, sp+$00

jr_02b_4056:
    xor e
    nop
    ccf
    ld a, a
    dec de
    ld a, a
    dec c
    ccf
    ld bc, $1f3f
    rrca

jr_02b_4062:
    rlca
    ld [bc], a
    xor b
    rst $38
    ld a, [hl]
    add e
    sbc $a3
    cp $9f
    cp e
    rst $30
    rst $08

jr_02b_406f:
    rrca
    db $fc
    rra
    sub h
    nop
    ld hl, sp-$04
    ret nc

    ret nc

    add b
    pop af
    nop
    di
    ld [bc], a
    rst $20
    nop
    cp $00  ; and a / or a
    ld [hl], b
    ldh [$0a], a
    nop
    ld bc, $1301
    ld de, $103b
    dec sp
    db $10
    add hl, sp
    db $10
    ld d, h
    jr z, jr_02b_4012

    stop
    ld d, h
    ld a, l
    ld a, l
    nop
    ld a, a
    rst $38
    jr c, @+$01

    inc a
    db $e3
    ld a, [hl]
    pop bc
    ld a, [$00a8]
    add b
    add b
    add b
    ld [$101c], sp
    ld a, $01
    ld b, d
    cp $10
    ccf

jr_02b_40af:
    ld [$087f], sp
    rst $38
    jr jr_02b_40cd

    ld a, [hl-]
    rst $38
    ld a, $c7
    add e
    nop
    and d
    ld h, b
    nop
    jr c, jr_02b_40c0

jr_02b_40c0:
    ld a, b
    jr c, @+$7e

    ld [hl], b
    ld hl, sp-$10
    db $fc
    ld a, b
    db $fd
    ld sp, hl
    dec b
    ld b, b
    rst $38

jr_02b_40cd:
    ld h, b
    di
    ld b, d
    rst $30
    ld b, h
    ld c, c
    ld [hl], c
    jr nz, jr_02b_4151

    nop
    ld [hl], e
    nop
    ld [hli], a
    ld a, [hli]
    ld a, [bc]
    ld a, a
    ld a, d
    push bc
    ld sp, hl
    db $dd
    rst $20
    rst $38
    ldh [rIE], a
    ldh a, [$f3]
    rst $38
    ld [bc], a
    xor a
    nop
    scf
    rst $38
    inc bc
    ld a, a
    ld bc, $071f
    inc bc
    ld bc, $0028
    cp $de
    and e
    sbc a
    cp e
    rst $38
    rst $20
    db $fd
    rlca

Jump_02b_40ff:
    ei
    rrca
    ei
    rst $08
    or $ff
    ld a, [bc]
    xor d
    nop
    ldh [rIE], a
    add b
    cp $fc
    pop af
    pop bc
    add d
    add b
    ld b, b
    add b
    cp d
    nop
    ld bc, $1101
    db $10
    add hl, sp
    db $10
    jr c, jr_02b_412d

    ld bc, $aa01
    add b
    nop
    inc bc
    inc de
    inc de
    scf
    ccf
    ld de, $397f
    rst $38
    dec a
    db $e3

jr_02b_412d:
    ld b, b
    nop
    ld h, b
    ld [$1c08], sp
    ld [$041e], sp
    add d
    ld hl, $000e
    inc c
    nop
    sbc b
    ld b, c
    call c, Call_02b_4180
    cp $10
    cp $3c
    rst $38
    cp h
    rst $00
    nop
    nop
    inc e
    nop
    ld a, $1c
    ld a, [hl]
    jr nc, jr_02b_41cf

jr_02b_4151:
    ld b, b
    inc a
    inc hl
    ld a, h
    jr nz, @+$7b

    jr nz, jr_02b_41cc

    ld b, d
    nop
    rst $30
    ld b, h
    rst $38
    ld c, h
    rst $38
    ld [hl], h
    rst $38
    inc h
    nop
    rst $38
    nop
    ld a, a
    nop
    ld [hl], h
    nop
    inc h
    ld a, [hl]
    nop
    pop bc
    ld a, d
    push bc
    ld a, a
    ld sp, hl
    ld a, a
    db $dd
    rst $38
    nop
    rst $28
    cp a
    db $e3
    rst JumpTable
    ldh a, [rVBK]
    ld hl, sp+$2f
    nop
    rst $38

Call_02b_4180:
    dec b
    ld a, a
    ld bc, $000f
    rlca
    nop
    ld b, b
    inc bc
    ld b, c
    ld bc, $0000
    cp $83
    sbc $00
    and e
    rst $38
    sbc a
    cp $bb
    db $fc
    rst $30
    db $fd
    nop
    rst $00
    ei
    rrca
    cp $1f
    db $fc
    rst $38
    add sp, $00
    cp $c0
    ld hl, sp-$80
    ldh a, [rP1]
    ldh [rP1], a
    ld c, b
    ret nz

    ld b, c
    ld h, b
    nop
    and b
    inc d
    nop
    inc a
    nop
    nop
    ld a, [hl]
    inc d
    ld l, e
    ld d, h
    xor e
    ld a, h
    add e
    inc bc
    inc a
    ld b, d
    inc e
    ld h, d
    nop
    inc e
    rst AddAToHL
    ld h, b
    ld d, b
    db $10
    ld e, l
    inc [hl]
    ld e, a
    cp l

jr_02b_41cc:
    inc b
    ei
    inc d

jr_02b_41cf:
    ld bc, $3ceb
    jp $d32c


    inc l
    ld d, d

jr_02b_41d7:
    ld c, l
    and b
    ldh [$08], a
    add c
    jr jr_02b_41de

jr_02b_41de:
    inc e
    ld [$3934], sp
    ld [$2176], sp
    dec sp
    ld hl, $423c
    ld hl, $1803
    ld h, h
    jr jr_02b_4213

    nop
    jr c, @+$59

    db $dd
    add b
    sbc a
    inc [hl]
    inc e
    ld [hli], a
    inc e
    and e
    ld [$00f7], sp
    nop

Jump_02b_41fe:
    cp $00  ; and a / or a
    ld a, [hl]
    inc h
    ld e, d
    inc l
    ld d, d
    nop
    inc a
    ld b, d
    inc a
    jp nz, $e618

    db $10
    rst $28
    nop
    nop
    rst $38
    and h
    ld e, e

jr_02b_4213:
    inc l
    ld d, e
    inc a
    ld b, e
    and h
    ld c, a
    ld b, d
    cpl
    ld [$2ff6], sp
    inc h
    db $db
    add d
    ld l, l
    jr jr_02b_4248

    nop
    jr jr_02b_4227

jr_02b_4227:
    jr nz, jr_02b_4231

    adc b
    ld b, c
    jr jr_02b_4235

    db $10
    dec l
    jr jr_02b_41d7

jr_02b_4231:
    db $10
    ld b, b
    rst $28
    dec sp

jr_02b_4235:
    ld [bc], a
    ld a, l
    ld l, $50
    ld a, h
    add d
    ld [bc], a
    inc a
    jp nz, $ca34

    inc d
    ld [$042d], a
    ld bc, $04fb
    ld a, e

jr_02b_4248:
    ld l, $51
    inc a
    ld b, d
    cpl
    ld [$c638], sp
    jr z, @-$28

    cpl
    nop
    ld a, a
    ld b, h
    inc b
    dec sp
    ld h, h
    sbc e
    inc l

jr_02b_425b:
    jp nc, $182f

    and $04
    nop
    ld a, [hl]
    nop
    inc a
    nop
    ldh [rNR10], a
    nop
    ld b, h
    jr jr_02b_42b8

    ld a, h

jr_02b_426c:
    inc h
    ld e, d
    dec sp
    jr c, @-$37

    nop
    jr jr_02b_425b

    nop
    rst $38
    ld b, b
    cp a
    ld d, d
    xor l
    nop
    ld d, [hl]
    xor c
    ld a, [hl]
    add c
    ld a, h
    add e
    ld e, h
    and e
    sub d
    ld l, a
    ld b, d
    cp l
    ld hl, $916e
    cpl
    inc [hl]
    ld [hl], b

jr_02b_428d:
    sla c

jr_02b_428f:
    dec l
    ld hl, $5628
    jr @+$68

    dec d
    nop
    inc a
    nop
    ld h, b
    db $10
    ld b, c
    jr jr_02b_42e9

    ld b, b
    ld a, $33
    inc l
    ld d, e
    jr c, jr_02b_426c

    jr jr_02b_428d

    nop
    db $10
    xor $00
    ld a, [hl]
    db $10
    ld l, [hl]
    jr nz, jr_02b_428f

    jr nz, jr_02b_42f2

    cp a
    ld b, a
    nop
    nop
    dec bc
    inc a

jr_02b_42b8:
    inc a
    rst $38
    ld b, b
    dec h
    inc de
    inc c
    adc b
    ld h, b
    jr jr_02b_42da

    inc h
    inc [hl]
    inc h
    ld e, d
    ld h, [hl]
    db $10
    ld a, [hl]
    ld b, d
    ld h, [hl]
    inc h
    ld e, d
    jp $c3ff


    rlca
    ld a, [hl]
    rst $20
    cp l
    and l
    rst $38
    ld [hl-], a
    rst $38
    nop
    ld [de], a

jr_02b_42da:
    nop
    ld [$1408], sp
    inc e
    inc e
    inc d
    ld a, [hli]
    ld [hl], $00
    ld a, [hl-]
    ld h, $03
    ld [bc], a
    dec b

jr_02b_42e9:
    ld b, $07
    inc b
    adc b
    ld h, c
    ld b, $05
    rlca
    add c

jr_02b_42f2:
    rrca
    dec c
    rra
    db $10
    dec d
    dec de
    rla
    ld hl, $0f0a
    dec bc
    rrca
    ld [bc], a

Jump_02b_42ff:
    rlca
    ld b, $a0
    ld h, b
    sub b
    ld [hl], b
    add c
    ldh a, [$a0]
    ld hl, $2150
    or b
    cp b
    ld a, b
    ld a, h
    or h
    nop
    db $f4
    inc l
    db $f4
    db $ec
    db $e4
    cp h
    add sp, -$68
    dec b
    ldh a, [$f0]
    add b
    add b
    nop
    nop
    add hl, bc
    ld bc, $1040
    ld [bc], a

jr_02b_4325:
    inc bc
    inc bc
    ld [hli], a
    ld [bc], a
    dec b
    ld b, $07
    ld b, b
    inc b
    ld hl, $0d0b
    rrca
    add hl, bc
    ld c, $0b
    add b
    db $fd
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    and b
    ld c, b
    ld h, b
    ld h, c
    sub b
    ld [hl], b
    ld b, c
    ldh a, [rOBP0]
    ld hl, sp-$7f
    ld hl, $b868
    ld c, $0b
    rrca
    ld a, [bc]
    inc hl
    ret nz

    ld h, l
    ld b, c
    dec bc
    ccf
    ld a, [hl-]
    ccf
    inc a
    inc a
    jr nz, @+$31

    ld [hl], $41
    ld [hl-], a
    cpl
    rra
    rla
    rrca

jr_02b_4362:
    nop
    ld c, $07
    inc b
    xor b
    ld a, b
    jr z, jr_02b_4362

    ld l, b
    jr jr_02b_4325

    add sp, $38
    ld hl, $2e29
    cp $be
    nop
    ld a, [$f2fe]
    ld l, d
    or $b2
    xor $f6
    nop
    xor [hl]
    db $e4
    sbc h
    xor h

jr_02b_4382:
    call c, $f8f8
    add b
    nop
    add b
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    nop

jr_02b_4390:
    ld [$6c6b], sp
    db $fd
    sbc d
    cp a
    ret z

    sbc l
    ld [$89ea], sp
    cp $f9
    ld hl, $e99e
    sbc [hl]
    add b
    add hl, hl
    ld c, a
    ld [hl], l
    ld [hli], a
    ccf
    rra
    rra
    add b
    nop
    add b
    ld b, b
    ret nz

    jr nz, jr_02b_4390

    jr nc, jr_02b_4382

    ld d, [hl]
    nop
    or [hl]
    sbc a
    ld a, c
    rra
    pop af
    add hl, de
    rst $30
    ld de, $ff00
    rra
    rst $38
    cpl
    pop af
    ld e, a
    pop hl
    and a
    ld bc, $47d9
    cp e
    ld b, $fe
    ld hl, sp-$08
    nop
    rlca
    nop
    jr jr_02b_43d9

    ld c, $01
    rrca
    nop
    nop
    dec de
    inc c

jr_02b_43d9:
    ld [hl-], a
    dec e
    ld a, [hli]
    dec d
    ld c, a
    jr nc, jr_02b_43e0

jr_02b_43e0:
    ld e, b
    daa
    sub d
    ld l, a
    and a
    ld e, d
    xor [hl]
    ld e, c
    nop
    cp h
    ld b, e
    ld h, l
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    add c
    nop
    ld a, [hl]
    add c
    inc a
    rst $38
    sbc c
    ld a, [hl]
    nop
    ld e, d
    cp l
    ld h, [hl]
    db $db
    ld h, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $20
    ld e, d
    jp Jump_02b_7ebd


    rst $38
    inc b
    inc a
    rst $38
    cp l
    jp $1fc3


    ld [$000e], sp
    nop
    ccf
    ld [$3758], sp
    cp [hl]
    ld b, c
    ld a, a
    nop
    nop
    rra
    nop
    ld b, $01
    ld [bc], a
    ld bc, $0007
    nop
    ld [$1207], sp
    rrca
    daa
    ld a, [de]
    ld l, $19
    db $10
    inc e
    inc bc
    dec b
    ld b, c
    nop
    inc hl
    inc bc

jr_02b_4439:
    nop
    inc b
    inc bc

Jump_02b_443c:
    nop
    add hl, bc
    ld b, $17
    nop
    ccf
    nop
    db $76
    add hl, sp
    nop
    ld h, d
    dec a
    ld [hli], a
    dec e
    ld de, $3d0e
    ld d, $00
    daa
    ld a, [de]
    inc l
    inc de
    ld l, $11
    inc l
    inc de
    ld [de], a
    dec e
    inc bc
    inc de
    dec a
    jr z, jr_02b_4439

    inc a
    dec sp
    db $10
    inc a
    nop
    jp Jump_02b_42ff


    rst $38
    ld b, d
    ld a, [hl]
    add c
    ld h, [hl]
    ld bc, $bd99
    ld b, d
    ld b, d
    cp l
    inc a
    jp $2081


    nop
    nop
    nop
    ld [$1800], sp
    nop
    ld a, $00   ; xor a
    nop
    ld a, a
    ld b, $6f
    ld [de], a
    swap a
    cp a
    ld [hl], l
    nop
    rst $38
    ld [hl], l
    ei
    ld h, a
    rst $20
    ld b, d
    rst $00
    ld [bc], a
    ld b, c

jr_02b_4491:
    add e
    dec de
    jr jr_02b_4495

jr_02b_4495:
    nop
    ld [bc], a
    nop
    ld b, $a5
    ld [$0f00], sp
    ld b, $1f

jr_02b_449f:
    ld [bc], a
    dec de
    rlca
    rra
    dec b
    ld hl, $051f
    dec b
    ld [$1f02], sp
    ld [bc], a
    dec bc
    dec [hl]
    ld [$00c0], sp
    db $10
    rst $38
    db $f4
    nop
    ldh [$e0], a
    ld b, b
    nop
    jr z, jr_02b_44da

    ret c

    jr nz, jr_02b_4536

    jr nc, @+$68

    jr jr_02b_4500

    inc e
    ld sp, $0f0e
    rlca
    ld a, [bc]
    rlca
    rst $38
    rst $38
    nop
    add hl, bc
    nop
    inc bc
    dec b
    ld [bc], a
    ld b, $01
    nop
    inc b

jr_02b_44d5:
    ld a, a
    nop
    jp nc, $a92d

jr_02b_44da:
    ld d, [hl]
    add b
    ld a, a
    adc c
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $3f05
    nop
    jr nc, jr_02b_44f8

    add hl, de
    ld h, $2c
    rra
    nop
    nop
    rst AddAToHL
    jr c, jr_02b_4491

    ld h, [hl]
    rst $30
    ld a, [bc]
    ld a, $c1
    add b

jr_02b_44f8:
    ld a, a
    ld b, b
    cp a
    inc bc
    db $fc
    ccf
    ret nz

    ld d, b

jr_02b_4500:
    nop
    nop
    db $10
    jr nc, jr_02b_44d5

    jr nz, jr_02b_449f

    ld h, b
    cp a
    ld b, b
    ld [hl], d
    adc h
    inc d
    add sp, -$73
    ld [hl], b
    nop
    ld a, [hli]
    ld a, [c]
    add a
    ld a, b
    add l
    ld a, d
    inc bc
    db $fc
    ld b, d
    cp h
    ld h, e
    cp h
    dec a
    ld a, l
    db $fd
    db $fd
    nop
    nop
    jr @-$4a

    ld [$1ce2], sp
    ld hl, $24de
    db $db
    ld a, [bc]
    nop
    ld c, a
    daa
    db $db
    ld h, a
    sbc e
    or a
    or a
    rst JumpTable

jr_02b_4536:
    cpl
    sbc a
    ld l, [hl]
    cp a
    ld e, a
    ld a, a
    or c
    rst $38
    db $f4
    nop
    add b
    ld [hl], b
    add b
    ld b, h
    jr @-$1e

    ld e, $f8
    ldh a, [$f0]
    ldh a, [$a0]
    ld hl, sp-$30
    db $fc
    ld b, b
    ret nz

    add b
    dec b
    ld b, b
    ld [hli], a
    ret nz

    ccf
    ld a, a
    nop
    ld a, a
    ld [hl], a
    ld d, a
    dec h
    ld [bc], a
    ld [bc], a
    ld bc, $0003
    ld [hl], l
    nop
    nop
    ld bc, $0301
    inc bc
    ld bc, $0305
    inc b
    inc bc
    ld [$8807], sp
    ld [$29ff], sp
    db $fd
    add e
    ld a, [bc]
    cp $05
    ld a, e
    xor h
    db $fd
    dec de
    pop af
    ld a, a
    and $a9
    ld bc, $0fff
    inc bc
    ld a, l
    ld a, a
    cp l
    ld a, [hl]
    adc $b1
    ld d, b
    xor a
    nop
    ld bc, $f744
    db $f4
    cp e
    db $e4
    dec sp
    db $e4
    ld a, e
    add sp, -$38
    ret z

    ld [hl], a
    ret z

    db $dd
    ld [c], a
    nop
    inc d
    rst $38
    sub [hl]

jr_02b_45a2:
    jp hl


    sub e
    db $ec
    cp c
    add $79
    cp [hl]
    ldh [$7f], a
    ret nz

    nop
    rlca
    ld hl, sp+$28
    nop
    ldh [$f1], a
    jr nz, jr_02b_45f5

    nop
    ccf
    ret nz

jr_02b_45b8:
    add b
    ld a, a
    ld b, h
    cp e
    jp nz, $c33d

    inc a
    and b
    nop
    add c
    ld a, [hl]
    ld a, [hl]
    ld b, c
    cp [hl]
    inc hl
    call c, $c13e
    inc e
    db $e3
    inc e
    db $e3
    jr jr_02b_45b8

    nop
    nop
    call nz, Call_02b_4a00
    inc b
    ld [de], a
    inc c
    ld h, [hl]
    jr jr_02b_45a2

    jr c, jr_02b_460a

    ret nc

    inc e
    ldh [$08], a
    ldh a, [$a0]
    jr z, @+$06

    ld hl, sp-$08
    jp nz, $023c

    db $fc
    ld [bc], a
    db $fc
    ld hl, sp-$08
    ld [$54f0], sp
    nop
    rlca

jr_02b_45f5:
    ld [$1818], sp
    inc a
    inc bc
    ld [hl-], a
    dec c

jr_02b_45fc:
    ld hl, $101e
    rrca
    db $10
    rrca
    db $10
    rlca
    nop
    ld [$0f07], sp
    db $10
    rrca

jr_02b_460a:
    inc h
    dec de
    add hl, hl
    ld d, $3d
    ld d, $3f
    and b
    stop
    rst $38
    rst $38
    jr nz, @-$1f

    ld [hl], c
    adc [hl]
    ld a, c
    add [hl]
    rst $38
    ld a, a
    add b
    ccf
    ret nz

    nop
    rlca
    nop
    ld e, $e1
    rst AddAToHL
    ld hl, $d02b
    adc e
    ld [hl], b
    add hl, bc
    ldh a, [$98]
    ldh [$f0], a
    add b
    ld bc, $fe01
    ld b, b
    cp a
    add b
    ld a, a
    add b

jr_02b_463a:
    ld a, a
    add $39
    ld hl, sp+$07
    ldh a, [rIF]
    cp $00  ; and a / or a
    ld a, a
    nop
    ld c, c
    or [hl]
    ret nc

    ld l, a

jr_02b_4649:
    ld hl, sp+$0f
    db $fc
    inc bc
    rst $38
    inc b
    rlca
    nop
    jr jr_02b_463a

    inc [hl]
    jp $86e3


    ld bc, $0205
    rlca
    ld [bc], a
    rlca
    rst $38
    rst $38
    nop
    nop
    rlca
    nop
    inc c
    ldh a, [rNR34]
    ldh [$c6], a
    jr c, jr_02b_45fc

    ld l, h
    ld [hli], a
    call c, $d8b6
    db $fc
    rst $38
    rst $38
    nop
    ld d, b
    nop
    nop
    db $10
    jr nc, jr_02b_4649

    jr nz, @-$66

    ld h, b
    cp a
    ld b, b
    ld [hl], d
    adc h
    inc d
    add sp, -$73
    ld [hl], b
    nop
    ld a, [hli]
    ld a, [c]
    add a
    ld a, b
    add l
    ld a, d
    inc bc
    db $fc
    ld b, d
    cp h
    ld h, d
    cp h
    inc a
    ld a, h
    db $fc
    jr z, jr_02b_4697

    db $e4

jr_02b_4697:
    db $f4
    cp b
    jr c, jr_02b_4713

    add sp, -$10
    adc $f0
    bit 6, h
    ret


    or $db
    nop
    dec d
    rst $38
    sub [hl]
    jp hl


    sub d
    db $ed
    cp c
    add $79
    cp [hl]
    ldh [$7f], a
    ret nz

    nop
    nop
    db $fd
    nop
    nop
    rra
    ld h, c
    ld e, $9c
    ld h, e
    ld a, [hl]
    sbc c
    ld a, [hl]
    cp l
    and b
    nop
    rst $38
    ld a, [hl]
    ld b, d
    jp $3f00


    ret nz

    add c
    ld a, [hl]
    ld b, l
    cp d
    ld b, e
    cp h
    jp $ff3c


    ld b, b
    nop
    ldh [rNR23], a
    ldh [rDIV], a
    ld hl, sp+$12
    db $ec
    db $10
    ld bc, $09f0
    or $0f
    ld b, $f8
    ld a, $c0
    ld h, [hl]
    sbc b
    xor h
    ld d, b
    inc e
    ldh [$08], a

jr_02b_46ec:
    ld d, h
    ld bc, $0807
    jr jr_02b_470a

    inc d
    dec bc
    ld [de], a
    dec c
    ld de, $100e
    rrca
    jr @+$42

    ld e, a
    nop
    ld a, a
    and h
    ld e, e
    or [hl]
    ld e, e
    cp $41
    rst $38
    ld a, a
    add b
    stop

jr_02b_470a:
    rst $38
    jr nz, jr_02b_46ec

    jr nz, @-$1f

    ld [hl], b

jr_02b_4710:
    adc a
    ld a, b
    add a

jr_02b_4713:
    rst $38
    ld a, a
    add b
    ccf
    ret nz

    dec b
    nop
    ret nz

    ld l, a
    add b
    and e
    ld b, b
    jr nz, jr_02b_4742

    ld h, d
    add c
    jp nz, $0301

    ld bc, $0003
    nop
    nop
    inc bc
    db $fc
    nop

jr_02b_472e:
    rst $38
    jr nz, jr_02b_4710

    ld b, b
    cp a
    ret nz

    ccf
    ldh [$1f], a
    pop af
    ld c, $fe
    ld bc, $0000
    ldh a, [rIF]
    ldh [$1f], a
    db $fc

jr_02b_4742:
    inc bc
    ld [bc], a
    db $fd
    ld c, b
    or a
    sub b
    ld l, a
    reti


    ld l, [hl]
    rst $38
    nop
    nop
    nop
    add c
    ld a, [hl]
    add e
    ld a, h
    ld b, h
    cp e
    jr z, jr_02b_472e

    jr c, @-$37

    jr jr_02b_4742

    inc e
    db $e3
    rra
    ldh [rP1], a
    ld d, a
    nop
    ld a, [de]
    pop hl
    dec [hl]
    jp nz, $c237

    ld [hl], a
    add b
    rst $30
    pop hl
    add b
    ld b, b
    ld [$c438], sp
    inc b
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    ld b, $f8
    inc c
    ldh a, [$c0]
    call z, RST_30
    rra
    nop
    add $38
    ld [de], a
    db $ec
    and d
    call c, $1cf2
    or $08
    db $fc
    ld c, d
    add b
    ld a, a
    add b
    ld b, c
    ld a, $00   ; xor a
    ld [hli], a
    ld a, [hli]
    ld e, a
    ld [hli], a
    dec h
    ld [bc], a
    inc bc
    nop
    ld hl, $0f00
    dec b
    inc bc
    nop
    rra
    rlca
    scf
    dec sp
    rla
    ld e, h
    dec sp
    ld b, l
    ld a, [hl-]
    add b
    ld a, a
    and b
    adc b
    rst $38
    rrca
    ccf
    rst $30
    ld hl, sp-$05
    rst $20
    jp $1def


    rrca
    cp a
    ld [hl], a
    ld b, b
    dec b
    rst $38
    cp $fc
    ccf
    ei
    call c, $fbf7
    sbc $e7
    db $ec
    rra
    nop
    nop
    ld bc, $f040
    ld a, [c]
    db $fc
    db $f4
    jr c, @-$1a

    ld a, b
    add sp, -$38
    sbc b
    ldh [rNR10], a
    ldh [$30], a
    ret nz

    nop
    xor d
    nop
    ld h, b
    sub b
    and b
    ld d, b
    sub b
    ld h, b
    sub b
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [rIE]
    ld d, b

jr_02b_47ed:
    nop
    jr nc, jr_02b_4820

    ld a, b
    jr nz, @+$7a

    db $10
    dec b
    ld bc, $2818
    db $10
    ld a, h
    jr nc, jr_02b_4878

    inc h
    db $76
    jr c, jr_02b_487e

    inc e
    ld a, $1c
    jr nz, @+$01

    db $f4
    nop
    ld a, [hl]
    db $d3
    inc l
    nop
    ld d, h
    ld [hli], a
    xor c
    ld d, [hl]
    add b
    ld a, a
    jp nz, Jump_02b_7f3d

    nop
    ld a, l
    ld [hl], a

jr_02b_4817:
    ld d, a
    dec h
    ld [bc], a
    rst $38
    ret nc

    nop
    ld h, a
    sbc [hl]
    ld h, a

jr_02b_4820:
    cp b
    ld c, a
    nop
    nop
    rst $28
    db $10
    cp a
    ld b, [hl]
    rla
    ld [$f10e], a
    ret nz

    ccf
    ldh a, [$8f]
    ld hl, sp+$27
    ld a, a
    ld [$00fd], sp
    nop
    jr nc, jr_02b_4817

Jump_02b_4839:
    jr nz, jr_02b_47ed

    ld c, h
    db $e4
    jr jr_02b_489d

    and b
    ld bc, $fa08
    ld c, c
    or [hl]
    swap h
    add [hl]
    ld a, b
    dec b
    ld h, e
    cp h
    ld [hl], d
    cp h
    inc a
    ld sp, hl
    ld l, [hl]
    ld d, c
    nop
    nop
    inc hl
    rlca
    rrca
    ld bc, $371f
    ld a, [bc]
    cpl
    ld de, $1f2f
    rla
    rrca
    ld d, l
    nop
    nop
    rrca
    ld bc, $0301
    inc bc
    ld bc, $0305
    inc b
    inc bc
    ld [$a807], sp
    adc b

jr_02b_4872:
    rst $38
    inc e
    ld sp, $d767
    rst $28

jr_02b_4878:
    pop bc
    xor a
    sbc $83
    rst JumpTable
    dec a

jr_02b_487e:
    xor c
    ld bc, $7fff
    rlca
    ei
    ld a, [hl]
    cp l
    ld a, [hl]
    adc $b1
    ld d, b
    xor a
    nop
    ld d, l
    ld b, b
    ldh [$d0], a
    ret nc

    ret nc

    ret nc

    sbc $93
    db $ec
    sub c
    xor $9b
    db $e4
    nop
    dec d
    rst $38

jr_02b_489d:
    ld [hl], $c9
    ld [hli], a
    db $dd
    add hl, sp
    add $79
    cp [hl]
    ldh [$7f], a
    ret nz

    nop
    nop
    rst $38
    rst $38
    nop
    ld de, $0100
    dec b
    ld [bc], a
    ld b, $23
    nop
    ld [hli], a
    scf
    nop
    ld a, h
    inc bc
    jp nc, $a92d

    ld d, [hl]
    ld d, b
    ld b, b
    nop
    inc b
    ld b, $05
    ld [bc], a
    dec b
    ld [bc], a
    ccf
    jr nc, jr_02b_48d9

    add hl, de
    ld h, $2c
    rra
    nop
    nop
    rst AddAToHL
    jr c, jr_02b_4872

    ld h, [hl]
    rst $30
    ld a, [bc]
    ld a, $c1
    add b

jr_02b_48d9:
    ld a, a
    ld b, b
    cp a
    inc bc
    db $fc
    ccf
    ret nz

    ld d, b
    nop
    nop
    jr nz, jr_02b_4945

    or d
    ld b, b
    sbc [hl]
    ld h, b
    cp d
    ld b, h
    ld [hl], h
    adc b
    inc d
    add sp, -$73
    ld [hl], b
    nop
    ld a, [hli]
    ld a, [c]
    add a
    ld a, b
    add l
    ld a, d
    inc bc
    db $fc
    ld b, d
    cp h
    ld h, d
    cp h
    inc a
    ld a, h
    db $fc
    rst $38
    rst $38
    nop
    rst $38
    db $f4
    nop
    rlca
    ld [$ff07], sp
    rst $38
    nop
    ld d, h
    nop
    nop
    inc b
    inc b
    inc c
    inc d
    ld [$182c], sp
    call c, $3c38
    ld hl, sp+$7e
    db $fc
    ld b, d
    add b
    ld a, a
    add b
    ld b, c
    ld a, $ff
    nop
    ld [hli], a
    ld a, [hli]
    ld e, a
    ld [hli], a
    dec a
    ld a, [bc]
    rra
    dec b
    ld [bc], a
    sub h
    inc bc
    rra
    ld bc, $0021
    ld bc, $0000
    ld bc, $0405
    ld [$a807], sp
    add d
    rst $38
    rrca
    ccf
    ldh a, [$fd]
    db $e3

jr_02b_4944:
    ret nz

jr_02b_4945:
    rst $30
    rrca
    cp a
    ld b, c
    ld e, $a9
    ld bc, $bfff
    inc bc
    ld a, l
    ld a, a
    cp l
    ld a, [hl]
    adc $b1
    ld d, b
    xor a
    nop
    ld bc, $f044
    db $f4
    cp b
    db $e4
    jr c, jr_02b_4944

    ld a, b
    add sp, -$38
    ret z

    ld [hl], b
    ret z

    db $dd
    ldh [rP1], a
    add hl, bc
    ld a, e
    sub [hl]
    jp hl


    sub e
    db $ec
    cp c
    add $78
    cp a
    ldh [$7f], a
    ret nz

    rst $38
    add h
    and h
    xor d
    nop
    inc de
    inc c
    dec c
    dec c
    dec c
    daa
    dec de
    daa
    dec de
    ld c, a
    scf
    sbc a
    ld l, h
    jr @-$7e

    ld b, b
    ld a, h
    sub b
    ldh a, [$80]
    ret nz

    nop
    add b
    ret nz

    nop
    ldh [rP1], a
    ld h, b
    add b
    ld b, $a8
    ld hl, sp-$01
    ldh [$fe], a
    db $fc
    db $fc
    or b
    ret nc

    ldh [$80], a
    adc b
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld b, b
    nop
    rrca
    ccf
    inc c
    ld e, a
    dec hl
    ld a, a
    ld [hli], a
    ld d, a
    rst $38
    nop
    scf
    inc bc
    ld bc, $0840
    ccf
    ld b, b
    ld b, c
    ld a, $41
    ld a, $23
    inc e
    inc sp
    inc c
    rst $38
    nop
    ret nz

    rrca
    ldh a, [rSB]
    rst $38

jr_02b_49cc:
    nop
    add a
    ld a, b
    add $38
    db $e4
    jr jr_02b_49cc

    nop
    nop
    rrca
    ld a, [c]
    rra
    add sp, $1e
    pop hl
    add h
    ld a, e
    call nz, $fc3b
    inc bc
    cp $01
    rst $38
    nop
    ld d, b
    nop
    nop
    ld a, a
    rrca
    add hl, bc
    ld b, $10
    rrca
    jr nz, jr_02b_4a10

    jr nz, jr_02b_4a12

    ld b, b
    ccf
    ld b, b
    ccf
    ld [bc], a
    add b
    ld c, b
    ldh a, [rIF]
    sbc $e1
    ret z

    ld [hl], a

Call_02b_4a00:
    or a
    or a
    ld [$03f7], sp
    db $fc
    ld c, $f1
    inc b
    ld bc, $f800
    rlca
    db $fc
    inc bc
    rst $38

jr_02b_4a10:
    ld a, a
    add b

jr_02b_4a12:
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    pop af
    sub b
    nop
    add d
    nop
    ld b, l
    ld c, c
    add [hl]
    ld d, e
    adc h
    ld h, e
    sbc h
    sub a
    ld l, b
    ld c, [hl]
    or b
    ld b, [hl]
    cp b
    nop
    ld a, [hli]
    add c
    ld b, h
    cp b
    jp nz, $c23c

    inc a
    pop bc
    ld a, $c1
    ld a, $7e
    ld a, [hl]
    ld a, [hl]
    ld bc, $0040
    ld b, c
    ld a, $43
    inc a
    daa
    jr jr_02b_4a83

    rra
    db $10
    rrca
    jr nz, jr_02b_4a68

    ld l, b
    rla
    ld bc, $00ff
    sub d
    ld l, l
    db $e4
    ld e, e
    db $76
    dec de
    rra
    ld d, l
    ld d, b
    nop
    ret nz

    ldh a, [$f0]
    ldh a, [$e0]
    ldh [rLCDC], a
    add b
    ld b, b
    add b
    dec d
    ld a, a
    nop
    ld b, b
    add b
    pop bc

jr_02b_4a68:
    add c
    ld bc, $4001
    and c
    ld a, [hl]
    add c
    add d
    ld a, h
    add d
    ld a, h
    ld b, [hl]
    jr c, jr_02b_4a76

jr_02b_4a76:
    nop
    jp nz, $813c

    nop
    rra
    nop
    add c
    ld a, [hl]
    ld bc, $b5fe
    ld c, d

jr_02b_4a83:
    daa
    jp c, $d8b6

    db $fc
    rst $38
    rst $38
    nop
    ld b, d
    nop
    ld [bc], a
    dec b
    ld b, $01
    inc bc
    nop
    ld bc, $0007
    ld a, h
    inc bc
    jp nc, $a92d

    ld d, [hl]
    ld c, d
    add b
    ld a, a
    add b
    ld b, c
    ld a, $00   ; xor a
    ld [hli], a
    ld a, [hli]
    ld e, a
    ld [hli], a
    dec h
    ld [bc], a
    dec bc
    inc b
    jr nz, jr_02b_4abd

    inc de
    dec bc
    dec b
    rrca
    rla
    ld c, $17
    inc c
    cpl
    add hl, de
    dec l
    inc [hl]
    inc bc
    jr z, jr_02b_4ac3

    xor b

jr_02b_4abd:
    adc d
    rst $38
    rrca
    ccf
    ldh a, [$fd]

jr_02b_4ac3:
    db $e3
    ret nz

    rst AddAToHL
    cpl
    ld bc, $a99e

jr_02b_4aca:
    ld bc, $bfff
    inc bc
    ld a, l
    ld a, a
    cp l
    ld a, [hl]
    adc $b1
    ld d, b
    xor a
    nop
    ld bc, $f044
    db $f4
    cp b
    db $e4
    jr c, jr_02b_4ac3

    ld a, b
    add sp, -$38
    ret z

    ld [hl], b
    ret


    sbc $e1
    nop
    add hl, bc
    ld a, e
    sub [hl]
    jp hl


    sub e
    db $ec
    cp c
    add $78
    cp a
    ldh [$7f], a
    ret nz

    rst $38
    add h
    and h
    db $fd
    nop
    nop
    ld a, $43
    inc a
    cp c
    ld b, [hl]
    ld a, l
    or d
    db $fc
    ld a, e
    inc d
    nop
    add e
    db $fc
    ld b, e
    call nz, $884c
    rlca
    ld c, c
    add [hl]
    jp c, $f404

    ld [$8078], sp
    rst $38
    ret nc

    nop
    add b
    ld b, b
    add b
    ld h, b
    add b
    ld d, l
    nop
    ret nz

    jr nc, jr_02b_4b52

    jr c, jr_02b_4b5c

    xor h
    ld b, b
    ld h, h
    nop
    jr nz, jr_02b_4b2a

jr_02b_4b2a:
    nop
    nop
    rst $38
    rst $38
    nop
    add l
    ld b, b
    ld a, a
    nop
    ret nz

    ccf
    add b
    add b
    add b
    adc c
    db $76
    ld c, c
    ld [hl], $4b
    inc [hl]
    rst $38
    push de
    nop
    ld bc, $7e07
    dec b
    db $10
    ld l, a
    rst $08
    jr nc, jr_02b_4aca

    ld a, a
    sub e
    sbc a
    sbc a
    ld l, [hl]
    sbc a
    ccf
    db $db

jr_02b_4b52:
    ccf
    db $dd
    rst $38
    push de
    nop
    ld bc, $3c06
    dec d
    nop

jr_02b_4b5c:
    ldh a, [$cc]
    jr c, jr_02b_4bd8

    ld hl, sp-$08
    db $fc
    nop
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    rst $38
    rst $38
    nop
    ld d, b
    ld b, b
    nop
    inc b

jr_02b_4b71:
    ld b, $05
    ld [bc], a
    inc c
    inc bc
    ld a, a
    ld h, $19
    ld [de], a
    dec c
    inc e
    inc bc
    db $fd
    nop
    nop
    ld bc, $0102
    inc b
    inc bc
    ld [$4807], sp
    rlca
    nop
    xor d
    nop
    ld [hl], b
    rrca
    ld e, a
    jr nz, jr_02b_4b71

    rra
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rlca
    nop
    ccf
    nop
    pop bc
    ld a, $00   ; xor a
    rst $38
    add b
    ld bc, $020a
    db $fd
    sub a
    ld l, [hl]
    rra

jr_02b_4ba9:
    or $3f
    nop
    ld hl, sp+$7c
    db $d3
    ldh a, [$ef]
    ld sp, hl
    and $fe
    ld bc, $0301
    db $fc
    add b
    ld a, a
    ld b, b
    cp a
    ld a, c
    nop
    inc l

jr_02b_4bbf:
    db $d3
    jr jr_02b_4ba9

    sub b
    ld l, a
    ld [hl], b
    xor a
    nop
    ldh [$9f], a
    ldh [$1f], a
    ret nz

    ccf
    add c
    ld a, [hl]
    nop
    add d
    ld a, l
    add $39
    ld h, a
    sbc e
    ld l, a
    sub a

jr_02b_4bd8:
    nop
    rst JumpTable
    inc l
    ld a, $c0
    inc de
    db $ec
    ld [hl], b
    adc a
    ld [$f708], sp
    inc b
    ei
    ld hl, $f30c
    ld a, h
    ld h, b
    add e
    inc hl
    daa
    ld b, $f9
    ld [bc], a
    db $fd
    inc bc
    inc b
    db $fc
    ld hl, sp-$20
    db $fc
    nop
    and b
    ret nz

    nop
    nop
    jr nc, jr_02b_4bbf

    inc c
    ldh a, [rSCY]
    cp h
    ld hl, $08de
    jr nz, @-$1f

    db $10
    rst $28
    ld h, c
    jr nc, @-$2f

    ldh a, [$60]
    rrca
    call c, $0b00
    add b
    nop
    ldh [rP1], a
    ld e, b
    nop
    and b
    ld b, h
    cp b
    ld [hl-], a
    call z, $c23d
    ccf

jr_02b_4c21:
    nop
    ret nz

    inc l
    inc de
    ld [hl], h
    dec bc
    inc e
    inc bc
    jr jr_02b_4c2b

jr_02b_4c2b:
    rlca
    rrca
    nop
    add hl, bc
    ld b, $1e
    rlca
    rra
    nop
    rrca
    ld sp, $3e0e
    inc e
    ld h, [hl]
    jr jr_02b_4cb4

    ld bc, $d830
    jr nz, jr_02b_4c21

    ld b, b
    ldh [rP1], a

Call_02b_4c44:
    ld b, b
    nop
    rst $38
    add hl, sp
    add $1c
    db $e3
    sbc [hl]
    ld l, l
    sbc [hl]
    nop
    ld h, l
    sub [hl]
    ld l, c
    adc $31
    push hl
    ld a, [de]
    ld a, $00   ; xor a
    pop bc
    db $fc
    inc bc
    rrca
    nop
    ld b, $01
    inc bc
    ld d, b
    nop
    ld h, c
    ld bc, $c03e

jr_02b_4c66:
    ei
    ld h, h
    ld hl, sp+$00
    scf
    ld a, b
    or a
    ld a, h
    or e
    ld a, a
    or l
    ld a, a
    nop
    sbc c
    ccf
    call c, $cc3e
    sbc a
    ld h, b
    ld e, $00
    rst $20
    rrca
    ldh a, [$4e]
    or h
    call z, $1830
    jr nc, jr_02b_4c66

    ldh a, [$3f]
    ld b, c
    db $fc
    inc bc
    ld d, b
    rst $28
    nop
    ldh [$5f], a
    ldh [$1f], a
    ldh [$9f], a
    and b
    rra
    nop
    jr nc, jr_02b_4ca8

    add hl, hl
    ld d, $9f
    ld a, [bc]
    rrca
    inc bc
    jr nz, jr_02b_4ca4

    nop

jr_02b_4ca2:
    and b
    inc bc

jr_02b_4ca4:
    db $fc
    pop af
    ld c, $09

jr_02b_4ca8:
    nop
    or $01
    cp $81
    ld a, [hl]
    ld b, c
    cp [hl]
    ld b, e
    nop
    cp h
    ccf

jr_02b_4cb4:
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    rst JumpTable
    inc c
    nop
    cp a
    nop
    ld a, a
    ld b, c
    ld h, b
    ldh a, [rIF]
    nop
    ld hl, sp+$07
    sbc b
    rlca
    inc c
    inc bc
    rrca
    nop
    nop
    rlca
    nop
    add c
    nop
    add b
    nop
    ret nz

    nop
    ld b, c
    pop bc
    ld b, c
    add e
    nop
    add d
    ld bc, $2103
    add b
    ld e, a
    jr nz, jr_02b_4ca2

    jr nc, jr_02b_4ca4

    inc e
    ldh [rNR21], a
    ld [de], a
    add sp, $02
    db $fc
    ld hl, $7c82
    ld hl, $00ca
    inc [hl]
    pop af
    ld c, $81
    ld a, [hl]
    ld c, c
    or [hl]
    reti


    inc c
    ld h, $db
    ld l, h
    cp $5f
    ld h, b
    jr jr_02b_4d02

jr_02b_4d02:
    nop
    inc h
    jr jr_02b_4d60

    inc a
    ld a, [hl]
    inc a
    cp l
    ld h, [hl]
    db $fd
    and c
    add hl, hl
    dec l
    ld sp, $0035
    db $10
    ldh [rNR42], a
    nop
    ld b, b
    ld hl, sp+$20
    ld a, b
    jr nc, @+$80

    jr jr_02b_4d5c

    nop
    inc e
    ccf
    ld c, $1f
    rrca
    rra
    rlca
    ld a, [bc]
    ld d, h
    rlca
    ei
    jr nc, jr_02b_4d6d

    ld a, b
    dec sp
    db $10
    jr c, jr_02b_4d31

jr_02b_4d31:
    db $10
    ld a, h
    jr nc, jr_02b_4db1

    jr @+$3e

    jr jr_02b_4db7

    nop
    jr c, jr_02b_4dba

    inc e
    ld a, $1c
    jr nz, @+$1a

    inc l
    nop
    inc de
    ld [hl], h
    dec bc
    inc e
    inc bc
    jr jr_02b_4d51

    rrca
    nop
    nop
    add hl, bc
    ld b, $1e
    rlca

jr_02b_4d51:
    rra
    rrca
    ccf

jr_02b_4d54:
    ld b, b
    ld c, $35
    ld a, [hl]
    jr jr_02b_4dd2

    jr nc, jr_02b_4d54

jr_02b_4d5c:
    jr nz, jr_02b_4d6a

    ldh [rLCDC], a

jr_02b_4d60:
    ldh [rP1], a
    jr nz, @+$01

    rst $38
    nop
    rst $38
    db $f4
    nop
    rlca

jr_02b_4d6a:
    ld c, $07
    rst $38

jr_02b_4d6d:
    rst $38
    nop
    ld b, h
    stop
    ld bc, $0102
    ld sp, hl
    sbc l
    ld [hl], b
    ld c, [hl]
    jr c, jr_02b_4dba

    ld h, l
    dec de
    cp e
    ld [hl], a
    rst $38
    rst $38
    nop
    add h
    ld [$00f0], sp
    ld a, b
    ldh [$1f], a
    sbc e
    ld h, a
    xor a
    ld e, a
    db $dd
    ld a, $ff
    inc bc

jr_02b_4d91:
    rst $38
    inc d
    nop
    ld bc, $0003
    ld [bc], a
    ld a, [c]
    xor $f1
    ld a, [$a7c5]
    ld e, b
    ld h, b
    sbc a
    or b
    rst $08
    nop
    add h
    ret nz

    ret nc

    rst $28

jr_02b_4da8:
    jr jr_02b_4d91

    db $fc
    inc bc
    add b
    ld a, a
    ccf
    ld [hl], b
    adc a

jr_02b_4db1:
    ccf
    cp a
    ld b, b
    ret nc

    nop
    nop

jr_02b_4db7:
    sbc b
    ld l, e
    sub b

jr_02b_4dba:
    cpl
    jp nc, $e61f

    rla
    xor $81
    ld a, [hl]
    ld b, $f9
    inc b
    jr nz, jr_02b_4e06

jr_02b_4dc7:
    jr nz, jr_02b_4da8

    ld h, e
    sbc h
    jp $837c


    ld a, $cd
    ret z

    sbc a

jr_02b_4dd2:
    ld h, [hl]
    rlca
    ld hl, sp-$01
    ld b, b
    nop
    rlca
    dec de
    ld b, $6d

jr_02b_4ddc:
    ld e, $be

jr_02b_4dde:
    ld a, h
    add b

jr_02b_4de0:
    jr nz, jr_02b_4dde

    ld a, b
    or h
    ld a, b
    ret z

    jr nc, jr_02b_4ddc

    adc b
    inc l
    ret nc

    ld [$6098], sp
    inc c
    ldh a, [rP1]
    nop
    ld de, $1f0e
    nop
    ld [bc], a
    ld bc, $031c
    inc [hl]
    dec de
    ld c, [hl]
    ld sp, $057a
    inc de
    inc c
    nop
    rla
    nop
    ld [hl], c

jr_02b_4e06:
    ld c, $a2
    ld e, a
    rst $20
    ld e, $4e
    jr c, jr_02b_4dc7

    ld h, b
    pop hl

jr_02b_4e10:
    ld bc, $0000

jr_02b_4e13:
    ldh a, [$6f]
    ld d, b
    xor a
    jr c, jr_02b_4de0

    inc a
    di

jr_02b_4e1b:
    inc c
    ei
    ld [bc], a
    db $fd
    ld a, [hl-]
    push bc
    ld b, a
    cp b
    nop
    nop
    add e
    ld a, h
    cp [hl]
    ld b, c
    db $e3
    dec e
    pop bc
    ld a, $c7
    jr c, jr_02b_4e10

    rra
    rst $28
    dec d
    rst $38
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    rst $38
    jr nz, jr_02b_4e1b

    cp a
    cp a
    ld b, a

Jump_02b_4e3f:
    cp b
    ld l, b
    sub a
    jr nc, jr_02b_4e13

    scf
    ret z

    nop
    nop
    ret c

    daa
    jr c, jr_02b_4e13

jr_02b_4e4c:
    ldh a, [$ef]
    add sp, -$29
    ldh [$1f], a
    cp e
    inc d
    cp l
    ld b, $9f
    nop
    ld b, b
    ld d, l
    nop
    rst $38
    inc a
    jp $8f70


    ld a, a
    add b
    rst JumpTable
    sbc a
    rrca
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    adc b
    ld [hl], a
    ld e, h
    xor e
    inc a
    res 1, [hl]
    ld [hl], c
    di
    inc c
    ret c

    rlca
    xor a
    ld b, b
    ldh [rP1], a

jr_02b_4e7b:
    rst $38
    rst $38
    nop
    nop
    ld b, a
    nop
    ld a, [hl-]
    db $fc
    ld a, $c8
    ld d, $e8
    ld [bc], a
    db $fc
    db $fc
    jr nc, jr_02b_4e4c

    ldh [rIE], a
    rst $38
    nop
    rst $38
    ret nc

    nop
    inc bc
    inc b
    inc bc
    ld [$8007], sp
    ld bc, $0e11
    inc de
    inc c
    ld [hli], a
    dec e
    ld a, $01
    inc sp
    inc c
    jr nc, @+$11

    ld a, [hl-]
    dec b
    ld l, [hl]
    ret nc

    ld a, [bc]
    nop
    db $10
    jr c, jr_02b_4ebf

    jr z, jr_02b_4ec1

    xor $10
    add hl, sp
    add $ff
    rst $38
    add h
    nop
    rst AddAToHL
    jr z, @+$3b

    sub $38
    ld d, h

Jump_02b_4ebf:
jr_02b_4ebf:
    xor e
    ld a, l

jr_02b_4ec1:
    sub d
    ld d, h
    cp e
    ld a, h
    cp e
    cp $39
    ld a, [bc]
    nop
    and a
    ld b, l
    dec sp
    rst $38
    nop
    ld e, e
    ld e, d
    sub e
    ld l, h
    add sp, $17
    ld c, e
    inc [hl]
    cpl
    db $10
    inc b
    rra
    nop
    rla
    ld a, [bc]
    rrca
    ld [bc], a
    rrca
    dec d
    ld a, [bc]
    ld e, $09
    rrca
    nop
    ld h, c
    ld a, h
    rst AddAToHL
    cp e
    ld a, l
    add $93
    ld l, l
    rst $28
    sub d
    cp e
    sub e
    add hl, hl
    sub $83
    dec b
    jr jr_02b_4e7b

    rst $38
    ld b, h
    rst $38
    nop
    ld a, l
    rst $38
    xor d
    ld a, l
    ld a, l
    ld a, h
    ld a, h
    nop
    ld b, b
    nop
    nop
    ld [$000e], sp
    ld sp, hl
    ld b, $ec
    di
    nop
    add $f9
    rst $38
    nop
    ld b, b
    cp a
    and b
    rst JumpTable
    nop
    ret nc

    rst $28

jr_02b_4f1b:
    ld e, b
    rst $20
    inc e
    db $e3
    ld [hl], b
    adc a
    inc b
    ret nz

    ccf
    add b
    ld a, a
    rst $38
    ld e, $10
    nop
    ld h, b
    nop
    nop
    db $d3
    jr nz, jr_02b_4f87

    and d
    ccf
    add $17
    nop
    xor $81
    ld a, [hl]
    ld b, $f9
    jr nz, jr_02b_4f1b

    ld h, e
    nop
    sbc h
    jp Jump_02b_7c3f


    add e
    ld a, $cd
    ccf

jr_02b_4f46:
    nop
    ret z

    sbc a
    ld h, [hl]
    ld c, $07
    ld de, $1f0e
    nop
    nop
    ld [bc], a
    ld bc, $011e
    inc [hl]
    dec de
    ld c, h
    nop
    inc sp
    ld a, h
    inc bc
    rla
    ld [$0976], sp

jr_02b_4f60:
    xor l
    nop
    ld d, d
    ld hl, sp+$07
    ld d, b
    cpl
    or b
    ld l, a
    rst $38
    nop
    dec b
    rrca
    nop
    cp e
    ld [hl], a
    ldh a, [$6f]

jr_02b_4f72:
    ld d, b
    nop
    xor a
    jr nc, jr_02b_4f46

    jr c, jr_02b_4f60

    jr jr_02b_4f72

    jr jr_02b_4f7d

jr_02b_4f7d:
    rst $30
    ld [$f8f7], sp
    rlca
    rrca
    ldh a, [rNR23]
    nop
    rst $20

jr_02b_4f87:
    rst $38
    rlca
    dec a
    jp $00ef


    ld b, a
    nop
    add b
    add a
    nop
    inc bc
    rst $38
    nop
    rst $38
    jr nz, jr_02b_4f98

jr_02b_4f98:
    rst JumpTable
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, e
    cp h
    inc h
    nop
    db $db

jr_02b_4fa2:
    add hl, sp
    add $1b
    db $e4
    adc $31

jr_02b_4fa8:
    ld a, $00   ; xor a
    pop bc
    ei
    db $fc
    db $fd
    cp $ff
    nop
    rst AddAToHL
    nop
    jr nz, jr_02b_4fa8

    nop
    rrca
    ldh a, [rIF]
    ldh a, [rDIV]
    nop
    ei
    ld e, $e1
    jp $813c


    ld a, [hl]
    sbc a
    ld h, b
    ld l, d
    adc a
    jr nz, jr_02b_4fc9

jr_02b_4fc9:
    ld d, b
    rlca
    ld hl, sp-$78
    ld [hl], a
    ld e, h

jr_02b_4fcf:
    nop
    xor e
    inc a
    res 1, [hl]
    ld [hl], c
    ld [hl], e
    inc c
    jr jr_02b_5009

    rlca
    rrca
    rra
    ld a, b
    nop
    ld b, b
    jr jr_02b_4fe1

jr_02b_4fe1:
    jr c, @+$12

    nop
    ld a, c
    jr nc, jr_02b_4fa2

    ld [hl], c
    rst $08
    inc sp
    dec e
    db $e3
    nop
    inc bc
    db $fc
    ld b, a
    cp b
    jp $9e3f


    ld h, c
    jr nz, @+$01

    ld c, $1d
    jr nc, jr_02b_502b

    nop
    ld d, b
    jr nz, jr_02b_4fcf

    inc b
    ld h, b
    ret nc

    ldh [$e0], a
    ret nz

    ld bc, $3010
    ret nz

jr_02b_5009:
    nop
    ret z

    jr nc, jr_02b_5065

    and b
    cp b
    ret nc

    ld a, h
    add b
    nop
    ccf

jr_02b_5014:
    call $f00f
    nop
    rst $38
    sbc b
    ld h, a
    nop
    ld a, $c1
    rst $38
    ld [bc], a
    dec a
    jp nz, $c837

    nop

jr_02b_5025:
    rra
    add sp, -$61
    ld l, b
    swap a

jr_02b_502b:
    rst $20
    jr jr_02b_502e

jr_02b_502e:
    ldh a, [rIF]
    rst $28
    nop
    ret nc

    jr nz, jr_02b_5025

    nop
    nop
    sbc $3c
    rra
    db $e4
    dec bc
    db $f4
    ld bc, $00fe
    dec a
    jp nz, $04fe

    ld [$a404], a
    ld b, b
    nop
    ldh [rLCDC], a
    ldh a, [rLCDC]
    ld d, b
    and b
    sub b
    ld h, b
    db $10
    jr nz, jr_02b_5014

    ret nz

    add c
    ld a, b
    inc c
    nop
    ld a, [bc]
    inc b
    nop
    add hl, bc
    ld b, $08
    rlca
    db $fc
    inc bc
    cp $81
    nop

jr_02b_5065:
    add b

jr_02b_5066:
    ld a, a
    ret nz

    ccf
    ld h, c
    sbc [hl]
    or b
    rst $08
    nop
    call c, $18e3
    rst $20
    ld h, b
    sbc a
    add c
    ld a, [hl]
    nop
    rst $20
    jr jr_02b_50f9

    add b
    ld a, $c1
    cp h
    ld b, e
    nop
    ld sp, hl
    ld b, $37
    ret z

    ld a, a
    add b
    ld a, a
    add b
    ld b, $df
    nop
    sbc a
    nop
    rrca
    ld bc, $7f08
    and b
    and a
    nop
    jr jr_02b_5066

    rrca
    rst $08
    nop
    and b
    ld b, b
    ldh [$a2], a
    ld h, c
    ld l, b
    ld bc, $0989
    inc b
    inc bc
    rlca
    rlca
    ld [$0103], sp
    nop
    rra
    ld bc, $0937
    ld a, $15
    rla
    jr nz, jr_02b_50b3

jr_02b_50b3:
    rra
    nop
    ld h, $1f
    ld de, $080f
    rlca
    nop
    db $eb
    inc b
    db $dd
    db $e3
    ld l, a
    sbc a
    cp h
    ld a, a
    db $10
    ld h, b
    rst $38
    add b
    ld [hl], a
    add hl, bc
    nop
    rst $38
    ld bc, $fffe
    ld b, b
    nop
    add b
    ld b, a
    add b
    inc a
    jp $2fd0


    nop
    nop
    db $fc

jr_02b_50db:
    di
    cp $f9
    rlca
    ld hl, sp+$18
    rst $20
    ld h, b
    sbc a
    add c
    ld a, [hl]
    ret nz

    ccf
    jr nc, @-$2f

    db $fd
    nop
    nop
    jr c, @+$71

    db $10
    rst $30
    ld a, [bc]
    rrca
    or $17
    xor $00
    ld a, [bc]
    cp a

jr_02b_50f9:
    add hl, bc
    or $07

jr_02b_50fc:
    ld hl, sp+$0e

jr_02b_50fe:
    pop af
    rrca
    cp $01
    rst $38
    ld e, $e1
    ld b, h
    ld c, [hl]
    rst $38
    ret nc

    nop
    jr nc, jr_02b_50fc

    jr nz, jr_02b_50fe

    ld h, b
    ld d, h
    nop
    ldh [$f0], a
    ld hl, sp-$02
    dec e
    xor $f1
    ld e, $07
    ld hl, sp+$2f
    call nc, $04fe
    ld [$1701], sp
    dec l
    ld d, $3d
    ld [bc], a
    ld [$0e73], sp
    pop de
    cpl
    ldh a, [rVBK]
    cp b
    ld b, a
    add sp, $00
    rlca
    nop
    dec l
    ld [de], a
    ld h, a
    jr jr_02b_50db

    ld e, h
    di
    rrca
    rla
    ld c, $2f
    jr jr_02b_517c

    xor b
    nop
    nop
    rst $38
    rst $38
    rst $38
    inc b
    ei
    add h
    ld a, e
    and $99
    dec sp
    call nz, $3ac5
    nop
    nop
    ld [bc], a
    db $fd
    ld a, [hl]
    add c
    jp nz, $833d

    ld a, l
    adc a
    ld [hl], b
    pop bc
    ld a, $9f
    ld l, d
    ld a, a
    nop
    nop
    nop
    db $fc
    db $e3
    ld a, $f1
    ld b, $f9
    inc b
    ei
    ld [$10f7], sp
    rst $28
    inc a
    jp $18e7


    nop
    nop
    ret


    ld [hl], $50
    xor a
    ld h, b
    sbc a

jr_02b_517c:
    inc hl
    call c, $c7f8
    ldh a, [$ef]
    ei
    dec b
    rrca
    nop
    ld [$0f01], sp
    rst $38
    ld c, $3f
    rst $00
    ldh a, [$08]
    rst $30
    inc e
    db $eb
    rra
    add sp, $3c
    jp $00f0


    nop
    ld hl, sp+$07
    xor $11
    rst $08
    inc a
    db $fd
    ld a, $7b
    sbc h
    cpl
    ret nc

    cp $41
    rst $38
    nop
    ld bc, $c840
    adc $b4
    call nz, $be38
    ld a, h
    ccf
    scf
    sub l
    ld l, d
    jp nz, $3c3c

    ret nz

    rlca
    push de
    nop
    inc b
    ld hl, sp+$18
    ldh [$f0], a
    add b
    add b
    add b
    rst $38
    ld b, c
    nop
    ld bc, $0102
    inc b
    inc bc
    rlca
    ret nc

    nop
    nop
    rrca
    dec de
    inc c
    dec h
    ld a, [de]
    ld a, $03
    ld a, [bc]
    rlca
    inc a
    rlca
    ld [hl], h
    cpl
    sub b
    nop

jr_02b_51e0:
    rra
    nop
    ld h, $11
    rrca
    ld [$ef07], sp
    nop
    db $db
    rst $20
    cpl
    rst JumpTable
    call c, $153f
    ld bc, $b0ff
    ld a, a
    ld h, b
    ret nz

    add b
    ld bc, $02fe

jr_02b_51fa:
    db $fd
    ld bc, $00fe
    pop de
    nop
    nop
    add b
    ld b, b
    add b
    cp $7d
    cp $ef
    ldh a, [$b0]
    rst $08
    ld b, b
    cp a
    nop
    nop
    jr nc, jr_02b_51e0

    jr jr_02b_51fa

    inc e
    db $e3
    ld h, b
    sbc a
    add c
    ld a, a
    inc b
    ei
    ld [bc], a
    db $fd
    jp nz, $013d

    ld [bc], a
    ld c, $03
    nop
    rlca
    ld [bc], a
    rrca
    ld b, $f7
    adc c
    db $76
    rst $00
    jr c, jr_02b_524b

    ld [c], a
    pop af
    dec d
    nop
    ld hl, sp+$00
    rst $38
    rlca
    rlca
    rst $20
    add e
    db $fc
    ld a, h
    add e
    cp $1d
    rst $38
    ld a, $fd
    nop
    nop
    inc c
    inc e
    ld [$183c], sp
    ld a, h
    jr c, @-$02

jr_02b_524b:
    ld a, b
    ld b, c
    ld b, b
    ld a, b
    cp h
    ld b, h
    cp b
    ld hl, sp+$40
    or h
    add h
    inc e
    ldh [$bc], a
    ld d, b
    ld hl, sp+$30
    nop
    dec d
    dec sp
    sbc b
    ld l, a
    ldh a, [rIF]
    ld hl, $621e
    dec e
    and d
    ld e, l
    call nz, Call_02b_4c44
    nop
    nop
    sbc [hl]
    ld a, c
    cp l
    ld [hl], d
    or h
    ld l, e
    ld a, [$d94d]
    ld b, $1e
    dec c
    rrca
    ld bc, $0003
    ld [bc], a
    and b
    ld [hli], a
    nop
    rst $38
    ld bc, $02fe
    db $fd
    db $dd
    db $dd

jr_02b_5289:
    db $dd
    inc de
    db $ec
    ld de, $a0ee
    nop
    ld [$f7f7], sp
    call c, $3e23
    rst $00
    rst $38
    rrca
    ld l, l
    add e
    jp $8080


    nop
    jr z, jr_02b_52a1

jr_02b_52a1:
    jr jr_02b_52d6

    call z, $e7e7
    db $10
    rst $28
    jr nz, jr_02b_5289

jr_02b_52aa:
    ld b, b
    cp a
    jr nc, @-$2f

    rst $28
    stop
    nop
    ret z

    scf
    ld d, b
    xor a
    ld [hl], b
    adc a
    jr nc, jr_02b_5289

    di
    db $ed
    ei
    push af
    db $fd
    ld [bc], a
    inc bc
    nop
    and b
    nop
    rst $38
    ld a, [hl-]
    inc e
    ld a, $c1
    jr nz, jr_02b_52aa

    ld [hl], b
    xor a
    ld a, [hl]
    and c
    di
    inc c
    ret nz

    ccf
    nop
    dec b
    nop

jr_02b_52d6:
    ld h, b
    sbc a
    jr c, jr_02b_52a1

    rst $30
    ld l, b
    rst $38
    ld b, a
    cp $87
    ei
    inc c
    db $fc
    ret nz

    ld [$f810], sp
    jr c, @-$2e

    db $10
    ldh [$f0], a
    db $fc
    jr nz, jr_02b_5343

    xor b
    ld b, $0a
    db $f4
    pop af
    ld c, $04
    ld a, a
    nop

jr_02b_52f8:
    rla
    xor $7f
    add d
    rst $38
    ld a, a
    add b
    sbc [hl]
    rst $38
    ret nc

    nop
    inc bc
    inc b
    inc bc
    ld [$4007], sp
    ld bc, $100f
    ld de, $230e
    inc e
    ld [hli], a
    dec e
    ld l, $11
    ld [hl], $09
    inc sp
    inc c
    ld [hl], b
    ret nc

    ld a, [bc]
    nop
    db $10
    jr c, jr_02b_532f

    jr z, jr_02b_5331

    xor $10
    add hl, sp
    add $ff
    rst $38
    nop
    and d
    ld d, h
    add $39
    ld l, l
    sub d
    add hl, sp

jr_02b_532f:
    add $7c

jr_02b_5331:
    sub e
    cp e
    xor e
    ld a, l
    sub d
    cp e
    ld b, b
    inc b
    dec [hl]
    ld c, d
    adc $31
    cp l
    ld b, e
    and a
    ld e, b
    and a
    ld e, e

jr_02b_5343:
    rst $30
    ld a, [bc]
    ld c, e
    add hl, hl
    ld d, $00
    rra
    nop
    ld a, [de]
    dec b
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    inc de
    inc c

jr_02b_5353:
    rra
    ld a, [bc]
    rrca
    ld b, h
    inc b
    cp e
    ld a, h
    cp $39
    rst AddAToHL
    ld a, l
    add $93
    ld l, l
    rst $28
    db $10
    rst $00
    add e
    ld a, h
    jr nz, jr_02b_52f8

    ld a, l
    ld a, h
    rst $38
    sub d
    add hl, hl
    sub $83
    ld a, h
    add d
    add d
    ld a, a
    ld bc, $0003
    ld [bc], a
    add b
    jp z, Jump_02b_58a4

    and $18
    ld a, d
    add h
    inc [hl]
    or h
    sub $a8
    or d
    ld c, h
    ld a, [hl-]
    call nz, $0440
    ld d, b
    xor h
    ret z

    or b
    ret c

    and b
    sub b
    ld h, b
    jr nc, jr_02b_5353

    ld [$f8f0], sp
    ldh a, [rP1]
    rst $38
    ld b, b

jr_02b_539a:
    nop
    ld bc, $0102
    inc b
    inc bc
    inc b
    inc bc
    ld b, b
    ld b, b
    ld b, $09
    rrca
    nop
    ld [$1807], sp
    rlca
    add hl, de
    dec d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc de
    inc c
    ret nc

    nop
    nop
    rlca
    jr c, jr_02b_53c0

    ret nc

    cpl
    add hl, hl
    sub $6f
    sub c
    ld b, l

jr_02b_53c0:
    cp e
    rst $00
    ld a, [hl-]
    ld b, b
    ld [bc], a
    ld a, l
    add e
    add l
    ld a, e
    rst $00
    dec sp
    daa
    db $db
    dec e
    ei
    add a
    ld a, h
    jr c, jr_02b_539a

    sub d
    add b
    ld [bc], a
    dec bc
    inc b
    ld c, $01
    jr jr_02b_53e3

    jr jr_02b_53e5

    inc e
    inc bc
    ld d, $09
    dec e

jr_02b_53e3:
    ld [bc], a
    inc b

jr_02b_53e5:
    dec e
    ld a, a
    nop
    ld b, $01
    ld bc, $0101
    jr z, jr_02b_53ef

jr_02b_53ef:
    cp $ff
    jr c, jr_02b_542c

    dec e
    inc e
    db $e3
    daa
    rst JumpTable
    ld [hl], a
    xor c
    or $29
    ld [hl-], a
    call $1f00
    nop
    ld a, h
    sbc a
    scf
    ret z

    ret c

    daa
    rra
    add sp, -$09
    xor a
    rst $38
    db $fd
    nop
    nop
    ld bc, $0102
    inc b
    inc bc
    ld [$1007], sp
    rrca
    sub b
    nop
    db $10
    rrca
    cpl
    jr z, jr_02b_5436

    jr z, jr_02b_5438

    ld c, c
    ld [hl], $45
    ld a, [hl-]
    ld b, l
    ld a, [hl-]
    ld b, e
    inc a
    sub b
    nop
    rlca

jr_02b_542c:
    nop
    jr c, jr_02b_53ef

    ccf
    db $10
    rst $28
    add hl, hl
    sub $4f
    or c

jr_02b_5436:
    ld b, l
    cp e

jr_02b_5438:
    add a
    ld a, d
    ld b, b
    ld [bc], a
    ld a, l
    add e
    add l
    ld a, e
    rst $00
    dec sp
    daa
    db $db
    dec e
    ei
    add a
    ld a, h
    jr c, @-$37

    sbc d
    nop
    ld [de], a
    add hl, sp
    ld b, e
    inc a
    ld l, [hl]
    ld de, $1768
    ld e, b
    daa
    ld c, h
    inc sp
    ld b, [hl]
    cpl
    db $10
    ld b, $04
    jr z, jr_02b_5462

    ld [de], a
    dec c
    inc d

jr_02b_5462:
    dec bc
    inc c
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0100
    nop
    jr z, jr_02b_546e

jr_02b_546e:
    cp $ff
    inc a
    dec [hl]
    dec e
    inc e
    db $e3
    daa
    rst JumpTable
    ld [hl], a
    xor c
    ld a, [c]
    dec l
    or b
    ld c, a
    nop
    nop
    ret c

    daa
    ld h, a
    sbc b
    ld hl, sp-$39
    rst $30
    adc b
    rst $38
    rrca
    rst $28
    rra

jr_02b_548b:
    db $db
    rlca
    add a
    nop
    ld d, l
    ld d, h
    nop
    ld bc, $3101
    dec a
    ccf

jr_02b_5497:
    rra
    rra

jr_02b_5499:
    rst $38
    inc bc

jr_02b_549b:
    ld [bc], a
    xor b
    jr nz, jr_02b_549b

    rlca
    ld [hl], b
    rrca
    jr nc, jr_02b_54b3

    rra
    rra
    rra
    rra
    db $10
    rrca
    nop
    add e
    nop
    rst AddAToHL
    nop
    rst $38
    db $10
    rst $38
    db $10

jr_02b_54b3:
    ld b, b
    rst $28
    ld bc, $ff08
    add $11
    rst $28
    jr c, @-$27

    inc bc
    jr c, jr_02b_5497

    jr z, jr_02b_5499

    jr c, jr_02b_548b

    inc d
    ld [$180b], sp
    ld [bc], a
    inc e
    inc bc
    jr nc, jr_02b_54dc

    jr nz, jr_02b_54ee

    ld bc, $2f10
    nop
    db $10
    add hl, sp
    ld b, $37
    ld [$021d], sp
    jr jr_02b_54dc

jr_02b_54dc:
    rlca
    dec bc
    inc b
    rrca

jr_02b_54e0:
    nop
    dec bc
    inc b
    dec c
    inc b
    ld [bc], a
    rlca
    nop
    nop
    nop
    dec hl
    jr nz, jr_02b_54ff

    db $ed

jr_02b_54ee:
    nop
    cp c
    ld d, [hl]
    add hl, hl
    sub $19
    and $03
    db $fc
    nop
    sbc e
    ld h, h
    cp d
    ld d, l
    xor d
    ld d, l
    db $db

jr_02b_54ff:
    inc h
    nop
    jp nz, Jump_02b_623c

    sbc h
    sub [hl]
    ld [$000c], sp
    nop
    jr c, @-$3e

    ld l, b
    or b
    ld c, b
    ldh a, [$08]
    ldh a, [rP1]
    db $10
    ldh [$30], a
    ret nz

    ret nc

    jr nz, jr_02b_553a

    ret nz

    ld bc, $00e0
    jr nz, jr_02b_54e0

    ld h, b
    add b
    ret nz

    add hl, sp
    ld [$0080], sp
    ld d, b
    rrca
    nop
    rrca
    ld bc, $030c
    ld [$0701], sp
    db $10
    rrca
    ld [hl], b
    rrca
    ld h, b
    rra
    ld bc, $2010

jr_02b_553a:
    ld b, b
    ccf
    ld bc, $f720
    nop
    rst $38
    dec b
    db $fd
    nop
    dec sp
    push bc
    ei
    inc b
    ei
    inc bc
    db $fc
    nop
    inc bc
    rst $38
    ld bc, $03fe
    db $fd
    dec b
    dec bc
    ld [$400d], sp
    jr nz, @+$42

    ccf
    dec l
    db $10
    ld d, b
    cpl
    ld c, b
    scf
    ld b, [hl]
    ld b, b
    add hl, sp
    and c
    db $10
    ld [de], a
    dec c
    inc d
    dec bc
    inc c
    inc bc
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    ld bc, $0003
    jr nc, jr_02b_5577

    nop

jr_02b_5577:
    dec l
    db $10
    dec hl
    db $10
    inc hl
    call c, $bb45
    nop
    call nz, $c33b
    inc a
    ld h, b
    sbc a
    inc hl
    call c, $f500
    set 6, h
    adc e
    ei
    inc b
    db $e4
    inc bc
    inc d
    jp nz, $8101

    add c
    jr c, jr_02b_559f

    ld bc, $0318
    nop
    nop
    ld a, $01

jr_02b_559f:
    inc a
    inc bc
    inc e
    inc bc
    jr @+$09

    ld b, b
    ld [$2801], sp
    nop
    nop
    ld sp, $3b00
    ld bc, $7f00
    nop
    ld a, a
    inc bc
    rst $38
    inc e
    db $e3
    ld a, l
    ld a, [de]
    add e
    db $fd
    ld [bc], a
    ld bc, $7708
    db $10

jr_02b_55c0:
    inc bc
    rlca
    jr nz, jr_02b_55c0

    ld [$0708], sp
    inc c
    inc bc
    add hl, sp
    ld [$0403], sp
    inc bc
    ld b, l
    ld b, $6f
    ld [$0102], sp
    ld bc, $084b
    ld bc, $1801
    ret nz

    nop
    jr nz, jr_02b_5607

    db $10
    jp nz, $013d

    cp $1b
    db $e4
    nop
    ld [hl], e
    adc l
    or d
    ld c, l

jr_02b_55ea:
    ld de, $33ee
    call z, $fb00
    dec b
    ld e, d
    and l
    add hl, bc
    or $8c
    ld [hl], e
    ld h, b
    db $fc
    ld sp, $0018
    db $10
    ld bc, $0300
    ld bc, $8006

jr_02b_5603:
    ld [hl], l
    ld [$1837], sp

jr_02b_5607:
    ld c, a
    jr nc, @+$7e

    inc bc
    ld e, h
    ld [bc], a
    inc hl
    sub b
    ld l, a
    or b
    ld c, a
    ldh [$73], a
    add hl, de
    stop
    rrca
    stop
    jr c, jr_02b_562c

    rst AddAToHL
    jr c, @+$01

    nop
    cp e
    jr c, jr_02b_55ea

    cp $11
    rst $38
    db $10
    xor e
    inc e
    ld d, h
    jr z, jr_02b_5603

jr_02b_562c:
    sub a
    ld hl, $1177
    add hl, bc
    jr @+$09

    inc a
    jr nz, jr_02b_5649

    jr z, jr_02b_5661

    ld [$0e31], sp
    rra
    nop
    inc de
    nop
    inc c
    add hl, de
    ld b, $0f
    nop
    add hl, bc
    ld b, $14
    inc bc
    dec bc

jr_02b_5649:
    db $10
    rrca
    jr jr_02b_5654

    rrca
    ld e, e
    jr jr_02b_567a

    jr nz, jr_02b_5653

jr_02b_5653:
    sub d

jr_02b_5654:
    ld l, l
    add hl, sp
    sub $29
    sub $11
    xor $00
    ld bc, $bbfe
    ld b, h
    cp e

jr_02b_5661:
    ld d, h
    xor d
    ld d, l
    nop
    sub d
    ld l, l
    add $39
    rst $00
    jr c, jr_02b_56d8

    db $10
    jr nz, @+$3a

    nop
    ld b, b
    nop
    nop
    rrca
    ld b, $00
    rrca
    nop
    ld a, h
    nop

jr_02b_567a:
    ld b, b

jr_02b_567b:
    ld hl, sp+$41
    call $9630
    ld a, c
    cp d
    ld l, l
    add b
    ld hl, $3d52
    ld b, e
    ld a, $47
    ccf
    daa
    ld bc, $3b1f
    rlca
    ld b, a
    jr c, jr_02b_56e2

    ccf
    add hl, hl
    nop
    jr nz, jr_02b_56b7

    db $e3
    inc e
    sbc h
    ld h, b
    ld h, b
    nop
    add b
    ldh [rSB], a
    nop
    add d
    nop
    ld a, h
    nop
    add $00
    jr c, jr_02b_56ef

    cp d
    ld a, h
    rst $38
    cp $c7
    cp $00  ; and a / or a
    sub e
    cp $83
    ld a, l
    add $bb

jr_02b_56b7:
    ld a, l
    rst $38
    nop
    add e
    rst $38
    cp e
    rst AddAToHL
    jr c, jr_02b_567b

    rst $00
    ld a, l
    add hl, bc
    add e
    sub $39
    ld a, l
    ld e, a
    ld d, h
    jr c, jr_02b_56ee

    jr z, jr_02b_5705

    nop
    nop
    ld h, $01
    ld b, c
    ld [hl], b
    nop
    db $fc
    nop
    nop
    rst $38

jr_02b_56d8:
    nop
    pop af
    ld c, $66
    rra
    ld l, a
    ld bc, $2f19
    add hl, de

jr_02b_56e2:
    ld d, $0f
    ld [$6107], sp
    inc bc
    rlca
    nop
    ld [bc], a
    ld bc, $0304

jr_02b_56ee:
    ld h, c

jr_02b_56ef:
    daa
    ld [$0106], sp
    dec b
    ld [bc], a
    cpl
    ld h, b
    nop
    ldh a, [rP1]
    nop
    ret z

    nop
    add a
    nop
    inc c
    inc bc
    inc d
    nop
    dec bc
    daa

jr_02b_5705:
    rra
    xor a
    inc e
    ld l, a
    sbc c
    cpl
    nop
    ret c

    scf
    db $ec
    ld a, e
    rst $30
    rst $38
    ld hl, sp-$01
    inc b
    ei
    ld l, l
    di
    db $eb
    inc e
    daa
    db $fd
    di
    nop
    ld l, a
    ldh a, [rNR22]
    ldh [$35], a
    jp $00e7


    jr nz, jr_02b_572b

    nop
    nop
    inc h

jr_02b_572b:
    ld bc, $0500
    nop
    dec bc
    ld b, $04
    add hl, bc
    ld b, $06
    ld bc, $6d29
    inc bc
    nop
    nop
    rlca
    nop
    ld [$1707], sp
    rrca
    rla
    nop
    dec c
    daa
    rra
    jr nz, jr_02b_5767

    ldh [$1f], a
    or a
    ld [$1f4e], sp
    xor $3f
    ld hl, $3ff6
    ld hl, sp+$00
    sbc a
    ld a, h
    ld a, a
    inc bc
    ret nz

    nop
    ldh [rP1], a
    ld bc, $00f8
    db $fc
    nop
    ld e, h
    add b
    ld b, h
    ld b, c
    add b

jr_02b_5767:
    daa
    jp z, $9134

    ld l, [hl]
    ld a, b
    rst $38
    db $fd
    nop
    adc [hl]
    cp $95
    db $fc
    add a
    ld a, l
    add $bb
    ld [hli], a
    ld a, h
    nop
    nop
    inc de
    ld hl, sp+$00
    sbc h
    ld b, c
    adc [hl]
    nop
    nop
    rst $38
    nop
    rrca
    ldh a, [$0d]
    inc bc
    ld e, $00
    ld bc, $0837
    ld a, e
    inc c
    sbc $20
    db $ec
    ld e, b
    jr nc, jr_02b_57ce

    ld [hl], b
    sbc a

jr_02b_5799:
    nop
    inc c
    cp $81
    cp $00  ; and a / or a
    sbc a
    cp $5f
    db $fc
    ld l, a
    cp $71
    cp e
    nop
    ld a, h
    add c
    ld a, [hl]
    ld b, e
    inc a
    ld e, [hl]
    jr nz, jr_02b_57d8

    ld [$2410], sp
    jr jr_02b_57cd

    rra
    add hl, bc
    ld [hl], a
    ld hl, sp+$76
    nop
    ret c

    ld [hl], h
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    ret nc

    inc de
    add hl, bc
    nop
    inc e
    ld bc, $0381
    nop
    inc b

jr_02b_57cd:
    inc bc

jr_02b_57ce:
    ld [bc], a
    ld [$0907], sp
    rlca
    ld sp, $550f
    nop
    nop

jr_02b_57d8:
    jr c, jr_02b_5856

    ld a, h
    cp $c6
    jr c, jr_02b_5799

    ld a, h
    cp d
    ld l, h
    cp d
    ld l, h
    inc d
    nop
    cp $bb
    ld a, h
    ld bc, $bf1d
    ld a, [hl]
    ld a, a
    cp [hl]
    rst $28
    sbc $ef
    ldh a, [rIE]
    ei
    push af
    ld d, l
    nop
    ld a, b
    ld a, h
    inc e
    inc b
    inc b
    ld a, h
    nop
    nop
    jp z, $9134

    ld l, [hl]
    ld a, b
    rst $38
    db $fd
    adc [hl]
    cp $95
    db $fc
    add a
    ld a, l
    add $bb
    ld a, h
    rst $38
    rst $38
    nop
    push af
    ld d, a
    nop
    ld hl, sp-$64
    sbc h
    adc h
    adc h
    rlca
    rst $38
    nop
    ld c, b
    scf
    inc [hl]
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    db $10
    dec b
    ld bc, $f3fd
    cp $37
    ld [$0c7b], sp
    rst JumpTable
    ld hl, $31ef
    ei
    ld [hl], e
    ld b, $58
    ld bc, $0304
    inc b
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    add b
    ld b, b
    rst $38
    add b
    ld sp, hl
    cp [hl]
    db $fc
    ccf
    db $fd
    cp a
    sbc l
    ld sp, hl
    rst JumpTable
    ldh a, [$ef]
    jp hl


    or $00

jr_02b_5856:
    ld e, a
    nop
    rst $08
    ldh a, [$08]
    ldh a, [rNR10]
    ldh [$60], a
    add b
    add b
    add b
    ret nc

    ld bc, $f800
    ld e, $e0
    rst $28
    ldh a, [$ef]
    jr nc, @-$0f

    ldh a, [rNR34]
    ldh [$f8], a
    rst $38

jr_02b_5872:
    rst $38
    nop
    rst $38
    ld b, b
    nop
    jr jr_02b_58a4

    db $10
    inc l
    inc de
    db $10
    rrca
    ld d, b

jr_02b_587f:
    nop
    rrca
    ld de, $0b13
    rlca
    dec bc
    rlca
    dec b
    inc bc
    ld a, [hl]
    ld bc, $24db
    rst $38
    inc h
    rst $38
    ld b, b
    nop
    inc bc
    sbc h
    inc bc
    ld h, e
    sbc a
    ld b, a
    cp h
    db $10
    ld [$437f], sp
    cp a
    or b
    rst $38
    ld a, b
    ld hl, sp+$77
    rst $30

Jump_02b_58a4:
jr_02b_58a4:
    ld l, a
    rst $28
    add hl, de
    ret nc

    rst $38
    jp nc, Jump_02b_40ff

    nop
    ldh a, [$78]
    add b
    jr c, jr_02b_5872

    cp b
    ret nz

    ld b, c
    db $10
    add b
    ld a, h
    adc $00
    add [hl]
    nop
    ld b, h
    jr z, jr_02b_587f

    ldh a, [$90]
    ldh [$90], a
    ldh [rIE], a
    ret nc

    nop
    xor $b1
    ld c, [hl]
    ret nz

    ccf
    ld d, b
    nop
    rra
    inc hl
    daa
    scf
    rrca
    dec de
    rlca
    rlca
    ld bc, $003f
    ld l, l
    ld [de], a
    ld a, a
    ld [de], a
    call nc, RST_00
    inc bc
    rlca
    ld [$7607], sp
    rrca

Call_02b_58e6:
    adc a
    ld a, c
    adc a
    ld a, c
    add [hl]
    ld a, a
    ld [$ff02], sp
    or b
    ld a, a
    ld sp, hl
    ld a, [hl]
    ld a, h
    inc a
    ei
    ei
    or a
    ld [hl], a
    adc h
    cp a
    ld l, b
    ld l, c
    ld d, l
    ld bc, $e000
    ldh a, [$f0]
    ldh a, [$60]
    add b
    ld h, b
    add b
    ld b, b
    add b
    call z, $0054
    nop
    adc [hl]
    rlca
    jp $c022


    sub h
    ldh [$f8], a
    ret nz

    ret z

    ld [hl], b
    ret z

    ld [hl], b
    nop
    ld a, [hli]
    ld de, $0001
    ld [bc], a
    ld bc, $0304
    inc c
    inc bc
    dec bc
    inc b
    ld c, $0e
    ld c, $07
    rst $38
    nop
    ld l, $10
    jr z, jr_02b_5942

    jr @-$01

jr_02b_5934:
    ld d, h
    nop
    jr c, jr_02b_5934

    db $e4
    rlca
    inc c
    inc bc
    ld a, [bc]
    add b
    cpl
    inc d
    dec bc
    daa

jr_02b_5942:
    rra
    inc e
    add hl, de
    jr jr_02b_595e

    inc c
    dec sp
    rlca
    rst AddAToHL
    jr c, jr_02b_599d

    nop
    ei
    ld a, a
    db $fd
    ld [hl], e
    db $fc
    inc bc
    db $fc
    inc sp
    db $fd
    ld a, e
    call z, $cc7b
    or e
    ld a, l
    dec d

jr_02b_595e:
    rst $38
    nop
    rst $00
    jr c, jr_02b_59e2

    ld a, $1c
    ld b, b
    nop
    ld b, b
    inc c
    nop
    ld a, [de]
    nop
    ld h, e
    nop
    nop
    ld d, h
    inc hl
    ld e, c
    scf
    ld a, e
    ld [hl], $3b
    ld d, $00
    dec a
    dec bc
    cpl
    inc d
    ld l, $19
    rra
    inc b
    jr jr_02b_5988

    ld bc, $7c01
    sbc l
    inc bc
    nop

jr_02b_5988:
    inc b
    nop
    inc bc
    jp hl


    rlca
    sbc e
    ld h, [hl]
    cp e
    db $76
    ld a, l
    nop
    dec sp
    ld a, a
    inc a
    ld a, [hl]
    ld bc, $1c3f
    ld a, $08
    dec e

jr_02b_599d:
    dec h
    jr @+$1a

    sbc a
    rlca
    nop
    ld a, [bc]
    nop
    inc b
    ld d, $0c
    rra
    inc c
    ld a, [hl-]
    dec c
    ld e, l
    nop
    dec hl
    ld e, a
    ld a, [hli]
    ld l, a
    ld [hl-], a
    dec sp
    dec d
    add hl, sp
    nop
    ld b, $2f
    db $10
    ld h, $1b
    rra
    ld bc, $8201
    sbc a
    add b
    nop
    ret nz

    nop
    ld b, b
    ld b, e
    jr nz, jr_02b_59c9

jr_02b_59c9:
    ret nz

    sbc h
    ldh [$d6], a
    ld h, b
    jp nc, $be60

    inc bc
    ret nz

    jp c, $f43c

    ld hl, sp-$08
    ld c, a
    inc sp
    add b
    ld h, b
    ld [$1400], sp
    ld [$0c12], sp

jr_02b_59e2:
    ccf
    nop
    inc e
    ld a, $1d
    ld a, a
    dec l
    cp a
    ld [hl], l
    cp l
    nop
    ld a, d
    ld a, h
    inc bc
    rla
    ld [$0d13], sp
    rrca
    nop
    ld bc, $0103
    ld [bc], a
    ld bc, $0001
    ret nz

    nop
    nop
    ld h, b
    nop
    jr nz, jr_02b_5a04

jr_02b_5a04:
    ldh [rP1], a
    stop
    ldh [$ce], a
    ldh a, [$eb]
    jr nc, @-$15

    jr nc, @-$2e

    nop
    ldh [$f8], a
    nop
    db $f4
    ld hl, sp-$0e
    ld a, h
    db $fc
    ld bc, $f0b0
    ret nz

    ld b, b
    add b
    add b
    nop
    ld h, b
    nop
    rrca
    nop
    inc de
    dec c
    rra
    ld a, [bc]
    ld a, $15
    rrca
    dec a
    inc bc
    ld d, a
    ld a, [hli]
    ld hl, $2925
    dec l
    ldh [$31], a
    dec [hl]
    and b
    ldh a, [rP1]
    sub b
    ldh [$e8], a
    nop
    ret nz

    call z, $2400
    ret nz

    sbc b
    ldh [$d0], a
    ld a, a
    ld h, b

jr_02b_5a48:
    ld hl, $2925
    dec l
    ld sp, $3935
    add c
    ld h, b
    rlca
    nop
    ccf
    inc bc
    ld e, a
    dec sp
    ld hl, $3f03
    ld a, [de]
    ld e, $01
    dec hl
    dec d
    ld hl, $d825
    add hl, hl
    adc a
    inc bc
    add hl, sp
    jr nz, jr_02b_5a48

    nop
    jr nz, jr_02b_5a6b

jr_02b_5a6b:
    ret nz

    and b
    ret nz

    call nz, $e680
    nop
    ld [de], a
    rlca
    ldh [$cc], a
    ldh a, [$e8]
    jr nc, jr_02b_5a9b

    dec h
    add hl, hl
    db $fc
    dec l
    ld sp, $3935
    dec a
    ld b, b

jr_02b_5a83:
    nop
    nop
    jr z, jr_02b_5a8a

    nop
    dec b
    ld [bc], a

jr_02b_5a8a:
    rlca
    ld [bc], a
    nop
    dec c
    ld [bc], a
    rrca
    inc b
    dec e
    ld c, $2b
    inc e
    ld bc, $103d
    ld d, c
    jr nz, jr_02b_5afc

jr_02b_5a9b:
    nop

jr_02b_5a9c:
    ld bc, $0801
    add b
    nop
    jr nz, jr_02b_5a83

jr_02b_5aa3:
    nop
    ld d, b
    ldh [rIE], a
    ret nc

    ld a, l
    nop
    jp c, Jump_02b_5caf

    ld d, a
    xor h
    cp d
    push bc
    db $ed
    nop
    jp $c2a5


    rst $00

jr_02b_5ab7:
    add b
    ld b, e
    add b
    add b
    nop
    nop
    add b
    nop
    jp $ed00


    ld b, e
    di
    nop
    ld l, h
    rst $28
    ld d, e
    rst $38
    rrca
    db $fd
    rra
    sbc $00
    add hl, sp
    rst $08
    jr c, jr_02b_5ab7

    ld a, [de]
    ld a, [c]
    call $02df
    jr nz, jr_02b_5b18

    ret nz

    jr nz, jr_02b_5a9c

    ret nz

    add hl, sp
    jr jr_02b_5aa3

    nop
    nop
    or a
    jp nz, $36cf

    rst $30
    jp z, $00ff

    ldh a, [$bf]
    ld hl, sp+$7b
    sbc h
    di
    inc e
    and a
    nop
    ld e, b
    ld c, e
    or a
    db $fd
    inc bc
    di
    dec c
    cpl
    nop

jr_02b_5afc:
    add hl, de
    ccf
    inc de
    ld l, $17
    rra
    nop
    ld e, $00
    nop
    dec sp
    inc c
    ld l, l
    ld [hl], $ed
    db $76
    rlc b
    db $f4
    dec e
    ld [c], a
    xor e
    ld b, [hl]
    rst $38
    nop
    rst $38
    nop
    ccf

jr_02b_5b18:
    ld e, [hl]
    cp a
    and c
    sbc $bf
    ret nz

    and l
    dec c
    jp nz, $c023

    ld b, b
    ld h, c
    ld [$2000], sp
    ld bc, $109f
    nop
    inc bc
    rlca
    inc bc

jr_02b_5b2f:
    dec c
    inc bc
    ld a, [bc]
    dec b
    dec c
    nop
    ld b, $0d
    ld b, $17
    inc c
    dec de
    inc c
    rra
    ld [$1408], sp
    ld [$9d18], sp
    jr z, jr_02b_5bbd

    ret nz

    or [hl]
    nop
    ld e, b
    db $ed
    ld e, $d9
    ld h, [hl]
    rst $30
    ld a, b
    ld a, a
    nop
    cp h
    jp z, $b53d

    dec bc
    adc l
    ld [bc], a
    rlca
    ret nz

    ld sp, $0008
    jr nc, jr_02b_5b66

    nop
    ld e, $03
    ld l, l
    ld a, [de]
    nop
    or a

jr_02b_5b66:
    ld a, b
    sbc e
    ld h, [hl]
    rst $28
    ld e, $fe
    dec a
    ld bc, $bc53
    xor l
    ret nc

    or c
    ret nz

    and b
    and c
    ld [$5fc0], sp
    ld b, b
    nop
    jr nz, jr_02b_5b83

    nop
    dec bc
    ld b, $0f
    ld b, $00

jr_02b_5b83:
    dec de
    ld b, $1c
    dec bc
    dec sp
    inc e
    ld d, h
    jr c, jr_02b_5b8c

jr_02b_5b8c:
    ld a, b
    jr nz, jr_02b_5b2f

    ld b, b
    ret nz

    nop
    ld a, b
    nop
    nop
    call c, $b630
    ld l, h
    or a
    ld l, [hl]
    db $d3
    cpl
    ld [$47b8], sp
    push de
    ld h, d
    sbc a
    ld [$7afc], sp
    db $fd
    ld bc, $7b85
    db $fd
    ld [bc], a
    and a
    ld b, b
    jp Jump_02b_4839


    nop
    rlca
    nop
    ld a, [bc]
    rlca
    rst $38
    dec bc
    cp [hl]
    ld e, e
    nop
    push af
    ld a, [hl-]

jr_02b_5bbd:
    ld [$5d35], a
    and e
    or a
    jp $a500


    jp $c1a3


    ld [hli], a
    pop bc
    ld b, c
    add b
    ld d, b
    add c
    rra

jr_02b_5bcf:
    ld sp, $3950
    ld [$e600], sp
    add hl, de
    rst $08
    dec b
    jr c, jr_02b_5bcf

    ld a, [bc]
    rst $38
    ret nz

    rra
    adc c
    ld a, [bc]
    rra
    stop
    ld h, a
    sbc b
    di

jr_02b_5be6:
    inc e
    xor a

jr_02b_5be8:
    ld d, b
    ei
    rlca
    ret nz

    rra
    ld d, c
    ccf
    ld d, b
    rst $38
    nop
    rst $08
    jr nc, jr_02b_5be6

    rrca
    add c
    ccf
    ret nz

    rst $38
    nop
    di
    inc c
    adc a
    ldh a, [$3f]
    ld h, b
    add b
    nop
    ld h, b
    inc e
    nop
    ld a, [hli]
    inc d
    ld e, l
    ld [hl], $5f
    nop
    ld [hl], $ef
    ld d, $bd
    ld c, [hl]
    sbc l
    ld a, [hl]
    ld b, d
    db $10
    inc a
    inc a
    nop
    sub b
    ld b, b
    rlca
    nop
    dec bc
    rla
    inc c
    dec e
    inc bc
    dec de
    ld d, $0f
    ld l, $1f
    inc l
    rra
    xor b
    nop
    inc l
    rra
    rra
    rra
    ld d, $0f
    ld a, [de]
    rlca
    dec c
    inc bc
    rlca
    nop

jr_02b_5c36:
    ld bc, $d400
    nop
    nop
    add b
    ldh [$90], a
    ldh [$78], a
    add b
    ret z

    jr nc, jr_02b_5be8

    ld a, b
    or d
    ld a, h
    nop
    ld b, $f8
    jp nc, $b23c

    inc e
    ld [hl], d
    sbc h
    ld h, h
    sbc b
    inc l
    ret nc

    jr jr_02b_5c36

    inc b
    nop
    sub c
    nop
    rlca
    nop
    dec bc
    rla
    ld [$2c1b], sp
    rra
    ld e, b
    ccf
    ld [hl], c
    ld a, $b3
    ld a, h
    inc d
    nop
    ld a, b
    db $e3
    ld a, h
    and $a4
    db $e4
    jr c, jr_02b_5cc6

    jr c, jr_02b_5cd6

    inc e
    add hl, sp
    ld b, $0f
    nop
    call nc, RST_00
    add b
    ldh [rNR10], a
    ldh [$78], a
    add b
    call nz, $b238
    ld a, h
    jp c, $013c

    ld a, a
    nop
    ld a, c
    ld c, $1d
    ld b, $0d
    ld [bc], a
    rlca
    ld b, $f4
    nop
    nop
    rlca
    add hl, de
    rlca
    scf
    rrca
    ld l, a
    rra
    ld a, h
    rra
    ret nc

    ccf
    nop
    rlca
    nop
    db $e3
    inc a
    adc l
    ld [hl], b
    sub d
    ld h, c
    cp l
    ld b, e
    or a
    ld c, a
    ld e, b

Jump_02b_5caf:
    rlca
    rrca
    db $f4
    nop
    nop
    ret nz

    cp h
    ret nz

    ld [$fdf4], a
    or $17
    ld a, [$fa07]
    nop
    rlca
    nop
    and $18
    inc [hl]
    ret z

jr_02b_5cc6:
    call nc, $98e8
    ldh [$30], a
    ret nz

    ld b, b
    add b
    add b
    ld b, b
    ld bc, $0f00
    dec sp
    rlca
    ld l, a

jr_02b_5cd6:
    rra
    ld d, b
    ccf
    ret nz

    ccf
    sbc [hl]
    ld h, c
    and e
    ld b, b
    pop bc
    push de
    ld bc, $0100
    ld bc, $0703
    ld bc, $031e
    jr jr_02b_5cf3

    rrca
    sub b
    nop
    add b
    nop
    ld h, b
    ret nc

jr_02b_5cf3:
    ldh [$ec], a
    ldh a, [$3a]
    db $f4
    dec d
    ld a, [$7a8f]
    rst $08
    ld a, [hl-]

jr_02b_5cfe:
    nop
    rlca
    nop
    and $18
    or h
    ld c, b
    ld d, h
    add sp, -$28
    ldh [$90], a
    ldh [rNR41], a
    ret nz

    ret nz

    db $fd
    nop
    nop
    rlca
    rrca
    ld [bc], a
    dec bc
    rlca
    dec c
    inc bc
    inc de
    inc c
    nop
    dec d
    nop
    dec e
    ld c, $2a
    inc e
    inc [hl]
    jr jr_02b_5d6d

    jr nc, jr_02b_5d97

    jr nz, jr_02b_5d89

    ld bc, $0001
    nop
    inc bc
    nop
    rrca
    ld [bc], a
    dec [hl]
    ld a, [bc]
    sub $39
    ld e, e
    rst $20
    rst $28
    rra
    or l
    ld l, [hl]
    cp $70
    nop
    ld e, b
    ret nz

    db $fc
    jr c, jr_02b_5cfe

    ld b, b
    add sp, $70
    ld [hl], b
    ldh [$60], a
    and b
    add b
    add b
    nop
    add c
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    rrca

jr_02b_5d53:
    inc b
    dec e
    ld [hl], a
    rrca
    xor $1d
    rst $20
    jr jr_02b_5d53

    adc b
    ld bc, $0718
    ld a, l
    jp nz, Jump_02b_41fe

    cp a
    ld b, b
    ld a, [$1f2f]
    dec de
    nop
    nop
    nop

jr_02b_5d6d:
    add hl, bc
    jr nz, jr_02b_5d6d

    ldh [rP1], a
    ld hl, sp-$20
    ld hl, sp-$21
    ccf
    adc $0e
    cp c

jr_02b_5d7a:
    ld c, [hl]
    ld h, e
    sbc h
    adc b
    jr nz, @+$01

    nop
    cp $01
    ret nz

    call c, $0be3
    or $04

jr_02b_5d89:
    dec bc
    dec b
    rlca
    nop
    dec d
    nop
    add b
    ret nz

    nop
    ld b, b
    ret nz

    pop bc
    rst $38
    nop

jr_02b_5d97:
    sbc $3f
    rst $38
    rrca
    jp hl


    ld d, $42
    nop
    jp hl


    sbc $6d
    or $ee
    ld [hl], a
    db $76
    rst $08
    pop af
    sub a
    pop hl
    rst $20
    nop
    inc bc
    nop
    ret nc

    ld bc, $e000
    ld d, b
    ldh [$f0], a
    ld h, b
    ret nc

    ld h, b
    jr nc, jr_02b_5d7a

    ret nc

    jr nz, @-$1e

    add hl, bc
    nop
    or b
    sub b
    ld h, b
    ret nc

    ldh [$c0], a
    ld e, b
    cp h
    ld a, b
    ld l, [hl]
    inc e
    dec de
    ld b, $07
    nop
    rst $38
    ld d, b
    nop
    inc h
    ld a, [hl]
    jp $a53c


    ld e, d
    nop
    ld a, a
    nop
    add c
    ld a, [hl]
    cp l
    ld h, [hl]
    cp l
    ld h, [hl]
    db $db
    inc a
    ld a, [hl]
    push af
    nop
    nop
    inc h
    inc a
    ld h, [hl]
    jr @+$44

    inc a
    ld h, [hl]
    jr jr_02b_5e31

    inc a
    nop
    ld a, a
    nop
    ld a, [hl]
    inc h
    ld a, [hl]
    inc h
    ld e, d
    inc a
    ld h, [hl]
    jr @+$3e

    ld b, h
    nop
    nop
    ld c, b
    ld bc, $0300
    ld bc, $0608
    inc bc
    nop
    rlca
    inc bc
    ld c, $07
    dec c
    ld b, $1b
    inc c
    db $10
    inc d
    ld [$1918], sp
    jr z, jr_02b_5e4f

    nop
    ld e, h
    jr nc, jr_02b_5e1b

jr_02b_5e1b:
    xor $14
    ld a, e
    add $f5
    jp c, $d87f

    nop
    sbc a
    ld l, h
    push af
    ld c, $fa
    dec b
    adc l
    inc bc
    jr @+$07

    ld [bc], a
    rlca
    dec l

jr_02b_5e31:
    ld [$1000], sp
    jp $b700


    ld bc, $cfc2
    ld [hl], $f7
    ld a, [bc]
    rst $38
    nop
    ld bc, $0010
    db $ed
    ld e, $f6
    adc a
    adc $37
    cp [hl]
    ld h, a
    inc b
    db $fc
    ld c, a
    cp c
    ld e, [hl]

jr_02b_5e4f:
    ld a, a
    ccf
    jr z, jr_02b_5e6f

    nop
    nop
    ld a, [hl-]
    inc c
    ld [hl], a
    jr z, @-$20

    ld h, e

jr_02b_5e5b:
    xor a
    ld e, e
    nop
    cp $1b
    ld sp, hl
    ld [hl], $af
    ld [hl], b
    rst JumpTable
    jr nz, jr_02b_5e68

    or c

jr_02b_5e68:
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    ret nz

    dec e

jr_02b_5e6f:
    jr jr_02b_5e71

jr_02b_5e71:
    rlca
    nop
    ld c, $05

jr_02b_5e75:
    ld e, $0d
    rla
    ld c, $00
    jr jr_02b_5e83

    rla
    ld [$0e19], sp
    dec e
    ld c, $00

jr_02b_5e83:
    ld e, $0d
    ld a, [de]
    dec c
    dec e
    ld a, [bc]
    rra
    ld [$7f80], sp
    db $10
    ld bc, $0f00
    nop
    dec de
    inc c
    ld l, l
    nop
    ld [de], a
    or l
    ld a, e
    ld [c], a
    db $fd
    adc a
    ldh a, [$31]
    ld [$e7ce], sp
    jr jr_02b_5e5b

    scf
    ld [$8040], sp
    add b
    jr nz, jr_02b_5eaa

jr_02b_5eaa:
    add b
    dec sp
    jr jr_02b_5e75

    nop
    rst $38
    ld b, e
    cp a
    nop
    ld c, a
    db $fd
    rra
    sbc $39
    rst $28
    jr jr_02b_5ee0

    nop
    jp c, $cd32

    rst JumpTable
    jr nz, @+$01

    ret nz

    ei
    nop
    rlca
    rst $30
    rrca
    rst JumpTable
    ccf
    rst $00
    ccf
    ld h, b
    jr z, @+$21

    rra
    ld e, a
    nop
    inc hl

jr_02b_5ed3:
    inc bc
    or e
    ld [$fafd], sp
    db $fd
    nop
    ei
    ld [bc], a
    db $fd
    rst $38
    nop
    and c

jr_02b_5ee0:
    ld e, [hl]
    rst $38
    ldh [$5b], a
    ld c, b
    nop
    ld d, b
    ld h, a
    sub b
    ld hl, sp+$07
    rst $30
    ld [$00cd], sp
    inc sp
    rst $08
    jr nc, jr_02b_5f6b

    rlca
    ld b, a
    dec sp
    ld a, a
    ld [hl], b
    rrca
    ld l, e
    jr nz, jr_02b_5efc

jr_02b_5efc:
    ld [hl], b

jr_02b_5efd:
    rra
    ld [$6d32], sp
    inc de
    rra
    nop
    nop
    jr z, jr_02b_5f26

    ld [hl], b
    ccf
    ld e, h
    ccf
    dec sp
    inc e
    rlca
    dec b
    inc bc
    inc sp
    ld hl, $3000
    ld b, b
    nop
    nop
    jr z, @+$21

    nop
    dec e
    ld c, $1b
    inc c
    nop
    rla
    ld [$001f], sp
    ccf
    nop
    ld a, a

jr_02b_5f26:
    jr jr_02b_5f28

jr_02b_5f28:
    rst $38
    inc a
    ei
    ld a, h
    jp Jump_02b_673c


    jr jr_02b_5f61

    dec sp
    inc b
    rra
    jr nc, jr_02b_5f36

jr_02b_5f36:
    ld b, b
    jr c, jr_02b_5f39

jr_02b_5f39:
    ld a, h
    stop
    cp $38
    rst $38
    ld a, h
    cp e
    ld a, h
    rst $00
    jr c, jr_02b_5f45

jr_02b_5f45:
    rst $38
    nop
    jr @+$09

    inc d
    dec bc
    ld a, [de]
    dec c
    dec de
    dec e
    ld c, $1f
    jr z, jr_02b_5ed3

    nop
    jr @+$01

    ld bc, $2d10
    ld [$ff10], sp
    ld l, h
    add e
    cpl

jr_02b_5f5f:
    jr jr_02b_5f5f

jr_02b_5f61:
    ld bc, $ff00
    nop
    ld a, h
    add e
    rst $38
    jr c, jr_02b_5efd

    ld a, h

jr_02b_5f6b:
    add $38
    db $10
    ld l, h
    db $10
    jr c, jr_02b_5fa7

    xor b
    inc bc
    nop
    ld [bc], a
    ld bc, $0140
    rrca
    ld c, b
    inc c
    nop
    ld a, [bc]
    inc b
    dec b
    ld [bc], a
    nop
    ld h, d
    ld bc, $2354
    dec hl
    inc d
    ld e, $01

jr_02b_5f8a:
    nop
    ccf
    nop
    xor l
    ld [de], a
    ld a, a
    add b
    cp $01
    nop
    ld l, l
    ld [de], a
    ei
    inc b
    ld bc, $2200
    ld bc, $5200
    ld hl, $205f
    ld [hl], e
    rrca
    cp a
    ld a, a
    nop
    rst $00

jr_02b_5fa7:
    rst $38
    ei

jr_02b_5fa9:
    rlca
    rst JumpTable
    jr nz, jr_02b_5fa9

    inc bc
    nop
    ldh [$1f], a
    adc a
    ld [hl], b
    ccf
    ret nz

    rst $30
    rrca
    nop
    rst JumpTable
    jr c, jr_02b_6024

    rst $30
    inc bc
    nop
    inc b
    inc bc
    ld d, b
    inc bc
    ld b, e
    jr jr_02b_5fc6

    ld d, e

jr_02b_5fc6:
    ld [$0304], sp
    dec b
    ld [bc], a
    jr z, @+$08

    ld bc, $2007
    rlca
    dec d
    jr jr_02b_5f8a

    ld c, c
    push af
    nop
    dec bc
    rst $28
    inc de
    sbc e
    ld h, a
    db $e3
    rra
    ld sp, hl
    nop
    rlca
    cp $01
    rst $38
    nop
    ccf
    ret nz

    daa
    nop
    ret c

    ld b, e
    cp h
    add e
    ld a, h
    add a
    ld a, b
    sbc b
    nop
    ld h, b
    and b
    ld b, b
    ret nz

    nop
    di
    rst $28
    db $e3
    nop
    db $dd
    rst $20
    ret c

    rst $20
    ret c

Call_02b_6000:
    db $e3
    call c, $00f7
    rst $28
    db $eb
    rst $30
    cp a
    ld a, b

jr_02b_6009:
    rst $30
    rrca
    ccf
    ld b, $c0
    rst $00
    jr c, jr_02b_6009

    rlca
    rst AddAToHL
    db $10
    cp e
    ldh [rNR33], a
    ld [$1300], sp
    inc c
    rrca
    add hl, de
    ld e, b
    jr nc, jr_02b_6020

jr_02b_6020:
    jr z, jr_02b_6022

jr_02b_6022:
    db $10
    rla

jr_02b_6024:
    ld [$030d], sp
    cp a
    nop
    ld l, a
    nop
    sub b
    ei
    inc b
    rst $28
    db $10
    ld a, a
    add b
    ld hl, sp-$40
    add h
    jr nz, jr_02b_6037

jr_02b_6037:
    jr jr_02b_6079

    nop
    and b
    ld b, b
    and c
    ld b, b
    nop
    ld [c], a
    ld bc, $e1da
    or a
    ld a, b
    db $fc
    rra
    nop
    ld a, a
    adc a
    ei
    rlca
    ld a, a
    add b
    rra
    ldh [rP1], a
    rlca
    nop
    dec e
    ld [bc], a
    daa
    jr jr_02b_6077

    nop
    nop
    ld b, $01
    rra
    nop
    scf

jr_02b_605f:
    ld [$1827], sp
    nop
    add hl, hl
    ld d, $10
    rrca
    db $10
    rrca
    ld de, $100e
    dec bc
    inc b
    rlca
    pop de
    ld [$0000], sp
    ld h, a
    sbc b
    nop
    ret c

jr_02b_6077:
    daa
    or b

jr_02b_6079:
    ld c, a
    scf
    rst $08
    ld l, a
    sbc a
    nop
    adc a
    ld a, a
    rst $28

jr_02b_6082:
    rra
    rst $30
    rrca
    ld sp, hl
    ld b, $00
    rst $38
    nop
    adc a
    ld [hl], b
    rlca
    ld hl, sp+$0f
    ldh a, [rNR41]
    dec sp
    ret nz

    cp a
    db $10
    add b
    ld a, a
    ldh a, [rIF]
    ccf
    jr jr_02b_605f

    and a
    reti


    pop bc
    jr nz, @+$73

    db $10
    rst $20
    jr jr_02b_6082

    jr @+$24

    dec sp
    call nz, $30bf
    rst $38
    ld b, c
    nop
    inc bc
    ld [bc], a
    ld bc, $0102
    ld bc, $4041
    nop
    add hl, de
    ld d, $09
    dec bc
    dec b
    rlca
    rlca
    ld h, l
    ld [bc], a
    ld e, a
    jr nz, jr_02b_60f1

    ld de, $00f4
    nop
    db $10
    jr z, jr_02b_60da

    add hl, hl
    db $10
    cp $01
    sub d
    ld a, l
    ld a, l
    cp $90
    jr nz, @+$01

    cp $ba
    ld a, l
    cp e
    rst AddAToHL

jr_02b_60da:
    jr c, @+$7f

    add d
    nop
    rst $28
    db $10
    add $39
    adc b
    nop
    rra
    nop
    dec bc
    inc b
    nop
    ld a, [hl]
    ld bc, $6996
    ld a, l
    ld [bc], a
    dec e
    ld [bc], a

jr_02b_60f1:
    ld a, [hli]
    dec d
    dec b
    ld b, b
    dec bc
    ld a, e
    dec b
    cp e
    ld b, l
    ld [hl], l
    scf
    scf
    inc hl
    rra
    dec sp
    rlca
    dec sp
    rlca
    ld b, b
    db $10
    ld a, h
    add e
    add hl, sp
    add $7d
    add d
    cp $01
    sub $39
    rst $38
    rst AddAToHL
    xor $aa
    rst AddAToHL
    ld d, d
    xor b
    cp e
    rst AddAToHL
    ld d, l
    sub e
    ld a, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    sub e
    ld l, l
    nop
    jr z, jr_02b_6173

    dec a
    inc bc
    ccf
    ld bc, $215e
    ld e, a
    jr nz, @+$71

    db $10
    jr nc, jr_02b_6160

    ld d, a
    jr z, jr_02b_615b

    nop
    ld h, e
    ld d, e
    inc l
    inc e
    inc e
    dec h
    jr jr_02b_6160

    jr jr_02b_6152

    ld [$0814], sp
    inc c
    nop
    ld h, $20
    rst AddAToHL
    ld d, l
    cp e
    cp e
    cp d
    xor $ff
    ld a, h
    jr c, @+$01

    nop
    ld a, l
    add d

jr_02b_6152:
    dec b
    ld a, a
    nop
    cp e
    ld b, h
    rst $00
    jr c, @+$01

    rst $38

jr_02b_615b:
    ld a, h
    rst $38
    rst $38
    nop

jr_02b_615f:
    rst $38

jr_02b_6160:
    db $f4
    nop
    ld b, $05
    ld [bc], a
    rst $38
    rst $38
    nop
    db $f4
    nop
    nop
    ld bc, $0122
    ld d, d
    ld hl, $2057
    ld a, c

jr_02b_6173:
    rlca
    ld l, a
    rra
    db $10
    ld d, h
    nop
    ld [bc], a
    ld bc, $2b31
    db $10
    rla
    ld [$070f], sp
    rlca
    ld a, l
    ld [bc], a
    ld de, $0000
    ld c, a
    jr nc, jr_02b_61ca

    dec c
    ld [bc], a
    rra
    ld e, $01
    db $76
    add hl, bc
    sbc l
    ld h, d
    ld a, l
    ld [bc], a
    nop
    nop
    or e
    ld a, a
    dec a
    jp $08f7


    cp a
    ld b, b
    db $fc
    inc bc
    ld [hl], b
    adc a
    rst $20
    jr @-$1f

    jr nz, jr_02b_61ca

    add b
    cp e
    cp a
    ld b, b
    ld b, a
    ld l, a
    sbc h
    ld e, l
    ld [hl], a
    jp hl


    ld [hl], a
    ld [hl], e
    db $ec
    di
    db $ec
    ld bc, $0040
    add hl, de
    ld b, $1c
    inc bc
    ld e, $01
    rra
    ccf
    ld e, a
    jr nz, jr_02b_621d

    jr z, jr_02b_615f

    ld l, b
    ld [bc], a

jr_02b_61ca:
    add b
    ld d, c
    and l
    ld e, d
    xor b
    ld d, a
    ret z

    scf
    ld l, $2e
    ld [hl], d
    inc c
    inc d
    ld [$0018], sp
    and b
    nop
    di
    db $ec
    db $ec
    db $eb
    or $7b
    rst $30
    cp l

jr_02b_61e4:
    ld a, e
    rst $28
    inc e
    ei
    rlca
    rst $38
    nop
    ld bc, $005f
    rst $08
    jr nc, jr_02b_61e4

    inc c
    db $fc
    inc bc
    rst $38
    rst $38
    ccf
    db $fd
    ld a, l
    nop
    ld bc, $0e01
    dec e
    ld b, c
    nop
    ld [de], a
    inc c
    ld e, $01
    add hl, de
    dec hl
    db $10
    ld d, e
    jr nz, jr_02b_626d

    ret nc

    rlca
    nop
    inc c
    ld a, [bc]
    inc b
    add l
    ld [bc], a
    ld b, e
    add b
    and b
    ld b, b
    ld h, b
    ld d, h
    inc b
    nop
    rra
    ld a, a
    rst $38

jr_02b_621d:
    cp $01
    rst $30
    ld [$807f], sp
    rst $38
    xor $11
    db $fd
    nop
    nop
    jr nz, jr_02b_627b

    jr nz, @+$53

    jr nz, jr_02b_62a1

    ld bc, $0102
    ld d, l
    nop
    nop
    inc bc
    ret nz

    ldh [$f8], a
    ld a, a
    add b
    rra

Jump_02b_623c:
    ldh [$b0], a
    ld a, a
    rst JumpTable
    ccf
    inc d
    nop
    nop
    ld [bc], a
    ld bc, $1b03
    dec d
    ld [$0c13], sp
    rla
    ld [$041b], sp
    add hl, bc
    ld b, $01
    rst $38
    nop
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $0001
    rst $38
    nop
    jp $8c3c


    ld [hl], e
    ld l, a
    sub b
    nop
    rst $28
    ld de, $0bf7
    or [hl]
    ld c, e
    sbc d

jr_02b_626d:
    ld h, a
    nop
    adc d
    ld [hl], a
    adc e
    ld [hl], a
    ld b, a
    cp e
    push hl
    dec de
    nop
    ld a, $01
    add c

jr_02b_627b:
    add b
    ld [$2108], sp
    ld hl, $f700
    rrca
    rst JumpTable
    jr nz, @+$81

    add b
    add a
    ld a, b
    nop
    ld [hl], b
    adc a
    ld e, a
    ldh [rPCM34], a
    rst $38
    cp a
    rst $38
    nop
    rst $38
    ld hl, sp+$69
    rst $30
    db $d3
    rst $28
    db $e3
    db $dd
    nop
    rst $20
    ret c

    and e
    ld e, h
    ld [hl], a

jr_02b_62a1:
    rrca
    rrca
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    jr jr_02b_62b4

    nop
    inc sp
    inc c
    cpl
    db $10
    ld a, a
    nop

jr_02b_62b4:
    ld a, a
    nop
    nop
    rst $38
    nop
    db $fc
    inc bc
    ei
    inc b
    rst $30
    ld [$ed00], sp
    ld [de], a
    sub c
    ld l, [hl]
    rst $28
    ld e, $fb
    rlca
    ret nz

    jr nz, jr_02b_62d3

    nop
    ld e, b
    rst $38
    nop
    ld a, [hl]
    rst $38
    rst $38
    rst $38

jr_02b_62d3:
    inc b
    inc a
    rst $38
    jp $ff3c


    dec bc
    ld [$3cc3], sp
    add b

jr_02b_62de:
    inc sp
    db $10
    ccf
    nop
    scf
    ld [$0718], sp
    dec c
    jr nc, jr_02b_62ec

    inc bc
    inc l
    ld [hl], b

jr_02b_62ec:
    nop
    ld [$c33c], sp
    rst $38
    jr jr_02b_62f5

    sbc c
    ld a, [hl]

jr_02b_62f5:
    jr jr_02b_62de

    inc a
    jp $0801


    rst $20
    inc c
    sbc c
    ld a, [hl]
    ld a, [hl]
    add c
    scf
    db $10
    ld bc, $8110
    rst $38
    add b
    ld c, c
    ld [$0700], sp
    nop
    dec de
    rlca
    ld sp, $000f
    ld e, b
    daa
    ld a, a
    nop
    cp a
    ld b, b
    rst $38
    nop
    nop
    or b
    ld c, a
    and $19
    rst $08
    add hl, sp
    ldh [$1f], a
    add b
    ld d, l
    db $10
    ld c, a
    jr nc, @+$65

    inc e
    ccf
    nop
    ld bc, $0000
    ld [hl-], a
    ld bc, $102f
    dec de
    rlca
    ld a, h
    nop
    inc bc
    cp a
    ld b, b
    ld h, d
    dec e
    ld c, l
    ccf
    rst JumpTable
    nop
    ld [hl-], a
    ld e, a
    ld [hl-], a
    ld c, l
    ccf
    ld [hli], a
    dec e
    ld a, a
    ld [bc], a
    nop
    xor a
    ld [hl], b
    add a
    ld a, b
    ld a, b
    ld h, c
    ld [$0098], sp
    nop
    add sp, $10
    or b
    ret nz

    ld a, h
    add b
    ld a, [$0400]
    inc a
    ret nz

    sbc h
    ldh [$da], a
    ld h, h
    call c, Call_02b_6000
    sbc h
    ldh [$38], a
    ret nz

    db $f4
    ld [$3cc4], sp
    jr c, @-$06

    dec e
    ld [$503f], sp
    rst JumpTable
    jr nz, @-$4d

    jr nz, jr_02b_63f8

    nop
    ld hl, $30cf
    ccf
    ld [hl], b
    db $fc
    nop
    db $fc
    nop
    dec b
    jr nz, jr_02b_63ba

    ld hl, sp+$00
    ccf
    jr nc, jr_02b_638b

jr_02b_638b:
    jr nz, jr_02b_6394

    inc hl
    add hl, bc
    ld e, $01
    nop
    rra
    nop

jr_02b_6394:
    jr z, jr_02b_63ad

    ld [hl], $1f
    ccf
    add hl, bc
    nop
    ccf
    add hl, bc
    ld [hl], $1f
    jr c, jr_02b_63a8

    ld e, a
    jr nc, jr_02b_63b4

    ld b, a
    jr c, @+$41

    dec de

jr_02b_63a8:
    ld [$0040], sp
    xor h
    ld b, b

jr_02b_63ad:
    nop
    db $f4
    ld [$e0dc], sp
    ld a, $c0

jr_02b_63b4:
    db $fd
    ld [bc], a
    nop
    cp $00  ; and a / or a
    ld a, [hl]

jr_02b_63ba:
    add b
    ld a, l
    add d
    ld a, [hl]
    add b
    inc hl
    ld a, [hl]
    add b
    ld c, c
    db $10
    ld [c], a
    inc e
    db $fc
    add c
    jr jr_02b_6407

    jr nc, jr_02b_63cc

jr_02b_63cc:
    inc hl
    inc e
    add hl, sp
    ld e, $3d
    ld b, $3d
    ld b, $00
    add hl, sp
    ld e, $13
    inc c
    rrca
    nop
    ld b, $01
    ld b, b
    ld [bc], a
    inc de
    ld [$0080], sp
    ld e, b
    add b
    add sp, $10
    nop
    call c, $3ce0
    ret nz

    ld a, [$fe04]
    nop
    ld [hl], b
    cp $35
    ld [$1005], sp
    add c
    db $10

jr_02b_63f8:
    or b
    ret nz

    db $10
    ldh [$d0], a
    add c
    ld b, b
    ld b, a
    db $10
    ld [de], a
    ret


    ld [$077b], sp
    cp a

jr_02b_6407:
    ld b, b
    nop
    pop hl
    ld e, $de
    inc sp
    pop hl
    ld e, $7f
    nop
    ld [$78a7], sp
    db $fc
    nop
    nop
    ld [hl], b
    nop
    ld hl, sp+$30
    rst JumpTable
    ld h, b
    cp e
    ld b, a
    nop
    rst $20
    rra
    ld b, e
    ccf
    ld b, b
    ccf
    ld hl, sp+$07
    inc c
    xor h
    ld [hl], e
    db $fc
    ld [hl], e
    inc hl
    daa
    add e
    ld a, h
    db $10
    rst $08
    ld a, b
    rst $08

jr_02b_6435:
    inc hl
    ld a, h
    inc c
    rlca
    ld b, $40
    inc bc
    ld hl, $0305
    inc bc
    ld bc, $0102
    nop
    ld bc, $0f00
    nop
    add hl, de
    ld b, $13
    inc c
    nop
    rra
    ld bc, $0f1e
    dec a
    ld e, $36
    add hl, de
    ld [bc], a

jr_02b_6456:
    inc sp
    rrca

jr_02b_6458:
    rra
    nop
    ld a, [hl]
    add c
    ld h, c
    inc a
    db $10
    jp $e799


    ld hl, $ffc3
    db $db
    rst $20
    sub l
    ld hl, $c3bd
    cpl
    rst $38
    scf
    rst $38
    daa
    jr nz, jr_02b_6435

    nop
    and b
    ld [hl], b
    nop
    ei
    jr nc, jr_02b_6456

    ld bc, $b763
    ld c, a
    rst $20
    rra
    ld b, b
    ccf
    ld hl, $f802
    rlca
    xor h
    ld [hl], e
    db $fc
    ld [hl], e
    inc hl
    ei
    nop
    inc b
    ld c, a
    jr c, jr_02b_64f7

    ld a, $c7
    ld a, b
    ld h, a
    add b
    dec h
    jr c, jr_02b_64eb

    inc a
    dec sp
    inc e
    dec l
    ld e, $00
    ld d, $0f
    ccf

jr_02b_64a1:
    ld b, $6f
    ld d, $5d
    ld h, $00
    ld [hl], a
    inc c
    ld a, a
    jr c, jr_02b_64a1

    ld a, e
    jp c, $0067

    rst $08
    inc a
    ld a, h
    nop
    ld [$cc7c], a
    jr c, jr_02b_64b9

jr_02b_64b9:
    sub h
    ld a, b
    sbc b
    ld [hl], b
    jr z, @-$0e

    ld a, $e0
    nop
    add hl, sp
    and $33
    db $ec
    xor a
    ld [hl], e
    rst AddAToHL
    ccf
    nop
    ld [$fc1d], a
    inc bc
    di
    cp $ee
    inc e
    jr nz, jr_02b_64f1

    nop
    jr nz, jr_02b_6458

    nop
    ret nz

    add b
    ld b, b
    ld h, b
    add b
    dec h
    nop
    jr jr_02b_64e3

    nop

jr_02b_64e3:
    ld [bc], a
    ld bc, $1005
    inc bc
    rlca
    ld [bc], a
    ld h, c

jr_02b_64eb:
    ld e, $03
    ld l, a
    ld de, $bf0c

jr_02b_64f1:
    ld h, c
    rst $38
    ld b, b
    ld hl, $5e25

jr_02b_64f7:
    ccf
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    ldh a, [rP1]
    nop
    add sp, -$10
    db $f4
    ld [$f00c], sp
    ld c, [hl]
    ld hl, sp+$00
    ld [bc], a
    db $fc
    add d
    ld a, h
    and l
    ld a, [hl]
    ld b, c
    cp [hl]
    ld [$bec1], sp
    ret


    cp [hl]
    dec h
    add e
    ld a, h
    rrca
    inc b
    ldh a, [$fe]
    nop
    db $fc
    nop
    jr nz, jr_02b_6560

    nop
    nop
    ld d, a
    jr c, jr_02b_6591

    scf
    db $f4
    cpl
    or b
    ld l, a
    nop
    db $fc
    ld d, e
    db $db
    ld l, h
    ld l, [hl]
    scf
    ld [hl], l
    dec de
    nop
    dec a
    ld c, $3b
    rlca
    rra

Jump_02b_653d:
    nop
    rrca
    nop
    jr jr_02b_6549

    nop
    ld bc, $205f
    ret nz

    nop
    or b

jr_02b_6549:
    nop
    ret nz

    ld [$14f0], sp
    ld hl, sp-$7e
    db $fc
    ld [bc], a
    ld bc, $c9fc
    ld a, $a1
    sbc $e1
    sbc $23
    nop
    jp $8f3c


    ld [hl], b

jr_02b_6560:
    cp $00  ; and a / or a
    db $fc
    nop
    nop
    ccf
    nop
    ld l, b
    rra
    ret nz

    ccf
    add d
    ld a, a
    nop
    xor a
    ld [hl], b
    sbc a
    ld l, a
    or a
    ld e, b
    cp a
    ld d, b
    jr nz, @+$01

    db $10
    ld hl, $186f
    ld a, a
    ld [$003f], sp
    inc b
    rra
    inc bc
    ld c, $01
    inc bc
    nop
    ldh [rP1], a
    nop
    sbc b
    ldh [$3e], a
    ret nz

    db $fd
    ld a, $ff

jr_02b_6591:
    ld bc, $fec2
    nop
    ld hl, sp+$00
    ret nc

    jr nz, jr_02b_65bb

    inc h
    add sp, $10
    ld hl, $08f4
    ld hl, $18ec
    nop
    ld hl, sp-$10
    ldh a, [rP1]
    ccf
    nop
    ld h, b
    rra
    nop
    jp nz, $903f

    ld a, a
    cp b
    ld b, a
    call nc, $003b
    db $fd
    dec hl
    cp $25
    rst $38

jr_02b_65bb:
    ld [de], a
    ld a, a
    add hl, bc
    nop
    ld a, l
    ld b, $3f
    inc bc
    ld e, $01
    rlca
    nop
    jr z, jr_02b_65ca

    nop

jr_02b_65ca:
    jr nz, @-$7e

    ccf
    add b
    db $10
    ldh [rP1], a
    ld [$24f0], sp
    ld hl, sp+$04
    ld hl, sp+$02
    db $fc
    nop
    ld a, [bc]
    db $fc
    sbc a
    ld h, b
    ld l, a
    sbc [hl]
    cp $f0
    ld bc, $887c
    db $fc
    ldh a, [$f8]
    nop
    ldh [$5f], a
    add b
    ld h, b
    jr c, jr_02b_6627

    ld a, h
    ld c, h
    xor $9e
    add $43
    cp [hl]
    pop hl
    xor $de
    ld a, h
    ld a, h
    inc sp
    cp e
    ld b, d
    nop
    nop

jr_02b_6600:
    dec de
    ld c, $00
    rra
    ld b, $21
    dec de
    ld bc, $170c
    ld [$031c], sp
    ld [$2107], sp
    ld [bc], a
    rra
    nop
    dec d
    ld c, $1f
    ld c, $43
    nop
    nop
    db $10
    rrca
    add hl, de
    rrca
    jr @+$11

    inc c
    rlca
    add b
    ld hl, $0001
    rst $38

jr_02b_6627:
    nop
    ld a, l
    cp $fe
    jr nz, @+$01

    ld a, h
    ld h, $ff
    ld bc, $83fe
    ld a, h
    ret nz

    ld h, c
    daa
    jr c, jr_02b_6600

    ld a, l
    add e
    cp $c7
    ret nz

    ld hl, $062c
    inc bc
    inc bc
    ld bc, $0001
    ret nz

    ld hl, $1ca0
    nop
    inc sp
    inc c
    ld hl, $001e
    ld a, $01
    ccf
    rra
    ld [hl], a
    jr c, jr_02b_66c6

    inc sp
    ld b, b
    ld l, l
    add hl, hl
    nop
    ld a, h
    add e
    ld a, l
    add e
    cp e
    inc b
    add $93
    xor $c6
    ld a, h
    ld hl, $6cfe
    add b
    ld hl, $6cd7
    ld d, l
    xor $ba
    rst $00
    rst $38

jr_02b_6673:
    ld [de], a
    ld bc, $fe7d
    scf
    add e
    nop
    jr nz, jr_02b_66b3

    ld bc, $2e18
    ld de, $0739
    db $10
    rrca
    ld hl, $3e03
    ld bc, $1c2b
    ccf
    inc e
    inc hl
    daa
    nop
    jr nz, jr_02b_66b0

    dec de
    rrca
    jr jr_02b_66a4

    inc c
    rlca
    nop
    rlca
    inc bc
    inc bc
    nop
    rst $38
    nop
    cp $ff
    db $e3
    jr nz, jr_02b_66c6

    ld c, b

jr_02b_66a4:
    rst $38
    ld bc, $61fe
    daa
    nop
    jr c, jr_02b_6673

    rst $38
    add e
    cp $c7

jr_02b_66b0:
    ld a, h
    add e
    inc b

jr_02b_66b3:
    ld a, l
    add e
    rst $38
    add d
    nop
    nop
    dec c
    jr c, jr_02b_66bc

jr_02b_66bc:
    nop
    ld h, a
    jr jr_02b_6700

    ccf
    ld a, a
    nop
    ld a, h
    ccf
    nop

jr_02b_66c6:
    sbc $63
    db $f4
    ld c, a
    db $db
    inc a
    ld a, h
    nop
    ld [bc], a
    cp $44
    cp d
    ld l, h
    ld l, h
    jr c, @+$23

    ld b, h
    db $10
    jr c, jr_02b_672e

    jr z, jr_02b_66fd

    sub $28
    ld a, l
    xor d
    nop
    cp $29
    rst AddAToHL
    ld l, h
    cp d
    rst $00
    ld a, h
    rst $38
    inc c
    cp $01
    ld bc, $0000
    ld a, [bc]
    dec hl
    ld [bc], a
    ld bc, $0420
    inc bc
    ld hl, $0708
    add hl, bc
    rlca
    inc de
    ld [bc], a

jr_02b_66fd:
    ld c, $13
    inc c

jr_02b_6700:
    rra
    ld [$971c], sp
    rst JumpTable
    nop
    ld h, b
    cp e
    ld b, a
    rst $20
    rra
    add e
    ld a, a
    nop
    ld bc, $78ff
    add a
    xor h
    ld [hl], e
    db $fc
    ld [hl], e
    inc hl
    add b
    daa
    add e
    rst $38
    add a
    ld a, h
    add a
    ld a, b
    ret c

    nop
    ld [hl], b
    or b
    ld h, b
    ld h, b
    nop
    inc bc
    nop
    inc b
    nop
    inc bc
    inc c
    inc bc
    dec bc

jr_02b_672e:
    inc b
    dec c
    inc bc
    ld [de], a
    inc b
    rrca
    db $10
    rrca
    rrca
    nop
    nop
    inc e
    inc b
    nop

Jump_02b_673c:
    nop
    dec b
    nop
    add $01
    dec a
    jp $e71b


jr_02b_6745:
    nop
    di
    rrca
    add a
    rst $38
    rra
    rst $38
    rrca
    ldh a, [rLCDC]
    ldh a, [rHDMA5]
    inc bc
    nop
    inc c
    inc bc
    jr jr_02b_675e

    ld bc, $011e
    ld [hl], $0f
    jr nz, jr_02b_677d

jr_02b_675e:
    rra
    ld c, a
    add b
    nop
    jr nz, @-$1e

    nop
    ccf
    ret nz

    di
    rrca
    rra
    ld b, h
    rst $38
    jr nz, jr_02b_6775

    ld hl, sp-$04
    add hl, de
    dec c
    ld e, $1e
    nop

jr_02b_6775:
    ccf
    inc hl
    ld [hl], e
    ld c, a
    db $e3
    sbc a
    rst $00
    cp a

jr_02b_677d:
    jr nc, jr_02b_677d

    cp $f3
    nop
    ld h, [hl]
    nop
    ld a, [hl]
    inc h
    rst $38
    inc h
    cp l
    ld b, d
    nop
    sbc c
    ld h, [hl]
    rst $20
    jr @+$01

    ld b, d
    rst $38
    ld e, d
    ld b, d
    cp l
    ld b, a
    ld b, d
    inc a
    ld e, d
    inc h
    dec h
    add c
    inc b
    ld a, [hl]
    and l
    ld e, d
    ld a, [hl]
    nop
    ld h, b
    inc h
    nop
    inc bc
    cp l
    nop
    rst $38
    nop
    jp $313c


    and c
    add d
    add hl, hl
    rst $38
    ld b, d
    ld a, [hl]
    inc a
    inc a
    sbc e
    jr nz, jr_02b_67b8

jr_02b_67b8:
    nop
    ld h, b
    nop
    ld e, b
    jr nz, jr_02b_6745

    ld a, b
    add b
    ld b, b
    ld a, a
    ld hl, $4fb0
    ld h, d
    dec e
    ld a, d
    dec b
    nop
    cpl
    jr jr_02b_680a

    jr jr_02b_67ed

    add hl, bc
    inc c
    inc bc
    ld b, b
    inc b
    ld b, c
    ld b, $01
    nop
    nop
    ld [$0200], sp
    jr c, jr_02b_67de

jr_02b_67de:
    ret nc

    jr nz, jr_02b_67f1

    ldh [rNR42], a
    ld [$f000], sp
    dec bc
    ldh a, [rDIV]
    ei
    db $e3
    inc e
    cp b

jr_02b_67ed:
    ld bc, $7c47
    add e

jr_02b_67f1:
    ld h, h
    sbc e
    ret nz

    ccf
    ld hl, $8020
    ld a, a
    ccf
    jr nz, jr_02b_67fc

jr_02b_67fc:
    ld d, b
    jr nz, jr_02b_6847

    nop
    jr nc, jr_02b_6848

    jr c, jr_02b_6825

    ld e, $7c
    inc bc
    add e
    inc de
    ld a, h

jr_02b_680a:
    nop
    rst $38
    ld hl, $fc03
    ld h, l
    pop bc
    add b
    ld b, b
    ld [$0e00], sp
    nop
    add hl, bc
    ld b, $98
    nop
    rlca
    ld d, b
    adc a
    and b
    ld e, a
    ld b, c
    cp [hl]
    adc a
    nop
    ld [hl], b

jr_02b_6825:
    add hl, sp
    ret nz

    ld a, [hl]
    add b
    db $fd
    ld [bc], a
    adc [hl]
    jr @+$73

    ld b, $f9
    ld hl, $013d
    nop
    inc bc
    ld bc, $0d00
    ld [bc], a
    pop af
    ld c, $01
    cp $21
    nop
    sub c
    ld l, [hl]
    ld a, [bc]
    db $f4
    ld l, h
    sub b
    ret c

    ld h, b

jr_02b_6847:
    nop

jr_02b_6848:
    ldh a, [$60]
    ldh [rLCDC], a
    ret nz

    nop
    ld b, b
    add b
    sub b
    ld hl, $033c
    ld hl, $011e
    inc c
    inc bc
    ld [$0708], sp
    ld de, $210e
    ld hl, $201e
    ld b, b
    rra
    ld hl, $0d72
    ld b, c
    ld a, $94
    ld l, e
    nop
    and h
    ld e, e
    or $5b
    ld a, a
    nop
    nop
    rst $38
    add b
    ld bc, $880e
    ld a, a
    sbc h
    ld a, a
    rst JumpTable
    ccf
    rst $28
    inc bc
    rra
    db $db
    rlca
    add a
    nop
    add b
    dec a
    rra
    ld de, $2100
    cp $71
    cp $fb
    db $fc
    or $f9
    inc b
    call c, $e7e3
    ld bc, $5e03
    ld de, $00ee
    ld d, c
    xor [hl]
    inc sp
    call z, $e01f
    ld c, $f0
    add b
    ld hl, $728d
    sbc a
    ld l, d
    rst $38
    nop
    ld hl, sp+$00
    nop
    db $10
    ldh [$08], a
    ldh a, [$a8]
    ld d, b
    ld hl, sp+$30
    ld d, b
    ldh a, [$5f]
    nop
    ld a, [bc]
    inc bc
    nop
    rlca
    ld bc, $0b00
    dec b
    add hl, de
    ld b, $2c
    inc de
    cpl
    stop
    ld d, e
    jr nz, jr_02b_692d

    nop
    ld b, c
    nop
    ld [bc], a
    ld bc, $21c0
    db $fd
    ret nz

    nop
    pop hl
    add b
    ld a, [c]
    add c
    nop
    db $ed
    sub d
    and d
    ld e, l
    ld a, c
    add [hl]
    db $fc
    inc bc
    nop
    cp $01
    cp a
    ld b, b
    ld [hl], c
    adc [hl]
    ld h, b
    sbc a
    jr nz, jr_02b_692e

    cp a
    add hl, sp
    inc b
    nop
    ld a, [bc]
    inc b
    ld [de], a
    nop
    inc c
    ld h, d
    inc e
    add h
    ld a, b

jr_02b_68fb:
    ld a, $c0
    pop bc
    inc de
    ld a, $00   ; xor a
    rst $38
    ld hl, $3fc0
    ld h, l
    pop bc
    add b
    nop
    add hl, bc
    inc bc
    nop
    ld b, $01
    jp c, $2305

    nop
    call c, $30cf
    rra
    ldh [$3e], a
    pop bc
    ld h, $06
    reti


    inc bc
    db $fc
    ld bc, $21fe
    cp e
    jr nc, jr_02b_6924

jr_02b_6924:
    nop
    ldh a, [rNR41]
    ld hl, sp+$60
    db $fc
    ld h, b
    ld l, d
    nop

jr_02b_692d:
    sub h

jr_02b_692e:
    add hl, de
    and $fd
    ld [bc], a
    push hl
    ld [bc], a
    jp nz, $0004

    and d
    ld b, b
    jr nz, jr_02b_68fb

jr_02b_693b:
    ld hl, $8060
    ld h, [hl]
    nop
    ld a, [hl]
    inc h
    rst $38
    nop
    sbc c
    ld h, [hl]
    rst $20
    jr @+$01

    ld b, d
    rst $38
    ld e, d
    rst $38
    nop
    and l
    ld e, d
    add c
    ld a, [hl]
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    nop
    ld e, d
    inc h
    ld h, [hl]
    jr jr_02b_6999

    nop
    jr nz, jr_02b_6960

jr_02b_6960:
    ld h, b
    nop
    ld h, b
    nop
    and b
    ld b, b
    ldh [rLCDC], a
    ldh a, [$60]
    cp h
    ld b, b
    ld a, a
    jr jr_02b_69c9

    dec h
    cpl
    jr jr_02b_69af

    jr jr_02b_6992

    ld [$000f], sp
    ld b, $01
    dec b
    inc bc
    rlca
    nop
    nop
    nop
    ld [$3800], sp
    nop
    ld d, b
    jr nz, @+$72

    jr nz, jr_02b_69f9

    jr nz, jr_02b_69f3

    jr nc, @-$03

jr_02b_698d:
    jr nc, jr_02b_698d

    ld sp, hl
    db $eb
    inc e

jr_02b_6992:
    cp [hl]
    ld b, a
    db $76
    sbc e
    ld a, a
    and c
    cp l

jr_02b_6999:
    ld e, [hl]
    rst $28
    jr nc, jr_02b_693b

    ld h, a
    nop
    nop
    jr nz, jr_02b_69a2

jr_02b_69a2:
    ld d, b
    jr nz, jr_02b_69fd

    jr nz, jr_02b_6a0d

    jr jr_02b_69e8

    nop
    ld [hl], l
    ld c, $ff
    ld [bc], a
    dec hl

jr_02b_69af:
    call c, $04ff
    rst $38
    jr nc, @-$31

    ld a, e
    or l
    ld c, e
    db $fc
    inc sp
    rst $08
    ld a, b
    or l
    ld c, e
    nop
    nop
    nop
    nop
    ld [$0c00], sp
    nop
    inc c
    nop
    sub h

jr_02b_69c9:
    ld [$885c], sp
    rst $38
    ld [$df3e], sp
    rst $30
    jr c, jr_02b_6a50

    ret nz

    sbc $b0
    ld a, l
    adc d
    ld a, [$de65]
    ld sp, $99e7
    nop
    nop
    ld bc, $0300
    nop
    dec b
    ld [bc], a
    rlca
    ld [bc], a

jr_02b_69e8:
    rlca
    ld [bc], a
    dec bc
    ld b, $f7
    inc c
    xor $70
    ld a, h
    sub b
    ret c

jr_02b_69f3:
    ld h, b
    ldh a, [$60]
    ldh [rLCDC], a
    ret nz

jr_02b_69f9:
    nop
    ret nz

    nop
    ld b, b

jr_02b_69fd:
    add b
    dec l
    ld a, [de]
    dec [hl]
    ld a, [bc]
    ld a, [de]
    dec b
    rrca
    nop
    dec bc
    inc b
    add hl, bc
    ld b, $09
    ld b, $0f

jr_02b_6a0d:
    inc b
    rla
    inc c
    rra
    inc c
    ccf
    nop
    ld e, c
    ld a, $ff
    nop
    or [hl]
    ld e, e
    rst $38
    ld d, d
    ld a, a
    nop
    rst JumpTable
    ld h, c

Jump_02b_6a20:
    cp [hl]
    jp $8afd


    ld a, a
    sub c
    ld l, [hl]
    sub e
    cp h
    ld b, e
    cp $19
    rst $28
    inc a
    rst $08
    ld [hl], $ef
    ld [de], a
    db $ed
    inc de
    ldh a, [rIF]
    ret


    ld b, $86
    nop
    add b
    nop
    nop
    nop
    ei
    add [hl]
    ld a, l
    jp $51bf


    cp $89
    db $76
    ret


    dec a
    jp nz, $987f

    rst $30
    inc a
    di
    ld l, h

jr_02b_6a50:
    rst $30
    ld c, b
    or [hl]
    ret


    rrca
    ldh a, [$9d]
    ld h, e
    ld h, a
    ld bc, $0003
    nop
    nop
    cp [hl]
    ld b, b
    cp d
    ld c, h
    or $08
    sbc h
    ld h, b
    call z, $fe30
    nop
    sub l
    ld l, d
    cp a
    ld c, d
    ld a, a
    ret nz

    ld hl, sp+$00
    ret nc

    ldh [$f8], a
    nop
    xor b
    ld d, b
    ld hl, sp+$50
    ldh a, [rP1]
    nop
    nop
    nop
    inc hl
    nop
    ld e, h
    inc hl
    ld e, b
    daa
    ld b, a
    jr c, jr_02b_6a88

jr_02b_6a88:
    and b
    ld e, a
    or c
    ld c, a
    sbc h
    ld h, e
    jp $003c


    ld a, a
    nop
    inc sp
    rrca
    daa
    rra
    ld c, b
    ccf
    nop
    ld d, c
    ld a, $87
    ld a, b
    adc a
    ld [hl], b
    sub a
    ld l, b
    nop
    ldh a, [rP1]
    inc c
    ldh a, [$36]
    ld hl, sp-$25
    inc a
    nop
    db $ed
    ld e, $d5
    xor $79
    or $dd
    ld a, $00   ; xor a
    cp $0f
    sbc [hl]
    rst $20
    db $e3
    rst $38
    add hl, sp
    rst $38
    nop
    rst $00
    jr c, @-$7c

    ld a, l
    dec de
    db $fd
    dec [hl]
    ei
    nop
    sub [hl]
    ld l, c
    sub [hl]
    ld l, c
    jp c, $fa6d

    ld c, l
    nop
    ld a, [$b64d]
    ld c, l
    rlc l
    rst $00
    inc bc
    ld bc, $078e
    dec e
    ld c, $0f
    nop
    ld bc, $2801
    nop
    nop
    nop
    ld e, e
    db $e4
    inc a
    jp $9f61


    nop
    ld b, e
    cp [hl]
    or e
    ld c, [hl]
    cp c
    ld b, a
    cp h
    ld c, e
    nop
    cp [hl]
    ld b, c
    cp a
    ld b, b
    sbc $21
    ld h, c
    sbc [hl]
    nop
    ld a, l
    add e
    rst $38
    adc h
    rst JumpTable
    adc b
    adc l
    inc bc
    ld b, b
    inc bc
    ld hl, $0108
    nop
    ld [bc], a
    ld bc, $03fc
    nop
    ld c, a

jr_02b_6b12:
    jr nc, jr_02b_6b3b

    jr jr_02b_6b67

    ld l, $58
    daa
    nop
    ld c, h
    inc sp
    ld h, $19
    add hl, de
    ld b, $1f
    nop
    nop
    daa
    rra
    ld c, h
    ccf
    ld d, e
    inc a
    adc a
    ld [hl], b
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_02b_6b12

    inc c
    ldh a, [rP1]
    ld b, [hl]
    ld hl, sp-$4e
    ld a, h
    db $db
    inc a

jr_02b_6b3b:
    ld l, l
    sbc [hl]
    add b
    add l
    jr jr_02b_6b7b

    cp $0f
    di
    rst $38
    inc e
    rst $38
    nop
    jp c, $a73d

    ld a, c
    sub a
    ld l, b
    rst AddAToHL
    ld l, b
    nop
    or $49
    ld a, [$ba4d]
    ld c, l
    jp c, $000d

    rst AddAToHL
    dec c
    adc a
    inc bc
    ld b, $03
    rrca
    inc b
    ld b, b
    dec e
    ld a, l
    jr c, jr_02b_6b67

jr_02b_6b67:
    nop
    ld b, a
    ld hl, sp+$08
    rst $30
    nop
    ld de, $23ef
    sbc $43
    cp [hl]
    ld [hl], c
    adc a
    ld b, b
    cp b
    add c
    ld [$20df], sp

jr_02b_6b7b:
    and $19
    ld [hl], c
    adc [hl]
    ld bc, $b37d
    rst $30
    xor b
    db $eb
    add a
    add a
    ld hl, $0018
    inc hl
    nop
    inc a

jr_02b_6b8d:
    inc bc
    ld d, b
    cpl
    ld c, a
    jr nc, jr_02b_6b93

jr_02b_6b93:
    ld h, b
    rra
    cp c
    ld b, a
    add [hl]
    ld a, c
    sbc a

jr_02b_6b9a:
    ld h, b
    ld b, $6f
    rra
    ld d, e
    ccf
    db $e3
    ld a, c
    ld [$10d9], sp
    sub [hl]
    db $10
    ld l, c
    nop
    nop
    ld bc, $e611
    ld hl, sp-$65
    ld a, h
    add b
    ld bc, $6b11
    rst $30
    cp c
    ld [hl], a
    add $39

jr_02b_6bb9:
    sbc e
    jr jr_02b_6bb9

jr_02b_6bbc:
    or l
    ld a, e
    rst AddAToHL
    jr nc, jr_02b_6bbc

    jr nc, jr_02b_6b8d

jr_02b_6bc3:
    dec b
    add a
    nop
    ld bc, $038f
    ld e, $0f
    dec c
    ld [bc], a
    inc bc
    add b
    ld a, l
    ld c, b
    nop
    nop
    ld e, l
    and e
    cp [hl]
    ld c, c
    cp [hl]

jr_02b_6bd8:
    nop
    ld b, c
    or c
    ld c, [hl]
    xor l
    ld d, e
    sbc a
    ld l, h
    rst JumpTable
    nop
    jr z, jr_02b_6bc3

    jr nz, @+$01

    jr nz, jr_02b_6c67

    and b
    rst JumpTable
    nop
    xor b
    rst JumpTable
    xor b
    ld l, l
    sub e
    sub e
    inc c
    dec c
    ret nz

    rst $38
    ld [$417f], sp
    cp h
    ld b, e
    sub e
    ld l, h
    rst $08
    jr nc, jr_02b_6bff

jr_02b_6bff:
    ld [hl], e
    rrca
    scf
    rrca
    jr z, jr_02b_6c24

    ld b, c
    ld a, $09
    ld d, a
    jr c, jr_02b_6b9a

    ld [hl], b
    ld a, a
    ld h, c
    ld a, c
    cp $7d
    ld b, c
    nop
    rst $20
    jr jr_02b_6bd8

    dec a
    add h
    ld a, e
    dec [hl]
    ei
    ld hl, $e45b
    ld a, a
    pop af
    cp h
    jp $df20


jr_02b_6c24:
    ld a, a
    add hl, sp
    inc b
    ld e, e
    cp [hl]
    ld e, l
    cp a
    ld c, h
    ld a, a
    ld sp, $8bdd
    ld h, b
    adc e
    rra
    ld [$0000], sp
    nop
    ld de, $3f00
    ld de, $133f
    nop
    ccf
    inc e
    ld e, a
    cpl
    ld a, a
    daa
    ld a, a
    ld sp, $7d00
    ld e, $3f
    nop
    rra
    rlca
    rra
    rrca
    nop
    ld a, a
    ccf
    ld a, a
    ld a, $ff
    ld a, b
    rst $30
    ld l, b
    nop
    nop
    nop
    ldh a, [rP1]
    db $fc
    ldh a, [$f6]
    ld hl, sp+$00
    db $db
    inc a
    db $ed
    sbc [hl]
    push de

jr_02b_6c67:
    xor $f9
    cp $00  ; and a / or a
    db $dd
    ld a, $fe
    rrca
    sbc $e7
    db $e3
    rst $38
    nop
    ld sp, hl
    rst $38
    rst $38

jr_02b_6c77:
    jr c, jr_02b_6c77

    ld a, l
    push af
    ei
    nop
    rst $30
    ld l, b
    rst $38
    ld c, c
    rst $38
    ld c, l
    cp a
    ld c, l
    nop
    rst JumpTable
    dec c
    rst AddAToHL
    dec c
    adc e
    dec b
    rlca
    inc bc
    ld bc, $070e
    dec e
    ld c, $0f
    nop
    ld bc, $2801
    nop
    nop
    nop
    db $db
    db $e4
    rst $38
    jp $9eff


    nop
    cp $a5
    cp [hl]
    ld b, c
    rst $38
    jr c, @+$01

    dec a
    nop
    rst $38
    dec a
    cp a
    ld e, h
    cp [hl]
    ld b, c
    ld e, a
    cp [hl]
    ld bc, $83ff
    rst $38
    adc h
    db $dd
    adc e
    adc e
    rra
    ld [$0080], sp
    ld b, b
    ld bc, $0200
    ld bc, $0304
    rra
    nop
    nop
    inc hl
    rra
    ld e, l

jr_02b_6ccc:
    inc hl
    ld a, [hl]
    ld bc, HeaderCGBFlag
    inc a
    ld sp, hl
    ld b, $de
    ld bc, $1c23
    rra
    ld b, b
    nop
    ld hl, sp+$00
    inc c
    ldh a, [$d4]
    jr c, jr_02b_6ccc

    inc e
    nop
    ld a, [hl]
    adc h
    or l
    adc $dd
    and $5d
    and $00
    xor a
    db $76
    sub e
    ld a, [hl]
    jp nz, Jump_02b_4e3f

    ccf
    nop
    ld e, a
    ccf
    or b
    ld a, a
    and e
    ld a, h
    adc a
    ld [hl], b
    ld [bc], a
    sbc a
    ld h, b
    sbc [hl]
    ld h, c
    or [hl]
    ld c, c
    ld bc, $ba10
    nop
    ld c, l
    jp c, $dc0d

    dec bc
    sub h
    dec bc
    adc h
    nop
    inc bc
    inc b
    inc bc
    di
    rrca
    reti


    and $71
    nop
    rst $38
    dec e
    rst $38
    adc a
    ld a, b
    ld a, [bc]
    db $fd
    ld [hl], e
    nop
    db $fd
    db $fd
    jp $c4bb


    ld a, h
    add e
    pop hl
    nop
    rra
    jp $b33e


    ld c, [hl]
    cp c
    ld b, a
    cp h
    db $10
    ld c, e
    cp [hl]

jr_02b_6d38:
    ld b, c
    cpl
    ld [hl], b
    inc b
    inc bc
    rlca
    ld [bc], a
    ld b, $0f
    ld b, $0f
    inc b
    dec e
    cp a
    jr z, @+$31

    ld [hl], b
    cp a
    ld [bc], a
    ld b, b
    sbc $21
    ld h, c
    sbc [hl]
    ld a, l
    cp a
    ld [$08df], sp
    adc b
    adc l
    inc bc
    inc bc
    cp a
    ld e, b
    rlca
    nop
    ld [$0700], sp
    inc de
    inc c
    cpl
    db $10
    jr c, jr_02b_6d6d

    ld b, a
    nop
    jr c, @+$41

    nop
    jr @+$09

jr_02b_6d6d:
    inc de
    rrca
    daa
    ld b, b
    rra
    dec de
    jr nz, jr_02b_6dad

    nop
    call c, $0e38
    db $fc
    nop
    and $1c
    ei
    and $dd
    ld a, [hl-]
    rst $28
    inc e
    nop
    rst $30
    call z, $e67f
    sbc e
    db $76
    srl [hl]
    nop
    ld h, d
    sbc a
    or c
    rst $08
    inc l
    rra
    ld d, b
    ccf
    nop
    ld b, a
    jr c, jr_02b_6d38

    ld h, b
    cp a
    ld b, b
    cp $01
    ld de, $03dd
    sub l
    add l
    ld [$0a15], sp
    dec e
    ld bc, $1018
    inc d
    dec bc
    inc c

jr_02b_6dad:
    adc l
    ld [$e7d9], sp
    add hl, hl
    or $00
    sub c
    ld a, a
    db $dd
    ccf
    ld a, a
    ld hl, sp-$04
    jp $e100


    sbc a
    ld b, e
    cp [hl]
    db $dd
    inc hl
    ld a, $c9
    nop
    cp [hl]
    ld b, c
    or c
    ld c, [hl]
    xor l
    ld d, e
    sbc a
    ld l, h
    ld [$28df], sp
    rst JumpTable
    jr nz, jr_02b_6e03

    ld [hl], b
    ld c, $03
    dec bc
    ld d, d
    ld b, $bf
    db $10
    dec b
    cp l
    jr jr_02b_6de0

jr_02b_6de0:
    nop
    cpl
    ld [hl], b
    rst $38
    add b
    ld bc, $5f08
    xor b
    ld e, a
    xor b
    db $ed
    sub e
    db $d3
    ld h, b
    adc h
    cp a
    stop
    nop
    nop

jr_02b_6df5:
    dec b
    nop
    ld a, [bc]
    dec b
    ld d, $09
    sub b
    ld bc, $2410
    dec de
    ld bc, $2740

jr_02b_6e03:
    add hl, de
    inc de
    dec c
    nop
    ld d, c
    ld c, $78
    rla
    add [hl]
    nop
    adc d
    inc b
    add b
    ld bc, $9620
    inc c
    sub [hl]
    inc c
    sub l
    ld c, $a5
    inc b
    ld e, $ad

jr_02b_6e1c:
    ld e, $6d
    sbc [hl]
    ld bc, $2d10
    sbc $00
    or [hl]
    rst $08
    ld [hl], e
    rst $28
    db $f4
    dec de
    db $eb
    ld e, h
    nop
    rst $30
    ld c, [hl]
    ret c

    ld h, a
    ld l, a
    jr nc, jr_02b_6e91

    ld a, $00   ; xor a
    ld [hli], a
    dec e
    inc e
    inc bc
    inc c
    inc bc
    ld [$0007], sp
    ld [$0907], sp
    ld b, $11
    ld c, $12
    dec c
    nop
    ld a, [de]
    dec c
    ld e, $0d
    dec a
    di
    dec e
    ld a, [$c100]
    ccf
    jr c, jr_02b_6e1c

    rst $00
    jr c, jr_02b_6df5

    ld h, e
    nop
    inc hl
    sbc $5d
    and e
    cp [hl]
    ld c, l
    cp [hl]
    ld e, l
    nop
    cp [hl]
    ld b, c
    or c
    ld c, [hl]
    xor l
    ld d, e
    sbc a
    ld l, h
    ld [$28df], sp
    rst JumpTable
    jr nz, jr_02b_6ea0

    ld [hl], b
    rrca
    inc b
    rrca
    ld h, $04
    dec b
    sub e
    ld [$0001], sp
    nop
    jr nz, jr_02b_6eae

    ld [hl], b
    rst $38
    nop
    jr nz, jr_02b_6f03

    and b
    rst JumpTable
    xor b
    rst JumpTable
    xor b
    ld l, l
    ld [bc], a
    sub e
    sub e
    inc c
    dec c
    inc bc
    inc bc

jr_02b_6e91:
    inc hl
    jr jr_02b_6e99

    nop
    nop
    ld c, $05
    rrca

jr_02b_6e99:
    dec b
    rra
    add hl, bc
    rra
    db $10
    add hl, bc
    ccf

jr_02b_6ea0:
    dec de
    ld bc, $0928
    ccf
    dec c
    ld a, a
    nop
    dec c
    ld a, a
    ld b, $bf
    ld d, e
    ld [bc], a

jr_02b_6eae:
    nop
    add [hl]
    stop
    adc [hl]
    inc b
    ld bc, $9e20
    inc c
    sbc [hl]
    inc c
    db $10
    sbc l
    ld c, $ad
    pop bc

jr_02b_6ebf:
    jr c, @-$4f

    sbc $f6
    rst $08
    inc b
    rst $38
    ld e, b
    db $fd
    ld c, [hl]
    rst $38
    cp l
    ld [$3e79], sp

jr_02b_6ece:
    nop
    ccf
    dec e
    rra
    inc bc
    rrca
    inc bc
    rrca
    rlca
    add b
    ld bc, $1f10
    ld c, $1f
    inc c
    rra
    dec c
    rra
    nop
    dec c
    rrca
    dec b
    di
    rst $28
    ld sp, hl
    cp $ff
    nop
    ccf
    rst $38
    rst $00
    rst $38

jr_02b_6eef:
    jr c, jr_02b_6eef

    push hl
    cp $00  ; and a / or a
    db $dd
    rst $38
    and d
    cp [hl]
    ld c, l
    cp a
    ld e, l
    cp a
    nop
    ld b, c
    rst $38
    ld c, [hl]

jr_02b_6f00:
    rst $38
    ld d, c
    rst $38

jr_02b_6f03:
    ld l, h
    rst $38
    rla
    jr z, @+$01

    jr nz, jr_02b_6f39

    ld [hl], b
    dec bc
    cp l
    jr z, jr_02b_6ece

    ld b, b
    cpl
    ld h, b
    add b
    cp a
    jr jr_02b_6ebf

    rst JumpTable
    xor e
    ld a, l
    sub e
    sbc a
    inc c
    ld c, h
    rrca
    cp a
    ld [$2418], sp
    ld bc, $40e0
    nop
    nop
    rla
    ld hl, sp+$00
    ld l, h
    ldh a, [$83]
    db $fc
    nop
    jr nc, jr_02b_6f00

    inc a
    dec de
    dec a
    ld a, [de]
    cpl
    inc e
    nop
    rra

jr_02b_6f39:
    inc c
    rra
    ld b, $3f
    inc bc
    ld a, l
    inc bc
    nop
    ld e, a
    ld a, $ff
    ld h, b
    ld [c], a
    ld e, l
    jp nz, $213d

    add d
    ld a, l
    ld hl, $fe01
    nop
    rst $38
    ld h, c
    nop
    add b
    ld a, a
    ret nz

    ccf
    ld a, b
    add a
    rst $00
    nop
    add h
    and b
    ld a, e
    sub l
    ld a, $db
    ld h, c
    ccf
    db $dd
    ld b, $ff
    inc e
    jr jr_02b_6f70

    rlca
    push de
    ld h, b
    ld bc, $8180
    inc bc

jr_02b_6f70:
    nop
    inc sp
    nop
    ld a, a
    ld hl, $067f
    inc sp
    ld a, [hl]
    rra
    ccf
    ld b, b
    inc e
    dec bc
    ld b, b
    rrca
    ld b, $00
    ld d, $0d
    inc l
    dec de
    inc de
    ld c, $20
    ld a, [hl]
    nop
    nop
    sbc c
    ld a, [hl]
    and b
    ld a, a
    nop
    rst $38
    pop bc
    nop
    ld a, $81
    ld a, a
    add [hl]
    ld a, e
    ld c, b
    or a
    jr z, jr_02b_6f9d

jr_02b_6f9d:
    ld d, a
    dec e
    ld [hli], a
    inc bc
    dec b
    inc bc
    ld bc, $d001
    rst JumpTable
    ld h, b
    add b
    ld b, c
    ret nz

    nop
    or b
    ret nz

    nop
    ld [$04f0], sp
    ld hl, sp+$22
    call c, $ec12
    ld bc, $42bc
    or $2c
    ld a, [hl]
    inc h
    inc h
    sbc e
    nop
    ld l, h
    sbc a
    sub $39

jr_02b_6fc5:
    adc [hl]
    ld [hl], c
    sbc a
    ld h, d
    nop
    cp a
    ld c, [hl]
    rst $38
    ld a, [hl-]
    cp a
    ld e, b
    dec a
    jp Jump_02b_6a20


    or l
    ld hl, $a37c
    rst $38
    db $10
    rst $30
    ld bc, $380f
    rst $38
    add e
    ld a, h
    db $fd
    ld [bc], a
    cp a
    ld [bc], a
    sbc l
    ld h, d
    or e
    ld c, h
    rst $38
    ld [bc], a
    ccf
    dec e
    ld b, h
    db $e3
    rst $38
    di
    rrca
    inc a
    sbc a

jr_02b_6ff4:
    jr nc, jr_02b_6fc5

    nop
    ld h, [hl]
    sbc a
    jp z, $863d

    ld a, c
    adc [hl]
    ld [hl], c
    nop
    cp c
    ld b, [hl]
    and c
    ld e, [hl]
    cp a
    ld b, b
    ld e, l
    and e

jr_02b_7008:
    jr nz, jr_02b_6ff4

    ld d, l
    ld hl, $5be4
    rst $38
    jr nz, jr_02b_7008

    inc b
    adc a
    ld a, b
    rst $38
    rst $38
    nop
    ld h, b
    ld bc, $0000
    rrca
    ld de, $043f
    ld a, e
    rlca
    ld c, a
    jr nc, jr_02b_7048

    or a
    ld a, b
    ld hl, $30cf

jr_02b_7029:
    dec [hl]
    ld a, a
    add b
    ld [bc], a
    ld l, a
    db $10
    jr nc, jr_02b_7040

    rrca
    db $10
    dec sp
    ld [hl], e
    nop
    inc c
    rst JumpTable
    ld h, b
    cp a
    ret nz

    ld d, a
    adc b
    ld hl, sp+$40
    rlca

jr_02b_7040:
    dec h

jr_02b_7041:
    cp $01
    rst $20
    jr jr_02b_7041

    inc e
    ret nz

jr_02b_7048:
    ld hl, $ff25
    nop
    cp a
    ld b, b
    ld [hl], a
    adc b
    ld [bc], a
    sbc b
    ld b, a
    rlca
    ld [$00fe], sp
    ld hl, $00fa
    inc b
    db $e4
    ld a, [de]
    rrca
    ldh a, [$fb]
    inc b
    rst JumpTable
    rlca

jr_02b_7063:
    ldh [$f9], a
    ld b, $fe
    rlca
    ld hl, $3f25
    add b
    ld hl, $19e6
    add hl, bc
    ld a, [c]
    ldh a, [rP1]
    inc c
    nop
    nop
    ld a, [de]
    inc c
    inc [hl]

jr_02b_7079:
    jr jr_02b_7063

    jr nc, jr_02b_7079

    ld b, $80
    ld l, [hl]
    ldh a, [$fe]
    ld bc, $6177
    db $fd
    nop
    ld [bc], a
    ld a, [c]
    dec c
    ld b, $f8
    ld hl, sp+$04
    nop
    add b
    nop
    dec c
    inc bc
    nop
    dec b
    inc bc
    ld [bc], a
    ld bc, $8001
    ld b, a
    rlca
    ld bc, $010e
    inc de
    inc c
    dec l
    ld [hl], b
    ld e, $21
    rra
    inc c
    jr nz, jr_02b_7029

    nop
    ret nz

    add b
    jr nz, jr_02b_710e

    ret nz

    ld hl, $08f0
    call c, $fce0
    jr jr_02b_70b9

    cp $00  ; and a / or a

jr_02b_70b9:
    ld hl, $1c00
    nop
    ld a, [hl]
    inc e
    push hl
    ld e, [hl]

jr_02b_70c1:
    ld sp, hl
    ld b, [hl]
    nop
    or c
    ld l, [hl]
    rst $20
    add hl, de
    pop hl
    ld e, a
    ld l, b
    scf
    ld [bc], a
    jr nc, jr_02b_70de

    ld hl, $201e
    rra
    dec h
    inc e
    nop
    inc bc
    add hl, bc
    ld b, $0f
    ld bc, $030f
    nop

jr_02b_70de:
    nop
    nop
    ld h, b
    nop
    ld [hl], e
    jr nz, jr_02b_70c1

    inc sp
    pop bc
    nop
    ccf
    ld e, [hl]
    and c
    cp $81
    cp a
    jp c, $003f

    jp c, $ac5f

    xor l
    ld [hl], e
    sbc d
    ld h, l
    cp d
    nop
    ld d, l
    cp h
    ld d, e
    or a
    ld e, b
    cp l
    ld l, e
    stop
    nop
    jr nz, jr_02b_7106

jr_02b_7106:
    ld hl, sp+$00
    ld b, l
    cp b
    add e
    ld [$78fd], sp

jr_02b_710e:
    add a
    ld a, h
    inc h
    ld e, d
    db $fc
    ld e, e
    nop
    ld hl, sp+$37
    or [hl]
    rst $08
    sbc d
    ld h, a
    sbc h
    ld l, e
    nop
    dec a
    jp z, $19ef

    cp a
    push de
    nop
    nop
    nop
    ld [hl], b
    nop
    ldh a, [$60]
    ret nc

    ldh [$5c], a
    and b
    nop
    sub [hl]
    ld l, h
    or e
    ld c, [hl]
    cp e
    ld b, [hl]
    ld a, e
    add [hl]
    nop
    scf
    adc $3d
    sbc $76
    cp b
    call c, JoypadTransitionInterrupt
    cp b
    ret nz

    ld a, h
    add b
    ld b, h
    cp b
    rra
    ld b, $00
    ld e, $0d
    scf
    jr jr_02b_717f

    db $10
    ld [hl], $0f
    nop
    ld l, $1f
    ld d, b
    ccf
    ld e, b
    ccf
    ld b, d
    dec a
    nop
    inc a
    inc bc
    db $10
    rrca
    jr @+$09

    db $76
    add hl, bc
    nop
    call nc, $c93f
    ld [hl], $7f
    nop
    db $db
    scf
    nop
    db $ec

jr_02b_7170:
    rra
    ld a, b
    rst $00
    cpl
    ret c

    rst $20
    dec de
    nop
    ld e, h
    and a
    inc l
    rst $30
    inc a
    rst $30
    ccf

jr_02b_717f:
    ei
    nop
    ccf
    call c, $8f7f
    rrca
    di
    rlca
    ld hl, sp+$04
    sbc h
    ldh [$30], a
    ret nz

    ldh [$3f], a
    db $ec
    ld [hl], $00
    ei
    ld c, $f7
    cp $01
    call c, $7cab
    nop
    rst $08
    ld l, [hl]
    pop de
    ld l, [hl]
    rst AddAToHL
    rst JumpTable
    cp b
    cp e
    nop
    ld a, h
    ld a, [c]
    db $fd
    push hl
    ei
    db $fc
    inc bc
    rrca
    ld b, b
    nop
    ld h, b
    sbc d
    ld a, h
    ret


    ld a, $41
    cp [hl]
    nop
    ld bc, $03fe
    db $fc
    ld h, $d8
    inc a
    ret nz

    nop
    ld a, h
    add b
    db $fc
    ld b, b
    rst $38
    ld h, b
    ld a, l
    or d
    ld b, $3f
    jp c, Jump_02b_4ebf

    cp $9f
    and b
    ld e, $00
    nop
    scf
    ld c, $23
    inc e
    ld hl, $3c1f
    nop
    inc bc
    ld a, e
    inc e
    rst $00
    jr c, jr_02b_7170

    ld [hl], e
    add [hl]
    nop
    ld a, a
    and h
    ld e, a
    ldh [$1f], a
    ld h, b
    rra

jr_02b_71eb:
    jr nz, @+$42

    rra
    dec sp
    ld h, b
    nop
    ld [hl], e
    jr nz, jr_02b_7250

    inc sp
    jr nz, @+$4a

    scf
    scf
    sbc a
    ld h, a
    cp l
    ld e, [hl]
    rst $30
    nop
    jr c, @+$01

    ld h, b
    rst $38
    ld b, b
    ld hl, sp+$07
    rst $20
    ld h, b

jr_02b_7208:
    ld e, b
    dec h
    ld h, c
    stop
    jr nz, jr_02b_720f

jr_02b_720f:
    ld sp, hl
    nop
    nop
    rst $20
    ld sp, hl
    ld [bc], a
    db $fd
    db $fc
    inc bc
    rst $38
    ld [$f7fc], sp
    rrca
    db $fd
    dec h
    nop
    rlca
    ld hl, sp+$0e
    pop af
    cp $fe
    ld bc, $6127
    jr nz, jr_02b_71eb

    sbc b
    ld hl, $4080
    pop bc
    dec hl
    ldh [$80], a
    ldh [rP1], a
    ret nz

    db $fc
    ld b, b
    cp $08
    ld a, a
    xor h
    di
    db $10
    ld l, $f9
    ld d, $21
    ld sp, $1f0e
    nop
    ld [$0305], sp
    inc bc
    nop
    ld h, c
    rlca

jr_02b_724d:
    nop
    rrca
    nop

jr_02b_7250:
    nop
    dec c
    inc bc
    rra
    rlca
    rra
    inc c
    rra
    ld [bc], a
    ld [$091e], sp
    inc c
    inc bc
    inc b
    ld d, a
    rst $38
    inc c
    ld b, b
    rst $38
    add b
    rst $38
    dec h
    ld bc, $fc0a
    rst $38
    nop
    ld b, $77
    ei
    add $f9
    add e
    db $fc
    ld bc, $fe18
    adc c
    db $76
    add hl, de
    dec c
    add c
    rst JumpTable
    jr nz, jr_02b_724d

    nop
    jr nc, jr_02b_7208

    ld hl, sp-$01
    rst $38
    rst $28
    rra

jr_02b_7286:
    cp b
    ld [de], a
    rlca
    adc a
    nop
    jr nz, jr_02b_7286

    ld d, $21
    ei
    inc bc
    inc d
    cp $08
    db $fc
    nop
    ld hl, sp-$7f
    daa
    ld b, b
    rst $38
    ld hl, $ff02
    cp $ff
    db $fc
    sbc [hl]
    jr nc, jr_02b_7304

    ldh a, [$5f]
    ld b, b
    nop
    ld b, b
    inc bc
    nop
    dec c
    inc bc
    rra
    nop
    add b
    ld hl, $0b7f

jr_02b_72b3:
    rst $38
    ld l, e
    rst $08
    db $76
    add a
    nop
    ld a, b
    add e
    ld a, l
    jp Jump_02b_653d


    dec de
    ei
    nop
    ld b, [hl]
    rst $28
    ld [hl], b
    ld hl, sp+$3f
    ld b, a
    nop
    adc a
    nop
    ld b, $fb
    inc c
    add l
    ld a, [$f20d]
    add b
    ld b, b
    ld a, a
    ld hl, $7e81
    jr nc, @+$01

    jr @+$01

    nop
    adc c
    ld a, [hl]
    adc e
    ld a, l
    add a
    ld a, e
    xor a
    ld d, [hl]
    inc b
    ccf
    call $d82f
    nop

jr_02b_72eb:
    ret nz

    add b
    nop
    nop
    ld b, b
    add b
    jr nz, jr_02b_72b3

    ld a, $c0
    and a
    ld e, [hl]
    nop
    rst JumpTable
    ld a, $76
    ld hl, sp-$24
    ldh [$78], a
    add b
    nop
    ld hl, sp+$00
    db $fc

jr_02b_7304:
    ret nz

    cp $20
    jr nz, @+$21

    nop
    jr jr_02b_7313

    ccf
    nop
    ld [hl], l
    ld a, [de]
    rst $20
    ld e, c

jr_02b_7312:
    nop

jr_02b_7313:
    add hl, sp
    and $37
    xor $3f
    db $ed
    rst $28
    ld e, h
    nop
    ld a, [hl]
    rra
    cpl
    ld e, $37
    rrca
    rra
    nop
    nop
    rlca
    inc bc
    ld b, $01
    inc bc
    nop
    ld e, $e9
    nop
    ld a, $c9
    ld sp, hl
    ld b, $f0
    rrca
    sbc e
    rst $20
    nop
    ret


    rst $30
    ret nz

    ccf
    add b
    rst $38
    call nz, $0cfb
    rst $00
    jr c, jr_02b_7312

    ldh a, [$31]
    dec hl
    nop
    rst $38
    nop
    ld b, b
    cp a
    rst $38
    nop
    rst JumpTable
    add sp, $2f
    db $f4
    ld b, b
    rrca
    pop bc
    rra
    add sp, $1f
    ldh [$3f], a
    ret nz

    add b
    inc sp
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    jr c, @+$81

    dec b
    adc [hl]
    rst $38
    inc bc
    add a
    nop
    jr nz, jr_02b_72eb

    ld bc, $400d
    ret nz

    add c
    xor $00
    cp $04
    xor $1c
    inc d
    cp $f8
    db $fc
    ld e, a
    ld bc, $0343
    nop
    inc b
    dec b
    inc bc
    rrca
    nop
    rra
    ld hl, $7f03
    nop
    dec bc
    rst $28
    db $76
    add $79
    add b
    ld a, a
    add c
    ld bc, $c17e
    ld a, $72

jr_02b_7396:
    dec c
    db $fd
    ld b, e
    dec sp
    nop
    ld c, $00
    sbc [hl]
    inc c
    ld a, [c]
    inc e
    add l
    ld a, [$0d30]
    ld a, [c]
    dec [hl]
    ld [hl], a
    nop
    rst $38
    jr nc, @+$01

    nop
    sbc b
    ld a, a
    ret


    cp [hl]
    res 7, l
    rst AddAToHL
    xor e
    jr nc, jr_02b_7396

    ld h, $3f
    ldh [$80], a
    nop
    ld b, [hl]
    add b
    nop
    dec sp
    add $3f
    adc $ba
    ld e, h
    db $fc
    jr nc, jr_02b_73c8

jr_02b_73c8:
    ld hl, sp+$60
    ld hl, sp-$40
    db $fc
    add b
    cp $00  ; and a / or a
    add b
    ld hl, $306f
    ld a, b
    rra
    ld l, $1f
    stop
    rrca
    ccf
    nop
    ld [hl], l
    ld a, [de]
    rst $20
    ld e, b
    jr c, jr_02b_73e3

jr_02b_73e3:
    rst $20
    scf
    xor $3f
    xor $ef
    ld e, [hl]
    ld e, a
    nop
    ccf
    db $76
    rrca
    rst $28
    ld [hl], b
    ret nz

    ccf
    ld a, a
    nop
    nop
    rst $08
    ld [hl], $17
    db $ec
    ld e, $e9
    ccf
    nop
    ret z

    ld hl, sp+$07
    ld sp, hl
    rlca
    call nz, $e2fb
    inc b
    ld a, l
    ldh [$1f], a
    ret nz

    rst $38
    dec h
    db $e3
    inc e
    nop
    rst $20
    ld a, b
    rst $38
    inc bc
    cp $01
    rst $38
    nop
    nop
    rst $38
    ldh [rIE], a
    db $10
    rst JumpTable
    add sp, $2f
    db $f4
    ld de, $748f
    adc a
    inc hl
    db $f4
    rrca
    ldh a, [rNR42]
    nop
    dec de
    db $e4
    ccf
    rst $00
    rst $30
    add hl, bc
    jp hl


    ld e, $95
    ld a, [hl-]
    ld b, b
    cp a
    ccf
    add b
    add c
    ret nz

    add c
    ld b, h
    ldh [$81], a
    ldh a, [rP1]
    ei
    ld a, [hl-]
    jp nz, $0cff

    ld a, [hl]
    cp $1c
    db $fc
    ld e, c
    and b
    ld b, $06
    rrca
    ld c, $0a
    rla
    dec e
    ld h, c
    daa
    dec hl
    call nc, $0080
    dec c
    dec de
    dec de
    rra
    dec d
    ld d, $1e
    rrca
    db $10
    add hl, bc
    rra
    ld de, $1f27
    dec e

Call_02b_7468:
    ld [bc], a
    ld [bc], a
    ret nz

    rst $30
    db $fc
    nop
    nop
    inc a
    inc a
    ld a, [hl]
    ld b, d
    rst $20
    cp l
    rst $20
    cp l
    rst $38
    cp l
    rrca
    rst $38
    nop
    ld a, [hl]
    ld b, d
    inc a
    inc a
    rst $38
    nop
    nop
    db $db
    db $db
    rst $30
    xor l

jr_02b_7487:
    ld h, [hl]
    ld a, [hl]
    rst $38
    sbc c
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    and l
    rst $38
    cp l
    ld b, d
    ld b, d
    db $fd
    inc b
    nop
    rlca
    rra
    ld [bc], a
    dec a
    inc bc
    ccf
    ld a, e
    inc e
    dec b
    inc bc
    nop
    ld a, e
    inc e
    ld h, a
    jr jr_02b_7528

    ccf
    scf
    ld [$0718], sp
    rlca
    ld [$4140], sp
    nop
    jr c, jr_02b_751d

    jr nc, jr_02b_7487

    ld h, b
    and b
    ret nz

    ldh a, [$b8]
    ret nz

    ld hl, sp+$04
    db $fc
    ld d, h
    inc bc
    nop
    db $fc
    db $fc
    db $fc
    db $f4
    ld [$34c8], sp
    jr @-$1e

    ldh [rNR10], a
    db $fd
    nop
    nop
    ld bc, $0106
    add hl, bc
    rlca
    ld d, $09
    dec de
    ld b, $8a
    jr nz, jr_02b_751c

    ld b, $3e
    dec b
    inc b
    inc c
    dec de
    inc l
    jr jr_02b_7565

    jr nc, jr_02b_751b

    inc b
    db $fd
    nop
    nop
    ldh [rNR23], a
    ldh [$f4], a
    ld hl, sp-$02
    ld hl, sp-$09
    ld hl, sp+$40
    ld [bc], a
    ldh a, [$ef]
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    ld a, [$e605]
    jr jr_02b_7510

    ld a, [c]
    ld [$00fd], sp
    nop
    ld bc, $0106
    ld [$0d07], sp
    inc bc

jr_02b_7510:
    rra
    dec c
    dec b
    nop
    jr nc, jr_02b_7553

    dec de
    ld a, $11
    ld a, a
    ld l, a

jr_02b_751b:
    rst $38

jr_02b_751c:
    ld h, b

jr_02b_751d:
    rst JumpTable
    ld h, b
    xor $51
    ld h, e
    inc b
    rst $38
    rst $38
    nop
    rst $38
    ld b, b

jr_02b_7528:
    nop
    jr jr_02b_754a

    ld [$07cb], sp
    db $fd
    ld b, d
    rst $38
    rst $38
    nop
    rst $38
    ld b, b
    nop
    jr jr_02b_75b0

    db $10
    ret nc

    ld h, b
    ld [de], a
    ldh [rIE], a

jr_02b_753e:
    rst $38
    nop
    ld [hli], a
    add b
    rst $38
    db $db
    nop
    ld e, d
    ld h, [hl]
    jr jr_02b_75af

    ld a, [hl]

jr_02b_754a:
    rst $20
    ld e, d
    cp l
    ld b, d
    ld b, d
    nop
    dec b
    ld b, b
    inc bc

jr_02b_7553:
    ret c

    ccf
    ld h, c
    ld e, $1d
    rlca
    ld c, $08
    rlca
    ld [$0d07], sp
    ld [bc], a
    inc d
    add c
    inc bc
    ld b, $01

jr_02b_7565:
    inc b
    inc b
    ld b, $01
    nop
    rlca
    nop
    rla
    nop
    dec e
    jr nz, jr_02b_7575

    db $ed
    and a
    ld b, d
    rlca

jr_02b_7575:
    jr z, jr_02b_753e

    add hl, de
    and $0d
    ld a, [c]
    rra
    pop hl
    dec de
    dec sp
    db $dd
    nop
    nop
    db $76
    cp c
    ld l, l
    or d
    ld a, d
    and a
    ld [hl], b
    xor a
    ld [hl], a
    xor b
    cp [hl]
    ld h, l
    ld a, a
    db $e4
    db $dd
    and $d4
    nop
    nop
    add c
    cp l
    db $db
    inc a
    rst $20
    db $db
    rst $38
    rst $20
    rst $38
    inc h
    rst $38
    inc h
    inc h
    jr @+$3e

    db $db
    inc h
    jp $a5db


    ld e, d
    and l
    ld e, d
    jp $ffc3


jr_02b_75af:
    db $db

jr_02b_75b0:
    nop
    dec d
    inc bc
    ld a, [de]
    rlca
    inc de
    inc c
    daa
    jr @+$31

    db $10
    ld l, $11
    dec [hl]
    ld [hl], l
    ld a, h
    dec d
    ld e, a
    nop
    ld a, [hl]
    ld bc, $efff
    db $eb
    ldh [$a0], a
    ld b, c
    nop
    rla
    xor $b7
    ld l, e
    sub a
    ld l, h
    db $eb
    daa
    ret c

    db $dd
    ld [c], a
    add d
    rst $38
    rlca
    ei
    nop
    nop
    dec h
    db $db
    jp nz, $013d

    cp $e1
    ld e, $76
    add hl, bc
    call nc, $c93f
    ld [hl], $7f
    nop
    and c
    nop
    rst $38
    db $db
    nop
    cp l
    ld a, [hl]
    rst $20
    inc a
    jp $3cc3


    cp l
    ld b, d
    jp $027e


    ld d, [hl]
    add c
    rst $38
    cp l
    rst $38
    jp $ff3c


    ld a, [hl]
    ld a, [hl]
    rst $38
    ld b, d
    nop
    ld b, b
    nop
    nop
    jr jr_02b_7611

    nop

jr_02b_7611:
    inc bc
    nop
    rlca
    ld [bc], a
    nop
    ld c, $07
    inc e
    rrca
    dec e
    ld c, $17
    inc c
    nop
    rrca
    ld b, $1f
    inc bc
    ccf
    ld bc, $0d32
    ld [$1e6d], sp
    ld b, b
    ccf
    rra
    jr nz, @-$1e

    nop
    rst AddAToHL
    nop
    ldh [$98], a
    rst $20
    add b
    ld a, a
    db $dd
    inc hl
    cp [hl]
    nop
    ld b, c
    ccf
    jp c, $9a7f

    rst JumpTable
    inc l
    xor l
    nop
    ld [hl], e
    sbc d
    ld h, l
    cp d
    ld d, l
    sbc $29
    ld h, b
    nop
    rra
    ld c, l
    ld a, $9d
    ld a, [hl]
    sbc a
    ld [hl], b
    sub c
    nop
    ld l, [hl]
    ret nz

    ccf
    add c
    ld a, [hl]
    add e
    ld a, l
    ld h, d
    nop
    dec e
    ld b, d
    dec a
    ld hl, $3b1e
    dec b
    ld l, [hl]
    db $10
    add hl, de
    ld h, [hl]
    add hl, de
    inc a
    db $10
    db $db
    inc l
    rst $38
    inc b
    nop
    rst $28
    ld [hl], b
    ld a, [hl-]
    rst $00
    ld a, c
    or a
    cp [hl]
    ld b, c
    nop
    push bc
    ld a, [hl-]
    ld h, d
    sbc l
    di
    ld l, l
    ld h, e
    sbc l
    nop
    add $39
    ld a, [hl]
    add c
    rst $38
    ld h, b
    ld a, [hl]
    add b
    ld b, b
    ldh a, [$1f]
    ld [$1f60], sp
    ld [hl], b
    rrca

jr_02b_7694:
    ld h, $1f
    nop
    ld c, [hl]
    ccf
    ld c, a
    jr c, jr_02b_76e4

    scf
    ld h, b
    rra
    nop
    ld b, b
    ccf
    ld b, c
    ld a, $31
    ld c, $21
    ld e, $01
    ld [hl], b
    rrca
    db $dd
    ld [hl-], a
    swap h
    ld a, a
    rra
    ld [$7700], sp
    sbc b
    ld e, a
    xor b
    rst $38
    nop
    db $f4
    dec sp
    nop
    sbc a
    ld h, e
    cp h
    ld e, e
    ld e, a
    and b
    ld [c], a
    dec e
    nop
    or c

jr_02b_76c6:
    adc $79
    or [hl]
    ld sp, $e3ce
    dec e
    ld bc, $c0bf
    ld a, h
    or b
    jr c, jr_02b_7694

    ldh [$bb], a
    jr nz, jr_02b_76e8

    ld bc, $0103
    pop bc
    db $10
    ld c, $01
    ld a, [de]
    dec b
    nop
    ld l, $1d

jr_02b_76e4:
    ld a, c
    ld e, $50
    ccf

jr_02b_76e8:
    ret nz

    ccf
    nop
    adc b
    ld [hl], a
    add a
    ld a, b
    db $e3
    dec e
    ld b, e
    dec a
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [$a0]
    daa
    ret nz

    nop
    jr c, jr_02b_76c6

    inc a
    sra c
    rst AddAToHL
    ld l, $d1
    nop
    cpl
    sub $1f
    ld [c], a
    ccf
    call z, $b34d
    nop
    jp c, $ba25

    ld d, l
    cp h
    ld d, e
    or a
    ld e, b
    nop
    ld b, a
    dec sp
    ld l, [hl]
    inc de
    ccf
    ld b, $7b
    inc a
    nop
    rst $38
    ld h, b
    xor $5f
    ret nc

    ccf
    ret c

    ccf
    nop
    ld b, d
    dec a
    inc a
    inc bc
    jr nz, jr_02b_774f

    jr c, @+$09

    nop
    db $76
    add hl, bc
    call nc, $c93f
    ld [hl], $7f
    nop
    nop
    sbc l
    ld l, e
    and $1f
    ld a, b
    rst $00
    cpl
    ret c

    nop
    rst $20
    dec de
    ld e, h
    and a
    inc l
    rst $30
    inc a
    rst $30
    nop
    ccf

jr_02b_774f:
    ei
    cpl
    call c, $8f77
    inc c
    di
    ld b, $07
    ld hl, sp-$65
    rst $20
    ccf
    ld a, a
    jr jr_02b_775f

jr_02b_775f:
    and b
    ld bc, $0001
    rrca
    nop
    ld d, $0f
    ld e, $01
    rra
    or b
    nop
    or b
    nop
    ret c

    or b
    ld hl, sp+$00
    inc c
    ld hl, sp+$00
    ld de, $280e
    rra
    ld d, e
    inc a
    ld [hl], c
    ld a, $40
    ldh [$3d], a
    add hl, bc
    add c
    ld a, [hl]
    db $d3
    dec l
    ld h, a
    dec de
    nop
    ld b, [hl]
    dec sp
    ld b, [hl]
    dec sp
    ld h, a
    dec de
    dec [hl]
    dec bc
    nop
    rra
    ld bc, $030d
    rrca
    inc bc
    inc e
    ldh [$86], a
    ld a, e
    ld b, c
    cp $c1
    cp a
    sub $7b
    ld b, c
    cp l
    db $10
    cp l
    nop
    ld l, e
    rra
    ld b, $1e
    dec c
    ccf
    jr jr_02b_782d

    inc d
    jr nc, jr_02b_7827

    cpl
    cp a
    db $10
    ld e, b
    cp a
    ld a, b
    db $db
    scf
    ld h, b
    db $ec
    cp a
    ret c

    rst $38
    rst $38
    nop
    and l
    ld b, b
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    inc bc
    dec c
    inc bc
    dec e
    inc bc
    dec de
    rlca
    ret nc

    nop
    nop
    rlca
    dec bc
    ld b, $0f
    ld b, $1f
    ld b, $2b
    ld d, $26
    dec de
    ld c, l
    dec sp
    db $10
    ld [$5b3e], sp
    dec a
    pop de
    di
    ld c, h
    rst $28
    ld [hl], c
    cp e
    ld a, l
    rst $38
    ld bc, $7301
    inc a
    ld [$b702], sp
    dec sp
    rlca
    ld d, e
    ld l, $4e
    rst $20
    ld e, a
    db $ed
    ld e, e
    rst $28
    ld e, c
    rst $38
    ld b, a
    ld l, e
    nop
    nop
    rst JumpTable
    add hl, hl
    ld a, a
    adc b
    rst $20
    dec e
    ld a, [c]
    rst $08

jr_02b_780a:
    db $fc
    inc hl
    rst $30
    jr z, jr_02b_780a

    db $ec
    rla
    rst $28
    ld [hli], a
    nop
    rst $38
    and l
    ld a, b
    nop
    ld [$5d5d], a
    ei
    ld d, l
    and a
    ld e, c
    ld a, a

jr_02b_7820:
    inc bc
    ld c, e
    ccf
    nop
    nop
    ld e, h
    ccf

jr_02b_7827:
    cpl
    rra
    db $db
    rlca
    cp $49

jr_02b_782d:
    db $fd
    ld a, $b8
    ld e, a
    db $d3
    inc l
    ld a, h
    nop
    nop
    nop
    rst AddAToHL
    cpl
    db $db
    daa
    rst $28
    ld de, $08f7
    ld a, c
    add [hl]
    cp $89
    rst $38
    ret nz

    rst JumpTable
    add sp, $00
    rlca
    nop
    rst JumpTable
    ldh [$7b], a
    adc h
    cp c
    adc $b8
    rst $08
    db $f4
    rrca
    db $eb
    rlca
    add a
    add h
    nop
    add b
    nop
    ret nz

    nop
    ld b, b
    jr nz, jr_02b_7820

    db $10
    ldh [$98], a
    ldh [$d6], a
    add sp, -$0e
    call c, RST_00
    ld a, [hl-]
    db $fc
    db $f4
    ld hl, sp-$25
    ldh [$7f], a
    sub d
    cp a
    ld a, h
    dec e
    ld a, [$34cb]
    ld a, $00   ; xor a
    ld a, [hli]
    nop
    adc a
    sbc c
    ld a, [hl]
    ld a, c
    ld [hl], l
    ld [hl], l
    ld c, e
    dec [hl]
    ld a, [hl-]
    dec b
    ld e, $01
    rla
    inc c
    nop
    rra
    nop
    ld l, a
    rlca
    ld a, l
    inc hl
    ld a, a
    inc e
    ld e, b
    cpl
    ld l, c
    ld d, $3e
    add d
    nop
    rst $30
    rrca
    db $db
    and a
    rst $28
    ld de, $f9c8
    add [hl]

jr_02b_78a3:
    ld a, $c9
    ld a, a
    add b
    rst JumpTable
    jr z, jr_02b_78aa

jr_02b_78aa:
    rlca
    nop
    rst $38
    ret nz

    db $db
    db $ec
    ld e, c
    xor $f8
    rrca
    call nc, $0b0f
    rlca
    rlca
    add d
    nop
    rst $28
    ldh a, [$db]
    db $e4
    or a
    ret z

    db $10
    sbc [hl]
    ld h, c
    ld a, a
    sub c
    rst $38
    inc bc
    ld a, [$0017]
    rlca
    nop
    db $fd
    inc bc
    db $db
    scf
    sbc d
    ld [hl], a
    rra
    ldh a, [$2b]
    ldh a, [$d0]
    ldh [$e0], a
    and l
    nop
    add b
    nop
    nop
    ld b, b
    ld b, b
    jr nz, jr_02b_78a3

    ret c

    and b
    ld c, b
    ldh a, [$e8]
    ldh a, [rP1]
    rra
    nop
    or $e0
    cp [hl]
    call nz, $38fe
    ld a, [de]
    db $f4
    sub [hl]
    ld l, b
    ld a, h
    rst $38
    ld b, l
    nop
    inc e
    ld [hl], $18
    ld a, $1c
    adc b
    add b
    rst $28
    inc e
    rst $38
    ld b, c
    ld e, l
    cp a
    ld b, c
    sbc l
    cp d
    push bc
    cp a
    ret nz

    rst $30
    ret c

    rst $38
    rst $38
    nop
    push de
    ld b, b
    nop
    add b
    add b
    add b
    ret nz

    and b
    ld b, b
    sub b
    ld h, b
    db $10
    ldh [rTIMA], a
    nop
    ld b, $07
    nop
    dec c
    inc bc
    dec bc
    rra
    ld l, e
    ld d, $ae
    ld e, e
    db $fd
    ld e, e
    di
    ld e, l
    nop
    nop
    pop de
    ld l, [hl]
    xor a
    ld [hl], b
    ld e, e
    dec a
    rst $38
    ld bc, $41bf
    sbc d
    ld a, l
    sub e
    ld a, h
    or l
    ld a, b
    ld [$b702], sp
    cp e
    rlca
    db $d3
    ld l, $4e
    rst $20
    ld e, a
    db $ed
    ld e, e
    rst $28
    ld e, c
    rst $38
    ld b, a
    ld l, e
    nop
    ld [hli], a
    rst $30
    ld e, a
    xor c
    rst $38
    ld [$dde7], sp
    ld a, [c]
    cpl
    db $fc
    inc hl
    add sp, $1b
    db $ec
    rrca
    add b
    ld [$c3ff], sp
    rst JumpTable
    ld h, e
    db $ed
    ld [hl], e
    rst $20
    ld hl, sp-$49
    jp c, $9af7

    ld [c], a
    db $ed
    sub $00
    ld [hli], a
    rst $28
    ei
    sub h
    rst $38
    db $10
    rst $20
    cp e
    ld c, a
    db $f4
    ccf
    call nz, $d817
    scf
    ldh a, [rP1]
    and b
    rst $28
    inc e
    ldh [$9a], a
    db $ec
    cp l
    add $eb
    ld d, $32
    ld a, [c]
    ei
    ld h, [hl]
    rst $38
    inc b
    ld bc, $8052
    sbc [hl]
    ld a, b
    cp $04
    call c, $f8b8
    ret nz

    ld b, b
    ret nz

    nop
    nop
    nop
    inc bc
    nop
    dec b
    inc bc
    dec bc
    rlca
    rrca
    ld b, $28
    rrca
    inc b
    ld hl, $250d
    ld [bc], a
    rla
    ld [$1300], sp
    dec c
    dec hl
    inc e
    ccf
    nop
    ld l, e
    dec e
    nop
    cp $5d
    rst $38
    ld d, h
    ld a, [$a654]
    ld e, b

jr_02b_79ca:
    nop
    ld a, l
    nop
    ld bc, $0200
    ld bc, $0304
    nop

jr_02b_79d4:
    inc c
    inc bc
    dec [hl]
    dec bc
    daa
    dec e
    ld l, $1f
    nop
    rla
    rrca
    ld l, l
    inc bc
    ld a, a
    inc h
    ld a, [hl]
    rra
    ld [bc], a
    ld e, h
    cpl
    ld l, c
    ld d, $3e
    nop
    nop
    inc c
    ld bc, $0000
    ld a, c
    nop
    push af
    jr jr_02b_79d4

    jp hl


    xor $00
    pop af
    db $dd
    inc sp
    db $fd
    inc bc
    jp hl


    rla
    db $db
    inc d
    daa
    di
    cpl
    ei
    ret nz

    ld b, c
    jr nz, jr_02b_79ca

    add b
    ld hl, $c0e0
    ret c

    ldh [$dc], a
    ldh [$ef], a
    nop
    ldh a, [$ee]
    pop af
    push hl
    ld a, [hl-]
    or $39
    di
    nop
    db $fd
    or $ad
    rst $30
    xor h
    rst $38
    and e
    db $db
    nop
    or l
    ld c, a
    or h
    rst $28
    inc d
    db $d3
    ld l, $d9
    nop
    scf
    sbc $39
    rst JumpTable
    ld a, $5f
    cp [hl]
    ld l, a
    nop
    sbc h
    ld a, a
    ret nz

    rst $38
    call nz, $e0ff
    rst $28
    nop
    db $f4
    db $db
    db $ed
    ei
    call $f1ff
    or $00
    db $eb
    db $fc
    set 7, l
    ld a, [bc]
    rst $30
    ret c

    dec l
    ld bc, $7bf3
    add [hl]
    cp $71
    ld hl, sp-$69
    ld hl, $ef00
    ldh a, [rNR31]
    rst $20
    cp $01
    rst $38
    nop
    nop
    ld l, a
    ldh a, [$bd]
    add $dc
    rst $20
    ld e, h
    rst $20
    nop
    ld a, [$7507]
    add e
    jp $0300


    ld bc, $0303
    nop
    dec b
    inc bc
    rlca
    nop
    ld h, c
    add hl, hl
    add b
    ld h, b
    rst $30
    ld c, $e6
    rra
    db $ec
    rra
    ld c, b
    nop
    cp a
    ld a, b
    add a
    adc h
    ld [hl], e
    db $dd
    ld [$00f6], a
    ret c

    db $f4
    ld e, b
    or h
    ld e, b
    add sp, -$70
    ldh a, [$0e]
    add b
    ld b, b
    add b
    add b
    sbc a
    ldh [$2d], a
    ret nz

    inc b
    add b
    ret nz

    nop
    ldh [rLCDC], a
    ld hl, $60d0
    ld b, b
    ldh a, [$81]
    ret nc

    ldh [$f8], a
    nop
    db $f4
    ld hl, sp+$00
    db $fc
    jr jr_02b_7b15

    add sp, $6c
    ldh a, [rBCPS]
    ldh a, [rP1]
    add sp, $70
    db $ec
    sub b
    db $f4
    ret z

    ld [hl], h
    add sp, $00
    cp e
    ld h, b
    cp a
    ld h, d
    rst $38
    inc e
    adc l
    ld a, d
    ld [$34cb], sp
    cp [hl]
    nop
    nop
    ld c, $3c
    nop
    ld e, d
    ld e, $3c
    ld a, [hl]
    inc h
    ld hl, $2925
    nop
    jr nz, jr_02b_7b03

    add b
    jr nz, jr_02b_7af7

    rra
    ld d, $1b
    inc d
    rra
    ld de, $3e00
    ld hl, $497e
    rst $38
    sbc h
    rst $38
    cp h
    inc bc

jr_02b_7af7:
    db $e3
    sbc h
    ld [hl], a
    ld c, c
    ccf
    ld hl, $332f
    inc h
    dec e
    ld d, $5b

jr_02b_7b03:
    rra
    nop
    ret nz

    jr c, @+$3a

    nop
    ld a, h
    ld b, h
    cp $92
    rst $38
    add hl, sp
    cp e
    ld a, h
    nop
    rst $00
    jr c, @+$01

jr_02b_7b15:
    nop
    cp e
    rst $00
    cp $ef
    ld [$ef7c], sp
    add hl, sp
    add $49
    add $d7
    rst $28
    ld e, d
    sub e
    add hl, hl
    rst $00
    add hl, hl
    scf
    add e
    ld d, d
    cp $03
    sub d
    ld a, h
    ld b, h
    jr c, @+$3a

    nop
    nop
    ld de, $0005
    ld b, $07
    nop
    dec c
    inc bc
    dec bc
    rra
    ld l, e
    ld d, $ae
    ld e, e
    db $fd
    ld e, e
    di
    ld e, l
    nop
    inc d
    ld a, [hl]
    pop de
    ld l, [hl]
    xor h
    ld [hl], e
    ld e, e
    inc a
    cp $00  ; and a / or a
    cp d
    ld b, h
    sbc c
    adc l
    ld b, l
    ld a, $00   ; xor a
    ld d, b
    rlca
    inc hl
    inc e
    ld e, $01
    inc bc
    nop
    dec b
    ld [bc], a
    ld [$6418], sp
    dec de
    ld b, e
    dec a
    ld bc, $7020
    ld b, b
    ccf
    db $e3
    rra
    ei
    ld b, a
    rst $38
    ld sp, hl
    ld h, [hl]
    cpl
    jr nc, jr_02b_7b86

    rrca
    nop
    rst $38
    rst $38
    nop
    and l
    ld b, b
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    inc bc

jr_02b_7b86:
    dec b
    inc bc
    dec bc
    rlca
    nop
    nop
    cp e
    rlca
    db $d3
    inc l
    or a
    ld c, e
    db $ec
    ld d, a
    db $fc
    ld b, a
    cp b
    ld l, a
    cp h
    ld h, e
    sbc a
    ld [hl], b

jr_02b_7b9c:
    nop
    nop
    ld c, a
    cp h
    jp $a03f


    ld e, a
    sbc b
    ld h, a
    rst $08
    jr nc, jr_02b_7b9c

    rrca
    rst $38
    nop
    ld a, a
    add b
    nop
    sub a
    rst $38
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ldh [rPCM34], a
    ld hl, sp+$7f
    sbc a
    ldh [$5d], a
    add b
    rst $38
    ld a, a
    add b
    ld a, a
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    nop
    ld d, l
    rst $38
    cp $01
    db $fc
    inc bc
    db $fd
    ld b, $ee
    rra
    db $fd
    di
    rrca
    cp $00  ; and a / or a
    ld a, a
    nop
    ld sp, hl
    rst $38
    rlca
    rst $38
    cp $ff
    rst $30
    ld hl, sp-$05
    ret nc

    nop
    nop
    ldh [$d0], a
    ld h, b
    ldh a, [$60]
    ld hl, sp+$60
    call nc, Call_02b_7468
    ret c

    cp d
    call c, $0500
    ld a, $4a
    cp h
    adc a
    ld [hl], d
    rst $30
    ld c, $bd
    ld a, [hl]
    cp $00  ; and a / or a
    ld a, l
    ld [bc], a
    reti


    ret


    nop
    nop
    jp hl


    ld e, $eb
    inc e
    ld a, l
    add d
    ld b, a
    cp d
    rst JumpTable
    ld a, [hl-]
    cp l
    ld e, d
    cp [hl]
    ld a, b
    ld a, d
    add h
    nop
    ld a, a
    nop
    sbc [hl]
    db $ec
    xor [hl]
    call nc, $38c6
    call z, $f030
    ld d, c
    nop
    add b
    ld bc, $0241
    ld bc, $4103
    add b
    dec h
    rlca
    nop
    dec bc
    rlca
    rrca
    ld b, $0e
    ld a, [bc]
    dec b
    dec c
    inc bc
    dec b
    ld h, c
    ld [bc], a
    cpl
    rlca
    db $10

Jump_02b_7c3f:
    ld bc, $050b
    ld hl, $0e13
    ld l, a
    rla
    nop
    ld c, e
    ccf
    ld e, h
    ccf
    cpl
    rra
    db $db
    rlca
    nop
    cp $49
    db $fd
    ld a, $b8
    ld e, a
    db $d3
    inc l
    nop
    ld a, h
    nop
    ld c, $00
    dec c
    ld b, $07
    inc bc
    add b
    ld hl, $0305
    dec a
    inc bc
    ld e, l
    inc hl
    or l
    nop
    ld c, e
    xor c
    ld d, a
    db $db
    daa
    di
    cpl
    halt
    xor a
    rst $30
    xor [hl]
    rst $38
    and e
    db $db
    or h
    rst $28
    nop
    sub h
    rst $38
    call nz, $06fb
    rst $28
    pop af
    rst $30
    inc b
    jr @-$5f

    db $e3
    add a
    ld a, [$fd21]
    add e
    nop
    or $79
    rst JumpTable
    ldh [$b9], a
    add $78
    adc a
    ld b, c
    ld l, [hl]
    jr nc, jr_02b_7cbb

    ldh [$df], a
    ret nc

    rst $28
    dec l
    sub b
    dec hl
    cp b
    rst $08
    ld hl, $0ff4
    db $eb
    rlca
    ld hl, $0087
    nop
    ld d, $01
    nop
    inc bc
    ld bc, $3021
    ld [bc], a
    ld bc, $6027
    add b
    nop

jr_02b_7cbb:
    ld b, e
    add b
    nop
    and [hl]
    jp $e6dd


    rst $28
    db $f4
    rst $38
    ldh a, [rP1]
    or $f9
    db $fd
    sbc d
    cp $99
    ei
    push af
    nop
    db $eb
    ld [hl], l
    ei
    ld l, l
    rst $38
    ld sp, hl
    cp $f3
    ld [$6bf4], sp
    db $fd
    ld a, [bc]
    add hl, hl
    sub a
    ld sp, hl
    sbc a
    nop
    ld h, e
    rst $38
    add a
    rst $28
    ld e, a
    rst $28
    ld e, [hl]
    cp $00  ; and a / or a
    pop bc
    ld hl, $ffde
    ld [$02ff], sp
    ld a, e
    nop
    sbc h
    dec a
    jp nc, $defd

    ccf
    ret nz

    dec a
    add b
    dec l
    ld bc, $f71b
    ld a, [de]
    rst $30
    rra
    ldh a, [rSC]
    dec hl
    ldh a, [$d0]
    ldh [$e0], a
    nop
    jr nz, jr_02b_7d7e

    ld [$d800], sp
    ld h, b
    ld hl, sp+$45
    cp h
    ld [hl], b
    cp $10
    inc b
    cp [hl]
    ld [hl], h
    ld h, e
    ld_long $ff14, a
    nop
    nop
    reti


    ld h, [hl]
    ld sp, hl
    ld c, $c9
    ld a, $99
    ld a, [hl]
    nop
    pop de
    ld a, $73

jr_02b_7d2d:
    sbc h
    ld a, [hl]
    ret nz

    adc [hl]
    db $f4
    nop
    sbc [hl]

jr_02b_7d34:
    ld h, h
    db $fc
    ld [$58e4], sp
    ld hl, sp+$60
    jr nz, jr_02b_7d2d

    ld b, b
    ld hl, $60b0
    ret nc

    jr nz, jr_02b_7d34

    inc b
    nop
    ret nz

    nop
    and b
    ld b, b
    ld h, c
    ld h, b
    add b
    ld c, $e0
    ld b, b
    ldh [rP1], a
    inc hl
    cpl
    ld hl, $0020
    ret nz

    ret c

    and b
    ld c, b
    ldh a, [$e8]
    ldh a, [$f6]
    nop
    ldh [$be], a
    call nz, $38fe
    ld a, [de]
    db $f4
    sub [hl]
    db $10
    ld l, b
    ld a, h
    nop
    ld b, b
    nop
    ld b, b
    ld a, [hl]
    ld a, [hl]
    add c
    rst $38
    inc a
    rst $38
    nop
    db $76
    bit 5, [hl]
    db $d3
    ld e, d

jr_02b_7d7b:
    rst $20
    ld [hl], d
    rst $08

jr_02b_7d7e:
    nop
    rst $20
    cp l
    rst $38
    jr jr_02b_7d7b

    adc c
    db $76
    ld c, d
    inc c
    inc [hl]
    inc l
    jr jr_02b_7da4

    ld a, l
    and b
    ld a, [hl]
    ld a, [hl]
    ld b, b
    rst $28
    dec e
    dec de
    ld e, $1e
    ld [hl], l
    ld l, a
    db $e4
    sbc a
    nop
    call z, $9e3f
    ld [hl], e
    rst $38
    pop hl
    sbc $22
    ld [bc], a

jr_02b_7da4:
    db $ec
    inc d
    ld hl, sp-$28
    jr nz, @+$22

    cp c
    rlca
    ld bc, $1c00
    inc bc
    jr nc, jr_02b_7dc1

    ld h, c
    rra
    ld hl, $c110
    ccf
    ret nz

    ld b, c
    ldh [$1f], a
    ld hl, sp+$07
    ld [$03fc], sp

jr_02b_7dc1:
    ld a, [hl]
    ld bc, $3f21
    nop
    rra
    add b
    ld e, l
    ldh [rP1], a
    jr @-$1e

    db $f4
    ld hl, sp-$06
    inc b
    db $fc
    cp $fc
    db $fd
    cp $21
    ld a, l
    cp $00  ; and a / or a
    add hl, sp
    cp $01
    cp $03
    db $fc
    ld [bc], a
    db $fc
    ld b, $06
    ld hl, sp+$1c
    ldh [$f8], a
    ld e, l
    jr nz, @+$09

    nop
    nop
    jr jr_02b_7df6

    jr nc, @+$11

    ld sp, $610f
    jr nz, jr_02b_7e15

jr_02b_7df6:
    ld h, b
    add c
    ld a, b
    rlca

jr_02b_7dfa:
    ld a, h
    inc bc
    ld a, $5a
    ld bc, $1f21
    ld e, c
    ld h, b
    ldh [$3f], a
    ldh [rSC], a
    db $ec
    ldh a, [$f4]
    ld hl, sp-$06
    db $fc
    ld hl, $087a
    db $fc
    ld [hl-], a
    db $fc
    ld [bc], a
    ld b, c

jr_02b_7e15:
    inc b

jr_02b_7e16:
    ld hl, sp+$1c
    jr nc, jr_02b_7dfa

    ld hl, sp+$59
    and b
    inc bc
    nop
    inc c
    inc bc
    inc b
    jr jr_02b_7e2b

    db $10
    rrca
    jr nc, @-$7d

    inc a
    inc bc
    inc l

jr_02b_7e2b:
    ld e, $01
    ld hl, $550f
    ldh [$c0], a
    nop
    nop
    jr nc, jr_02b_7df6

    add sp, -$10
    ld hl, sp-$10
    db $f4
    ld hl, sp+$10
    ld [hl], h
    ld hl, sp+$04
    ld b, c
    ld [$18f0], sp
    ldh [$60], a
    ldh a, [rHDMA5]
    ld h, b
    rra
    nop
    inc l
    rra
    ld b, a
    nop
    ld a, $41
    ld a, $67
    jr jr_02b_7e16

    ld a, $ba
    ld bc, $ff7d
    ld b, c
    rst $38
    jr jr_02b_7edd

    inc a
    ld hl, $5f00
    inc a
    ld a, $1c
    dec l
    ld e, $1b
    ld b, $00
    rlca
    nop
    ld a, [hl]
    nop
    sbc c
    ld a, [hl]
    ld c, $fd
    nop
    ld [bc], a
    db $fd
    sbc e
    ld h, h
    ld c, $f1
    push af
    ei
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ld h, b
    ei
    ld h, $f5
    ld a, e
    nop
    push af
    ld a, [$b975]
    db $76
    ld e, h
    inc sp
    dec sp
    nop
    nop
    db $fc
    nop
    ld [hl-], a
    db $fc
    add hl, de
    cp $05
    nop
    ld a, [$ca35]
    add hl, bc
    or $e5
    ld a, [$01f5]
    ld a, [de]
    push af
    jp z, $e6f9

    ld a, [c]
    db $ec
    ld hl, $d200
    db $ec
    ld [c], a
    call c, Call_02b_58e6
    ld [hl], e
    adc h
    nop

jr_02b_7eb2:
    pop bc
    ld a, $b9
    ld a, [hl]
    db $fd
    ld b, [hl]
    push de
    ld a, [hl-]
    nop
    ld a, e
    inc a

Jump_02b_7ebd:
    ld a, d
    inc a
    ld a, h
    jr c, jr_02b_7f36

    jr c, jr_02b_7ec6

    xor b
    ld [hl], b

jr_02b_7ec6:
    ldh a, [rLCDC]
    ret nz

    nop
    nop
    ld a, [bc]
    rlca
    nop
    nop
    dec e
    inc bc
    dec sp
    ld d, $73
    ld a, $63
    nop
    ld a, $4b
    ld [hl], $49
    scf
    ld e, h

jr_02b_7edd:
    inc hl
    inc hl
    nop
    inc e
    jr jr_02b_7eea

    db $10
    rrca
    inc de
    inc c
    dec a
    nop
    inc bc

jr_02b_7eea:
    ld l, e
    ld [hl], $e3
    ld a, [hl]
    jp $c07e


    nop
    nop
    ld a, b
    add b
    db $f4
    ld a, b
    cp $fc
    ld a, a
    nop
    cp $8f
    ld [hl], b
    ld hl, sp+$07
    ld d, c
    xor [hl]
    sub c
    nop
    ld l, [hl]
    ld sp, $28ce
    rst AddAToHL
    ret z

    scf
    ld a, h

jr_02b_7f0c:
    nop
    add e
    or l
    ld a, e
    ld a, a
    db $fd
    ccf
    cp $00  ; and a / or a
    add b
    add b
    ld a, h
    nop
    sbc d
    ld a, h
    dec a
    ld [c], a
    ld a, a
    db $10
    call z, $de7f
    ld hl, $6ebf
    rst $30
    ld c, $00
    db $ed
    add $aa
    call nz, $80cc
    ld b, b
    add b
    jr nz, jr_02b_7eb2

    nop
    adc e
    db $76
    sbc c

jr_02b_7f36:
    ld h, a
    ld c, h
    inc sp
    scf
    ld [$1f20], sp

Jump_02b_7f3d:
    jr nz, @+$21

    jr nc, jr_02b_7f50

    ld h, a
    jr c, @-$02

    ld h, e
    ret


    ld [hl], a
    adc e
    db $76
    ld b, e
    ld a, $43
    ld a, $2b
    ld d, $1d

jr_02b_7f50:
    inc bc
    rlca
    nop
    adc a
    ld [hl], b
    ld a, [c]
    inc c
    ld h, [hl]
    sbc h
    add $3c
    add [hl]
    ld a, h
    jp nz, Jump_02b_443c

    cp b
    db $e4
    jr jr_02b_7f0c

    ret nc

    rst $38
    nop
    sbc a
    ld a, [hl]
    dec a
    cp $3a
    db $fc
    adc h
    ld [hl], b
    ld [hl], b
    add b
    ret nz

    nop
    nop
    nop
    inc bc
    nop
    dec b
    inc bc
    ld [$1f07], sp
    nop
    ld hl, $5c1e
    ccf
    ld a, [hl]
    inc hl
    ld a, [hl]
    add hl, de
    ld a, [hl]
    dec a
    cp [hl]
    ld a, l
    rst $30
    ld a, b
    ret c

    ld h, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rst $38
    nop
    add b
    ld a, a
    rst $08
    or b
    db $db
    rst $20
    ld de, $bdef
    ld b, d
    ld h, b
    sbc a
    ld e, h
    cp a
    ld a, [hl]
    and e
    ld a, [hl]
    sbc c
    sbc $3d
    ld a, [hl]
    dec a
    ld a, e
    inc a
    ld l, h
    jr nc, @+$72

    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rrca
    ldh a, [$9b]
    ld h, a
    sub c
    rst $28
    inc e
    db $e3
    or b
    ld c, a
    ld l, a
    sbc a
    ld e, a
    or b
    ld e, a
    and [hl]
    ld e, a
    xor a
    cp a
    rrca
    ld e, $0f
    rla
    ld c, $0e
    inc b
    ld b, $00
    rst $38
    nop
    ld bc, $03fe
    db $fd
    add e
    ld a, a
    add b
    rst $38
    xor c
    ld d, [hl]
    ld l, e
    sub h
    ld h, $d9
    and d
    db $dd
    and [hl]
    ld e, c
    cp c
    ld b, b
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_02b_7ff5

jr_02b_7ff5:
    jr z, @+$12

    dec l
    db $10
    ld [de], a
    dec c
    ld a, c
    rlca
    and l
    ld e, a
    db $ed

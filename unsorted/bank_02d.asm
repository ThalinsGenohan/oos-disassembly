; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02d", ROMX

    ld hl, $3f20
    rst $38
    inc bc
    rst $38
    xor a
    ld b, a
    ld bc, $ffd5
    ld d, l
    rst $38
    ld [bc], a
    rst $38
    ld d, a
    ld c, c
    nop
    cp $ff
    push af
    rst $38
    add sp, -$01
    ld b, d
    rst $38
    inc d
    ld b, b
    rst $38
    cp a
    ld c, l
    ld a, [c]
    ld b, e
    ld a, a
    rst $38
    ld e, b
    rra
    ld b, l

jr_02d_4026:
    nop
    ld b, c
    jr nz, jr_02d_4026

    rst $38
    ret nz

    call nc, $205f
    xor e
    adc a
    and b
    ld b, e
    ret nc

    rst $38
    nop
    cp $ff
    db $fd
    rst $38
    ld c, a
    rst $38
    dec bc
    db $f4
    ld [bc], a
    ld bc, $aafe
    ld d, l
    dec b
    ld a, [$4775]

jr_02d_4047:
    ld b, b
    rst $38
    jr nz, jr_02d_4047

    inc bc
    cp $01
    xor b
    ld d, a
    jp $612d


    ldh a, [rIE]
    ret nz

    rst $38
    dec sp
    ccf
    ret nz

    ld a, l
    ld bc, $0009
    ld bc, $a200
    nop
    ld c, e
    ld b, $00
    db $f4
    dec bc
    xor c
    ld d, [hl]
    xor a
    ld h, b
    ld e, $18
    ld e, $03
    inc bc
    xor c
    and b
    xor d
    xor d
    rst $38
    ld bc, $7fff
    ld a, a
    dec c
    rrca
    ld b, $07
    ld l, l
    nop
    dec b
    dec b
    xor a
    xor a
    db $fc
    db $fc
    ldh [$e0], a
    jp nz, $2329

    inc d
    inc d
    cp b
    cp b
    dec h
    add b
    db $10
    add b
    ld a, [bc]
    ld a, [bc]
    dec [hl]
    ld a, d
    ld a, d
    rst JumpTable
    rst JumpTable
    pop bc
    ld a, a
    jr nz, jr_02d_40f2

    ld d, l
    xor e
    xor e
    rst $38
    add b
    ld b, b
    rrca
    ld b, b
    ld b, $06
    add e
    add e
    ld d, b
    ld d, b
    inc h
    ld [$6fea], a

jr_02d_40af:
    ret nz

    ret nz

    dec a
    jr nc, jr_02d_40e4

    nop
    db $f4
    db $f4
    ld e, a
    ld e, a
    cpl
    cpl
    db $e4
    db $e4
    jr nc, jr_02d_40af

    ldh a, [$2d]
    ld h, b
    rlca
    rlca
    ld c, e
    ld c, e
    ret nz

    ld a, l
    ld h, b
    rla
    rla
    dec hl
    dec hl
    ld e, [hl]
    ld e, [hl]
    ld [$fdfd], sp
    cp $fe
    ld l, l
    ldh [$e0], a
    ld hl, sp+$01
    ld hl, sp+$7f
    ld a, a
    rrca
    rrca
    ld e, a
    ld e, a
    cp l
    ld b, h
    nop
    nop

jr_02d_40e4:
    dec bc
    ld bc, $0a00
    dec c
    dec bc
    ld a, [hl+]
    nop
    db $10
    ld d, a
    nop
    cp a
    dec c
    add hl, bc

jr_02d_40f2:
    xor d
    nop
    ld e, l
    nop
    dec d

jr_02d_40f7:
    rst $38
    nop
    ld a, [$090f]
    ld b, b
    ld d, c
    ld b, l
    ld b, e
    inc b
    ld de, $040e
    inc bc
    ld bc, $024f
    nop
    inc b
    dec d
    nop
    xor a
    nop
    rst $38
    sbc e
    xor d
    xor d
    nop
    ld e, a
    ld e, a
    rst $38
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    ld h, $c0
    ret nz

    ld l, a
    add b
    add b
    daa
    dec hl
    ld e, $00
    ld e, $0f
    rrca
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [hl], b
    inc bc
    dec h
    ld [hl], l
    jr nz, jr_02d_419b

    ld l, b
    db $fc
    db $fc
    inc bc
    ldh a, [$f0]
    ld a, l
    db $fd
    cp a
    rst $38
    dec a
    or c
    rlca
    sub l
    sub l
    sub a
    sub a
    inc bc
    ld e, a
    jr nz, jr_02d_40f7

    db $10
    ld e, a
    ld e, a
    rst $38
    nop
    dec bc
    rst JumpTable
    rst $38
    rst $08
    rst $38
    add b
    or a

jr_02d_4154:
    cp a
    nop
    ld a, [hl]
    ld bc, $2ad5
    xor b
    add hl, bc
    ld d, a
    nop
    rst $38
    ldh a, [$80]
    db $fc
    db $fc
    dec a

jr_02d_4164:
    jr nc, jr_02d_4164

    cp $23
    jr nz, jr_02d_41e9

    ld a, a
    inc bc
    inc bc
    ret nz

    ccf
    jr nz, jr_02d_4154

    db $e3
    ccf
    ccf
    sbc h
    sbc h
    ld a, $e8
    add sp, $73
    ldh [$3b], a
    jr nz, jr_02d_41e5

    ld hl, sp+$18
    ld hl, sp-$02
    cp $67
    dec h
    db $fd
    db $fd
    dec d
    ld b, c
    nop
    nop
    ld c, $7f
    nop
    ld a, [hl+]
    nop
    inc b
    dec c
    add hl, bc
    nop
    xor d
    nop
    ld b, b
    nop
    add b
    nop
    ld [bc], a

jr_02d_419b:
    nop
    dec b
    ld d, l
    nop

Jump_02d_419f:
    ld a, [bc]
    nop
    ld bc, $1791
    add l
    add b
    cpl
    ld_long a, $ff00
    nop
    ccf
    nop
    rrca
    or a
    ld b, l
    ld a, a
    ld b, l
    dec [hl]
    xor d
    ld c, c
    ld h, c
    ld b, b
    nop
    nop
    dec bc
    db $10
    db $10
    ld a, b
    ld a, b
    ld bc, $8401
    xor e

jr_02d_41c2:
    dec c
    dec c
    inc bc
    inc bc
    ld h, a
    rst $38
    rst $38
    nop
    db $e3
    rst $38
    jr jr_02d_41ed

    rrca
    rrca
    ld b, b
    ld b, b
    add [hl]
    add hl, hl
    rra
    rra
    ld a, a
    ld a, a
    dec h
    jr nz, jr_02d_41c2

    db $10

jr_02d_41dc:
    rst $20
    ret nz

    ret nz

    add hl, sp
    ld d, l
    ld d, l
    ldh [$e0], a
    sub b

jr_02d_41e5:
    dec h
    db $fc
    db $fc
    dec h

jr_02d_41e9:
    push af
    push af
    cp $fe

jr_02d_41ed:
    sub b
    add hl, sp
    inc bc
    inc bc
    dec l
    ld hl, sp-$08
    rst $08
    rst $38
    nop
    ld b, e
    ld a, a
    ld [hl], c
    ld a, a
    ld a, $3f
    rrca
    rrca
    ld bc, $9f9f
    cp $ff
    ld a, [hl]
    ld a, a
    rst $38
    nop
    dec c
    ld d, b
    rst JumpTable
    ld [hl+], a
    nop
    ld hl, $d02f
    ld [bc], a
    db $fd
    dec b
    add l
    ld a, d
    ld l, e
    inc d
    sbc a
    ld c, e
    ld hl, sp-$80
    ld h, b
    ldh a, [rLCDC]
    dec h
    ld a, [$fdfa]
    db $fd
    ld a, a
    adc b
    ld b, b
    ccf
    ccf
    cpl
    ld b, c
    scf
    ccf
    add hl, sp
    ld bc, $5f3f
    ld e, a
    cp $fe
    rst $38
    rst $38
    dec [hl]
    ldh [rNR51], a
    ld h, a
    and b
    rst $20
    rst $20
    ld bc, $0001
    and b
    nop
    add hl, bc
    rst $38
    ld b, c
    ld c, e
    or h
    and c
    ld e, [hl]
    ld b, b
    ld b, b
    cp a
    adc d
    rst $38
    ld [c], a
    nop
    push bc
    nop
    ld a, [$4881]
    ld a, a
    add b
    dec hl
    call nc, $fe01
    jr z, jr_02d_41dc

    ld c, c
    nop
    rst JumpTable
    nop
    db $fd
    ld [bc], a
    ldh a, [rIF]
    inc c
    add sp, $17
    ld b, b
    cp a
    ld l, a
    ld h, c
    and c
    ld e, [hl]
    ld [bc], a
    rlca
    ld hl, sp+$0b
    db $f4
    dec b
    ld_long a, $ff4f

jr_02d_4276:
    jr nc, jr_02d_4276

    cp $44
    nop
    add hl, bc
    rlca
    rlca
    xor e
    xor e
    jr nz, @-$27

    rst $10
    rrca
    ld a, [bc]
    ld hl, sp-$08
    push af
    push af
    ld a, [$fa43]
    rrca
    ld a, [bc]
    ld [hl+], a
    ld [hl+], a
    ld d, a
    ld d, a
    dec c
    ld a, [bc]
    jr nz, jr_02d_4296

jr_02d_4296:
    ld e, $1e
    ld b, e
    ld b, e
    ldh [$e0], a
    di
    di

jr_02d_429e:
    jr nz, jr_02d_429e

    cp $af
    ld a, [$e2fb]
    db $e3
    inc bc
    nop
    inc bc
    ld bc, $0501
    dec b
    dec bc
    dec bc
    cpl
    db $10
    cpl
    sbc a
    sbc a
    ld sp, $ff3f

Jump_02d_42b7:
    rst JumpTable
    ccf
    ld bc, $dfa1
    ld sp, hl
    rst $38
    db $fd
    rst $38
    cp $5f
    jr nz, @+$01

    nop
    ld hl, $001f
    dec b
    nop
    xor d
    ld a, $00
    ld a, a
    ld c, c
    ld hl, $0c00
    dec [hl]
    add hl, sp
    cpl
    nop
    nop
    ld d, l
    nop
    ld [$5100], a
    nop
    ld [bc], a
    nop
    nop
    ld b, c
    nop
    adc d
    nop
    ld d, h
    nop
    rst $30
    nop
    ld [$04fb], sp
    ld hl, sp+$07
    jp nc, $202c

    inc b
    call c, $3048
    ret nz

    nop

jr_02d_42f6:
    jr nz, jr_02d_42f6

    nop
    ld b, $a0
    ld b, b
    ld d, l
    add b
    ld b, $49
    and b
    ld sp, $3f01
    rst $38
    rst $38
    add sp, -$18
    ld bc, $ef01
    ld hl, $fdfd
    cpl
    rla
    rla
    ld a, a
    ld a, a
    rst $28
    jr nz, jr_02d_436a

    ld d, h
    cpl
    ld a, [$80fa]
    add b
    ld bc, HeaderROMSize
    pop af
    xor b
    xor b
    ld h, l
    ld e, l
    ld e, l
    rlca
    ld [hl], b
    rlca
    ld h, a
    dec a
    jr nz, @+$41

    rst $38
    add e
    rst $38
    inc bc
    call nc, $f9fb
    cp $0e
    rrca
    inc sp
    ld l, a
    add b
    ld h, b
    pop af
    rst $38
    rst $00
    ccf
    rrca
    rst $38
    cp $50
    cp $ef
    ldh a, [rSCX]
    rrca
    rrca
    nop
    nop
    add b
    xor l
    cp a
    rst $38
    ccf
    rst $38
    adc h
    rst $38
    rst $08
    ld e, $ff
    ld [hl], a
    ld a, a
    rst $38
    ld h, b
    inc sp
    scf
    nop
    ret nc

    nop
    rrca
    dec [hl]
    ld a, a
    sub a
    cp l
    rst $38
    dec a
    rst $38
    rra
    ld d, l
    rst $38
    ld d, a

jr_02d_436a:
    ld l, $80
    inc sp
    ld h, c
    dec [hl]
    inc bc
    cp e
    rst $38
    inc bc
    nop
    ld bc, $2000
    inc hl
    nop
    ld a, [bc]
    nop
    stop
    inc b
    nop
    jr z, jr_02d_4381

jr_02d_4381:
    ld bc, $00a8
    inc a
    ret nz

    sub b
    ld h, b
    ld b, b
    ld d, e
    add h
    nop
    ld h, $2a
    ld a, [hl+]
    ld bc, $2501
    xor b
    xor b
    db $10
    push de
    push de
    rst $38
    add b
    push af
    push af
    ld a, a
    ld a, a
    inc h
    rlca
    rlca
    ld sp, $5555
    xor a
    ld d, h
    ld d, h
    sbc c
    ld h, l
    rla
    rla
    dec [hl]
    dec h
    db $fd
    db $fd
    inc hl
    ret nz

    add hl, de
    ld a, [bc]
    jr nz, jr_02d_4404

    ld d, b
    add sp, -$18
    db $dd
    ld [hl+], a
    nop
    ld e, l
    and d
    ld e, h
    and e
    ld d, [hl]

jr_02d_43bf:
    xor c
    ld d, $e9
    nop
    ld [hl], $c9
    or [hl]
    ld c, c
    rst $30
    ld [$8b74], sp
    sub b
    ld hl, $9b64
    ld hl, $1be4
    pop hl
    rra
    jr nz, jr_02d_43bf

    rla
    ld hl, $b758
    ld e, d
    or l
    ld a, [de]
    nop
    push af
    ld [de], a
    db $fd
    ld a, [de]
    db $fd
    adc e
    ld a, l
    add e
    inc b
    ld a, l
    pop bc
    ccf
    ld e, l
    rst $38
    ld h, c
    db $fd
    ld a, a
    ld d, c
    or l
    ld b, c
    rst $20
    ld b, c

jr_02d_43f4:
    sub c
    rst $38
    pop de
    ld b, c
    db $10
    push de
    ei
    call nc, $f441
    ei
    ldh [rIE], a
    db $10
    ld d, a
    cp a

jr_02d_4404:
    rst $10
    add c
    sub a
    rst $38
    sub e
    rst $38
    ld d, l
    db $db
    ld b, c
    rst $30
    add c
    or $41
    cp $81
    dec d
    adc e
    rst $38
    xor e
    add c
    db $eb
    ld b, c
    rst $28
    ld b, c
    ld [hl], b
    nop
    nop
    rrca
    jr nc, jr_02d_4443

    and b
    ld e, a
    ld a, [$2c05]
    db $fd
    ld [bc], a
    daa
    db $fd
    adc l
    ld hl, $1ce3
    ld bc, $f00e
    jr nc, jr_02d_43f4

    add b
    nop
    add hl, de
    rst $08
    nop
    ret nz

    nop
    dec d
    nop
    add hl, bc
    nop
    or a
    nop
    ld b, h
    ld e, a

jr_02d_4443:
    ld c, e
    rst $00
    rst $00
    nop
    nop
    dec c
    inc a
    rst $38
    ld a, [bc]
    ld e, d
    rst $20
    and l
    jp $ada1


    ld b, e
    rst $38
    sbc a
    ld b, b
    ldh [$e0], a
    rra
    ld a, [bc]
    ld l, a
    jr nz, @+$11

    ld a, [bc]
    cpl
    rst $38
    nop
    dec b
    ld b, $02
    ld [de], a
    rst $38
    nop
    ld a, a
    add b
    rst JumpTable
    dec de
    call nz, $5415
    nop
    jp z, $95b5

    sub l
    sub c
    adc $91
    adc $b9
    add $ba
    call nz, $d4ab
    ld b, h
    dec b
    inc bc
    xor h
    xor [hl]
    ld bc, $38bc
    rlca
    ld a, [de]
    dec b
    jr jr_02d_4491

    ld e, h
    ld e, h
    add b
    ld [bc], a
    db $ed
    ld [de], a
    xor l

jr_02d_4491:
    ld d, d
    and l
    ld e, d
    or l
    ld c, d
    or h
    ld c, e
    inc a
    jp $837c


    ld [de], a
    ld d, l
    nop
    ei
    dec l
    dec l
    dec h
    dec [hl]
    inc sp
    rst $38
    inc de
    rst $38
    rlca
    rst $38
    rla
    rst $28
    ld d, l
    nop
    rst $38
    add sp, -$18
    add sp, -$08
    jp hl


    cp $e9
    cp $f5
    cp $f5
    cp $55
    ld d, l
    rst $38
    ld [hl], l
    ld [hl], l
    ld d, l
    ld e, l
    ld e, l
    ld e, l
    dec a
    dec [hl]
    ld [bc], a
    rst $38
    nop
    db $fc
    ld bc, $04f0
    jr nz, jr_02d_4523

    ld d, b
    rra
    rst $38
    nop
    ldh a, [$80]
    ret nz

    and b
    ld [bc], a
    or l
    jp z, $b1ca

    adc $99
    add $b9
    add $91
    adc $99
    add $ca
    dec b
    db $10
    dec b
    xor [hl]
    ld bc, $012e
    ld a, [hl+]
    ld c, d
    ld e, b
    rlca
    ld e, d
    ld e, b
    rlca
    jr jr_02d_44fd

    nop
    ld a, [hl+]
    sbc $f4
    dec bc
    db $f4
    dec bc

jr_02d_44fd:
    ldh a, [rIF]
    ret c

    daa
    jp c, $2125

    ld hl, $0021
    dec d
    ccf
    ld d, d
    cp a
    ld e, d
    or a
    dec de
    rst $30
    dec de
    rst $30
    adc l
    ld [hl], a
    push bc
    rst $00
    rst $00
    ld b, b
    dec d
    rst $38
    ret nc

    reti


    cp $d9
    cp $d9
    cp $fd
    cp $fc

jr_02d_4523:
    db $f4
    or $55
    ld d, l
    rst $38
    ld e, l
    ld e, l
    ld c, l
    call $eded
    xor l
    cp l
    xor d
    xor d
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ret nz

    ld bc, $0000
    nop
    nop
    ld b, $07
    dec bc
    inc c
    ld a, a
    ld a, b
    ld d, b
    nop
    sub h
    xor $ce
    call z, $c496
    sbc [hl]
    inc e
    adc [hl]
    sbc b
    ld c, $ba
    inc c
    ld b, d
    inc e
    ld a, [bc]
    nop
    inc l
    ld [hl], h
    dec bc
    inc a
    inc bc
    inc de
    inc de
    ld [$5937], sp
    ld h, $5b
    ld h, $77
    ld a, [bc]
    nop
    and b
    ld a, [hl-]
    db $ed
    ld [de], a
    and a
    ld e, b
    or [hl]
    ld c, c
    or d
    ld c, l
    push bc
    push bc
    ld a, e
    add h
    rst $28
    db $10
    ld d, b
    nop
    rst $28
    ld d, $52
    ld b, e
    rst $38
    ld d, a
    rst $38
    rra
    rst $30
    cp l
    ld [hl], a
    cp c
    ld [hl], a
    ld h, l
    cp e
    ld d, l
    ld d, l
    rst $38
    db $f4
    db $f4
    pop de
    pop de
    reti


    ret


    db $ec
    db $ec
    ld d, l
    ld d, l
    rst $38
    or l
    or l
    cp l
    ld a, [hl-]
    ld e, d
    ld e, h
    ld e, [hl]
    cpl
    inc a
    nop
    add b
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ret nz

    ld a, b
    cp b
    inc l
    call c, $fe3e
    rst $38
    rst $38
    nop
    ld b, l
    ld b, h
    add $b9
    sbc l
    jp nz, $99b9

    sbc c
    sub l
    jp z, $b5b9

    jp z, Jump_02d_5101

    dec b
    adc h
    inc bc
    inc c
    inc bc

jr_02d_45c9:
    xor b
    rlca
    xor d
    ld [$eeaa], a
    ld bc, $a0aa
    nop
    rst $30
    ld [$f208], sp
    dec c
    ld a, [$fa05]
    dec b
    cp $01
    cp $01
    db $ec
    inc de
    nop
    dec d
    ld a, a
    ld d, d
    cp a
    ld e, d
    or a
    dec de
    rst $30
    dec de
    rst $30
    adc l
    ld [hl], a
    add l
    add l
    adc l
    ld d, l
    ld d, l
    rst $38
    jp nc, $dad2

    ret z

    db $ec
    db $ec
    db $fc
    db $fc
    ld d, l
    ld d, l
    rst $38
    dec e
    dec e
    ld e, l
    ld e, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ret nz

    ld [$360f], sp
    add hl, sp
    ld e, l
    ld h, d
    ld a, a
    add b
    ld a, [hl]
    add c
    dec sp
    call nz, $0260
    add hl, bc
    ld [$3f04], sp

jr_02d_461b:
    jp nz, $85c4

    adc b
    nop
    cp $01
    pop hl
    ld e, $93
    ld l, h
    ret z

    ld [hl], e
    db $fc
    nop
    ld b, l
    nop
    inc c
    jr c, jr_02d_461b

    jr jr_02d_45c9

    ld [hl], b
    dec [hl]
    ret nz

    inc bc
    and [hl]
    ld bc, $0dcf
    nop
    nop
    xor e
    ld d, [hl]
    or e
    ld c, [hl]
    ld d, e
    xor [hl]
    add $3f
    ld h, $df
    ld l, l
    sub a
    rst $08
    scf
    jp nc, $802f

    db $10
    db $ed
    ld [de], a
    ld l, l
    sub d
    ld h, l
    sbc d
    ld [hl], h
    adc e
    ld d, b
    xor a
    ld [de], a
    sbc d
    ld h, l
    sub a
    ld h, b
    ld d, b
    nop
    cp e
    ld h, [hl]
    ld c, [hl]
    adc e
    ld a, a
    adc a
    ld a, a
    push bc
    ccf
    ld d, h
    xor a
    sub $2f
    ld d, d
    xor a
    ld d, l
    ld d, l
    rst $38
    ld a, [$fefa]
    db $fc
    push af
    cp a
    cp a
    ld a, e
    nop
    nop
    adc a
    ld a, a
    and [hl]
    ld e, a
    ld c, e
    or a
    ld e, l
    and e
    ld d, $e9
    cpl
    ret nc

    inc de
    db $ec
    ld bc, $05fe
    ld b, b
    rst $38
    rlca
    ei
    jp $30fc


    ret nz

    ld [hl], c
    call z, $be3f
    ld a, a
    rst $28
    rra
    ld bc, $fc54
    ret nz

    ret nz

    or b
    ldh a, [$58]
    ld hl, sp+$0c
    or [hl]
    add $2f
    rst $38
    ld hl, sp-$40
    nop
    nop
    ld bc, $0201
    inc bc
    rrca
    ld c, $3a
    dec a
    ld e, a
    ld h, b
    cp a
    ret nz

    rst $38
    add b
    inc b
    dec d
    nop
    db $fc
    ret nz

    pop hl
    ldh a, [$f8]
    ld b, b
    add b
    ld sp, $e7c0
    adc h
    ccf
    ld d, l
    ld b, b
    nop
    db $ec
    add b
    ld [bc], a
    rrca
    add b
    ld c, $01
    ld [hl], c
    ld c, $c3
    inc a
    sub b
    nop
    ld [hl-], a
    add hl, bc
    ld b, l
    adc [hl]
    ld bc, $05fa
    db $fc
    inc bc
    ldh a, [rIF]
    and h
    ld e, e

jr_02d_46e6:
    add hl, de
    rst $20
    nop
    ld d, l
    rst $38
    db $e4
    rra
    push de
    cpl
    xor $1f
    add a

jr_02d_46f2:
    ld a, a
    dec l
    ld e, a
    sbc a
    cp a
    and b
    jr nz, jr_02d_46e6

    ld a, [c]
    ld a, [c]
    ld a, [$dae0]
    ldh [$f8], a
    ret nz

    ret nc

    xor h
    ret nc

    adc l
    ldh a, [$a0]
    nop
    nop
    ld [bc], a
    ld bc, $0707
    add hl, bc
    ld c, $37
    jr c, jr_02d_4772

    ld h, b
    cp a
    ret nz

    rst $38
    add b
    dec b
    push de
    nop
    ldh a, [$e0]
    pop bc
    add b
    rst $20
    sub e
    adc c
    ccf
    rst $38
    dec b
    db $10
    ld bc, $0033
    add a
    nop
    adc $3e
    reti


    ld b, $7e
    ld [c], a
    rra
    sub a
    ld l, a
    ld de, $7e00
    sub a
    ld l, [hl]
    add l
    dec c
    cp $95
    dec de
    db $fc
    ld a, d
    db $fd
    db $ec
    ei
    db $fd
    ld a, [$5500]
    nop
    push de
    jr nz, jr_02d_46f2

    ld b, b
    ld l, $c0
    ld c, e
    add b
    res 4, d
    and b
    add b
    nop
    nop
    ld c, b
    or a
    db $ec
    inc de
    xor h
    ld d, e
    cp b
    ld b, a
    jp c, $ba25

    dec b
    db $dd
    ld [bc], a
    ld c, h
    inc bc
    ld d, l
    ld d, l
    rst $38
    ld a, h
    ld a, [hl]
    cp d
    cp l
    dec a
    ld a, [hl]
    ld l, a
    ld e, a
    db $10

jr_02d_4772:
    ld d, l
    rst $38
    and e
    db $fc
    ld [hl], b
    ld c, d
    db $fd
    pop af
    cp $d8
    xor h
    jp c, $00fc

    ld a, [bc]
    nop
    ld b, e
    cp a
    or [hl]
    ld c, a
    call c, $f723
    ld [$c53a], sp
    ld l, h
    sub e
    rst $38
    rst $38
    jr nz, @+$52

    ld hl, sp-$06
    ldh a, [$80]
    ldh [$e0], a
    jr nc, @-$0e

    ld [$240c], sp
    db $fc
    ld h, $fc
    nop
    cp a
    nop
    rst $38
    add b
    ld a, e
    add h
    cpl
    ld b, b
    ld b, $28
    ld a, [bc]
    ld b, c
    dec bc
    nop
    rst $38
    sbc [hl]
    ld h, c
    ld sp, hl
    ld b, $ff
    ld [hl], a
    add b
    inc bc
    call nc, $0005
    rrca
    nop
    xor $11
    push af
    ld a, [bc]
    xor $11
    and h
    ld e, e
    inc bc
    xor a
    dec c
    adc l
    nop
    cpl
    nop
    inc bc
    rst $38
    rlca
    cp $1e
    xor $2c
    add sp, -$20
    ld h, b
    ld b, b
    ld bc, $00ff
    rst $38
    ld sp, hl
    push af
    ret nz

    ret nc

    add b
    add b
    ld bc, $c054
    ret c

    and b
    ret c

    and b
    jp nc, $b4a0

    or h
    or l
    cp c
    sbc e
    ldh [rP1], a
    cp a
    nop
    rst $38
    add b
    cp [hl]
    pop bc
    ld a, a
    ld b, b
    dec h
    jr nz, jr_02d_4801

    nop
    ccf
    nop
    ei

jr_02d_4800:
    inc b

jr_02d_4801:
    rst $08
    jr nc, jr_02d_4800

    inc bc
    db $e3
    rrca
    ld a, [bc]
    ld c, d
    nop
    rst $38
    nop
    push de
    ccf
    inc l
    db $fd
    add sp, -$18
    ld b, b
    ld b, b
    jr z, jr_02d_4816

jr_02d_4816:
    inc de
    or a
    cp b
    inc e
    inc e
    dec d
    ld a, [de]
    dec d
    ld a, [de]
    add hl, bc
    ld e, $08
    rrca
    ld b, $0d
    ld a, l
    ld d, l
    nop
    add b
    add b
    add b
    add d
    jp nc, Jump_02d_50db

    inc d
    ld bc, $0e4a
    rlca
    nop
    inc bc
    nop
    dec bc
    nop
    ld d, $5e

jr_02d_483b:
    ld a, h
    inc bc
    ld bc, $e050
    ld e, a
    push af
    ld a, a
    pop af
    ccf
    ldh a, [$3d]
    ld a, h
    ld a, h
    ld a, b
    ret nz

    ld hl, sp-$40
    ld bc, $007f
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    dec h
    db $ed
    and h
    nop
    rra
    nop
    jr nz, @+$01

    db $f4
    rst $38
    cp $7f
    ld a, a
    dec hl
    ld l, a
    ld [bc], a
    ld b, $00
    ld e, a
    nop
    ld b, a
    db $fc
    rrca
    db $fc
    cp a
    ld hl, sp-$02
    ld d, b
    ld a, [$5fd0]
    rst $38
    nop
    inc bc
    ld bc, $ff0a
    nop
    cpl
    sub b
    dec c
    or d
    ld e, $02
    ld bc, $00ff
    inc bc
    cp $4f
    db $f4
    ld l, [hl]
    or h
    or [hl]
    rlca
    rst $38

jr_02d_488d:
    nop
    cp $c0
    call nc, $c080
    ld b, b
    ld bc, $3f81
    sbc a
    ld b, d

jr_02d_4899:
    rst $08
    inc h
    rst $28
    jr @-$0b

    jr jr_02d_4899

    inc h

jr_02d_48a1:
    db $fc
    ld b, d
    cp $02
    add b
    rlca
    ld e, a
    and b
    ld d, a
    xor b
    rla
    add sp, $78
    ld a, b
    dec b
    ld l, d

jr_02d_48b1:
    dec b
    ld a, [hl+]
    dec bc
    nop
    jr nz, jr_02d_483b

    db $fc
    sub c
    ld l, [hl]
    inc bc
    rst $38
    nop
    rra
    ldh [$03], a
    sbc [hl]
    pop hl
    ld h, e
    ld a, b
    rst $38
    db $10
    ld b, b
    rra
    add a
    ld a, a
    rst $28
    pop bc
    ccf
    ld a, [$e707]
    jr nc, jr_02d_48a1

    sbc h
    ld h, e
    ld b, $f9
    ldh a, [rP1]
    nop
    add b
    add b
    ldh [$e0], a
    ld a, b
    ld hl, sp+$0c
    db $fc
    ld c, $fe
    ld a, [de]
    cp $aa
    nop
    sub [hl]
    pop hl
    pop hl
    pop hl
    pop hl
    and [hl]
    pop bc
    and d
    pop bc
    xor e
    ret nz

    xor e
    ret nz

    ld d, l
    ld d, l
    add b
    dec hl
    inc hl
    rlca
    rlca
    ld b, a
    ld h, a
    ld h, a
    ld h, e
    and b
    nop
    ld d, a
    jr z, jr_02d_492c

    rst $00
    jr c, jr_02d_488d

    ld a, c
    and d
    ld e, l
    and d
    ld e, l
    and [hl]
    ld e, c
    rst $20
    jr jr_02d_48b1

    nop
    ld e, [hl]
    and c
    and c
    ld a, [de]
    push hl
    sbc d
    ld h, l
    cp d
    ld b, l
    cp b
    ld b, a
    cp b
    ld b, a
    cp h
    ld b, e
    ld a, [bc]
    add b
    inc d
    ld d, b
    cp a
    ld d, h
    cp e
    ei
    ei
    ei
    add [hl]

jr_02d_492c:
    ld a, e
    add [hl]
    ld a, e
    jp nz, Jump_02d_573f

    ld d, l
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    sbc $de
    sbc a
    sbc a
    ld d, h
    nop
    rst $30
    sbc a
    sbc e
    sbc e
    jp c, Jump_02d_42b7

    cp a
    ld b, d
    cp a
    ld c, d
    cp a
    ld a, [bc]
    rst $38
    ld d, l
    ld d, l
    rst $38
    ld sp, hl
    reti


    reti


    pop de
    pop de
    push de
    push af
    push af
    dec b
    ld d, l
    nop
    ld c, [hl]
    ld bc, HeaderMaskROMVersion
    ld b, l
    db $e4
    call z, $5048
    ld bc, $00a0
    ld d, d
    dec l
    dec h
    ld [de], a
    dec h
    xor d
    dec d
    db $f4
    dec bc
    ld a, [hl]
    ld bc, $012e
    dec hl
    nop
    jr nz, @+$16

    cp a
    ld e, a
    rst $38
    ld a, a
    xor a
    ld a, a
    adc a
    ld a, a
    rrca
    rst $38
    ld e, a
    ld d, a
    scf
    rst JumpTable
    ld d, l
    rst $38
    rst $38
    ei
    push af
    ld hl, sp-$02
    nop
    ld d, l
    rst $38
    cp e

jr_02d_498f:
    call c, $ee5d
    sbc [hl]
    pop hl
    xor l
    ld a, [c]
    ret nz

    ldh a, [$da]
    rst $20
    ld d, l
    jr nz, @+$01

    call nc, $9029
    or h
    cp $eb
    db $eb
    rst $28
    ld bc, $0005
    ld d, h
    ld [$00ff], sp
    inc c
    ret nz

    ld bc, $33fe
    sbc $7f
    sub $40
    add sp, $00
    nop
    rla
    nop
    ld [bc], a
    cp $46
    cp $3e
    db $ec
    ld a, $e8
    db $fc
    and b
    add sp, $40
    dec b
    ld d, l
    pop bc
    xor e
    ret nz

    xor e
    ret nz

    and d
    add d
    sub d
    sub d
    sub [hl]
    sub [hl]
    ld d, l
    ld d, l
    add b
    inc hl
    inc hl
    ld b, c
    ld c, c
    ld c, c
    ld c, e
    dec hl
    inc hl
    nop
    ld d, h
    jr z, @+$68

    sbc c
    daa
    sbc b
    dec b

jr_02d_49e6:
    cp b
    dec d
    xor b
    sub l
    sub l
    ld d, a
    ld b, a
    jr c, jr_02d_498f

    nop
    xor h
    ld d, e
    ld d, e
    xor l
    ld d, d
    adc l
    ld [hl], d
    dec e
    ld [c], a
    ld e, l
    and d
    ld e, h
    and e
    jr jr_02d_49e6

    ld b, b
    ld bc, $42bf
    ld d, d
    xor a
    sub c
    rst $28
    sub d
    db $ed
    ld [de], a
    db $ed
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld d, b

jr_02d_4a10:
    ld d, l
    ld d, l
    rst $38
    cp l
    cp l
    xor l
    xor l
    cp l
    sbc l
    call c, Call_02d_557c
    ld d, l
    rst $38
    adc b
    adc c
    sbc c
    sub c
    sub c
    sub c
    sub e
    sub d
    ld d, l
    ld d, l
    rst $38
    push af
    push af
    push af
    push af
    pop af
    pop af
    ld sp, hl
    ld sp, hl
    ld a, l
    ld a, l
    nop
    ld bc, $8080
    ld [bc], a
    ld d, h
    ld [bc], a
    ld [bc], a
    sbc c
    sub c
    add h
    ld b, $00
    ld b, e
    nop
    ld c, d
    ld bc, $010a
    ld bc, $a800
    rst $10
    inc hl
    rst JumpTable
    add e
    ld a, a
    add e
    ld a, a
    sub a
    ld l, a
    cpl
    cpl
    cpl
    db $e3
    rra
    ld bc, $0055
    rst $38
    sub a
    rst $38
    add e
    rst $38
    ld bc, $f0fd
    ldh [$e0], a
    ldh [rP1], a

jr_02d_4a66:
    rra
    nop
    db $f4
    rst $38
    db $eb
    ld a, a
    ei
    ld a, a
    db $fd
    rla
    rst JumpTable
    ld b, $0e
    db $fc
    nop
    nop
    ld h, b
    ld h, b
    rlca
    ccf
    rrca
    db $10
    dec bc
    inc c
    inc bc
    inc bc
    ld [$0c10], sp
    rlca
    add hl, bc
    rra
    ld de, $5e12
    ld h, d
    ld a, b
    add h
    db $f4
    ret nc

    jr nc, jr_02d_4a10

    add b
    rst $38
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $5501
    nop
    pop bc
    sub [hl]
    add [hl]
    add [hl]
    and d
    and h
    jp $c285


    ld b, c
    add [hl]
    ld c, b
    add a
    adc b
    xor b
    inc hl
    add b
    ld h, e
    add b
    ret nz

    daa
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, e
    add b
    ld a, [bc]
    nop
    and d
    ld b, $79
    ld [bc], a
    ld a, l
    ld e, l
    ld e, l
    and $19
    ld h, [hl]
    sbc c
    ld h, $99
    inc b
    cp c
    ld a, [hl+]
    nop
    jr c, jr_02d_4a66

    ld h, a
    ld b, a
    ld b, a
    rlca
    cp h
    inc bc
    xor h
    inc de
    db $ec
    inc de
    xor h
    ld d, e
    ld a, [bc]
    add b
    inc d
    ld d, b
    cp a
    ld d, h
    cp e
    ei
    ei
    ei
    add [hl]
    ld a, e
    add [hl]
    ld a, e
    jp nz, Jump_02d_553f

    ld d, l
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    cp $de
    call c, $9d9d
    dec d
    nop
    rst $30
    sub d
    rst $38
    sbc d

Jump_02d_4afb:
    ld a, [bc]
    ld a, [bc]
    ld c, e
    or a

jr_02d_4aff:
    ld b, e
    cp a
    ld c, e
    cp a
    rrca
    rst $38
    ld d, l
    ld d, l
    rst $38
    ld sp, hl
    ld sp, hl
    ld l, c
    ld l, c
    ld h, l
    ld [hl], l
    ld a, l
    ld l, l
    ld d, l
    ld b, b
    nop
    ld [bc], a
    adc d
    xor [hl]
    cp [hl]
    cp [hl]
    rst $30
    ld [$28d7], sp
    db $db
    inc h
    ld d, b
    nop
    ld bc, $5616
    ld e, a
    nop
    db $db
    inc b
    ld a, [$b205]
    ld c, l
    or h
    ld c, e
    ld h, b
    sbc a
    dec d
    nop
    cp [hl]
    ld h, e
    sbc a
    ld c, d
    ld c, [hl]
    ld c, [hl]
    inc l
    db $fc
    ld l, b
    ld hl, sp-$08
    ld hl, sp-$30
    ret nc

    ld d, l
    ld e, a
    nop
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ld b, b
    ld d, a
    rst $38
    rst $38
    set 7, e
    ei
    db $fc
    nop
    nop
    inc c
    inc c
    ld a, [bc]
    ld c, $06
    ld [bc], a
    inc b
    ld [bc], a
    ld c, $08
    rst $38
    db $fc
    nop
    inc bc
    inc bc
    dec h
    nop
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc b
    rlca
    add hl, de
    ld e, $2b
    inc [hl]
    rst JumpTable
    ldh [rHDMA4], a
    nop
    dec b
    jp z, $1a9a

    jr jr_02d_4aff

    or l
    ld a, [bc]
    push bc
    ld a, [de]
    and b
    ld e, $28
    ld d, $55
    ld b, b
    nop
    ret


    set 5, e
    xor e
    and e
    ld [hl+], a
    ld bc, $01a6
    ld h, h
    inc bc
    and b
    nop
    sub l

jr_02d_4b91:
    jr z, jr_02d_4bbb

    ld d, l
    xor b
    ld b, l
    cp b
    ld b, a
    cp b
    ld b, d
    cp l
    ld [bc], a
    db $fd
    add d
    ld a, l
    jr z, jr_02d_4ba1

jr_02d_4ba1:
    ld e, l
    dec e
    ld [c], a
    and d
    and d
    ld e, h
    and e
    jr jr_02d_4b91

    cp b
    ld b, a
    cp d
    ld b, l
    cp d
    ld b, l
    nop
    ld a, [hl+]
    ld d, h
    jp nc, $912f

    ld l, a
    sub c
    ld l, a
    add e
    ld a, l

jr_02d_4bbb:
    add d
    ld a, l
    cp e
    cp e
    cp e
    ld d, l
    ld d, a
    rst $38
    xor l
    xor h
    cp h
    sbc l
    db $dd
    ld a, a
    ld a, a
    ld d, l
    ld d, l
    rst $38
    adc a
    adc a
    sub a
    sub l
    sub l
    dec de
    ld a, [de]
    ld c, d
    ld d, l
    ld e, l
    rst $38
    ld l, a
    ld [hl], a
    ld [hl], d
    cp e
    cp c
    db $fd
    cp a
    ldh a, [rP1]
    add b
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$f8]
    ret z

    ret c

    ld hl, sp+$77
    rst $38
    rst $00
    db $fc
    rst $38
    db $fc
    nop
    ldh a, [$f0]
    dec bc
    ld b, h
    rst $38
    add b
    add b
    push de
    push de
    rst $30
    xor d
    ld [bc], a
    db $fd
    nop
    ld d, l
    xor d
    xor d
    adc b
    call c, $cbcb
    set 1, e
    res 1, c
    cp $bf
    add e
    and a
    ld d, l
    ld d, a
    rst $38
    ld hl, $af27
    cpl
    cpl
    cpl
    ccf
    ret nz

    nop
    nop
    ld bc, $0201
    inc bc
    rra
    ld e, $37
    jr c, jr_02d_4ca3

    ld b, b
    rst $38
    add b
    rst $38
    add b
    nop
    ld b, c
    inc bc
    db $fd
    cp $90
    ldh [$e9], a
    db $10
    ret nz

    ld bc, $0704
    nop
    sbc e
    nop
    db $fc
    ld d, b
    nop
    ld b, b
    ld [hl], b
    cp e
    inc hl
    ret nz

    ld d, [hl]
    and c
    db $ed
    ld [bc], a
    inc sp
    inc c
    jp z, $0337

    rst $38
    ld bc, $f014
    ld b, b
    ld a, $a4

jr_02d_4c51:
    ld e, b
    ret z

    jr c, jr_02d_4cad

    reti


    ld [hl], b
    ld a, b
    jp $a045


    inc d
    nop
    ld b, b
    dec h
    ld b, d
    daa
    and a
    dec hl
    call nz, $806f
    ld [hl], $c9
    add h
    ld e, e
    inc l
    db $d3
    nop
    nop
    ld [bc], a
    db $fd
    jr nz, jr_02d_4c51

    ld a, [hl+]
    db $dd
    ld c, b
    cp a
    ret z

    ccf
    adc c
    ld a, [hl]
    add hl, de
    cp $08
    rst $38
    nop
    nop
    cp $01
    xor $11
    xor h
    ld d, e
    and h
    ld e, e
    inc b
    ld a, e
    inc d
    ld l, e
    ld d, h
    dec hl
    ld a, h
    inc bc
    ld a, [bc]
    nop
    ld b, d
    ld b, [hl]
    cp e
    ld b, $fb
    cp a
    cp a
    ld d, d
    xor a
    ld d, c
    xor a
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    ld d, a
    ld d, l

jr_02d_4ca3:
    rst $38
    rst JumpTable
    rst JumpTable
    rst JumpTable
    cp a
    xor a
    xor a
    cp a
    ld d, l
    ld [hl], l

jr_02d_4cad:
    rst $38
    ld e, b
    call c, $ecfc
    xor $f9
    ld a, [$0050]
    rst $38
    ccf
    ld e, $86
    ei
    ld c, a
    di
    ld l, a
    pop af
    scf
    ld sp, hl
    inc de
    db $fd
    ld b, b
    cp a
    ld d, l
    ld d, l
    rst $38
    add h
    call nz, $f0e1
    and b
    ret nc

    ld h, a
    ld a, l
    ld b, c
    ld d, l
    rst $38
    ld a, a
    cpl
    pop af
    add e
    db $fc
    nop
    nop
    jr @+$0e

    nop

jr_02d_4cde:
    ret nz

    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld [hl], b
    ldh a, [rNR23]
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $02
    cp $02
    inc c
    rst $08
    adc [hl]
    and e
    adc a
    and d
    add a
    xor d
    and d
    sbc a
    ld [c], a
    db $db
    cp $db
    call z, $4505
    rst $38
    ld hl, sp+$07
    add e
    ld a, a
    rlca
    daa
    rlca
    rla
    rst $28
    rst $00
    ld a, a
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    ld e, $41
    ld [bc], a
    dec d
    dec b
    ld [bc], a
    jr nc, jr_02d_4d1d

    ld a, [$e405]

jr_02d_4d1d:
    dec de
    ld sp, hl
    rlca
    cp a
    xor a
    xor a
    rrca
    inc c

jr_02d_4d25:
    ccf
    jr c, jr_02d_4d28

jr_02d_4d28:
    nop
    inc c
    db $fc
    jr nc, jr_02d_4d25

    db $fd
    sbc $e9
    sub b
    jp nz, $a1e0

    nop
    add b
    ld b, b

jr_02d_4d37:
    add hl, de
    ld b, $40
    dec b
    nop
    add a
    ld c, $01
    add [hl]
    ld bc, $0a15
    ld h, a
    jr jr_02d_4cde

    ld h, b
    ldh [$99], a
    add b
    db $10
    dec de
    db $e4
    ld c, d
    or l
    sub h
    ld l, e
    or c
    ld c, [hl]
    inc sp
    inc c
    db $e4
    jr nz, jr_02d_4d37

    ld [hl], c
    adc a
    nop
    dec d
    or $4e
    cp c
    sbc $39
    sub h
    ld a, e
    dec [hl]
    ld a, [$fe31]
    jr jr_02d_4da1

    add hl, sp
    ld d, b
    ld bc, $7c03
    ld e, h
    jr jr_02d_4d78

    jr jr_02d_4d7a

    sbc c
    ld b, $d9
    ld b, $cd

jr_02d_4d78:
    ld [bc], a
    ld c, h

jr_02d_4d7a:
    nop
    nop
    adc [hl]
    ld [hl], c
    call nc, Call_02d_543b
    cp e
    ld d, l
    cp d
    dec e
    ld a, [c]
    adc h
    ld [hl], e
    add [hl]
    ld a, c
    add $39
    push de
    ld d, l
    rst $38
    ld a, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    rra
    sbc a
    ld d, l

jr_02d_4d97:
    ld a, a
    rst $38
    ld a, [$f8f5]
    ld a, [$01fd]
    inc b
    db $fd

jr_02d_4da1:
    inc [hl]
    swap e
    call z, $f609
    ld [bc], a
    ld bc, $40fe
    rst $38
    ld [hl], d
    ld sp, $80fe
    ld [$bf7e], sp
    cpl
    rst JumpTable
    cp a
    ld a, a
    sub a
    rrca
    rst $08
    rlca
    ld h, a
    add e
    add e
    ld l, $d1
    ld d, [hl]
    add b
    rst $38
    sbc [hl]
    ld e, a
    rst JumpTable

jr_02d_4dc6:
    pop af
    add b
    db $f4
    nop
    ldh [$e0], a
    jr jr_02d_4dc6

    nop
    ld a, a
    nop
    ld [bc], a
    cp $0e
    db $f4
    ld a, h
    ret nc

    ld hl, sp+$40
    ld h, b
    ld de, $a200
    adc [hl]
    and e
    adc a
    add a
    xor d
    rst $08
    rra
    ld [c], a
    dec sp
    ld a, [hl]
    dec bc
    rlca
    ld [hl], c
    nop
    dec b
    ld b, l
    rst $38
    ld hl, sp+$07
    add e
    ld a, a
    rlca
    daa
    rlca
    rla
    rst $28
    rst $00
    ld a, a
    ld d, l
    ld h, b
    nop
    rst $38
    cp a
    ld d, l
    xor d
    ld bc, $1303
    rrca
    sbc [hl]
    ld a, a
    jr nz, jr_02d_4e0d

    rst $38
    rst JumpTable
    nop
    nop
    ld h, h

jr_02d_4e0d:
    jr jr_02d_4d97

    ld [hl], b
    ld [de], a
    pop hl
    dec [hl]
    bit 2, e
    ccf
    nop
    ld a, a
    rst $38
    ldh [$1f], a
    db $10
    rrca
    add a
    ld a, a
    jp $3f3f


    add b
    rra
    rst $38
    nop
    cp a
    ret nz

    push hl
    ldh a, [$fa]
    db $fc
    db $fd
    cp $fe
    ld d, l
    ret nz

    nop
    rst $28
    rst $38
    ld d, l
    xor d
    and b
    rra
    add b
    rst $38
    ldh [rIE], a
    ld d, l
    ret nz

    nop
    rst $38
    cp $55
    xor d
    ld h, b
    add b
    inc b
    ld hl, sp+$01
    cp $55
    rst $38
    nop
    rst $38
    rst $38
    ld d, l
    xor d
    reti


    ret nz

    stop
    jr z, jr_02d_4e56

jr_02d_4e56:
    nop
    ld [bc], a
    ld b, b
    ld b, b
    nop
    nop
    jp $0003


    jr nz, @+$22

    ld [bc], a
    ld [bc], a
    ld [$1408], sp
    inc e
    ld c, b
    ld c, b
    inc c
    jp $0200


    ld [bc], a
    add b
    add b
    ld hl, $4021
    ld b, b
    inc b
    inc b
    inc sp
    di
    nop
    ld [bc], a
    ld [bc], a
    jr nz, jr_02d_4e9d

    ld [$ff08], sp
    ldh a, [rP1]
    inc a
    inc a
    rst $38
    jp Jump_02d_5515


    add c
    rst $38
    rst $38
    jp $bdbd


    cp l
    cp l
    cp l
    cp l
    xor e
    ld [hl], b
    rst $38
    nop
    nop
    nop
    nop
    add hl, bc
    ld c, $0f
    rrca

jr_02d_4e9d:
    xor d
    add b
    ld a, a
    nop
    nop
    nop
    nop
    add b
    rst $28
    ldh a, [$fd]
    cp $ff
    rst $38
    ld b, c
    ld d, h
    ld e, a
    cpl
    or e
    ld c, a
    xor l
    ld e, e
    xor e
    xor e
    xor e
    xor e
    xor e
    rst JumpTable
    add b
    ld d, l
    rst $38
    ld a, a
    rst $00
    ccf
    ldh [$1f], a
    add e
    ld a, a
    ld c, a
    cp a
    ld a, a
    rlca
    db $f4
    ld d, l
    rst $38
    cp $f9
    cp $c0
    rra
    cp $fd
    nop
    ld d, b
    rst $38
    call c, $9ff0
    ldh [$72], a
    adc l
    and b
    ld a, a
    add $5c
    cp c
    cp $fa
    db $fd
    ld d, b
    nop
    nop
    ccf
    ld a, [c]
    ld l, d
    add b
    ld sp, $62c0
    add c
    xor h
    ld b, e
    dec bc
    rst $38
    ld a, a
    rst $38
    nop
    dec d
    rst $38
    jr jr_02d_4f27

    ld [hl+], a
    dec e
    rst $00
    add hl, sp
    adc l
    ld [hl], e
    ld e, e
    rst $30
    rst $28
    rst JumpTable
    cp a
    ld d, l
    db $fc
    rst $38
    nop
    add b
    ldh [$fc], a
    ld a, [$40fc]
    db $10
    ret nz

    jr nc, jr_02d_4f1f

    ldh a, [rSB]
    cp $00
    rst $38
    call nz, $a3f8
    sbc a
    nop
    ld sp, $540e
    nop

jr_02d_4f1f:
    nop
    ld bc, $ff1f
    inc a
    jp $0f70


jr_02d_4f27:
    rst $08
    ld sp, $837d
    db $d3
    rrca
    xor b
    dec e
    rst $38
    nop
    nop
    nop
    rra
    ldh [$82], a
    db $fc
    db $fc
    ld a, a
    jr nz, @+$04

    db $fc
    call nz, $0003
    ld [c], a
    ld bc, $0285
    ld a, [hl-]
    dec b

jr_02d_4f45:
    ld [hl], b
    adc a
    ret nz

    rst $38
    rst $38
    rrca
    ld d, h
    rst $38
    nop
    nop
    ld d, l
    ld d, l
    xor d
    nop
    nop
    ld d, l
    xor d
    ld d, h
    nop
    add c
    rst $20
    rst $20
    rst $38
    cp l
    jp $ff42


    cp l
    rst $38
    pop bc
    cp a
    ld a, [$aac7]
    xor d
    cp l
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    db $10
    inc d
    rst $38
    ld [bc], a
    inc bc
    cp $fe
    inc bc
    db $fd
    ei
    rrca
    db $fc
    ei
    inc b
    ei
    rlca
    call nc, $00df
    jr nc, jr_02d_4fce

    jr nz, jr_02d_4f98

    inc b
    ld b, d
    nop
    nop
    ld c, c
    add d
    jr nz, jr_02d_4f45

    ld b, d
    dec b
    ld b, b
    scf
    inc de
    ld c, b
    jr nz, jr_02d_4ff0

jr_02d_4f98:
    ld c, d
    jr nc, jr_02d_4fdf

    nop
    jr nz, jr_02d_4fb6

    nop
    inc h
    ld b, c
    ld a, [hl]
    nop
    ld [hl], b
    ld b, d
    ld b, c
    ld h, b
    rrca
    ld a, l
    ld h, b
    ld h, b
    cp a
    ldh a, [rP1]
    rst $38
    ldh a, [rVBK]
    ld e, e
    ld h, h
    cpl
    ld [hl], e
    rla

jr_02d_4fb6:
    ld a, [bc]
    ld a, e
    dec de
    ld a, h
    rla
    ld sp, $61fe
    ret nz

    nop
    ld a, $e0
    cp [hl]

jr_02d_4fc3:
    sub b
    sbc $c8
    ld l, $e8
    nop
    ld l, h
    dec bc
    ld a, a

jr_02d_4fcc:
    inc de
    ld a, h

jr_02d_4fce:
    inc d
    ld a, b
    jr jr_02d_4fe2

    ld l, a
    rrca
    ld a, a
    ld a, [hl-]
    nop
    rst $38
    rst $38
    rst JumpTable
    nop
    ld h, b
    rst $28
    jr nc, @+$01

jr_02d_4fdf:
    jr jr_02d_4fcc

    inc h

jr_02d_4fe2:
    push af
    nop
    ld l, $1a
    ld a, a
    ld a, e
    push bc
    xor a
    db $d3
    db $d3
    nop
    ld l, h
    rst $20
    ld [hl-], a

jr_02d_4ff0:
    db $ed
    ld e, $bb
    ld c, h
    rst $38
    nop
    inc e
    rst $20
    ld [hl+], a
    ld e, l
    jp $fdef


    db $f4
    nop
    ld c, h
    ret c

    ld l, b
    adc l
    sbc b
    or c
    sbc [hl]
    add sp, $00
    sub e
    ld b, a
    pop af
    db $76
    ei
    rst $28
    sbc a
    ld [hl], l
    nop
    dec de
    add hl, de
    rrca
    xor $1f
    db $db
    inc a
    sbc l
    ld bc, $6eee
    db $db
    db $d3
    ld a, l
    rst $28
    ldh a, [rLY]
    nop
    jr nz, jr_02d_503d

    nop
    inc h
    ld b, c
    ld a, [hl]
    nop
    ld [hl], b
    ld b, d
    ld b, c
    ld h, b
    rrca
    dec e
    pop bc
    rst $38
    adc a
    rst $38
    inc d
    rra
    rst $38
    ccf
    ld b, c
    ld a, a
    add c
    db $fc
    inc bc

jr_02d_503d:
    nop
    cp $0c
    pop de
    jr nc, jr_02d_4fc3

    ld b, b
    rst $00
    ld b, b
    nop
    sbc $41
    or $89
    db $fc
    add e
    rst $38
    ldh [rP1], a
    ld a, a
    db $10
    rst $28
    inc e
    ld c, a
    and d
    dec bc
    add [hl]
    nop
    inc de
    rrca
    ld h, a
    sbc l
    adc l
    ld a, e
    cp b
    ret nz

    nop
    jp $f7f0


    ld [hl], b
    sub l
    jp z, $848b

    nop
    sub [hl]
    adc l
    ld l, e
    ld e, e
    or b
    jr nc, jr_02d_50db

    rst $38
    nop
    jp z, $dd7f

    ld [hl], e
    dec sp
    rst $30
    scf
    rst $38
    ld bc, $fe36
    ld c, l
    call z, $0033
    rst $38
    pop bc
    ld e, $cf
    nop
    add hl, sp
    dec bc
    add hl, bc
    add hl, hl
    dec l
    db $eb
    ei

jr_02d_508f:
    cp e
    ld b, c
    rst $30
    ld b, c
    xor c
    ld [hl], c
    rst JumpTable
    ld b, c
    dec h
    ld h, b
    rst $28
    ld b, c
    ld l, c
    rst JumpTable
    ld h, b
    rst $28
    jr nc, @+$01

    nop
    jr jr_02d_508f

    inc h
    push af
    ld l, $1a
    ld a, a
    ld a, e
    nop
    push bc
    xor a
    db $d3
    db $d3
    ld l, h
    rst $20
    ld [hl-], a
    db $ed
    nop
    ld e, $bb
    ld c, h
    rst $38
    inc e
    rst $20
    ld [hl+], a
    ld e, l
    nop
    jp $fdef


    db $f4
    ld c, h
    ret c

    ld l, b
    adc l
    nop
    sbc b
    or c
    sbc [hl]
    add sp, -$6d
    ld b, a
    pop af
    halt
    ei
    rst $28
    sbc a
    ld [hl], l
    dec de
    add hl, de
    rrca
    xor $00
    rra
    db $db
    inc a

Jump_02d_50db:
jr_02d_50db:
    sbc l
    xor $6e
    db $db
    db $d3
    db $10
    ld a, l
    rst $28
    ldh a, [rP1]
    nop
    nop
    jr jr_02d_50e9

jr_02d_50e9:
    inc h
    nop
    inc h
    nop
    ld a, [hl]
    nop
    ld b, d
    nop
    ld b, d
    nop
    nop
    ld h, b
    ld h, b
    cp a
    ldh a, [rIE]
    ldh a, [rVBK]
    ld e, e
    ld h, h
    cpl
    ld [hl], e
    rla
    ld a, e

Jump_02d_5101:
    dec de
    ld a, h
    rla
    nop
    nop
    cp $00
    cp $00
    cp $c0
    ld a, $e0
    cp [hl]
    sub b
    sbc $c8
    ld l, $e8
    ld l, h
    dec bc
    ld a, a
    inc de
    ld a, h
    inc d
    ld a, b
    jr jr_02d_518c

    rrca
    ld a, a
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rlca
    rlca
    rra
    jr jr_02d_515a

    jr nc, jr_02d_517d

    ld l, a
    add c
    rst $38
    sbc h
    rst $38
    db $eb
    db $ec
    inc bc
    inc bc
    add l
    add [hl]
    ld c, c
    adc $a9
    ld l, [hl]
    ld d, l
    cp a
    adc d
    cp $52
    ld a, [$7b92]
    rla
    jr jr_02d_5173

    inc sp
    ld e, b
    ld h, a
    ld d, c
    ld l, a
    add c
    rst $38
    add c
    rst $38
    add a
    rst $38
    adc c
    ld sp, hl
    dec de
    pop af
    ld c, l
    db $fc
    add [hl]
    db $fc

jr_02d_515a:
    dec sp
    rst $00
    ld c, l
    add e
    add hl, de
    add a
    ld hl, $419f
    cp a
    sub c
    pop af
    and e
    db $e3
    ld b, a
    ld b, l
    rlca
    dec b
    dec b
    rlca
    inc bc
    rlca
    rlca
    dec b
    add hl, bc

jr_02d_5173:
    ld [$ff01], sp
    ld [bc], a
    rst $38

jr_02d_5178:
    inc b
    cp $0e
    cp $19

jr_02d_517d:
    ld sp, hl
    jr c, jr_02d_5178

    jp hl


    jp hl


    ld b, [hl]
    ld b, [hl]
    ld sp, $5710
    jr nc, jr_02d_51e7

    ld sp, $3f4f

jr_02d_518c:
    ld h, a
    rra
    ld sp, $1c0f
    inc bc
    rlca
    nop
    cp $70

jr_02d_5196:
    xor $18
    ld a, a
    adc c
    rst JumpTable
    and $ee
    ldh a, [$f6]
    ld hl, sp+$3b
    db $fc
    add a
    ld a, a
    rst JumpTable
    ld h, b
    rst $28
    jr nc, @+$01

    jr jr_02d_5196

    inc h
    push af
    ld l, $1a
    ld a, a
    ld a, e
    push bc
    xor a
    db $d3
    db $d3
    ld l, h
    rst $20

jr_02d_51b7:
    ld [hl-], a
    db $ed
    ld e, $bb
    ld c, h
    rst $38
    inc e
    rst $20
    ld [hl+], a
    ld e, l
    jp $fdef


    db $f4
    ld c, h
    ret c

    ld l, b
    adc l
    sbc b
    or c
    sbc [hl]
    add sp, -$6d
    ld b, a
    pop af
    db $76
    ei
    rst $28
    sbc a
    ld [hl], l
    dec de
    add hl, de
    rrca
    xor $1f
    db $db
    inc a
    sbc l
    xor $6e
    db $db
    db $d3

jr_02d_51e1:
    ld a, l
    rst $28
    ldh a, [rP1]
    rst JumpTable
    ld h, b

jr_02d_51e7:
    rst $28
    jr nc, jr_02d_51e1

    jr jr_02d_51b7

    inc e
    nop
    sbc l
    ld [hl], $3f
    inc hl
    ld a, a
    jp $c7bf


    add e
    rrca
    jr jr_02d_5219

    call c, Call_02d_7f3f
    rst $38
    nop
    jr nz, @+$11

    stop
    rst $28
    ldh a, [rNR31]
    db $fc
    jp c, $f4e7

    ld sp, hl
    jr nz, @-$02

    cp $0f
    ld [$ee6f], sp
    ccf
    cp $1f
    nop
    rst JumpTable
    ccf
    cp a

jr_02d_5219:
    ccf
    ccf
    ld a, a
    ccf
    rst $38
    nop
    rst JumpTable
    rst $38
    ccf
    rst $38
    ld e, a
    dec a
    db $dd
    inc a
    ld c, $3c
    db $fc
    cp $fc
    dec e
    ld [$081f], sp
    nop
    jr z, @+$81

    nop
    rra
    ccf
    ld [hl], e
    ld e, a
    ld h, c
    inc sp
    rrca
    add a
    add c
    ld e, a
    ld b, b
    ld a, $63
    ld a, a
    pop bc
    cp a
    push bc
    rrca
    jr nz, jr_02d_5248

jr_02d_5248:
    ei
    inc c
    db $fd
    ld d, $fe
    dec de
    ld a, a
    db $fd
    jr nz, @+$01

    ld a, e
    rra
    jr c, @+$28

    cp $43
    ld a, a
    pop bc
    ld bc, $c9be
    rst JumpTable
    ld l, [hl]
    xor $3f
    rst $38
    ld e, a
    db $10
    ld [$3f3e], sp
    ld a, l
    dec sp
    ld e, a
    ld [$e763], sp
    adc a
    nop
    rra
    rst $38
    rst $28
    sbc $f7
    cp a
    ld [hl], a
    rst $30
    jr nz, @+$01

    db $f4
    ld e, a
    ld [$d7af], sp
    rst $28
    db $ed
    ld e, c
    nop
    sbc l
    rst $30
    ld sp, hl
    reti


    db $eb
    ld d, c
    cp e
    inc bc
    nop
    rlca
    add a
    rrca
    and e
    ret nz

    call c, $bf80
    nop
    add b
    rst $38
    rst $38
    cp $01
    rst $38
    nop
    ld bc, $0000
    rst $38
    rst $38
    add d
    ld bc, $007d
    rst $38
    nop
    nop
    ld a, a
    rst $38
    cp a
    ret nz

    rst $38
    add b
    ret nz

    add c
    rla
    ld [$c0bf], sp
    ldh [$9f], a
    ret nz

    cp a
    rra
    ld b, b
    ld [bc], a
    ld h, l
    rst JumpTable
    ld h, l
    rst JumpTable
    ld h, a
    rst JumpTable
    rra
    ld b, b
    sbc $20
    ld h, b
    db $eb
    ld a, a
    ld [$10ca], sp
    sbc [hl]
    ld hl, $0037
    ld h, b
    ld a, l
    ret nz

    ei
    add h
    rst $38
    rst $38
    sbc a
    inc [hl]
    rst $38
    cp a
    ld bc, $cc08
    db $10
    db $fd
    ret z

    ld [$ffe5], sp
    nop
    push bc
    rst $38
    add l
    rst $38
    add a
    rst $38
    adc a
    rst $38
    nop
    cp l
    rst $38
    push af
    ei
    sbc c
    rst $30
    cp h
    jp $fe00


    add c
    rst JumpTable
    and b
    rst $38
    add b
    db $fd
    add d
    jr nz, @+$01

    add b
    ld b, e
    ld [$3eff], sp
    pop bc
    ld a, a
    add b

jr_02d_5307:
    inc de
    rst JumpTable
    jr nz, @+$01

    ld [hl], e
    ld [$04fb], sp
    ld h, e
    ld [$0800], sp
    add d
    ld d, h
    ld [$ff80], sp
    add b
    rst $30
    adc b
    rra
    jr nz, @+$01

    sbc b
    ld a, [de]
    ld [$00ff], sp
    ld hl, $1f10
    jr nz, jr_02d_5307

    cp a
    or a
    ld [bc], a
    rst JumpTable
    or a
    rst JumpTable
    cp a
    rst $10
    cp e
    ld bc, $9508
    ld b, b
    ei
    rra
    db $10
    ret nz

    rst $38
    cp $c1
    ld a, [$02c5]
    cp $c1
    cp $c1
    cp [hl]
    pop bc
    and a
    ld [$0000], sp
    ei
    ld b, b
    rst JumpTable
    add b
    sbc [hl]
    or b
    ei
    ld a, h
    nop
    dec [hl]
    ld hl, sp-$51
    ldh a, [$92]
    ld hl, sp-$49
    rst $08
    nop
    rst JumpTable
    ld a, a
    di
    ccf
    push hl
    ld [hl], e
    ld l, l
    di
    ld b, b
    di
    ld e, b
    add hl, de
    cp a
    ret nz

    db $eb
    rst $30
    db $fd
    cp $00
    ei
    db $fc
    ei
    db $fc
    push af
    cp $f6
    db $fd
    ld b, d
    rst $30
    sub d
    ld de, $fb81
    add h
    rst JumpTable
    ld [hl], c
    ld [$00ff], sp
    add b
    sbc b
    add b
    jp $1f80


    nop
    rst $30
    jr nz, jr_02d_539b

    rst $28
    ccf
    add hl, bc
    rst JumpTable
    ccf
    sbc a
    ld a, a
    cp a
    ld [hl], $7f
    rst JumpTable
    cp a
    add hl, de
    ld a, a
    ld c, c

jr_02d_539b:
    ret nz

    rst $38
    db $10
    ld bc, $6d11
    nop
    rst JumpTable
    ld sp, hl
    rst $38
    sub l
    ei
    reti


    scf
    rst $38
    nop
    rst $38
    inc e
    rst $38
    scf
    ld a, [$e17f]
    db $76
    inc b
    ld sp, hl
    db $ed
    rst JumpTable
    ei
    add a
    ret nz

    add hl, de
    db $10
    call c, $0800
    sbc a
    ld a, a
    ld hl, sp-$01
    ret z

    rst $38
    ld c, b
    ld b, a
    rst $38
    dec b
    ld a, [de]
    db $10
    jr c, jr_02d_53dd

    inc b
    ld [$1801], sp
    nop
    jr jr_02d_53ec

    inc b
    ld c, $04
    inc b
    ld [$1801], sp
    rst $38
    rst $38

jr_02d_53dd:
    ld a, [hl]
    nop
    dec a
    adc [hl]
    dec e
    and $0d
    or $05
    or $00
    dec b
    cp $05
    db $f4

jr_02d_53ec:
    rrca
    rst $38
    rst $38
    ei
    nop
    ld b, a
    db $76
    db $ec
    sbc h
    sbc b
    xor h
    sbc b
    pop af
    nop
    sbc [hl]
    ld c, c
    di
    db $76
    ei
    rst $28
    sbc a
    rst $28
    nop
    rst $30
    ld a, c
    rra
    ld e, $0f
    ld l, e
    inc e
    db $dd
    ld bc, $6e3e
    db $db
    db $d3
    ld a, l
    rst $28
    ldh a, [$ae]
    ld [$ff00], sp
    cp a
    pop bc
    xor a
    pop de
    cp a
    pop bc
    cp a
    and b

jr_02d_541f:
    rst $28
    jr jr_02d_541f

    push bc
    ld [$fdf6], sp
    cp $f5
    xor $90
    ld bc, $d408
    rst $28
    rra
    add hl, bc
    ld hl, sp-$03
    ret c

    sbc l
    nop
    cp d
    xor d
    cp [hl]
    xor $bd
    xor l

Call_02d_543b:
    ld a, l
    pop hl
    nop
    ld a, e
    ld l, e
    rst $30
    ld a, a
    rst $38
    rst JumpTable
    ld a, a
    rst $20
    ld bc, $983f
    ld a, a
    sub a
    ld a, a
    and d
    ld a, a
    cp a
    stop
    db $eb
    db $fc
    rst $28
    ld hl, sp-$6f
    cp $68
    rst $38
    nop
    add h
    rst $38
    dec bc
    or $7f
    add c
    cp a
    ret nz

    nop
    sbc a
    rst $38
    rst $38
    pop af
    di
    sbc l
    or e
    rst JumpTable
    nop
    rst $38
    db $fc
    cp $85
    adc h
    rst $30
    rst $38
    rst $38
    inc b
    rra
    rst $38
    sbc a
    ld a, a
    adc a
    ld bc, $9f08
    ld a, a
    rla
    and b
    ld a, a
    ld b, b
    inc d
    add hl, bc
    ld c, $99
    jr @+$03

    jr nz, @-$5f

    db $10
    jr nz, jr_02d_54a6

    rst $30
    ld bc, $5b10
    or a
    rra
    rst $30
    dec a
    nop
    rst $38
    push af
    rst $38
    push de
    rst $28
    ei
    add a
    xor a
    nop
    sbc a
    push af
    ei
    rst JumpTable
    pop bc
    rst $28
    ld [c], a

jr_02d_54a6:
    cp a
    ld bc, $9df4
    cp $af
    rst JumpTable
    rst $08
    ldh a, [rHDMA3]
    ld [$e000], sp
    rst $28
    ld a, a
    rst $38
    db $10
    rst $28
    jr nc, jr_02d_54eb

    ld a, [hl]
    jr nz, @-$40

    add hl, de
    ld c, a
    ld a, [de]
    ld e, a
    ld de, $122f
    rrca
    jr nz, jr_02d_54ce

    jr nz, jr_02d_54c9

jr_02d_54c9:
    ret nz

    rlca
    ld [$223f], sp

jr_02d_54ce:
    jp nc, $8e08

    ld sp, $e0b7
    ld bc, $c07f
    cp a
    ld h, b
    rst JumpTable
    or b
    cp a
    rlca
    ld [$7f04], sp
    add b
    ccf
    ret nz

    cp a
    ld bc, $df08
    ldh [rNR41], a
    rst $38
    ld a, a

jr_02d_54eb:
    nop
    ld [$bf77], sp
    ld a, a
    ccf
    cp a
    ld b, $9f
    cp a
    rst $08
    rst JumpTable
    rst $10
    pop hl
    ld [$2800], sp
    cp a
    ld a, b
    cp $2d
    ld b, e
    nop
    db $10
    ld l, h
    ld [de], a
    ld l, a
    inc de
    ldh [$df], a
    ldh [rP1], a
    rst $28
    ldh a, [$ef]
    pop af
    rst $28

jr_02d_5510:
    cp $ee
    db $fd
    db $10
    db $ed

Jump_02d_5515:
    ei
    db $eb
    pop de
    ld [$fffe], sp
    call $08f0
    dec bc
    rlca
    sbc e
    ld a, a
    ld bc, $7c18
    cp d
    rst $08
    db $10
    ei
    ld a, $f9
    rst $38
    add hl, bc
    pop af
    db $fc
    call c, $0ae6
    ld a, [hl]
    add e
    rst $38
    ld bc, $12ff
    sbc a
    ld bc, $bd0b
    reti


    adc a
    ld a, [hl+]

Jump_02d_553f:
    rst $38
    ld [hl+], a
    rst JumpTable
    adc a
    ld a, [hl-]
    rst $38
    ld [hl+], a
    jp nz, $8ebd

    db $10
    db $10
    add a
    rst $38
    db $fc
    rst $38
    ld a, [de]
    ld h, l
    rst JumpTable
    ld h, [hl]
    rst JumpTable
    nop
    ld l, l
    sbc $f2
    rst $38
    sbc a
    pop hl
    rst $38
    nop
    rst $38
    rst $38
    nop
    xor d
    xor d
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    nop
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
    nop
    nop
    push de

Call_02d_557c:
    jr z, jr_02d_5510

    ld l, c
    xor d
    ld d, l
    inc h
    db $db
    and l
    ld e, d
    jp z, $4a35

    or l
    and e
    ld e, h
    jr nz, @-$7e

    ld b, h
    sub $29
    cp e
    xor c
    ld d, [hl]
    jp nc, $b92c

    ld b, [hl]
    cp c
    xor [hl]
    ld d, c
    and h
    ld e, e
    nop
    nop
    cp l
    ld b, d
    reti


    ld h, $50
    xor l
    ld [hl+], a
    ld e, c
    add l
    ld a, [hl-]
    xor h
    inc de
    ld l, c
    sub [hl]
    ld a, [hl+]
    push de
    add b

jr_02d_55af:
    jr nz, @-$28

    add hl, hl
    ld h, $99
    ld b, h
    sbc e
    jr nc, @-$30

    or c
    ld c, h
    add hl, hl
    call Call_02d_6932
    sub [hl]
    ld d, l
    ld d, l
    nop
    rst $38
    di
    db $e4
    rrca
    rst $38
    ld a, h
    inc sp
    adc a
    ld d, l
    ld d, l
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    ld a, [bc]
    and b
    add c
    rst $38
    nop
    db $e3
    nop
    inc e
    inc e
    inc e
    ld h, d
    db $e3
    nop
    db $e3
    inc e
    dec d
    inc b
    jr c, jr_02d_55af

    nop
    inc bc
    ld bc, $0101
    call nz, $02c5
    rst $00
    rst $38
    nop
    ld d, l
    ld d, l
    nop
    add hl, bc
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ldh [rHDMA5], a
    ld d, l
    nop
    sub b
    call z, $fff7
    rst $38
    rst $38
    rra
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ret nz

    nop
    nop
    ld bc, $6301
    ld h, d
    ld [hl], a
    ld d, h
    ld a, a
    ld c, l
    ld l, a
    ld d, [hl]
    ld [hl], a
    ld c, d
    dec sp
    ld h, $02
    add b
    ld a, a
    ld e, $1f
    dec sp
    daa
    ld [hl], a
    ld c, d
    ld b, h
    ld a, h
    rlca
    inc b
    inc bc
    inc bc
    nop
    nop
    ret nz

    nop
    nop
    add b
    add b
    add $46
    xor $2a
    cp $b2
    or $6a
    xor $52
    call c, $0064
    inc c
    ret nz

    ld a, b
    ld hl, sp-$24
    db $e4
    ld c, [hl]
    ld a, [c]
    ld a, [hl]
    and d
    cp $3e
    ldh [rNR41], a
    nop
    nop
    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_02d_56e0

    ld b, b
    ld e, a
    ld h, b
    ld a, [hl+]
    add b
    ld b, h
    ld c, [hl]
    ld [hl], c
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    inc h
    dec sp
    jr jr_02d_5690

    rlca
    rlca
    ret nz

    nop
    nop
    ldh [$e0], a
    sub b
    ld [hl], b
    adc b
    ld a, b
    add h
    ld a, h
    add d
    ld a, [hl]
    add e
    ld a, l
    ld b, a
    cp e
    ld a, [hl+]
    add b
    rra
    cpl
    rst $10
    rst $28
    rst $28
    rst $28
    rst $28
    ld e, $ee
    inc c

jr_02d_5690:
    db $fc
    ldh a, [$f0]
    rst $38
    ld h, b
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    sub b
    jp nz, $070f

    dec sp
    inc e
    jr nc, jr_02d_5714

    ld l, b
    ret nc

    and c
    dec l
    sbc e
    ld b, h
    sub l
    ld c, b
    nop
    nop
    ldh a, [$e0]
    ret c

    inc a
    ld d, $ee
    jr nz, jr_02d_56d6

    ld c, e
    add l
    inc [hl]
    inc bc
    add hl, de
    ld [c], a
    ret


jr_02d_56be:
    ld [hl-], a
    nop
    nop
    rst $38
    inc e
    rst $20
    ld [hl+], a
    di
    ld [hl], c
    cp a
    ret


    xor $97
    inc a
    rst $00
    rrca
    scf
    jp nz, $c00c

    inc d
    nop
    ld b, d
    add c

jr_02d_56d6:
    and l
    ld b, d
    jp $ee3c


    ld bc, $f5bf
    ld e, e
    inc b

jr_02d_56e0:
    ret nc

    jp z, $80ff

    rst $08
    or b
    cp c
    add $9f
    rst $30
    sub a
    sub a
    ld bc, $9f55
    ld a, a
    rst $38
    cp a
    ret nz

    ldh a, [$80]
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    jp $ffb4


    nop
    nop
    nop
    nop
    nop
    ccf
    rst JumpTable
    ccf
    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    dec e
    ld [de], a
    ccf
    jr nz, jr_02d_5788

    ld c, b
    ld a, l
    ld b, d

jr_02d_5714:
    ld l, a
    ld d, b
    ld bc, $070c
    ld a, l
    ld h, d
    ccf
    jr nc, jr_02d_573d

    rra
    inc b
    ld [$080f], sp
    rrca
    nop
    nop
    rst $38
    ret nc

    nop
    add b
    ld b, b
    add b
    and b
    ret nz

    ret nc

    inc bc
    nop
    ld h, b
    inc d
    jr nz, jr_02d_56be

    db $10
    jp z, Jump_02d_7411

    add d
    inc d
    ld b, b
    ret nz

jr_02d_573d:
    nop
    dec de

Jump_02d_573f:
    dec [hl]
    ld l, $7e
    ld a, a
    db $dd
    or a
    ld [hl], a
    ld a, e
    ei
    cp [hl]
    xor [hl]
    rst $38
    jp c, $00df

    nop
    dec sp
    xor a
    add hl, hl
    ccf
    dec e
    ld a, [de]
    ld h, a
    jr nc, jr_02d_57ba

    ld b, h
    ld d, h
    ld l, [hl]
    ld a, a
    ld a, [hl-]
    inc bc
    ld bc, $00c0
    db $ec

jr_02d_5762:
    sub $be
    call $fbfb
    ld a, a
    ld a, [hl]
    cp [hl]
    cp l
    rst $28
    push hl
    rst $38
    or a
    rst $38
    nop
    nop
    rra
    db $fd
    ld e, l
    or h
    add sp, $1c
    db $76
    inc c
    ld e, d
    ld h, $64
    ld a, $da
    ld a, h
    cp b
    ret nz

    inc bc
    ld b, b
    ld de, $0101
    rrca

jr_02d_5788:
    rlca
    dec c
    add hl, de
    add hl, de
    ld a, [bc]
    dec e
    add hl, bc
    ld e, $3d
    ld e, $60
    nop
    ld b, h
    xor d
    and e
    xor b
    sub b
    jr z, jr_02d_5762

    xor h
    ld [hl], b
    ret c

    ccf
    rst $08
    ccf
    jp nz, $003d

    dec d
    rst $38
    jr @+$69

    ld [hl-], a
    call $3b45
    dec de
    rst $20
    ld h, $1f
    inc a
    ld hl, sp+$7a
    nop
    ld d, h
    ld hl, sp-$80
    add b
    ldh a, [$e0]

jr_02d_57ba:
    ret nc

    cp b
    add sp, -$68
    adc h
    or h
    ld [hl], h
    ret c

    ld a, h
    dec b
    ld d, b
    ld [$02ec], sp
    ld a, [hl-]
    ld b, h
    call nc, $e070
    or h
    ld a, [$5c04]
    ld [bc], a
    add d
    sbc $ff
    sub a
    ld hl, sp-$70
    rst $28
    sbc a
    add b
    adc b
    nop
    ld bc, $ffd5
    rst $28
    sbc a
    cp a
    add b
    add b
    ret nz

    ret nz

    cp a
    ldh [$7f], a
    ld b, c
    inc b
    ccf
    rst JumpTable
    ld e, a
    cp a
    ld e, a
    cp a
    rst JumpTable
    sbc a
    ld a, a
    sbc a
    ld a, a
    ret nc

    rst $28
    ldh a, [rP1]
    inc d
    rst $38
    ld [hl], e
    adc a
    db $dd
    ld a, $b7
    ld l, h
    ld [hl], a
    call z, $de65
    ld c, h
    ld [hl], d
    reti


    rst $20
    ld b, b
    ld [bc], a
    pop af
    cp $eb
    inc e
    push af
    ld c, $f6
    rrca
    and $1f
    dec c
    ei
    dec e
    di
    rst $38
    ld bc, $4040
    inc b
    inc bc
    ld c, $0c
    ld de, $0030
    rlca
    sbc [hl]
    ld b, c
    or $89
    db $fc
    add e
    nop
    nop
    ld h, b
    ldh [rSVBK], a
    db $10
    xor $1c
    ld c, [hl]
    and d
    dec bc
    add [hl]
    inc de
    rrca
    ld h, a
    sbc l
    adc l
    ld a, e
    ret nz

    nop
    dec sp
    and l
    ld a, $39
    rra
    adc e
    rrca
    dec de
    rra
    rst $38
    rst $38
    ld a, [$fb87]
    xor a
    ld d, c
    ld b, b
    add a
    ld a, [$fbfb]
    xor a
    ei
    ld a, [$affb]
    add e
    rst $38
    rst $38
    rst $38
    ld [bc], a
    add b
    rst $10
    db $dd
    call c, Call_02d_7ca4
    sbc [hl]
    cp $f5
    push af
    sbc a
    db $fd
    scf
    db $fd
    rst $08
    rst $38
    db $10
    ld d, b
    db $fd
    cpl
    reti


    adc e
    rst $38
    ld sp, hl
    adc a
    rst $38
    rlca
    rst $38
    add [hl]
    cp $fc
    db $fc
    dec b
    nop
    add b
    ld l, l
    ld [hl-], a
    db $e3
    ld b, h
    rst $00
    rst $20
    cp h
    jp $7fc3


    ld a, [hl]
    ccf
    rra
    nop
    ld bc, $f040
    swap h
    xor e
    ld [hl], h
    xor a
    ld [hl], b
    ld e, a
    cp $f4
    ld hl, sp+$14
    ld hl, sp-$0e
    inc e
    and b
    nop
    ld a, [hl+]
    rst $38
    rst $38
    xor d
    ld a, a
    adc $3f
    ld c, a
    ccf
    cpl
    rra
    inc l
    rra
    ld e, c
    ld a, $00
    ld b, $e0
    rst JumpTable
    ld h, $cd
    inc sp
    db $e3
    ld de, $8379
    dec de
    rst $20
    cp $ff
    ld e, $00
    ret nz

    nop
    nop
    ld [bc], a
    ld bc, $0e11
    cpl
    db $10
    ld a, [de]
    ld hl, $201f
    ld d, l
    jr nz, jr_02d_590f

    ld b, h
    add hl, bc
    ld b, b
    ccf
    inc b
    add hl, bc
    ld a, l
    rrca
    ld l, a
    ld a, [hl]
    ld hl, sp-$4a
    ld sp, hl
    ld l, l
    ldh a, [$e2]
    ld a, c
    ld a, [bc]
    xor b
    sbc [hl]
    rst $38
    rst $38
    add b
    rst $38
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    add b
    rst $38
    ld [bc], a
    xor d
    ld d, l
    ld b, a
    adc a
    ld hl, sp-$03
    adc l
    ret c

    xor d
    adc b
    adc b
    adc b
    adc b
    ld bc, $ff54
    cp h
    jp $c1be


    sbc h
    db $e3
    add c
    ld b, c
    ld b, e
    ld a, h
    add e

jr_02d_590f:
    db $fc
    ret nz

    ld d, l
    rst $38
    cp e
    add $fd
    add e
    ld a, l
    add e
    ld bc, $8601
    ld a, c
    nop
    nop
    cp b
    ret nz

    add e
    ldh a, [$f7]
    ld [hl], b
    sub l
    jp z, $848b

    sub [hl]
    adc l
    ld h, a

jr_02d_592c:
    ld e, a
    cp a
    dec sp
    ld b, b
    ld d, b
    rst $38
    ld l, c
    jp z, $dd7f

    ld [hl], e
    dec sp
    rst $30
    scf
    ld [hl], $6d
    cp $dd
    ldh [$e7], a
    nop
    rst $38
    add b
    add b
    ld [hl], b
    ld a, a
    ld e, a
    db $76
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], l
    dec sp
    nop
    rst $38
    ld e, a
    ld [hl], b
    add b
    inc b
    rlca
    dec b
    ld b, $05
    ld b, $07
    inc bc
    ld d, b
    nop
    rst $38
    ld a, [hl]
    db $fc
    jp Jump_02d_7867


    ret nz

    ld e, a
    ldh [$ca], a
    ld a, l
    ld a, a
    scf
    inc sp
    nop
    ld b, b
    jr nz, jr_02d_592c

    ld h, h
    ld [hl], $df
    sbc a
    xor $75
    cp $0e
    rra
    ld b, e
    db $fc
    cp $38
    inc b
    and b
    jr z, @+$01

    nop
    nop
    cp l
    ld b, d
    ld hl, sp+$05
    ld hl, sp+$07
    nop
    nop
    rst $28
    db $10
    rlca
    rst $38
    nop
    inc e
    rrca
    dec bc
    rlca
    inc bc
    rlca
    rst $38
    nop
    inc hl
    db $fc
    call z, $f0f0
    ld b, b
    ld bc, $f100
    rst JumpTable
    inc a
    db $e3
    ld h, [hl]
    cp a
    rst JumpTable
    db $e3
    cp a
    xor $fe
    ld sp, $c738
    ld b, l
    inc d
    nop
    xor $3b
    ld b, b
    rst $08
    ld a, d
    xor $01
    cp a
    push af
    ld e, e
    inc b
    nop
    nop
    ld e, b
    ld h, [hl]
    sub l
    ld [c], a
    ld d, c
    ld l, [hl]
    ld l, d
    ld [hl], c
    ld l, h
    ldh a, [$57]
    jr c, jr_02d_5a05

    rra
    dec bc
    inc sp
    ld a, b
    dec hl
    rst $38
    add b
    sub l
    db $fd
    sub a
    db $fc
    sub a
    sbc a
    add b
    xor d
    xor d
    ld d, l
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    db $fc
    nop
    nop
    inc bc
    inc bc
    ld bc, $3901
    add hl, sp
    rla
    rra
    add hl, de
    rra
    ret nz

    nop
    rrca
    ld [bc], a
    inc bc
    add hl, de
    add hl, de
    dec c
    dec c
    adc d
    adc a
    sbc d
    sbc a
    ld d, h
    db $db
    inc sp
    ld hl, sp-$40
    nop
    add b
    ldh [$e0], a

jr_02d_5a05:
    ld a, [de]
    ld a, [$bb4b]
    ld l, l
    sbc a
    ld hl, $b49f
    dec bc
    rra
    rrca
    rst $38
    ret nz

    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ld [$5580], sp
    ld a, [bc]
    dec c
    dec de
    inc e
    ld e, d
    ld a, a
    ld [hl], b
    ld [hl], b
    ld h, h
    ret nc

    or b
    ret nz

    cp c
    ret nz

    ld d, b
    nop
    ld hl, sp-$50
    ld [hl], l
    ld l, d
    db $fd
    or h
    ld l, a
    ld a, [$8a27]
    daa
    cpl
    inc bc
    dec a
    inc bc
    nop
    nop
    inc [hl]
    rrca
    cp e
    ld b, $ea
    scf
    db $f4
    ccf
    ld l, $fd
    dec hl
    db $fc
    ld a, d
    db $e4
    ld d, h
    ldh [$c0], a
    nop
    ret nz

    ld h, b
    ldh [$b4], a
    ld [hl], h
    or $36
    jp c, $723e

    rra
    dec [hl]
    dec bc
    ld e, l
    inc bc
    dec b
    nop
    cp a
    xor a
    ret nc

    call $a0f2
    xor [hl]
    sbc d
    sbc e
    jp Jump_02d_71c3


    ld [hl], c
    ld e, $1e
    ld bc, $ff54
    db $fd
    inc bc
    reti


    daa
    pop de
    cpl
    dec b
    add a
    sub [hl]
    db $fc
    ld a, l
    ld a, a
    ld bc, $ff55
    ld e, c
    ldh [$5f], a
    ldh [rKEY1], a
    ld a, [c]
    ld b, b
    ld h, c
    add hl, hl
    ld e, l
    ld a, a
    ld d, l
    ld d, l
    nop
    ld [$4011], sp
    ld [bc], a
    adc b
    ld [hl+], a
    inc b
    ld b, b
    ld d, l
    nop
    nop
    db $db
    cp l
    ld a, [hl]
    rst $38
    inc a
    add c
    sbc c
    ld b, d
    jp $e724


    jr jr_02d_5aaa

    ld a, b
    rst $38

jr_02d_5aaa:
    ld b, h
    add hl, bc
    reti


    ld l, a
    cpl
    ld a, a
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ret nc

    dec b
    rst $38
    add b
    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$bf], a
    cp a
    nop
    ld d, h
    rst $38
    ld d, l
    xor d
    ld d, l
    adc b
    ld d, a
    adc d
    ld a, l
    xor a
    ld e, b
    adc l
    rst JumpTable
    ld hl, sp+$70
    ldh a, [rP1]
    nop
    inc c
    ld e, $17
    inc de
    ld a, [de]
    ld d, $54
    cp $bf
    db $fc
    or l
    and [hl]
    nop
    inc d
    ld a, a
    inc bc
    ld bc, $723b
    ld c, d
    ld c, [hl]
    or h
    add $fd
    ld d, [hl]
    scf
    or [hl]
    db $fc
    rst JumpTable
    nop
    inc c
    cp $e0
    ret nz

    ld h, [hl]
    cpl
    add hl, hl
    add hl, sp
    inc de
    or c
    push hl
    or e
    cp [hl]
    db $eb
    ld a, e
    and $c0
    nop
    nop
    jr jr_02d_5b45

    inc h
    ld h, h
    ld c, h
    call nz, $c4dc
    ld l, [hl]
    ld e, a
    rst JumpTable
    ld a, c
    adc a
    ld h, l
    ld bc, $bd80
    xor $a3
    cp e
    rst $28
    ld h, l
    cp $f6
    rst JumpTable
    sbc [hl]
    rst $30
    and a
    ei
    ld l, c
    rst $38
    dec b
    ld [hl], l
    rst $38
    db $ec
    sbc a
    push hl
    cp a
    sub a
    ld e, a
    ld a, a
    ld [hl], a
    db $e3
    inc b
    dec d
    rst $38
    ld [hl], e
    rst $08
    ld l, d
    rst JumpTable
    db $d3
    rst $30
    cp $fe
    db $fd
    db $fd
    adc $87
    ld bc, $fd40
    ld d, l

jr_02d_5b45:
    rst $00
    cp l
    rst $10
    and [hl]
    rst $38
    ld l, a
    ld a, e
    ld a, c
    rst $08
    call $d6bf
    cp a
    ld d, b
    nop
    cp a
    and h
    xor [hl]
    cp d
    cp e
    sbc d
    sbc e
    set 1, e
    ld h, c
    ld h, c
    jr c, jr_02d_5b99

    ld c, $0e
    dec b
    nop
    db $fd
    or e
    rst JumpTable
    sbc e
    xor $8e
    and [hl]
    and h
    rst $38
    push af
    rst $38
    ld l, a
    ld a, a
    ccf
    ccf
    dec b
    nop
    rst $28
    adc l
    ei
    db $db
    ld [hl], l
    ld sp, $6555
    rst JumpTable
    ld c, a
    rst $38
    ld h, [hl]
    cp $fc
    db $fc
    ld d, b
    nop
    db $fd
    dec h
    ld [hl], l
    ld e, l
    db $dd

jr_02d_5b8c:
    ld e, c
    reti


    db $d3
    db $d3
    add [hl]
    add [hl]
    inc e
    inc e
    ld [hl], b
    ld [hl], b
    ld d, b
    sub b
    rlca

jr_02d_5b99:
    ld [bc], a
    ld c, $0c
    ld a, [bc]
    inc c
    ld [$0b0c], sp
    inc bc
    nop
    nop
    nop
    dec b
    nop
    jr nz, jr_02d_5b8c

    ccf
    adc $31
    db $db
    pop de
    sub c
    ld h, b
    rst $08
    ldh a, [$30]
    rst $38
    ld l, a
    rra
    inc d
    inc d
    rst $38
    call $08fe
    ld [$7f8c], sp
    add [hl]
    ld a, a
    rlca
    inc e
    rst $20
    ld hl, sp+$14
    db $10
    ldh a, [$5c]
    ldh [$ee], a

jr_02d_5bcb:
    rst JumpTable
    rla
    ld hl, sp+$27
    ld hl, sp-$32
    ld a, h
    add b
    ldh [rP1], a
    nop
    ld a, [bc]
    ld e, [hl]
    ld bc, $0700
    inc bc
    dec c
    ld b, $0e
    rra
    scf
    jr c, jr_02d_5c11

    ld [hl], c
    ld h, c
    pop hl
    nop
    ld a, [hl+]
    ccf
    rst $38
    rst $38
    cp l
    jp $1ee1


    adc a
    ld [hl], b
    rra
    ldh [$c0], a
    ret nz

    ret nz

    nop
    xor d
    cp $ff
    rst $38
    sbc $e1
    add e
    ld a, h
    ld hl, sp+$07
    ld bc, $0101
    ld bc, $0500
    jp $80c0


    ldh a, [$e0]
    ret nc

    jr c, jr_02d_5bcb

    ld a, h
    db $76

jr_02d_5c11:
    adc [hl]
    ld a, e
    add [hl]
    ccf
    dec a
    dec b
    ld [$9ef0], sp
    pop hl
    sbc a
    ldh [$8f], a
    rst $08
    push bc
    ld a, [$fe51]
    rst $38
    or d
    rst $38
    jr z, jr_02d_5c78

    nop
    inc e
    db $e3
    rst $38
    rst $38
    and $19
    rst $38
    rst $38
    cp e
    ld b, h
    inc de
    db $ec
    nop
    nop
    db $fc
    inc bc
    ld [hl], b
    adc a
    nop
    rst $38
    dec de
    db $e4
    ccf
    ret nz

    ei
    inc b
    ld sp, hl
    ld b, $b0
    ld c, a
    nop
    inc d
    ld a, a
    ld a, l
    add e
    ld a, c
    add a
    ld sp, hl
    rlca
    db $db
    daa
    db $d3
    cpl
    adc d
    adc a
    dec c
    rst $38
    ld d, h
    ld b, b
    rst $38
    sbc d
    adc [hl]
    jp $7f51


    ldh a, [$b8]
    cp a
    adc h
    adc a
    rst $08
    rst $08
    dec d
    ld d, l
    rst $38
    ld bc, $10fe
    db $10
    ld hl, sp+$0f
    nop
    add b
    db $e3
    dec d
    ld d, l
    rst $38
    add b
    ld a, a

jr_02d_5c78:
    ld [bc], a
    ld b, d
    rst $20
    cp h
    nop
    inc b
    adc a
    ld d, b
    nop
    rst $38
    ld bc, $0b07
    db $fc
    dec a
    cp $ee
    pop af
    ld e, [hl]
    pop hl
    db $fc
    jp $c3bc


    nop
    rlca
    nop
    db $ed
    ld a, b
    ret c

    jr nc, jr_02d_5cf9

    jr nc, jr_02d_5d10

    ld hl, $372b
    inc a
    rra
    inc bc
    jr nz, jr_02d_5cb2

    db $fc
    adc a
    ld a, a
    inc bc
    xor b
    ld [hl], b
    ldh a, [$f8]
    sub h
    ld hl, sp+$0b
    rst $30
    ld c, $7b
    rlca
    dec b

jr_02d_5cb2:
    ld b, b
    ccf
    ld a, b
    rst $38
    ld bc, $44fe
    ld c, a
    ret


    sbc b
    ld a, a
    ld [hl], b
    rst $38
    jp $00fc


    rlca
    nop
    jp nc, $ad3f

    ld e, $d7
    inc c
    ld a, l
    add [hl]
    pop de
    xor $7a
    db $fc
    db $fc
    nop
    jp hl


    and $1a
    add hl, de
    db $e4
    dec b
    dec de
    ld [c], a
    nop
    ld a, [bc]
    ld a, [c]
    adc l
    ld [hl], c
    ld b, l
    add hl, sp
    and l
    sbc c
    nop
    ld a, a
    ld a, a
    ldh [$e0], a
    rst $08
    ret nz

    sub b
    adc a
    ld [bc], a
    and b
    sbc a
    and e
    sbc h
    and [hl]
    sbc b
    cpl
    rst $38
    db $10
    rst $38
    nop
    nop

jr_02d_5cf9:
    ld [hl+], a
    inc b
    ei
    ld b, b
    cp a

jr_02d_5cfe:
    pop bc
    ld c, b
    add hl, hl
    rst $38
    cp l
    inc a
    ld e, d
    ld b, d
    dec [hl]
    sbc b
    and c
    xor l
    sub c
    inc hl
    inc sp
    ld a, h
    jr c, jr_02d_5cfe

jr_02d_5d10:
    nop
    ld b, h
    add $82
    xor [hl]
    add $ca
    cp [hl]
    or d
    ld b, d
    sbc $21
    pop bc
    cp $e0
    rst $38
    ld hl, $00d0
    rst $38
    add sp, -$21
    or $cf
    db $db
    rst $20
    adc $00
    pop af
    rrca
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    ld [hl], b
    add h
    ld d, e
    db $e3
    db $fc
    rst $00
    ld hl, sp+$21
    jp $9cfc


    ld hl, $fec1
    ld h, c
    cpl
    and c
    di
    db $fc
    nop
    dec sp
    db $fc
    dec bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$00
    cp $01
    db $fd
    inc bc
    ld a, a
    add b
    rst $38
    nop
    nop
    ld hl, sp+$1f
    call z, $c63f
    ccf
    rst $00
    ccf
    ld b, b
    jp $f341


    rrca
    rst $08
    ccf
    sbc a
    ld a, a
    jr nz, @+$41

    rst $38
    and c
    ld a, a
    rst $38
    xor a
    rra
    ld [hl], h
    ld bc, $d038
    ld h, b
    ld h, b
    ret nz

    add b
    ret nz

    ld b, d
    add b
    ld b, c
    db $db
    rst $20
    and l
    ld a, [hl]
    inc a
    jr jr_02d_5d85

jr_02d_5d85:
    add b
    nop
    add hl, bc
    rst JumpTable
    nop
    adc a
    ld h, b
    ld c, d
    inc [hl]
    ld h, h
    nop
    sbc c
    dec h
    jp c, Jump_02d_7689

    xor e
    ld d, h
    ei
    nop
    inc b
    db $fc
    ld [bc], a
    ld a, [$f404]
    ld [$f0f0], sp
    ld b, c
    dec h
    add hl, hl
    dec l
    nop
    nop
    ld [bc], a
    ld bc, $1102
    ld c, $2f
    db $10
    rra
    jr nz, jr_02d_5dd3

    ld e, a
    nop
    jr nz, jr_02d_5df5

    ld b, b
    and l
    sbc c
    and d
    sbc h
    or c
    nop
    adc [hl]
    sbc b
    add a
    adc $c1
    ld h, e
    ld h, b
    or b
    ld [$6f30], sp
    adc a
    cp a
    ld [hl-], a
    ld b, b
    cp a
    add b
    dec c
    jp nz, $c0bd

    cp a

jr_02d_5dd3:
    dec h
    ld c, c
    ccf
    ccf
    add h
    ld h, c
    cp l
    add c
    sbc c
    add c
    jr nz, jr_02d_5e21

    ld b, d
    inc h
    cp l
    inc a
    ld l, l
    or l
    adc c
    or l
    xor l
    sub c
    add c
    inc hl
    cp d
    sub $fa
    sub [hl]
    db $db
    or [hl]
    ld hl, $d200
    cp a

jr_02d_5df5:
    push af
    ld e, [hl]
    ld a, d
    inc a
    inc c
    nop
    ld [$fec1], sp
    ret nz

    rst $38
    ld h, c
    ret z

    rst $38
    ldh [rP1], a
    ld a, a
    ld a, b
    ccf
    cp a
    rra
    rra
    ldh [$f8], a
    ld [bc], a
    rlca
    ldh [$1f], a
    nop
    rst $38
    db $10
    ld hl, $38ef
    rlca
    rst $38
    jr nz, jr_02d_5e48

    ld sp, $f867
    ld h, b
    ld [bc], a
    rst $38

jr_02d_5e21:
    ld h, b
    sbc a
    inc b
    rst $38
    ldh [rVBK], a
    xor a
    ld [bc], a
    rra
    ld a, a
    ccf
    db $fc
    ld a, a
    ld [hl], b

jr_02d_5e2f:
    ld c, e
    db $e3
    jr jr_02d_5e2f

    rst $00
    ld hl, sp+$21
    ld d, d
    rst $38
    inc c
    rst $38

jr_02d_5e3a:
    ld [de], a
    nop
    rst $38
    ld b, b
    ld b, e
    rst $00
    jr c, jr_02d_5e66

    cp a
    add d
    ld l, $3f
    cp a

jr_02d_5e47:
    ld a, a

jr_02d_5e48:
    rra
    rst $38
    ld hl, $0020
    rst $38
    ld e, a
    ldh [$bf], a
    ret nz

    and b
    ret nz

    ret nc

    nop
    ldh [$e8], a
    ldh a, [rSVBK]
    ldh [$c0], a
    ld h, b
    ld h, b
    sub b
    ld c, e
    ldh [$80], a
    ld hl, $80f0
    cp h

jr_02d_5e66:
    ret nz

    ret nz

    scf
    dec sp
    rst $20
    ld a, b
    ld e, a
    ccf
    or e
    rrca
    nop
    nop
    nop
    jr jr_02d_5e75

jr_02d_5e75:
    inc a
    nop
    rst $38
    nop
    nop
    rst $20
    jr jr_02d_5e3a

    ld a, [hl]
    rst $38
    rst $38
    db $db
    rst $20
    add c
    cpl
    ld b, d
    add c
    and l
    ld b, d
    jp $313c


    db $fc
    pop bc
    jr nz, @+$34

    ld b, h
    rst $20
    ld b, b
    nop
    nop
    jr @+$03

    ld bc, $0103
    ld [bc], a
    inc bc
    nop
    inc bc
    ld [bc], a
    rlca
    ld b, $3f
    rra
    ld l, a
    ld [hl], b
    nop
    cp b
    ret nz

    ld [hl], b
    add b
    ld a, b
    add b
    ccf
    ret nz

    nop
    cpl
    ret nc

    dec c
    ld a, [c]
    db $fc
    ld hl, sp-$0a
    ld c, $00
    dec a
    inc bc
    ld e, $01
    ld a, $01
    cp $01
    ld [$0bf4], sp
    ld h, h
    sbc e
    cpl
    jr nz, jr_02d_5e47

    add b
    ret nz

    nop
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ldh [$60], a
    adc b
    nop
    ld a, a
    ld [$08ff], sp
    rst $38
    rrca
    rst $38
    ld a, [de]
    nop
    db $fd
    ld [hl], h
    ei
    ldh a, [rIE]
    ld d, b
    cp a
    ld c, c
    ld b, b
    cp $0f
    db $10
    jr @+$01

    ld hl, sp-$01
    sbc $3f
    nop
    dec de
    rst $38
    ld d, $f9
    rrca
    rrca
    db $10
    rra
    nop
    ld [hl], $3f
    ld c, c
    ld a, c
    ld c, c
    ld a, c
    db $76
    ld a, a
    nop
    ld sp, $7a3f
    ld c, a
    ld [$9c08], sp
    sub h
    nop
    db $fc
    db $e4
    inc a
    db $ec
    ld a, b
    ld hl, sp-$7c
    db $fc
    nop
    or [hl]
    cp $49
    rst $08
    rst $38
    ld a, a
    ret c

    cp b
    nop
    push af
    adc a
    xor a
    sbc $d6
    rst $28
    ld a, [$00ff]
    and d
    and e
    ld [c], a
    db $e3
    db $fc
    cp $fe
    inc hl
    nop
    rst $38
    db $fd
    rrca
    rst $38
    rst $30
    dec c
    cp a
    ld b, a
    ld [$05ef], sp
    rst $28
    rla
    ld l, h
    ld [$007f], sp
    ld d, l
    adc a
    ld bc, $6308
    nop
    ld b, c
    add hl, bc
    ld [$1000], sp
    rrca
    nop
    ld b, b
    nop
    jr z, jr_02d_5f50

jr_02d_5f50:
    dec bc
    rlca
    inc d
    rrca
    ld hl, sp-$01
    dec bc
    ld c, $00
    dec [hl]
    ld e, $77
    inc a
    ld b, d
    ld a, l
    ld b, b
    ld a, a
    nop
    ld h, b
    rst $38
    add c
    cp $91
    cp $45
    cp d
    nop
    ret nz

    ccf
    ret z

    scf
    ld [$fe15], a
    ld bc, $df00
    jr nz, @-$6f

    ld [hl], b
    dec de
    db $e4
    ld hl, $00de
    dec b
    ld a, [$f807]
    sub [hl]
    ld l, c
    rst JumpTable
    jr nz, jr_02d_5f86

jr_02d_5f86:
    ei
    inc b
    or c
    ld c, [hl]
    sbc b
    ld h, a
    ret nc

    ld [hl], b
    nop
    xor b
    ld a, b
    db $ec
    inc a
    ld b, d
    cp [hl]
    inc hl
    sbc $00
    ld b, $ff
    add c
    ld a, a
    adc c
    ld a, a
    sub b
    ld a, a
    db $10
    ld [de], a
    rst $38
    db $10
    rst $28
    ld [$ff1f], sp
    ld a, e
    db $fc
    ld bc, $ffd8
    ld l, b
    sbc a
    ld de, $10fe
    rrca
    ld [$3010], sp
    rst $38
    ldh a, [rTIMA]
    ld [$3fd8], sp
    cpl
    rra
    nop
    cp $9f
    ld h, c
    ld a, a
    ld l, l
    ld a, a
    sub d
    di
    nop
    sub d
    di
    db $ed
    rst $38
    ld h, c
    ld a, a
    ccf
    ccf
    nop
    ld c, c
    rst $08
    or a
    rst $38
    add [hl]
    cp $7e
    ld a, [$7f00]
    pop af
    cp $ce
    db $fc
    db $e4
    jr c, jr_02d_601a

    add b
    di
    db $10
    and c
    and e
    ldh a, [$f0]
    cp a
    cp a
    jp nc, $d224

    ld a, a
    sbc a
    ld [$05bf], sp
    rst $30
    ld [$ff15], sp
    nop
    rlca
    ei
    db $fd
    cp $4b
    db $fd
    cp $fe
    ret nz

    rst $28
    nop
    ld b, h
    rrca
    ld e, b
    ld [hl], a
    nop
    call c, $fb02
    nop
    ld bc, $005e
    ld [hl], a
    add b
    cp e
    rlca
    db $f4
    rst $38
    ld [$e000], sp
    rst $38
    add b

jr_02d_601a:
    rst $38
    add h
    rst $38
    ret z

    rst $38
    nop
    ld [hl], b
    ld a, a
    ld sp, hl
    rst $38
    sbc a
    sbc a
    call z, $01cc
    dec de
    db $e4
    ld de, $01ee
    cp $00
    dec d
    jr jr_02d_6033

jr_02d_6033:
    call nz, $feff
    rst $38
    sbc b
    ld h, a
    adc b
    ld [hl], a
    inc b
    nop
    rst $38
    nop
    rst $38
    ld bc, $08cf
    add hl, de
    rst $38
    db $10
    ccf
    rst $38
    rlca
    add hl, bc
    ld [$ff21], sp
    inc de
    rst $38
    nop
    ld c, $fe
    sbc a
    rst $38
    ld sp, hl
    ld sp, hl
    ld [hl], e
    ld [hl], e
    nop
    nop
    nop

jr_02d_605b:
    inc bc
    inc bc
    ld [$100c], sp
    db $10
    inc b
    ld hl, $7320
    ld b, b
    ld a, e
    ld bc, $0008
    nop
    nop
    ret nz

    ret nz

    ret nc

    jr nc, @-$06

    ld [$0474], sp
    nop
    and d
    ld c, $c2
    ld e, $c2
    ld e, $f9
    ld b, $00
    ld d, e
    add hl, hl
    di
    rrca
    cp a
    nop
    sbc [hl]
    ld h, b
    nop
    dec b
    or d
    rra
    ldh a, [$ef]
    ld [hl], b
    sbc $20
    nop
    ei
    nop
    cp a
    nop
    rst $28
    db $10
    call $0428
    rst $10
    jr c, jr_02d_605b

    nop
    ei
    sbc [hl]

Call_02d_609f:
    ld [$0303], sp
    nop
    inc [hl]
    scf
    ld c, b
    ld a, a
    ld c, l
    ld a, a
    rst $20
    rst $38
    ld [$fa98], sp
    sub b
    push af
    ld e, e
    ld [de], a
    ld e, b
    ret c

    inc h
    nop
    db $fc
    ld h, h
    db $fc
    call z, $32fc
    cp [hl]
    ld [de], a
    ld h, b
    ld e, [hl]
    rst $38
    ld bc, $0f53
    nop
    ld c, l
    ld a, e
    ld h, b
    dec sp
    jr nc, jr_02d_60ea

    nop
    rra
    rlca
    inc b
    rra
    ld [$087f], sp
    ld [hl], a
    nop
    rrca
    rra
    nop
    add $1e

jr_02d_60da:
    call z, $f81c
    nop
    ld hl, sp-$20
    jr nz, jr_02d_60da

    db $10
    cp $10
    xor $20
    ldh a, [$f8]
    pop hl

jr_02d_60ea:
    ld [$906f], sp
    rst $38
    nop
    di
    nop
    inc c
    and l
    ld d, d
    ld a, d
    ld d, $ed
    ld e, $bf
    nop
    nop
    dec a
    jp nz, $a017

    ld e, $e0
    cp a
    nop
    nop
    push hl
    jr @-$33

    inc h
    sub $2c
    ei
    nop
    inc e
    ret c

    ld a, [$7f6f]
    ld hl, sp-$01
    rst $38
    nop
    adc a
    rst $38
    sub c
    ld a, a
    ld h, e
    ld a, $3e
    nop
    nop
    nop
    ld [hl], $be
    db $ec
    db $fc
    ld a, $fe
    cp $01
    ld [c], a
    cp $12
    db $fc
    adc h
    ld hl, sp-$08
    xor a
    nop
    ld b, h
    nop
    ld e, $1e
    ccf
    ld hl, $407f
    di
    adc h
    nop
    call $bab3
    add $7c
    ld a, h
    nop
    nop
    nop
    ld a, b
    ld a, b
    db $fc
    add h
    cp $02
    rst $08
    ld sp, $b318
    call $715d
    ld [$ff20], sp
    nop
    ld bc, $1f0e
    rra
    ld a, [hl+]
    inc [hl]
    ld a, l
    dec b
    ld b, b
    db $db
    and b
    res 6, b
    and c
    rst $38
    ld [hl-], a
    ret nz

    rra

jr_02d_6167:
    dec c
    ld bc, $1f10
    rst $38
    ld a, [hl+]
    pop hl
    ld a, l
    jp nz, $db16

    add h
    set 0, c
    rst $38
    ld d, h
    rra
    inc c
    rst $38
    nop
    ld a, a
    add b
    ret nz

    add b
    sbc a
    sbc a
    and b
    cp l
    ld [$b780], sp
    adc b
    sbc a
    ld a, [hl+]
    ret nz

    ld a, a
    ld a, a
    adc b
    ld c, [hl]
    adc a
    sbc b
    sbc b
    ld [hl-], a
    add e
    jp Jump_02d_419f


    sbc [hl]
    dec hl
    rst $38
    rst $38
    nop
    nop
    ld h, [hl]
    ld b, b
    jr c, jr_02d_621e

    ld a, [hl]
    ld h, l
    dec hl
    ld l, a
    db $fd
    ld a, c
    call $80e0
    daa
    dec hl
    cp $fe
    inc bc
    ld bc, $29f9
    pop af
    sbc c
    jr nz, @-$63

    dec h
    add c
    add c
    dec hl
    nop
    inc e
    inc e
    ld l, $2a
    ld c, a
    ld c, c
    ld e, a
    ld e, l
    nop
    ld h, e
    ld a, a
    pop bc
    rst $38
    ld b, c
    ld a, a
    ret


    rst $38
    nop
    db $db
    nop
    cp l
    inc bc
    rst $38
    ld b, $f8
    inc c
    nop
    jr c, jr_02d_6167

    pop af
    ld hl, $63a2
    db $e4
    ld b, a
    nop
    ld a, a
    rst $38
    ret nz

    add b
    nop
    nop
    cpl
    rra
    nop
    ldh a, [$7f]
    add b
    rst $38

jr_02d_61eb:
    nop
    rst $38
    rra
    ldh [rP1], a
    rst $00
    adc h
    adc a
    call nz, $c2e7
    and e
    pop hl
    nop
    jr nc, jr_02d_61eb

    db $fc
    ld l, b
    cp l
    ld l, [hl]
    rst $28
    dec sp
    jr nc, @+$01

    inc bc
    ld d, [hl]
    ld hl, $ef80
    ld [hl], b
    cpl
    ld bc, $001f
    nop
    ld b, b
    add b
    res 6, b
    ld bc, $000e
    call $ceb0
    or b
    rst JumpTable
    and b
    sbc $a1
    nop

jr_02d_621e:
    cp $81
    cp h
    jp $e7d8


    rst $28
    ldh a, [$3e]
    rst $38
    nop
    jr nz, @+$45

    ld [hl+], a
    add c
    ld [hl+], a
    bit 0, b
    add h
    ld bc, $cd0e
    add d
    adc $81
    rst JumpTable
    add b
    nop
    sbc $80
    cp $80
    cp h
    add b
    ret c

    ret nz

    inc bc
    rst $28
    ldh [rIE], a
    nop
    nop
    rst $38
    ld b, e
    ret nz

    add c
    add hl, hl
    rst $38
    cp a
    db $ed
    sub d
    db $ed
    jp nc, $c832

    jr c, jr_02d_62b8

    rst $38
    ld a, a
    ld d, h
    jr jr_02d_625c

jr_02d_625c:
    inc h
    adc [hl]
    ld b, c
    ld a, [hl]
    nop
    ld b, d
    ld b, c
    ld h, b
    rrca

jr_02d_6265:
    dec l
    ld b, c
    inc b
    rst $38
    pop bc
    rst $38
    ld b, c
    ld a, a
    ld hl, $7fc1
    nop
    cp [hl]
    ld a, a
    rst $38
    nop
    ld a, a
    nop
    adc h
    rst $00
    add hl, bc
    ret


    adc [hl]
    adc e
    adc h
    ld hl, $888f
    and c
    jr nc, jr_02d_6303

    add b
    dec [hl]
    add c
    inc bc
    db $fc
    ld b, $fd
    nop
    ld b, $fc
    rlca
    rst $38
    ld a, [de]
    cp a
    ld c, $ff
    ld b, b

Call_02d_6295:
    rrca
    ld hl, $8f34
    sbc [hl]
    ld b, a
    jp $0027


    and $19
    ccf
    rst $38
    ei
    ld b, h
    ld a, e
    call nz, $ff40
    ld b, b
    nop
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    ld b, b
    nop
    nop
    jr @+$03

    ld bc, $0103
    ld [bc], a

jr_02d_62b8:
    inc bc
    nop
    inc bc
    ld [bc], a
    rlca
    ld b, $3f
    rra
    ld l, a
    ld [hl], b
    nop
    cp b
    ret nz

    ld [hl], b
    add b
    ld a, b
    add b
    ccf
    ret nz

    nop
    cpl
    ret nc

    dec c
    ld a, [c]
    db $fc
    ld hl, sp-$0a
    ld c, $00
    dec a
    inc bc
    ld e, $01
    ld a, $01
    cp $01
    ld [$0bf4], sp
    ld h, h
    sbc e
    cpl
    jr nz, jr_02d_6265

    add b
    ret nz

    ld bc, $4080
    ret nz

    ret nz

    ld b, b
    ldh [$60], a
    inc c
    ld [$7f11], sp
    nop
    ld d, l
    ld bc, $6308
    nop
    ld b, c
    add hl, bc
    ld [$00c0], sp
    db $10
    rrca
    nop
    dec l
    rst $38

jr_02d_6303:
    ld a, a
    ret c

    cp b
    push af
    adc a
    nop
    xor a
    sbc $d6
    rst $28
    ld a, [$a2ff]
    and e
    nop
    ld [c], a
    db $e3
    db $fc
    cp $fe
    inc hl
    rst $38
    db $fd
    nop
    rrca
    rst $38

jr_02d_631d:
    rst $30
    dec c
    cp a
    ld b, a
    rst $28
    dec b
    nop
    rst $28
    rla
    rst $38
    nop
    rst $38
    ld bc, $39ff
    nop
    rst $08
    ld c, a
    ld h, h
    rst $20
    and [hl]
    rst $20
    ld de, $00f1
    add hl, sp
    ld sp, hl
    rst $38
    ret nz

    ccf
    jr nz, jr_02d_637c

    inc l
    nop
    or e
    or d
    and [hl]
    and a
    and l
    and a
    xor h
    xor a
    ld de, $2f2c
    rst $38
    nop
    jr jr_02d_631d

    rst $08
    db $e4
    rra
    jr nc, jr_02d_6376

    rst $38
    ccf
    nop
    ld [$b3b3], sp
    and a
    rra
    jr z, jr_02d_63dc

    ldh a, [rP1]
    dec bc
    ld c, $35
    ld e, $77
    inc a
    ld b, d
    ld a, l
    nop
    ld b, b
    ld a, a
    ld h, b
    rst $38
    add c
    cp $91
    cp $00
    ld b, l
    cp d
    ret nz

    ccf
    ret z

jr_02d_6376:
    scf
    ld [$0015], a
    cp $01

jr_02d_637c:
    rst JumpTable
    jr nz, @-$6f

    ld [hl], b
    dec de
    db $e4
    nop
    ld hl, $05de
    ld a, [$f807]
    sub [hl]

jr_02d_638a:
    ld l, c
    nop
    rst JumpTable
    jr nz, jr_02d_638a

    inc b
    or c
    ld c, [hl]
    sbc b
    ld h, a
    nop
    ret nc

    ld [hl], b
    xor b
    ld a, b
    db $ec
    inc a
    ld b, d
    cp [hl]
    ld bc, $de23
    ld b, $ff
    add c
    ld a, a
    adc c
    ld d, c
    db $10
    ret nz

    rst $38
    nop
    dec a
    di
    db $10
    and c
    and e
    ldh a, [$f0]
    cp a
    cp a
    ld [de], a
    jp nc, Jump_02d_7fd2

    rrca
    ld [$05bf], sp
    rst $30
    ld [$0015], sp
    rst $38
    rlca
    ei

jr_02d_63c2:
    db $fd
    cp $4b
    db $fd
    cp $00
    cp $00
    ld l, $ef
    ld e, b
    rst JumpTable
    sbc h
    sbc a
    nop
    dec sp

jr_02d_63d2:
    dec sp
    jp hl


    jp hl


    ld l, $ee
    ld l, d
    xor $00
    sub [hl]
    sub [hl]

jr_02d_63dc:
    or d
    or e
    xor d
    cp e
    xor e
    cp e
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld c, d
    ld c, d
    sbc d
    sbc d
    or e
    or e
    jr nz, jr_02d_63c2

    rst $30
    ld a, a
    nop
    ld b, b
    ldh [rIE], a
    add b
    rst $38
    add h
    nop
    rst $38
    ret z

    rst $38
    ld [hl], b
    ld a, a
    ld sp, hl
    rst $38
    sbc a
    nop
    sbc a
    call z, $1bcc
    db $e4
    ld de, $01ee

jr_02d_6408:
    jr nz, jr_02d_6408

    nop
    dec d
    jr jr_02d_63d2

    rst $38
    cp $ff
    sbc b
    ld [$8867], sp
    ld [hl], a
    nop
    add h
    add hl, de
    db $10
    rst $38
    add hl, de
    ld [$3fff], sp
    rst $38
    rlca
    add hl, bc
    ld [$ff21], sp
    inc de
    nop
    rst $38
    ld c, $fe
    sbc a
    rst $38
    ld sp, hl
    ld sp, hl
    ld [hl], e
    nop
    ld [hl], e
    nop
    nop

jr_02d_6433:
    inc bc
    inc bc
    ld [$100c], sp
    ld [bc], a
    db $10
    ld hl, $7320
    ld b, b
    ld a, e
    ld bc, $0008
    nop
    nop
    ret nz

    ret nz

    ret nc

    jr nc, @-$06

    ld [$0074], sp
    inc b
    and d
    ld c, $c2
    ld e, $c2
    ld e, $f9
    nop
    ld b, $53
    add hl, hl
    di
    rrca
    cp a
    nop
    sbc [hl]
    nop
    ld h, b
    dec b
    or d
    rra
    ldh a, [$ef]

jr_02d_6464:
    ld [hl], b
    sbc $00
    jr nz, jr_02d_6464

    nop
    cp a
    nop
    rst $28
    db $10
    call $2802
    rst $10
    jr c, jr_02d_6433

    nop
    ei
    ld a, d
    ld a, [bc]
    rrca

jr_02d_6479:
    nop
    rrca
    dec sp
    ld a, [hl-]
    dec [hl]
    add hl, sp
    ld a, [hl+]

jr_02d_6480:
    inc l
    dec [hl]
    nop
    daa
    dec sp
    ld [hl+], a
    dec [hl]
    add hl, hl
    ldh [$e0], a
    ld h, b
    nop
    jr nz, jr_02d_64be

    ldh a, [rSVBK]
    ret nc

    ret z

    cp b

jr_02d_6493:
    sbc b
    nop
    ld a, b
    jr c, jr_02d_6480

    ld l, b
    ret c

    or a
    or a
    ld d, l
    nop
    rst $30
    or a
    rst $30
    ld l, h
    ld l, h
    ld a, [hl+]
    ld l, $a9
    nop
    xor a
    ld l, a
    rst $28
    add hl, hl
    jp hl


    db $76
    ld [hl], a
    ld h, h
    nop
    ld h, a
    db $eb
    rst $28
    db $ec
    db $ec
    ld l, c
    ld l, c
    rst $10
    inc b
    rst $30
    ld d, h
    ld [hl], a
    ld d, h
    ld [hl], a

jr_02d_64be:
    rst JumpTable
    ldh a, [rTAC]
    inc bc
    nop
    inc c
    inc b
    add hl, bc
    dec bc
    inc c
    inc c
    rrca
    dec bc
    nop
    dec e
    ld d, $27
    inc [hl]
    inc l
    jr z, jr_02d_6493

    add b
    nop
    ld h, b
    ld b, b
    jr nz, jr_02d_6479

    ld h, b
    ld h, b
    and b
    ldh [rSC], a
    ld d, b
    ldh a, [$d8]
    ld a, b
    xor b
    ld a, b
    ccf
    ld bc, $7b40
    nop
    ld h, b
    dec sp
    jr nc, @+$21

    rra
    rlca
    inc b
    rra
    nop
    ld [$087f], sp
    ld [hl], a
    rrca
    rra
    nop
    add $00
    ld e, $cc
    inc e
    ld hl, sp-$08
    ldh [rNR41], a
    ld hl, sp+$02
    db $10
    cp $10
    xor $f0
    ld hl, sp-$1f
    ld [$006f], sp
    sub b
    rst $38
    nop
    di
    inc c
    and l
    ld d, d
    ld a, d
    nop
    ld d, $ed
    ld e, $bf
    nop
    dec a
    jp nz, $0017

    and b
    ld e, $e0
    cp a
    nop
    push hl
    jr @-$33

    nop
    inc h
    sub $2c
    ei
    inc e
    dec [hl]
    ld hl, $007d
    ld h, c
    rst $28
    or c
    or e
    sbc l
    cp a
    adc a
    push bc
    nop
    ld b, e
    ld a, a
    ld a, $07
    nop
    ret z

    cp b
    xor [hl]
    nop
    ld a, h
    adc a
    ld a, d
    sub a
    ld a, d
    rst $28
    ld a, [c]

jr_02d_654b:
    cp l
    nop
    add $fb
    ld a, h
    db $fc
    nop
    sbc h
    sbc h
    inc sp
    nop
    ccf
    rst JumpTable
    rst $38
    ld [hl], e
    ld hl, sp-$54
    ret nz

    ld l, a
    jr nz, jr_02d_6560

jr_02d_6560:
    sbc a
    adc b
    add hl, bc
    jp z, $cafb

    ei
    ld a, d
    nop
    ld a, e
    ld h, d
    dec de
    reti


    inc bc
    jp c, $e701

    ret nz

    rrca
    ld [$f09f], sp
    jr z, jr_02d_65a0

    ld a, b
    ld l, b
    xor h
    cp b
    ld bc, $bc97
    xor a
    sbc a
    add $43
    ld a, l
    ld e, a
    ld [$6801], sp
    jr c, jr_02d_65f8

    inc a
    rst $28
    ld a, [hl-]
    rst $10
    ld e, a
    jr @+$0a

    ld a, [$f87c]
    nop
    ld b, b
    nop
    nop
    jr @+$03

    ld bc, $0103
    ld [bc], a
    inc bc
    nop

jr_02d_65a0:
    inc bc
    ld [bc], a
    rlca
    ld b, $3f
    rra
    ld l, a
    ld [hl], b
    nop
    cp b
    ret nz

    ld [hl], b
    add b
    ld a, b
    add b
    ccf
    ret nz

    nop
    cpl
    ret nc

    dec c
    ld a, [c]
    db $fc
    ld hl, sp-$0a
    ld c, $00
    dec a
    inc bc
    ld e, $01
    ld a, $01
    cp $01
    ld [$0bf4], sp
    ld h, h
    sbc e
    cpl
    jr nz, jr_02d_654b

    add b
    ret nz

    nop
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ldh [$60], a
    adc b
    nop
    ld a, a
    ld [$08ff], sp
    rst $38
    rrca
    rst $38
    ld a, [de]
    nop
    db $fd
    ld [hl], h
    ei
    ldh a, [rIE]
    ld d, b
    cp a
    ld c, c
    ld b, b
    cp $0f
    db $10
    jr @+$01

    ld hl, sp-$01
    sbc $3f
    nop
    dec de
    rst $38
    ld d, $f9
    adc a

jr_02d_65f8:
    ld [hl], b
    ld h, b
    sbc a
    nop
    ld e, c
    and [hl]
    dec d
    ld [$53ac], a
    ld a, e
    add h
    nop
    ld b, $f9
    adc l
    ld [hl], d
    pop bc

jr_02d_660a:
    ld a, $bc
    ld b, e
    nop
    ld l, c
    sub [hl]
    ld d, c
    xor [hl]
    ld [hl-], a
    call $39c6
    nop
    add b
    ld a, a
    sbc [hl]
    ld h, c
    rst $38
    ld a, a
    ret c

    cp b
    nop
    push af
    adc a
    xor a
    sbc $d6
    rst $28
    ld a, [$00ff]
    and d
    and e
    ld [c], a
    db $e3
    db $fc
    cp $fe
    inc hl
    nop
    rst $38
    db $fd
    rrca
    rst $38
    rst $30
    dec c
    cp a
    ld b, a
    ld [$05ef], sp
    rst $28
    rla
    ld l, h
    ld [$007f], sp
    ld d, l
    adc a
    ld bc, $6308
    nop
    ld b, c
    add hl, bc
    ld [$1000], sp
    rrca
    nop
    ld b, b
    nop
    jr z, jr_02d_6654

jr_02d_6654:
    dec bc
    rlca
    inc d
    rrca
    ld hl, sp-$01
    dec bc
    ld c, $00
    dec [hl]
    ld e, $77
    inc a
    ld b, d
    ld a, l
    ld b, b
    ld a, a
    nop
    ld h, b
    rst $38
    add c
    cp $91
    cp $45
    cp d
    nop
    ret nz

    ccf
    ret z

    scf
    ld [$fe15], a
    ld bc, $df00
    jr nz, jr_02d_660a

    ld [hl], b
    dec de
    db $e4
    ld hl, $00de
    dec b
    ld a, [$f807]
    sub [hl]
    ld l, c
    rst JumpTable
    jr nz, jr_02d_668a

jr_02d_668a:
    ei
    inc b
    or c
    ld c, [hl]
    sbc b
    ld h, a
    ret nc

    ld [hl], b
    nop
    xor b
    ld a, b
    db $ec
    inc a
    ld b, d

jr_02d_6698:
    cp [hl]
    inc hl
    sbc $00
    ld b, $ff
    add c
    ld a, a
    adc c
    ld a, a
    sub b
    ld a, a
    db $10
    ld [de], a
    rst $38
    db $10
    rst $28
    ld [$ff1f], sp
    ld a, e
    db $fc
    ld bc, $ffd8
    ld l, b
    sbc a
    ld de, $10fe
    rrca
    ld [$3010], sp
    rst $38
    ldh a, [rTIMA]
    ld [$3fd8], sp
    cpl
    rra
    nop
    ld l, e
    sub h
    ld b, $f9
    jr nc, jr_02d_6698

    ld e, c
    and [hl]
    nop
    ld l, c
    sub [hl]
    ld [hl-], a
    call Call_02d_7887
    ldh [$1f], a
    nop
    inc [hl]
    sra l
    jp nc, $e619

    add c
    ld a, [hl]
    nop
    ld d, h
    xor e
    jp c, $8c25

    ld [hl], e
    ld sp, $80ce
    di
    db $10
    and c
    and e
    ldh a, [$f0]
    cp a
    cp a
    jp nc, $d224

    ld a, a
    sbc a
    ld [$05bf], sp
    rst $30
    ld [$ff15], sp
    nop
    rlca
    ei
    db $fd
    cp $4b
    db $fd
    cp $fe
    ret nz

    rst $28
    nop
    ld b, h
    rrca
    ld e, b
    ld [hl], a
    nop
    call c, $fb02
    nop
    ld bc, $005e
    ld [hl], a
    add b
    cp e
    rlca
    db $f4
    rst $38
    ld [$e000], sp
    rst $38
    add b
    rst $38
    add h
    rst $38
    ret z

    rst $38
    nop
    ld [hl], b
    ld a, a
    ld sp, hl
    rst $38
    sbc a
    sbc a
    call z, $01cc
    dec de
    db $e4
    ld de, $01ee
    cp $00
    dec d
    jr jr_02d_6737

jr_02d_6737:
    call nz, $feff
    rst $38
    sbc b
    ld h, a
    adc b

jr_02d_673e:
    ld [hl], a
    inc b
    nop
    rst $38
    nop
    rst $38
    ld bc, $08cf
    add hl, de
    rst $38
    db $10
    ccf
    rst $38
    rlca
    add hl, bc
    ld [$ff21], sp
    inc de
    rst $38
    nop
    ld c, $fe
    sbc a
    rst $38
    ld sp, hl
    ld sp, hl
    ld [hl], e
    ld [hl], e
    add b
    ld l, a
    ldh a, [$f9]
    ld b, $53
    add hl, hl
    di
    rrca
    cp a
    nop
    nop
    sbc [hl]
    ld h, b
    dec b
    or d
    rra
    ldh a, [$ef]
    nop
    ld [hl], b
    sbc $20
    ei
    nop
    cp a
    nop
    rst $28
    nop
    db $10
    call $d728
    jr c, jr_02d_673e

    nop
    ei
    add b
    ld a, d
    ld a, [bc]
    rrca
    rrca
    dec sp
    ld a, [hl-]
    dec [hl]
    add hl, sp
    ld a, [hl+]

jr_02d_678b:
    nop
    inc l
    dec [hl]
    daa
    dec sp
    ld [hl+], a
    dec [hl]
    add hl, hl
    ldh [rP1], a
    ldh [$60], a
    jr nz, jr_02d_67c9

    ldh a, [rSVBK]
    ret nc

    ret z

    ld bc, $98b8
    ld a, b
    jr c, jr_02d_678b

    ld l, b
    ret c

    rst $28
    nop
    ld b, b
    nop
    rlca
    inc bc
    inc c
    inc b
    add hl, bc
    dec bc
    inc c
    inc c
    nop
    rrca
    dec bc
    dec e
    ld d, $27
    inc [hl]
    inc l
    jr z, jr_02d_67bb

jr_02d_67bb:
    ret nz

    add b
    ld h, b
    ld b, b
    jr nz, @-$5e

    ld h, b
    ld h, b
    nop
    and b
    ldh [$50], a
    ldh a, [$d8]

jr_02d_67c9:
    ld a, b
    xor b
    ld a, b
    ret nz

    ld e, a
    ld [bc], a
    ld d, e
    rrca
    ld e, b
    ei
    nop
    ld l, a
    sub b
    rst $38
    nop
    nop
    di
    inc c
    and l
    ld d, d
    ld a, d
    ld d, $ed
    ld e, $00
    cp a
    nop
    dec a
    jp nz, $a017

    ld e, $e0
    nop
    cp a
    nop
    push hl
    jr jr_02d_67bb

    inc h
    sub $2c
    nop
    ei
    inc e
    dec [hl]
    ld hl, $617d
    rst $28
    or c
    nop
    or e
    sbc l
    cp a
    adc a
    push bc
    ld b, e
    ld a, a
    ld a, $00
    rlca
    nop
    ret z

    cp b
    xor [hl]
    ld a, h
    adc a
    ld a, d
    nop
    sub a
    ld a, d
    rst $28
    ld a, [c]
    cp l
    add $fb
    ld a, h
    ld b, b
    db $fc
    ld a, a
    nop
    ld b, c
    jr z, jr_02d_6846

    ld a, b
    ld l, b
    xor h
    cp b
    ld bc, $bc97

jr_02d_6825:
    xor a
    sbc a
    add $43
    ld a, l
    ld e, a
    ld [$6801], sp
    jr c, @+$70

    inc a
    rst $28
    ld a, [hl-]
    rst $10
    ld e, a
    jr jr_02d_683f

    ld a, [$f87c]
    nop
    ld [bc], a
    ld b, b
    jr jr_02d_6825

jr_02d_683f:
    nop
    sub l
    ld [bc], a
    ld hl, $27dc
    rlca

jr_02d_6846:
    adc c
    db $10
    inc d
    ld l, b
    add hl, sp
    add [hl]
    db $fc
    nop
    nop
    ld b, $07
    dec bc
    dec c
    rla
    ld e, $18
    sbc e
    ld h, c
    ld [hl], c
    inc bc
    nop
    rla
    rlca
    inc bc
    ld a, [bc]
    dec c
    ld bc, $9b1b
    sub a
    pop de
    ld e, e
    db $f4
    ld a, [hl-]
    ld l, e
    sub h
    add b
    ld b, b
    ld a, [$bdf2]
    ld c, c
    rst $38
    rst $30
    cp $fb
    ld a, [c]
    and d
    or $a2
    xor [hl]
    ld e, b
    xor [hl]
    dec d
    inc b
    rst $38
    adc b
    ld a, a
    ld [$0f08], sp
    ld a, [de]
    db $fd
    ld [hl], h
    ei
    ldh a, [$50]
    cp a
    dec d
    ld b, h
    rst $38
    ld c, c
    cp $08
    ld [$f818], sp
    sbc $3f
    dec de
    ld d, $f9
    ld d, l
    ld d, l
    nop
    daa
    ld [$5110], sp
    ld e, $22
    ld b, c
    ld b, b
    ld d, l
    ld d, b
    nop
    add b
    ld a, [c]
    sbc h
    ld [bc], a
    inc bc
    ld bc, $0102
    and $01
    add b
    db $10
    rst $38
    ld a, a
    ret c

    cp b
    push af
    adc a
    xor a
    sbc $d6
    rst $28
    ld a, [$a3a2]
    ld [c], a
    db $e3
    ld h, b
    nop
    cp $fc
    inc hl
    rst $38
    db $fd
    rrca
    rst $38
    rst $30
    dec c
    cp a
    ld b, a
    rst $28
    dec b
    rst $28
    rla
    ld d, h
    ld de, $88c0
    and b
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [$74], a
    and h
    ret z

    and b
    ld d, b
    rla
    nop
    ld bc, $2480
    jr jr_02d_6940

    inc h
    inc a
    ld b, b
    ld a, c
    inc sp
    ld bc, $c042
    rst JumpTable
    ccf
    db $e4
    ld a, b
    ld d, b
    ldh [$a0], a
    add b
    jp z, $c280

    add h
    add b
    inc e
    dec b
    nop
    rlca
    rst $38
    inc bc
    inc h
    jr jr_02d_695e

    inc h
    inc a
    ld b, b
    ld a, b
    jr nc, jr_02d_6911

    inc de
    nop
    add a
    rst $38
    ld a, d

jr_02d_6911:
    db $fc
    jr c, @+$12

    ld b, b
    jr nz, @+$0c

    ld [bc], a
    inc b
    rst $38
    ret nz

    nop
    dec bc
    rlca
    inc d
    rrca
    ld hl, sp-$01
    db $10
    ld bc, $e900
    ld b, $fb
    db $fc
    ld bc, $31ce
    xor c
    ld d, $97
    ld [$1027], sp

Call_02d_6932:
    ld c, e

Call_02d_6933:
    inc c
    inc c
    inc bc
    nop
    ld bc, $0505
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a

jr_02d_6940:
    ld bc, $0001
    nop
    or c
    adc $c1
    cp $65
    ld a, [hl]
    add hl, de
    ld a, $10
    rra
    jr nc, jr_02d_698f

    ld [hl], h
    ld e, a
    cp h
    rst $30
    inc d
    nop
    ld a, l
    ld [$ac3c], a
    adc a
    cp a
    ld e, a
    ei

jr_02d_695e:
    ld e, l
    ld a, [$fe5f]
    ld e, [hl]
    sub h
    ld a, h
    dec d
    ld b, h
    rst $38
    sub b
    ld a, a
    ld [de], a
    db $10

jr_02d_696c:
    jr jr_02d_698d

    ld a, e
    db $fc
    ret c

    ld l, b
    sbc a
    dec d
    ld d, b
    rst $38
    ld de, $10fe
    db $10
    jr nc, jr_02d_696c

    db $10
    ret c

    ccf
    cpl
    rra
    ld d, l
    ld d, b
    nop
    ld b, b
    add b
    add b
    add b
    ret nz

    ld h, c
    ld e, a
    jr nz, jr_02d_69ad

jr_02d_698d:
    rra
    inc d

jr_02d_698f:
    ld bc, $7d00
    ld [bc], a
    ld a, $33
    ld h, d
    ld bc, $0166
    call c, $2123
    sbc $ee
    ld b, h
    nop
    and e
    and d
    ld [c], a
    db $e3
    and c
    ldh a, [$f0]
    cp a
    cp a
    jp nc, Jump_02d_7fd2

    ld a, a

jr_02d_69ad:
    nop
    nop
    nop
    ld h, $fe
    cp a
    dec b
    cp a
    ld b, a
    rst $28
    dec d
    rst $38
    rlca
    ei
    db $fd
    ld c, e
    db $fd
    nop
    ld d, b
    dec d

jr_02d_69c1:
    add b
    ret nz

    pop bc
    db $e4
    sbc b
    jp c, $fca4

    add d
    sbc $cc
    ret nz

    ld b, c
    ret nc

    nop
    ld b, d
    ld c, l
    add b
    dec b
    ld [bc], a
    jr nz, jr_02d_69f0

    ld b, h
    ld [$3048], sp
    ld bc, $c06a
    xor a
    rra
    scf
    ld a, b
    ret nc

    ld h, b
    ld h, b
    add b
    add b
    add b
    add b
    rra
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc bc

jr_02d_69f0:
    rst $38
    nop
    jp $7eff


    rst $38
    ld h, $18
    ld b, l
    nop
    nop
    ld [hl], a
    call c, $fb02
    ld e, [hl]
    ld [hl], a
    add b
    cp e
    rlca
    db $f4
    rrca
    ld hl, sp-$01
    dec b
    ld b, b
    nop
    dec d
    ld [bc], a
    adc d
    ld bc, $e2c5
    pop af
    ld e, b
    jr nz, jr_02d_69c1

    db $10
    sub $08
    nop
    nop
    and [hl]
    ld b, b
    sub e
    ld h, b
    ld c, c
    or b
    and h
    ld e, b
    ld d, d
    inc l
    cp c
    ld b, $74
    inc bc
    ld a, [hl-]
    ld bc, $0000
    ret c

    rst $10
    ld a, [hl-]
    dec d
    ld d, $3d
    or $7d
    call nz, $a49f
    rst JumpTable
    ld [hl], d
    rst $28
    ld a, [$5047]
    nop
    db $fc
    inc [hl]
    ld l, $2c
    cp $6f
    cp [hl]
    ld a, a
    cp l
    ld d, a
    cp a
    db $d3
    ld a, $cd
    dec sp

jr_02d_6a4d:
    nop
    dec d
    ld b, b
    nop
    nop
    rlca
    inc bc
    ld [$100c], sp
    db $10
    ld hl, $7320
    ld a, e
    ld a, e

jr_02d_6a5d:
    ret nz

    nop
    nop
    ldh [$c0], a
    ret nc

    jr nc, jr_02d_6a5d

    ld [$0474], sp
    and d
    ld c, $c2
    ld e, $c2
    ld e, $00
    nop
    ld sp, hl
    ld b, $53
    add hl, hl
    di
    rrca
    cp a
    nop
    sbc [hl]
    ld h, b
    dec b
    or d
    rra
    ldh a, [$ef]
    ld [hl], b
    inc d
    dec b
    nop
    sbc $20
    ei
    cp a
    rst $28
    db $10
    call $d728
    jr c, jr_02d_6a4d

    ei
    ld [bc], a
    ld [hl+], a
    dec [hl]
    nop
    ld bc, $0f0f

jr_02d_6a96:
    dec sp
    ld a, [hl-]
    add hl, sp

jr_02d_6a99:
    ld a, [hl+]
    inc l
    daa
    dec sp
    ld [hl+], a
    add hl, hl
    ret nz

    nop
    ldh [$60], a
    jr nz, jr_02d_6ad5

    ldh a, [rSVBK]
    ret nc

    ret z

    cp b
    sbc b
    ld a, b
    jr c, jr_02d_6a96

    ld l, b
    ret c

    ld d, h
    ld a, [hl+]
    ret nz

    and b
    or b
    cp a
    sbc a
    ldh [$80], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, d
    xor d
    nop
    ld a, a
    rst $38
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, b
    xor d
    nop
    add b
    db $e3
    ld a, a
    add b
    rlca
    ld hl, sp-$01
    rst $38
    rst $38

jr_02d_6ad5:
    rst $38
    xor d
    xor d
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    inc hl
    nop
    inc c
    rlca
    inc bc
    inc b
    add hl, bc
    dec bc
    rrca
    dec bc
    dec e
    ld d, $27
    inc [hl]
    inc l
    jr z, jr_02d_6b15

    nop
    ld h, b
    ret nz

    add b
    ld b, b
    jr nz, jr_02d_6a99

    and b
    ldh [$50], a
    ldh a, [$d8]
    ld a, b
    xor b
    ld a, b
    nop
    dec d
    nop
    dec hl
    call nz, Call_02d_6295
    jp z, $ed31

    db $10
    db $76
    ld [$5fbf], sp
    cpl
    ld d, l
    ld d, l
    nop
    dec e

jr_02d_6b15:
    adc [hl]
    rst $10
    set 4, l
    ld [hl-], a
    sbc c
    call z, $0b00
    nop
    adc l
    add $c6
    adc [hl]
    xor [hl]
    sbc $fb
    ld a, [hl]
    ld a, [hl]
    inc bc
    ld bc, $0103
    nop
    nop
    ld l, a
    add hl, de
    dec l
    dec de
    add hl, sp
    rra
    ld d, a
    ld a, $d7
    jr c, jr_02d_6b65

    ldh a, [$dc]
    ldh [$f8], a
    nop
    inc c
    add b
    rra
    ld e, e
    ld h, b
    dec hl
    jr nc, jr_02d_6b55

jr_02d_6b46:
    inc b
    ld [$087f], sp
    ld [hl], a
    rrca
    ccf
    nop
    inc c
    add b
    ld hl, sp-$3a
    ld e, $cc
    inc e

jr_02d_6b55:
    ldh a, [rNR41]
    db $10
    cp $10
    xor $f0
    db $fc
    nop
    ld b, h
    ld bc, $fb00
    ld l, a
    sub b
    rst $38

jr_02d_6b65:
    di
    inc c
    and l
    ld d, d
    ld a, d
    ld d, $ed
    ld e, $bf
    nop
    nop
    dec a
    jp nz, $a017

    ld e, $e0
    cp a
    nop
    push hl
    jr jr_02d_6b46

    inc h
    sub $2c
    ei
    inc e
    nop
    nop
    dec [hl]
    ld hl, $617d
    rst $28
    or c
    or e
    sbc l
    cp a
    adc a
    push bc
    ld b, e
    ld a, a
    ld a, $07
    nop
    db $10
    inc b
    ld a, h
    ret z

    cp b
    xor [hl]
    adc a
    ld a, d
    sub a
    ld a, d
    rst $28
    ld a, [c]
    cp l
    add $fb
    db $fc
    nop
    ld d, l
    ld b, b
    rst $38
    ret nz

    ret nz

    ret nz

    ld b, b
    ld h, b
    ld hl, sp+$7f
    ld a, a
    ccf
    and a
    rra
    ld d, l
    ld e, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld e, l
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    ccf
    db $fc
    ld e, d
    sub l
    ret nz

    and b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    and b
    and b
    ret nz

    nop
    jr z, jr_02d_6c4b

    ld l, b
    xor h
    cp b
    sub a
    cp h
    xor a
    sbc a
    add $43
    ld a, l
    ld a, $07
    nop
    ld [$ef80], sp
    ld l, b
    jr c, jr_02d_6c54

    inc a
    ld a, [hl-]
    rst $10
    ld a, d
    ld a, [c]
    cp l
    add $fa
    ld a, h
    ld hl, sp+$00
    nop
    dec b
    ld b, b
    ld bc, $0700
    inc bc
    ld c, $0c
    db $10
    jr jr_02d_6c29

    jr nc, @+$72

    jr nz, jr_02d_6c61

    ldh [rIF], a
    rst $38
    nop
    ld a, a
    rst $38
    ld b, a
    add b
    rrca
    rst $38
    nop
    rst $38
    rst $38
    jp nz, $0001

    dec b
    ld [bc], a
    add b
    nop
    ldh [$c0], a
    or b
    ld [hl], b
    jr z, jr_02d_6c33

    ld [hl], h
    inc c
    ld c, $04
    ld b, $07
    ld e, d
    db $10
    ret nz

    or b
    and b
    add b
    add b
    pop hl

jr_02d_6c29:
    add b
    cp [hl]
    sbc [hl]
    ldh [$82], a
    db $fc
    rst $38
    rst $38
    nop
    rst $38

jr_02d_6c33:
    push de
    nop
    inc bc
    ld bc, $4501
    ld d, b
    inc bc
    dec e
    ld bc, $0507
    ld bc, $0501
    adc c
    rlca
    pop af
    rrca
    jr z, jr_02d_6c48

jr_02d_6c48:
    ld b, c
    add e
    db $fc

jr_02d_6c4b:
    ld a, [hl]
    ld a, [hl]
    ld [hl], b
    rst $38
    sub d
    sbc a
    adc [hl]
    adc a
    ld [hl], e

jr_02d_6c54:
    ld [hl], e
    inc e
    inc a
    call nc, RST_20
    ld bc, $fe83
    ld bc, $c33c
    rst $38

jr_02d_6c61:
    sub b
    rst $38
    ld sp, hl
    rst $38
    nop
    ld d, l
    rst $38
    inc bc
    nop
    jp nz, $fe01

    ld bc, $c33c
    nop
    nop
    add d
    rst $08
    ld [bc], a
    jr nz, jr_02d_6ca7

    add c
    nop
    rst $20
    inc bc
    cp $0c
    ret c

    inc l
    ldh a, [$e0]
    ld h, b
    ret nz

    ld h, b
    ret nz

    nop
    rlca
    nop
    call $f838
    db $10
    ld h, c
    jr nc, jr_02d_6d05

    ld hl, $372b
    ccf
    inc e

jr_02d_6c94:
    inc bc
    jr nz, jr_02d_6ca7

    db $fc
    xor $1f
    nop
    xor b
    ld [hl], b
    ldh a, [$f8]
    sub h
    ld hl, sp+$0b
    rst $00
    ld a, $7f
    inc bc
    dec b

jr_02d_6ca7:
    ld b, b
    ccf
    ld a, b
    rst $38
    add c
    ld a, [hl]
    ld b, h
    ld c, a
    ret


    sub b
    ld a, a
    ld h, c
    cp $cf
    ldh a, [rP1]
    rlca
    nop
    db $d3
    inc a
    xor a
    jr jr_02d_6c94

    inc c
    ld a, [hl]
    add h
    call nc, Call_02d_7cec
    ld hl, sp-$20
    rst $38
    rst $38
    nop
    xor d
    xor d
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    nop
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
    nop
    nop
    sub e
    ld l, h
    or [hl]
    ld c, c
    ld l, $d1
    inc l
    db $d3
    adc h
    ld [hl], e
    call z, Call_02d_6933
    sub [hl]
    dec hl
    call nc, $2820
    ld h, [hl]
    add $39
    sbc c
    ld [hl], h
    adc e
    ld sp, $52ce
    xor l
    sbc c
    sbc c
    and h
    ld e, e
    nop

jr_02d_6d05:
    nop
    adc h
    ld [hl], e
    ret c

    daa
    ld h, d
    sbc l
    and [hl]
    ld e, c
    call $ec32
    inc de
    ld l, c
    sub [hl]
    ld a, [hl+]
    push de
    nop
    nop
    add $39
    ld h, [hl]
    sbc c
    ld [hl], h
    adc e
    ld sp, $b3ce
    ld c, h
    sub $29
    push de
    ld a, [hl+]
    ld b, c
    cp [hl]
    nop
    dec d
    rst $38
    inc b
    ei
    dec d
    ld [$44bb], a
    xor $15
    rst $28
    cp l
    cp l
    ld [$8042], a
    inc d
    nop
    rst $38
    ld [de], a
    ld l, l
    ld b, l
    or d
    cp d
    ld b, l
    call c, $ff02
    rst $38
    ld a, h
    add e
    ld d, b
    dec b
    rst $38
    nop
    inc a
    ld a, d
    rst $00
    call $cd83
    add e
    cp c
    rst $00
    ld b, d
    nop
    ld b, h
    ld b, l
    rst $38
    nop
    add c
    ld a, [hl]
    nop
    db $10
    rst $28
    jr jr_02d_6d66

    ei
    nop
    nop
    ld d, h

jr_02d_6d66:
    ld d, l
    rst $38
    nop
    nop
    nop
    db $10
    rst $28
    jr jr_02d_6d6f

jr_02d_6d6f:
    nop
    nop
    ld d, h
    dec d
    rst $38
    nop
    nop
    inc e
    ld a, [hl-]
    rst $20
    ld a, [hl-]
    rst $20
    inc d
    nop
    nop
    ld b, c
    ld b, l
    rst $38
    nop
    ld b, d
    cp l
    ld [$00f7], sp
    inc h
    ld e, d
    cp l
    nop
    nop
    rst $38
    rst $38
    nop
    ret nz

    nop
    nop
    ld bc, $6301
    ld h, d
    ld [hl], a
    ld d, h
    ld a, a
    ld c, l
    ld l, a
    ld d, [hl]
    ld [hl], a
    ld c, d
    dec sp
    ld h, $02
    add b
    ld a, a
    ld e, $1f
    dec sp
    daa
    ld [hl], a
    ld c, d
    ld b, h
    ld a, h
    rlca
    inc b
    inc bc
    inc bc
    nop
    nop
    ret nz

    nop
    nop
    add b
    add b
    add $46
    xor $2a
    cp $b2
    or $6a
    xor $52
    call c, $0064
    inc c
    ret nz

    ld a, b
    ld hl, sp-$24
    db $e4
    ld c, [hl]
    ld a, [c]
    ld a, [hl]
    and d
    cp $3e
    ldh [rNR41], a
    nop
    nop
    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, @+$81

    ld b, b
    ld e, a
    ld h, b
    ld a, [hl+]
    add b
    ld b, h
    ld c, [hl]
    ld [hl], c
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    inc h
    dec sp
    jr jr_02d_6e10

    rlca
    rlca
    ret nz

    nop
    nop
    ldh [$e0], a
    sub b
    ld [hl], b
    adc b
    ld a, b
    add h
    ld a, h
    add d
    ld a, [hl]
    add e
    ld a, l
    ld b, a
    cp e
    ld a, [hl+]
    add b
    rra
    cpl
    rst $10
    rst $28
    rst $28
    rst $28
    rst $28
    ld e, $ee
    inc c

jr_02d_6e10:
    db $fc
    ldh a, [$f0]
    ld b, l
    nop
    nop
    xor $3b
    ld b, b
    rst $08
    ld a, d
    xor $01
    cp [hl]
    ld bc, $01f5
    ld e, e
    dec b
    nop
    sub b
    jp nz, $0ff7

    dec de
    ld a, h
    or b
    ld l, a
    ld l, b
    ret nc

    and c
    dec l
    sbc e
    ld b, h
    sub l
    ld c, b
    add h
    nop
    xor $f0
    db $db
    inc a
    rla
    jr nz, jr_02d_6e5c

    ld c, e
    add l
    inc [hl]
    inc bc
    add hl, de
    ld [c], a
    ret


    ld [hl-], a
    nop
    nop
    rst $38
    inc e
    rst $20
    ld [hl+], a
    di
    ld [hl], c
    cp a
    ret


    xor $97
    inc a
    rst $00
    rrca
    scf
    jp nz, $c00c

    inc d
    nop
    ld b, d
    add c

jr_02d_6e5c:
    and l
    ld b, d
    jp $ee3c


    ld bc, $f5bf
    ld e, e
    inc b
    ret nc

    jp z, $80ff

    rst $08
    or b
    cp c
    add $9f
    rst $30
    sub a
    sub a
    ld bc, $9f55
    ld a, a
    rst $38
    cp a
    ret nz

    ldh a, [$80]
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38

jr_02d_6e80:
    jp $ffb4


    nop
    nop
    nop
    nop
    nop
    ccf
    rst JumpTable
    ccf
    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    dec e
    ld [de], a
    ccf
    jr nz, jr_02d_6f0e

    ld c, b
    ld a, l
    ld b, d
    ld l, a
    ld d, b
    ld bc, $070c
    ld a, l
    ld h, d
    ccf
    jr nc, jr_02d_6ec3

    rra
    inc b
    ld [$080f], sp
    rrca
    nop
    nop
    add b
    ld a, [bc]
    rst $38
    nop
    rst JumpTable
    jr nz, jr_02d_6e80

    ld [hl-], a
    jp hl


    ld d, $3b
    call nz, Call_02d_609f
    nop
    nop
    push de
    ld e, a
    nop
    jr nz, jr_02d_6ef3

    ld d, $c4

jr_02d_6ec3:
    ld h, b
    ret nz

    nop
    dec de
    dec [hl]
    ld l, $7e
    ld a, a
    db $dd
    or a
    ld [hl], a
    ld a, e
    ei
    cp [hl]
    xor [hl]
    rst $38
    jp c, $00df

    nop
    ld a, e
    xor a
    jp hl


    ccf
    db $fd
    ld a, [de]
    rst $20
    jr nc, @-$1c

    ld b, h
    call nc, $ff6e
    ld a, [hl-]
    ld a, a
    ld bc, $00c0
    db $ec
    sub $be
    call $fbfb
    ld a, a
    ld a, [hl]
    cp [hl]
    cp l

jr_02d_6ef3:
    rst $28
    push hl
    rst $38
    or a
    rst $38
    nop
    nop
    rra
    db $fd
    ld e, a
    or h
    ld [$771c], a
    inc c
    ld e, e
    ld h, $65
    ld a, $db
    ld a, h
    cp [hl]
    ret nz

    ld bc, $1140
    rst $38

jr_02d_6f0e:
    ld bc, $4f37
    call Call_02d_7119
    ld sp, hl
    xor d
    dec e
    jp hl


    ld e, $5d
    ld e, $60
    nop
    ld b, h
    xor d
    and e
    xor b
    sub b
    jr z, @-$37

    xor h
    ld [hl], b
    ret c

    ccf
    rst $08
    ccf
    jp nz, $003d

    dec d
    rst $38
    jr jr_02d_6f98

    ld [hl-], a
    call $3b45
    dec de
    rst $20
    ld h, $1f
    inc a
    ld hl, sp+$7a
    nop
    inc d
    ld hl, sp-$02
    add b
    ei
    ldh [$d7], a
    cp b
    ld [$8e98], a
    ld sp, hl
    or a
    ld [hl], l
    db $db
    ld a, h
    dec b
    ld d, b
    ld [$02ec], sp
    ld a, [hl-]
    ld b, h
    call nc, $e070
    or h
    ld a, [$5c04]
    ld [bc], a
    add d
    sbc $ff
    sub a
    ld hl, sp-$70
    rst $28
    sbc a
    add b
    adc b
    nop
    ld bc, $ffd5
    rst $28
    sbc a
    cp a
    add b
    add b
    ret nz

    ret nz

    cp a
    ldh [$7f], a
    ld b, c
    inc b
    ccf
    rst JumpTable
    ld e, a
    cp a
    ld e, a
    cp a
    rst JumpTable
    sbc a
    ld a, a
    sbc a
    ld a, a
    ret nc

    rst $28
    ldh a, [rP1]
    inc d
    rst $38
    ei
    rlca
    dec e
    cp $37
    db $ec
    ld [hl], a
    call z, $de65
    ld c, h
    ld [hl], d
    reti


    rst $20
    db $10
    ld b, b
    rra

jr_02d_6f98:
    rst $30
    ld hl, sp-$18
    inc [hl]
    rrca
    or $0f
    and $0d
    ei
    dec e
    di
    pop af
    rst $38
    ld bc, $4040
    db $ec
    inc bc
    cp [hl]
    inc c
    pop de
    jr nc, @-$7e

    add a
    sbc [hl]
    ld b, c
    or $89
    db $fc
    add e
    jr nz, jr_02d_6fba

    ld a, e

jr_02d_6fba:
    ld a, [hl]
    ldh [rNR10], a
    rst $28
    inc e
    ld c, a
    and d
    dec bc
    add [hl]
    inc de
    rrca
    ld h, a
    sbc l
    adc l
    ret nz

    nop
    dec sp
    and l
    ld a, $39
    rra
    adc e
    rrca
    dec de
    rra
    rst $38
    rst $38
    ld a, [$fb87]
    xor a
    ld d, c
    ld b, b
    add a
    ld a, [$fbfb]
    xor a
    ei
    ld a, [$affb]
    add e
    rst $38
    rst $38
    rst $38
    ld [bc], a
    add b
    rst $10
    db $dd
    call c, Call_02d_7ca4
    sbc [hl]
    cp $f5
    push af
    sbc a
    db $fd
    scf
    db $fd
    rst $08
    rst $38
    db $10
    ld d, b
    db $fd
    cpl
    reti


    adc e
    rst $38
    ld sp, hl
    adc a
    rst $38
    rlca
    rst $38
    add [hl]
    cp $fc
    db $fc
    dec b
    nop
    add b
    db $ed
    ld [hl-], a
    db $e3
    ld b, h
    rst $00
    rst $20
    cp h
    jp $ff43


    cp [hl]
    ld a, a
    ld e, a
    nop
    ld bc, $f040
    swap h
    xor e
    ld [hl], h
    xor a
    ld [hl], b
    ld e, a
    cp $f4
    ld hl, sp+$14
    ld hl, sp-$0e
    inc e
    ld bc, $3f41
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    xor d
    ld a, a
    adc $4f
    cpl
    rra
    inc l
    rra
    ld e, b
    nop
    inc d
    rst $38
    rst JumpTable
    ld h, $cd
    inc sp
    db $e3
    ld de, $8379
    dec de
    rst $20
    cp $00
    ld a, l
    add b
    ret nz

    nop
    nop
    ld [bc], a
    ld bc, $0e11
    cpl
    db $10
    ld a, [de]
    ld hl, $201f
    ld d, l
    jr nz, jr_02d_7097

    ld b, h
    ld bc, $3f40
    db $76
    add hl, bc
    db $fd
    rrca
    cp a
    ld l, a
    cp $f8
    or [hl]
    ld sp, hl
    ld l, l
    ldh a, [$e2]
    ld a, c
    ld a, [bc]
    xor b
    sbc [hl]
    rst $38
    rst $38
    add b
    rst $38
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    add b
    rst $38
    ld [bc], a
    xor d
    ld d, l
    ld b, a
    adc a
    ld hl, sp-$03
    adc l
    ret c

    xor d
    adc b
    adc b
    adc b
    adc b
    ld bc, $ff54
    xor h
    jp $c1be


    sbc h
    db $e3
    add c
    pop bc
    ld b, e
    ld a, h

jr_02d_7097:
    jp $c0fc


    ld d, l
    rst $38
    cp e
    rst $00
    db $ed
    add e
    ld a, l
    add e
    ld bc, $8701
    ld a, c
    nop
    nop
    cp b
    ret nz

    add e
    ldh a, [$f7]
    ld [hl], b
    sub l
    jp z, $848b

    sub [hl]
    adc l
    rst $20
    ld e, a
    rst $38
    dec sp
    ld b, b
    ld d, b
    rst $38
    ld l, c
    jp z, $dd7f

    ld [hl], e
    dec sp
    rst $30
    scf
    ld [hl], $6d
    cp $df
    ldh [$e7], a
    nop
    rst $38
    add b
    add b
    ld [hl], b
    ld a, a
    ld e, a
    db $76
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], l
    dec sp
    nop
    rst $38
    ld e, a
    ld [hl], b
    add b
    inc b
    rlca
    dec b
    ld b, $05
    ld b, $07
    inc bc
    ld d, b
    ld [$7eff], sp
    db $fc
    jp Jump_02d_7867


    ret nz

    ld e, a
    ldh [$ca], a
    ld a, l
    scf
    ld a, a
    nop
    ld bc, $fe06
    ld h, h
    cp [hl]
    ld [hl], $df
    sbc a
    xor $75
    ld c, $1f
    cp [hl]
    ld b, e
    db $fd
    nop
    ld b, b
    inc b
    nop
    rst $38
    sbc e
    ld h, h
    rrca
    sub b
    dec c
    ld a, [c]
    ret z

    dec b
    ld a, b
    add a
    db $fc
    rst $20
    jr jr_02d_711a

    inc d
    nop
    db $fc
    rrca

Call_02d_7119:
    dec sp

jr_02d_711a:
    ld b, a
    rst $08
    ld a, d
    xor $01
    cp a
    push af
    ld e, e
    inc b
    dec b
    inc d
    nop
    ld hl, $c3fe
    db $fc
    rst $08
    ld a, d
    xor $01
    cp a
    push af
    ld e, e
    inc b
    ld b, b
    ld bc, $f100
    rst JumpTable
    inc a
    db $e3
    ld h, [hl]
    cp a
    rst JumpTable
    db $e3
    cp a
    xor $fe
    ld sp, $c738
    ld b, l
    inc d
    nop
    xor $3b
    ld b, b
    rst $08
    ld a, d
    xor $01
    cp a
    push af
    ld e, e
    inc b
    nop
    nop
    ret c

    ld h, [hl]
    sub l
    ld [c], a
    pop de
    ld l, [hl]
    ld [$6c71], a

jr_02d_715c:
    ldh a, [$d7]
    jr c, jr_02d_715c

    rra
    ld c, a
    inc sp
    ld a, b
    dec hl
    rst $38
    add b
    sub l
    db $fd
    sub a
    db $fc
    sub a
    sbc a
    add b
    xor d
    xor d
    ld d, l
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    db $fc
    nop
    nop
    inc bc
    inc bc
    ld bc, $3901
    add hl, sp
    rla
    rra
    add hl, de
    rra
    ret nz

    nop
    rrca
    ld [bc], a
    inc bc
    add hl, de
    add hl, de
    dec c
    dec c
    adc d
    adc a
    sbc d
    sbc a
    ld d, h
    db $db
    scf
    ld hl, sp-$40
    nop
    add b
    ldh [$e0], a
    ld a, [de]
    ld a, [$bb4b]
    ld l, l
    sbc a
    ld h, c
    sbc a
    db $f4
    dec bc
    rst $38
    rrca
    rst $38
    ret nz

    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ld bc, $7040
    ld a, [bc]
    dec c
    dec de
    inc e
    ld d, l
    ld e, d
    ld a, a
    ld e, a
    ld l, a
    ret nc

    cp a
    ret nz

    cp a
    ret nz

    ld d, b

Jump_02d_71c3:
    nop
    ld hl, sp-$49
    ld [hl], a
    ld l, d
    db $fd
    or h
    ld l, a
    ld a, [$da27]
    daa
    rst $38
    inc bc
    db $fd
    inc bc
    add d
    nop
    db $f4
    rrca
    ei
    ld b, $ea
    scf
    ccf
    ld l, $fd
    dec hl
    db $fc
    ld a, e
    db $e4
    ld e, a
    ldh [$c0], a
    nop
    ret nz

    ld h, b
    ldh [$b4], a
    ld [hl], h
    or $36
    jp c, $f23e

    rra
    push af
    dec bc
    db $fd
    inc bc
    dec b
    nop
    cp a
    xor a
    ret nc

    call $a0f2
    xor [hl]
    sbc d
    sbc e
    jp Jump_02d_71c3


    ld [hl], c
    ld e, $1e
    ld bc, $ff54
    db $fd
    inc bc
    reti


    daa
    pop de
    cpl
    dec b
    add a
    sub [hl]
    db $fc
    ld a, l
    ld a, a
    ld bc, $ff55
    ld e, a
    ldh [$5f], a
    ldh [rKEY1], a
    ld a, [c]
    ld b, b
    ld h, c
    add hl, hl
    ld e, l
    ld a, a
    ld d, l
    ld d, l
    nop
    ld [$4011], sp
    ld [bc], a
    adc b
    ld [hl+], a
    inc b
    ld b, b
    ld d, l
    ld d, h
    add b
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    nop
    nop
    rst $38
    ld [bc], a
    ld a, b
    rst $38
    or $09
    reti


    ld l, a
    xor a
    ld a, a
    ccf
    ccf
    ld a, a
    cp a
    ld a, a
    ret nc

    dec b
    rst $38
    add b
    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$bf], a
    cp a
    nop
    ld d, h
    rst $38
    ld d, l
    xor d
    ld d, l
    adc b
    ld d, a
    adc d
    ld a, l
    xor a
    ld e, b
    adc l
    rst JumpTable
    ld hl, sp+$70
    ldh a, [rP1]
    nop
    inc c
    ld c, $1f
    inc de
    dec de
    ld d, $55
    cp $bf
    db $fc
    db $fd
    and [hl]
    ret nz

    nop
    ld bc, $7332
    ld a, e
    ld c, [hl]
    cp l
    add $fd
    ld d, [hl]
    or a
    ld a, a
    or [hl]
    ld a, a
    db $fc
    rst JumpTable
    ret nz

    nop
    ret nz

    and [hl]
    ld l, a
    rst $28
    add hl, sp
    ld e, a
    or c
    db $ed
    or e
    cp [hl]
    db $eb
    rst $38
    cp $7b
    and $c0
    nop
    nop
    jr jr_02d_72d4

    inc a
    ld h, h
    ld a, h
    call nz, $c4fc
    xor $5f
    rst JumpTable
    ld a, c
    sbc a
    ld h, l
    add h
    nop
    cp $a3
    cp e
    rst $28
    ld h, l
    or $bd
    cp l
    rst JumpTable
    sbc [hl]
    rst $30
    and a
    ei
    ld l, c
    rst $38
    dec b
    ld [hl], l
    rst $38
    db $ec
    sbc a
    push hl
    cp a
    sub a
    ld e, a
    ld a, a
    ld [hl], a
    db $e3
    inc b
    dec d
    rst $38
    ld [hl], e
    rst $08
    ld l, d
    rst JumpTable
    db $d3
    rst $30
    cp $fe
    db $fd
    db $fd
    adc $87

jr_02d_72d4:
    ld bc, $fd40
    ld a, l
    rst $00
    cp l
    rst $10
    and [hl]
    rst $38
    ld l, a
    ld a, e
    ld a, c
    rst $08
    call $d6bf
    cp a
    ld d, b
    nop
    cp a
    and h
    xor [hl]
    cp d
    cp e
    sbc d
    sbc e
    set 1, e
    ld h, c
    ld h, c
    jr c, jr_02d_732c

    ld c, $0e
    dec b
    nop
    db $fd
    or e
    rst JumpTable
    sbc e

Call_02d_72fc:
    xor $8e
    and [hl]
    and h
    rst $38
    push af
    rst $38
    ld l, a
    ld a, a
    ccf
    ccf
    dec b
    nop
    rst $28
    adc l
    ei
    db $db
    ld [hl], l
    ld sp, $6555
    rst JumpTable
    ld c, a
    rst $38
    ld h, [hl]
    cp $fc
    db $fc
    ld d, b
    nop
    db $fd
    dec h
    ld [hl], l
    ld e, l
    db $dd
    ld e, c
    reti


    db $d3
    db $d3
    add [hl]
    add [hl]
    inc e
    inc e
    ld [hl], b
    ld [hl], b
    nop
    nop
    db $eb

jr_02d_732c:
    ld b, $37
    ld c, [hl]
    call z, Call_02d_7c0a
    ld [$0ce7], sp
    cp e
    rlca
    db $fc
    inc bc
    ld e, a
    nop
    ld d, b
    nop
    ld a, a
    cp a
    and b
    cp e
    ld h, b
    pop af
    ld h, b
    ld d, c
    ldh [$cf], a
    ldh a, [rSVBK]
    rst $38
    rst $08
    ccf
    ld d, b
    inc b
    rst $38
    add sp, $08
    call z, $cc3f
    ccf
    add $3f
    add a
    ld a, a
    inc e
    db $e3
    db $fc
    db $10
    db $10
    ld hl, sp-$12
    ldh a, [$67]
    ld d, e
    db $fc
    ld [de], a
    db $fc
    ld [hl+], a
    db $fd
    rst $00
    dec e
    ldh [$f7], a
    nop
    jr nc, jr_02d_736f

jr_02d_736f:
    inc bc
    ld bc, $0500
    ld b, $0e
    rra
    scf
    jr c, jr_02d_73a7

    ld [hl], c
    ld e, [hl]
    ld h, c
    ld e, [hl]
    pop hl
    nop
    ld a, [hl+]
    ccf
    rst $38
    rst $38
    cp l
    jp $1ee1


    adc a
    ld [hl], b
    rra
    ldh [$c0], a
    ret nz

    ret nz

    nop
    xor d
    cp $ff
    rst $38
    sbc $e1
    add e
    ld a, h
    ld hl, sp+$07
    ld bc, $0101
    ld bc, $00c0
    add b
    ldh [$e0], a
    ret nc

    jr c, @-$42

    ld a, h
    db $76

jr_02d_73a7:
    adc [hl]
    ld a, d
    add [hl]
    ccf
    jp $c33d


    dec b
    ld [$9ef0], sp
    pop hl
    sbc a
    ldh [$8f], a
    rst $08
    push bc
    ld a, [$fe51]
    rst $38
    or d
    rst $38
    jr z, jr_02d_7410

    nop
    inc e
    db $e3
    rst $38
    rst $38
    and $19
    rst $38
    rst $38
    cp e
    ld b, h
    inc de
    db $ec
    nop
    nop
    db $fc
    inc bc
    ld [hl], b
    adc a
    nop
    rst $38
    dec de
    db $e4
    ccf
    ret nz

    ei
    inc b
    ld sp, hl
    ld b, $b0
    ld c, a
    nop
    inc d
    ld a, a
    ld a, l
    add e
    ld a, c
    add a
    ld sp, hl
    rlca
    db $db
    daa
    db $d3
    cpl
    adc d
    adc a
    dec c
    rst $38
    ld d, h
    ld b, b
    rst $38
    sbc d
    adc [hl]
    jp $7f51


    ldh a, [$b8]
    cp a
    adc h
    adc a
    rst $08
    rst $08
    dec d
    ld d, l
    rst $38
    ld bc, $10fe
    db $10
    ld hl, sp+$0f
    nop
    add b
    db $e3
    dec d
    ld d, l
    rst $38
    add b
    ld a, a

jr_02d_7410:
    ld [bc], a

Jump_02d_7411:
    ld b, d
    rst $20
    cp h
    nop
    inc b
    adc a
    ld d, b
    nop
    rst $38
    ld bc, $0b07
    db $fc
    dec a
    cp $ee
    pop af
    ld e, [hl]
    pop hl
    db $fc
    jp $c3bc


    ld h, b
    nop
    jr c, @-$31

    ld d, b
    pop hl
    jr nc, jr_02d_74a6

    ld hl, $37eb
    cp a
    inc e
    push af
    nop
    ld e, e

jr_02d_7438:
    inc b
    ld b, b
    ld [bc], a
    ld a, a
    adc a
    db $fc
    inc bc
    xor b
    ld [hl], b
    ldh a, [$f8]
    sub h
    ld hl, sp+$0b
    db $fc
    rst $00
    ld a, $03
    dec b
    ld b, b
    ccf
    ld a, b
    rst $38
    ld bc, $44fe
    ld c, a
    ret


    sub b
    ld a, a
    ld h, c
    cp $cf
    ldh a, [rP1]
    nop
    jp nc, $af3c

    jr jr_02d_7438

    inc c
    ld a, [hl]
    add h
    sub $ed
    ld a, a
    ld hl, sp-$0b
    nop
    ld e, e
    inc b
    nop
    jp hl


    and $1a
    add hl, de
    db $e4
    dec b
    dec de
    ld [c], a
    nop
    ld a, [bc]
    ld a, [c]
    adc l
    ld [hl], c
    ld b, l
    add hl, sp
    and l
    sbc c
    nop
    ld a, a
    ld a, a
    ldh [$e0], a
    rst $08
    ret nz

    sub b
    adc a
    ld [bc], a
    and b
    sbc a
    and e
    sbc h
    and [hl]
    sbc b
    cpl
    rst $38
    db $10
    rst $38
    nop
    nop
    ld [hl+], a
    inc b
    ei
    ld b, b
    cp a
    db $e3
    ld c, b
    add hl, hl
    inc h

jr_02d_749d:
    ld [hl+], a
    nop
    ld a, a
    ld b, e
    daa
    ld b, $2a
    nop
    ld e, l

jr_02d_74a6:
    nop
    ld [$282b], sp
    rst $38
    nop
    jr c, jr_02d_749d

    ld b, h
    rst $00
    add d
    xor a
    add $cb
    db $10
    cp [hl]
    or e
    sbc $21
    pop bc
    cp $e0
    rst $38
    add b
    ld hl, $ffd0
    add sp, -$21
    or $cf
    db $db

jr_02d_74c6:
    db $10
    rst $20
    adc $f1
    ccf
    ld [$09f7], sp
    rst $30
    nop
    ld a, [bc]
    or $fd
    inc b
    adc e
    ld a, d
    adc e
    ld a, c
    add hl, bc
    adc e
    ld a, b
    jp $21fc


    pop bc
    cp $61
    jr nz, jr_02d_74c6

    db $fc
    and c
    di
    db $fc
    dec sp
    db $fc
    dec bc
    nop
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp-$02
    ld bc, $00fd
    inc bc
    ld a, a
    add b
    rst $38
    nop
    ld hl, sp+$1f
    call z, $3f03
    add $3f
    rst $00
    ccf
    jp $2d41


    nop
    inc b
    ei
    add h
    ei
    ld b, h
    ld a, e
    cp a
    jr nz, jr_02d_750f

jr_02d_750f:
    ret nc

    ld e, a
    ret nc

    sbc a
    ret nc

    rra
    rlca
    rst $38
    nop
    dec e
    cp $77
    ld hl, sp+$5f
    ldh [$fb], a
    ret nz

    nop
    cp a
    ret nz

    xor $91
    rst $38
    add b
    jp $00ff


    and l
    ld a, [hl]
    rst $38

jr_02d_752d:
    jr @+$81

    add b
    db $fd
    nop
    ld [bc], a
    rst JumpTable
    nop
    ei
    inc b

jr_02d_7537:
    rst $38
    nop
    ld hl, $40f7
    ld [$f927], sp
    ld b, $89
    db $76
    push bc
    ld a, [hl-]
    jr nz, jr_02d_752d

    jr jr_02d_7575

    db $fc
    ld [bc], a
    ld a, [$f404]
    inc a
    ld [$41f0], sp
    dec h
    add hl, hl
    dec l
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0e11
    cpl
    db $10
    rra
    jr nz, @-$7e

    ld hl, $205f
    ccf
    ld b, b
    nop
    ld [hl+], a
    nop
    ld b, b
    ld a, a
    ld b, e
    rst $38
    nop
    ld a, [hl+]
    nop
    ld e, l
    nop
    ld h, h
    ld [$0f8b], sp

jr_02d_7575:
    dec e
    and l
    sbc c
    ld hl, $89b5
    ret z

    ld h, l
    ld hl, $91ad
    inc hl
    cp e
    sub $fb
    db $10
    sub [hl]
    db $db
    or [hl]
    ld hl, $bfd2
    push af
    ld e, [hl]
    nop
    ei
    inc a
    rst $38
    nop
    pop bc
    cp $c0
    rst $38
    add b
    and c
    ldh [$7f], a
    ld a, b
    ccf
    cp a
    rra
    rra
    nop
    ldh [$f8], a
    rlca
    ldh [$1f], a
    nop
    rst $38
    jr nz, jr_02d_7537

    ld a, [hl-]
    rst $38
    rlca
    rst $38
    jr nz, jr_02d_75dc

    ld sp, $1a47
    ld hl, sp+$40
    cp a
    dec l
    ld hl, $4fe0
    xor a
    ld [bc], a
    rra
    ld a, a
    ccf
    db $fc
    ld a, a
    ld [hl], b
    ld c, e
    db $e3
    add hl, de
    db $fc
    rst $00
    ld hl, sp+$21
    ld d, d
    rst $38
    inc c
    ld e, e
    ld c, c
    ld b, b
    ld b, e
    rst $00
    jr c, jr_02d_75f6

    rst JumpTable

jr_02d_75d3:
    db $10
    ld [hl-], a
    inc b
    rrca
    rrca
    ld hl, sp+$08
    rst $38
    and c

jr_02d_75dc:
    rst $38
    cp l
    nop
    ret nz

    rst JumpTable
    ldh [$ef], a
    ldh a, [$7f]
    ldh [$5b], a
    nop
    ldh [$7f], a
    ret nz

    cp a
    ret nz

    xor $80
    rst $38
    db $10
    add b
    xor [hl]
    pop de
    daa
    db $db

jr_02d_75f6:
    ldh [$67], a
    ld hl, sp+$00
    jr nc, @+$01

    inc e
    rst $38
    rlca
    rst $38
    rst $28
    nop
    nop
    db $fd
    nop
    cp a
    nop
    ld [c], a
    dec e
    add c
    ld a, [hl]
    jr nz, jr_02d_7649

    rst $38

jr_02d_760e:
    jr nz, jr_02d_75d3

    rst $38
    nop
    nop
    ld b, d
    dec bc
    add c
    and l
    ld b, d
    jp $002c


    pop bc
    jr nz, jr_02d_760e

    ld [hl-], a
    ld h, l
    rst $00
    nop
    rst $38
    ld bc, $fb07
    ld b, $fb
    ld h, $fb
    nop
    or $19
    cp l

jr_02d_762e:
    ld e, [hl]
    sbc l
    ld h, [hl]
    add a
    ld a, l
    nop
    rst $38
    add b
    add sp, -$29
    ld l, b
    rst $10
    ld l, h
    rst $10
    nop
    ld l, a
    sbc b
    cp h
    ld a, e
    cp b
    ld h, a
    ldh [$bf], a
    nop
    rst $00
    cp b
    ld b, b

jr_02d_7649:
    rst $38
    ld a, a
    rst $38
    jr nz, jr_02d_762e

    nop
    ld e, a
    ret c

    xor a
    add h
    rst $38
    add b
    rst $38
    rst $38
    ld d, b
    nop
    nop
    jr jr_02d_75dc

    nop
    ld [$c040], sp
    ret nz

    ld b, b
    nop
    ldh [$60], a
    adc b
    ld a, a
    ld a, [bc]
    rst $38
    ld [$00ff], sp
    rrca
    rst $38
    ld a, [de]
    db $fd
    ld [hl], h
    ei
    pop af
    rst $38
    nop
    ld e, b
    cp a
    ld c, c
    cp $08
    rst $38
    jr z, @+$01

    nop
    jr @+$01

    ld hl, sp-$01
    sbc $3f
    dec de
    rst $38
    nop
    ld d, $f9

Jump_02d_7689:
    rrca
    rrca
    db $10
    rra
    ld [hl], $3f
    nop
    ld c, a
    ld a, c
    ld c, a
    ld a, c
    db $76
    ld a, a
    ld sp, $003f
    ld a, d
    ld c, a
    ld [$9c08], sp
    sub h
    db $fc
    db $e4
    nop
    inc a
    db $ec
    ld a, b
    ld hl, sp-$7c
    db $fc
    or [hl]
    cp $00
    ld a, c
    rst $08
    rst $38
    ld a, a
    ret c

    cp b
    push af
    adc a
    nop
    xor a
    sbc $d6
    rst $28
    ld a, [$a2ff]
    and e
    nop
    ld [c], a
    db $e3
    db $fd
    cp $fe
    inc hl
    rst $38
    db $fd
    nop
    rrca
    rst $38
    rst $30
    dec c
    cp a
    ld b, a
    rst $28
    dec b
    ld [hl+], a
    rst $28
    rla
    ld l, h
    ld [$007f], sp
    ld d, l
    ld bc, $6308
    inc a
    nop
    ld b, c
    add hl, bc
    ld [$1000], sp
    rrca
    nop
    ld b, b
    nop
    jr z, jr_02d_76f1

    rlca
    nop
    inc d
    rrca
    ld hl, sp-$01
    rst $38
    inc bc
    ld c, $f7
    ld b, b

jr_02d_76f1:
    inc c
    ld bc, $fc08
    rrca
    sbc h
    ld [hl], e
    or e
    ld l, l
    ld bc, $7da3
    rst $38
    ret nz

    ld [hl], b
    rst $28
    jr nc, @+$03

    ld [$3f00], sp
    ldh a, [$38]
    rst $08
    call z, $c4b7
    cp a
    nop
    ld hl, $05de
    ld a, [$f807]
    sub [hl]

jr_02d_7715:
    ld l, c
    nop
    rst JumpTable
    jr nz, jr_02d_7715

    inc b
    or c
    ld c, [hl]
    sbc b
    ld h, a
    nop
    ret nc

    ld [hl], b
    xor b
    ld a, b
    db $ec
    inc a
    ld b, d
    cp [hl]
    nop
    ld [hl+], a
    sbc $06
    rst $38
    add c
    ld a, a
    adc c
    ld a, a
    nop
    xor $00
    dec sp
    ld b, b
    rst $08
    nop
    ld a, d
    nop
    nop
    xor $01
    cp a
    nop
    ret c

    ccf
    cp b
    ld a, a
    nop
    ld de, $10fe
    rst $38
    jr nc, @+$01

    ldh a, [rIE]
    nop
    db $10
    rst $38
    add sp, $1f
    rst $30
    rrca
    db $fc
    inc bc
    nop
    cp $9f
    ld h, c
    ld a, a
    ld l, l
    ld a, a
    sbc [hl]
    di
    nop
    sbc [hl]
    di
    db $ed
    rst $38
    ld h, c
    ld a, a
    ccf
    ccf
    nop
    ld a, c
    rst $08
    or a
    rst $38
    add [hl]
    cp $7e
    ld a, [$7f00]
    pop af
    cp $ce
    db $fc
    db $e4
    jr c, jr_02d_77b1

    add b
    di
    db $10
    and c
    and e
    ldh a, [$f0]
    cp a
    cp a
    jp nc, $d224

    ld a, a
    sbc a
    ld [$05bf], sp
    rst $30
    ld [$ff15], sp
    ld bc, $fb07
    db $fd
    cp $4b
    db $fd
    cp $6e
    add hl, de
    add b
    rst $38
    nop
    ld c, l
    ld [hl], a
    nop
    call c, $fb02
    nop
    ld e, [hl]
    ld [bc], a
    nop
    ld [hl], a
    add b
    cp e
    rlca
    db $f4
    rst $38
    ld [$80e0], sp
    call nc, $8409

jr_02d_77b1:
    rst $38
    ret z

    rst $38
    ld [hl], b
    ld a, a
    ld sp, hl
    nop
    rst $38
    sbc a
    sbc a
    call z, $1bcc
    db $e4
    ld de, $ee08
    ld bc, $00fe
    dec d
    jr @-$3a

    rst $38
    cp $00
    rst $38
    sbc b
    ld h, a
    adc b
    ld [hl], a
    nop
    rst $38
    nop
    jr nz, @+$01

    ld bc, $08d1
    add hl, de
    rst $38
    ccf
    rst $38
    rlca
    add b
    add hl, bc
    ld [$ff21], sp
    inc de
    rst $38
    ld c, $fe
    sbc a
    inc b
    rst $38
    ld sp, hl
    ld sp, hl

jr_02d_77eb:
    ld [hl], e
    ld [hl], e

jr_02d_77ed:
    ld a, [de]
    ld [$f803], sp
    nop
    inc c

jr_02d_77f3:
    ldh a, [rNR10]
    pop hl
    jr nz, jr_02d_77eb

    ld b, b
    ei
    ret nz

    ld bc, $0f08
    ld [$dfc0], sp
    jr nc, @+$01

jr_02d_7803:
    ld [$0077], sp
    inc b
    and e
    ld c, $c3
    ld e, $c3
    ld e, $f9
    nop
    ld b, $53
    add hl, hl
    di
    rrca
    cp a
    nop
    sbc [hl]
    nop
    ld h, b
    dec b
    or d
    rra
    ldh a, [$ef]

jr_02d_781e:
    ld [hl], b
    sbc $00
    jr nz, jr_02d_781e

    nop
    cp a
    nop
    rst $28
    db $10
    call $2802
    rst $10
    jr c, jr_02d_77ed

    nop
    ei
    sbc [hl]
    ld [$0003], sp
    inc bc
    inc [hl]
    scf
    ld c, b
    ld a, a
    ld c, l
    ld a, a
    rst $20
    inc b
    rst $38
    sbc l
    ld a, [$f59a]
    ld e, e
    ld [de], a
    ld e, b
    ret c

    nop
    inc h
    db $fc
    ld h, h
    db $fc
    call z, Call_02d_72fc
    cp [hl]
    jr nc, jr_02d_7803

    ld e, [hl]
    rst $38
    ld bc, $0f53
    nop
    ld c, l
    ei
    ld h, b
    ei
    jr nc, jr_02d_785d

jr_02d_785d:
    rst $38
    rra
    rst $30
    inc c
    rst $28
    jr jr_02d_77f3

    ld a, b

jr_02d_7865:
    nop
    add a

Jump_02d_7867:
jr_02d_7867:
    ld a, a
    ldh [$1f], a
    rst $00

jr_02d_786b:
    ld e, $cf
    inc e
    nop
    rst $38
    ld hl, sp-$11
    jr nc, jr_02d_786b

    jr jr_02d_7867

    ld e, $00
    pop hl
    cp $07
    ld hl, sp-$05
    nop
    ld l, a
    sub b
    nop
    rst $38
    nop
    di
    inc c
    and l
    ld d, d

Call_02d_7887:
    ld a, d
    ld d, $00
    db $ed
    ld e, $bf
    nop
    dec a
    jp nz, $a017

    nop
    ld e, $e0
    cp a
    nop
    push hl
    jr jr_02d_7865

    inc h
    nop
    sub $2c
    ei
    inc e
    db $dd
    ld a, [$7f6f]
    add b
    add l
    ld a, [bc]
    adc a
    rst $38
    sub c
    ld a, a
    ld h, e
    ld a, $3e
    nop
    nop
    nop
    db $76
    cp [hl]
    db $ec
    db $fc
    ld a, $fe
    nop
    cp $e2
    cp $12
    db $fc
    adc h
    ld hl, sp-$08
    add b
    xor a
    nop
    ld b, h
    ld e, $1e
    ccf
    ld hl, $407f
    di
    nop
    adc h
    call $bab3
    add $7c
    ld a, h
    nop
    nop
    nop
    ld a, b
    ld a, b
    db $fc
    add h
    cp $02
    rst $08
    inc c
    ld sp, $cdb3
    ld e, l
    ld [hl], c
    ld [$ff00], sp
    add b
    ld h, h
    db $db
    ld a, a
    db $e3
    ccf
    rst $38
    ld [bc], a
    rst $38
    sbc a
    rst JumpTable
    rst $38
    cp a
    ld a, a
    ld hl, $00ff
    nop
    call nz, $e7bb

jr_02d_78fb:
    db $db
    rst $30
    call z, $18fe
    db $fd
    db $fc
    ei
    ld hl, $0445
    ld hl, sp+$08
    ld hl, $00f0

jr_02d_790b:
    and c
    ret nz

    ld b, b
    add b
    nop
    ccf
    ld [hl-], a
    ld [$61f7], sp
    daa
    add b
    ld a, a
    ld hl, $4e81
    ld a, a
    daa
    inc b
    ei
    ld h, c
    daa
    ld e, d
    rst $38
    nop
    add b
    rst $38
    rst $38
    ld h, b
    ld [hl], b
    cp a
    jr nc, jr_02d_790b

    nop
    ccf
    rst JumpTable
    rst $38
    ld bc, $7e81
    adc c
    ld a, [hl]
    ld b, h
    add h
    ccf
    jr nz, jr_02d_78fb

    ld a, [hl]
    ld b, c
    cp $df
    ld [bc], a
    pop hl
    adc a
    rst $30
    call c, $ffef
    cpl
    rst $38
    nop
    ld hl, $fe21
    ld [hl+], a
    rst $38
    db $fc
    ld e, a
    inc a
    db $10
    sbc a
    ld a, [hl]
    ccf
    inc l
    rst $38
    di
    db $fc
    inc b
    nop
    rrca
    db $fc
    rlca
    db $fc
    rst $20
    ld a, [$aee7]
    nop
    ld [hl], e
    ld a, l
    di
    or $f9
    rst $38
    ldh a, [$b8]
    inc b
    rst $30
    ret c

    rst $30
    add sp, -$09
    daa
    or b
    rst $38
    nop
    ret nc

    rst $38
    ldh [rIE], a
    rst $38
    rrca
    dec c
    rst $38
    db $10
    dec bc
    rst $38
    rlca
    ld b, a
    dec e
    rst $28
    dec de
    rst $28
    inc bc
    rla
    rst $28
    rst $38
    nop
    inc b
    ei
    ld h, c
    daa
    inc sp
    add b
    ld a, a
    ld h, c
    jr c, jr_02d_7995

jr_02d_7995:
    nop
    inc hl
    inc h
    dec c
    cp a
    nop
    db $db
    jr nz, jr_02d_79d4

    ld b, a
    sub b
    ld hl, $bb22
    sub h
    add l
    sub b
    cp [hl]
    sub c
    ld b, a
    ld a, a
    nop
    ld h, b
    ret nz

    rst $00
    adc a
    adc e
    sbc h
    or [hl]
    sbc b
    add d
    ld [hl], a

jr_02d_79b5:
    cp [hl]
    sub b
    rst $38
    nop
    rst $28
    ld hl, $0010
    rst $38
    inc bc
    cp l
    ld b, $fa
    inc c
    db $fc
    add hl, bc
    ld [bc], a
    db $fd
    add hl, bc
    rst $38
    ld a, a
    ld a, a
    rst $38
    jr nz, @+$41

    nop
    ccf
    cp [hl]
    ccf
    ld l, a
    ccf

jr_02d_79d4:
    ld l, e
    ld [hl], c
    or $04
    rst $08
    rst $38
    db $fc
    cp $fd
    cpl
    db $fc
    db $fc
    nop
    db $fd
    db $fc
    db $ed
    call c, $fcbe
    ei
    rlca
    ld [bc], a
    cp $02
    db $fc
    inc b
    ld hl, sp+$00
    ld hl, $04e0
    jr nz, jr_02d_79b5

    ld b, b
    add b
    nop
    ld hl, $03fd
    ld bc, $ff06
    ei
    db $fc
    nop
    nop
    rst $38
    and c
    nop
    rst $38
    inc bc
    db $fc
    ldh [$1f], a
    sbc h
    ld a, a
    ld h, $01
    di
    dec l
    db $e3
    ld l, a
    pop hl
    db $db
    push hl
    cpl
    add b
    inc sp
    inc b
    ei
    cp $ff
    ld bc, $bf81
    inc b
    ld b, e
    rst $38
    ccf
    call c, $2e6f
    ld [hl], a
    ld hl, sp+$0a
    ret z

    rst $30
    add b
    rst $38
    ld hl, $38a0
    rst $38
    ld h, h
    rlca
    ld e, [hl]
    ld h, b
    cp $fe
    ld [hl+], a
    ccf
    cp $04
    inc bc
    cp $e3
    ld e, $fb
    ld [hl-], a

jr_02d_7a41:
    ld hl, sp-$05
    jr nc, jr_02d_7a41

    db $fd
    jr nc, jr_02d_7a57

    add hl, bc
    ld a, a
    ld [hl], b
    cp b
    or a
    inc b
    sbc a
    rst JumpTable
    add b
    ldh [$9f], a
    ld b, c
    ld e, a
    ldh [rP1], a

jr_02d_7a57:
    cp a
    ld a, a
    cp $0e
    dec c
    db $fd
    ld sp, hl
    ei
    db $10

jr_02d_7a60:
    ld bc, $f907
    ld b, c
    ld a, [$fd07]
    cp $05
    rst $38
    nop
    inc b
    ei
    rst $38
    inc h
    nop
    ld [hl+], a
    add e
    add c
    rst $38
    db $dd
    ld [bc], a
    rst JumpTable

jr_02d_7a77:
    jr nz, jr_02d_7ae0

    ld d, d
    jp nz, $2054

    db $fd
    add hl, bc
    ld a, l
    add hl, bc
    inc hl
    db $dd
    ld h, b
    add hl, hl
    inc hl
    ld h, c
    db $dd
    add hl, bc
    or a
    sbc b
    xor d
    nop
    sbc h
    sub h
    adc a
    res 0, a
    and a
    ret nz

    ret nc

    jr nz, jr_02d_7a77

    ldh [$5f], a
    ld a, [$bd0c]
    ld b, $bf
    nop
    ld b, e
    rst $38
    nop
    rst JumpTable
    nop
    sbc $21
    cp $60
    nop
    daa
    ld b, b
    nop
    nop
    jr @+$03

    ld bc, $0103
    ld [bc], a
    inc bc
    nop
    inc bc
    ld [bc], a
    rlca
    ld b, $3f
    rra
    ld l, a
    ld [hl], b
    nop
    cp b
    ret nz

    ld [hl], b
    add b
    ld a, b
    add b
    ccf
    ret nz

    nop
    cpl
    ret nc

    dec c
    ld a, [c]
    db $fc
    ld hl, sp-$0a
    ld c, $00
    dec a
    inc bc
    ld e, $01
    ld a, $01
    cp $01
    ld [$0bf4], sp
    ld h, h
    sbc e
    cpl
    jr nz, jr_02d_7a60

jr_02d_7ae0:
    add b
    ret nz

    ld bc, $4080
    ret nz

    ret nz

    ld b, b
    ldh [$60], a
    inc c
    ld [$7f11], sp
    nop
    ld d, l
    ld bc, $6308
    nop
    ld b, c
    add hl, bc
    ld [$00c0], sp
    db $10
    rrca
    nop
    dec l
    rst $38
    ld a, a
    ret c

    cp b
    push af
    adc a
    nop
    xor a
    sbc $d6
    rst $28
    ld a, [$a2ff]
    and e
    nop
    ld [c], a
    db $e3
    db $fd

jr_02d_7b10:
    cp $fe
    inc hl
    rst $38
    db $fd
    nop
    rrca
    rst $38
    rst $30
    dec c
    cp a
    ld b, a
    rst $28
    dec b
    nop
    rst $28
    rla
    ei
    inc b
    cp a
    ld b, c
    rst $38
    add hl, sp
    nop
    rst $08
    rst $08
    db $e4
    rst $20
    and [hl]
    rst $20
    ld de, $00f1
    add hl, sp
    ld sp, hl
    rst $30
    ret z

    ld a, $21
    ccf
    inc l
    nop
    or e
    or e
    and [hl]
    and a
    and l
    and a
    xor h
    xor a
    jr @+$2e

    cpl
    rst $38
    nop
    jr jr_02d_7b68

    ld b, b
    rst $38
    rst $38
    ccf
    adc [hl]
    nop
    ld [$b3b3], sp
    and a
    rra
    jr z, jr_02d_7bd5

    adc b
    nop
    jr z, @+$0d

    nop
    rlca
    inc d
    rrca
    ld hl, sp-$01
    dec bc
    ld c, $35
    nop
    ld e, $77
    inc a
    ld b, d

jr_02d_7b68:
    ld a, l
    ld b, b
    ld a, a
    ld h, b
    nop
    rst $38
    add c
    cp $91
    cp $45
    cp d
    ret nz

    nop
    ccf
    ret z

    scf
    ld [$fe15], a
    ld bc, $00df
    jr nz, jr_02d_7b10

    ld [hl], b
    dec de
    db $e4
    ld hl, $05de
    nop
    ld a, [$f807]

jr_02d_7b8b:
    sub [hl]
    ld l, c
    rst JumpTable
    jr nz, jr_02d_7b8b

    nop
    inc b
    or c
    ld c, [hl]
    sbc b
    ld h, a
    ret nc

    ld [hl], b
    xor b
    nop
    ld a, b
    db $ec
    inc a
    ld b, d
    cp [hl]
    inc hl
    sbc $06
    ld c, $ff
    add c
    ld a, a
    adc c
    ld d, c
    db $10
    rst $38
    nop
    dec a
    di
    db $10
    and c
    nop
    and e
    ldh a, [$f0]
    cp a
    cp a
    jp nc, Jump_02d_7fd2

    sub b
    rrca
    ld [$05bf], sp
    rst $30
    ld [$ff15], sp
    rlca
    ei
    nop
    db $fd
    cp $4b
    db $fd
    cp $ff
    nop
    ld l, $00
    rst $28
    ld e, b
    rst JumpTable
    sbc h
    sbc a
    dec sp
    dec sp
    jp hl


jr_02d_7bd5:
    nop
    jp hl


    ld l, $ee
    ld l, d
    xor $96
    sub [hl]
    or d
    nop
    or e
    xor d
    cp e
    xor e
    cp e

jr_02d_7be4:
    ld a, [hl-]
    ld a, [hl-]
    ld c, d
    ld bc, $9a4a
    sbc d
    or e
    or e
    push de
    rst $30
    ld l, a
    nop
    jr nc, jr_02d_7bf3

jr_02d_7bf3:
    ld [hl], a
    nop
    call c, $fb02
    nop
    ld e, [hl]
    nop
    inc b
    ld [hl], a
    add b
    cp e
    rlca
    db $f4
    rst $38
    ld [$ffe0], sp
    nop
    add b
    rst $38
    add h
    rst $38

Call_02d_7c0a:
    ret z

    rst $38
    ld [hl], b
    ld a, a
    nop
    ld sp, hl
    rst $38
    sbc a
    sbc a
    call z, $1bcc
    db $e4
    inc b
    ld de, $01ee
    cp $00
    dec d
    jr jr_02d_7be4

    rst $38
    nop
    cp $ff
    sbc b
    ld h, a
    adc b
    ld [hl], a
    nop
    rst $38
    nop
    nop
    rst $38
    ld bc, $10ff
    rst $38
    add hl, de
    rst $38
    db $10
    ccf
    rst $38
    rlca
    add hl, bc
    ld [$ff21], sp
    inc de
    rst $38
    nop
    ld c, $fe
    sbc a
    rst $38
    ld sp, hl
    ld sp, hl
    ld [hl], e
    ld [hl], e

jr_02d_7c46:
    add b
    ld a, [de]
    ld [$f803], sp
    inc c
    ldh a, [rNR10]
    pop hl
    jr nz, @+$1a

    di
    ld b, b
    ei
    ld bc, $0f08
    ld [$dfc0], sp
    jr nc, jr_02d_7c5c

jr_02d_7c5c:
    rst $38
    ld [$0477], sp
    and e
    ld c, $c3
    ld e, $00
    jp $f91e


    ld b, $53
    add hl, hl
    di
    rrca
    nop
    cp a
    nop
    sbc [hl]
    ld h, b
    dec b
    or d
    rra
    ldh a, [rP1]
    rst $28
    ld [hl], b
    sbc $20
    ei
    nop
    cp a
    nop
    nop
    rst $28
    db $10
    call $d728
    jr c, jr_02d_7c46

    nop
    nop
    ei
    nop
    cp $01
    cp a
    rrca
    ei
    ld a, [hl-]
    nop
    push af
    add hl, sp
    ld [$f52c], a
    daa
    ei
    ld [hl+], a
    nop
    push af
    add hl, hl
    rst $38
    ldh [$7f], a
    jr nz, jr_02d_7cdf

    ldh a, [rP1]

Call_02d_7ca4:
    ld a, a
    ret nc

jr_02d_7ca6:
    rst $08
    cp b
    sbc a
    ld a, b
    ccf
    add sp, $00
    ld l, a
    ret c

    or a
    or a
    ld d, l
    rst $30
    or a
    rst $30
    nop
    ld l, h
    ld l, h
    ld a, [hl+]
    ld l, $a9
    xor a
    ld l, a
    rst $28
    nop
    add hl, hl
    jp hl


    db $76
    ld [hl], a
    ld h, h
    ld h, a
    db $eb
    rst $28
    nop
    db $ec
    db $ec
    ld l, c
    ld l, c
    rst $10
    rst $30
    ld d, h
    ld [hl], a
    jr nz, jr_02d_7d26

    ld [hl], a
    ld e, a
    ld a, [$fc03]
    inc b
    cp c
    dec bc
    nop
    db $fc
    inc c
    rst $38
    dec bc

jr_02d_7cdf:
    db $fd
    ld d, $e7
    inc [hl]
    nop
    db $ec
    jr z, @+$01

    add b
    ld [hl], a
    ld b, b
    ccf
    and b

Call_02d_7cec:
    nop
    ld a, l
    ld h, b
    cp a
    ldh [$5f], a
    ldh a, [$de]
    ld a, c
    jr nz, jr_02d_7ca6

    ld a, b
    cp a
    ld bc, $fb40
    ld h, b
    ei
    jr nc, @+$01

    nop
    rra
    rst $30
    inc c
    rst $28
    jr @-$6f

    ld a, b

jr_02d_7d08:
    add a
    nop

jr_02d_7d0a:
    ld a, a
    ldh [$1f], a
    rst $00

jr_02d_7d0e:
    ld e, $cf
    inc e
    rst $38
    nop
    ld hl, sp-$11
    jr nc, jr_02d_7d0e

    jr jr_02d_7d0a

    ld e, $e1
    nop
    cp $07
    ld hl, sp-$05
    nop
    ld l, a
    sub b
    rst $38
    nop
    nop

jr_02d_7d26:
    di
    inc c
    and l
    ld d, d
    ld a, d

jr_02d_7d2b:
    ld d, $ed
    nop
    ld e, $bf
    nop
    dec a
    jp nz, $a017

    ld e, $00
    ldh [$bf], a
    nop
    push hl
    jr jr_02d_7d08

    inc h
    sub $00
    inc l
    ei
    inc e
    push af
    ld hl, $61fd
    rst $28
    nop
    or c
    or e
    sbc l
    cp a
    adc a
    push bc
    ld b, e
    rst $38
    nop
    ld a, $ff
    nop
    rst $08
    cp b
    xor a
    ld a, h
    adc a
    nop
    ld a, d
    sub a
    ld a, d
    rst $28
    ld a, [c]
    cp l
    add $fb

jr_02d_7d63:
    nop
    ld a, h
    rst $38
    nop
    sbc h
    sub h
    inc sp
    ccf
    push bc
    nop
    rst JumpTable
    inc hl
    db $eb
    db $ec
    db $ec
    ld l, e
    add a
    sbc a
    nop
    nop
    rst $30
    ld [$cafb], sp
    jp z, Jump_02d_4afb

    nop
    ld a, e
    ld b, d
    ld a, e
    db $db
    db $db
    jp c, $6501

    db $10

jr_02d_7d88:
    add d
    rst JumpTable
    jr nz, jr_02d_7d2b

    ldh a, [$e8]
    jr z, jr_02d_7d88

    ld l, b
    nop
    xor h
    cp b
    sub a
    cp h
    xor a
    sbc a
    add $43
    ld b, b
    db $fd
    ld e, a
    ld [$386f], sp
    ld l, a
    inc a
    rst $28
    ld a, [hl-]
    ld h, b
    rst $10
    ld e, a
    jr c, jr_02d_7da9

jr_02d_7da9:
    rst $38
    ld bc, $fb07
    ld b, $fb
    ld h, $fb
    nop
    or $19
    cp l

jr_02d_7db5:
    ld e, [hl]
    sbc l
    ld h, [hl]
    add a
    ld a, l
    nop
    rst $38
    add b
    add sp, -$29
    ld l, b
    rst $10
    ld l, h
    rst $10
    nop
    ld l, a
    sbc b
    cp h
    ld a, e
    cp b
    ld h, a
    ldh [$bf], a
    nop
    rst $00
    cp b
    ld b, b
    rst $38
    ld a, a
    rst $38
    jr nz, jr_02d_7db5

    nop
    ld e, a
    ret c

    xor a
    add h
    rst $38
    add b
    rst $38
    rst $38
    ld d, b
    nop
    nop
    jr jr_02d_7d63

    nop
    ld [$c040], sp
    ret nz

    ld b, b
    nop
    ldh [$60], a
    adc b
    ld a, a
    ld a, [bc]
    rst $38
    ld [$00ff], sp
    rrca
    rst $38
    ld a, [de]
    db $fd
    ld [hl], h
    ei
    pop af
    rst $38
    nop
    ld e, b
    cp a
    ld c, c
    cp $08
    rst $38
    jr z, @+$01

    nop
    jr @+$01

    ld hl, sp-$01
    sbc $3f
    dec de
    rst $38
    nop
    ld d, $f9
    adc a
    ld [hl], b
    ld h, b
    sbc a
    ld e, c
    and [hl]
    nop
    dec d
    ld [$53ac], a
    ld a, e
    add h
    ld b, $f9
    nop
    adc l
    ld [hl], d
    pop bc
    ld a, $bc
    ld b, e
    ld l, c
    sub [hl]
    nop
    ld d, c
    xor [hl]
    ld [hl-], a
    call $39c6
    add b
    ld a, a
    nop
    sbc [hl]
    ld h, c
    rst $38
    ld a, a
    ret c

    cp b
    push af
    adc a
    nop
    xor a
    sbc $d6
    rst $28
    ld a, [$a2ff]
    and e
    nop
    ld [c], a
    db $e3
    db $fd
    cp $fe
    inc hl
    rst $38
    db $fd
    nop
    rrca
    rst $38
    rst $30
    dec c
    cp a
    ld b, a
    rst $28
    dec b
    ld [hl+], a
    rst $28
    rla
    ld l, h
    ld [$007f], sp
    ld d, l
    ld bc, $6308
    inc a
    nop
    ld b, c
    add hl, bc
    ld [$1000], sp
    rrca
    nop
    ld b, b
    nop
    jr z, jr_02d_7e78

    rlca
    nop
    inc d
    rrca
    ld hl, sp-$01
    rst $38
    inc bc
    ld c, $f7
    ld b, b

jr_02d_7e78:
    inc c
    ld bc, $fc08
    rrca
    sbc h
    ld [hl], e
    or e
    ld l, l
    ld bc, $7da3
    rst $38
    ret nz

    ld [hl], b
    rst $28
    jr nc, @+$03

    ld [$3f00], sp
    ldh a, [$38]
    rst $08
    call z, $c4b7
    cp a
    nop
    ld hl, $05de
    ld a, [$f807]
    sub [hl]

jr_02d_7e9c:
    ld l, c
    nop
    rst JumpTable
    jr nz, jr_02d_7e9c

    inc b
    or c
    ld c, [hl]
    sbc b
    ld h, a
    nop
    ret nc

    ld [hl], b
    xor b
    ld a, b
    db $ec
    inc a
    ld b, d
    cp [hl]
    nop
    ld [hl+], a
    sbc $06
    rst $38
    add c
    ld a, a
    adc c
    ld a, a
    nop
    xor $00
    dec sp
    ld b, b
    rst $08
    nop
    ld a, d
    nop
    nop
    xor $01
    cp a
    nop
    ret c

    ccf
    cp b
    ld a, a
    nop
    ld de, $10fe
    rst $38
    jr nc, @+$01

    ldh a, [rIE]
    nop
    db $10
    rst $38
    add sp, $1f
    rst $30
    rrca
    db $fc
    inc bc
    nop
    ld l, e
    sub h
    ld b, $f9
    jr nc, @-$2f

    ld e, c
    and [hl]
    nop
    ld l, c
    sub [hl]
    ld [hl-], a
    call Call_02d_7887
    ldh [$1f], a
    nop
    inc [hl]
    sra l
    jp nc, $e619

    add c
    ld a, [hl]
    nop
    ld d, h
    xor e
    jp c, $8c25

    ld [hl], e
    ld sp, $80ce
    di
    db $10
    and c
    and e
    ldh a, [$f0]
    cp a
    cp a
    jp nc, $d224

    ld a, a
    sbc a
    ld [$05bf], sp
    rst $30
    ld [$ff15], sp
    ld bc, $fb07
    db $fd
    cp $4b
    db $fd
    cp $6e
    add hl, de
    add b
    rst $38
    nop
    ld c, l
    ld [hl], a
    nop
    call c, $fb02
    nop
    ld e, [hl]
    ld [bc], a
    nop
    ld [hl], a
    add b
    cp e
    rlca
    db $f4
    rst $38
    ld [$80e0], sp
    call nc, $8409
    rst $38
    ret z

    rst $38
    ld [hl], b
    ld a, a
    ld sp, hl
    nop

Call_02d_7f3f:
    rst $38
    sbc a
    sbc a
    call z, $1bcc
    db $e4
    ld de, $ee08
    ld bc, $00fe
    dec d
    jr @-$3a

    rst $38
    cp $00
    rst $38
    sbc b
    ld h, a
    adc b
    ld [hl], a
    nop
    rst $38
    nop
    jr nz, @+$01

    ld bc, $08d1
    add hl, de
    rst $38
    ccf
    rst $38
    rlca
    add b
    add hl, bc
    ld [$ff21], sp
    inc de
    rst $38
    ld c, $fe
    sbc a
    inc b
    rst $38
    ld sp, hl
    ld sp, hl

jr_02d_7f72:
    ld [hl], e
    ld [hl], e

jr_02d_7f74:
    ld a, [de]
    ld [$f803], sp
    nop
    inc c
    ldh a, [rNR10]
    pop hl
    jr nz, jr_02d_7f72

    ld b, b
    ei
    ret nz

    ld bc, $0f08
    ld [$dfc0], sp
    jr nc, @+$01

    ld [$0077], sp
    inc b
    and e
    ld c, $c3
    ld e, $c3
    ld e, $f9
    nop
    ld b, $53
    add hl, hl
    di
    rrca
    cp a
    nop
    sbc [hl]
    nop
    ld h, b
    dec b
    or d
    rra
    ldh a, [$ef]

jr_02d_7fa5:
    ld [hl], b
    sbc $00
    jr nz, jr_02d_7fa5

    nop
    cp a
    nop
    rst $28
    db $10
    call $2800
    rst $10
    jr c, jr_02d_7f74

    nop
    ei
    nop
    cp $00
    ld bc, $0fbf
    ei
    ld a, [hl-]
    push af
    add hl, sp
    ld [$2c00], a
    push af
    daa
    ei
    ld [hl+], a
    push af
    add hl, hl
    rst $38
    nop
    ldh [$7f], a
    jr nz, @+$3f

    ldh a, [$7f]

Jump_02d_7fd2:
    ret nc

    rst $08
    ld bc, $9fb8
    ld a, b
    ccf
    add sp, $6f
    ret c

    rst $28
    nop
    ld b, b
    nop
    rst $38
    inc bc
    db $fc
    inc b
    cp c
    dec bc
    db $fc
    inc c
    nop
    rst $38
    dec bc
    db $fd
    ld d, $e7
    inc [hl]
    db $ec
    jr z, jr_02d_7ff2

jr_02d_7ff2:
    rst $38
    add b
    ld [hl], a
    ld b, b
    ccf
    and b
    ld a, l
    ld h, b
    nop
    cp a
    ldh [$5f], a
    ldh a, [$de]

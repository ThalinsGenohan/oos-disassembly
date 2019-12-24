; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX

    inc bc
    nop
    rlca
    nop
    rlca
    inc bc
    rra
    inc b
    dec a
    inc de
    add hl, sp
    rla
    ld a, [hl-]
    dec d
    inc l
    inc de
    inc e
    inc bc
    inc d
    dec bc
    inc [hl]
    dec de
    dec sp
    inc d
    rla
    rrca
    jr jr_01a_4023

    rra
    nop
    rrca
    nop
    add b
    nop
    ret nz

jr_01a_4023:
    nop
    ldh [$c0], a
    ld hl, sp+$20
    cp h
    ret z

    sbc h
    add sp, -$64
    add sp, -$6c
    add sp, $38
    ret nz

    ld d, h
    xor b
    sub h
    ld l, b
    inc l

jr_01a_4037:
    ldh a, [$c8]
    ldh a, [$38]
    ret nz

    db $fc
    jr nc, jr_01a_4037

    nop
    inc bc
    nop
    rra
    nop
    ccf
    dec de
    ccf
    jr jr_01a_4086

    inc bc
    add hl, hl
    rla
    ld a, [hli]
    dec d
    inc l
    inc de
    inc l
    inc de
    inc l
    inc de
    inc d
    dec bc
    inc de
    inc c
    rla
    rrca
    jr jr_01a_4063

    rra
    nop
    rrca
    nop
    add b
    nop
    ret c

jr_01a_4063:
    nop
    db $fc
    ret c

    db $fc
    jr @-$42

    ret nz

    sub h
    add sp, -$6c
    add sp, -$6c
    add sp, $34
    ret z

    ld c, b
    or b
    adc b
    ld [hl], b
    jr z, @-$0e

    ret z

    ldh a, [$78]
    add b
    db $fc
    jr nc, @-$06

jr_01a_407f:
    nop
    inc bc
    nop
    dec c
    inc bc
    ld e, $0d

jr_01a_4086:
    ld [hl], a
    ld c, $3b
    rlca
    ld c, $01
    ccf
    ld a, [bc]
    ccf
    dec de
    rla
    rrca
    ld [$0f07], sp
    nop
    dec bc
    dec b
    rrca
    dec b
    dec bc
    inc b
    rrca
    ld bc, $001f
    ldh [rP1], a
    db $10
    ldh [$c8], a
    ldh a, [rNR50]
    ret c

    ld a, [c]
    inc l
    or d
    ld l, h
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nc

    ld h, b
    or b
    ld b, b
    ret nc

    jr nz, jr_01a_407f

    or b
    ret z

    or b
    ld hl, sp+$00
    ldh a, [$e0]
    ld hl, sp+$00
    nop
    nop
    inc bc
    nop
    dec l

jr_01a_40c5:
    inc bc
    ld a, $0d
    scf
    ld c, $1b
    rlca
    ld c, $01
    ccf
    ld a, [bc]
    ccf
    dec de
    rla
    rrca
    rrca
    nop
    rlca
    inc bc
    rlca
    inc bc
    rrca
    nop
    rra
    rrca
    rra
    nop
    nop
    nop
    ldh a, [rP1]
    adc h
    ldh a, [$62]
    db $fc
    ld [hli], a
    call c, $2cf2
    or h
    ld l, b
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nc

    ld h, b
    ldh a, [rP1]
    sbc b
    ld h, b
    sbc h
    ld l, b
    inc a
    ret z

    db $fc

jr_01a_40fd:
    jr jr_01a_40fd

    nop
    rra
    nop
    dec hl
    dec e
    ld e, a
    jr nc, jr_01a_40c5

    ld h, e
    rst $38
    ld c, a
    cp a
    ld c, h
    cp $19
    db $ed
    ld e, e
    ld [hl], a
    ld l, $7e
    ld bc, $5be4
    di
    ld l, h
    ld a, a
    inc bc
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    jr nc, jr_01a_4122

jr_01a_4122:
    ld hl, sp+$30
    ld hl, sp-$70
    ret c

    jr nz, jr_01a_4171

    or b
    db $ec
    sub b
    sbc $ac
    sbc [hl]
    ld l, h
    ld [hl], $ec
    ld a, d
    call z, $80fc
    db $f4
    ld [$d068], sp
    or b
    ret nz

    ret nz

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
    ld [hl], h
    nop
    sbc [hl]
    ld [hl], h
    cp d
    ld [hl], h
    rst $30
    ld l, d
    ld h, a
    ld a, [de]
    sbc $60
    ld a, h
    jr jr_01a_416f

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

jr_01a_4164:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01a_416e

jr_01a_416e:
    inc a

jr_01a_416f:
    jr @+$3e

jr_01a_4171:
    jr jr_01a_418b

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
    inc bc
    nop
    inc e
    inc bc
    ld a, $19
    ccf
    dec de
    dec sp
    inc b
    cpl

jr_01a_418b:
    db $10
    cpl
    db $10
    cpl
    dec d
    cpl
    dec d
    dec de
    rlca
    rla
    ld [$0f14], sp
    inc de
    rrca
    ld [$1f07], sp
    nop
    rrca
    nop
    ret nz

    nop
    jr c, jr_01a_4164

    ld a, h
    sbc b
    db $fc
    ret c

    call c, $f420
    ld [$08f4], sp
    db $f4
    xor b
    db $f4
    xor b

jr_01a_41b2:
    call nc, $e8e8
    db $10
    ld [$e8f0], sp
    ldh a, [$78]
    add b
    db $ec
    ld [hl], b
    ld hl, sp+$00

jr_01a_41c0:
    inc bc
    nop
    inc c
    inc bc
    rra
    inc c
    ld [hl], a
    ld c, $3b
    ld b, $0f
    nop
    ccf

jr_01a_41cd:
    ld a, [bc]
    ccf
    ld a, [de]
    rla
    ld c, $0b
    inc b
    inc c
    inc bc
    ld [$0f07], sp
    rlca
    add hl, bc
    ld b, $0f
    ld bc, $001f
    ldh [rP1], a
    ret nc

    jr nz, jr_01a_41cd

    ret nc

    db $e4
    ret c

    ld [c], a
    inc e
    ld [hli], a
    call c, $d824
    jr z, jr_01a_41c0

    jr nc, jr_01a_41b2

    jr nc, @-$3e

    ret nc

    jr nz, jr_01a_421f

    ldh a, [$c8]
    ldh a, [$f8]
    nop

jr_01a_41fc:
    ldh a, [$e0]
    ld hl, sp+$00
    rlca
    nop
    dec bc
    rlca
    dec de
    inc b

jr_01a_4206:
    ccf
    inc de
    ccf
    inc d
    ccf
    db $10
    daa
    jr jr_01a_422e

    dec c
    rla
    dec c
    dec hl
    rla
    ld l, a
    jr nc, jr_01a_428f

    daa
    scf
    rrca
    ld e, $01
    scf
    ld c, $1f

jr_01a_421f:
    nop
    ret nz

    nop
    jr nz, @-$3e

jr_01a_4224:
    jr jr_01a_4206

    call c, $fce8
    jr z, @-$02

    ld [$18e4], sp

jr_01a_422e:
    ld hl, sp-$50
    add sp, -$50
    call nc, $f4e8
    ld [$b874], sp
    ld hl, sp-$50
    jr nc, jr_01a_41fc

    ld hl, sp+$00
    ldh a, [rP1]
    rlca
    nop
    dec bc
    rlca
    dec de
    inc b

jr_01a_4246:
    ccf
    inc de
    ccf
    inc d
    ccf
    db $10
    daa
    jr jr_01a_426e

    dec c
    rla
    dec c
    dec hl
    rla
    ld l, a
    jr nc, jr_01a_42cf

    daa
    scf
    rrca
    inc e
    inc bc
    dec sp
    inc e
    ccf

jr_01a_425f:
    nop
    ret nz

    nop
    jr nz, jr_01a_4224

    jr jr_01a_4246

    call c, $fce8
    jr z, @-$02

    ld [$18e4], sp

jr_01a_426e:
    ld hl, sp-$50
    add sp, -$50
    call nc, $f6e8
    inc c
    ld e, $e4
    db $ec
    ldh a, [$38]
    ret nz

    call c, $fc38
    nop
    inc bc
    nop
    dec c
    inc bc
    ld e, $0d
    ld [hl], a
    ld c, $3b
    rlca
    ld c, $01
    ccf
    ld a, [bc]
    ccf

jr_01a_428f:
    dec de
    rla
    rrca
    ld [$3f07], sp
    nop
    ld a, b
    scf
    ld a, c
    ld [hl], $3f
    nop
    rrca
    ld bc, $001f
    ldh [rP1], a
    db $10
    ldh [$c8], a
    ldh a, [rNR50]
    ret c

    ld a, [c]
    inc l
    or d
    ld l, h
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nc

    ld h, b
    or b
    ld b, b
    ret nc

    jr nz, jr_01a_425f

    ld [hl], b
    ret z

    ldh a, [$f8]
    nop
    ldh a, [$e0]
    ld hl, sp+$00
    nop
    nop
    rlca
    nop
    ld e, e
    rlca
    ld a, h
    dec de
    ld l, [hl]
    dec e
    scf
    ld c, $3d
    ld [bc], a
    ld a, a

jr_01a_42cf:
    inc d
    ld a, a
    ld [hl], $2f
    ld e, $7f
    nop
    pop af
    ld l, [hl]
    di
    ld l, l
    ld a, [hl]
    ld bc, $0e1f
    ccf
    nop
    nop
    nop
    ldh [rP1], a
    sbc h
    ldh [$e2], a
    db $fc
    ld b, d
    cp h
    db $e4
    ld e, b
    ld l, b
    ret nc

    add sp, -$30

Call_01a_42f0:
    ldh a, [$c0]
    and b
    ret nz

    ldh [rP1], a
    ld e, b
    ldh [$9c], a
    add sp, $3c
    ret z

    db $fc

jr_01a_42fd:
    jr jr_01a_42fd

    nop
    inc bc
    nop
    dec b
    inc bc
    inc c
    inc bc
    rla
    rrca
    ld a, a
    nop
    ccf
    nop
    rra
    dec bc
    rra
    dec bc
    rra
    dec b
    ccf
    jr @+$3a

    rra
    sbc b
    rrca
    rst $08
    add b
    db $fc
    jp $1cfb


    ccf
    nop
    ret nz

    nop
    ldh a, [$c0]
    adc b
    ld [hl], b
    call nz, $efb8
    ld d, b
    db $fd
    ld a, [bc]
    db $fd
    ld e, d
    or $58
    xor h
    ret nc

    ld hl, sp+$00
    ld d, b
    and b
    xor b
    ld [hl], b
    db $fc
    ret nz

    ld a, [hl]
    sbc h
    ld [c], a
    inc a
    db $fc
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
    ld [hl], $00
    ld e, l
    ld [hli], a
    and d
    ld b, c
    cp [hl]
    ld b, c
    and d
    ld b, c
    sbc h
    ld h, e
    ld a, l
    ld a, [de]
    ld a, $1c
    inc e
    nop
    nop
    nop
    inc bc
    nop
    dec b
    inc bc
    inc c
    inc bc
    rla
    rrca
    ld a, a
    nop
    ccf
    nop
    rra
    rrca
    rrca
    ld [bc], a
    rrca
    dec b
    rrca
    nop
    inc e
    inc bc
    jr c, jr_01a_4397

    ld a, e
    inc a
    ld a, $01
    dec sp
    inc e
    ccf
    nop
    ret nz

    nop
    ldh a, [$c0]
    adc b
    ld [hl], b
    call nz, $efb8
    ld d, b
    db $fd
    ld a, [bc]
    db $fd
    jp c, $58f6

    xor h
    ret nc

    ld hl, sp+$00
    ld d, b
    and b
    or b

jr_01a_4397:
    ld h, b
    ret z

    ldh a, [$7c]
    add b
    sbc $3c
    cp $00  ; and a / or a
    inc bc
    nop
    inc e
    inc bc
    ld a, $19
    ccf
    dec de
    dec sp
    inc b
    cpl
    db $10
    cpl
    db $10
    cpl
    dec d
    cpl
    dec d
    dec hl
    rla
    rla
    ld [$0f10], sp
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
    rra
    nop
    ld [hl], a
    rrca
    rst $28
    ld e, b
    rst $38
    ld b, b
    rst $38
    dec bc
    rst $38
    ld h, b
    ld h, e
    rra
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    add hl, de
    rlca
    add hl, sp
    rla
    inc a
    inc de
    ccf
    inc d
    cpl
    inc de
    rla
    ld [$041b], sp
    dec a
    dec de
    ccf
    inc e
    ld a, e
    ld l, $7f
    ld h, $3f
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    inc bc
    rra
    inc b
    dec a
    inc de
    add hl, sp
    rla
    ld a, [hl-]
    dec d
    inc l
    inc de
    inc e
    inc bc
    inc d
    dec bc
    inc [hl]
    dec de
    dec sp
    inc d
    rla
    rrca
    jr jr_01a_4423

    rra
    nop
    rrca
    nop
    add b
    nop
    ret nz

jr_01a_4423:
    nop
    ldh [$c0], a
    ld hl, sp+$20
    cp h
    ret z

    sbc a
    add sp, -$61
    ld [$ea97], a
    ccf
    jp nz, $aa57

    sub a
    ld l, d
    cpl

jr_01a_4437:
    ld a, [c]
    rst $08
    ld a, [c]
    ld a, $c0
    db $fc
    jr nc, jr_01a_4437

    nop
    ld bc, $0300
    nop
    rlca
    inc bc
    rra
    inc b
    dec a
    inc de
    add hl, sp
    rla
    add hl, sp
    rla
    add hl, hl
    rla
    inc e
    inc bc
    ld a, [hli]
    dec d
    add hl, hl
    ld d, $34
    rrca
    inc de
    rrca
    inc e
    inc bc
    ccf
    inc c
    rra
    nop
    ret nz

    nop
    ldh [rP1], a

jr_01a_4464:
    ldh [$c0], a
    ld hl, sp+$20
    cp h
    ret z

    sbc h
    add sp, $5e
    xor b
    scf
    jp z, $c63d

    dec l
    sub $2d
    sub $dd
    ld h, $fd
    and $1e
    db $e4

jr_01a_447c:
    db $fc
    nop
    ldh a, [rP1]
    rlca
    nop
    dec bc
    rlca
    dec de
    inc b

jr_01a_4486:
    ccf
    inc de
    ccf
    inc d
    ccf
    db $10
    ld h, a
    jr @+$01

    ld c, l
    rst $30
    ld c, l
    db $eb
    ld d, a
    rst $38
    ld d, b
    ld hl, sp+$57
    rst $30
    ld c, a
    ld a, [hl]
    ld bc, $0e37
    rra
    nop
    ret nz

    nop
    jr nz, jr_01a_4464

    jr jr_01a_4486

    call c, $fce8
    jr z, @-$02

    ld [$18e4], sp
    ld hl, sp-$50
    add sp, -$50
    call nc, $f4e8
    ld [$b874], sp
    ld hl, sp-$50
    jr nc, jr_01a_447c

    ld hl, sp+$00
    ldh a, [rP1]
    inc bc
    nop
    inc b
    inc bc
    jr jr_01a_44cd

    dec sp
    rla
    ccf
    inc d
    ccf
    db $10
    daa

jr_01a_44cd:
    jr @+$01

    dec c
    rst $30
    ld l, l
    cp e
    ld [hl], a
    sbc a
    ld [hl], b
    sbc [hl]
    ld [hl], l
    sbc a
    ld [hl], l
    ld e, h
    inc sp
    ccf
    nop
    rrca
    nop
    ldh [rP1], a
    ret nc

jr_01a_44e3:
    ldh [hFFD8], a
    jr nz, jr_01a_44e3

jr_01a_44e7:
    ret z

    db $fc
    jr z, jr_01a_44e7

    ld [$18e4], sp
    ld hl, sp-$50
    add sp, -$50
    call nc, $f6e8
    inc c
    ld e, $e4

Call_01a_44f8:
    db $ec
    ldh a, [$78]
    add b
    db $ec
    ld [hl], b
    ld hl, sp+$00
    rlca
    nop
    ld [$1307], sp
    rrca
    inc h
    dec de
    ld c, a
    inc [hl]
    ld c, l
    ld [hl], $2f
    ld d, $1f
    ld b, $ff
    ld bc, $6dfe
    rst AddAToHL
    ld a, h
    rst $38
    ld b, l
    rst $00
    ld a, l
    rst $00
    ld a, h
    ld a, a
    dec sp
    ccf
    nop
    ret nz

    nop
    or b
    ret nz

    ld a, b
    or b
    xor $70
    call c, $70e0
    add b
    db $fc

jr_01a_452d:
    ld d, b
    db $fc
    ret c

    add sp, -$10
    db $10
    ldh [$f0], a
    nop
    ret nc

    and b
    ldh a, [$a0]
    ret nc

    jr nz, jr_01a_452d

    add b
    ld hl, sp+$00
    nop
    nop
    rrca
    nop
    ld sp, $460f
    ccf
    ld b, h
    dec sp
    ld c, a
    inc [hl]
    dec l
    ld d, $2f
    ld d, $7f
    nop
    ld a, a
    ld [hl], $6b
    ld a, $7f
    ld [hli], a
    ld h, e
    ld a, $63
    ld a, $3f
    inc e
    ccf
    nop
    nop
    nop
    ret nz

    nop
    or h
    ret nz

    ld a, h
    or b
    db $ec
    ld [hl], b
    ret c

    ldh [rSVBK], a
    add b
    db $fc
    ld d, b
    db $fc
    ret c

    add sp, -$10
    ldh a, [rP1]
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [rP1]
    ld hl, sp-$10
    ld hl, sp+$00
    rlca
    nop
    ld [$1307], sp
    rrca
    inc h
    dec de
    ld c, a
    inc [hl]
    ld a, l
    ld b, $3f
    db $10
    ccf
    rra
    scf
    inc e
    scf
    rra
    scf
    rra
    scf
    rra
    jr c, jr_01a_45b9

    rra
    rrca
    rrca
    nop
    rra
    nop
    ret nz

    nop
    or b
    ret nz

    ld a, b
    or b
    xor $70
    call c, $70e0

jr_01a_45ab:
    add b
    db $fc
    jr nz, jr_01a_45ab

    add sp, -$48
    ldh [$b0], a
    ldh [$b0], a
    ldh [$b0], a
    ldh [rSVBK], a

jr_01a_45b9:
    ldh [$e0], a
    ret nz

    ldh [rP1], a
    ldh a, [rP1]
    nop
    nop
    rrca
    nop
    ld sp, $460f
    ccf
    ld b, h
    dec sp
    ld a, a
    inc b
    ld a, a
    jr nz, jr_01a_464e

    ccf
    ld l, a
    add hl, sp
    ld l, a
    ccf
    ld l, a
    ccf
    ld l, a
    ccf
    ld [hl], b
    ccf
    ccf
    rra
    rra
    nop
    ld a, a
    nop
    nop
    nop
    ret nz

    nop
    or h
    ret nz

    ld a, h
    or b
    db $ec
    ld [hl], b
    ld hl, sp+$00
    ldh a, [rLCDC]
    db $fc
    ret nc

    ld a, h
    ret c

    ld l, b
    ret nc

    ld [hl], b
    ret nz

    ld h, b
    ret nz

    ldh [$c0], a
    ldh a, [$80]
    ld hl, sp+$70
    ld hl, sp+$00
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    inc bc
    rra
    inc b
    dec a
    inc de
    jr c, jr_01a_4625

    ld a, [hl-]
    dec d
    inc l
    inc de
    inc [hl]
    dec bc
    inc l
    inc de
    inc a
    dec bc
    rla
    inc c
    jr jr_01a_4623

    rra
    nop
    rrca
    nop
    rst $20
    nop
    rst $38

jr_01a_4623:
    ld b, d
    rst $38

jr_01a_4625:
    ld e, $f3
    adc $fb
    ld h, $bf
    jp z, $ea9f

    sbc a
    ld [$ea15], a
    ld a, [hl-]
    call nz, $a05c
    xor h

jr_01a_4637:
    ld [hl], b
    ret z

    ldh a, [$38]
    ret nz

    db $fc
    jr nc, jr_01a_4637

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    inc b
    dec a
    inc de
    add hl, sp
    rla

jr_01a_464e:
    add hl, sp
    rla
    jr z, jr_01a_4669

    inc a
    inc bc
    ld a, [hli]
    dec d
    dec [hl]
    ld c, $13
    rrca
    inc e
    inc bc

jr_01a_465c:
    ccf
    inc c
    rra
    nop
    nop
    nop
    rst $20
    nop
    rst $38
    ld [bc], a

jr_01a_4666:
    rst $38
    adc $fb

jr_01a_4669:
    ld h, $bf
    jp z, $ea1f

    ld e, a
    xor d
    scf
    jp z, $c23d

    ld a, [hl-]
    call nz, $d02c
    add sp, $30
    jr jr_01a_465c

jr_01a_467c:
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    nop
    rlca
    nop
    dec bc
    rlca
    dec de
    inc b

jr_01a_4688:
    ccf
    inc de
    ccf
    inc d
    ccf
    db $10
    daa
    jr jr_01a_4710

    nop
    ld a, a
    ld [hl], $6b
    ld a, $7f
    ld [hli], a
    ld h, e
    ld a, $63
    ld a, $3f
    inc e
    rra
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_01a_4666

    jr jr_01a_4688

    call c, $fce8
    jr z, @-$02

    ld [$18e4], sp
    ld hl, sp-$50
    db $f4
    xor b
    db $f4
    ret z

    db $f4
    jr c, @-$06

    or b
    jr nc, jr_01a_467c

    ld hl, sp+$00
    ldh a, [rP1]
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    jr jr_01a_46cf

    dec sp
    rla
    ccf
    inc d
    ccf
    db $10
    ld a, a

jr_01a_46cf:
    nop
    ld a, a
    ld [hl], $6b
    ld a, $7f
    ld [hli], a
    ld h, e
    ld a, $63
    ld a, $7f
    inc e
    ccf
    nop
    rra
    nop
    nop
    nop
    ldh [rP1], a
    ret nc

jr_01a_46e5:
    ldh [hFFD8], a
    jr nz, jr_01a_46e5

jr_01a_46e9:
    ret z

    db $fc
    jr z, jr_01a_46e9

    ld [$18e4], sp
    ld hl, sp-$50
    db $ec
    or b
    sub $e8
    ld a, [c]
    inc c
    xor $f4
    ld a, h
    add b
    db $ec
    ld [hl], b
    ld hl, sp+$00
    nop
    nop
    rlca
    nop
    ld a, [de]
    rlca
    dec a
    dec de
    xor $1d
    rst $30
    ld c, $fd
    ld b, d
    rst $38
    ld d, h

jr_01a_4710:
    rst $38
    ld [hl], $af
    ld e, [hl]
    or e
    ld c, h
    xor a
    ld d, e
    cp a
    ld b, e
    xor e
    ld b, h
    rst $28
    ld bc, $001f
    nop
    nop
    ret nz

    nop
    jr nz, @-$3e

    sub b
    ldh [rOBP0], a
    or b
    db $e4
    ld e, b
    ld h, h
    ret c

    add sp, -$30
    ldh a, [$c0]
    and b
    ret nz

    ldh [rP1], a
    sub b
    ld h, b
    adc b
    ld [hl], b
    ld hl, sp+$00
    ldh a, [$e0]
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
    nop
    ld e, e
    rlca

jr_01a_4748:
    ld a, h
    dec de
    ld l, [hl]
    dec e
    rst $30
    ld c, $fd
    ld b, d
    rst $38
    ld d, h
    rst $38
    ld [hl], $af
    ld e, b
    cp a
    ld b, [hl]
    cp a
    ld b, [hl]
    and a
    ld b, b
    xor a
    ld b, a
    rst JumpTable
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_01a_4748

    call nz, Call_01a_44f8
    cp b
    db $e4
    ld e, b
    ld l, b
    ret nc

    add sp, -$30
    ldh a, [$c0]
    ldh [$80], a
    sbc b
    ld h, b
    inc e
    add sp, $3c
    ret z

    db $fc

jr_01a_477d:
    jr jr_01a_477d

    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    add hl, bc
    rlca
    ld [de], a
    dec c
    daa
    ld a, [de]
    ld h, $1b
    rla
    dec bc
    rrca
    inc bc
    dec b
    inc bc
    rlca
    nop
    add hl, bc
    ld b, $10
    rrca
    rra
    nop
    rrca
    rlca
    rra
    nop
    nop
    nop
    ldh [rP1], a
    ld e, b
    ldh [$bc], a
    ret c

    ld [hl], a
    cp b
    rst $28
    ld [hl], b
    cp a
    ld b, d
    rst $38
    ld a, [hli]
    ei
    ld l, h
    db $fd
    ld [bc], a
    dec e
    ld [$6a9d], a
    db $fd
    ld [bc], a
    push af
    ld [bc], a
    db $e3
    add b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
    nop
    jr @+$09

    inc hl
    rra
    ld [hli], a
    dec e
    daa
    ld a, [de]
    ld d, $0b
    rla
    dec bc
    rrca
    inc bc
    rlca
    ld bc, $0619
    jr c, jr_01a_47f1

    inc a
    inc de
    ccf
    jr jr_01a_485e

    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jp c, $3ee0

    ret c

    db $76
    cp b
    rst $28
    ld [hl], b
    cp a
    ld b, d
    rst $38

jr_01a_47f1:
    ld a, [hli]
    ei
    ld l, h
    db $fd
    ld [bc], a
    dec e
    ld [$6a9d], a
    db $fd
    ld [bc], a
    push af
    ld [c], a
    ei
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    inc bc
    rra
    inc b
    dec a
    inc de
    add hl, sp
    rla
    jr c, jr_01a_4825

    ld a, [hli]
    dec d
    inc e
    inc bc
    inc l
    inc de
    ld a, [hli]
    dec d
    ld sp, $000e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    add hl, bc
    rlca
    inc de

jr_01a_4825:
    inc c
    ccf
    inc de
    ccf
    inc d
    ccf
    db $10
    daa
    jr jr_01a_484e

    dec c
    rla
    dec c
    dec hl
    rla
    cpl
    db $10
    inc a
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld e, $0d
    ld [hl], a
    ld c, $3b
    rlca
    ld c, $01
    ccf
    ld a, [bc]

jr_01a_484e:
    ccf
    dec de
    rla
    rrca
    ld [$0f07], sp
    nop
    ld e, $0d
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_485e:
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$c8], a
    ldh a, [rNR50]
    ret c

    ld a, [c]
    inc l
    or d
    ld l, h
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nc

    ld h, b
    or b
    ld b, b
    ret nc

    jr nz, jr_01a_487f

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_487f:
    nop
    nop
    nop
    rlca
    nop
    dec bc
    rlca
    dec de
    inc b

jr_01a_4888:
    ccf
    inc de
    ccf
    inc d
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    ld a, a
    sbc $73
    sbc $7f
    sbc $7f
    sbc $7f
    pop hl
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    ret nz

    nop
    jr nz, @-$3e

    jr jr_01a_4888

    call c, $fce8
    jr z, @-$02

    ld [$98e4], sp
    ld hl, sp-$50
    db $f4
    xor b
    db $f4
    adc b
    db $fc
    or b
    ld hl, sp-$50
    ldh a, [$80]
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    jr jr_01a_48cf

    dec sp
    rla
    rst $38
    inc d
    rst $38
    ld b, b
    rst $38

jr_01a_48cf:
    ld a, a
    sbc $73
    sbc $7f
    sbc $7f
    sbc $7f
    pop hl
    ld a, a
    ld a, a
    ccf
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    ldh [rP1], a
    ret nc

jr_01a_48e5:
    ldh [hFFD8], a
    jr nz, jr_01a_48e5

jr_01a_48e9:
    ret z

    db $fc
    jr z, jr_01a_48e9

    adc b
    db $e4
    sbc b
    ld hl, sp-$50
    db $ec
    or b
    sub $a8
    ld a, [c]
    adc h
    adc $b4
    db $fc
    nop
    db $ec
    ld [hl], b
    ld hl, sp+$00
    rlca
    nop
    dec bc
    inc b
    rra
    nop
    ccf
    ld de, $153f
    ld l, a
    rra
    rst $38
    ld l, [hl]
    rst $38
    ld h, [hl]
    ld l, e
    ld d, $25
    dec de
    dec de
    inc b
    jr c, jr_01a_491f

    ccf
    jr jr_01a_495a

    inc e
    rra
    inc c
    inc c

jr_01a_491f:
    nop
    nop
    nop
    ld bc, $1f00
    nop
    dec a
    ld a, [de]
    dec sp
    rla
    ccf
    ld b, $2f
    inc d
    cpl
    inc d
    dec sp
    rlca
    ld h, l
    dec de
    db $e3
    ld e, h
    pop af
    ld l, [hl]
    ei
    ld h, l
    ld a, a
    inc hl
    scf
    inc bc
    inc bc
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    ld [$8cfe], sp
    cp $c4
    rst $38
    add b
    db $fd
    xor $fa
    db $fc
    cp $e0
    rst JumpTable
    and $ef
    ld d, $8e
    ld [hl], b
    ldh a, [$80]

jr_01a_495a:
    ldh [$80], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    dec sp
    nop
    ld a, l
    ld [hl-], a
    ei
    ld [hl], l
    rst $38
    ld h, d
    rst $28
    inc d
    ld l, a
    inc d
    ld l, e
    rla
    ld h, l
    dec de
    ld h, [hl]
    add hl, de
    ld sp, hl
    ld h, [hl]
    db $fd
    ld a, d
    ld a, a
    jr c, jr_01a_49b3

    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    db $ec
    ret nz

    cp $00  ; and a / or a
    cp $e0
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    rst $38
    ld a, [c]
    rst $38
    add $ff
    db $ec
    db $fd
    jp z, $36f9

    cp $d8
    db $fc
    ret nz

    ret z

    jr nc, jr_01a_49cd

    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rrca
    nop
    ld a, d
    rlca
    db $f4
    ld l, a
    ld sp, hl
    db $76
    ld a, e
    dec [hl]
    ccf
    inc bc
    rla
    dec bc
    rla

jr_01a_49b3:
    ld a, [bc]
    rra
    ld [bc], a
    dec a
    dec de
    ccf
    add hl, de
    rra
    nop
    ld [bc], a
    ld bc, $0001
    ret nz

    nop
    ldh [$c0], a
    ldh [rP1], a
    cp h
    ld b, b
    cp $0c
    cp $cc
    db $fc

jr_01a_49cd:
    add b
    cp $08
    db $fd
    ld a, [de]
    pop af
    ld a, $b5
    ld l, [hl]
    and l
    ld e, [hl]
    jp z, $823c

    ld a, h
    inc c
    ldh a, [$f0]
    nop
    inc c
    nop
    rra
    inc c
    ccf
    inc e
    inc a
    dec de
    add hl, de
    rlca
    cpl
    db $10
    ld c, e
    scf
    ld [hl], a
    inc c

jr_01a_49f0:
    rst $38
    ld l, b
    ei
    ld d, a
    ld a, [hl]
    ld de, $0f30
    ld de, $080f
    rlca
    inc b
    inc bc
    inc bc
    nop
    inc sp
    nop

jr_01a_4a02:
    ld a, a
    inc sp
    ld a, e
    inc h
    inc a
    inc de
    add hl, sp
    rla
    ld a, [hl-]
    rla
    inc l
    inc de
    ld e, $01
    add hl, de
    ld b, $14
    rrca
    ld [de], a
    rrca
    dec e
    inc bc
    ld e, $0d
    ccf
    inc c
    inc sp
    inc c
    rra
    nop
    db $ec
    nop
    cp $cc
    sbc $24
    inc a
    ret z

    sbc h
    add sp, $5c
    xor b
    inc [hl]
    ret z

    jr c, jr_01a_49f0

    jr z, jr_01a_4a02

    ret c

    jr nc, jr_01a_4a5d

    ldh a, [$c8]
    ldh a, [$38]

jr_01a_4a39:
    ret nz

    db $fc
    jr nc, jr_01a_4a39

    nop
    ld hl, sp+$00
    inc sp
    nop
    ld a, a
    jr nc, jr_01a_4ac4

    inc sp
    cp e
    ld b, h
    cp h

jr_01a_4a49:
    ld d, e
    cp c
    ld d, a
    ld a, d
    dec d
    inc l
    inc de
    inc e
    inc bc
    inc e
    dec bc
    rla
    inc c
    inc de
    rrca
    inc e
    inc bc
    ccf
    inc c
    ccf

jr_01a_4a5d:
    nop
    rra
    nop
    call z, $fe00
    inc c
    cp $cc
    db $dd
    ld [hli], a
    dec a
    jp z, $ea9d

    ld e, [hl]
    add sp, $34
    ret z

    ld e, h
    and b
    xor b
    ld [hl], b
    ld c, b
    ldh a, [$b8]

jr_01a_4a77:
    ret nz

    ld a, b
    or b
    db $fc
    jr nc, jr_01a_4a49

    jr nc, jr_01a_4a77

    nop
    jr jr_01a_4a82

jr_01a_4a82:
    inc a
    jr jr_01a_4ac1

    jr jr_01a_4ac3

    nop
    daa
    jr jr_01a_4ab1

    add hl, de
    add hl, hl
    ld d, $3b
    rlca
    ld a, [hli]
    dec d
    inc a
    inc de
    ccf
    db $10
    dec sp
    inc d
    sbc a
    add e
    adc e
    inc b
    inc [hl]
    inc hl
    ld h, e
    ld b, b
    inc bc
    nop

jr_01a_4aa2:
    inc b
    inc bc
    add hl, bc
    rlca
    dec de
    inc b
    ccf
    inc de
    ccf
    inc d
    ccf
    db $10
    daa
    jr jr_01a_4ae3

jr_01a_4ab1:
    dec c
    ld [hl], $0d
    dec hl
    rla
    daa
    jr @+$30

    ld de, $0c1f
    rra
    inc c
    ld e, $00
    nop

jr_01a_4ac1:
    nop
    inc bc

jr_01a_4ac3:
    nop

jr_01a_4ac4:
    inc b
    inc bc
    ld [$1907], sp
    rlca
    ccf
    db $10
    ccf
    rla
    ccf
    db $10
    cpl
    db $10
    ccf
    inc b
    cpl
    dec d
    ld c, a
    inc sp
    ld c, a
    jr nc, jr_01a_4b39

    dec l
    ccf
    inc c
    rra
    nop
    ld h, a
    jr nz, jr_01a_4aa2

jr_01a_4ae3:
    sub h

jr_01a_4ae4:
    sbc a
    nop
    ld a, $11
    ld a, [hl-]
    dec d
    dec sp
    rla
    daa
    ld e, $3f
    dec c
    rra
    rlca
    rla
    ld [$0d12], sp
    inc de
    dec c
    ld e, $01
    ccf
    inc c
    ld a, $0d
    rra
    nop
    rlca
    nop
    dec de
    rlca
    ld a, h
    dec de
    xor $1d
    ld [hl], a
    ld c, $3f
    nop
    ld a, a
    inc d
    ld a, a
    ld [hl], $ef
    ld e, $ff
    ld b, b
    ldh a, [$6f]
    ld [hl], c
    ld l, $3e
    ld bc, $0003
    ld bc, $0700
    nop
    ret nz

    nop
    jr nz, jr_01a_4ae4

    ret nc

    ldh [rOBP0], a
    or b
    add sp, $50
    ld h, h
    ret c

    db $e4
    ret c

    ld hl, sp-$40
    and b
    ret nz

    ldh [rP1], a
    sub b
    ld h, b
    add sp, -$10
    inc b

jr_01a_4b39:
    ld hl, sp-$04
    nop
    db $fc
    ld a, b
    cp $00  ; and a / or a
    nop
    nop
    rlca
    nop
    dec de
    rlca
    db $fc
    dec de
    ld l, [hl]
    dec e
    scf
    ld c, $3f
    nop
    ld a, a
    jr jr_01a_4bd0

    ld [hl], $ef
    ld e, $ff
    ld b, b
    ldh a, [$6f]
    ld [hl], c
    ld l, $3f
    nop
    rlca
    inc bc
    rrca
    nop
    nop
    nop
    ret nz

    nop
    jr nc, @-$3e

    call z, Call_01a_42f0
    cp h
    ld [c], a
    ld e, h
    ld h, h
    ret c

    add sp, -$30
    ldh a, [$c0]
    and b
    ret nz

    ldh [rP1], a

jr_01a_4b76:
    sbc h
    ld h, b
    xor $f4
    sbc [hl]
    ld h, h
    cp $8c
    cp $00  ; and a / or a
    rrca
    nop
    or [hl]
    rrca
    ld sp, hl
    scf
    call c, $ef3b
    inc e
    ld a, [hl]
    ld bc, $29ff
    rst $38
    ld l, l
    cp $1d
    ei
    ld h, h
    push af
    ld l, d
    ld h, c
    ld e, $13
    inc c
    rrca
    nop
    rra
    inc bc
    rra
    nop
    add b
    nop
    ld b, b
    add b
    and b
    ret nz

    sub b
    ld h, b
    ret z

    or b
    ret z

    or b
    ret nc

    and b
    ld h, b
    add b
    ret nz

    nop
    ld b, b
    add b
    jr nz, jr_01a_4b76

    ldh a, [$e0]
    db $10
    ldh [$e0], a
    nop
    ldh [$c0], a
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0306
    rrca
    ld b, $0f
    inc bc
    rrca
    dec b

jr_01a_4bd0:
    ld a, a
    nop
    pop af
    ld l, [hl]
    ldh a, [$6f]
    ld a, a
    nop
    db $e4
    ld e, a
    di
    ld l, [hl]
    ld a, e
    inc [hl]
    ld a, a
    nop
    inc hl
    ld [bc], a
    ld h, [hl]
    inc b
    ld a, c
    ld bc, $18fd
    ld d, [hl]
    cp b
    db $fd
    ld [hl], $7b
    or [hl]
    di
    ld c, $69
    or $bd
    ld a, d
    ld sp, hl
    ld b, $42
    cp h
    ld b, d
    cp h
    and h
    jr jr_01a_4c15

    nop
    add b
    nop
    nop
    nop
    inc bc
    nop
    inc d
    inc bc
    add hl, sp
    rla
    ld a, $11
    ld a, [hli]
    dec d
    add hl, de
    ld b, $17
    rrca
    jr jr_01a_4c21

    daa
    jr jr_01a_4c3e

jr_01a_4c15:
    ld d, $2f
    db $10
    cpl
    ld d, $1f
    ld b, $0f
    ld b, $06
    nop
    rrca

jr_01a_4c21:
    nop
    rra
    ld b, $3f
    ld b, $3f
    ld b, $2f
    ld d, $27
    jr jr_01a_4c58

    rla
    rla
    rrca
    daa
    ld e, $3f
    rla
    ccf
    dec d
    ld a, $11
    rra
    inc b
    dec bc
    ld b, $07
    nop

jr_01a_4c3e:
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    inc bc
    rrca
    inc b
    inc e
    dec bc
    jr c, jr_01a_4c53

    add hl, sp
    rla
    add hl, sp
    rla
    add hl, sp
    rla
    inc e

jr_01a_4c53:
    dec bc
    ld e, $09
    ld d, $0d

jr_01a_4c58:
    add hl, bc
    ld b, $0e
    ld bc, $060f
    ld b, $00
    inc c
    nop
    inc [hl]
    ld [$3846], sp
    ld b, c
    ld a, $8f
    ld [hl], b
    cp a
    ld l, a
    xor e
    ld [hl], a
    rst $08
    ld [hl], b
    db $db
    ld l, l
    cp a
    ld e, e
    ld [hl], a
    jr c, jr_01a_4ce6

    inc sp
    dec sp
    ld bc, $0073
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    xor b
    ld [hl], b
    inc h
    ld hl, sp+$34
    ret z

    call z, $c430
    cp b
    add $b8
    or a
    jp z, $b2ff

    rst $38
    or d
    rst $38
    add [hl]
    add a
    ld [bc], a
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
    rlca
    nop
    add hl, de
    ld b, $12
    dec c
    ld e, $0d
    ld de, $090e
    ld b, $07
    ld bc, $050b
    dec sp
    dec b
    inc hl
    dec e
    ld de, $110e
    rrca
    inc c
    inc bc
    inc bc
    nop
    ld a, $00   ; xor a
    ld a, a
    ld a, $fe
    inc b
    inc e
    ldh [$3c], a
    ret c

    inc a
    ret c

    call c, $fe20
    db $fc
    rst $38
    or [hl]
    rst $38
    sub h
    ld e, h
    and b
    or $38
    dec sp
    call c, $ec9f
    ld l, l
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_4ce6:
    nop
    nop
    nop
    nop
    jr c, jr_01a_4cec

jr_01a_4cec:
    ld d, h
    jr c, jr_01a_4d53

    jr @-$04

    inc a
    cp $44
    cp $00  ; and a / or a
    cp d
    ld b, h
    cp $54
    cp $54
    cp d
    ld a, h
    sub $38
    cp d
    ld b, h
    xor $54
    xor $54
    cp $38
    add d
    ld a, h
    xor $10
    cp $6c
    ld a, h
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
    inc bc
    nop
    dec b
    inc bc
    ld [$1507], sp
    ld a, [bc]
    ccf
    ld de, $1b2f
    daa
    inc e
    inc de
    dec c
    ld a, e
    dec b
    and $79
    ld l, l
    ld [hl-], a
    inc a
    rlca
    dec bc
    rlca
    rra
    nop
    rra
    rlca
    rrca
    nop
    ret nz

    nop
    and b
    ret nz

    ld [hl], b
    add b
    ld hl, sp+$70
    cp $c0
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$50
    db $ec
    ld [hl], b
    ld a, [c]

jr_01a_4d53:
    call z, $2ed7
    ccf
    and $de
    ldh a, [rNR50]
    ret c

    ld hl, sp+$00
    ldh [rP1], a
    add hl, bc
    nop
    ld a, [de]
    ld bc, $031d
    rra
    nop
    ld l, [hl]
    ld bc, $65ff
    rst $38
    ld h, [hl]
    adc a
    db $76
    ld c, e
    ld [hl], $25
    dec de
    dec de
    inc b
    rrca
    ld b, $1c
    inc bc
    ld l, $1d

jr_01a_4d7c:
    inc sp
    ld c, $1f
    nop
    ldh a, [rP1]
    ld [$e6f0], sp
    ld hl, sp-$02
    inc d
    ld a, [hl]
    add h
    or $ac
    ld [$f4fc], a
    ld l, b
    ret c

    ld h, b
    db $f4
    ld [$f8c4], sp
    call z, $f8f0
    nop
    jr jr_01a_4d7c

    db $e4
    jr @-$06

    nop
    dec de
    nop
    inc a
    dec de
    ccf
    jr @+$41

    nop
    inc l
    inc de
    cpl
    inc de
    cpl
    rla
    cpl
    inc d
    cpl
    inc d
    dec hl
    rla
    scf
    ld [$1f30], sp
    ld l, a
    rra
    ret nc

    ld l, a
    rst $28
    ld [hl], b
    rst $38
    nop
    add b
    nop
    ld b, b
    add b
    and b
    ret nz

    ldh a, [rLCDC]
    ld hl, sp+$10
    ld hl, sp+$50
    ld hl, sp-$30
    ret z

    ldh a, [$ae]
    ret nc

    ld d, a
    xor d
    and a
    ld e, d
    ld a, $e0
    ret c

    ldh [$3e], a
    ret z

    rst $38
    ld e, $ff
    nop
    dec de
    nop
    dec a
    dec de
    ccf
    jr jr_01a_4e26

    nop
    cpl
    ld de, $152f
    cpl
    rla
    dec hl
    ld d, $2b
    ld d, $15
    dec bc
    dec de
    inc b
    jr jr_01a_4e07

    daa
    rra
    ld a, b
    daa
    rst $30
    ld a, b
    ld a, a
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca

jr_01a_4e07:
    nop
    rrca
    inc bc
    rra
    inc b
    dec a
    inc de
    add hl, sp
    rla
    ld a, d
    ld d, l
    ld l, h
    ld d, e
    ld a, h
    ld h, e
    ld a, h
    ld [hl], e
    inc a
    dec sp
    rrca
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop

jr_01a_4e26:
    ret nz

    nop
    ldh [$c0], a
    ld hl, sp+$20
    cp h
    ret z

    sbc h
    add sp, -$62
    ld [$ea96], a
    ld e, $e6
    ld a, $de
    ld a, h
    cp h
    ldh a, [rSVBK]
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    inc bc
    rra
    inc b
    dec a
    inc de
    add hl, sp
    rla
    ld a, [hl-]
    dec d
    inc l
    inc de
    inc a
    inc hl
    inc a
    inc hl
    inc a
    inc sp
    rra
    inc e
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [$c0], a
    ld hl, sp+$20
    cp h
    ret z

    sbc h
    add sp, -$64
    add sp, -$6c
    add sp, $1c
    db $e4
    inc a
    call z, $9c7c
    ld hl, sp+$38
    ldh [$e0], a
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
    inc bc
    nop
    inc b
    inc bc
    ld a, [de]
    dec b
    ccf
    inc de
    ccf
    inc d
    ld a, a
    ld d, b
    ld h, a
    ld e, b
    ld a, a
    ld l, l
    ccf
    dec [hl]
    rra
    jr jr_01a_4eaa

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    ld a, [de]
    dec b

jr_01a_4eaa:
    ccf
    inc de
    ccf
    inc d
    ccf
    db $10
    ld h, a
    ld e, b
    ld a, a
    ld l, l
    ld [hl], a
    ld l, l
    dec sp
    scf
    rra
    jr jr_01a_4eca

    rrca
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
    inc bc
    nop
    dec c
    inc bc

jr_01a_4eca:
    ld e, $0d
    ld [hl], a
    ld c, $3b
    rlca
    ld c, $01
    ccf
    ld a, [bc]
    ld a, a
    ld e, e
    ld [hl], a
    ld l, a
    ccf
    jr nc, jr_01a_4efa

    rra
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
    ldh [rP1], a
    sub b
    ldh [rBCPS], a
    ldh a, [rNR50]
    ret c

    ld a, [c]
    inc l
    or d
    ld l, h
    ld a, [c]
    ld l, h
    or $6a
    sbc $66
    db $fc
    inc c

jr_01a_4efa:
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld e, $0d
    ld [hl], a
    ld c, $3b
    rlca
    ld c, $01
    ccf
    ld a, [bc]
    ccf
    dec de
    scf
    cpl
    jr c, jr_01a_4f4f

    rra
    jr @+$11

    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [$c8], a
    ldh a, [rNR50]
    ret c

    ld a, [c]
    inc l
    or d
    ld l, h
    ld a, [c]
    ld l, h
    db $f4
    ld l, b
    call c, $fc64
    ld c, h
    ld hl, sp+$18
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_01a_4f66

    jr nz, jr_01a_4f88

    ld b, b
    ccf
    ld b, b
    rrca
    ldh a, [$7f]

jr_01a_4f4f:
    add b
    ld a, a
    add b
    ccf
    ld b, b
    ld bc, $1f3e
    jr nz, jr_01a_4f98

    ld b, b
    rra
    jr nz, jr_01a_4f64

    jr jr_01a_4f5f

jr_01a_4f5f:
    rlca
    nop
    nop
    nop
    inc bc

jr_01a_4f64:
    inc bc
    inc e

jr_01a_4f66:
    rra
    jr nz, jr_01a_4f88

    jr nz, jr_01a_4f6e

    inc a
    ccf
    ret nz

jr_01a_4f6e:
    ld a, a
    nop
    ld a, a
    add b
    ccf
    ld b, b
    rlca
    jr jr_01a_4f96

    jr nz, @+$41

    ld b, b
    rra
    jr nz, jr_01a_4f80

    inc e
    nop
    inc bc

jr_01a_4f80:
    nop
    nop
    adc a
    nop
    db $f4
    rrca
    ei
    scf

jr_01a_4f88:
    db $fc
    dec de
    ld l, a
    inc e
    ld a, [hl-]
    dec b
    rst $38
    add hl, hl
    rst $38
    ld l, l
    ld a, a
    nop
    ld a, b
    scf

jr_01a_4f96:
    ld a, b
    scf

jr_01a_4f98:
    inc a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$88], a
    ld [hl], b
    call nz, $c4b8
    cp b
    call z, Call_01a_7eb0
    add h
    xor a
    db $76
    cpl
    or $2b
    or $2d
    ld a, [c]
    dec hl
    ldh a, [$f8]
    nop
    nop
    nop
    nop
    nop
    ld c, a
    nop
    db $f4
    rrca
    ei
    rla
    db $fc
    dec de
    ld l, a
    inc e
    ld a, [hl-]
    dec b
    rst $38
    add hl, hl
    rst $38
    ld l, l
    ld a, a
    nop
    ld a, b
    scf
    ld a, b
    scf
    inc a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$88], a
    ld [hl], b
    call nz, $c6b8
    cp b
    rst JumpTable
    and [hl]
    ld l, e
    sub [hl]
    xor l
    ld [hl], d
    cpl
    db $f4

jr_01a_4ff6:
    cpl
    or $2f
    or $2f
    or $ff
    ld [bc], a
    rlca
    nop
    nop
    nop
    rla
    nop
    jr c, jr_01a_501d

    inc sp
    rrca
    inc de
    inc c
    rla
    add hl, bc
    ld d, $0d
    dec d
    ld c, $10
    rrca
    add hl, bc
    ld b, $17
    ld [$0e13], sp
    add hl, de
    rlca
    inc c
    inc bc
    rlca

jr_01a_501d:
    nop
    inc bc
    nop
    nop
    nop
    ld hl, sp+$00
    db $fc
    ld b, b
    ld a, h
    and b
    cp b
    ld d, b
    cp $90
    rst $38
    add $7f
    sub $be
    ld d, b
    ld hl, sp+$00
    jr nc, jr_01a_4ff6

    ld [hl], b
    ldh [$f0], a
    ld h, b
    ld [hl], b
    add b
    ld hl, sp+$70
    ld hl, sp+$00
    rra
    nop

jr_01a_5042:
    ccf
    dec de
    ccf
    inc b
    dec a
    inc de
    add hl, sp
    rla
    add hl, hl
    rla
    add hl, de
    rlca
    inc c
    inc bc
    ld [de], a
    dec c
    dec d
    ld c, $12
    rrca
    add hl, de
    rlca
    inc c
    inc bc
    rlca
    nop
    inc bc
    nop
    nop
    nop
    ret nz

    nop
    ldh [$c0], a
    ld hl, sp+$20
    cp h
    ret z

    sbc h
    add sp, $14
    add sp, $58
    and b
    or b
    ret nz

    jr z, jr_01a_5042

    inc h
    ret c

    xor $1c
    sbc [hl]
    db $ec
    ld a, h
    add b
    ldh a, [$60]
    ld hl, sp+$60
    ld hl, sp+$00
    ld bc, $0200
    ld bc, $0007
    rrca
    rlca

jr_01a_5088:
    ccf
    ld bc, $001f
    rrca
    nop
    rrca
    dec b
    dec bc
    rlca
    rrca
    ld bc, $0e1d
    inc e
    rrca
    inc c
    inc bc
    rlca
    nop
    ld bc, $0000
    nop
    ldh [rP1], a
    ret nc

    ldh [$08], a
    ldh a, [$d4]

jr_01a_50a7:
    jr z, jr_01a_50a7

    call nz, $6cfa
    ld a, [c]
    inc e
    and $58
    db $ec
    ld d, b
    cp b
    ret nz

    add sp, $10
    jr c, jr_01a_5088

    ld c, b
    or b
    db $fc
    nop
    db $fc
    ld [hl], b
    ld hl, sp+$00
    inc bc
    nop
    ld b, $01
    dec e
    inc bc
    add hl, sp

jr_01a_50c7:
    rla
    ld a, $11

jr_01a_50ca:
    ccf
    rla
    ld h, a
    jr jr_01a_50ca

    ld l, h
    ld [hl], a
    dec l
    dec sp
    rlca
    rla
    ld [$073a], sp
    dec h

jr_01a_50d9:
    dec de
    ld e, $01
    inc bc
    nop
    ld bc, $e000
    nop
    sub b
    ldh [$b8], a
    ret nz

    sbc h
    add sp, -$04
    ld [$e8fc], sp
    db $e4
    jr jr_01a_50c7

    jr nc, jr_01a_50d9

    or b
    ret nc

    ldh [$e8], a
    db $10
    ld c, b
    or b
    ld hl, sp-$80
    ld a, b
    or b
    ld hl, sp+$30
    ldh a, [rP1]
    rrca
    nop
    rra
    dec bc
    rra
    ld b, $3e
    dec c
    dec sp
    inc c
    ld [hl], a
    add hl, bc
    ld a, a
    inc bc
    rra
    dec bc
    ld e, $0b
    dec e
    ld [bc], a
    rla
    ld [$071a], sp
    add hl, sp
    rlca
    inc a
    dec de
    ccf
    inc c
    rra
    nop
    add b
    nop
    ldh [rP1], a
    ret nc

    ldh [rBCPS], a
    ldh a, [$be]
    ld [hl], b
    adc c
    db $76
    sub c
    ld l, [hl]
    add d
    ld a, h
    add h
    ld a, b
    jr c, @-$3e

jr_01a_5134:
    and $18

jr_01a_5136:
    daa
    sbc $d7
    xor $3e

jr_01a_513b:
    ret nz

jr_01a_513c:
    db $fc
    jr c, jr_01a_513b

    nop
    nop
    nop

jr_01a_5142:
    inc bc
    nop
    inc l
    inc bc
    ccf
    inc c
    scf
    ld c, $1b
    ld b, $0f
    nop
    ccf
    ld a, [bc]
    ccf
    ld a, [de]
    rla
    ld c, $09
    ld b, $06
    ld bc, $0306
    rrca
    ld bc, $0e1f
    rra
    nop
    nop
    nop
    ldh a, [rP1]
    call z, $e230
    call c, $dce2
    ld [c], a
    inc e
    inc h
    ret c

    inc h
    ret c

    jr z, jr_01a_5142

    jr nc, jr_01a_5134

    jr nc, jr_01a_5136

    ret c

    jr nz, jr_01a_51b5

    add sp, -$04
    ret z

    db $fc

jr_01a_517d:
    jr jr_01a_517d

    nop
    inc bc
    nop
    dec b
    inc bc
    inc c
    inc bc
    rla
    rrca
    ld a, a
    nop
    ccf
    nop
    rst $38
    dec bc
    cp a
    ld l, e
    rst $38
    dec d
    rst $30
    jr jr_01a_513c

    ld a, e
    ld a, a
    inc bc
    ccf
    jr jr_01a_51b7

    inc bc
    dec sp
    inc e
    ccf
    nop
    ret nz

    nop
    ldh a, [$c0]
    adc b
    ld [hl], b
    call nz, $efb8
    ld d, b
    db $fd
    ld a, [bc]
    db $fd
    ld e, d
    or $58
    xor h
    ret nc

    ld a, b
    add b
    ret nc

jr_01a_51b5:
    jr nz, jr_01a_51cf

jr_01a_51b7:
    ldh [$28], a
    ret nc

    db $fc
    nop
    sbc $3c
    cp $00  ; and a / or a
    dec bc
    nop
    rrca
    inc bc
    rra
    nop
    rra
    nop
    rra
    rrca
    rst $38
    rrca
    cp a
    ld h, d
    rst $38

jr_01a_51cf:
    dec d
    rst $30
    jr @-$57

    ld a, e
    ld a, a
    inc bc
    ccf
    jr jr_01a_51f3

    ld bc, $0003
    rlca
    inc bc
    rrca
    nop
    ldh [rP1], a
    db $10
    ldh [$88], a
    ldh a, [$ec]
    ld d, b
    db $fc
    xor b
    cp $d8
    push af
    ld e, d
    xor c
    sub $7e
    add b
    ret c

jr_01a_51f3:
    jr nz, jr_01a_5209

    add sp, $24
    ret c

    adc $30
    cp $04
    ld a, [hl]
    sbc h
    cp $00  ; and a / or a
    nop
    nop
    rla
    nop
    jr c, jr_01a_521d

    inc sp
    rrca
    inc de

jr_01a_5209:
    inc c
    rla
    add hl, bc
    ld d, $0d
    dec d
    ld c, $10
    rrca
    add hl, bc
    ld b, $17
    ld [$0e13], sp
    nop
    nop
    nop
    nop
    nop

jr_01a_521d:
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    db $fc
    ld b, b
    ld a, h
    and b
    cp b
    ld d, b
    cp $90
    rst $38
    add $7f
    sub $be
    ld d, b
    ld hl, sp+$00
    jr nc, @-$3e

    ld [hl], b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop

jr_01a_5242:
    ccf
    dec de
    ccf
    inc b
    dec a
    inc de
    add hl, sp
    rla
    add hl, hl
    rla
    add hl, de
    rlca
    inc c
    inc bc
    ld [de], a
    dec c
    dec d
    ld c, $12
    rrca
    add hl, de
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [$c0], a
    ld hl, sp+$20
    cp h
    ret z

    sbc h
    add sp, $14
    add sp, $58
    and b
    or b
    ret nz

    jr z, jr_01a_5242

    inc h
    ret c

    xor $1c
    sbc [hl]
    db $ec
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0007
    rrca
    rlca

jr_01a_5288:
    ccf
    ld bc, $001f
    rrca
    nop
    rrca
    dec b
    dec bc
    rlca
    rrca
    ld bc, $0e1d
    inc e
    rrca
    inc c
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nc

    ldh [$08], a
    ldh a, [$d4]

jr_01a_52a7:
    jr z, jr_01a_52a7

    call nz, $6cfa
    ld a, [c]
    inc e
    and $58
    db $ec
    ld d, b
    cp b
    ret nz

    add sp, $10
    jr c, jr_01a_5288

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, $01
    dec e
    inc bc
    add hl, sp

jr_01a_52c7:
    rla
    ld a, $11

jr_01a_52ca:
    ccf
    rla
    ld h, a
    jr jr_01a_52ca

    ld l, h
    ld [hl], a
    dec l
    dec sp
    rlca
    rla
    ld [$071a], sp
    nop

jr_01a_52d9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sub b
    ldh [$b8], a
    ret nz

    sbc h
    add sp, -$04
    ld [$e8fc], sp
    db $e4
    jr jr_01a_52c7

    jr nc, jr_01a_52d9

    or b
    ret nc

    ldh [$e8], a
    db $10
    ld c, b
    or b
    ld a, b
    nop
    ld a, b
    jr nc, @+$7a

    jr nc, jr_01a_532f

    nop
    rrca
    nop
    rra
    dec bc
    rra
    ld b, $3e
    dec c
    dec sp
    inc c
    ld [hl], a
    add hl, bc
    ld a, a
    inc bc
    rra
    dec bc
    ld e, $0b
    dec e
    ld [bc], a
    rla
    ld [$071a], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ret nc

    ldh [rBCPS], a
    ldh a, [$be]
    ld [hl], b
    adc c
    db $76
    sub c
    ld l, [hl]
    add d

jr_01a_532f:
    ld a, h
    add h
    ld a, b
    jr c, @-$3e

    and $18
    daa
    sbc $17
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld e, e
    rlca
    ld a, h
    dec de
    ld l, [hl]
    dec e
    scf
    ld c, $3d
    ld [bc], a
    ld a, a
    inc d
    ld a, a
    ld [hl], $2f
    ld e, $7f
    nop
    pop af
    ld l, [hl]
    ld a, [c]
    ld l, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sbc h
    ldh [$e2], a
    db $fc
    ld b, d
    cp h
    db $e4
    ld e, b
    ld l, b
    ret nc

    add sp, -$30
    ldh a, [$c0]
    and b
    ret nz

    ldh [rP1], a
    ld e, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    ld [bc], a
    rra
    add hl, bc
    rra
    inc c
    scf
    dec c
    dec l
    rla
    dec h
    dec de
    ccf
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    db $fc
    db $f4
    rst $38
    nop

jr_01a_53a6:
    rst $38
    pop hl
    rst $38
    jr nc, @+$01

    add sp, -$0a
    cp d
    db $fc
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    rlca
    nop
    dec bc
    rlca
    dec de
    inc b

jr_01a_53c8:
    ccf
    inc de
    ccf
    inc d
    ccf
    db $10
    daa
    jr jr_01a_5410

    dec c
    scf
    dec c
    ld l, e
    rla
    xor a
    jr @-$5f

    inc l
    adc h
    ld [de], a
    ld b, b
    nop
    ccf
    ld b, b
    nop
    nop
    ret nz

jr_01a_53e3:
    nop
    jr nz, jr_01a_53a6

    jr jr_01a_53c8

    call c, $fce8
    jr z, @-$02

    ld [$18e4], sp
    ld hl, sp-$50

jr_01a_53f2:
    db $ec
    or b
    sub $e8
    push af
    jr jr_01a_53f2

    inc [hl]
    ld sp, $0248
    nop
    db $fc
    ld [bc], a
    rra
    nop
    daa
    dec de
    ld e, e
    inc h
    cp l
    ld d, e
    ld sp, hl
    rla
    ld a, [hl-]
    dec d
    ld l, h
    inc de
    ld e, h
    inc hl

jr_01a_5410:
    ld c, h
    inc sp
    dec sp
    inc b
    rla
    rrca
    jr jr_01a_541f

    rra
    nop
    rrca
    nop
    ld bc, $0000

jr_01a_541f:
    nop
    ret nz

    nop
    ldh [$c0], a
    ret c

    jr nz, jr_01a_53e3

    ret z

    sbc h
    add sp, -$64
    add sp, -$6c
    add sp, $38
    ret nz

    ret c

    jr nc, jr_01a_545b

    ldh a, [$c8]
    ldh a, [$38]

jr_01a_5437:
    ret nz

    ret z

    jr nc, jr_01a_5437

    ld [hl], b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rlca
    nop
    add hl, bc
    ld b, $16
    rrca
    daa
    jr jr_01a_5472

    dec de
    ld c, l
    dec sp
    ld c, d
    dec a
    ld b, c
    ld a, $43
    inc a
    ccf
    nop
    inc d
    rrca
    inc de
    rrca
    inc c

jr_01a_545b:
    inc bc
    rlca
    nop
    ld bc, $0000
    nop
    ldh a, [rP1]
    ld hl, sp-$80
    ld hl, sp+$40

jr_01a_5468:
    ld [hl], b

jr_01a_5469:
    and b
    db $fc
    jr nz, jr_01a_5469

    adc b
    cp $a0
    ld e, [hl]
    xor h

jr_01a_5472:
    cp [hl]
    ld b, h
    rst $38
    ld [$2add], sp
    db $eb
    or [hl]

jr_01a_547a:
    or $1c
    db $fc
    ld l, b
    ld hl, sp+$00
    nop
    nop
    rlca
    nop
    ld [$3307], sp
    rrca
    ld [hl], d
    cpl
    ld a, h
    inc hl
    ld [hl], a
    cpl
    ld e, a
    jr nz, jr_01a_54c0

    db $10
    cpl
    dec de
    scf
    rrca
    cpl
    db $10
    ld de, $1f0e
    nop
    ccf
    ld c, $1f
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    jr nc, jr_01a_5468

    jr c, jr_01a_547a

    ld hl, sp+$10
    cp h
    ret nc

    db $ec
    db $10
    sbc $2c
    sbc $6c
    cp h
    ret nc

    ld hl, sp+$30
    ld [hl], h
    adc b
    xor h
    ret c

    ret c

    ld [hl], b
    ld hl, sp+$00

jr_01a_54c0:
    ld de, $3a00
    ld de, $386f
    rst AddAToHL
    ld l, h
    cp e
    ld d, h
    rst $38
    nop
    ccf
    ld a, [de]
    ccf
    ld [de], a
    rra
    dec bc
    rra
    dec c
    dec c
    ld [bc], a
    inc b
    inc bc
    rlca
    nop
    rrca
    inc bc
    rlca
    nop
    nop
    nop
    ldh a, [rP1]
    ld l, h
    ldh a, [$fa]
    inc e
    db $db
    db $e4
    rst $20

jr_01a_54e9:
    ld a, [hl-]
    rst $30
    ld a, [bc]
    db $fd
    sub $fb
    call nc, Call_01a_78f6
    db $ec
    jr nc, jr_01a_54e9

    ld [$d83c], sp
    call nz, $f838
    add b
    db $fc
    jr c, @-$06

    nop
    inc bc
    nop
    inc c
    inc bc
    inc de
    rrca
    db $10
    rrca
    ccf
    db $10
    ld l, a
    ld e, $f7
    ld c, $7f
    nop
    rra

jr_01a_5511:
    ld a, [bc]
    ld a, $1f
    pop af
    ld c, $fe
    ld b, c
    cp a
    ld d, [hl]
    sbc a
    ld h, [hl]
    add a
    ld a, c
    db $fd
    nop
    ret nz

    nop
    jr nc, @-$3e

    adc b
    ldh a, [$84]
    ld a, b
    call nz, $e8b8
    ret nc

    ld hl, sp-$40
    ldh a, [$c0]
    ldh a, [rLCDC]
    ret z

    jr nc, @+$4a

    or b
    ld c, b
    or b
    add sp, $10
    ldh a, [$60]
    ldh a, [$c0]
    ld hl, sp+$00
    scf
    nop
    ld a, $07
    ld a, a
    ld bc, $007f
    ld a, a
    ld a, $7f
    dec l
    ld a, a
    dec l
    ld a, a
    scf
    ccf
    ld [de], a
    rra
    ld bc, $0d13
    ld de, $0f0e
    nop
    rlca
    nop
    rrca
    rlca
    rra
    nop
    add b
    nop
    ld b, b
    add b
    ccf
    ret nz

    cp l
    sbc $e9
    ld d, [hl]
    db $fd
    adc d
    ld sp, hl
    sub [hl]
    ld a, a
    add b
    ld hl, sp+$30
    ld hl, sp-$50
    ld hl, sp-$80
    ret z

    jr nc, jr_01a_5511

    ld h, b
    db $fc
    ld [$98fc], sp
    db $fc
    nop
    rrca
    nop
    ld a, a
    rlca
    rst $38
    nop
    ld a, a
    rlca
    rst $38
    inc c
    ld a, a
    rla
    cpl
    dec e
    ld d, $0f
    ccf
    nop
    ld d, h
    dec sp
    ld a, e
    scf
    jr c, @+$09

    ccf
    jr jr_01a_55ca

    inc e
    rla
    inc c
    ld c, $01
    ret nz

    nop
    or b
    ld b, b
    ld hl, sp-$70
    ld hl, sp+$30
    db $f4
    xor b
    or d
    db $ec
    and d
    call c, $00fc
    inc h
    ret c

    ld a, [de]
    db $ec
    sbc $ec
    inc e
    ldh [$fc], a
    jr @-$0a

    jr c, @-$16

    jr nc, jr_01a_562f

    add b
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    dec h
    ld a, a
    dec l

jr_01a_55ca:
    ld c, a
    ccf
    cpl
    ld e, $1b
    rlca
    ccf
    nop
    ld d, h
    dec sp
    ld a, e
    scf
    jr c, @+$09

    ccf
    jr @+$31

    inc e
    rla
    inc c
    ld c, $01
    ldh [rP1], a
    ret nc

    ld h, b
    add sp, $30
    db $fc
    ld c, b
    db $fc
    ld l, b
    db $e4
    ld hl, sp-$24
    ldh [$b8], a

jr_01a_55ef:
    ret nz

    db $e4
    jr jr_01a_562d

    call z, $ecde
    inc e
    ldh [$fc], a
    jr jr_01a_55ef

    jr c, @-$16

    jr nc, jr_01a_566f

    add b
    ld [bc], a
    nop
    rlca
    ld [bc], a
    rlca
    inc bc
    rlca
    nop
    ld [$1307], sp

jr_01a_560b:
    inc c
    inc d

jr_01a_560d:
    dec bc
    jr c, jr_01a_5617

    dec sp
    rla
    ccf
    inc d
    rst $38
    db $10
    rst $20

jr_01a_5617:
    ld e, b
    rst JumpTable
    ld l, l
    ld [hl], a
    dec c
    dec bc
    rlca
    rlca
    nop
    nop
    nop
    jr c, jr_01a_5624

jr_01a_5624:
    ld hl, sp+$30
    add sp, -$10
    ret nc

    jr nz, jr_01a_560b

    nop
    ret nc

jr_01a_562d:
    ldh [hFFD8], a

jr_01a_562f:
    jr nz, jr_01a_560d

jr_01a_5631:
    add sp, -$04
    jr z, jr_01a_5631

    ld [$18e4], sp
    ld a, [$efb4]
    or [hl]
    rst JumpTable
    and $e6
    nop
    rrca
    nop
    rrca
    inc bc
    rra
    inc b
    dec a
    inc de
    add hl, sp
    rlca
    ld a, d
    dec [hl]
    ld a, h
    inc sp
    inc [hl]
    dec bc
    inc c
    inc bc
    inc b
    inc bc
    rlca
    nop
    dec bc
    ld b, $17
    rrca
    rra
    inc c
    inc e
    nop
    nop
    nop
    ret nz

    nop
    ldh [$c0], a
    ld hl, sp+$20
    cp h
    ret z

    sbc h
    add sp, -$6c
    add sp, -$64
    ldh [$36], a

jr_01a_566f:
    call z, $b44e
    sbc [hl]
    ld h, b
    db $10
    ldh [$a0], a
    ld b, b
    ldh [$80], a
    ldh [$c0], a
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    rrca
    nop
    db $f4
    rrca
    ei
    scf
    db $fc
    dec de
    ld l, a
    inc e
    ld a, [hl-]
    dec b
    rst $38
    add hl, hl
    rst $38
    ld l, l
    ld e, a
    jr nc, jr_01a_56d1

    rrca
    inc e
    rrca
    rrca
    nop
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$88], a
    ld [hl], b
    call nz, $c4b8
    cp b
    call z, Call_01a_7eb0
    add b
    adc a
    db $76
    ld c, $f4
    sbc h
    ld l, b
    xor h
    ret c

    xor $dc
    rst $30
    ld c, $0e
    nop
    nop
    nop
    ld c, a
    nop
    db $f4
    rrca
    ei
    rla
    ld a, h
    dec de
    ld l, a
    inc e
    ld a, [hl-]
    dec b
    rst $38
    add hl, hl
    rst $38

jr_01a_56d1:
    ld l, l
    ld e, [hl]
    dec a
    inc hl
    inc e
    ld e, $01
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10

jr_01a_56e7:
    ldh [$88], a
    ld [hl], b
    call nz, $c4b8
    cp b
    ret z

    or b
    ld e, h
    and b
    and $1c
    ld a, h
    add sp, $7c
    add sp, -$14
    jr jr_01a_56e7

    ret c

    and $1c
    inc e
    nop
    rra
    nop

jr_01a_5702:
    ccf
    dec de
    ccf
    inc b
    dec a
    inc de
    add hl, sp
    rla
    add hl, hl
    rla
    add hl, de
    rlca
    inc c
    inc bc
    ld a, [de]
    dec c
    add hl, de
    ld c, $0f
    inc b
    inc b
    inc bc
    dec bc
    rlca
    rrca
    ld b, $0e
    inc b
    inc b
    nop
    ret nz

    nop
    ldh [$c0], a
    ld hl, sp+$20
    cp h
    ret z

    sbc h
    add sp, $14
    add sp, $58
    and b
    or b
    ret nz

    jr z, jr_01a_5702

    inc h
    ret c

    xor $1c
    ld a, $cc
    call c, $f0e0
    ld h, b
    ld [hl], b
    jr nz, @+$22

    nop
    rla
    nop
    jr c, jr_01a_575b

    inc sp
    rrca
    rla
    inc c
    inc hl
    dec e
    ld b, d
    dec a
    ld b, c
    ld a, $30
    rrca
    ld [$3707], sp
    ld [$3748], sp
    push af
    ld a, e
    ld a, e
    inc e
    ld a, [de]

jr_01a_575b:
    inc c
    inc e
    ld [$0018], sp
    ld hl, sp+$00
    db $fc
    ld b, b
    ld a, h
    and b
    cp b
    ld d, b
    cp $90
    rst $38
    add $7f
    sub $fe
    db $10
    ld a, b
    add b
    sub b
    ld h, b
    cp b
    ld [hl], b
    ld hl, sp-$50
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1d00], sp
    ld [$0d1a], sp
    ld a, h
    dec de
    ld a, [$4f75]
    jr nc, jr_01a_57ce

    dec b
    dec bc
    ld b, $09
    ld b, $3d
    ld [bc], a
    ld [hl], e
    inc a
    inc [hl]
    dec de
    ld e, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nc

    ldh [$38], a
    ret nz

    db $fc
    jr c, @+$01

    ldh [$fe], a
    add b
    db $fc
    nop
    db $fc
    xor b
    db $f4
    cp b
    ld l, d
    db $f4
    rst $30
    ld c, $7f
    and $e6
    nop
    nop
    nop
    inc b
    nop
    ld c, $04
    rrca
    ld b, $0b
    ld b, $06
    ld bc, $031d
    add hl, sp
    rla

jr_01a_57ce:
    ld a, $11

jr_01a_57d0:
    ccf

jr_01a_57d1:
    rla
    ld h, a
    jr jr_01a_57d0

jr_01a_57d5:
    ld l, h
    ld [hl], a
    dec l
    dec sp
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01a_57e2

jr_01a_57e2:
    ld [hl], b

jr_01a_57e3:
    jr nz, jr_01a_57d5

    ld h, b
    ldh a, [rP1]
    sub b
    ldh [$b8], a
    ret nz

    sbc h
    add sp, -$04
    ld [$e8fc], sp
    db $e4
    jr jr_01a_57d1

    jr nc, jr_01a_57e3

    or b
    db $f4
    ret z

    db $f4
    jr c, jr_01a_5875

    jr nc, jr_01a_582f

    nop
    nop
    nop
    ld [hl], b
    nop

jr_01a_5804:
    rst $28
    ld [hl], b
    db $76
    cpl
    jr c, jr_01a_5811

    ld a, [hl]
    add hl, sp
    rst $38
    ld c, $ff
    inc bc
    ld a, a

jr_01a_5811:
    nop
    ld a, a
    ld a, [hli]
    ld e, a
    ld a, [hl-]
    dec l
    ld e, $1e
    ld bc, $0f1c
    dec e
    ld c, $0e
    nop
    nop
    nop
    jr jr_01a_5824

jr_01a_5824:
    cp b
    db $10
    ld e, b
    or b
    ld a, $d8
    sbc a
    ld l, [hl]
    sub $2c
    db $fc

jr_01a_582f:
    ld b, b
    xor b
    ret nc

    jr z, jr_01a_5804

    ld c, b
    or b
    sub b
    ld h, b
    and b
    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld e, e
    rlca
    ld a, h
    dec de
    ld l, [hl]
    dec e
    scf
    ld c, $3d
    ld [bc], a
    ld a, a
    inc d
    ld a, a
    ld [hl], $2f
    ld e, $7e
    ld bc, $7fe0
    and $7b
    ld a, a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ldh [rP1], a
    sbc h
    ldh [$e2], a
    db $fc
    ld b, d
    cp h
    db $e4
    ld e, b
    ld l, b

jr_01a_586d:
    ret nc

    add sp, -$30
    cp [hl]
    ret nz

    rst $30
    ld c, $2e

jr_01a_5875:
    call c, $e81c
    inc e
    add sp, -$12
    db $fc
    rst $30
    ld c, $0e
    nop
    rra
    nop
    ccf
    ld [bc], a
    ld a, $05
    dec e
    ld a, [bc]
    ld a, a
    add hl, bc
    rst $38
    ld h, e
    cp $6b
    ld c, a
    jr nc, jr_01a_58b6

    ld a, [de]
    inc e
    inc bc
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, $00
    inc e
    add sp, -$34
    ldh a, [$e8]
    jr nc, jr_01a_586d

    cp b
    ld b, d
    cp h
    add d
    ld a, h
    inc c
    ldh a, [rNR10]
    ldh [$fc], a
    nop
    ld [de], a
    db $ec

jr_01a_58b6:
    xor a
    sbc $df
    jr c, jr_01a_5913

    jr nc, jr_01a_58f5

    db $10
    stop
    scf
    nop
    ld a, a
    inc sp
    ld a, e
    inc [hl]
    ld a, l
    inc bc
    ld c, c
    scf
    jr z, jr_01a_58e3

    cpl
    db $10
    dec de
    rlca
    cpl
    rra
    ld e, a
    ld a, $7d
    ld a, $b7
    ld a, c
    cp $45
    rst $38
    inc c
    sub d
    inc c
    inc c
    nop
    inc c
    nop
    sub d

jr_01a_58e3:
    inc c
    rst $38
    inc c
    cp $45
    or a

jr_01a_58e9:
    ld a, b
    ld a, h
    dec sp
    ld e, c
    daa
    add hl, sp
    rla
    ld a, $11
    ccf
    rla
    daa

jr_01a_58f5:
    jr jr_01a_5952

    inc l
    ld [hl], a
    dec c
    ld a, e
    scf
    ld a, a
    jr nc, jr_01a_592f

    nop
    nop
    nop
    adc a
    nop
    db $f4
    rrca
    ei
    scf
    db $fc
    dec de
    ld l, a
    inc e
    ld a, [hl-]
    dec b
    rst $38
    add hl, hl
    rst $38
    ld l, l
    ld a, a

jr_01a_5913:
    nop
    ld a, b
    scf
    ld a, b
    scf
    inc a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    cp a
    nop
    ld a, e

jr_01a_5925:
    add [hl]
    ld l, $dc
    jp c, $fc3c

    jr c, jr_01a_58e9

    ld a, b
    cp h

jr_01a_592f:
    ld [hl], b
    cp $04
    xor a
    db $76
    cpl
    or $2b
    or $2d
    ld a, [c]
    dec hl
    ldh a, [$f8]
    nop
    nop
    nop
    inc bc
    nop
    rra
    nop
    ccf
    dec de
    ccf
    jr jr_01a_5986

    inc bc
    add hl, hl
    rla
    ld a, [hli]
    dec d
    inc l
    inc de
    inc l
    inc de

jr_01a_5952:
    inc l
    inc de
    inc d
    dec bc
    inc de
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret c

    nop
    db $fc
    ret c

    db $fc
    jr jr_01a_5925

    ret nz

    sub h
    add sp, -$6c
    add sp, -$6c
    add sp, $34
    ret z

    ld c, b
    or b
    adc b
    ld [hl], b
    jr z, @-$0e

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
    ld bc, $1f00
    nop

jr_01a_5986:
    dec a
    ld a, [de]
    dec sp
    rla
    ccf
    ld b, $2f
    inc d
    cpl
    inc d
    dec hl
    rla
    dec d
    dec bc
    inc de
    inc c
    ld [$0407], sp
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    ld [$8cfe], sp
    cp $c4
    rst $38
    add b
    db $fd
    xor $fa
    db $fc
    cp $e0

jr_01a_59b2:
    rst JumpTable
    and $ef
    ld d, $0e
    ldh a, [$f0]
    nop
    add b
    nop
    nop
    nop
    nop
    nop

jr_01a_59c0:
    inc bc
    nop
    inc c
    inc bc
    rra
    inc c
    ld [hl], a
    ld c, $3b
    ld b, $0f
    nop
    ccf

jr_01a_59cd:
    ld a, [bc]
    ccf
    ld a, [de]
    rla
    ld c, $0b
    inc b
    inc c
    inc bc
    ld [$0007], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nc

    jr nz, jr_01a_59cd

    ret nc

    db $e4
    ret c

    ld [c], a
    inc e
    ld [hli], a
    call c, $d824
    jr z, jr_01a_59c0

    jr nc, jr_01a_59b2

    jr nc, @-$3e

    ret nc

    jr nz, jr_01a_5a1f

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    add hl, bc
    rlca
    dec e
    inc bc
    add hl, sp

jr_01a_5a07:
    rla
    ccf
    db $10
    ld a, a
    rla
    rst $20
    ld e, b
    ld a, e
    inc l
    scf
    dec c
    dec de
    rlca
    rla
    ld [$0f14], sp
    dec de

jr_01a_5a19:
    rlca
    ld e, $01
    scf
    ld c, $1f

jr_01a_5a1f:
    nop
    ret nz

    nop
    ld h, b
    add b
    cp b
    ret nz

    sbc h
    add sp, $7c
    adc b
    db $fc
    add sp, -$1c
    jr jr_01a_5a07

    jr nc, jr_01a_5a19

    or b
    ret nc

    ldh [$e8], a
    db $10
    ld c, h
    or b
    db $fc
    add b
    ld a, b
    or b
    ld hl, sp+$30
    ld hl, sp+$00
    rra
    nop
    ccf
    dec de
    ccf
    inc b
    dec a
    inc de
    add hl, sp
    rla
    jr z, @+$19

    ld a, [de]
    dec b
    dec c
    inc bc
    inc d
    dec bc
    inc d
    dec bc
    rla
    inc c
    dec de
    rlca
    inc e
    inc bc
    rra
    inc c
    ccf
    inc c
    ccf
    nop
    ret nz

    nop
    ldh [$c0], a
    ld hl, sp+$20
    cp h
    ret z

    sbc h
    add sp, -$6c
    add sp, -$68

jr_01a_5a6d:
    ldh [$30], a
    ret nz

    ld l, b
    sub b
    xor h
    ld e, b
    ld e, h
    add sp, -$68
    ldh [$38], a
    ret nz

    ret z

    jr nc, jr_01a_5a6d

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    dec bc
    dec b
    rra
    ld [bc], a
    cpl
    inc d
    cpl
    inc d
    dec hl
    rla
    dec h
    dec de
    ld [de], a
    dec c
    add hl, bc
    ld b, $05
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    db $ec
    ret nz

jr_01a_5aa4:
    cp $00  ; and a / or a
    cp $e0
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    rst $38
    ld a, [c]
    rst $38
    add $ff
    db $ec
    db $fd
    jp z, $36f9

    cp $d8
    db $fc
    ret nz

    ret z

    jr nc, @+$32

    nop
    nop
    nop
    rlca
    nop
    dec bc
    rlca
    dec de
    inc b

jr_01a_5ac6:
    ccf
    inc de
    ccf
    inc d
    ccf
    db $10
    daa
    jr jr_01a_5aee

    rrca
    rla
    add hl, bc
    dec hl
    rla
    ld l, a
    jr nc, jr_01a_5b4f

    daa
    scf
    rrca
    ld e, $01
    scf
    ld c, $1f
    nop
    ret nz

    nop
    jr nz, jr_01a_5aa4

    jr jr_01a_5ac6

    call c, $fce8
    jr z, @-$02

    ld [$18e4], sp

jr_01a_5aee:
    ld hl, sp-$10
    add sp, -$70
    call nc, $f6e8
    inc c
    ld e, $e4
    db $ec
    ldh a, [$78]
    add b
    db $ec
    ld [hl], b
    ld hl, sp+$00
    rlca
    nop
    add hl, bc
    rlca
    dec de
    inc b
    rra
    add hl, bc
    rra
    ld a, [bc]
    rra
    ld [$0c13], sp
    rrca
    rlca
    dec bc
    inc b
    dec d
    dec bc
    scf
    jr @+$7a

    scf
    scf
    rrca
    ld e, $01
    scf
    ld c, $1f
    nop
    ret nz

    nop
    or b
    ret nz

    inc e
    ldh [$ee], a
    db $f4
    cp $14
    cp $04
    ld a, [c]
    inc c
    db $fc
    ld hl, sp-$0c
    ret z

    ld [$faf4], a
    inc b
    ld a, [bc]
    db $f4
    xor $f4
    ld a, h
    add b
    db $ec
    ld [hl], b
    ld hl, sp+$00
    ld bc, $0200
    ld bc, $0106
    rrca
    inc b
    rrca
    dec b
    rrca
    inc b
    add hl, bc
    ld b, $07

jr_01a_5b4f:
    inc bc
    dec b
    ld [bc], a
    ld a, [bc]
    dec b
    dec de
    inc c
    inc a
    dec de
    dec de
    rlca
    rra
    nop
    scf
    ld c, $1f
    nop
    ldh a, [rP1]
    ld l, b
    ldh a, [$c6]
    jr c, @-$07

    ld a, [$0aff]
    rst $38
    ld [bc], a
    ld sp, hl
    ld b, $fe
    db $fc
    ld a, [$f564]
    ld a, [$02fd]
    dec b
    ld a, [$f4fe]
    inc a
    ret nz

    db $ec
    ld [hl], b
    ld hl, sp+$00
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
    ld bc, $0300
    ld bc, $0306
    inc b
    inc bc
    db $f4
    dec b
    ld a, [$c53a]
    dec sp
    call nz, $443b
    rlca
    jr c, jr_01a_5ba1

jr_01a_5ba1:
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
    nop
    ld a, a
    add hl, de
    ld h, [hl]
    dec e

jr_01a_5bb7:
    ld [hli], a
    ld c, $11
    ld b, $19
    ld bc, $071e
    jr jr_01a_5bc1

jr_01a_5bc1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01a_5bcb

jr_01a_5bcb:
    inc a
    jr jr_01a_5bf2

    jr jr_01a_5bb7

    jr @-$17

    ld e, d
    and l
    db $db
    inc h
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr c, jr_01a_5be2

jr_01a_5be2:
    ld [hl], h
    jr c, @-$64

    ld a, h
    adc [hl]
    ld a, h
    ld [c], a
    ld a, h
    ld [hl], h
    jr c, jr_01a_5c19

    jr jr_01a_5c07

    nop
    nop
    nop

jr_01a_5bf2:
    inc a
    nop
    ld e, d
    inc a
    or d
    ld a, h
    xor $7c
    sbc d
    ld a, h
    or h
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_5c07:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld b, $00
    inc c
    nop
    ld [$1900], sp
    nop

jr_01a_5c19:
    inc de
    nop
    inc sp
    nop
    daa
    nop
    ld h, a
    nop
    nop
    nop
    ld bc, $0700
    nop
    inc e
    nop
    ld [hl], b
    nop
    jp $8f00


    nop
    rra
    dec b
    ld a, [hl-]
    ld a, [bc]
    ld [hl], l
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor e
    ld d, h
    nop
    rra
    nop
    ldh a, [rP1]
    nop
    nop
    rra
    nop
    rst $38
    ld a, [bc]
    push af
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $024e
    ld c, l
    ld bc, $024e
    db $dd
    dec b
    sbc d
    ld [bc], a
    sbc l
    dec b
    sbc d
    ld [bc], a
    sbc l
    dec b
    sbc d
    ld [bc], a
    sbc l
    dec b
    sbc d
    ld [bc], a
    sbc l
    ld bc, $02de
    ld c, l
    ld bc, $004e
    ld c, a
    ld d, a
    xor b
    xor a
    ld d, b
    ld e, a
    and b
    xor a
    ld d, b
    ld e, a
    and b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld e, a
    and b
    xor a
    ld d, b
    ld e, a
    and b
    xor a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
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
    rrca
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    ld bc, $037e
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    jp $00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    inc bc
    ld a, h
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    ld a, h
    nop
    ld a, a
    nop
    ccf
    nop
    rra
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
    rlca
    nop
    rrca
    ld bc, $031e
    inc e
    inc bc
    inc c
    ld bc, $000e
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    add hl, bc
    ld b, $0b
    dec b
    rla
    dec bc
    rla
    dec bc
    rla
    ld a, [bc]
    rra
    ld [bc], a
    dec a
    dec de
    ccf
    add hl, de
    rra
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ldh [rP1], a
    inc a
    ret nz

    cp $0c
    cp $cc
    db $fc
    add b
    cp $08
    db $fd
    ld a, [de]
    pop af
    ld a, $b5
    ld l, [hl]
    and l
    ld e, [hl]
    jp z, $823c

    ld a, h
    inc c
    ldh a, [$f0]
    nop
    inc bc
    nop
    dec b
    inc bc
    ld [$1507], sp
    ld a, [bc]
    ccf
    ld de, $1b2f
    daa
    inc e
    inc de
    dec c
    ld a, e
    dec b
    and $79
    ld l, l
    ld [hl-], a
    inc a
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    and b
    ret nz

    ld [hl], b
    add b
    ld hl, sp+$70
    cp $c0
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$50
    db $ec
    ld [hl], b
    ld a, [c]
    call z, $2ed7
    ccf
    and $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    jp $bd3c


    ld a, [hl]
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    db $db
    ld a, [hl]
    db $db
    cp l
    ld a, [hl]
    ld a, [hl]
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
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0302
    inc b
    ccf
    ld [hl-], a
    db $eb
    ld d, $ff
    and [hl]
    cp $b4
    ld a, h
    ldh a, [$f0]
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
    ld b, $00
    inc bc
    inc b
    dec c
    ld c, $73
    db $ec
    cp a
    ld [hl], d
    db $eb
    ld d, $ff
    and [hl]
    cp $b4
    ld a, h
    ldh a, [$f0]
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
    add c
    nop
    nop
    add c
    ld b, c
    jp Jump_01a_7fbe


    cp $00  ; and a / or a
    ld a, [hl]
    jp c, Jump_01a_7ebc

    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, $00   ; xor a
    db $d3
    inc a
    db $ed
    sbc $73
    db $ec
    cp a
    ld [hl], d
    db $eb
    ld d, $ff
    and [hl]
    cp $b4
    ld a, h
    ldh a, [$f8]
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
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0302
    nop
    rlca
    ld [bc], a
    dec bc
    ld b, $1f
    ld b, $7e
    inc [hl]
    ld a, h
    ldh a, [$f8]
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
    inc bc
    nop
    rlca
    nop
    rlca
    inc bc
    rra
    inc b
    dec a
    inc de
    add hl, sp
    rla
    ld a, [hl-]
    dec d
    inc l
    inc de
    inc e
    inc bc
    inc l
    inc de
    inc l
    inc de
    scf
    inc c
    ld [de], a
    ld c, $18
    inc b
    inc c
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [$c0], a

jr_01a_5f26:
    ld hl, sp+$20
    cp h
    ret z

    sbc h
    add sp, -$64
    add sp, -$6c
    add sp, $38
    ret nz

    ld d, h
    xor b
    sub h
    ld l, b
    inc l
    ldh a, [$c8]
    ldh a, [rNR23]
    ld h, b
    ld [hl], b
    nop
    nop
    nop
    rrca
    nop
    ld d, $0f
    ld [hl], $09
    ld a, a
    daa
    ld a, a
    jr z, jr_01a_5fca

    jr nz, jr_01a_5f9c

    jr nc, jr_01a_5f8e

    dec de
    cpl
    dec de
    ld d, a
    cpl
    sbc $60
    ldh a, [$4c]
    ret z

    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_5f5f:
    nop
    add b
    nop
    ld b, b
    add b
    jr nc, jr_01a_5f26

    cp b
    ret nc

    ld hl, sp+$50
    ld hl, sp+$10
    ret z

    jr nc, jr_01a_5f5f

    ld h, b
    ret nc

    ld h, b
    xor b
    ret nc

    db $ec
    jr jr_01a_5fb3

    ld c, b
    inc h
    jr nz, jr_01a_5f7b

jr_01a_5f7b:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld e, $0d
    ld [hl], a
    ld c, $3b
    rlca
    ld c, $01
    ccf
    ld a, [bc]

jr_01a_5f8e:
    ccf
    dec de
    rla
    rrca
    ld [$0f07], sp
    nop
    ccf
    ld b, $3b
    ld d, $2e
    add hl, de

jr_01a_5f9c:
    ccf
    ld [$001c], sp
    ldh [rP1], a
    db $10
    ldh [$c8], a
    ldh a, [rNR50]
    ret c

    ld a, [c]
    inc l
    or d
    ld l, h
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nc

    ld h, b
    or b

jr_01a_5fb3:
    ld b, b
    ret c

    jr nz, @+$2a

    ldh a, [$c8]
    ld [hl], b
    sbc b
    ld h, b
    ldh a, [rP1]
    nop
    nop
    inc bc
    nop
    dec l
    inc bc
    ld a, $0d
    scf
    ld c, $1b
    rlca

jr_01a_5fca:
    ld c, $01
    ccf
    ld a, [bc]
    ccf
    dec de
    rla
    rrca
    ld [$0f07], sp
    nop
    ccf
    ld b, $3b
    ld d, $2e
    add hl, de
    ccf
    ld [$001c], sp
    ldh a, [rP1]
    adc h
    ldh a, [$62]
    db $fc

jr_01a_5fe6:
    ld [hli], a
    call c, $2cf2
    or h
    ld l, b
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nc

    ld h, b
    or b
    ld b, b
    ret c

    jr nz, jr_01a_601f

    ldh a, [$c8]
    ld [hl], b
    sbc b
    ld h, b
    ldh a, [rP1]
    nop
    nop
    rrca
    nop
    ld d, $0f
    ld [hl], $09
    ld a, a
    daa
    ld a, a
    jr z, jr_01a_608a

    jr nz, jr_01a_605c

    jr nc, jr_01a_604e

    dec de
    cpl
    dec de
    ld d, a
    cpl
    rst JumpTable
    ld h, b
    ldh a, [rOBP0]
    ldh [rNR41], a
    nop
    nop
    nop
    nop
    nop

jr_01a_601f:
    nop
    add b
    nop
    ld b, b
    add b
    jr nc, jr_01a_5fe6

    cp b
    ret nc

    ld hl, sp+$50
    ld hl, sp+$10
    ret z

    jr nc, jr_01a_601f

    ld h, b
    ret nc

    ld h, b
    xor b
    ret nc

    db $ec
    jr jr_01a_6073

    ld [$000c], sp
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld e, $0d
    ld [hl], a
    ld c, $3b
    rlca
    ld c, $01
    ccf
    ld a, [bc]

jr_01a_604e:
    ccf
    dec de
    rla
    rrca
    ld [$0f07], sp
    nop
    rrca
    ld b, $0b
    ld b, $0e
    add hl, de

jr_01a_605c:
    rra
    ld [$001c], sp
    ldh [rP1], a
    db $10
    ldh [$c8], a
    ldh a, [rNR50]
    ret c

    ld a, [c]
    inc l
    or d
    ld l, h
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nc

    ld h, b
    or b

jr_01a_6073:
    ld b, b
    ret c

    jr nz, @+$2a

    ldh a, [$c8]
    ld [hl], b
    sbc b
    ld h, b
    ldh a, [rP1]
    nop
    nop
    inc bc
    nop
    dec l
    inc bc
    ld a, $0d
    scf
    ld c, $1b
    rlca

jr_01a_608a:
    ld c, $01
    ccf
    ld a, [bc]
    ccf
    dec de
    rla
    rrca
    ld [$0f07], sp
    nop
    rra
    ld b, $0b
    ld b, $0e
    add hl, bc
    ccf
    ld [$001c], sp
    ldh a, [rP1]
    adc h
    ldh a, [$62]
    db $fc
    ld [hli], a
    call c, $2cf2
    or h
    ld l, b
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nc

    ld h, b
    or b
    ld b, b
    ret c

    jr nz, jr_01a_60df

    ldh a, [$c8]
    ld [hl], b
    sbc b
    ld h, b
    ldh a, [rP1]
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    inc bc
    rra
    inc b
    dec a
    inc de
    add hl, sp
    rla
    ld a, [hl-]
    dec d
    inc l
    inc de
    inc e
    inc bc
    inc l
    inc de
    inc l
    inc de
    scf
    inc c
    inc de
    rrca
    jr jr_01a_60e3

    rrca
    nop
    nop

jr_01a_60df:
    nop
    add b
    nop
    ret nz

jr_01a_60e3:
    nop

jr_01a_60e4:
    ldh [$c0], a
    ld hl, sp+$20
    cp h
    ret z

    sbc h
    add sp, -$64
    add sp, -$6c
    add sp, $38
    ret nz

    ld d, h
    xor b
    sub h
    ld l, b
    inc l
    ldh a, [$c8]
    ldh a, [rNR23]
    ldh [$f0], a
    nop
    nop
    nop
    rlca
    nop
    dec bc
    rlca
    dec de
    inc b

jr_01a_6106:
    ccf
    inc de
    ccf
    inc d
    ccf
    db $10
    daa
    jr jr_01a_612e

    dec c
    rla
    dec c
    dec hl
    rla
    ld l, a
    jr nc, jr_01a_618f

    daa
    ld a, a
    dec de
    ld b, $05
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_01a_60e4

    jr jr_01a_6106

    call c, $fce8
    jr z, @-$02

    ld [$18e4], sp

jr_01a_612e:
    ld hl, sp-$50
    add sp, -$50
    call nc, $f6e8
    inc c
    ld e, $e4
    cp $d8
    ld h, b
    and b
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld e, $0d
    ld [hl], a
    ld c, $3b
    rlca
    ld c, $01
    ccf
    ld a, [bc]
    ccf
    dec de
    rla
    rrca
    ld [$0f07], sp
    nop
    ld a, $07
    ld a, [hl-]
    rla
    cpl
    jr @+$41

    ld [$001c], sp
    ldh [rP1], a
    db $10
    ldh [$c8], a
    ldh a, [rNR50]
    ret c

    ld a, [c]
    inc l
    or d
    ld l, h
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nc

    ld h, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld e, $0d
    ld [hl], a
    ld c, $3b
    rlca
    ld c, $01
    ccf
    ld a, [bc]
    ccf

jr_01a_618f:
    dec de
    rla
    rrca
    ld [$0f07], sp
    nop
    ld a, $07
    ld a, [hl-]
    rla
    cpl
    jr @+$41

    ld [$001c], sp
    ldh [rP1], a
    db $10
    ldh [$c8], a
    ldh a, [rNR50]
    ret c

    ld a, [c]
    inc l
    or d
    ld l, h
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nc

    ld h, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld e, $0d
    ld [hl], a
    ld c, $3b
    rlca
    ld c, $01
    ccf
    ld a, [bc]
    ccf
    dec de
    rla
    rrca
    ld [$0f07], sp
    nop
    ccf
    ld b, $3b
    ld d, $2f
    jr @+$41

    ld [$001c], sp
    ldh [rP1], a
    db $10
    ldh [$c8], a
    ldh a, [rNR50]
    ret c

    ld a, [c]
    inc l
    or d
    ld l, h
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nz

    ld b, b
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld e, $0d
    ld [hl], a
    ld c, $3b
    rlca
    ld c, $01
    ccf
    ld a, [bc]
    ccf
    dec de
    rla
    rrca
    ld [$0f07], sp
    nop
    ccf
    ld b, $3b
    ld d, $2f
    jr jr_01a_625c

    ld [$001c], sp
    ldh [rP1], a
    db $10
    ldh [$c8], a
    ldh a, [rNR50]
    ret c

    ld a, [c]
    inc l
    or d
    ld l, h
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nc

    ld h, b
    or b
    ld b, b
    ret c

    jr nz, jr_01a_6237

jr_01a_6237:
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec c
    inc bc
    ld e, $0d
    ld [hl], a
    ld c, $3b
    rlca
    ld c, $01
    ccf
    ld a, [bc]
    ccf
    dec de
    rla
    rrca
    ld [$0f07], sp
    nop
    ccf
    ld b, $3b
    ld d, $2e
    add hl, de

jr_01a_625c:
    ccf
    ld [$001c], sp
    ldh [rP1], a
    db $10
    ldh [$c8], a
    ldh a, [rNR50]
    ret c

    ld a, [c]
    inc l
    or d
    ld l, h
    db $f4
    ld l, b
    ld hl, sp+$60
    ret nc

    ld h, b
    and b
    ld b, b
    ret nz

    nop
    nop
    ret nz

    ret nz

    ld b, b
    add b
    nop
    add b
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
    ld a, [hl]
    nop
    ld b, e
    inc a
    dec a
    ld a, [hl]
    ccf
    ld [bc], a
    ccf
    nop
    ccf
    dec de
    ld a, $1b
    dec a
    ld a, $3e
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
    rlca
    nop
    ld bc, $0606
    rrca
    cp c
    db $76
    rst JumpTable
    add hl, sp
    ld [hl], l
    dec bc
    rst $38
    ld d, e
    rst $38
    jp c, Jump_01a_78be

    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    jr nz, jr_01a_6323

    ld e, a
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld h, b
    ld a, a
    ld a, a
    ccf
    ld [hli], a
    cpl
    inc sp
    cpl
    jr nc, @+$41

    ccf
    rla
    rra
    inc e
    inc d
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    inc bc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    inc bc
    rst $38
    rst $38
    ld a, [$fc26]
    call nz, $0cf4
    db $fc
    db $fc
    add sp, -$08
    jr c, jr_01a_6340

    jr nc, jr_01a_634a

    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld b, b

jr_01a_6323:
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    ret nz

    rst $38
    rst $38
    ld a, a
    ld b, b
    ld e, a
    ld h, h
    ccf
    jr nz, jr_01a_6372

    ccf
    ccf
    dec hl
    ld a, [hli]
    ld [hl], $1c
    inc e
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_6340:
    nop
    nop
    ccf
    ccf
    ld b, b
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38

jr_01a_634a:
    cp a
    ret nz

    rst $38
    rst $38
    ld a, a
    ld b, b
    ld e, a
    ld h, h
    ccf
    jr nz, jr_01a_6394

    ccf
    ld a, [hli]
    ld [hl], $1c
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    cp a
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38

jr_01a_6372:
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    cp a
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rlca
    nop
    rra
    nop
    ld a, $01
    ld a, l
    inc bc
    ld a, l
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    inc c
    cp a
    ld c, [hl]
    cp a
    ld c, a

jr_01a_6394:
    sbc a
    ld l, l
    ld c, a
    inc a
    ld c, h
    ccf
    jr nz, jr_01a_63bb

    jr jr_01a_63a5

    rlca
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld a, h

jr_01a_63a5:
    add b
    cp [hl]
    ret nz

    cp [hl]
    ret nz

    ld a, a
    add b
    rst $38
    nop

jr_01a_63ae:
    rst $38
    jr nc, jr_01a_63ae

    ld [hl-], a
    db $fd
    or d
    ld sp, hl
    or $f2
    ld a, h
    ld [hl-], a
    db $fc
    inc b

jr_01a_63bb:
    ld hl, sp+$18
    ldh [$e0], a
    nop
    ld a, e
    rst $30
    rst $38
    rst $30
    adc h
    di
    rst $38
    nop
    cp c
    ld a, [hl]
    pop bc
    ld a, [hl]
    jp $ff7c


    nop
    db $eb
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    rst $38
    nop
    rst $38
    nop
    db $dd
    ld a, $e1
    ld a, $ff
    nop
    db $eb
    rst $30
    rst $28
    rst $30
    ld [$fff7], sp
    nop
    rst $38
    nop
    cp c
    ld a, [hl]
    pop bc
    ld a, [hl]
    rst $38
    nop
    set 6, a
    inc c
    rst $30
    inc c
    rst $30
    rst $38
    nop
    ld a, e
    db $fc
    add e
    db $fc
    inc bc
    db $fc
    rst $38
    nop
    rlca
    rlca
    ld a, a
    ld a, h
    or b
    rst $08
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp a
    ret nz

    ldh a, [$8f]
    adc h
    rst $38
    rst $38
    db $fc
    ld a, h
    ld a, a
    inc b
    rlca

jr_01a_641e:
    rlca
    rlca
    ldh [$e0], a
    ld hl, sp+$38
    inc b
    db $fc
    ld a, [c]
    ld c, $f9
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    pop af
    rrca
    inc bc
    rst $38
    ccf
    rst $38
    cp $3e
    inc a
    db $fc
    jr nz, jr_01a_641e

    ldh [$e0], a
    ld e, $1e
    dec [hl]
    dec sp
    scf
    jr c, @+$39

    jr c, jr_01a_6484

    inc a
    ei
    db $fc
    sub e
    db $ec
    sub e
    db $ec
    sub e
    db $ec
    sub e
    db $ec
    ei
    db $fc
    dec sp
    inc a
    add hl, sp
    ld a, $38
    ccf

Call_01a_645c:
    inc e
    rra
    rrca
    rrca
    inc e
    inc e
    ld [$fef6], a
    ld [bc], a
    cp $02
    ld a, [$fb06]
    rlca
    ei
    dec b
    ei
    dec b
    ei
    dec b
    ei
    dec b
    ei
    rlca
    ld a, [$f206]
    ld c, $04
    db $fc
    ld [$f0f8], sp
    ldh a, [$03]
    nop
    rrca
    inc bc

jr_01a_6484:
    ld d, $0f
    daa
    jr @+$31

    db $10
    ld c, e

jr_01a_648b:
    ld [hl], $57
    ld l, $57
    ld l, $59
    ld h, $4f
    jr nc, @+$22

    rra
    jr nc, jr_01a_64a7

    daa
    jr jr_01a_64de

    inc a
    ld b, b
    ccf
    ld a, a
    nop
    ldh a, [rP1]
    adc b
    ldh a, [rDIV]
    ld hl, sp-$3c

jr_01a_64a7:
    jr c, jr_01a_648b

    inc e
    and d
    call c, $eed1
    pop de
    xor $31
    adc $e3
    inc e
    ld b, $f8
    inc e
    ldh [$84], a
    ld a, b
    ld [bc], a
    db $fc
    ld bc, $fffe
    nop
    inc bc
    nop
    inc c
    inc bc
    db $10
    rrca
    jr nz, jr_01a_64e7

    jr nz, jr_01a_64e9

    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    jr nz, @+$21

    jr nc, jr_01a_64e7

    jr nz, jr_01a_64f9

    ld b, b
    ccf
    ld b, b
    ccf

jr_01a_64de:
    ld a, a
    nop
    ldh a, [rP1]
    ret z

    ldh a, [$64]
    ld hl, sp+$64

jr_01a_64e7:
    ld hl, sp+$22

jr_01a_64e9:
    db $fc
    ld [hli], a
    db $fc
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    ld b, $f8
    inc c
    ldh a, [$e4]

jr_01a_64f9:
    jr jr_01a_653d

    cp h
    ld bc, $fffe
    nop
    nop
    nop
    ld a, a
    nop
    cp a
    ld a, a
    add [hl]
    ld a, a
    ld a, [$fc07]
    inc bc
    or h
    ld e, e
    ld a, [$fa5d]
    ld e, l
    and [hl]
    ld e, c
    db $fc
    inc bc
    add b
    ld a, a
    ld [hl], b
    rrca
    ld h, b
    rra
    ld b, b
    ccf
    ld a, a
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    db $10
    ldh [$08], a
    ldh a, [$08]
    ldh a, [rDIV]
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$0c
    ldh a, [rNR23]

jr_01a_6535:
    ldh [$64], a
    sbc b
    ld [bc], a
    db $fc
    ld bc, $01fe

jr_01a_653d:
    cp $ff
    nop
    ccf

jr_01a_6541:
    nop
    ld e, a
    ccf
    ld b, e
    ccf
    ld a, l
    inc bc
    ld a, [hl]
    ld bc, $2d5a
    ld a, l
    ld l, $7d
    ld l, $53
    inc l
    ld a, [hl]
    ld bc, $3f40
    jr nz, jr_01a_6577

    inc e
    inc bc
    jr jr_01a_6563

    db $10
    rrca
    rra
    nop
    ret nz

    nop
    or b

jr_01a_6563:
    ret nz

    ld [$04f0], sp
    ld hl, sp+$04
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld b, $f8
    inc c
    ldh a, [rNR23]
    ldh [rDIV], a

jr_01a_6577:
    ld hl, sp+$04
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    cp $00  ; and a / or a
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
    ld c, $00
    dec de
    inc b
    inc de
    inc c
    ld hl, $261e
    add hl, de
    ld [hli], a
    dec e
    inc hl
    inc e
    ld [hl], $08
    inc e
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
    jr jr_01a_65ac

jr_01a_65ac:
    inc h
    jr jr_01a_65f3

    jr c, jr_01a_6535

    ld a, b
    db $e4
    jr jr_01a_6541

    ld [hl], b
    add h
    ld a, b
    call z, $3830
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
    rlca
    nop
    dec c
    ld [bc], a
    dec bc
    inc b
    inc de
    inc c
    dec d
    ld a, [bc]
    dec d
    ld a, [bc]
    rla
    ld [$0001], sp
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
    or b
    nop
    ret z

    jr nc, jr_01a_6577

    ld [hl], b
    ld [$c8f0], sp

jr_01a_65f3:
    jr nc, jr_01a_660d

    ldh [$08], a
    ldh a, [$98]
    ld h, b
    ldh a, [rP1]
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
    jr nc, jr_01a_663a

    ld a, b
    ld c, b
    db $fc

jr_01a_660d:
    or h
    call c, $fcb4
    call nz, Call_01a_7a76
    dec de
    dec e
    dec c
    rrca
    rlca
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
    rst $38
    sbc c
    rst $38
    cp $fe
    jr jr_01a_6644

    inc h
    inc h
    ld b, d
    ld b, d
    rst $38
    rst $38
    or c
    rst $08
    rst $38
    rst $38
    or c
    rst $08
    sub c
    rst $28

jr_01a_663a:
    ld d, d
    ld l, [hl]
    ld b, d
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop

jr_01a_6644:
    nop
    nop
    ld b, $00
    dec bc
    ld b, $0f
    ld b, $1e
    ld [$0018], sp
    stop
    nop
    nop
    ld c, $00
    rla
    ld c, $2d
    ld e, $3e
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
    jr jr_01a_666c

jr_01a_666c:
    inc [hl]
    jr jr_01a_66db

    jr nc, @+$80

    inc l
    jp c, $e27c

    ld a, h
    call z, $b070
    ld b, b
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    daa
    jr z, jr_01a_66b6

    jr nz, jr_01a_66c6

    scf
    ccf
    dec [hl]
    ccf
    rra
    scf
    ld c, $23
    ccf
    jr nz, @+$41

    inc de
    inc c
    ld c, $11
    inc bc
    inc e
    ld [$0e07], sp
    nop
    ld c, $00
    nop
    ldh [rP1], a
    ldh a, [$e4]
    inc d
    db $f4
    inc b
    cp h
    db $ec
    db $fc
    xor h
    db $fc
    ld hl, sp-$1c
    ld a, b
    adc $f0
    ld c, $f8
    sbc [hl]
    ld a, h

jr_01a_66b6:
    cp $0e
    add h
    ld a, h
    nop
    ldh a, [rSVBK]
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    jr nz, jr_01a_66f5

jr_01a_66c6:
    jr nz, jr_01a_6707

    jr nc, jr_01a_66f9

    inc a
    inc sp
    ld e, $11
    rla
    ld [$0f30], sp

jr_01a_66d2:
    jr nc, jr_01a_66e3

    jr @+$09

    rlca
    jr jr_01a_66d9

jr_01a_66d9:
    rra
    inc e

jr_01a_66db:
    inc bc
    ld e, $00
    inc c
    nop
    nop
    ldh [rP1], a

jr_01a_66e3:
    ldh a, [rDIV]
    db $f4
    inc b
    db $fc
    inc c
    db $f4
    inc a
    call z, $8878
    add sp, $10
    jr jr_01a_66d2

    inc e
    db $e4
    inc e

jr_01a_66f5:
    db $e4
    db $ec
    inc e
    nop

jr_01a_66f9:
    ld hl, sp+$10
    ldh [$60], a
    nop
    nop
    nop
    nop
    ld bc, $000f
    rra
    nop
    rrca

jr_01a_6707:
    nop
    dec bc
    rrca
    ccf
    dec sp
    rrca
    rrca
    rrca
    rrca
    nop
    inc bc
    inc c
    dec bc
    inc c
    dec bc
    inc b
    inc bc
    rlca
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0000
    ldh [rP1], a
    ld hl, sp-$70
    ld a, [hl]
    ldh a, [$3f]
    ldh a, [$7d]
    ld hl, sp+$64
    ld hl, sp-$40
    nop
    ldh a, [rDIV]
    ld hl, sp-$12
    ldh a, [$fe]
    ldh [$7e], a
    ldh [$98], a
    ld h, h
    nop
    cp $f0
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    ld bc, $000f
    rra
    nop
    rrca
    nop
    dec bc
    rrca
    ccf
    dec sp
    rrca
    rrca
    rrca
    rrca
    rlca
    inc bc
    inc bc
    rlca
    add hl, de
    rla
    inc e
    inc de
    rlca
    ld [$0718], sp
    ld c, $00
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp-$70
    ld a, [hl]
    ldh a, [$3f]
    ldh a, [$7d]
    ld hl, sp+$64
    ld hl, sp-$40
    nop
    ldh a, [$98]
    db $e4
    db $fc
    add b
    db $fc
    add d
    ld a, b
    add [hl]
    add e
    ld a, h
    rlca
    ld hl, sp+$0e
    nop
    rlca
    nop
    add sp, $07
    sub c
    ld l, a
    ld d, e
    cpl
    ld hl, $2c1f
    rra
    cpl
    dec de
    cpl
    add hl, de
    scf
    dec c
    ld d, a
    cpl
    sbc h
    ld h, e
    and l
    ld b, e
    rst $08
    nop
    inc de
    rrca
    rra
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$7107], sp
    rrca
    sub e
    ld l, a
    pop hl
    rra
    inc l
    rra
    ld l, a
    dec de
    xor a
    ld e, c
    or a
    ld c, l
    rst $30
    rrca
    inc c
    inc bc
    dec b
    inc bc
    rrca
    nop
    inc de
    rrca
    rra
    nop
    inc e
    nop
    inc de
    inc c
    ld l, l
    inc bc
    ld d, a
    ld [hli], a
    ld a, e
    daa
    ld a, e
    cpl
    ld a, e
    ld l, $7b
    cpl
    ld [hl], c
    cpl
    ld e, h
    inc hl
    ld e, a
    jr nz, jr_01a_6846

    inc bc
    add hl, bc
    ld b, $13
    inc c
    inc e
    nop
    nop
    nop
    ldh a, [rP1]
    db $ec
    ldh a, [$ea]
    inc a
    db $dd
    ld a, [hl]
    db $dd
    cp $c9
    cp $e1
    ld a, [hl]
    pop hl
    ld a, $e1
    cp [hl]
    ld [c], a
    db $fc
    ld a, $c0
    cp $18
    ld a, [c]
    inc c
    ld sp, hl
    ld b, $07
    nop
    nop
    nop
    inc bc
    nop
    rlca
    ld bc, $06cb
    xor a
    ld b, h
    rst $30
    ld c, a
    rst $30
    ld e, a
    rst $30
    ld e, h
    rst $30
    ld e, [hl]
    db $e3
    ld e, a
    cp c
    ld b, a
    cp [hl]
    ld b, c
    rst JumpTable
    ld b, $09
    ld b, $09
    ld b, $05
    ld [bc], a
    inc bc
    nop
    ldh [rP1], a
    ret c

    ldh [$d4], a
    ld a, b
    cp d
    db $fc
    cp d
    db $fc
    sub d
    db $fc
    jp nz, $c2fc

    ld a, h
    jp nz, $c47c

    ld hl, sp+$3c
    ret nz

    ld a, h
    or b
    call z, $c830
    jr nc, @+$52

    jr nz, jr_01a_689f

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_6846:
    rlca
    nop
    add hl, bc
    ld b, $13
    dec c
    rla
    dec bc
    rla
    dec bc
    rla
    add hl, bc
    add hl, de
    ld b, $11
    ld c, $08
    rlca
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
    ld c, $00
    ccf
    ld l, $3f
    dec l
    ld a, a
    ld sp, $367f
    ld a, a
    ld c, l
    ccf
    add hl, sp
    rrca
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
    ld b, $00
    ld c, $04
    ld a, $04
    ccf
    inc d
    ld a, $11

jr_01a_6894:
    ccf
    jr jr_01a_6906

    inc e
    rst $30
    ld l, h
    ei
    db $e4
    rst $38
    ret nc

    ld a, a

jr_01a_689f:
    ld a, b
    ld bc, $6300
    ld bc, $2173
    ld a, e
    jr nz, @+$81

    ld sp, $317f
    ld e, a
    ld sp, $112f
    ld a, $01
    rst JumpTable
    jr nz, jr_01a_6894

    and b
    rst $20
    sbc b
    ld sp, hl
    rlca
    rst $38
    ret nz

    ld a, a
    ld h, b

jr_01a_68be:
    ccf
    ld [hl], $0c
    nop
    ld e, $0c
    ld a, $0c
    ccf
    inc d
    ld a, $11
    ccf

jr_01a_68cb:
    jr jr_01a_68fc

    inc e
    rra
    inc c
    ccf
    inc b

jr_01a_68d2:
    ld e, a
    jr nz, jr_01a_6934

    jr nz, jr_01a_68be

    jr jr_01a_68d2

    add a
    rst $38
    add b
    ld a, a
    ld [hl], b
    rra
    add hl, de
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
    jr nc, jr_01a_68ec

jr_01a_68ec:
    ld a, e
    jr nc, jr_01a_68cb

    ld [hl], e
    cp c
    ld d, a
    db $eb
    ld d, l
    xor e
    ld d, h
    jp hl


    ld d, [hl]
    cp h
    ld b, e
    rst $20
    ld b, b

jr_01a_68fc:
    sub a
    ld h, d
    ld [hl], e
    nop
    inc bc
    nop
    inc a
    inc bc
    ld a, c
    scf

jr_01a_6906:
    db $db
    ld [hl], l
    cp e
    ld d, h
    ld sp, hl
    ld b, [hl]
    xor h
    ld b, e
    rst $20
    ld b, b
    and a
    ld b, d
    rst $20
    ld b, d
    and d
    ld b, b
    ldh [rLCDC], a
    and b
    ld b, b
    ldh [rLCDC], a
    sub b
    ld h, b
    ld [hl], b
    nop
    nop
    nop
    rlca
    rlca
    rra
    inc e
    ccf
    ld sp, $677f
    ld a, a
    ld l, [hl]
    rst $38
    call z, $cdff
    rst $38
    ld h, a
    rst $38
    ld [hl], e

jr_01a_6934:
    rst $38
    cp b
    rst $38
    sbc a
    ld a, a
    ld b, a
    ccf
    jr nc, jr_01a_694c

    rrca
    nop
    nop
    ld bc, $0300
    ld bc, $01e3
    rst $30
    ld h, b
    rst $38
    ld [hl], b
    ld a, a
    inc l

jr_01a_694c:
    ld a, a
    ld l, $ff
    ld l, e
    rst $38
    ld l, b
    ld a, c
    daa
    di
    ld l, h
    db $f4
    ld c, e
    pop af
    adc [hl]
    rst $38
    pop af
    ccf
    ccf
    rlca
    rlca
    nop
    nop
    ld bc, $0300
    ld bc, $01e3
    rst $30
    ld h, b
    rst $38
    ld [hl], h
    ld a, l
    dec hl

jr_01a_696e:
    ld a, b
    daa
    di
    ld l, h
    rst $30
    ld l, c
    ld [hl], a
    jr z, jr_01a_696e

    ld l, b
    di
    adc h
    ld hl, sp-$19
    ld [hl], a
    ld a, b
    rrca
    rrca
    di
    nop
    adc h
    ld [hl], e
    ld d, h
    dec hl
    scf
    inc c
    ld d, d
    dec l
    ld hl, sp+$07
    rst $38
    ld l, b
    db $dd
    ld l, e
    sbc e
    ld h, [hl]
    ld [hl], a
    rrca
    ld a, l
    inc bc
    ld [hl], e
    inc c
    ld a, a
    inc bc
    inc hl
    inc e
    ld [hl], a
    ld a, $7f
    nop
    rst $08
    nop
    ld sp, $2ace
    call nc, $30ec
    ld c, d
    or h
    add hl, de
    and $fd
    ld [de], a
    cp a
    ret nc

    rst JumpTable
    ld h, [hl]
    db $eb
    or $b9
    add $ee
    db $10
    db $fc
    ldh [$f0], a
    nop
    ld hl, sp+$00
    ret nz

    nop
    di
    nop
    adc h
    ld [hl], e
    ld c, a
    jr nc, jr_01a_6a06

    rrca
    ccf
    db $10
    ld a, a
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    xor a
    ld d, b
    ld h, b
    rra
    jr nc, jr_01a_69e5

    ccf
    nop
    ccf
    nop
    inc hl
    inc e
    ld b, c
    ld a, $7f
    nop
    rst $08
    nop
    ld sp, $e2ce

jr_01a_69e5:
    inc e
    db $f4
    add sp, -$02
    inc d
    rst $38
    ld b, $fb
    ld b, $f9
    ld b, $e9
    ld d, $0f
    ldh a, [rNR32]
    ldh [$fc], a
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rIF]
    sub $29

jr_01a_6a06:
    adc [hl]
    ld [hl], e
    add c
    ld a, [hl]
    add e
    ld a, l
    ld [hl], a
    dec bc
    ld a, a
    ld [hl-], a
    ld e, a
    jr c, jr_01a_6a4a

    ld [$071e], sp
    inc e
    rlca
    ld [$0707], sp
    nop
    inc bc
    ld bc, $0007
    ldh [rP1], a
    db $10
    ldh [rBCPS], a
    sub b
    inc e
    ldh [$8e], a
    ld [hl], h
    cp [hl]
    ld c, b
    rst $38
    jr nc, @+$01

    nop
    rst $28
    ld [hl], b
    rlca
    ld a, [$7a87]
    rlca
    ld hl, sp-$71
    ld [hl], b
    db $fc
    nop
    add [hl]
    ld hl, sp-$02
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rIF]
    sub $29
    adc [hl]
    ld [hl], e

jr_01a_6a4a:
    add c
    ld a, [hl]
    add e
    ld a, l
    ld [hl], a
    dec bc
    ld a, a
    ld [hl-], a
    ld e, a
    jr c, jr_01a_6a8c

    dec bc
    ld e, $03
    inc e
    inc bc
    rrca
    nop
    inc e
    rrca
    rra
    nop
    nop
    nop
    ldh [rP1], a
    db $10
    ldh [rBCPS], a
    sub b
    inc e
    ldh [$8e], a
    ld [hl], h
    cp $08
    rst $38
    jr nc, @+$01

    nop
    cp a
    ld [hl], b
    ld b, a
    cp d
    rlca
    ld a, [$b04f]
    ld sp, hl
    ld b, $79
    sbc [hl]
    cp $00  ; and a / or a
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

jr_01a_6a8c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
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
    inc e
    nop
    di
    inc c
    db $fd
    xor $fd
    xor $f3
    inc c
    inc e
    nop
    nop
    nop
    nop
    nop
    jr jr_01a_6ac4

jr_01a_6ac4:
    inc a
    jr @+$3e

    jr jr_01a_6b05

    jr jr_01a_6b07

    jr jr_01a_6b09

    jr jr_01a_6b0b

    jr jr_01a_6b0d

    jr jr_01a_6b0f

    jr @+$3e

    jr jr_01a_6b55

    nop
    ld e, d
    inc a
    ld e, d
    inc a
    inc h
    jr jr_01a_6b1b

    nop
    rlca
    nop
    dec sp
    rlca
    ld a, e
    scf
    ld a, b
    scf
    ld a, a
    jr nc, jr_01a_6b6a

    inc b
    ld c, a
    jr nc, jr_01a_6b37

    scf
    ld a, b
    rlca
    ld c, b
    scf
    scf
    ld [$1f20], sp
    inc hl
    inc e
    inc a
    inc bc
    rra
    nop
    rlca
    nop
    ret nz

    nop
    jr nz, jr_01a_6ac4

    db $10

jr_01a_6b05:
    ldh [rNR10], a

jr_01a_6b07:
    ldh [$dc], a

jr_01a_6b09:
    jr nz, jr_01a_6b09

jr_01a_6b0b:
    adc h
    ld a, [c]

jr_01a_6b0d:
    inc c
    ld d, d

jr_01a_6b0f:
    xor h
    ld a, $c0
    ld a, [hl]
    cp h
    rst $38
    ld h, [hl]
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38

jr_01a_6b1b:
    ld h, [hl]
    cp $3c
    db $fc
    nop
    ld h, a
    nop
    ld sp, hl
    ld h, a
    pop af
    ld l, a
    ldh a, [$6f]
    rst $30
    ld [$629f], sp
    sbc a
    ld h, b
    db $f4
    dec bc
    sub b
    ld l, a
    ld a, b
    rlca
    daa
    jr jr_01a_6b57

jr_01a_6b37:
    rra
    inc hl
    inc e
    ld a, $01
    ccf
    ld e, $1f
    nop
    ldh [rP1], a
    sub b
    ldh [$88], a
    ldh a, [$08]
    ldh a, [$e8]
    db $10
    cp $40
    rst $38
    ld b, $3d
    jp nz, $bc7f

    rst $38
    ld h, [hl]
    rst $38

jr_01a_6b55:
    ld b, d
    rst $38

jr_01a_6b57:
    ld b, d
    rst $38
    ld h, [hl]
    cp $3c
    cp $00  ; and a / or a
    db $fc
    nop
    ld bc, $0301
    ld [bc], a
    ccf
    dec a
    ccf
    ld hl, $283f

jr_01a_6b6a:
    ccf
    ld h, $7b
    ld b, [hl]
    rst $38
    or b
    rst $08
    or b
    ld a, a
    ld b, [hl]
    dec a
    ld h, $3f
    jr z, jr_01a_6bb7

    ld hl, $3d3e
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld e, d
    inc a
    ld a, [hl]
    inc h
    ld a, [hl]
    inc h
    ld e, d
    inc a
    inc a
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
    rrca
    nop
    ccf
    rrca
    ld e, e
    inc a
    cp a
    ld a, b
    cp e
    ld a, h
    sbc a
    ld a, a
    adc e
    ld [hl], a
    ret z

    scf
    db $fc
    ld b, e
    rst $30
    ld a, b
    cp a

jr_01a_6bb7:
    ld a, a
    adc e
    ld [hl], a
    ret z

    scf
    ld a, h
    inc bc
    rra
    nop
    rlca
    nop
    rra
    rlca
    dec l
    ld e, $3d
    ld e, $5f
    ccf
    ld c, a
    ccf
    ld b, l
    dec sp
    ld b, h
    dec sp
    ld h, h
    dec de
    ld a, [hl]
    ld hl, $3c7b
    ld e, a
    ccf
    ld b, l
    dec sp
    ld h, h
    dec de
    ld a, $01
    rrca
    nop
    rlca
    nop
    rrca
    rlca
    rla
    ld c, $1d
    ld c, $2f
    ld e, $27
    rra
    dec h
    dec de
    inc h
    dec de
    inc [hl]
    dec bc
    ld a, $11
    dec sp
    inc e
    cpl
    rra
    dec h
    dec de
    inc [hl]
    dec bc
    ld e, $01
    rlca
    nop
    nop
    nop
    rlca
    nop
    rra
    rlca
    dec hl
    inc e
    ccf
    jr jr_01a_6c66

    inc a
    ld c, a
    ccf
    ld c, e
    scf
    ld l, b
    rla
    ld a, h
    inc hl
    ld a, e
    inc a
    ld e, a
    ccf
    ld c, e
    scf
    ld l, c
    rla
    inc a
    inc bc
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

jr_01a_6c28:
    rra
    nop
    cpl
    rra
    ld e, e
    inc a
    adc a
    ld a, a
    adc c
    ld [hl], a
    ret z

    scf
    db $fc
    ld b, e
    di
    ld a, h
    cp a
    ld a, a
    swap a
    ld a, h
    inc bc
    rra
    nop
    inc bc
    nop
    rlca
    inc bc
    rlca
    nop
    dec bc
    rlca
    inc de
    inc c
    rra
    inc bc
    ccf
    inc d
    ccf
    ld [de], a
    cpl
    ld d, $1f
    dec b
    rra
    dec b
    dec hl
    ld d, $37
    add hl, de
    ld a, $19
    rra
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop

jr_01a_6c66:
    jr nz, jr_01a_6c28

    db $10
    ldh [hFFD8], a

jr_01a_6c6b:
    ldh [$fc], a
    jr z, jr_01a_6c6b

    ld c, b
    db $f4
    add sp, -$08
    and b
    ldh a, [$a0]
    ret nc

    ld h, b
    ld hl, sp-$70
    db $ec
    ld [hl], b
    ld hl, sp+$60
    ldh [rP1], a
    ld bc, $0300
    nop
    rlca
    inc bc
    rra
    inc b
    dec a
    inc de
    jr c, jr_01a_6ca3

    jr z, @+$19

    ld a, [de]
    dec b
    ccf
    inc de
    cpl
    dec de
    rra
    inc b
    dec bc
    rlca
    jr jr_01a_6ca1

    inc e
    dec bc
    rrca
    nop
    nop
    nop
    nop

jr_01a_6ca1:
    nop
    ret nz

jr_01a_6ca3:
    nop
    ldh [$c0], a
    ld hl, sp+$20
    cp h

jr_01a_6ca9:
    ret z

    sbc h
    add sp, $14
    add sp, $1c
    ldh [$b8], a
    ld d, b
    ldh a, [rP1]
    ldh a, [$e0]
    ret nc

    ldh [rNR10], a
    ldh [$78], a
    sub b
    ld hl, sp+$30
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld c, $07
    rrca
    ld bc, $063f
    ld c, a
    rlca
    rra
    dec bc
    ld a, a
    dec bc
    or a
    ld l, a
    ld a, b
    rlca
    rla
    nop
    rlca
    inc bc
    rlca
    inc bc
    rrca
    nop
    nop
    nop
    nop
    nop
    db $ec
    nop
    sbc $ec
    adc [hl]
    ld [hl], h
    call nz, $e4b8
    ret c

    db $e4
    ld e, b
    db $f4
    jr z, @-$06

    ld h, b
    ret nc

    ld h, b
    cp b
    ld b, b
    db $ec
    jr nc, jr_01a_6ca9

    ld [hl], h
    rst $28
    db $76
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rlca
    nop
    rra
    inc bc
    daa
    inc bc
    rrca
    dec b
    ccf
    dec b
    ld e, e
    scf
    inc a
    inc bc
    dec bc
    nop
    ld bc, $0300
    ld bc, $0103
    rlca
    nop
    nop
    nop
    or $00
    rst $28
    db $76
    ld b, a
    cp d
    ld [c], a
    call c, $6cf2
    ld [hl], d
    xor h
    ld a, [$fc94]
    or b
    add sp, -$50
    ld d, b
    and b
    ld hl, sp+$00
    db $ec
    or b
    db $fc
    xor b
    sbc $ac
    cp $00  ; and a / or a
    nop
    nop
    nop
    nop
    rrca
    rrca
    rla
    add hl, de
    dec l
    inc sp
    ld e, d
    ld h, [hl]
    or h
    call z, $88f8
    ld hl, sp-$78
    or h
    call z, $665a
    dec l
    inc sp
    rla
    add hl, de
    rrca
    rrca
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
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    rla
    jr jr_01a_6da0

    inc sp
    ld a, [hl-]
    ld h, $34
    inc l
    jr c, @+$3a

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    rlca
    add hl, bc
    rrca
    ld d, $1a
    ld a, [hli]
    ld [hl], $5c
    ld h, h
    or h
    call z, $88f8
    ld hl, sp-$78
    or h
    call z, Call_01a_645c
    ld a, [hli]
    ld [hl], $16
    ld a, [de]
    add hl, bc
    rrca
    dec b
    rlca
    inc bc
    inc bc

jr_01a_6da0:
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
    inc bc
    inc bc
    dec b
    ld b, $0b
    inc c
    rla
    jr jr_01a_6de0

    inc sp
    ld d, [hl]
    ld l, [hl]
    sbc b
    ld hl, sp-$20
    ldh [rP1], a
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
    ccf
    nop
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop

jr_01a_6de0:
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
    inc e
    nop
    di
    inc c
    db $fd
    xor $fd
    xor $f3
    inc c
    inc e
    nop
    nop
    nop
    nop
    nop
    jr jr_01a_6e04

jr_01a_6e04:
    inc a
    jr jr_01a_6e43

    jr jr_01a_6e45

    jr jr_01a_6e47

    jr jr_01a_6e49

    jr jr_01a_6e4b

    jr jr_01a_6e4d

    jr jr_01a_6e4f

    jr @+$3e

    jr jr_01a_6e95

    nop
    ld e, d
    inc a
    ld e, d
    inc a
    inc h
    jr jr_01a_6e5b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    rra
    dec c
    rra
    ld c, $0f
    rlca
    rra
    dec bc
    dec hl
    dec e
    dec a
    jr jr_01a_6e89

    jr c, jr_01a_6eaf

    jr nc, jr_01a_6ea1

    jr nc, jr_01a_6eab

    jr nz, jr_01a_6ead

    jr nz, jr_01a_6eaf

    jr nz, jr_01a_6e41

jr_01a_6e41:
    nop
    ccf

jr_01a_6e43:
    nop
    rst JumpTable

jr_01a_6e45:
    ccf
    ld [hl], a

jr_01a_6e47:
    ld hl, sp-$28

jr_01a_6e49:
    ldh [$60], a

jr_01a_6e4b:
    add b
    add b

jr_01a_6e4d:
    nop
    ret nz

jr_01a_6e4f:
    add b
    ldh [$c0], a
    ldh a, [$e0]
    ld a, [$7570]
    ld a, [hl-]
    dec l
    ld d, $1d

jr_01a_6e5b:
    ld c, $23
    inc e
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
    rra
    nop
    cpl
    rra
    cpl
    rra
    rra
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

jr_01a_6e89:
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

jr_01a_6e95:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_6ea1:
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

jr_01a_6eab:
    nop
    nop

jr_01a_6ead:
    nop
    nop

jr_01a_6eaf:
    nop
    inc e
    nop
    ld a, [de]
    inc c
    db $fd
    ld b, $37
    jp c, $da27

    db $fd
    ld b, $1a
    inc c
    inc e
    nop
    ld h, b
    nop
    sub b
    ld h, b
    cp b
    ld [hl], b
    ld a, l
    jr c, jr_01a_6f08

    dec e
    rra
    ld c, $0f
    rlca
    rra
    dec bc
    dec hl
    dec e
    dec a
    jr jr_01a_6f29

    jr c, jr_01a_6f4f

    jr nc, jr_01a_6f41

    jr nc, jr_01a_6f4b

    jr nz, jr_01a_6f4d

    jr nz, jr_01a_6f4f

    jr nz, jr_01a_6ee1

jr_01a_6ee1:
    nop
    ccf
    nop
    rst JumpTable
    ccf
    ld [hl], a
    ld hl, sp-$28
    ldh [$60], a
    add b
    add b
    nop
    ret nz

    add b
    ldh [$c0], a
    jp nc, $9de0

    ld h, d
    ld [hl], a
    ld a, [de]
    daa
    ld a, [de]
    dec a
    ld b, $5b
    inc a
    ld a, $00   ; xor a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_6f08:
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
    jr jr_01a_6f16

jr_01a_6f16:
    inc h
    jr jr_01a_6f55

    jr jr_01a_6f57

    jr jr_01a_6f59

    jr jr_01a_6f5b

    jr jr_01a_6f5d

    jr jr_01a_6f5f

    jr jr_01a_6f61

    jr jr_01a_6f63

    jr jr_01a_6f65

jr_01a_6f29:
    jr jr_01a_6f67

    jr jr_01a_6f69

    jr jr_01a_6f6b

    jr jr_01a_6f55

    jr jr_01a_6f57

    jr jr_01a_6f71

    nop
    rst $30
    jr @-$17

    ld e, d
    cp l
    ld h, [hl]
    ld e, d
    inc a
    inc a
    nop
    nop

jr_01a_6f41:
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

jr_01a_6f4b:
    nop
    nop

jr_01a_6f4d:
    nop
    nop

jr_01a_6f4f:
    nop
    nop
    nop
    jr nc, jr_01a_6f54

jr_01a_6f54:
    ld e, [hl]

jr_01a_6f55:
    jr nz, jr_01a_6fd4

jr_01a_6f57:
    ld a, [bc]
    inc a

jr_01a_6f59:
    dec de
    ld a, l

jr_01a_6f5b:
    ld a, [bc]
    ld e, [hl]

jr_01a_6f5d:
    jr nz, jr_01a_6f8f

jr_01a_6f5f:
    nop
    nop

jr_01a_6f61:
    nop
    nop

jr_01a_6f63:
    nop
    nop

jr_01a_6f65:
    nop
    nop

jr_01a_6f67:
    nop
    nop

jr_01a_6f69:
    nop
    nop

jr_01a_6f6b:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_6f71:
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    db $fd
    ld a, d
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $00
    ld e, l
    ld [hli], a
    ld a, a
    ld [$1c3e], sp
    ld a, $00   ; xor a
    ld [hli], a
    inc e
    inc d

jr_01a_6f8f:
    ld [$001c], sp
    inc e
    ld [$081c], sp
    inc e
    ld [$081c], sp
    inc e
    nop
    inc d
    ld [$001c], sp
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec b
    ld [bc], a
    rlca
    nop
    rra
    inc bc
    cpl
    ld d, $1f
    inc b
    ld l, $19
    ccf
    jr jr_01a_7009

    jr c, jr_01a_702f

    jr nc, jr_01a_7021

    jr nc, @+$72

    jr nz, jr_01a_702d

    jr nz, jr_01a_702f

    jr nz, jr_01a_6fc1

jr_01a_6fc1:
    nop
    ccf
    nop
    rst JumpTable
    ccf
    ld [hl], a
    ld hl, sp-$28
    ldh [$e0], a
    nop
    ret nz

    nop
    ld b, b
    add b
    ld b, b
    add b
    ldh [rLCDC], a

jr_01a_6fd4:
    ldh a, [$60]
    ld a, b
    jr nc, jr_01a_7015

    jr @+$20

    nop
    add hl, bc
    ld b, $06
    nop
    nop
    nop
    ld h, [hl]
    nop
    db $db
    ld h, [hl]
    xor l
    db $76
    ld e, d
    inc a
    ld a, [hl]
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, d
    nop
    inc h
    nop
    inc a
    nop
    jr jr_01a_6ffa

jr_01a_6ffa:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01a_7002

jr_01a_7002:
    inc a
    nop
    inc h
    nop
    ld b, d
    nop
    ld b, d

jr_01a_7009:
    nop
    ld b, d
    nop
    rst $20
    nop
    db $db
    ld h, [hl]
    xor l
    db $76
    ld e, d
    inc a
    inc l

jr_01a_7015:
    jr jr_01a_7043

    jr jr_01a_7039

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_7021:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    jr c, jr_01a_702c

jr_01a_702c:
    rra

jr_01a_702d:
    nop
    nop

jr_01a_702f:
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

jr_01a_7039:
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

jr_01a_7043:
    nop
    nop
    nop
    ld h, b
    nop
    or $40
    cp e
    ld h, [hl]
    push af
    ld c, $4a
    inc a
    inc l
    jr jr_01a_707f

    jr jr_01a_7075

    jr jr_01a_7077

    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $04
    ld a, [bc]
    ld [$0014], sp
    inc c
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

jr_01a_7075:
    nop
    nop

jr_01a_7077:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_707f:
    nop
    nop
    nop
    nop
    ld [$1800], sp
    db $10
    cpl
    inc a
    ld b, d
    ld [$00f4], sp
    jr jr_01a_708f

jr_01a_708f:
    stop
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
    ld [$1408], sp
    inc b
    ld a, [hl-]
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    ld a, [hl-]
    ld [$0014], sp
    ld [$0000], sp
    nop
    nop

jr_01a_70be:
    nop
    nop
    nop
    jr nz, jr_01a_70c3

jr_01a_70c3:
    jr nc, jr_01a_70d5

    jr z, jr_01a_70df

    db $e4
    jr nc, jr_01a_7118

    db $10
    jr z, jr_01a_70cd

jr_01a_70cd:
    jr jr_01a_70cf

jr_01a_70cf:
    ld [$0800], sp
    nop
    jr jr_01a_70e5

jr_01a_70d5:
    jr z, jr_01a_7107

    ld c, [hl]
    jr jr_01a_70be

    db $10
    jr z, jr_01a_70dd

jr_01a_70dd:
    jr nc, jr_01a_70df

jr_01a_70df:
    jr nz, jr_01a_70fb

    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

jr_01a_70e5:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

jr_01a_70fb:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

jr_01a_7107:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

jr_01a_7118:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

Jump_01a_78be:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

Call_01a_78f6:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

Call_01a_7a76:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

Call_01a_7eb0:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

Jump_01a_7ebc:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

Jump_01a_7fbe:
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]

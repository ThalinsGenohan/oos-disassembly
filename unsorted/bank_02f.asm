; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02f", ROMX

    ld e, a
    db $30, $bf
    ld h, b
    ei
    ret nz

    ei
    inc e
    inc b
    rst JumpTable
    nop
    ld h, h
    add hl, bc
    rrca
    ld [$51ff], sp
    rst $08
    sub b
    db $20, $cd
    sub e
    ld [hl], l
    db $10
    rst $20
    ld a, c
    rst $38
    ccf
    rst $38
    jr jr_02f_403e

    rst $28
    rra
    call $cf08
    db $10
    add b
    di
    rst $08
    ld c, $ff
    cp $ff
    db $fc
    dec bc
    ld a, [bc]
    rst $38
    db $10
    rst $38
    ld c, c
    ld a, a
    db $20, $8f
    db $db
    rst $38
    add hl, bc
    ld a, a
    add b
    rst JumpTable
    ccf
    rst $38

Jump_02f_403e:
jr_02f_403e:
    ld c, b
    jr nz, jr_02f_4042

    db $10

jr_02f_4042:
    ei
    inc h
    dec b
    ld [$0800], sp
    rst $30
    nop
    add hl, bc
    rst $30
    ld a, [bc]
    or $fd
    inc b
    adc e
    ld a, d
    ld c, $8b
    ld a, c
    adc e
    ld a, b
    inc sp
    stop
    ld hl, sp-$21
    ld c, b
    reti


    nop
    and $ec
    rra
    sbc d
    db $fd
    inc c
    di
    ld h, c
    nop
    rst $38
    ld h, [hl]
    rst $38
    ld l, $df
    rst $38
    rst $38
    ei
    nop
    rlca
    sbc a
    ldh [$88], a
    ld a, a
    rst $20
    cp $f7
    nop
    xor $d6
    jp hl


    ld h, b
    sbc a
    rst $38
    rst $38
    ret


    nop
    ccf
    ld h, a
    sbc a
    ld d, a
    rst $28
    di
    ld l, a
    and l
    nop
    ld a, e
    ld c, a
    cp l
    call $e1bf
    cp a
    push bc
    nop

jr_02f_4095:
    ccf
    pop bc
    ccf

jr_02f_4098:
    ld sp, $bdff
    ei
    sbc a
    inc bc
    ld a, e
    ld a, [de]
    rst $20
    adc $ff
    ld hl, sp+$4d
    jr c, jr_02f_4098

    ld [$2f80], sp
    ld a, [de]
    rst $38
    rst $38
    ld hl, $fe21
    ld [hl+], a
    rst $38
    ld [bc], a
    db $fc
    ld e, a
    inc a
    sbc a
    ld a, [hl]
    ccf
    dec e
    jr jr_02f_40c0

    nop
    ei
    add h
    ei

jr_02f_40c0:
    ld b, h
    ld a, e
    cp a
    jr nz, jr_02f_4095

    nop
    ld e, a
    ret nc

    sbc a
    ret nc

    rra
    rst $28
    sub b
    rst JumpTable
    ld b, b
    and b
    rst $38
    ld d, c
    ccf
    rst $38
    rst JumpTable
    ccf
    cp a
    ld a, a
    ld [$ff71], sp
    ld d, h
    xor e
    rst $28
    ld hl, $fffe
    db $fd
    nop
    cp $fe
    rst $38
    rst $00
    rst $38
    sub l
    ld [$482a], a
    push de
    rrca
    db $10
    ld [hl], a
    adc a
    dec e
    dec bc
    rlca
    ld a, e
    add a
    sbc b
    rst $38
    ld sp, $22fd

Jump_02f_40fb:
    ld sp, hl
    db $10
    ld bc, $0009
    ld a, a
    add b
    add b
    db $fc
    ld [de], a
    ei
    ld [$ff1f], sp
    ldh a, [$f0]
    rra
    jr nc, jr_02f_411e

    rst $38
    ld bc, $0020
    jr c, jr_02f_4128

    rst $38
    ld [hl+], a
    rst $38
    jr @+$01

    ld b, c
    rst $38
    ld [hl+], a
    stop

jr_02f_411e:
    jr jr_02f_415f

    rst $38
    inc hl
    inc b
    rst $38
    ldh [$5f], a
    cp $81

jr_02f_4128:
    rst $20
    ld sp, $ffff
    ld h, b
    ld de, $210a
    nop
    ld l, b
    cp a
    ret nz

    ld a, h
    add e
    ldh a, [rP1]
    rra
    jp c, $cc3f

    ccf
    add $3f
    sub e
    nop
    ld a, a
    add e
    ld a, a
    reti


    and a
    db $dd
    cp e
    ld e, l
    nop
    cp e
    pop hl
    ccf
    call $9b33
    ld a, l
    sbc a
    nop
    ld a, l
    db $fd
    ld e, a
    pop de
    ccf
    ret


    scf
    dec b

jr_02f_415b:
    nop
    rst $38
    ld [hl], e
    db $ed

jr_02f_415f:
    ld [hl], e
    rst $28
    ld h, d
    sbc a
    dec c
    rrca
    cp $fa
    db $fd
    db $fd
    cpl
    ld a, [hl-]
    jr c, jr_02f_4190

    nop
    db $10
    ret nz

    ld [$fe00], sp
    ccf
    cp $03
    cp $e3
    ld e, $fb
    nop
    rlca
    rst JumpTable
    db $10
    db $fc
    ei
    rrca
    rrca
    ld hl, sp+$28
    ld [$01ff], sp
    jr nz, @+$01

    ret nz

    nop
    ld bc, $0706
    dec bc
    inc c

jr_02f_4190:
    ld d, $18
    rla
    jr jr_02f_41b8

    ccf
    cpl
    inc a
    ld [hl], h
    jr c, jr_02f_415b

    nop
    rst $38
    cp $08
    rra
    inc b
    rrca
    rlca

jr_02f_41a3:
    ld hl, sp+$0a
    ld a, [c]
    db $f4
    db $d3
    inc [hl]
    ld a, b
    inc de
    ret nz

    nop
    rst $38

jr_02f_41ae:
    ld a, a
    db $10
    ld sp, hl
    jr nz, jr_02f_41a3

    ldh [$1f], a
    ld d, b
    ld c, a
    cpl

jr_02f_41b8:
    sra h
    ld e, $c8
    ret nz

    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    ret z

    jr c, jr_02f_41ae

    jr @-$3a

    db $fc
    db $f4
    inc a
    ld l, [hl]
    inc e
    ld bc, $f841
    pop af
    rrca
    or $0f
    db $eb
    inc e
    ld d, $17
    db $e3
    rst $38
    rst $28
    db $fc
    inc [hl]
    ret nz

    nop
    nop
    rrca
    rrca
    scf
    jr c, jr_02f_4240

    ld h, a
    xor a
    rst JumpTable
    ret c

    cp b
    ld [hl], b
    or b
    ldh [rNR41], a
    ret nz

    nop
    nop
    ldh a, [$f0]
    db $ec
    inc e
    jp c, $f5e6

    ei
    dec de
    dec e
    ld c, $0d

jr_02f_41fd:
    rlca
    inc b
    ld bc, $3f04
    sbc a
    ldh [$cf], a
    ldh a, [$b7]
    ld a, b
    ret z

    db $ec
    rra
    rst $00
    rst $38
    rst $30
    ld l, [hl]
    rra
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
    nop
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
    jr c, jr_02f_41fd

    ei
    ld d, l

jr_02f_4240:
    ld d, l
    nop
    db $fd
    ld [$a8d4], a
    ret nz

    and b
    ld b, b
    add b
    ld d, l
    ld d, l
    nop
    ld d, c
    add e
    rlca
    rlca
    rrca
    rrca
    rra
    ld e, $05
    ld d, [hl]
    rst $38
    ld [hl], e
    adc a
    rst $08
    ccf
    rra
    ccf
    ccf
    ccf
    ld a, a
    cp a
    ld [bc], a
    ld a, b
    rst $38
    ld b, h
    adc c
    db $db
    ld l, l
    dec l
    ld a, a
    ccf
    ccf

jr_02f_426d:
    ld a, a
    ccf
    ld a, a
    add hl, bc
    ld b, b
    ccf
    add h
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
    add b
    sbc a
    ld c, b
    ld [hl], b
    ret c

    ld h, b
    ldh [$e0], a
    ldh [$8f], a
    ldh a, [$86]
    ld sp, hl
    add b
    rst $38
    ld bc, $e055
    ld l, h
    jr jr_02f_426d

    ccf
    xor a
    ld [hl], b
    ld e, h
    ld e, b
    sbc b
    sbc h
    sbc a
    nop
    ld d, l
    rrca
    ld [hl], $18
    db $eb
    db $fc
    push bc
    ld a, $62
    rra
    ld [hl-], a
    ld sp, $f171
    ld a, [bc]
    add b
    ld sp, hl
    ld [hl-], a
    ld c, $3b
    ld b, $07
    rlca
    rlca
    pop af
    rrca
    ld h, c
    sbc a
    ld bc, $10ff
    dec d
    rst $38
    pop af
    xor $e0
    xor $dd
    adc $fd
    call z, Call_02f_60f3
    jr c, jr_02f_42eb

    nop
    nop
    ldh [rNR41], a
    ld d, b
    or b
    db $ec
    sbc h
    ld e, [hl]
    ld [c], a
    or d
    ld a, [hl]
    adc $3e
    db $f4
    inc c
    sub h
    ld l, h
    nop
    nop
    rlca
    inc b
    ld a, [bc]
    dec c
    scf
    add hl, sp
    ld a, d
    ld b, a
    ld c, l
    ld a, [hl]
    ld [hl], e

jr_02f_42eb:
    ld a, h
    cpl
    jr nc, jr_02f_4318

    ld [hl], $ff
    nop
    add b
    ldh [$f0], a
    or b
    ld hl, sp+$68
    call c, Call_02f_4cf4
    ld a, b
    dec hl
    rst $38
    add b

Call_02f_42ff:
    sub l
    db $fd
    sub a
    db $fc
    sub a

Jump_02f_4304:
    sbc a
    add b
    ld b, h
    ld bc, $fb00
    ld l, a
    sub b
    rst $38
    di
    inc c
    and l
    ld d, d
    ld a, d
    ld d, $ed
    ld e, $bf
    nop
    nop

jr_02f_4318:
    dec a
    jp nz, $a017

    ld e, $e0
    cp a
    nop
    push hl
    jr @-$33

    inc h
    sub $2c
    ei
    inc e
    ld e, l
    ld d, l
    nop
    ld b, b
    add b
    add b
    ld bc, $3f0f
    rst $38
    ld d, l
    ld d, l
    nop
    ccf
    ld a, $7d
    cp $fd
    ld a, [$aaf4]
    add l
    ld d, b
    rst $38
    ccf
    cp a
    ld a, a
    ccf
    rra
    rra
    jr nz, jr_02f_43a7

    ldh [$bf], a
    ret nz

    dec bc
    sub b
    ccf
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    dec bc
    rra
    add b
    inc sp
    nop
    nop
    ld e, b
    ld h, [hl]
    sub l
    ld [c], a
    ld d, b
    ld l, a
    ld l, d
    ld [hl], c
    ld l, h
    ldh a, [$57]
    jr c, jr_02f_43a4

    rra
    adc e
    inc sp
    inc d
    nop
    ccf
    ret nz

    ld a, a
    ld h, b
    ld a, b
    rst $10
    ld c, a
    adc e
    add a
    db $fd
    add e
    add [hl]
    cp $7c
    ld a, h
    inc b
    add b
    ld hl, sp-$61
    ldh [$8f], a
    ldh a, [$87]
    ret nz

    rst $38
    rst $38
    ld c, a
    rst $00
    sub a
    cp e
    cp $bb
    db $10
    add b
    rra
    pop af
    rrca
    pop hl
    pop bc
    ccf
    inc bc
    rst $38
    rst $38
    rst $20
    db $e3
    set 3, l
    ld a, a
    db $dd
    nop
    ld e, b
    pop hl
    inc bc
    cp $06

jr_02f_43a4:
    db $fc
    ld e, $fc

jr_02f_43a7:
    rst $28
    ld a, [c]
    reti


    rst JumpTable
    ld a, a
    ld a, a
    ld a, $00
    nop
    dec sp
    ld h, $5d
    and $7b
    call nz, Call_02f_4af5
    rst JumpTable
    ld h, b
    rst $38
    ld b, b
    rst $10
    ld l, b
    cp h
    ld h, e
    jr z, jr_02f_43c2

jr_02f_43c2:
    db $fc
    sub h
    ld l, h
    inc b
    inc b
    db $ec
    inc d
    ld a, [hl-]
    add $3a
    add $fa
    ld b, $ea
    ld d, $0a
    nop
    inc a
    add hl, hl
    ld [hl], $3f
    jr nz, @+$25

    inc hl
    ld e, a
    ld h, b
    ld d, d
    ld l, l
    ld d, e
    ld l, h
    ld e, a
    ld h, b
    nop
    nop
    call c, $ba64
    ld h, a
    sbc $23
    xor a

jr_02f_43eb:
    ld d, d
    ei
    ld b, $ff
    ld [bc], a
    db $eb
    ld d, $3d
    add $50
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
    jr jr_02f_4412

    ei
    nop
    nop
    ld a, [bc]

jr_02f_4412:
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
    jr c, jr_02f_43eb

    nop
    inc bc
    ld bc, $0101
    call nz, $02c5
    rst $00
    rst $38
    nop
    ld d, h
    ld d, l
    rst $38
    nop
    nop
    nop
    db $10
    rst $28
    jr jr_02f_4439

jr_02f_4439:
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
    adc d
    ld a, [bc]
    nop
    rst $38
    ld b, d
    cp l
    rst $30
    rst $38
    inc h
    rst $38
    ld e, d
    cp l
    rst $38
    rst $38
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
    ld [$0042], a
    rlca
    nop
    ld a, b
    ld [$1071], sp
    jr c, @+$2f

    ld a, $2d
    inc l
    inc sp
    rra
    rra
    rlca
    nop
    ld d, b
    di
    db $fc
    ld b, [hl]
    ld hl, sp+$3c
    sub b
    ld a, b
    ld a, e
    ldh a, [$9d]
    rra
    rst $08
    jr c, jr_02f_449d

    rrca
    nop
    ld d, b
    rst $08
    ld a, $62
    rst JumpTable
    inc a
    ld l, c
    ld e, $fe
    rrca
    cp c
    ld hl, sp-$0d
    inc e
    add sp, -$10
    nop
    rlca
    nop
    ld a, $10

jr_02f_449d:
    sbc [hl]
    ld [$b41c], sp
    ld a, h
    or h
    inc [hl]
    call z, $f8f8
    ldh [rP1], a
    rrca
    nop
    ld l, h
    or e
    ld d, a
    jr c, @+$2f

    ld e, $1b
    daa
    ld b, $09
    ld bc, $2802
    nop
    add $fa
    ld b, $3a
    ld a, [hl-]
    ld a, [hl]
    add d
    ld a, [c]
    cp $ce
    ld a, $3c
    jp nz, RST_00

    ld [$7f40], sp
    ld d, c
    ld l, [hl]
    ld [hl], c
    ld c, [hl]
    ld b, b
    ld a, [hl]
    ld b, c
    ld c, a
    ld [hl], e
    ld a, h
    inc a
    ld b, e
    nop
    nop
    nop
    rrca
    nop
    ld [hl], $cd
    ld [$b41c], a
    ld a, b
    ret c

    db $e4
    ld h, b
    sub b
    add b
    ld b, b
    nop
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

jr_02f_4500:
    ld c, $f6
    rrca
    and $1f
    dec c
    ei
    dec e
    di
    rst $38
    add h
    nop
    rst $28
    rra
    jr jr_02f_4500

    daa
    ld c, b
    rst JumpTable
    sub a
    rst JumpTable
    adc h
    cp b
    xor e
    cp e
    xor c
    cp c
    nop
    nop
    di
    rrca
    rst $08
    ccf
    sbc b
    ld a, a
    scf
    rst $38
    inc l
    ld hl, sp+$2b
    ei
    add hl, hl
    ld sp, hl
    ld h, l
    db $fd
    ld d, l
    ld d, l
    nop
    ld [$4011], sp
    ld [bc], a
    adc b
    ld [hl+], a
    inc b
    ld b, b
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
    inc hl
    nop
    ei
    rst JumpTable
    rlca
    inc c
    cp h
    ld [$dfac], sp
    sbc c
    rst $28
    adc d
    rst $28
    adc d
    rst $28
    nop
    dec d
    rst $30
    rst $38
    ldh [$db], a
    jr nc, jr_02f_459c

    db $10
    rst JumpTable
    rst JumpTable

Call_02f_4561:
    inc sp
    rst $38
    sbc a
    ld e, a
    ld e, a
    add b
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
    ld b, d
    and b
    nop
    ld bc, $030c
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    inc b
    ld hl, sp+$22
    ret nz

    ld b, d

jr_02f_459c:
    and b
    nop
    ret nz

    jr @-$1e

    rlca
    ld hl, sp-$01
    rst $38
    rst $38
    db $10
    rrca
    ld b, h
    inc bc
    adc e
    adc e
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_02f_45b2:
    nop
    nop
    nop
    add b
    inc b
    rst $38
    nop
    db $fd
    jr c, jr_02f_45b2

    ld d, h
    ld a, [c]
    sub d
    ld a, [$c6ba]
    cp $83
    add d
    cp $54
    ld [bc], a
    rst $38
    sub e
    add d

jr_02f_45cb:
    add e
    and d
    sbc $82
    cp $8a
    or $93
    ld l, h
    nop
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
    ld bc, $5f50
    and l
    cp l
    and l
    cp l
    add $bc
    db $d3
    ret nc

    rst JumpTable
    rst $28
    ld [hl], b
    and b
    ret nz

    ld bc, $ff50
    and l
    db $fd
    and $3c
    or e
    ld a, a
    db $10
    rra
    jr nz, jr_02f_466d

    ldh [$bf], a
    ret nz

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


    jr jr_02f_45cb

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
    nop
    ld d, a
    rst $38
    adc e
    rst $28
    adc [hl]
    rst $28
    adc a
    ldh [$80], a
    ldh [$9f], a
    and b
    ret nz

    ld [$ff87], sp
    rst JumpTable
    rst $30
    ld a, a
    rst $30
    rlca
    rlca
    rlca
    ei
    rrca
    db $fd
    inc bc
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

jr_02f_466d:
    nop
    nop
    ld [hl+], a
    inc b
    ei
    ld b, b
    cp a
    pop bc
    ld c, b
    add hl, hl
    rst $38
    cp l
    inc a
    ld e, d
    ld b, d
    dec [hl]
    sub b
    and c
    xor l
    sub c
    ld a, a
    ld e, l
    adc b
    ld d, l
    xor d
    ld h, b
    ld d, l
    inc hl
    pop bc
    rst $08
    db $fc
    xor $fd
    db $ec
    nop
    di
    jp nc, $eaff

    db $dd
    or $cf
    db $db
    nop
    rst $20
    adc $f1
    rrca
    rst $38
    ccf
    rst $38
    ld a, h
    nop
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    db $e3
    db $fc
    rst $00
    ld b, b

jr_02f_46ab:
    ld hl, sp+$21
    jp $dbfc


    db $fc
    reti


    cp $0c
    pop bc
    cp $c9
    or $2f
    ld hl, $fcd3
    nop
    db $eb
    db $fc
    di
    db $fc
    dec sp
    db $fc
    dec bc
    db $fc
    nop
    ld b, e
    db $fc
    rlca
    ld hl, sp-$22
    ld hl, $03fd
    nop
    ld a, a
    add b
    db $fd
    ld [bc], a
    ld hl, sp+$1f
    call z, $003f
    add $3f
    rst $10

jr_02f_46db:
    ccf
    add e
    ld a, a
    srl a
    ld [$80ff], sp
    add b
    adc b
    inc hl
    ld a, a
    rst $38
    ld a, a
    jr jr_02f_46ab

    ld b, b
    ret z

    inc hl
    daa
    rra
    rst $38
    inc h
    ld bc, $50f8
    ldh [$a0], a
    ret nz

    add b
    ret nz

    ld b, d
    add b
    ld b, c
    jp $a5ff


    ld a, [hl]
    inc a
    jr jr_02f_4704

jr_02f_4704:
    add b
    nop
    add hl, bc
    rst $38
    nop
    rst JumpTable
    jr nz, jr_02f_46db

    jr nc, @-$35

    ld bc, $3336
    call z, Call_02f_6c93
    sbc a
    ld h, b
    dec l
    nop
    db $fd
    ld [bc], a
    ld a, [$f404]
    ld [$10e8], sp
    ldh a, [rNR42]
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
    jr nz, jr_02f_4752

    ld e, a
    nop
    jr nz, jr_02f_4774

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

jr_02f_4752:
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
    jr nz, @+$44

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
    sub h
    inc hl
    ld d, l
    adc b
    ld b, c
    xor d
    ld h, l
    db $dd
    adc b
    ld b, b
    rst $38
    ld b, b

jr_02f_4774:
    pop af
    xor $e0
    rst $38
    xor $dd
    nop
    adc $fd
    call z, $e0f3
    ld a, a
    ld a, b
    ccf
    nop
    cp a
    rra
    reti


    and $ec
    rra
    sbc d
    db $fd
    nop
    inc c
    di
    ld h, c
    rst $38
    ld h, [hl]
    rst $38
    ld l, $df
    add b
    ccf
    ei
    rlca
    sbc a
    ldh [$88], a
    ld a, a
    rst $20
    ld bc, $f7fe
    xor $d6
    jp hl


    ld h, b
    sbc a
    cpl
    nop
    rrca
    rra
    ccf
    ccf
    ld a, h
    ld a, a
    ld [hl], b
    rst $38
    nop
    add sp, -$01
    db $e3
    db $fc
    push bc
    ld a, [$f8d7]
    ret nz

    ld sp, $0c20
    rst $38
    nop
    rst $38
    ld b, d
    db $fd
    ld [$ff10], sp
    rst $00
    jr c, jr_02f_47f0

    cp $03
    ld [bc], a
    ld h, d
    inc de
    inc hl
    ld d, h
    ld bc, $1101
    inc hl
    cp $00
    rst $38
    and b
    ret nz

    ret nc

    ldh [$e8], a
    ldh a, [rSVBK]
    inc b
    ldh [rLCDC], a
    ldh [$60], a
    ret nz

    dec hl
    ldh [$80], a
    add b
    ld hl, $80f0
    cp h
    ret nz

    cp a
    ret nz

    rst JumpTable
    nop

jr_02f_47f0:
    ldh [$e7], a
    ld hl, sp+$7f
    rst $38
    ccf
    rst $38
    nop
    inc b
    nop
    jr jr_02f_47fc

jr_02f_47fc:
    inc a
    nop
    ld h, $e7
    jr jr_02f_4802

jr_02f_4802:
    cp l
    ld a, [hl]
    rst $38
    rst $38
    jp $81ff


    nop
    inc bc
    ld b, d
    add c
    and l
    ld b, d
    db $db
    inc h
    cpl
    inc sp
    ret nz

    ld h, c
    nop
    ld a, [bc]
    add b
    nop
    ld b, b
    add b
    and b
    ret nz

    rst $38
    ret nz

    nop
    ld bc, $0301
    inc bc
    dec b
    rlca
    db $f4
    nop
    inc bc
    ld [bc], a
    ld a, $3f
    or $ff
    ld l, $f7
    ld e, a
    rst $20
    or l
    rst $08
    nop
    nop
    ld d, b
    or b
    ld l, a
    sbc a
    reti


    rst $20
    cpl
    pop af
    inc sp
    db $fd
    adc a
    rst $38
    pop bc
    ld a, a
    ld a, l
    and e
    ret nz

    nop
    inc bc
    dec c
    ld c, $17
    jr jr_02f_486b

    inc de
    cpl
    scf
    ld d, a
    ld l, a
    xor [hl]
    sbc $d8
    cp b
    jp $ffc0


    db $fc
    inc bc
    sbc e
    ld a, h
    add b
    add b
    jr nc, jr_02f_4892

    ld c, b
    ld c, b
    inc b
    add b
    dec e
    add hl, bc
    ld c, $0b
    inc c

jr_02f_486b:
    ld [de], a
    rla
    jr @+$20

    scf
    ld a, d
    inc hl
    ld a, [hl]
    inc sp
    ld a, [hl]
    nop
    nop
    push de
    cpl
    cp $0d
    ei
    inc c
    rst $28
    inc e
    ld a, a
    sub h
    sub $3d
    cp e
    ld a, l
    rst $30
    ld l, c
    ld d, b
    nop
    db $e3
    dec a
    db $dd
    ld sp, $f1cf
    rrca
    ld l, l
    di

jr_02f_4892:
    db $dd
    or e
    sbc l
    ld [hl], e
    dec e
    di
    inc d
    nop
    ld e, b
    ld d, l
    ld a, [hl-]
    scf
    ccf
    dec hl
    inc e
    rra
    inc l
    dec d
    ld c, $0d
    ld d, $0a
    rlca
    nop
    dec d
    rra
    ld e, $e1
    rst $30
    ld [$c03f], sp
    scf
    rst $08
    db $eb
    inc e
    add sp, -$18
    db $ec
    adc b
    nop
    push bc
    ld a, a
    cp c
    ld a, e
    dec sp
    ld a, l
    add e
    cp l
    jp $53ed


    db $fd
    ld b, e
    cp l
    jp $a71a


    inc bc
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    xor d
    add a
    inc e
    inc e
    ld h, $2a
    ld b, a
    ld c, c
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [bc], a
    xor d
    add a
    inc e
    inc e
    ld h, $2a
    ld b, a
    ld c, c
    adc c
    adc c
    adc c
    adc c
    adc c
    nop
    ld d, e
    rst $38
    reti


    and $ec
    rra
    sbc d
    db $fd
    inc c
    di
    ld h, c
    ld h, [hl]
    ld l, $df
    jr nz, @+$06

    sbc a
    ei
    rlca
    ldh [$88], a
    ld a, a
    rst $20
    cp $f7
    xor $d6
    jp hl


    ld h, b
    rst $38
    rst $38
    nop
    dec b
    cp a
    ret


    ccf
    ld h, a
    sbc a
    ld d, a
    rst $28
    di
    ld l, a
    and l
    ld a, e
    ld c, a
    cp l
    call $04e1
    dec b
    rst $38
    push bc
    ccf
    pop bc
    ccf
    ld sp, $fbbd
    sbc a
    ld a, e
    ld a, [de]
    rst $20
    adc $f8
    ld b, b
    ld a, c
    rst $38
    ld a, a
    cp h
    ld a, a
    ccf
    ld a, a
    ld a, a
    db $fc
    db $fc
    db $fc
    db $fc
    ld c, b
    jr @+$01

    ld b, b
    ld b, h
    ei
    ret nz

    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld b, b
    call nz, $847b
    inc b
    rrca
    rst $38
    dec e
    rst $28
    ei
    add a
    ld a, a
    adc a
    ld a, a
    adc l
    ld a, a
    ei
    rla
    rst $28
    db $10
    dec d
    ld sp, $3e6d
    ld l, [hl]
    ld l, a
    jr nc, jr_02f_49cd

    add hl, sp
    ld h, a
    add hl, sp
    ld l, a
    ld l, a
    ld a, [hl]
    nop
    dec b
    ldh a, [$3e]
    pop bc
    di
    inc c
    ld h, d
    db $fd
    rst $38
    sub b
    sbc a
    ld [hl], b
    sbc l
    ld [hl], d
    cpl
    rst $28
    ld [$fd22], sp
    db $ed
    di
    add hl, de
    rst $20
    inc bc
    sbc l
    ld h, e
    sbc l
    ld h, e
    inc bc
    cp c
    ld a, a
    ld b, a
    ld [bc], a
    rst $38
    nop
    rlca
    dec bc
    inc bc
    dec b
    ld bc, $0102
    nop
    nop
    ld [hl], a
    adc a
    cp b
    rst $00
    rst $28
    ldh a, [$b9]
    ld a, [hl]
    ld l, a
    sbc a
    add hl, de
    ld h, a
    rlca
    jr jr_02f_49a9

jr_02f_49a9:
    ld bc, $0022
    push bc
    ld a, l
    add e
    dec sp

Jump_02f_49b0:
    pop bc
    ccf
    dec sp
    dec a
    jp $ffe1


    sbc a
    ld a, a
    ld a, a
    add b
    dec b
    db $10
    ld b, b
    ldh [rNR41], a
    db $e3
    inc hl
    add b
    ret nz

    ret z

    ld c, b
    ret nz

    and d
    ld h, d
    ldh [rNR41], a
    ld d, l
    nop

jr_02f_49cd:
    adc b
    add a
    add a
    add a
    sub a
    and e
    add b
    pop bc
    add b
    ret nz

    ret nz

    rst $38
    rst $38
    ld d, l
    nop
    adc c
    add a
    add a
    add a
    sub a
    and e
    add c
    pop bc
    add c
    pop bc
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $3f50
    cp a
    ret nz

    ld a, h
    add e
    ldh a, [$1f]
    jp c, $c6cc

    sub e
    ld a, a
    add e
    ld a, a
    inc d
    nop
    cp e
    reti


    and a
    db $dd
    ld e, l
    pop hl
    ccf
    call $9b33
    ld a, l
    sbc a
    ld a, l
    db $fd
    ld e, a
    ld [bc], a
    add b
    ld [hl], e
    pop de
    ccf
    ret


    scf
    dec b
    rst $38
    db $ed
    rst $28
    ld h, d
    sbc a
    dec c
    cp $fa
    db $fd
    rst $20
    ld a, [bc]
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    rlca
    db $fc
    inc b
    rlca
    ld [$ff2a], sp
    call nz, $c4fb
    ld a, e
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld b, b
    ld b, b
    ld a, a
    ret nz

    ld bc, $0750
    ld e, $ee
    dec e
    db $ed
    ld sp, hl
    ei
    ld bc, $faf9
    db $fd
    cp $fe
    nop
    inc l
    push hl
    add e
    ld h, c
    push af
    add l
    ld hl, $c3ad
    inc l
    ret


    rlca
    ld h, c
    jp hl


    add l
    ld hl, $07d9
    inc bc
    jr nc, @+$01

    call z, Call_02f_42ff
    adc a
    pop af
    cpl
    nop
    inc c
    rst $38
    inc sp
    rst $38
    ld d, l
    db $e3
    ld h, l
    jp $b500


    jp $c3a5


    push hl
    add e
    db $ed
    add e
    ld [bc], a
    ld a, h
    rst $38
    adc e
    rst $00
    ld c, c
    add a
    rra
    ld a, [bc]
    ld a, a
    ld bc, $bfff
    ret nz

    ldh a, [$80]
    ldh a, [$9f]
    ld hl, $ff4e
    and c
    rst $38
    add b
    ld hl, $2742
    adc a
    nop
    or $df

jr_02f_4a94:
    xor l
    rst $38
    sbc e
    ld h, h
    sbc h
    inc c
    ld b, b
    db $fc
    jr nz, jr_02f_4a94

    cp $fa
    add [hl]
    sbc a
    db $e3
    ld [bc], a
    or l
    bit 7, l
    jp $07c9


    ld hl, $0089
    ld [hl], a
    ld a, l
    rst $38
    rst $00
    rst $38
    add hl, sp
    rst $00
    rst $30
    inc b
    ld hl, sp-$13
    ld e, $cb
    rlca
    ld hl, $1fe7
    nop
    cp l
    ld a, a
    pop hl
    rst $38
    ld [hl], h
    adc e
    cp $01
    nop
    rst JumpTable

jr_02f_4ac9:
    jr nc, jr_02f_4ac9

    rst $38
    db $fd
    inc bc
    inc bc
    ld bc, $ff30
    ld bc, $2922
    ld d, h
    rst $28
    call nc, $00ef
    ret


    rlca
    jp z, $cb07

    ld b, $eb
    ld b, $e0
    dec h
    add hl, hl
    ld hl, $0ff1
    rlca
    rlca
    inc e
    nop
    rra
    ld [hl-], a
    dec a
    ld l, [hl]
    ld [hl], c
    ld e, a
    ld h, c
    rst $10
    nop

Call_02f_4af5:
    jp hl


    cp l
    jp $e39e


    and l
    jp $00c5


    db $e3
    db $ed
    di
    cp l
    rst $38
    add a

jr_02f_4b04:
    rst $38
    dec l
    ld bc, $7fd3
    add b
    cp e
    inc c
    ret


    rlca
    ld hl, $8900
    ld [hl], a
    ld a, l
    rst $38
    rst $00
    rst $38
    add hl, sp
    rst $00
    nop
    rst $28
    rra
    or a
    ld a, b
    cp e
    add $b7
    call $9e00
    pop hl
    sbc [hl]
    ldh [$bb], a
    call z, $ceb4
    nop
    or d
    call nz, $e0d9
    pop af
    inc c
    ld a, [hl-]
    add c
    nop
    ccf
    add c
    ld [hl], l
    dec bc
    ei
    ld b, $dc
    ld h, $00
    db $f4
    inc c
    cp b
    inc c
    ld d, b
    ldh [$c0], a
    add b
    nop
    add a
    nop
    dec bc
    rlca
    inc e
    ld c, $3d
    ld e, $00
    ld a, $3f

jr_02f_4b51:
    ld a, a
    ccf
    rst JumpTable
    ld h, b
    rst $28
    ld [hl], c
    nop
    db $76
    cp c
    add hl, sp
    ld e, [hl]
    ld d, $2f
    dec c
    inc de
    nop
    inc bc
    inc b
    nop
    nop
    db $fc
    ld [$9868], sp
    nop
    jr nc, jr_02f_4b04

    ld a, b
    db $10
    ld a, b
    sub b
    sbc c
    ldh a, [rP1]
    db $76
    ld sp, hl
    rst JumpTable
    ccf
    ccf
    ld a, a
    rst $38
    ld a, a
    add b
    ld b, d
    rst $38
    ldh a, [rIE]
    rst $00
    ld hl, sp-$63
    ldh [rP1], a
    ld l, d
    add b
    rst $28
    sbc a
    cp a
    add b
    add b
    ret nz

    ld [hl+], a
    ret nz

    rst $38
    jr nz, jr_02f_4b51

    rst $38
    ldh [$57], a
    rst $38
    nop
    sub a
    ld hl, sp-$70
    rst JumpTable
    cp a
    adc a
    ldh a, [$fb]
    inc d
    add h
    pop af
    adc [hl]
    ld d, h
    nop
    nop
    ld a, [bc]
    ld bc, $0c01
    inc bc
    inc bc
    dec b
    rlca
    inc hl
    jr nz, jr_02f_4bb3

    inc bc
    nop

jr_02f_4bb3:
    ld a, $3f
    or $ff
    ld l, $f7
    ld e, a
    rst $20
    nop
    or l
    rst $08
    ld d, b
    or b
    ld l, a
    sbc a
    reti


    rst $20
    nop
    cpl
    pop af
    inc sp
    db $fd
    adc a
    rst $38
    pop bc
    ld a, a
    jr nz, jr_02f_4c4c

    and e
    dec a
    dec c
    ld c, $17
    jr @+$1f

    nop
    inc de
    cpl
    scf
    ld d, a
    ld l, a
    xor [hl]
    sbc $d8
    ld bc, $ffb8
    rst $38
    db $fc
    inc bc
    sbc e
    ld a, h
    dec h
    add b
    jr nz, @-$7e

    add b
    jr nc, jr_02f_4c1e

    ld c, b
    ld c, b
    add hl, bc
    nop
    ld c, $0b
    inc c
    ld [de], a
    dec e
    rla
    jr jr_02f_4c17

    nop
    ld e, $37
    ld a, d
    inc hl
    ld a, [hl]
    inc sp
    ld a, [hl]
    push de
    nop
    cpl
    cp $0d
    ei
    inc c
    rst $28
    inc e
    ld a, a
    nop
    sub h
    sub $3d
    cp e
    ld a, l
    rst $30
    ld l, c
    dec a
    nop
    db $e3

jr_02f_4c17:
    db $dd
    db $e3
    ld sp, $f1cf
    rrca
    ld l, l

jr_02f_4c1e:
    nop
    di
    db $dd
    or e
    sbc l
    ld [hl], e
    dec e
    di
    ld d, l
    nop
    ld a, [hl-]
    scf
    ld e, b
    ccf
    ld e, b
    dec hl
    inc e
    rra
    nop
    inc l
    dec d
    ld c, $0d
    ld d, $0a
    rlca
    ld e, $00
    pop hl
    rst $30
    ld [$c03f], sp
    scf
    rst $08
    db $eb
    db $10
    inc e
    add sp, $1f
    ld hl, $1fec
    push bc
    ld a, a
    nop

jr_02f_4c4c:
    cp c
    ld a, e
    push bc
    dec sp
    ld a, l
    add e
    cp l
    jp $ed08


    ld d, e
    db $fd
    ld b, e
    dec h
    ld bc, $0201
    jr c, jr_02f_4c62

    inc bc
    ld [hl+], a
    add c

jr_02f_4c62:
    ld c, c
    inc bc
    inc e
    inc e
    inc bc
    ld h, $2a
    ld b, a
    ld c, c
    add a
    adc b
    pop hl
    rst $08
    ld b, b
    adc c
    pop hl
    rst $38
    rst $38
    ld [$fde1], a
    jp nz, $db1b

    add h
    set 0, c
    cpl
    nop
    ld h, d
    ld bc, $0009
    ld hl, sp-$01
    ld d, h
    add a
    cp [hl]
    ld b, e
    db $db
    ld hl, $d360
    pop bc
    inc a
    db $10
    ldh a, [rNR41]
    ldh [$7f], a
    inc b
    ret nz

    ld hl, sp-$79
    rst $38
    rrca
    dec hl
    ld [hl], a
    adc a
    nop
    ld a, a
    rst $38
    cp h
    ld a, a
    ccf
    ld a, a
    ld a, a
    db $fc
    ld [hl], b
    db $fc
    inc l
    jr nz, @+$47

    ld b, b
    rst $38
    ld b, h
    ei
    inc c
    rst $38
    ret nz

Call_02f_4cb2:
    ret nz

    ld a, a
    ld b, c
    cpl
    ld b, b
    call nz, Call_02f_7b00
    rrca
    rst $38
    dec e
    rst $28
    ei
    rrca
    add a
    inc b
    ld a, a
    adc a
    ld a, a
    adc l
    ld a, a
    daa
    rla
    rst $28
    nop
    ld l, l
    ld a, $6e
    ld sp, $306f

jr_02f_4cd1:
    ld h, [hl]
    add hl, sp
    db $10
    ld h, a
    add hl, sp
    ld l, a
    daa
    ld sp, $317e
    ld a, $00
    pop bc
    di
    inc c
    ld h, d
    db $fd
    rst $38
    sub b
    sbc a
    nop
    ld [hl], b
    sbc l
    ld [hl], d
    cpl
    ldh a, [$ef]
    ldh a, [$ed]
    ld bc, $19f3
    rst $20
    db $fd
    inc bc

Call_02f_4cf4:
    sbc l
    ld h, e
    ld hl, $2580
    cp c
    ld a, a
    db $fd
    ld b, a
    rlca
    dec bc
    inc bc
    ld [bc], a
    dec b
    ld bc, $0002
    ld bc, $c000
    ld [hl], a
    nop
    adc a
    cp b
    rst $00
    rst $28
    ldh a, [$b9]
    ld a, [hl]
    ld l, a
    inc b
    sbc a
    add hl, de
    ld h, a
    rlca
    jr jr_02f_4d50

    ld a, l
    add e
    ld [$3bc5], sp
    pop bc
    ccf
    inc hl
    dec a
    jp $00e1


    rst $38
    sbc a
    ld a, a
    ld a, a
    add b
    ldh [rNR41], a
    db $e3
    ld bc, $8023
    ld b, b
    ret nz

    ld b, b
    ret z

    ld c, b
    inc hl
    inc h
    and d
    ld h, d
    dec l
    add a
    adc b
    ld h, c
    sub a
    adc b
    nop
    and e
    add b
    pop bc
    add b
    ret nz

    ret nz

    rst $38
    rst $38
    jr nz, jr_02f_4cd1

    adc c
    ld h, c
    sub a
    adc c
    and e
    add c

jr_02f_4d50:
    pop bc
    and b
    ld hl, $2fc1
    call $ce82
    add c
    rst JumpTable
    nop
    add b
    sbc $80
    cp $80
    cp h
    add b
    ret c

    inc bc
    ret nz

    rst $28
    ldh [rIE], a
    nop
    nop
    inc [hl]
    inc hl
    ret z

    ret nz

    add hl, hl
    res 0, h
    ld bc, $ef0e
    rra
    ld a, a
    ld a, [de]
    adc a
    cp a
    rst $00
    inc hl
    and a
    rst $38
    ld h, b
    db $fc
    ld d, b
    db $fc
    add h
    rlca
    ld h, $04
    rst $38
    rlca
    call nz, $fb00
    call nz, $ff7b
    ld a, a
    ret nz

    ret nz

    ld a, a
    jr nz, jr_02f_4dd3

    rst $38
    ld hl, $ff7f
    ret nz

    ld e, $ee
    nop
    dec e
    db $ed
    ld sp, hl
    ei
    ld bc, $f907
    rlca
    ld [bc], a
    ld a, [$fd07]
    cp $fe
    nop
    nop
    rst JumpTable
    pop de
    pop af
    pop af
    rst $28
    rst $28
    push hl
    rst $20
    inc h
    push af
    rst $30
    ld hl, $fbf9
    ld hl, $20ff
    add [hl]
    jr nz, @+$01

    rst $38
    nop
    nop
    inc hl
    and b
    rst $00
    ld h, b
    ld bc, $0f20
    inc c
    or a
    dec h
    scf
    dec h
    ld d, l
    nop
    ld b, l
    push de
    ld b, l

jr_02f_4dd3:
    rst $10
    ld b, l
    rst $38
    cp e
    cp e
    nop
    add e
    rst $38
    ld a, l
    sub l
    jp nc, $e2a5

    xor l
    db $10
    ld [c], a
    xor e
    db $e4
    ld h, c
    sbc e
    call nc, $d0b7
    nop
    adc a
    rrca
    cp a
    ccf
    and e
    inc hl
    and e
    dec hl
    sbc b
    jr nz, jr_02f_4e19

    inc hl
    ld [hl+], a
    dec h
    ld bc, $fefe
    pop bc
    ld [hl+], a
    ld b, c
    db $76
    adc c
    or [hl]
    pop bc
    cp [hl]
    ld b, c
    jr @+$01

    rst $38
    nop
    ld h, d
    ld bc, $f809
    ld hl, sp+$54
    ld [bc], a

jr_02f_4e10:
    add h
    cp [hl]
    ld b, d
    db $db
    ld hl, $c1d3
    or [hl]
    inc c

jr_02f_4e19:
    ret


    or [hl]
    pop bc
    cp [hl]
    ld b, c
    rlca
    ld a, [bc]
    or a
    ret nz

    ld h, c
    cp a
    ld b, c
    ld [hl+], a
    rst $38
    rst $38
    add b
    add b
    inc hl
    inc e
    rst $38
    nop
    nop
    ld h, e
    ret nz

    add hl, hl
    or e
    ld b, c
    nop
    ld [hl], e
    add c
    ei
    ld bc, $017b
    ld a, a
    ld bc, $3d02
    ld bc, $031b
    rst $30
    rlca
    ld [hl-], a
    rst $30
    inc a
    ld [$57f7], sp
    ld [hl+], a
    jr nz, jr_02f_4eb1

    cp l
    call z, $bb00
    jp Jump_02f_403e


    cp [hl]
    pop bc
    or [hl]
    ret


    jr nc, jr_02f_4e10

    pop bc
    dec h
    ld hl, $3f3f
    adc a
    adc a
    jr nc, jr_02f_4ee1

    ld a, [hl]
    ld a, l
    and b
    push af
    di
    call $09c3
    dec a
    inc bc
    inc bc
    db $fd
    rst $28
    db $d3
    ld hl, $0e01
    sbc h
    ld d, d
    nop
    nop
    ld h, e
    and h
    dec h
    rst $28
    db $eb
    ld bc, $2c38
    ei
    ei
    jr z, jr_02f_4eb0

    inc l
    cpl
    inc e
    jp Jump_02f_7e42


    ld [hl], l
    ld h, d
    ld hl, $fc03
    inc b
    inc b
    ld hl, sp+$08
    jp hl


    add hl, bc
    inc l
    or b
    cpl
    nop
    rst $08
    ld d, b
    ld e, b
    ld b, b
    pop de
    pop bc
    ld d, d
    ld b, d
    ld c, $d3
    jp $3c7e


    cp a
    jr nz, jr_02f_4ecd

    ccf
    inc b
    jr nz, jr_02f_4ecc

    db $10
    sub a
    sub b

jr_02f_4eb0:
    daa

jr_02f_4eb1:
    ld [bc], a
    rst $38
    nop
    cp $03
    inc bc
    ld [bc], a
    cp $fe
    rst $00

jr_02f_4ebb:
    ld b, a
    ld [$44d7], sp
    rst $10
    ld b, a
    cpl
    ld h, b
    rst JumpTable
    ld e, a
    nop
    ret nz

    ldh [$60], a
    ld a, a
    ld a, a
    rst $38

jr_02f_4ecc:
    ret nz

jr_02f_4ecd:
    rst $38
    stop
    rst $38
    ldh a, [$2f]
    inc l
    set 6, a
    inc b
    rlca
    scf
    inc b
    sub a
    add h
    ld d, a
    dec a
    ld b, c
    ld [hl-], a
    daa

jr_02f_4ee1:
    inc b
    ei
    scf

jr_02f_4ee4:
    add b
    ld a, a
    ld h, c
    daa
    dec hl
    nop
    inc e
    inc e
    ld h, $2a
    ld b, a
    ld c, c
    add a
    adc b
    ret nc

    pop hl
    rst $08
    adc c
    pop hl
    rst $38
    nop
    rst $38
    ld a, a
    inc bc
    rst $38
    ld b, c
    rst $38
    ld e, l
    rst $38
    ld d, l
    ld b, e
    ld b, a
    ld b, $6e
    sub c
    ld l, a
    add b
    ld a, a
    ld b, c
    ld [hl+], a
    rst $38
    ld b, b
    rst $38
    ld b, h
    ld a, a
    ret


    ccf
    ld h, a
    sbc a
    ld d, a
    nop
    rst $28
    di
    ld l, a
    and l
    ld a, e
    ld c, a
    cp l
    call $bf04
    pop hl
    cp a
    ld hl, $21df
    rst $38
    ld bc, $0178
    ld [hl+], a
    ld b, c
    ld [hl+], a
    dec hl
    ld a, a
    rst $38
    cp h
    inc bc
    ld a, a
    ccf
    ld a, a
    ld a, a
    db $fc
    db $fc
    dec l
    jr nz, jr_02f_4ebb

    ld b, l
    ld b, b
    rst $38
    ld b, h
    ei
    rst $38
    ret nz

    ret nz

    ld h, b
    ld a, a
    ld b, c
    cpl
    ld b, b
    call nz, $0f7b
    rst $38
    nop
    dec e
    rst $28
    ei
    rrca
    add a
    ld a, a
    adc a
    ld a, a
    jr nz, jr_02f_4ee4

    ld a, a
    daa
    rla
    rst $28
    ld a, [c]
    ld [de], a
    ld hl, sp+$00
    db $10
    ld sp, hl
    db $10

jr_02f_4f62:
    db $fd
    ld de, $18fc
    rst $30
    nop
    inc d
    ld [hl], a
    ld [hl], e
    sub [hl]
    or b
    dec a
    ld [bc], a
    ld [bc], a
    ld b, b
    ld bc, $2521
    nop
    inc h
    inc h
    add b
    nop
    ld b, b
    rst $38
    ld hl, $4fff
    ld c, b
    adc a
    ld [$00cf], sp
    ld [$886f], sp
    cp a
    ld e, c
    xor a
    ld l, a
    ld d, a
    nop
    ld d, c
    reti


    rst $10
    ret c

    ld b, a
    rst $08
    ld b, b
    ldh [rP1], a
    jr nz, @+$01

    rra
    rst $38
    ldh [rIE], a
    ccf
    cpl
    nop
    ldh [$30], a
    rst $28
    rrca
    add sp, -$09
    inc b
    scf
    ld bc, $9704
    add h
    rst $10
    ld b, l
    rst $10
    rst $00
    inc hl
    ld [$bb39], sp
    rst $10
    ld b, h
    ld hl, $6cef
    rst $10
    db $10
    ld d, h
    rst $10
    call nz, $3627
    and [hl]
    scf
    and l
    ld hl, $fb04
    ld hl, $ffff
    nop
    nop
    ld [hl+], a
    ret z

    ld b, c
    ld c, b
    add a
    adc b
    ld h, c
    sub a
    adc b
    and e
    inc b
    add b
    pop bc
    add b
    ret nz

    ret nz

    jr nc, jr_02f_4f62

    adc c
    add d
    ld h, c
    sub a
    adc c
    and e
    add c
    pop bc
    ld hl, $88c1
    cpl
    rst $30
    ld e, l
    rst $38
    ld hl, $ff41
    ld a, a
    ld c, b
    pop bc
    ld b, e
    rst $38
    nop
    ld hl, $c0bf
    ld a, h
    nop
    add e
    ldh a, [$1f]
    jp c, $cc3f

    ccf
    add $00
    ccf
    sub e
    ld a, a
    add e
    ld a, a
    reti


    and a
    db $dd
    nop
    cp e
    ld e, l
    cp e
    pop hl
    ccf
    call $9b33
    ld bc, $9f7d
    ld a, l
    db $fd
    ld e, a
    inc b
    ei
    ld hl, $ff0f
    nop
    add b
    ld a, a
    ld h, c
    daa
    ld c, e
    jr nz, jr_02f_504d

    db $fc
    db $fc
    add h
    rlca
    ld h, $04
    rst $38
    rlca
    nop
    call nz, $c4fb
    ld a, e
    rst $38
    ld a, a
    ret nz

    ret nz

    db $10
    ld a, a
    ld b, b
    rst $38
    ld hl, $ff7f
    ret nz

    ld e, $00
    xor $1d
    db $ed
    ld sp, hl
    ei
    ld bc, $f907
    ld bc, $fa07
    rlca
    db $fd

jr_02f_504d:
    cp $fe
    nop
    inc c
    rst $38
    rst $38
    nop
    nop
    ld [hl+], a
    and c
    rra
    ldh [$30], a
    rrca
    ldh a, [rIF]
    inc c
    ld h, c
    ldh [$e0], a

Jump_02f_5061:
    inc e
    inc e
    db $10
    ld [c], a
    ld [bc], a
    db $fc
    rrca
    add hl, bc
    db $fd
    rst $38
    cp $ff
    nop
    ld a, [bc]
    rst $38
    dec de
    cp $2d
    cp $2e
    pop af
    nop
    db $db
    ld h, l
    ld [hl], a
    ld sp, hl
    rst $28
    sbc $f9
    rst $30
    nop
    adc a
    db $fc
    di
    rst $38
    adc b
    rst $38
    xor h
    rst JumpTable
    nop
    rst $10
    cp a
    ld h, l
    cp [hl]
    db $eb
    ld [hl], a
    cp h
    jp $6f00


    ldh a, [$97]
    ld hl, sp+$0b
    db $fc
    dec hl
    db $fc
    nop
    set 7, h
    ld c, l
    ld a, [$0000]
    rrca
    rrca

jr_02f_50a3:
    nop
    ld [hl], $39
    ld e, a
    ld h, b
    ld [hl], a
    ld c, a
    xor a
    rst JumpTable
    ld [$98f8], sp
    ldh a, [$90]
    cpl
    ldh a, [$f0]
    ld l, h
    nop
    sbc h
    ld a, [$ee06]
    ld a, [c]
    push af
    ei
    ld e, a
    db $10
    add hl, de
    rrca
    add hl, bc
    dec a
    rla
    db $10
    cpl
    jr nz, jr_02f_50d0

    ld c, a
    ld b, b
    adc a
    add b
    and c
    and b
    jr nz, @-$1e

jr_02f_50d0:
    nop
    jr nz, jr_02f_50a3

    db $10
    ld hl, sp+$18
    db $f4
    inc d
    di
    nop
    inc de
    ldh a, [rNR10]
    add sp, $08
    rst $38
    rst $38
    ld a, a
    add b
    ld b, b
    ld e, a
    rra
    add hl, sp
    ld bc, $0007
    ldh [rNR31], a
    ldh [$1f], a
    rra
    cpl
    nop
    add hl, bc
    nop
    jr nz, @+$26

    dec b
    ldh [$80], a
    ret nz

    add b
    jp nz, $c681

    add c
    ld [$3f3f], sp
    inc b
    nop
    ld hl, $000c
    adc h
    ld b, b
    add b
    and c
    rra
    db $10
    cpl
    jr nz, jr_02f_514e

    jr nz, jr_02f_5123

    ld e, a
    ld b, b
    ld a, a
    ld b, c
    cp a
    add b
    ld hl, $42f8
    rlca
    ld hl, $03fc
    rst $38
    nop
    pop hl
    rrca
    ld c, c

jr_02f_5123:
    ldh a, [rNR42]
    rra
    ldh [$ed], a
    ccf
    ccf
    add hl, de
    ld a, [bc]
    sbc b
    ld h, c
    db $fc
    db $fc
    rrca
    ld c, $21
    rst JumpTable
    db $eb
    rst $08
    nop
    ld a, [$f2bf]
    cp [hl]
    rst $00
    sbc a
    rst $20
    cp [hl]
    nop
    call $d8bf
    and [hl]
    rst $38
    db $ec
    cp b
    add sp, $40
    cp b
    inc hl
    and $bc
    ld d, e

jr_02f_514e:
    cp a
    cp h
    ld e, a
    nop
    rst $30
    cpl
    rst $20
    ld e, h
    ld c, a
    ld a, d
    ld l, e
    ld a, $00
    db $76
    ccf
    ld a, e
    rst $38
    rst $10
    rst $28
    ld a, [hl]
    rst $38
    nop
    jp hl


    or $a0
    ret nz

    pop af
    sub c
    di
    sub d
    nop
    or d
    jp nc, $d8e8

    ld hl, sp-$38
    call nc, $00ec
    ei
    rst $20
    rst $38
    cp b
    adc a
    adc c
    ld c, a
    ld c, c
    nop
    ld c, l
    ld c, e
    scf
    dec de
    rra
    inc de
    dec hl
    scf
    ld b, h
    rst JumpTable
    cpl
    dec e
    adc a
    add b
    ld bc, $f80e
    ld [$f400], sp
    inc b
    ld a, [$fd02]
    ld bc, $00ff
    ret nz

    and c
    and b
    add b
    add b
    ld [hl], b
    ld [hl], b
    rst $08
    rrca
    reti


    rrca
    ld a, [bc]
    ld h, b
    rst $38
    jr nz, @+$51

    add $80
    pop hl
    nop
    add [hl]
    add b
    ld h, a
    ld h, c
    inc e
    inc e
    adc h
    add b
    add b
    pop hl
    call z, $2dc0
    ld hl, $1f1f
    cp a
    ld b, b
    add b
    and c
    sbc a
    add b
    ld e, a
    ld b, b
    rst $08
    ld b, b
    nop
    rst $00
    ld b, b
    ei
    inc bc
    rst $28
    rrca
    sbc $1e
    nop
    cp [hl]
    dec a
    ld hl, sp+$7b
    ld a, b
    ld a, e
    cp $fd
    nop
    cp $fe
    rst $38
    rst $38
    add c
    add c
    jp nz, $213c

    nop
    cp $61
    ld [bc], a
    db $fc
    inc bc
    inc bc
    cpl
    add hl, hl
    adc c
    add c
    ld hl, $8199
    sbc e
    add e
    ld hl, $2f98
    dec b
    ld bc, $e065
    xor a
    reti


    cp c
    ld b, b
    rst $10
    ld hl, $dfb2
    xor [hl]
    rst JumpTable
    or c
    adc $00
    db $dd
    db $e3
    ld e, [hl]
    db $e3
    rst $00
    ld a, l
    cp c
    ld a, a
    nop
    add $3b
    cp d
    ld b, [hl]
    db $ec
    ld d, $74
    adc h
    nop
    ret c

    db $ec
    add sp, $38
    rlca
    add b
    dec bc
    rlca
    nop
    rla
    rrca
    cpl
    add hl, de
    add hl, de
    ccf
    ld l, a
    ccf
    jr nz, @+$81

    ccf
    ld [hl+], a
    ld a, b
    ld a, b
    rst $38
    add e
    rst $30
    nop
    jr c, jr_02f_52b6

    rst $38
    rst $00
    rst $00
    jr jr_02f_5254

    inc [hl]
    nop
    inc h
    nop
    nop
    ld e, $1e
    rst $38
    pop bc
    rst $28
    nop
    inc e
    cp $ff
    db $e3
    db $e3
    ld bc, $3001
    ld c, b
    jr nc, jr_02f_5281

    adc a
    add b

jr_02f_5254:
    ld hl, $809f
    sbc b
    ld [bc], a
    add b
    sub b
    add b
    or b
    add b
    and b
    ld b, c
    rst $38
    nop
    ccf
    ret nz

    ld a, a
    sbc b
    rst $38
    sbc l
    rst $38
    sbc a
    db $10
    rst $38
    sbc d
    rst $38
    daa
    ld b, b
    ld a, a
    rst $38
    rst $38
    dec b
    nop
    rst $38
    rst $08
    rst $38
    reti


    ld b, c
    rst JumpTable
    ld b, e
    push bc
    dec hl
    ld l, a
    ld a, $ff

jr_02f_5281:
    or e
    ld b, c
    cp [hl]
    ld b, e
    add e
    xor a
    ld h, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld a, h
    ld b, e
    daa
    add e
    xor a
    db $fd
    rst $38
    ret nz

    rst $38
    db $fc
    add e
    ld c, a
    ld [bc], a
    db $fc
    inc bc
    cp $f9
    rst $38
    ld h, c
    pop bc
    inc bc
    ret nz

    ld sp, $0180
    ld bc, $0202
    dec b
    inc b
    nop
    dec bc
    ld [$1017], sp
    rlca
    rlca
    jr jr_02f_52ca

    inc c
    ld h, a
    ld h, b
    cp a

jr_02f_52b6:
    add b
    jr c, jr_02f_52da

    db $fc
    inc bc

jr_02f_52bb:
    nop
    ld hl, sp+$07
    sub e
    add e

jr_02f_52c0:
    add a
    add a
    sbc a
    sbc a
    ld b, [hl]
    rst $38
    add b
    ldh a, [$f0]
    add e

jr_02f_52ca:
    scf
    ret nz

    ldh [rDIV], a
    rst $38
    ccf
    ret nz

jr_02f_52d1:
    ld [$2000], a
    adc $73
    nop
    and [hl]
    ld a, e
    or e

jr_02f_52da:
    ld a, a
    reti


jr_02f_52dc:
    ccf

jr_02f_52dd:
    xor $1f

jr_02f_52df:
    nop
    di
    rrca
    db $fc
    inc bc
    rst $38
    nop
    jr nc, jr_02f_52c0

    nop
    jr c, jr_02f_52bb

    jr nz, jr_02f_52dd

    ldh a, [$e0]
    jr nz, jr_02f_52d1

    nop
    or c
    ldh [$ee], a
    pop af
    cp a
    ld a, a
    ccf
    ld a, a
    ld b, b
    rst $38
    add c
    ld [hl], b
    rst $38
    ld b, a
    ld hl, sp-$63
    ldh [rP1], a
    ld l, d
    add b
    ret nz

    ret nz

    ld hl, $2321
    ld [hl+], a
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    db $fc
    db $fc
    cp a
    jp $ff00


    inc a
    ld b, $06
    call $20c9
    jr nz, jr_02f_52df

    inc sp
    cpl
    ld a, $3e
    rst $38
    jp $3cfb


    ld b, b
    nop
    nop
    sbc a
    dec a
    ld a, [hl]
    ld h, l
    ld a, [hl]
    ld b, l
    ld a, [hl]
    nop
    inc hl
    ld a, a
    or b
    ccf
    sub a
    adc a
    ld [hl], b
    ret nz

    nop
    ccf
    rst $38
    cp h
    ld a, [hl]
    and [hl]
    ld a, [hl]
    and d
    ld a, [hl]
    nop
    push bc
    cp $0c
    db $fd
    jp hl


    di
    ld a, [bc]
    rlca
    nop
    db $fc
    rst $38
    xor h
    cp a
    add a
    and e
    cp b
    and b
    ld [$b8a7], sp
    xor b
    cp a
    jr nz, jr_02f_52dc

    add b
    rst $38
    nop
    rst $38
    dec [hl]
    db $dd
    sbc l
    db $ed
    push af
    ld a, l
    dec c
    ld bc, $f91d
    dec b
    db $fd
    db $fd
    ld bc, $2f01
    nop
    jp $dbfc


    db $fc
    reti


    cp $c1
    cp $08
    ret


    or $e3
    db $fc
    ld hl, $fcd3
    and l
    ld c, h
    sbc c
    ld hl, $89b5
    ld h, l
    ld hl, $91ad
    add d
    inc hl
    rst $38
    rst $38
    add b
    add b
    cp a
    nop
    add hl, bc
    cp [hl]
    ld b, l
    cp a
    cpl
    rst $00
    rst $00
    ld b, h
    ld b, c
    ld a, h
    daa
    jr nc, @+$01

    nop
    inc l
    jr nz, jr_02f_53f8

    rst $38
    cp e
    rst $38
    ld b, b
    jr c, @+$47

    sub e
    rst $38

jr_02f_53ac:
    db $10
    rst $10
    jr c, @-$0f

    nop
    jr c, jr_02f_53ac

    ld d, a
    pop af
    or a
    pop af
    scf
    pop af
    add b
    dec h
    sub a
    pop af
    rla
    reti


    scf
    jp hl


    ccf
    ld hl, $28ff
    ld h, c
    rst $10
    ld l, h
    rst $38
    ld b, h
    ld hl, $bb02
    add $ff
    add d
    ld sp, hl
    cpl
    ld h, c
    db $dd
    db $10
    ld h, a
    push af
    ld b, a
    ld hl, $c7b3
    di
    add a
    inc e
    nop
    nop
    rst $38
    ld h, d
    pop bc
    jr nz, jr_02f_5416

    rrca
    add hl, bc
    pop af
    rrca
    dec bc
    rst $30
    ld hl, $fb07
    ld hl, $7d40
    ld c, a
    inc a
    ld a, [hl]
    ld a, [hl]
    jp $81e7


jr_02f_53f8:
    add b
    ld hl, $c3bd
    ld b, d
    rst $38
    cp l
    rst $38
    pop bc
    ld a, [de]
    cp a
    ei
    rst $00
    dec h
    jr nz, @-$7d

    ld b, e
    rst $38
    ld l, l
    jp $2842


    nop
    ld bc, $200f
    ld [$e460], sp
    dec h

jr_02f_5416:
    ld b, a
    ld c, h
    jp hl


    add a
    ld b, h
    add e
    add d
    ld [$fe82], sp
    add e
    add e
    ld c, b
    adc c
    rst $38
    ld [hl], b
    inc de
    adc a
    ld [hl], a
    adc b
    daa
    nop
    nop
    ld [hl+], a
    dec h
    jp nz, $2129

    ld e, a
    add b
    scf
    add b
    dec hl
    ld d, a
    nop
    nop
    cpl
    nop
    sbc l
    nop
    rla
    nop
    ld c, [hl]
    nop
    nop
    ld a, l
    add b
    ld [hl], a
    add b
    db $eb
    nop
    ld [hl], c
    nop
    nop
    ld [c], a
    nop
    ret z

    nop
    and h
    nop
    ret nz

    ld b, b
    nop
    ld e, [hl]
    rst $38
    jr nz, jr_02f_545a

    ld h, b

jr_02f_545a:
    dec h
    ld b, a
    ld c, h
    cp l
    nop
    add c
    push af
    ld sp, hl
    rst $38
    rrca
    add hl, bc
    add hl, bc
    rst $38

jr_02f_5467:
    ld [de], a
    add hl, bc
    rrca
    rst $38
    add hl, hl
    and l
    sbc c
    ld sp, $6080
    add b
    ld [hl+], a
    ld bc, $ff0b
    ld a, [hl+]
    dec de
    add $1f
    nop
    jp nc, $d10f

    rrca
    pop hl
    rrca
    jp hl


    rlca
    sub h
    ld hl, $1fe3
    and c
    push hl
    ld b, c
    ld [$0c1f], a
    db $d3
    ld a, $f1
    rlca
    ld bc, $3f0c
    rst $38
    rst $38
    nop
    rst $28
    ldh a, [$d7]
    rst $28
    cp b
    rst JumpTable
    rst $20
    cp a
    nop
    ret z

    ld hl, sp-$70
    ldh a, [$98]
    ld hl, sp-$01
    cp $00
    rst $28
    ld e, $d7
    xor $3b
    or $cf
    ld a, [$2700]
    ld a, $13
    ld e, $33

jr_02f_54b7:
    ld a, $d7
    rst $38
    jr nz, jr_02f_54b7

    ccf
    ld hl, $5ff7
    di
    sbc a
    db $d3
    dec h
    ccf
    db $eb
    ld b, c
    db $e3
    rra
    and c
    push hl
    ld b, c
    ld [bc], a
    ld [$d31f], a
    ld a, $bd
    add c
    ld hl, $61a5
    sbc c
    ld hl, $70e7
    adc a
    ld [hl], a
    adc b
    ld bc, $000c
    db $fc
    inc bc
    cp $0c
    pop de
    jr nc, jr_02f_5467

    ld b, b
    nop
    add a
    ld b, b
    sbc [hl]
    ld b, c
    or $89
    db $fc
    add e
    nop
    ld h, c
    ldh [$73], a
    db $10
    rst $28
    inc e
    ld c, a
    and d
    nop
    dec bc
    add [hl]
    inc de
    rrca
    ld h, a
    sbc l
    adc l
    ld a, e
    nop
    cp l
    add c
    sub h
    add c
    dec c
    add b
    xor d
    ld bc, $1500
    nop
    rrca
    nop
    sbc a
    nop
    ld a, a
    nop
    add c
    xor a
    jr z, @+$03

    ld bc, $8000
    nop
    ld h, b
    ld a, b
    rst $38
    jr nz, @+$67

    ld b, c
    ld l, d
    ld a, a
    cp $fc
    nop
    db $fc
    rst $38
    rlca
    dec b
    dec b
    rst $38
    dec b
    db $fd
    jr z, jr_02f_5539

    rlca
    ld c, a
    add b
    sub [hl]
    ld [$fc08], sp

jr_02f_5539:
    ld c, $0b
    db $fc
    ei
    ret nz

    ld c, c
    ld [hl+], a
    ld c, a
    cp $0a
    ld bc, $e601
    jr jr_02f_5569

    ld bc, $e58f
    ld b, $fe
    dec de
    db $fc
    rst $28
    ldh a, [$78]
    and c
    jp hl


Call_02f_5554:
    inc d

Jump_02f_5555:
    rlca
    pop hl
    rrca
    and c
    pop de
    add c
    rst JumpTable
    rst $30
    inc bc
    rst $08

jr_02f_555f:
    ld hl, sp-$19
    rst $38
    ldh a, [rIE]
    ld h, b
    ld a, $80
    jr nz, jr_02f_555f

jr_02f_5569:
    rst JumpTable
    rst $20
    ld a, $cf
    cp $1f
    inc h
    cp $ff
    ld hl, $01ff
    ld c, a
    xor e
    ld a, a
    nop
    rst $00
    ld a, a
    rst $20
    ld e, a
    ld h, a
    rst JumpTable
    and e
    rst JumpTable
    jr nz, @-$1b

    sbc a
    ld h, c
    push hl
    cp $1b
    db $fc
    rst $28
    ld [de], a
    ldh a, [rIE]
    nop
    pop hl
    cp l
    add c
    ld hl, $61a5
    sbc c
    ld hl, $07e7
    ld hl, sp+$77
    adc b
    ld bc, $000c
    cp b
    ret nz

    add e
    ldh a, [$f7]
    ld [hl], b
    sub l
    jp z, $8b00

    add h
    sub [hl]
    adc l
    rst $20
    ld e, a
    ld a, a
    dec sp
    nop
    ld l, c
    rst $38
    jp z, $dd7f

    ld [hl], e
    dec sp
    rst $30
    nop
    scf
    rst $38
    ld [hl], $ff
    ld l, h
    cp $dc
    ldh [rDIV], a
    add hl, bc
    nop
    ccf
    nop
    rst $38
    pop bc
    db $fc
    nop
    ld bc, $00e0
    sub b
    nop
    call z, $f700
    rst $08
    ld [$001f], sp
    inc bc
    nop
    ld d, l
    ld [hl], l
    nop
    ld [bc], a
    jr nz, @+$03

    ld [$2280], sp
    ld [$7555], sp
    nop
    ld [bc], a
    jr nz, @+$03

    ld [$2280], sp
    ld [$0050], sp

jr_02f_55ee:
    nop
    ldh a, [$32]
    ld [$0410], sp
    jr jr_02f_5616

    rra
    add b
    ld a, a
    ld b, b
    ld sp, $211e
    add b
    ld [bc], a
    nop
    ld hl, $4120
    ld a, $41
    add b
    ld a, a
    inc b
    ld hl, sp-$58
    db $10
    ld [$fc10], a
    ld d, b
    nop
    nop
    ld [bc], a
    daa
    add e
    inc b
    inc bc

jr_02f_5616:
    inc b
    rst $30
    ld [$200c], sp
    ld a, [de]
    jr nz, jr_02f_5636

    ret nz

    ld d, l
    ld d, b
    nop
    ld [$e401], sp
    ld d, b
    call nz, Call_02f_60c2
    sbc b
    jr nz, jr_02f_55ee

    ret nc

    ld bc, $3f00
    ld a, [hl]
    ld bc, $026c
    ld a, c
    inc b

jr_02f_5636:
    ld [hl], e
    ld [$1067], sp
    ld l, a
    nop
    nop
    nop
    rst $38
    ld [hl], h
    adc e
    ld l, c
    sub [hl]
    ld d, d
    xor l
    dec h
    jp c, $b44b

    ld d, $e9
    dec l
    jp nc, $6902

    rst $38
    nop
    nop
    sbc c
    nop
    cp $01
    sub e
    rst $28
    ld h, e
    ld [hl], $1c
    ld [de], a
    xor b
    ccf
    di
    rrca
    rst $08
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    jr z, jr_02f_5673

    ccf
    ld e, [hl]
    dec a
    ld e, $0b
    ld a, a
    add hl, bc
    ld [hl], a

jr_02f_5673:
    dec de
    ld a, $0f
    inc c
    ld a, [hl]
    add hl, de
    ld d, b
    ld [$afdf], sp
    cp [hl]
    rst $30
    ld a, a
    ei
    rst $20
    rst $38
    rst $20
    cp [hl]
    rst $30
    ld a, a
    ld e, a
    rst $28
    ret nc

    ld [bc], a
    nop
    sbc c
    cp $01
    ld a, a
    sub e
    db $ec
    rst $38
    inc sp
    call z, $23dc
    rst $38
    dec b
    inc b
    dec c
    ld d, h
    dec sp
    inc [hl]
    dec de
    ld a, [hl-]
    ld a, d
    db $76
    add hl, de
    inc a
    dec bc
    ld a, [hl-]
    ld l, d
    dec e
    inc b
    ld [$3d04], sp
    ld b, $19
    ld c, $8b
    ld [c], a
    dec b
    or b
    ld b, e
    ld c, b
    or c
    ld hl, sp+$02
    db $fc
    ret nz

    nop
    nop
    ld l, c
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, [hl-]
    ld a, l
    ld e, l
    ccf
    ld l, $1f
    scf
    rrca
    ld l, e
    rra
    ld d, l
    ld [hl], l
    nop
    ld [bc], a
    jr nz, @+$03

    ld [$2280], sp
    ld [$7555], sp
    nop
    ld [bc], a
    jr nz, @+$03

    ld [$2280], sp
    ld [$8580], sp
    nop
    ccf
    jr nc, jr_02f_56f3

    dec d
    ld [$1865], sp
    rst $38
    add h
    ld bc, $8081
    ld d, h
    nop
    add d
    ld b, h
    db $10
    ld b, h

jr_02f_56f3:
    nop
    rst $38
    ld h, a
    sbc b
    sub b
    ld [$0800], sp
    rrca
    nop
    dec d
    ld b, c
    nop
    ld [hl], a
    dec bc
    ld a, e
    rra
    ld c, l
    add a
    ld b, $48
    inc c
    jr nc, jr_02f_5719

    ld b, b
    ld d, a
    nop
    add b
    sub b
    ld b, d
    jr nz, jr_02f_5757

    sub h
    ld [$8052], sp
    jr z, jr_02f_5721

jr_02f_5719:
    ld [bc], a
    ld [hl], e
    nop
    rst $38
    ld a, e
    add h
    adc h
    ld h, a

jr_02f_5721:
    sbc b
    ld b, [hl]
    cp c
    ld e, $e1
    ld a, l
    add d
    adc h
    push de
    ld d, a
    nop
    ld a, [hl]
    ld a, d
    ld e, [hl]
    ld a, [hl]
    db $76
    ld a, [hl]
    ld d, b
    ld e, l
    rst $38
    dec sp
    call c, $bc7f
    cp $67
    jp $ddf7


    ld h, c
    ld d, b
    rst $38
    cp a
    ccf
    cp a
    ld a, a
    rra
    rra
    jr nz, jr_02f_57a8

    ldh [$bf], a
    ret nz

    push af
    nop
    rst $38
    ld a, a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    pop bc
    ccf

jr_02f_5757:
    ldh [$1f], a
    xor d
    add b
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    push hl
    cp $42
    cp a
    pop hl
    sbc a
    ld d, b
    ld e, l
    rst $38
    inc sp
    call z, $cc33
    call z, $0033
    inc sp
    call z, $a0a0
    and [hl]
    rst JumpTable
    rst JumpTable
    ld d, e
    rst $28
    ld d, e
    rst $28
    rst JumpTable
    rst JumpTable
    ld d, e
    rst $28
    ld d, e
    rst $28
    nop
    rla
    rst $38
    ld d, a
    ccf
    xor a
    rra
    ld b, e
    sbc a
    add a
    rst $28
    inc hl
    rst $30
    or e
    db $fd
    ld d, b
    nop
    rst $38
    call nz, $f3f8
    db $fc
    cp h
    ei
    cp h
    rst JumpTable
    cp a
    rst JumpTable
    ld d, a
    rst $28
    ld d, e
    rst $28
    sbc c
    ld c, b
    jp $bd81


    rst $38

jr_02f_57a8:
    cp l
    cp l
    sbc c
    rst $20
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    rst $38
    push bc
    cp $9a
    db $e4
    cp d
    call nz, $c4ba
    sbc d
    db $e4
    push bc
    cp $0d
    inc bc
    nop
    pop af
    db $10
    ld [hl], c
    ld h, b
    inc c
    ld d, d
    ld [$1216], sp
    ld e, $0c
    rra
    ld b, b
    nop
    ld b, d
    add b
    ret nz

    jr jr_02f_57f8

    db $10
    inc l
    inc b
    inc e
    jr jr_02f_581d

    ld d, h
    nop
    ld b, $29
    dec b
    rrca
    inc bc
    jr nz, jr_02f_57e5

    ld h, b
    or c

jr_02f_57e5:
    ld b, b
    ld a, l
    dec c
    nop
    jr nz, jr_02f_57fb

    jr z, jr_02f_5805

    jr c, jr_02f_57ff

    add b
    xor d
    xor d
    xor a
    add b
    add b
    add b
    add b
    add b

jr_02f_57f8:
    add b
    add b
    add b

jr_02f_57fb:
    ld d, a
    and b
    add b
    xor a

jr_02f_57ff:
    and b
    cp a
    ret nz

    rst $38
    ret nz

    rst $38

jr_02f_5805:
    rst $38
    rst $38
    ld d, l
    call c, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    rst $38
    add b
    ret nz

    cp h
    sbc b
    cp $bc
    rst $30
    or [hl]
    cp a

jr_02f_581d:
    sbc $df
    rst $20
    xor b
    ret c

    ret nz

    nop
    rst $38
    ld bc, $3d03
    add hl, de
    ld a, a
    dec a
    rst $28
    ld l, l
    db $fd
    ld a, e
    ei
    rst $20
    dec d
    dec de
    ld bc, $ff0f
    ret nc

    sub a
    ei
    sub a
    xor a
    rst JumpTable
    sub a
    sbc a
    di
    set 7, h
    ld bc, $ff0f
    dec bc
    jp hl


    rst JumpTable
    jp hl


    push af
    ei
    jp hl


    ld sp, hl
    rst $08
    db $d3
    ccf
    ld d, b
    nop
    nop
    rrca
    rst $38
    nop
    rrca
    ld h, b
    rst $38
    cp a
    or b
    nop
    rst $38
    ldh a, [rVBK]
    db $eb
    ld h, h
    or h
    ld [hl], e
    sbc e
    nop
    ld a, e
    sbc a
    ld a, h
    sub h
    nop
    rst $38
    cp $01
    add b
    ld b, c
    pop bc
    ld a, $21
    cp [hl]
    pop de
    sbc $e9
    nop
    ld l, $39
    ld l, h
    sbc b
    ld a, a
    sub e
    ld a, h
    sub a
    inc bc
    ld a, b
    sbc a
    ld l, a
    sbc a
    ld a, a
    add b
    dec sp
    ld h, b
    ld a, [bc]
    add b
    rst $38
    cp a
    ret nz

    ld hl, $c1b0
    ld b, b
    nop
    ccf
    cp h
    add b
    add b
    ei
    ret nz

    or [hl]
    ldh a, [rDIV]
    add [hl]
    call nz, $1fc3
    inc [hl]
    dec a
    cp l
    rst $38
    ld b, $c3
    cp l
    add c
    jp $819d


    add hl, hl
    ld a, [hl]
    nop
    rst $38
    ld a, a
    rst $38
    pop hl
    sbc a
    sub b
    rst $28
    adc a
    nop
    ldh a, [$88]
    rst $30
    sub a
    db $fc
    rst $30
    db $e3
    ld [$d600], a
    res 6, [hl]
    adc c
    rst $30
    adc [hl]
    ld a, [c]
    adc [hl]
    ld b, $ff
    sbc [hl]
    rst $38
    cp [hl]
    rst $38
    jr nz, @+$3f

    cp $00
    rst $38
    pop bc
    cp a
    rst $00
    cp a
    ccf
    adc a
    sbc a
    nop
    rst $28
    sbc a
    xor a
    sbc a
    cp a
    db $e3
    rst $38
    inc c
    nop
    cpl
    rra
    rst $28
    rst $38
    rrca
    rst $38
    rst $30
    rst $38
    nop
    ei
    rst $38
    db $fd
    ld a, a
    db $fd
    ld a, [hl]
    rst $38
    rst $38
    ld b, b
    nop
    add c
    rlca
    db $fc
    ld [$10fb], sp
    rst $30
    jp $2781


    db $f4
    jr @-$06

    rrca
    ld sp, $80d9
    pop bc
    ld hl, sp+$07
    db $f4
    ld [$10eb], sp
    rst $20
    ld hl, sp-$7f
    daa
    dec hl
    cpl
    or a
    ccf
    ccf
    ld b, d
    nop
    ld a, a
    sbc h
    rst $20
    cp d
    call $dcb3
    or [hl]
    ld b, b
    ret c

    ld hl, $ed9b
    db $fc
    db $fc
    jp nz, $00fe

    cp c
    rst $20
    sbc l
    di
    ld e, l
    or e
    db $dd
    inc sp
    ld hl, $335d
    add hl, hl
    rst $38
    nop
    ccf
    nop
    inc hl
    and c
    ld h, c
    ld sp, hl
    add l
    add e
    ld a, h
    ld a, h
    add e
    ld l, b
    ld a, [bc]
    ldh [$1f], a
    rra
    ldh [$67], a
    rst $20
    ld b, h
    ld a, h
    ld d, b
    nop
    ldh [$c1], a
    ccf
    nop
    inc bc
    nop
    rlca
    ld [hl], $00
    ld b, $41
    dec h
    add a
    ld c, l
    ld a, $3c
    inc b
    rst $38
    ld a, d
    rst $00
    call $2183
    cp c
    rst $00

jr_02f_5968:
    ld [hl-], a
    ld b, d
    rst $38
    dec l
    ld hl, $7e81
    inc hl
    db $10
    rlca
    rst $28
    jr @+$01

    inc b
    ei
    ld l, l
    and c
    ld l, a
    add l
    dec c
    ld a, [bc]
    inc e
    rst $38
    ld a, [hl-]
    rst $20
    ld hl, $cd14
    ld [$bd42], sp
    ld [$25f7], sp
    inc h
    rst $38
    ld e, d
    ld b, b
    cp l
    ld l, l
    inc b
    ei
    dec d
    ld [$44bb], a
    ld bc, $15ee
    rst $28
    cp l
    cp l
    rst $38
    ld [$403b], a
    rst $38
    inc [hl]
    ld h, [hl]
    jr jr_02f_5968

    inc a
    add c
    ld a, [hl]
    db $f4
    ld hl, $2925
    dec l
    rst $38
    and c
    ld a, h
    rst $28
    ld [hl], b
    ld l, h
    ld hl, $6b25
    db $ed
    nop
    or d
    nop
    ld [$0045], sp
    ld [bc], a
    nop
    ld h, b
    add e
    nop
    ld a, [c]
    ld b, b
    sbc [hl]

jr_02f_59c5:
    ld hl, $beea
    add $fe
    ld b, h
    ld a, h
    ld [$3828], sp
    db $10
    db $10
    ld sp, $0303
    rlca
    nop
    inc b
    ld c, $09
    dec e
    dec de
    dec l
    dec sp
    cpl
    nop
    add hl, sp
    ld c, e
    ld a, h
    ld b, l
    ld a, [hl]
    ld b, e
    ld a, a
    ld h, e
    nop
    ld a, h
    ld d, c
    ld a, [hl]
    ld e, h
    ld l, a

jr_02f_59ed:
    ccf
    inc hl
    cpl
    nop
    jr nc, jr_02f_5a0e

    inc e
    rlca
    rlca
    ldh [$e0], a
    ldh a, [rP1]
    db $10
    jr c, jr_02f_59c5

    call c, $daec
    xor $fa
    nop
    adc $e9
    rra
    pop de
    ccf
    pop hl
    rst $38
    db $e3
    nop
    rra
    push bc

jr_02f_5a0e:
    ccf
    dec e
    ei
    cp $e2
    ld a, [$0600]
    db $ec
    inc e
    ldh a, [$f0]
    ld bc, $0301
    nop
    ld [bc], a
    ld b, $05
    ld c, $09
    db $eb
    db $ec
    ld sp, hl
    nop
    sbc [hl]
    cp l
    jp z, $e89f

    ld c, e
    ld a, h
    add hl, hl
    nop
    ld a, $7d
    ld a, e
    rst $38
    sbc d
    cp e
    adc $5b
    nop
    ld l, [hl]
    scf
    ld a, $01
    rlca
    nop
    nop
    add b
    nop
    add b
    adc $4e
    cp $32
    cp d
    ld h, [hl]
    ld [hl-], a
    nop
    xor $34
    db $ec
    daa
    rst $38
    dec l
    ei
    cp l
    inc b
    di
    ld a, [$b266]
    ld l, [hl]
    dec hl
    inc h
    db $fc
    nop
    ld a, b
    ld hl, sp-$40
    ldh a, [$7f]
    ld a, a
    ret nz

    rst $38
    inc e
    adc a
    rst $38
    sbc a
    pop bc
    add hl, hl
    jr nz, jr_02f_59ed

    rst $38
    ld e, h
    sbc [hl]
    ld hl, $81f3
    ld c, e
    ld l, a
    and b
    ldh [$99], a
    and c
    cp a
    rst $38
    ld hl, $d571
    or a
    ld hl, $d404
    or a
    rst JumpTable
    cp a
    ret nz

    ld l, $ff
    ld l, a
    nop
    rst $38
    rst $30
    sbc b
    rst $28
    sub b
    xor a
    ret nc

    rst $20
    nop
    ld hl, sp+$47
    ei
    adc [hl]
    rst $30
    sbc l
    xor $d6
    ld bc, $7fef
    rst $20
    cp a
    di
    rst $38
    cp c
    ld b, c
    db $10
    sbc a
    rst $38
    ret nz

    ccf
    or $ff
    rst $28

jr_02f_5aac:
    add hl, de
    nop
    rst $30
    add hl, bc
    push af
    dec bc
    rst $20
    rra
    ld [c], a
    rst JumpTable
    nop
    ld [hl], c
    rst $28
    cp c
    ld [hl], a
    ld l, e
    rst $30
    cp $e7
    ld [$cffd], sp
    rst $38
    sbc l
    ld b, c
    ld sp, hl
    rst $38
    inc bc
    ret nz

    ccf
    jr nz, jr_02f_5aac

    sbc a
    sub b
    rst $28
    adc a
    ldh a, [$0e]
    adc b
    rst $30
    adc e
    db $f4
    and c
    add hl, hl
    dec l
    adc a
    inc c
    rst $38
    sbc a
    rst $38
    cp a
    ld a, h
    ld b, b
    ld bc, $41ff
    rlca
    inc h
    rrca
    rra
    rst $28
    rst JumpTable
    cpl
    and c
    ldh [$29], a
    dec l
    ld [hl+], a
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    add b
    ld e, l
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    nop
    ld [$101f], sp
    ccf
    jr nz, jr_02f_5b84

    ld b, b
    ld e, a
    inc b
    ld h, b
    ld c, [hl]
    ld [hl], c
    ld b, h
    ld a, e
    and c
    inc h
    dec sp
    ld [$1f18], sp
    rlca
    rlca
    ccf
    ldh [$e0], a
    sub b
    nop
    ld [hl], b
    adc b
    ld a, b
    add h
    ld a, h
    add d
    ld a, [hl]
    add e
    ld bc, $477d
    cp e
    cpl
    rst $10
    rra
    rst $28
    and c
    nop
    ld e, $ee
    inc c
    db $fc
    ldh a, [$f0]
    dec sp
    dec sp
    nop
    dec h
    ld a, $19
    rra
    dec bc
    rrca
    dec de
    rra
    inc bc
    rst $38
    rst $38
    ld a, [$fb87]
    xor a
    ld b, e
    ld b, l
    ret nc

    inc hl
    ld l, e
    add e
    ld [hl-], a
    rst $38
    db $dd
    call c, $04a4
    ld a, h
    sbc [hl]
    cp $d7
    push af
    ld hl, $fd9f
    nop
    scf
    db $fd
    rst $08
    rst $38
    cpl
    reti


    adc e
    db $fd
    inc b
    rst $38
    ld sp, hl
    adc a
    rst $38
    rlca
    dec h
    db $fd
    add [hl]
    nop
    cp $fc
    db $fc
    rst $38
    rst $38
    sbc a
    add c
    rst $20
    nop
    add b
    ld hl, sp-$80
    ei
    add e
    ei
    sub e
    ld sp, hl
    nop
    or c
    cp c
    and c
    cp b
    add b
    ldh a, [$87]

jr_02f_5b84:
    pop hl
    ld hl, $c18f
    inc [hl]
    cp a
    add c
    cp [hl]
    add b
    inc a
    add b
    ld b, b
    ld sp, hl
    add c
    pop hl
    rlca
    ld bc, $c11f
    nop
    rst JumpTable
    ret


    rst JumpTable
    adc l
    sbc a
    add a
    sbc l
    inc bc
    nop
    dec e
    ld de, $89ef
    rst $30
    add l
    ei
    add e
    dec bc
    db $fd
    add e
    ld a, l
    ld bc, $805d
    add b
    ld h, $24
    ret nz

    cp a
    and c
    db $10
    rrca
    ld bc, $1f0a
    nop
    db $fc
    rra
    ld [de], a
    ld sp, $ff35
    ld h, c
    dec sp
    ret nz

    ret nz

    nop
    and b
    and b
    sbc a
    sub a
    ret z

    adc b
    add sp, -$40
    ld [$a1f3], sp
    db $d3
    or e
    ccf
    ld c, a
    ld b, h
    ld h, $01
    inc hl
    inc de
    ld de, $081c
    db $10
    db $10
    dec h
    jr nc, jr_02f_5bf6

    inc de
    ccf
    ld h, b
    rst $38
    add b
    ret nz

    cp a
    jp nz, $3fa1

    rra
    nop
    db $10
    rrca

jr_02f_5bf1:
    ld bc, $000a
    nop
    nop

jr_02f_5bf6:
    ld bc, $6200
    ld bc, $2354
    ld c, l
    ld bc, $5632
    add hl, hl
    ld c, d
    dec [hl]
    ld h, $19
    dec a
    jr nz, jr_02f_5c2f

    jr jr_02f_5c31

    ld b, h
    dec sp
    ld a, h
    inc bc
    inc b
    jr nc, jr_02f_5c14

    inc bc
    inc a
    ld b, b

jr_02f_5c14:
    add b
    nop
    ld b, [hl]
    add b
    nop
    ld a, [hl+]
    call nz, Call_02f_4cb2
    ld l, d
    sub h
    ld d, d
    xor h
    nop
    ld h, h
    sbc b
    ld hl, sp+$00
    db $e4
    jr @-$0c

    inc c
    ld bc, $5ca2
    ld a, $c0

jr_02f_5c2f:
    jr nz, jr_02f_5bf1

jr_02f_5c31:
    ret nz

    ld e, l
    nop
    rrca
    rra
    ld [hl-], a
    ld a, l
    ld b, h
    ei
    adc c
    or $00
    sub e
    db $ec
    rst $20
    ret c

    cp $f1
    rst $38
    rst $38
    nop
    ldh a, [$f8]
    ld l, h
    sbc [hl]
    xor $1f
    reti


    ccf
    inc b
    or c
    ld a, a
    ld h, e
    rst $38
    rst $08
    ld l, $ff
    ld l, a
    nop
    rst $38
    or [hl]
    sbc b
    jp hl


    sub b
    xor c
    ret nc

    db $ec
    nop
    di
    ld e, e
    rst $20
    cp [hl]
    call z, $98ac
    or $00
    rst $38
    db $ed
    add hl, de
    rst $30
    add hl, bc
    push af
    dec bc
    scf
    nop
    rst $08
    jp c, Jump_02f_7de7

    inc sp
    dec [hl]
    add hl, de
    ret nz

    db $10
    cp h
    jp $21bb


    pop bc
    cp c
    pop bc
    cp l
    ret nz

    ld hl, $ff2b
    rst $38
    ld a, l
    ld a, l
    ld h, c
    ld h, c
    inc c
    ld bc, $018f
    rst $38
    ld h, c
    ld h, d
    ret z

    or a
    nop
    call z, $ceb3
    or c
    rst $00
    cp b
    jp $08bc


    pop bc
    cp [hl]
    ret nz

    cp a
    cpl
    dec e
    db $e3
    add hl, sp
    inc b
    rst $00
    ld [hl], c
    adc a
    pop hl
    rra
    rst $38
    db $d3
    or e
    add b
    ld hl, $b1d9
    push hl
    and c
    db $ed
    xor l
    or $18
    cp h
    jp $2fbe


    ld b, b
    ld bc, $ff1d
    nop
    push hl
    rst $20
    add hl, hl
    rrca
    dec e
    rrca
    rst $00
    jp $fb00


    ld sp, hl
    ret nz

    cp a
    call z, $d2bf
    or e
    nop
    db $ed
    and c
    sbc $80
    rst $38
    adc h
    rst $38
    sbc [hl]
    add c
    inc a
    rla
    pop af
    cpl
    db $e3
    ld e, a
    rst $00
    ld hl, $25ca
    add hl, hl
    rst $38
    ld bc, $002f
    ld hl, $0080
    ld a, [bc]
    or c
    dec l
    sub b
    ld [hl], $88
    ccf
    add b
    ld [$801f], sp
    cpl
    add b
    dec l
    rst $28
    add b
    ret nz

    nop
    or a
    and b
    sbc e
    ret nc

    adc l
    ret z

    and [hl]
    call nz, $b340
    sbc a
    ld bc, $0196
    jp z, $e401

    ld bc, $3201
    ld bc, $0198
    ld c, h
    add c
    dec l
    nop
    ld a, a
    ld bc, $bd03
    inc bc
    db $dd
    inc bc
    db $ed
    ld [$f503], sp
    inc bc
    ld a, c
    ccf
    rst $30
    ld hl, sp-$09
    and b
    inc hl
    cp $43
    ld hl, sp+$77
    rst $38
    scf
    ld a, b
    inc d
    ld c, $1f
    rst $28
    ld hl, $83ff
    ld a, a
    xor $00

jr_02f_5d42:
    rst $38
    db $ec
    ld e, $70
    ld hl, sp-$54
    ret c

    db $76
    inc b
    db $ec
    or e
    rst $38
    cp c
    cp a
    ld b, d
    sbc a
    ld [c], a
    nop
    ret nz

    rst $38
    rst $38
    dec [hl]
    dec de
    ld l, [hl]
    scf
    call $ff11
    sbc l
    db $fd
    ld b, d
    ld sp, hl
    ld b, a
    inc bc
    cpl
    ld b, b
    nop
    ld hl, $3f80
    add e
    ccf
    add d
    ccf
    db $10
    cp [hl]
    ccf
    and d
    add c
    rst $38
    ccf
    ld hl, $35ff
    pop hl
    rst $38
    inc hl
    ld b, c
    pop hl
    inc hl
    ccf
    ld a, a
    dec hl
    jr nz, jr_02f_5d42

    ld hl, $613f
    cp h
    ld hl, $024f
    ld bc, $fd7c
    ld b, h
    push bc
    call nz, Call_02f_4561
    add b
    ld hl, $0009
    ld a, a
    dec c
    ld a, a
    cpl
    ld a, a
    ld [hl+], a
    ccf
    rst $38
    ld hl, $ffbf
    ld a, a
    jr nz, jr_02f_5dd4

    nop
    db $10
    or $30
    cp $e4
    db $fc
    db $fc
    db $fd
    ld b, $fc
    rst $38
    db $fd
    rst $38
    cp $20
    rra
    add hl, bc
    add hl, sp
    ld [bc], a
    ld sp, hl
    or b
    ldh a, [$62]
    ld a, c
    ld h, h
    rra
    add hl, bc
    inc e
    nop
    rra
    ld c, l
    adc a
    ld b, $4e
    ld h, $bf
    ld a, a
    inc b
    rst $38
    ld a, a
    ret nc

    rst $28
    sub b
    ld b, c
    sbc a
    ldh [rNR41], a

jr_02f_5dd4:
    cp a
    rst JumpTable
    ld [hl+], a
    db $fd
    cp $ff
    cp $0b
    ld hl, $09f7
    ld b, c
    ld sp, hl
    rlca
    db $fd
    ei
    ld [hl+], a
    ld bc, $c0bf
    ldh a, [$80]
    ldh [$80], a
    ret nz

    add c
    ld b, b
    nop
    ld b, b
    db $fd
    inc bc
    rrca
    ld bc, $0107
    ld [hl], b
    inc bc
    add c
    ld l, a
    jr nz, @+$01

    nop
    rst JumpTable
    ccf
    ld de, $7fbf
    rst $38
    ld h, c
    ld a, h
    rst $38
    ld a, b
    ld l, a
    nop
    ei
    db $fc
    db $fd
    add [hl]
    rst JumpTable
    add d
    xor a
    jp nz, $9708

    ld [c], a
    bit 6, d
    rra
    dec c
    ld a, a
    rst JumpTable
    ld a, a
    sub b
    rst JumpTable
    cp $ff
    pop bc
    ld a, $a2
    ccf
    and e
    add hl, bc
    inc hl
    and e
    ccf
    cp a
    ld b, c
    add b
    nop
    ld hl, $ff08
    ccf
    ccf
    rst $38
    ret nz

    cp $01
    nop
    ret


    ld hl, $bc2f
    daa
    pop bc
    ccf
    cp a
    ld a, a
    inc h
    call nz, $e145
    db $fc
    db $fd
    ld a, a
    ld a, a
    ld a, a
    ld h, d
    rst $38
    ld b, e
    ld b, l
    ld a, a
    ccf
    rra
    jr nz, jr_02f_5e85

    ld c, $03
    cp $fe
    rst $38
    ld [hl+], a
    ld b, b
    ld b, l
    db $fc
    add b
    jr nz, jr_02f_5e84

    jr nz, @+$68

    ld b, c
    ld [c], a
    ret z

    ld l, a
    nop
    ld b, b
    ld [hl], c
    ld h, h
    ldh a, [$60]
    jr c, @+$12

    rra
    ld b, b
    inc e
    ccf
    ld a, $02
    cpl
    add d
    add $12
    nop
    ld h, $02
    sbc a
    ld [bc], a
    cp $04
    db $fc
    call c, $3f88
    ret nc

    rst $28
    sub b

jr_02f_5e84:
    add c

jr_02f_5e85:
    sbc a
    ldh [$bf], a
    nop
    rst $38
    ldh [rIE], a
    rst JumpTable
    ldh [$0b], a
    rst $30
    add hl, bc
    add b
    add c
    ld sp, hl
    rlca
    db $fd
    rst $38
    rlca
    rst $38
    ei
    or b
    ld [hl+], a
    nop
    ld bc, $0e0e
    rrca
    rst $38
    ei
    ld [hl], b
    db $f4
    nop
    ld a, b
    pop af
    ld a, [hl]
    db $fc
    ld a, a
    db $eb
    ld b, a
    pop bc
    nop
    ld b, b
    ret nz

    ld b, b
    rst $38
    rst $38
    rst $20
    ld a, [hl-]
    di
    nop
    ld e, $3b
    ld c, $4f
    add [hl]
    sub a
    ld [c], a
    ld [hl], e
    nop
    cp $2f
    ld e, $ff
    cp $cd
    ld a, [hl]
    db $db
    nop
    ld a, h
    rst $30
    ld a, b
    rst $28
    ld [hl], b
    db $dd
    ld h, e
    or $10
    ld c, a
    ret c

    ld a, h
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, $81
    ld hl, $f263
    add e
    jp nz, $0203

    ld hl, $2ec0
    add hl, bc
    rst $10
    jr c, jr_02f_5f22

    rst $38
    nop
    ld a, [de]
    db $db
    inc a
    ccf
    inc b
    jr z, @+$01

    rst $30
    rst $38
    db $ed
    ld c, e
    cp e
    rst $38
    ld d, a
    sbc c
    ld b, l
    ld [hl], a
    ld b, l
    or l
    rrca
    add hl, bc
    ccf
    rrca
    ld c, $80
    jr nz, jr_02f_5f07

jr_02f_5f07:
    nop
    inc bc
    nop
    inc b
    inc bc
    dec e
    nop
    inc bc
    ld h, $1d
    ld c, l
    ld [hl-], a
    ld c, e
    inc a
    ld a, [hl]
    nop
    ld bc, $182f
    ld c, [hl]
    dec [hl]
    ld d, l
    dec hl
    ld b, h
    ld b, $3b
    ld a, h

jr_02f_5f22:
    inc bc
    ld c, $01
    add hl, sp
    jr nz, @+$01

    nop
    nop
    sbc e
    ld h, h
    rrca
    sub b
    dec c
    ld a, [c]
    ret z

jr_02f_5f31:
    nop
    dec b
    ld a, b
    add a
    db $fc
    nop
    rst $20
    jr jr_02f_5f31

    ld b, b
    inc d
    ld hl, $17f4
    ld a, [c]
    inc d
    add c
    ld [hl], h
    nop
    pop bc

jr_02f_5f45:
    sub a
    rst $30
    sub [hl]
    di
    ld [hl], h
    xor e
    ld l, [hl]
    nop
    rrca
    ld [$2e87], a
    ld c, e
    daa
    ld h, b
    ldh a, [rP1]
    ret nc

    ccf
    db $ed
    inc de
    db $e3
    ld h, $ff
    nop
    db $10
    cp $01
    rst $38
    ld b, c
    cp $02
    db $fd
    inc b
    ld [$09fb], sp
    rst $30
    ld [hl], e
    cpl
    rst $38
    ret nz

    ld a, a
    ld d, b
    jr nz, jr_02f_5f97

    nop
    jr nz, @+$01

    adc a
    rst $38
    rst $28
    ld [$c748], sp
    jr c, jr_02f_5f45

    inc hl
    ld c, b
    ld [hl], b
    rst $08
    adc e
    ld l, a
    rst $38
    rst $08
    rst $08
    rrca
    add hl, bc
    ld bc, $24cf
    nop
    add b
    add b
    ret nz

    cp a
    ret nz

    and b
    ret nc

    xor a
    ret nz

    and c

jr_02f_5f97:
    cpl
    inc bc
    ld bc, $fd07
    rrca
    dec b
    jr z, jr_02f_5faf

    push af
    and c
    nop
    nop
    dec bc
    ld bc, $0600
    nop
    ld bc, $060d
    ld [de], a
    dec c
    dec d

jr_02f_5faf:
    dec bc
    inc d
    ld [$3c0b], sp
    inc bc
    rrca
    rla
    dec bc
    dec sp
    ld bc, $402e
    add hl, de
    scf
    ld a, e
    inc b
    ld d, a
    jr c, @+$44

    dec a
    jr nc, jr_02f_5feb

    dec de
    dec a
    rra
    ld a, [bc]
    ccf
    add b
    ld hl, $d39e

jr_02f_5fcf:
    and c
    add hl, hl
    nop
    ld hl, $ffff
    ld [hl+], a
    ld b, h
    ret nc

    ld b, b
    rst $20
    inc sp
    ld bc, $d70e
    jr z, jr_02f_5fcf

    jr z, @+$04

    rst $38

jr_02f_5fe3:
    jr z, @+$2b

    rst $28
    add hl, hl
    ld bc, $0121
    ld b, b

jr_02f_5feb:
    rst $28
    jr nz, jr_02f_5fe3

    ld [de], a
    ld a, [c]
    add hl, de
    ld sp, hl
    inc c
    nop
    db $fc
    ld b, $fc
    dec b
    cp $05
    rst $38
    inc bc
    ld bc, $00ff
    rst $00
    ld c, h
    adc a
    sbc b
    nop
    ld h, $b0
    jr nz, @+$01

    ld b, b
    ld c, b
    rst $30
    sub [hl]
    ld d, e
    sub $00
    or c
    ld [hl], a
    db $d3
    inc [hl]
    db $f4
    ld d, $f6
    rla
    nop
    rst $30
    dec d
    rst $30
    inc d
    xor e
    ld h, h
    rst $30
    inc h
    nop
    ret nc

    ccf
    add sp, -$70
    ld d, b
    ld h, a
    add a
    cpl
    ld [bc], a
    call Call_02f_6fa9
    rst $28
    rst $08
    ld c, b
    ld hl, $22f0
    rst $08
    nop
    jr nz, @+$01

    rst $38
    rst $08
    add hl, hl
    rst $38
    ld b, h

Jump_02f_603c:
    ld a, b
    ld l, a
    ld [hl], b
    rst $08
    ld bc, $090f
    ret nc

    xor a

jr_02f_6045:
    add c
    ld h, c
    rst JumpTable
    and b
    rst $38
    cp a
    rst $38

jr_02f_604c:
    add b
    ld [hl-], a
    sub b
    jr nz, jr_02f_6060

    push af
    ld h, c
    rst $38
    dec b
    rst $38
    db $fd
    jr nz, @+$01

    ld bc, $c36f
    cp l
    ld h, [hl]
    db $db
    inc a

jr_02f_6060:
    nop
    rst $20
    jr @+$01

    jr nc, jr_02f_6045

    ld h, b
    cp a
    ret nz

    nop
    ld a, a
    add c
    cp $c4
    cp c
    ld a, c
    jp nz, $0023

    db $e4
    ld h, a
    sbc b
    rst $08
    db $10
    sbc a
    jr nz, jr_02f_60ba

    nop

jr_02f_607c:
    ld b, b
    ld a, [hl]
    add b
    cp l
    nop
    jp nc, $a500

    nop
    nop
    ld e, d
    nop
    or l
    nop
    ld l, d
    nop
    ld b, b
    nop
    nop
    add b
    nop
    inc a
    add c
    sbc c
    ld b, d
    jp $2410


    rst $20
    jr @+$01

    nop
    nop
    inc bc
    inc bc
    nop
    dec c
    ld c, $36
    add hl, sp
    ld e, e
    ld h, a
    db $ec
    sbc a
    ld [$3fd0], sp
    and b
    ld a, a
    jr nz, jr_02f_604c

    db $e3
    rst $38
    inc bc
    nop
    db $fd
    cp $04
    rst $38
    inc bc
    ld h, $41

jr_02f_60ba:
    adc [hl]
    ld b, d
    rra
    rst $38
    db $10
    ld bc, $740b

Call_02f_60c2:
    ld b, c
    ldh [rNR10], a
    rra
    rst $28
    db $10
    ld h, c
    nop
    ld a, a
    ret nz

    add b
    add b
    ld hl, $e79f
    sbc a
    rst $28
    cp a
    rst JumpTable
    cp d
    nop
    jp c, $bfdf

    rst $38
    rst $38
    cp a
    ret nz

    ldh [$09], a
    add b
    adc b
    ret nz

    add c
    ld b, l
    sbc a
    ldh [$2d], a
    add b
    jr nz, jr_02f_607c

    rst $28
    and l
    jp $81cb


    jp $8139


Call_02f_60f3:
    db $d3
    ld b, e
    ld hl, $802f
    add b
    ld [hl+], a
    nop
    rst JumpTable
    and b
    rst $08
    or b
    rst $00
    cp b
    ret nz

    cp b

jr_02f_6103:
    nop
    jp $ffbb


    rrca
    rst $38
    jr jr_02f_6103

    jr nc, jr_02f_610d

jr_02f_610d:
    rst $30
    ld h, a
    add sp, -$31
    db $d3
    sbc h
    pop de
    sbc b
    add b
    ld hl, $ff03
    dec a
    cp $5a
    db $ec
    or h
    db $10
    ret c

    cp b
    ret nc

    ld hl, $f894
    ld [hl], c
    db $fc
    nop
    ret nz

    rst $38
    cp h
    ld a, a
    ld e, d
    scf
    dec l
    dec de
    jr nz, jr_02f_614f

    dec bc
    ld hl, $1f29
    adc [hl]
    ccf
    nop
    nop
    cp $02
    ld bc, $0103
    ld sp, hl
    rst $20
    ld sp, hl
    inc b
    rst $30
    ld sp, hl
    rst $38
    cp c
    cp a
    inc hl
    nop
    rst $38
    jr z, jr_02f_61cb

    add c
    pop hl

jr_02f_614f:
    nop
    ld hl, $68ff
    ld e, a
    inc h
    or b
    rst JumpTable
    ld hl, $9ff0
    ld hl, $9ff8
    inc c
    db $e4
    sbc a
    db $f4
    adc a
    ld sp, $1021
    rst $38
    ld bc, $ff28
    ld b, h
    rst $38
    add d
    rst $38
    cp $4b
    nop
    rlca
    inc b
    ld c, $09
    dec d
    dec de
    ld a, [de]
    rla
    nop
    inc l
    scf
    inc [hl]
    cpl
    ld e, b
    ld l, a
    ld l, b
    ld e, a
    jr jr_02f_61c3

    rst $38
    add b
    ld d, l
    ld bc, $060a
    rst $38
    ld a, [bc]
    rrca
    rst $38
    ld [de], a
    rst $38
    ld [hl+], a
    ld b, e
    daa
    dec hl
    cpl
    dec bc
    ldh a, [rNR10]
    ldh a, [$1f]
    and c
    rst $38
    ld hl, $142e
    nop
    rst $28
    db $10
    pop hl
    ldh [$8f], a
    rst JumpTable
    cp a
    jr nz, @-$24

    cp d
    inc hl
    sbc b
    cp b
    sbc a
    cp a
    ret nz

    nop
    add b
    and a
    ret c

    ld a, a
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    ld bc, $0507
    inc bc
    inc hl
    ld bc, $0309
    dec h

Jump_02f_61c1:
    push bc
    add hl, hl

jr_02f_61c3:
    dec l
    res 0, c
    jp $d341


    ld b, e
    add hl, bc

jr_02f_61cb:
    push hl
    add e
    and l
    db $db
    cpl
    jp $21bb


    nop
    rst $00
    cp e
    jp z, $dcbd

    cp [hl]
    cp $bf
    ld b, h
    cp a
    ld l, $ff
    rst $10
    sbc b
    ld hl, $9cd3
    nop
    add sp, -$31
    rst $30
    ld h, a
    ld hl, sp+$30
    rst $38
    jr jr_02f_61ef

jr_02f_61ef:
    rst $38
    rrca
    ld [hl], d
    db $dd
    sbc d
    call $c7af
    nop
    sub [hl]
    pop hl
    adc [hl]
    pop af
    sbc e
    rst $20
    db $e4
    rst JumpTable
    nop
    ccf
    rst $38
    ld c, [hl]
    cp e
    ld e, c
    or e
    push af
    db $e3
    nop
    ld l, c
    add a
    ld [hl], c
    adc a
    reti


    rst $20
    daa
    ei
    ld [bc], a
    db $fc
    rst $38
    ei
    db $fd
    ld e, e
    ld e, l
    inc hl
    sbc c
    nop
    sbc l
    ld sp, hl
    db $fd
    inc bc
    ld bc, $1be5
    db $fc
    ld b, b
    cp $55
    ld d, l
    nop
    ldh a, [$32]
    ld d, b
    jr jr_02f_624d

    inc bc
    ld c, c
    ld bc, $5555
    nop
    ld bc, $0321
    rra
    jr jr_02f_628a

    ld sp, $50f0
    nop
    nop
    ldh a, [$30]
    ld [$0410], sp
    jr jr_02f_6266

    rra
    add b
    ld a, a
    ld b, b
    ld sp, $211e

jr_02f_624d:
    ld h, b
    nop
    jr nz, jr_02f_6252

    ld b, c

jr_02f_6252:
    ld a, $41
    add c
    ld a, [hl]
    inc b
    ld hl, sp-$58
    db $10
    add sp, $10
    nop
    db $fc
    push de
    ld d, l
    nop
    ccf
    ld h, a
    ld e, a
    ld a, [hl]
    ld a, h

jr_02f_6266:
    ld a, c
    ld [hl-], a
    push de
    ld d, l
    nop
    ld a, h
    ld c, [hl]
    ld a, [hl]
    ld e, $ce
    ldh [$60], a
    ldh [rP1], a
    nop
    ccf
    ld bc, $137e
    ld l, h
    ld b, $79
    inc c
    ld [hl], e
    jr jr_02f_62e7

    jr nc, jr_02f_62d1

    nop
    nop
    nop
    rst $38
    ld [hl], h
    adc e
    ld l, c
    sub [hl]

jr_02f_628a:
    ld d, d
    xor l
    dec h
    jp c, $b44b

    ld d, $e9
    dec l
    jp nc, $9080

    rst $38
    nop
    ld b, e
    add c
    jp $bf81


    jp $fec7


    ld [hl], h
    adc $cf
    ld a, h
    ld b, d
    xor b
    ccf
    rst $08
    sbc a
    ld a, a
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    and b
    sbc [hl]
    ld sp, hl
    ld a, h
    db $fd
    ld e, $9f
    rrca
    sbc l
    rlca
    dec b
    dec b

Jump_02f_62bf:
    rst $28
    rra
    cp l
    ld a, [hl]
    add b
    inc b
    rst $38
    ld e, a
    ld sp, hl
    ld a, a
    db $ed
    ei
    db $ed
    db $db
    db $fd
    db $eb
    db $fd
    ei

jr_02f_62d1:
    rst JumpTable
    rst $28
    ld e, a
    ld h, l
    nop
    ld bc, $00fe
    nop
    rst $38
    ld a, l
    add e
    rst $38
    rst $38
    jr z, jr_02f_62f1

    rst $28
    db $10
    dec b
    inc d
    inc b
    ld e, l

jr_02f_62e7:
    cp h
    sub l
    inc c
    sbc l
    sbc a
    sbc h
    rlca
    sbc a
    sbc l
    sub l

jr_02f_62f1:
    inc c
    inc d
    ld b, b
    inc b
    rst $28
    inc e
    rra
    rra
    ld l, h
    rlca
    pop af
    pop af
    ld hl, sp-$1c
    db $10
    xor $10
    nop
    nop
    ccf
    ret nz

    ld de, $88e0
    ld [hl], c
    sub $39
    xor b
    rra
    sub a
    rrca
    sub l
    ld c, $86
    dec e
    ld d, l
    ld d, l
    nop
    rrca
    adc h
    ld [$f818], sp
    ret nz

    add h
    add b
    ld d, l
    ld d, l
    nop
    add b
    add h
    ret nz

    ld sp, hl
    jr jr_02f_6330

    ld c, h
    rrca
    add b
    add l
    nop
    ccf
    jr nc, jr_02f_633f

jr_02f_6330:
    dec d
    ld [$1865], sp
    rst $38
    add $01
    add c
    add b
    ld [hl+], a
    add hl, bc
    nop
    ld b, h
    add d
    add d

jr_02f_633f:
    ld b, l
    add d
    rst $38
    ld h, a
    sbc b
    sub b
    ld [$0f08], sp
    ld d, l
    ld d, a
    nop
    ld [bc], a
    dec sp
    ld c, c
    ld e, h
    ld a, [hl]
    ld a, [hl]
    inc a
    ld d, l
    ld d, a
    nop
    and $ca
    sub [hl]
    ld l, $7e
    ld a, [hl]
    inc a
    ld [$7302], sp
    nop
    rst $38
    ld a, e
    add h
    adc h
    ld h, a
    sbc b
    ld b, [hl]
    cp c
    ld e, $e1
    ld a, l
    add d
    adc h
    ld d, l
    ld d, l
    nop
    db $10
    daa
    ld c, b
    sub a
    cpl
    ld e, e
    ld e, a
    ld e, a
    or b
    rst $00
    rst $38
    ld a, h
    cp a
    db $76
    ld [hl], e
    rst $28
    db $fd
    jp Jump_02f_61c1


    ld d, b
    rst $38
    cp a
    ccf
    cp a
    ld a, a
    rra

jr_02f_638b:
    rra
    jr nz, jr_02f_63ed

    ldh [$bf], a
    ret nz

    rst $38
    ld d, b
    rst $38
    ld a, a
    rra
    add c
    ld a, a
    ldh [$1f], a
    xor d
    add b
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    push hl
    cp $42
    cp a
    pop hl
    sbc a
    jr jr_02f_638b

    rst $38
    rst $00

jr_02f_63ac:
    jr c, jr_02f_63ac

    ld bc, $837c
    db $10
    rst $10
    jr c, @-$0f

    jr nz, jr_02f_63b9

    rst $28
    xor a

jr_02f_63b9:
    ld a, c
    ld e, c
    rst $38
    ld c, c
    ld a, l
    bit 7, [hl]
    rst $08
    ld a, l
    set 7, a
    ld c, c
    ld e, c
    and b
    add d
    rst $38
    ld c, c
    adc c
    rst $08
    ld c, $8f
    add hl, bc
    pop af
    ei
    ld hl, $21fd
    rst JumpTable
    jr jr_02f_63d7

jr_02f_63d7:
    rst $38
    and a
    ret c

    ld e, a
    ld [hl], b
    rst $30
    ld a, b
    ld l, b
    rst JumpTable
    ld [hl], l
    adc $f3
    ld c, [hl]
    or a
    ld c, c
    sbc c
    ld c, b
    jp $bd81


    rst $38
    cp l

jr_02f_63ed:
    cp l
    sbc c
    rst $20
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    rst $38
    push bc
    cp $9a
    db $e4
    cp d
    call nz, $c4ba
    sbc d
    db $e4
    push bc
    cp $54
    dec d
    nop
    ret z

    ret z

    ld [$1807], sp
    ldh [rNR23], a
    db $10
    inc de
    inc de
    ld d, h
    dec d
    nop
    inc de
    inc de
    db $10
    ldh [rNR23], a
    rlca
    jr jr_02f_6422

    ret z

    ret z

    and b
    nop
    inc a
    ld [bc], a
    ld [bc], a
    dec h

jr_02f_6422:
    add d
    ld b, $43
    ld l, $43
    ld e, e
    daa
    db $e3
    rra
    dec de
    rlca
    ld h, b
    add b
    nop
    db $10
    ld [$0f20], sp
    sub b
    ld [$14f8], sp
    ldh [$d3], a
    ldh [$d1], a
    ldh [rP1], a
    nop
    rst $38
    nop
    ret nz

    ccf
    sbc b
    ld h, a
    and b
    ld e, a
    add c
    ld a, [hl]
    add e
    ld a, h
    add [hl]
    ld a, c
    call $0032
    nop
    rst $38
    nop
    add e
    ld a, h
    or c
    ld c, [hl]
    add c
    ld a, [hl]
    pop hl
    ld e, $31
    adc $1f
    ldh [$9f], a
    ld h, b
    ldh [rP1], a
    nop
    ccf
    ld bc, $137e
    ld l, h
    ld b, $79
    inc c
    ld [hl], e
    jr jr_02f_64d6

    jr nc, jr_02f_64c0

    nop
    nop
    nop
    rst $38
    ld [hl], h
    adc e
    ld l, c
    sub [hl]
    ld d, d
    xor l
    dec h
    jp c, $b44b

    ld d, $e9
    dec l
    jp nc, $00d4

    nop
    add c
    db $e3
    dec e
    jp $df63


    ld b, e
    rst $38
    ld b, [hl]
    rst $38
    ld h, $ff
    ld d, d
    xor d
    ccf
    rst JumpTable
    rst JumpTable
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, b
    dec b
    rra
    ld a, h
    cpl
    inc de
    rrca
    db $10
    rrca
    db $10
    rrca
    add hl, hl
    rlca
    ld l, $60
    ld d, l
    ld d, l
    rst $38
    cpl
    cp a
    rst $30
    rst $28
    rst $28
    or e
    rra
    and a
    ret nc

    jr nz, jr_02f_64bb

jr_02f_64bb:
    sbc c
    cp $01
    ld e, e
    and h

jr_02f_64c0:
    add h
    ld a, e
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    ld de, $0f44
    ld d, b
    cpl
    ld sp, $1728
    ld [hl], b
    ld [hl], d
    jr nz, jr_02f_64f2

    jr nc, jr_02f_653d

    rla

jr_02f_64d6:
    ld b, l
    nop
    rlca
    jr jr_02f_64eb

    rrca
    ld [$a0c0], sp
    ld b, e
    ld b, b
    or c
    nop
    ld hl, sp+$00
    db $fc
    ret nz

    nop
    nop
    ld l, a
    ld [hl], b

jr_02f_64eb:
    ld [hl], l
    ld a, d
    ld a, [hl-]
    ld a, l
    ld e, h
    ccf
    ld l, [hl]

jr_02f_64f2:
    rra
    ld d, a
    cpl
    ld h, e
    rra
    ld d, h
    dec d
    nop
    inc de
    inc de
    db $10
    ldh [rNR23], a
    rlca
    jr @+$0a

    ret z

    ret z

    ld d, h
    dec d
    nop
    ret z

    ret z

    ld [$1807], sp
    ldh [rNR23], a
    db $10
    inc de
    inc de
    ld d, b
    nop
    rlca
    dec bc
    adc c
    call nz, Call_02f_6809
    db $10
    ld c, b
    jr nc, @+$36

    ld c, b
    jp Jump_02f_4304


    nop
    ld bc, $8460
    pop de
    ldh [$89], a
    ldh a, [$f2]
    adc h
    ld c, b
    ld d, b
    ld b, b
    cp c
    ld b, b
    or b
    ld b, b
    nop
    and b
    add c
    db $fd
    ld [bc], a
    call nz, $b63b
    ld c, c
    and e
    ld e, h

jr_02f_653d:
    ld a, [hl]
    ld a, [hl]
    jp $ff3c


    nop
    nop
    and b
    add c
    add hl, de
    and $35
    jp z, $9669

    pop de
    ld l, $7e
    ld a, [hl]
    jp $ff3c


    nop
    nop
    nop
    nop
    rst $38
    dec a
    jp nz, $9768

    ld e, d
    and l
    ld [hl], b
    adc a
    ld b, d
    cp l
    inc d
    db $eb
    ld b, c
    cp [hl]
    ld d, l
    ld d, l
    nop
    db $10
    daa
    ld c, b
    sub a
    cpl
    ld e, e
    ld e, a
    ld e, a
    ld d, l
    ld e, a
    rst $38
    cp [hl]
    inc e
    cp a
    ld h, [hl]
    ld e, e
    rst JumpTable
    ld h, c
    ld d, b
    rst $38
    cp a
    ccf
    cp a
    ld a, a
    rra
    rra
    jr nz, jr_02f_65e4

    ldh [$bf], a
    ret nz

    rst $38
    ret nc

    rst $38
    rra
    ret nz

    ccf
    ldh [$1f], a
    xor d
    add b
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    push hl
    cp $42
    cp a
    pop hl
    sbc a
    ld d, l
    ld e, a
    rst $38
    ld b, b
    ld de, $d744
    ld a, l
    xor $55
    ld d, l
    rst $38
    rla
    cp a
    rrca
    ld e, e
    rrca
    ccf
    rla
    ld e, e
    nop
    rla
    rst $38
    ld d, a
    ccf
    xor a
    rra
    ld b, e
    sbc a
    add a
    rst $28
    inc hl
    rst $30
    or e
    db $fd
    ld d, l
    ld d, l
    rst $38
    ret nz

    db $e4
    ld [hl], b
    ld a, [hl-]
    dec e
    sbc a
    rlca
    cpl
    sbc c
    ld c, b
    jp $bd81


    rst $38
    cp l
    cp l
    sbc c
    rst $20
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    rst $38
    push bc
    cp $9a
    db $e4
    cp d
    call nz, $c4ba

jr_02f_65e4:
    sbc d
    db $e4
    push bc
    cp $08
    ld [bc], a
    ld [hl], e
    nop
    rst $38
    ld a, e
    add h
    adc h
    ld h, a
    sbc b
    ld b, [hl]
    cp c
    ld e, $e1
    ld a, l
    add d
    adc h
    push de
    ld d, a
    nop
    ld a, [hl]
    ld a, d
    ld e, [hl]
    ld a, [hl]
    db $76
    ld a, [hl]
    ldh a, [rP1]
    nop
    inc bc
    inc bc
    dec b
    ld b, $07
    ld [$1c13], sp
    db $10
    rra
    ld [hl], b
    ld a, a
    ldh a, [rP1]
    nop
    ld hl, sp-$10
    db $f4
    inc c
    db $fc
    ld c, $fd
    rra
    db $fd
    ccf
    ld a, [hl]
    rst $38
    rst $38
    ld hl, sp+$00
    add b
    ret nz

    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld c, $07
    ld e, $09
    rra
    db $10
    ccf
    jr nz, @+$41

    jr nz, jr_02f_6679

    ld [$dcbf], sp
    sbc $3f
    sbc $3f
    ld e, [hl]
    db $fd
    cp $7b
    db $fc
    ld a, b
    rst $38
    ldh a, [$d0]
    nop
    rst $38
    rlca
    ld l, a
    sbc a
    rst $28
    rra
    sbc $3f
    rst JumpTable
    ld a, $bf
    ld a, [hl]
    db $fd
    ld a, [hl]
    ld d, b
    nop
    ldh [rNR41], a
    or b
    jr nc, @-$2e

    ld a, b
    adc b
    db $fc
    add h
    cp [hl]
    jp nz, $c2fe

    jp nc, $156e

    ld d, l
    ccf
    add hl, sp
    daa
    ld hl, $2121
    ld hl, $2121
    ld sp, $55a1
    rst $38
    ldh [$e0], a

jr_02f_6679:
    ret nc

    rst $28
    ldh [$e1], a
    pop hl
    pop hl
    pop hl
    ld b, c
    ld d, d
    cp $7d
    ld a, a
    db $fc
    ei
    db $fc
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $fc
    rst $38
    rst $38
    ld b, b
    ld d, l
    ld a, a
    xor a
    rst $38
    ccf
    rst JumpTable
    ccf
    db $db
    ccf
    sub e
    sub c
    sbc c
    sbc l
    ld d, b
    nop
    ccf
    add hl, sp
    add hl, de
    dec l
    rra
    rrca
    rra
    rla
    rrca
    dec b
    inc bc
    ld [bc], a
    ld bc, $0000
    ld d, l
    db $76
    rst $38
    pop bc
    add c
    add e
    add a
    adc a
    ccf
    ccf
    push af
    ld d, a
    rst $38
    rst $30
    di
    pop af

Jump_02f_66bd:
    ldh a, [$f8]
    ld d, l
    nop
    rst $38
    dec e

Jump_02f_66c3:
    rra
    sbc [hl]
    sbc h
    reti


    cp $fa

jr_02f_66c9:
    db $fc
    db $e4
    ld hl, sp-$78
    ldh a, [rHDMA5]
    ld d, l
    nop
    add h
    daa
    ld l, b
    add hl, bc
    sbc d
    ld a, [c]
    jr nz, jr_02f_6702

    ld d, l
    ld d, l
    nop
    inc d
    or $12
    ret c

    rrca
    ld h, [hl]
    inc b
    sub l
    nop
    nop
    add d
    inc b
    jr z, jr_02f_66f1

    ld h, b
    rrca
    ld [de], a
    inc c
    ld h, h
    sbc b
    add b

jr_02f_66f1:
    ld a, b
    ld b, b
    ccf
    nop
    ld [hl-], a
    inc d
    nop
    ldh a, [rNR50]
    db $10
    ld b, $0a
    ld b, h
    jr c, @+$42

    ccf
    sub d

jr_02f_6702:
    ld l, h
    jr z, jr_02f_66c9

    sbc c
    ld b, h
    ld d, l
    ld d, l
    nop
    db $10
    daa
    ld c, b
    sub a
    cpl
    ld e, e
    ld e, a
    ld e, a
    ld d, l
    ld d, l
    nop
    ld [$12e4], sp
    jp hl


    db $f4
    jp c, $fafa

    ldh [rP1], a
    nop
    ccf
    ld bc, $137e
    ld l, h
    ld b, $79
    inc c
    ld [hl], e
    jr @+$69

    jr nc, jr_02f_677c

    ld [$7302], sp
    nop
    rst $38
    ld a, e
    add h
    adc h
    ld h, a
    sbc b
    ld b, [hl]
    cp c
    ld e, $e1
    ld a, l
    add d
    adc h
    ld [$bd28], sp
    adc c
    nop
    sbc c
    nop
    ld a, [hl]
    ld a, [hl]
    rst $38
    jp $c3e7


    jp $e799


    ld [de], a
    add d
    ccf
    di
    rrca
    rst $08
    sbc a
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    cp a
    ld a, a
    rst $38
    add b
    ld [bc], a
    rst $28
    rra
    jr jr_02f_67a2

    ld [hl], $39
    rst $30
    jr nc, jr_02f_67df

    jr nc, jr_02f_67a0

    add hl, sp

jr_02f_676b:
    jr jr_02f_67ac

    rra
    add b
    ld [bc], a
    pop bc
    cp a
    db $e3
    rst JumpTable
    db $76
    rst $28
    dec a

jr_02f_6777:
    cp $3d
    cp $76
    rst $28

jr_02f_677c:
    db $e3
    rst JumpTable
    cp a
    ld d, b
    inc b
    nop
    adc c
    sbc c
    rst $20
    jr jr_02f_67c9

    cp l
    ld [$21f7], sp
    sbc $a6
    ld l, a
    sub b
    ld b, b
    db $10
    jr @-$19

    inc sp
    inc c
    inc hl
    inc e
    ret


    inc [hl]
    ld b, b
    dec a
    daa
    ld sp, $e20c
    dec e

jr_02f_67a0:
    ld b, l
    nop

jr_02f_67a2:
    dec b
    jr jr_02f_67b7

    dec c
    ld [$a2c2], sp
    ld b, c
    ld b, b
    or c

jr_02f_67ac:
    jr z, jr_02f_67ae

jr_02f_67ae:
    nop
    db $fc
    ret nc

    nop

jr_02f_67b2:
    nop
    add hl, sp
    ld h, l
    ld a, [de]
    ld c, d

jr_02f_67b7:
    dec a
    ld e, h
    ccf

jr_02f_67ba:
    ld l, $1f
    rla
    cpl
    ld h, e
    rra
    ld d, l
    ld d, l
    nop
    inc l
    inc l
    ld h, b
    ld sp, hl
    inc c
    ld h, a

jr_02f_67c9:
    inc h
    sub h
    ld d, l
    ld d, l
    nop
    or h
    inc h
    rrca
    sbc c
    jr nc, jr_02f_67ba

    inc h
    ld sp, $0500
    inc b
    dec d
    ld [hl+], a
    db $10
    daa
    ld e, d
    inc h

jr_02f_67df:
    nop
    db $fc
    inc de
    inc c
    ld l, b
    rlca
    jr nz, jr_02f_6777

    nop
    dec b
    jr nz, jr_02f_676b

    ld b, h
    jr z, jr_02f_67b2

    ld d, c
    ld l, $47
    jr c, @-$36

    jr nc, jr_02f_680b

    ldh [rDIV], a
    ld de, $5555
    nop
    ld e, a
    ld e, a
    ld e, e
    cpl
    sub a
    ld c, b
    daa

Jump_02f_6802:
    db $10
    ld d, l
    ld d, l
    nop
    ld a, [$dafa]

Call_02f_6809:
    db $f4
    jp hl


jr_02f_680b:
    ld [de], a
    db $e4
    ld [$a000], sp
    ld b, d
    nop
    rst $38
    ld a, a
    add b
    ld h, b
    sbc a
    ld b, e
    cp h
    cp l
    cp l
    ld e, a
    and b
    ld d, d
    xor l
    nop
    nop
    nop
    rst $38
    ld e, l
    and d
    ld d, e
    xor h
    ld l, l
    sub d
    ld e, d
    and l
    ld l, e
    sub h
    dec d
    ld [$8976], a
    ld b, b
    ld d, h
    rst $38
    jp Jump_02f_7ee7


    ld a, [hl]
    cp l
    inc a
    db $db
    jr jr_02f_6879

    ld h, [hl]
    db $db
    rst $20
    ld d, l
    ld d, b
    rst $38
    ccf
    ccf
    ccf
    rra
    rra
    jr nz, jr_02f_68a9

    ldh [$bf], a
    ret nz

    push af
    nop
    rst $38
    ld a, a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    call nz, $e23b
    dec e
    xor d
    add b
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    push hl
    cp $02
    rst $38
    ld bc, $55ff
    rla
    rst $38
    nop
    nop
    nop
    ld [$f708], sp
    nop
    nop
    xor b
    xor d
    ld bc, $ffff
    rst $38

jr_02f_6879:
    add hl, de
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    adc b
    nop
    ld b, c
    ccf
    and c
    rra
    sbc a
    ld de, $09ef
    rst $30
    rlca
    ei
    inc bc
    db $fd
    rst $38
    rst $38
    ld d, l
    ld d, l
    rst $38
    ret nz

    ldh [rSVBK], a
    jr c, jr_02f_68b4

    ld c, $07
    inc bc
    sbc c
    ld c, b
    jp $bd81


    rst $38
    cp l
    cp l
    sbc c
    rst $20
    rst $38
    rst $38
    rst $38
    ret nz

jr_02f_68a9:
    inc bc
    rst $38
    push bc
    cp $9a
    db $e4
    cp d
    call nz, $c4ba
    sbc d

jr_02f_68b4:
    db $e4
    push bc
    cp $55
    ld d, l
    nop
    rst $38
    add b
    cp a
    and b
    and h
    xor b
    and b
    and b
    push de
    ld d, a
    nop
    ld a, [hl]
    ld a, d
    ld e, [hl]
    ld a, [hl]
    db $76
    ld a, [hl]
    xor d
    xor d
    xor a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld d, a
    and b
    add b
    xor a
    and b
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld d, l
    call c, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    nop
    ld bc, $7131
    ld h, e
    ld b, $0c
    ld a, [de]
    ldh a, [rHDMA5]
    ld d, l
    nop
    ldh a, [rNR30]
    inc c
    ld b, $63
    ld [hl], c
    ld sp, $a001
    nop
    inc a
    ld [bc], a
    ld [bc], a
    dec h
    add d
    ld b, $43
    ld l, $43
    ld e, e
    daa
    db $e3
    rra
    dec de
    rlca
    ld h, b
    add b
    nop
    db $10
    ld [$0f20], sp
    sub b
    ld [$14f8], sp
    ldh [$d3], a
    ldh [$d1], a
    ldh [$d5], a
    ld d, l
    nop
    ccf
    ld h, a
    ld e, a
    ld a, [hl]
    ld a, h
    ld a, c
    ld [hl-], a
    push de
    ld d, l
    nop
    ld a, h
    ld c, [hl]
    ld a, [hl]
    ld e, $ce
    ldh [$60], a
    ldh [rP1], a
    nop
    ccf
    ld bc, $137e
    ld l, h
    ld b, $79
    inc c
    ld [hl], e
    jr jr_02f_69ac

    jr nc, jr_02f_6996

    nop
    nop
    nop
    rst $38
    ld [hl], h
    adc e
    ld l, c
    sub [hl]
    ld d, d
    xor l
    dec h
    jp c, $b44b

    ld d, $e9
    dec l
    jp nc, $6902

    rst $38
    nop
    nop
    sbc c
    nop
    cp $01
    sub e
    rst $28
    ld h, e
    ld [hl], $1c
    ld [de], a
    xor b
    ccf
    di
    rrca
    rst $08
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    jr z, jr_02f_697f

    ccf
    ld e, [hl]
    dec a
    ld e, $0b
    ld a, a
    add hl, bc
    ld [hl], a

jr_02f_697f:
    dec de
    ld a, $0f
    inc c
    ld a, [hl]
    add hl, de
    ld d, b
    ld [$afdf], sp
    cp [hl]
    rst $30
    ld a, a
    ei
    rst $20
    rst $38
    rst $20
    cp [hl]
    rst $30
    ld a, a
    ld e, a
    rst $28
    ret nc

jr_02f_6996:
    ld [bc], a
    nop
    sbc c
    cp $01
    ld a, a
    sub e
    db $ec
    rst $38
    inc sp
    call z, $23dc
    rst $38
    dec b
    inc b
    dec c
    ld d, h
    dec sp
    inc [hl]
    dec de
    ld a, [hl-]

jr_02f_69ac:
    ld a, d
    db $76
    add hl, de
    inc a
    dec bc
    ld a, [hl-]
    ld l, d
    dec e
    inc b
    ld [$3d04], sp
    ld b, $19
    ld c, $8b
    ld [c], a
    dec b
    or b
    ld b, e
    ld c, b
    or c
    ld hl, sp+$02
    db $fc
    ret nz

    nop
    nop
    ld l, c
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, [hl-]
    ld a, l
    ld e, l
    ccf
    ld l, $1f
    scf
    rrca
    ld l, e
    rra
    ld d, l
    ld d, l
    nop
    add b
    adc h
    adc [hl]
    add $60
    jr nc, jr_02f_6a38

    rrca
    ld d, l
    ld d, l
    nop
    rrca
    ld e, b
    jr nc, @+$62

    add $8e
    adc h
    add b
    ld d, b
    nop
    rlca
    dec bc
    adc c
    call nz, Call_02f_6809
    db $10
    ld c, b
    jr nc, jr_02f_6a2c

    ld c, b
    jp Jump_02f_4304


    nop
    ld bc, $8460
    pop de
    ldh [$89], a
    ldh a, [$f2]
    adc h
    ld c, b
    ld d, b
    ld b, b
    cp c
    ld b, b
    or b
    ld b, b
    ld d, l
    ld d, a
    nop
    ld [bc], a
    dec sp
    ld c, c
    ld e, h
    ld a, [hl]
    ld a, [hl]
    inc a
    ld d, l
    ld d, a
    nop
    and $ca
    sub [hl]
    ld l, $7e
    ld a, [hl]
    inc a
    ld d, l
    ld d, l
    nop
    rst $38
    add b
    cp a
    and b
    and h
    xor b
    and b
    and b

jr_02f_6a2c:
    nop
    ld a, [bc]
    and b
    rst $28
    db $10
    ret c

    daa
    or a
    ld c, b
    ld l, b
    sub a
    ret nc

jr_02f_6a38:
    cpl
    and h
    ld e, e
    ld e, a
    ld e, a
    ld d, b
    ld e, l
    rst $38
    dec sp
    call c, $bc7f
    cp $67
    jp $ddf7


    ld h, c
    ld d, b
    rst $38
    cp a
    ccf
    cp a
    ld a, a
    rra
    rra
    jr nz, jr_02f_6ab3

    ldh [$bf], a
    ret nz

    push af
    nop
    rst $38
    ld a, a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    pop bc
    ccf
    ldh [$1f], a
    xor d
    add b
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    push hl
    cp $42
    cp a
    pop hl
    sbc a
    ld d, b
    ld e, l
    rst $38
    inc sp
    call z, $cc33
    call z, $0033
    inc sp
    call z, $a0a0
    and [hl]
    rst JumpTable
    rst JumpTable
    ld d, e
    rst $28
    ld d, e
    rst $28
    rst JumpTable
    rst JumpTable
    ld d, e
    rst $28
    ld d, e
    rst $28
    nop
    rla
    rst $38
    ld d, a
    ccf
    xor a
    rra
    ld b, e
    sbc a
    add a
    rst $28
    inc hl
    rst $30
    or e
    db $fd
    ld d, b
    nop
    rst $38
    call nz, $f3f8
    db $fc
    cp h
    ei
    cp h
    rst JumpTable
    cp a
    rst JumpTable
    ld d, a
    rst $28
    ld d, e
    rst $28
    sbc c
    ld c, b
    jp $bd81


    rst $38

jr_02f_6ab3:
    cp l
    cp l
    sbc c
    rst $20
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    rst $38
    push bc
    cp $9a
    db $e4
    cp d
    call nz, $c4ba
    sbc d
    db $e4
    push bc
    cp $55
    ld d, l
    nop
    add hl, bc
    inc de
    ld h, $4d
    sbc e
    ld [hl], $6f
    rst JumpTable
    ld d, l
    ld d, l
    nop
    sub b
    ret z

    ld h, h
    or d
    reti


    db $ec
    or $fb
    nop
    nop
    adc c
    nop
    ld d, b
    adc a
    ld l, a
    sub b
    dec e
    ldh [$9b], a
    ld h, b
    rrca
    jr nc, @+$48

    add hl, sp
    ret c

    daa
    ld bc, $f040
    sub e
    inc c
    db $e4
    jr jr_02f_6b45

    or b
    ld [bc], a
    add hl, bc
    ld [hl], c
    adc [hl]
    db $76
    adc b
    inc sp
    ret z

    ld d, l
    ld d, l
    nop
    db $10
    daa
    ld c, b
    sub a
    cpl
    ld e, e
    ld e, a
    ld e, a
    ld d, l
    ld d, l
    nop
    ld [$12e4], sp
    jp hl


    db $f4
    jp c, $fafa

    ldh [rP1], a
    nop
    ccf
    ld bc, $137e
    ld l, h
    ld b, $79
    inc c
    ld [hl], e
    jr @+$69

    jr nc, @+$51

    nop
    nop
    nop
    rst $38
    ld [hl], h
    adc e
    ld l, c
    sub [hl]
    ld d, d
    xor l
    dec h
    jp c, $b44b

    ld d, $e9
    dec l
    jp nc, $00d4

    nop
    add c
    jp $81ff


    rst $38
    jp $ffe3


jr_02f_6b45:
    scf
    cp $1e
    db $fd
    ld d, d
    xor d
    ccf
    rst JumpTable
    rst JumpTable
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    ld d, b
    rlca
    ld a, [hl]
    dec e
    ccf
    ld c, $1b
    add hl, de

jr_02f_6b5e:
    dec de
    ld e, $3c
    rrca
    ld a, h
    rra
    add b
    ld [bc], a
    ld l, a
    sbc a
    sbc $3f
    or [hl]
    ld a, a
    db $e3
    rst $38
    di
    rst $28
    ld a, $f7
    ld e, [hl]
    cp a
    sbc a
    call nc, $002a
    add c
    jp $817e


    inc a
    jp $ffff


    rst $38
    ld a, [bc]
    and b
    jr jr_02f_6be5

    rra
    jr nc, jr_02f_6b97

    rlca
    rlca
    rlca
    rlca
    jr nc, @+$11

    ld h, b
    rra
    ld d, b
    ld d, b
    ld bc, $0606
    inc b
    inc bc

jr_02f_6b97:
    inc b
    inc bc
    ld a, [c]
    ld hl, sp+$04
    ld hl, sp+$02
    db $fc
    ret nc

    nop
    nop
    jr nc, jr_02f_6bec

    jr nc, jr_02f_6c05

    jr c, @+$2e

    rra
    ld d, $0f
    rla
    rrca
    inc sp
    rrca
    ld d, l
    ld d, l
    nop
    db $db
    ld l, a
    scf
    sbc e
    ld c, l
    ld h, $13
    add hl, bc
    ld d, l
    ld d, l
    nop
    ei
    or [hl]
    db $ec
    reti


    or d
    ld h, h
    ret z

    sub b
    ld b, b
    ld [$dc23], sp
    ld c, [hl]
    ld hl, $21d6
    dec c
    ld a, [c]
    ld d, c
    ld c, $30
    rrca
    jr jr_02f_6b5e

    ld [hl], b
    nop
    nop
    inc bc
    ld hl, sp+$66
    sbc b
    ld a, [c]
    inc c
    pop de
    ld c, $e0
    inc de
    inc b
    pop hl
    ret z

jr_02f_6be5:
    ld bc, $0091
    ld d, l
    ld d, l
    nop
    ld e, a

jr_02f_6bec:
    ld e, a
    ld e, e
    cpl
    sub a
    ld c, b
    daa
    db $10
    ld d, l
    ld d, l
    nop
    ld a, [$dafa]
    db $f4
    jp hl


    ld [de], a
    db $e4
    ld [$a000], sp
    ld b, d
    nop
    rst $38
    ld a, a
    add b

jr_02f_6c05:
    ld h, b
    sbc a
    ld b, e
    cp h
    cp l
    cp l
    ld e, a
    and b
    ld d, d
    xor l
    nop
    ld a, [bc]
    and b
    rst $28
    db $10
    ret c

    daa
    or a
    ld c, b
    ld l, b
    sub a
    ret nc

    cpl
    and h
    ld e, e
    ld e, a
    ld e, a
    nop
    dec e
    rst $38
    ld e, $f9
    db $db
    inc a
    cp l
    ld a, [hl]
    db $76
    rst $28
    db $e3
    rst JumpTable
    rst $20
    sbc c
    ld h, c
    ld d, b
    rst $38
    cp a
    ccf
    cp a
    ld a, a
    rra
    rra
    jr nz, jr_02f_6c99

    ldh [$bf], a
    ret nz

    rst $38
    ret nc

    rst $38
    rra
    ret nz

    ccf
    ldh [$1f], a
    xor d
    add b
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    push hl
    cp $42
    cp a
    pop hl
    sbc a
    ld hl, $ff5d
    rst $00
    jr c, jr_02f_6c59

jr_02f_6c59:
    inc a
    jp RST_00


    inc sp
    call z, $0550
    ccf
    add $c6
    db $e3
    rra
    ld h, e
    sbc a
    ld h, [hl]
    sbc a
    ld h, [hl]
    sbc a
    jp $00c3


    rla
    rst $38
    ld d, a
    ccf
    xor a
    rra
    ld b, e
    sbc a
    add a
    rst $28
    inc hl
    rst $30
    or e
    db $fd
    ld bc, $ff20
    rst $00
    ld hl, sp-$11
    ldh a, [$7c]
    di
    jr c, jr_02f_6ce5

    cp a
    rra
    ld h, a
    sbc a
    ld l, a
    sbc a
    ret nz

    nop
    rst $38
    add b
    ret nz

Call_02f_6c93:
    cp h
    sbc b
    cp $bc
    rst $30
    or [hl]

jr_02f_6c99:
    cp a
    sbc $df
    rst $20
    xor b
    ret c

    ret nz

    nop
    rst $38
    ld bc, $3d03
    add hl, de
    ld a, a
    dec a
    rst $28
    ld l, l
    db $fd
    ld a, e
    ei

jr_02f_6cad:
    rst $20
    dec d
    dec de
    dec b
    ld d, b
    add b
    ccf
    ccf
    ld b, b
    ld b, b
    adc a
    sbc a
    sbc a
    adc a

jr_02f_6cbb:
    pop bc
    ret nz

    ld [hl], a
    ld l, a
    ret nz

    nop
    ldh [$d0], a
    jr nc, jr_02f_6cad

    jr jr_02f_6cbb

    inc c
    ld a, [$fa06]
    rlca
    ld sp, hl
    rlca
    reti


    rst $20
    xor d
    and b
    add sp, -$79
    add a
    add a
    add a
    add a
    add a
    xor b
    rst $00
    ret z

    rst $20
    ld d, l
    ld b, c
    rst $30
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_02f_6ce5:
    dec bc
    push af
    dec c
    di
    dec bc
    add hl, bc
    ld d, l
    cp a
    ccf
    rst $38
    ld e, a
    ldh [$df], a
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$09], a
    ld d, l
    db $fd
    db $fc
    rst $38
    ld a, [$fb07]
    rrca
    rlca
    rlca
    rlca
    rlca
    dec d
    ld d, h
    cp a
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    sbc a
    add b
    push de
    ld d, [hl]
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $5505
    cp a
    rst $38
    rst $38
    sbc a
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld d, l
    ld d, l
    nop
    rst $38
    add b
    cp a
    and b
    and h
    xor b
    and b
    and b
    ld e, l
    ld e, l
    nop
    inc b
    jr nz, jr_02f_6d3b

    db $10
    ld b, h

jr_02f_6d3b:
    ld bc, $57d5
    nop
    ld a, [hl]
    ld a, d
    ld e, [hl]
    ld a, [hl]
    db $76
    ld a, [hl]
    sbc c
    ld c, b
    jp $bd81


    rst $38
    cp l
    cp l
    sbc c
    rst $20
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    rst $38
    push bc
    cp $9a
    db $e4
    cp d
    call nz, $c4ba
    sbc d
    db $e4
    push bc
    cp $01
    rrca
    rst $38
    ret nc

    sub a
    ei
    sub a
    xor a
    rst JumpTable
    sub a
    sbc a
    di
    set 7, h
    ld bc, $ff0f
    dec bc
    jp hl


    rst JumpTable
    jp hl


    push af
    ei
    jp hl


    ld sp, hl
    rst $08
    db $d3
    ccf
    nop
    ld d, b
    db $fc
    ld a, b
    ld h, b
    ld [hl], e
    ld h, h
    db $e3
    rst $28
    add a
    sbc h
    db $dd
    db $fd
    ld a, h
    ld a, h
    rlca
    rlca
    ld bc, $3f50
    ld sp, $f91f
    rrca
    push bc
    rst $38
    db $e3
    di
    rst $38
    cp $3e
    ldh [$e0], a
    ld b, b
    add b
    or b
    and e
    rst JumpTable
    sbc a
    rst $20
    add b
    ldh [$8f], a
    rst $08
    ret nc

    rst $28
    ld a, a
    rst $38
    ccf
    rst $38
    add c
    ld d, b
    rst $30
    dec c
    db $fd
    ei
    ld sp, hl
    rlca
    add hl, bc
    add hl, bc
    dec bc
    cp $ff
    db $fc
    rst $38
    ld b, b
    add hl, bc
    cp a
    and b
    rst JumpTable
    sbc a
    ldh [$80], a
    ldh [$8f], a
    and b
    rst $08
    ret nc

    rst $28
    rst $38
    rst JumpTable
    jr nz, jr_02f_6ddd

    rst $38
    rlca
    db $fd
    ld sp, hl
    dec c
    inc bc
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    dec bc
    rst $30
    db $fd

jr_02f_6ddd:
    push de
    ld d, l
    rst $38
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    nop
    rst $38
    pop bc
    add c
    add b
    adc d
    add b
    add b
    pop bc
    ld d, l
    ld d, l
    nop
    rst $38
    pop bc
    add c
    add b
    add d
    sub b
    add c
    ret nz

    and b
    nop
    inc a
    ld [bc], a
    ld [bc], a
    dec h
    add d
    ld b, $43
    ld l, $43
    ld e, e
    daa
    db $e3
    rra
    dec de

jr_02f_6e10:
    rlca
    ld h, b
    add b
    nop
    db $10
    ld [$0f20], sp
    sub b
    ld [$14f8], sp
    ldh [$d3], a
    ldh [$d1], a
    ldh [rHDMA5], a
    ld d, l
    nop
    db $10
    daa
    ld c, b
    sub a
    cpl
    ld e, e
    ld e, a
    ld e, a
    ld d, l
    ld d, l
    nop
    ld [$12e4], sp
    jp hl


    db $f4
    jp c, $fafa

    nop
    nop
    nop
    rst $38
    ld a, [hl]
    add c
    ld c, l
    add d
    ld e, e
    add h
    ld [hl], a
    adc b
    ld l, [hl]
    sub c
    ld e, h
    and e
    jr c, jr_02f_6e10

    nop
    and b
    ld b, d
    nop
    rst $38
    ld a, a
    add b
    ld h, c
    sbc [hl]
    ld b, e
    cp h
    cp l
    cp l
    ld e, a
    and b
    ld d, d
    xor l
    ld [bc], a
    ld d, b
    rst JumpTable
    ld bc, $7f00
    nop
    ld b, c
    ld a, $42
    ld h, d
    ld h, d
    ld h, a
    sbc $25
    cp $52
    xor d
    ccf
    rst JumpTable

jr_02f_6e6e:
    rst JumpTable
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    ld b, b
    cpl
    di
    inc c
    ld e, [hl]
    ccf
    ld d, e
    ld d, b
    ld d, b
    ld c, a
    ld hl, $1f7e
    db $10
    rrca
    ld b, h
    dec b
    rst $38
    rrca
    cp [hl]
    ld a, a
    ld a, [c]
    rst $20
    rst JumpTable
    rst $30
    rst $28
    ld a, $f3
    rra
    rlca
    ld d, l
    sbc b
    nop
    ld bc, $7f7f
    di
    rst $30
    rst $30
    rst $38
    inc a
    jp $0550


    dec bc
    db $f4
    ld [hl], h
    ld h, l
    ld a, [bc]
    ld h, c
    ld [bc], a
    ld [hl], l
    ld a, [bc]
    ld [hl], l
    ld a, [bc]
    ld [hl], h
    inc d
    ld [bc], a
    ld [$3504], sp
    ld c, d
    or h
    ld c, e
    db $e4
    dec bc
    inc bc
    ld [bc], a
    pop af
    ld hl, sp+$01
    ld hl, sp+$02
    db $fc
    ld d, b
    nop
    nop
    ld bc, $4f7f
    jr nc, @+$59

    jr c, jr_02f_6f35

    dec e
    ld a, [hl]
    rrca
    ld e, a
    daa
    rla
    dec bc
    ld d, l
    ld d, l
    nop
    rst $38
    inc e
    add hl, de
    ld [$0828], sp
    ld [$551c], sp
    ld d, l
    nop
    rst $38
    inc e
    jr jr_02f_6eec

    jr z, jr_02f_6e6e

    jr jr_02f_6ef4

    ld d, b
    nop
    rlca
    dec bc

jr_02f_6eec:
    adc c
    call nz, Call_02f_6809
    db $10
    ld c, b
    jr nc, jr_02f_6f28

jr_02f_6ef4:
    ld c, b
    jp Jump_02f_4304


    nop
    ld bc, $8460
    pop de
    ldh [$89], a
    ldh a, [$f2]
    adc h
    ld c, b
    ld d, b
    ld b, b
    cp c
    ld b, b
    or b
    ld b, b
    ld d, l
    ld d, l
    nop
    rst JumpTable
    ld e, a
    ld e, e
    cpl
    sub a
    ld c, b
    daa
    db $10
    ld d, l
    ld d, l
    nop
    ld a, [$dafa]
    db $f4
    jp hl


    ld [de], a
    db $e4
    ld [$0000], sp
    nop
    rst $38
    ld [hl], h
    adc e
    ld l, c
    sub [hl]
    ld d, d

jr_02f_6f28:
    xor l
    dec h
    jp c, $b44b

    ld d, $e9
    dec l
    jp nc, Jump_02f_5555

    nop
    db $10

jr_02f_6f35:
    daa
    ld c, b
    sub a
    cpl
    ld e, e
    ld e, a
    ld e, a
    db $10
    dec c
    rst $38
    ld e, $fd
    inc e
    ld a, $f7
    db $76
    rst $28
    ld h, e
    rst JumpTable
    ei
    rst JumpTable
    reti


    ld d, l
    ld d, b
    rst $38
    ccf
    ccf
    ccf
    rra
    rra
    jr nz, jr_02f_6fb4

    ldh [$bf], a
    ret nz

    rst $38
    ret nc

    rst $38
    rra
    ret nz

    ccf
    ldh [$1f], a
    xor d
    add b
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    push hl
    cp $42
    cp a
    pop hl
    sbc a
    ld b, l
    ld e, l
    rst $38
    nop
    ld [$00f7], sp
    nop
    ld c, c
    or [hl]
    call z, Call_02f_5554
    rst $38
    ld a, [bc]
    ld b, $07
    ld c, e
    cp a
    ld b, $06
    dec bc
    rlca
    nop
    rla
    rst $38
    ld d, a
    ccf
    xor a
    rra
    ld b, e
    sbc a
    add a
    rst $28
    inc hl
    rst $30
    or e
    db $fd
    ld d, l
    ld d, l
    rst $38
    ret nz

    ldh [rSVBK], a
    ld a, [hl-]
    dec e
    rra
    rlca
    cpl
    sbc c
    ld c, b
    jp $bd81


    rst $38
    cp l
    cp l
    sbc c
    rst $20

Call_02f_6fa9:
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    rst $38
    push bc
    cp $9a
    db $e4
    cp d

jr_02f_6fb4:
    call nz, $c4ba
    sbc d
    db $e4
    push bc
    cp $08
    ld [bc], a
    ld [hl], e
    nop
    rst $38
    ld a, e
    add h
    adc h
    ld h, a
    sbc b
    ld b, [hl]
    cp c
    ld e, $e1
    ld a, l
    add d
    adc h
    push de
    ld d, a
    nop
    ld a, [hl]
    ld a, d
    ld e, [hl]
    ld a, [hl]

jr_02f_6fd3:
    db $76
    ld a, [hl]
    ld bc, $f055
    rra
    rra
    cpl
    jr nc, jr_02f_704c

    ld [hl], b
    xor a
    xor [hl]
    xor h
    xor b
    xor a
    dec b
    ld c, l
    rst $38
    xor a
    ldh a, [$af]
    ldh a, [$a0]
    cp a
    sbc a
    rst JumpTable
    ldh [$7f], a
    ret nz

    nop
    rst $38
    add b
    ret nz

    cp h
    sbc b
    cp $bc
    rst $30
    or [hl]
    cp a
    sbc $df
    rst $20
    xor b
    ret c

    ret nz

    nop
    rst $38
    ld bc, $3d03

jr_02f_7007:
    add hl, de
    ld a, a
    dec a
    rst $28
    ld l, l
    db $fd
    ld a, e
    ei
    rst $20
    dec d
    dec de
    ld bc, $ff0f
    ret nc

    sub a
    ei
    sub a
    xor a
    rst JumpTable
    sub a
    sbc a
    di
    set 7, h
    nop
    rst $20
    jr jr_02f_7007

    inc e
    ld [c], a
    dec e
    add $39
    nop

jr_02f_702a:
    inc c
    di
    add hl, bc
    or $3b
    call nz, $8976
    jr nz, jr_02f_6fd3

    ld h, b
    ld hl, $708f
    ld b, a
    cp b
    inc sp
    nop
    call z, Call_02f_7689
    call nz, $223b
    db $dd
    ld h, [hl]
    nop
    sbc c
    ld [c], a
    sbc l
    pop bc
    cp a
    add c
    rst $38

jr_02f_704c:
    ld b, d
    ld bc, $25ff
    rst $38
    dec de
    db $fc
    ld d, l
    cp a
    cp a
    nop
    ld b, e
    cp h
    jr nc, jr_02f_702a

    adc b
    rst $30
    ld b, b
    rst $38
    nop
    ld [hl-], a
    db $fd
    pop bc
    ld a, $a0
    ld b, a
    ld b, d
    add c
    nop
    nop
    add e
    inc c
    add e
    db $10
    adc a
    ld b, b
    cp a
    nop
    add b
    ld a, [hl]
    rst $38
    nop
    jp $853c


    ld b, d
    nop
    ld bc, $6282
    add c
    inc [hl]
    jp $ff00


    ld hl, $3e01
    cpl
    add $39
    add h
    ld a, e
    ld h, c
    ld [bc], a
    db $fc
    inc bc
    jp nz, $813d

    ld a, [hl]
    inc sp
    ld [hl], h
    nop
    adc e
    ld l, c
    sub [hl]
    ld d, d
    xor l
    dec h
    jp c, $004b

    or h
    ld d, $e9
    dec l
    jp nc, $0001

    ld a, a
    ld bc, $4100
    ld a, $df
    ld b, d
    ld h, d
    rst JumpTable
    ld hl, $6702
    sbc $25
    cp $df
    ccf
    ld hl, $109f
    ld a, a
    ccf
    rst $38
    pop hl
    di
    inc c
    ld e, [hl]
    ccf
    db $10
    ld d, e
    cpl
    ld d, b
    ld b, c
    ld c, a
    ld hl, $1f7e
    nop
    db $10
    rrca
    rrca
    rst $38
    cp [hl]
    ld a, a
    ld a, [c]
    rst $38
    nop
    rst $20
    rst JumpTable
    rst $30
    rst $28
    ld a, $f3
    rra
    rst $38
    ld [bc], a
    rlca
    rst $38
    nop
    nop
    jp $2400


    ld a, [hl]
    jr nz, jr_02f_70e8

jr_02f_70e8:
    add c
    ld b, l
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    ld l, [hl]
    ld bc, $7501
    ld [bc], a
    dec [hl]
    ld [bc], a
    ld [hl], $01
    ld hl, $25f0
    add hl, hl
    dec l
    daa
    db $76
    ld bc, $03e4
    nop
    inc b
    inc bc
    ld a, [c]
    ld bc, $01f8
    inc b
    ld hl, sp+$00
    ld [bc], a
    db $fc
    nop
    nop
    jr nc, jr_02f_7111

jr_02f_7111:
    ld c, b
    jr nc, jr_02f_7114

jr_02f_7114:
    ld e, a
    jr c, jr_02f_7143

    rra
    ld d, $0f
    rla
    rrca
    ld [$0f33], sp
    sub b
    ld l, a
    ld hl, $738c
    add [hl]
    nop
    ld a, c
    jp Jump_02f_603c


    sbc a
    cp b
    ld b, a
    call z, $3300
    ld [de], a
    db $ed
    ld [hl-], a
    call $da25
    ld c, e
    inc b
    or h
    sub e
    ld l, h
    scf
    ret z

    ld a, [hl-]
    rst JumpTable
    jr nz, jr_02f_7141

jr_02f_7141:
    sbc b
    ld a, a

jr_02f_7143:
    sub l
    ld a, a
    sub b
    ld a, a
    sbc d
    ld a, a
    nop
    cp b

jr_02f_714b:
    ld a, a
    ld b, a
    rst $38
    add hl, sp
    rst $00
    inc e
    db $e3
    nop
    ld h, d
    db $fd
    ld [hl+], a
    db $fd
    or h
    ei
    dec hl
    db $fc
    nop
    ld b, e
    db $fc
    sub l
    ld [$926d], a
    sbc a
    ldh [rP1], a
    ldh a, [$08]
    add e
    ld a, h
    nop
    adc a
    nop
    add a
    inc c
    ld b, l
    add d
    ld a, c
    add [hl]
    add hl, hl
    ld hl, $304f
    nop
    jp $013c


    ld [c], a
    inc b
    jp $8304


    nop
    inc c
    add e
    jr c, jr_02f_714b

    add c
    ld a, [hl]
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ld h, c
    sbc [hl]
    ld b, b
    cp a
    ld c, h
    or e
    ld [bc], a
    ld c, l
    or d
    ld b, c
    cp [hl]
    ld h, $d8
    cpl
    ld a, e
    nop
    add h
    ld [hl], e
    adc h
    ld h, a
    sbc b
    ld b, [hl]
    cp c
    ld e, $10
    pop hl
    ld a, l
    add d
    add hl, hl
    ld e, $fd
    inc e
    rst $38
    nop
    ld a, $f7
    db $76
    rst $28
    ld h, e

jr_02f_71b2:
    rst JumpTable
    ei
    rst JumpTable
    dec b
    rst $38
    rst $38
    reti


    rst $38
    ccf
    add c
    rra
    ld b, c
    inc bc
    jr nz, @+$01

jr_02f_71c1:
    ld e, a
    ldh [$bf], a
    ret nz

    inc sp
    ldh [$81], a
    ld sp, $3fc0
    ldh [$1f], a
    ei
    db $fc
    pop hl
    nop
    push hl
    cp $42
    cp a
    pop hl
    sbc a
    add c
    ld a, [hl]
    ld hl, $ff00
    ld h, c
    call z, $33ff
    rst $38
    jr nz, @-$7b

    dec h
    add [hl]
    ld a, a
    ld b, $ff
    dec bc
    ld b, c
    dec h
    add b
    ld h, a
    adc e
    ld a, a
    ld d, a
    ccf
    xor a
    rra
    ld b, e
    nop
    sbc a
    add a
    rst $28
    inc hl
    rst $30
    or e
    rst $38
    db $fd
    ld b, b
    rst $38
    jr nz, jr_02f_71c1

    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    inc b
    jr c, @+$01

    rra
    rst $38
    rrca
    add c
    jp $0c81


    cp l
    jp $ffc3


    inc hl
    ld hl, $e799
    ret nz

    daa
    ld h, b
    push bc
    cp $9a
    db $e4
    cp d
    call nz, $21f1
    dec h
    add hl, hl
    ld c, [hl]
    nop
    add c
    ld a, [hl]
    ld bc, $c00a
    dec l
    jr nc, jr_02f_71b2

    rst $38
    add l
    rst $38
    adc c
    rst $38
    inc b
    sub c
    rst $38
    and c
    rst $38
    pop bc
    ld e, [hl]
    xor a
    add b
    add h
    ld bc, $a010
    add b
    cp a
    add b
    ld b, b
    ret nz

    add b
    daa
    rst $38
    ret nz

    ld e, a
    rst $38
    nop
    and c
    jr nz, @-$7b

    ld b, b
    rst $38
    ld [bc], a
    add b
    ld hl, sp+$3f
    nop
    ld a, [hl]
    ld bc, $02fc
    inc b
    inc b
    ret nz

    inc a
    add d
    ld b, h
    ld de, $6082
    nop
    add d
    ld de, $c044
    inc a
    ld hl, sp+$04
    ld hl, sp+$04
    db $fc
    ld [bc], a
    ld a, [hl]
    ld bc, $003f
    and b
    nop
    inc a
    ld [bc], a
    ld [bc], a
    dec h
    add d
    ld b, $43
    ld l, $43
    ld e, e
    daa
    db $e3
    rra
    dec de
    rlca
    ld h, b
    add b
    nop
    db $10
    ld [$0f20], sp
    sub b
    ld [$14f8], sp
    ldh [$d3], a
    ldh [$d1], a
    ldh [rP1], a
    nop
    rst $38
    nop
    ret nz

    ccf
    sbc b
    ld h, a
    and b
    ld e, a
    add c
    ld a, [hl]
    add e
    ld a, h
    add [hl]
    ld a, c
    call $0032
    nop
    rst $38
    nop
    add e
    ld a, h
    or c
    ld c, [hl]
    add c
    ld a, [hl]
    pop hl
    ld e, $31
    adc $1f
    ldh [$9f], a
    ld h, b
    ldh [rP1], a
    nop
    ccf
    ld bc, $137e
    ld l, h
    ld b, $79
    inc c
    ld [hl], e
    jr @+$69

    jr nc, jr_02f_7318

    nop
    nop
    nop
    rst $38
    ld [hl], h
    adc e
    ld l, c
    sub [hl]
    ld d, d
    xor l
    dec h
    jp c, $b44b

    ld d, $e9
    dec l
    jp nc, $00d8

    nop
    sbc c
    rst $38
    add c
    rst $20
    db $db
    jp $c7fb


    rst JumpTable
    and $76
    rst $28
    ld d, d
    xor d
    ccf
    rst JumpTable
    rst JumpTable
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    dec b
    ccf
    ld e, [hl]
    dec a
    rrca
    inc bc
    scf
    ld c, [hl]
    ld hl, $204f
    dec b
    inc sp
    rrca
    ld e, [hl]
    ld d, l
    dec b
    rst $38
    adc a
    sbc a
    or c
    rst $28
    rst $30
    rst $28
    cp c
    rst $30
    sbc a
    add a
    jp c, TimerOverflowInterrupt

    sbc c
    rst $38

jr_02f_7318:
    ld h, a
    sbc b
    rst $38
    cp a
    ld b, b
    ld e, b
    and a
    ld d, h
    db $10
    ld sp, $0646
    ld b, $4f
    jr nz, @+$51

    jr nz, jr_02f_7330

    dec b
    ld [hl-], a
    ld c, [hl]
    ld hl, $0051

jr_02f_7330:
    ld de, $2e2e
    ld l, h
    inc de
    and $00
    db $e3
    ldh a, [rSB]
    xor b
    ld d, b
    nop
    db $fc
    ret nz

    nop
    nop
    ld l, a
    jr nc, jr_02f_73b8

    ld a, e
    ld b, b
    ccf
    ld l, e
    inc e
    ld b, l
    ld a, $4a
    scf
    ld e, l
    inc hl
    ld bc, $2040
    db $fc
    nop
    ld a, [hl]
    add b
    ccf
    ld b, b
    rra
    sbc a
    inc bc
    inc a
    ld b, c
    ld [hl+], a
    adc b
    ld b, c
    ld h, b
    nop
    ld b, c
    adc b
    ld [hl+], a
    inc bc
    inc a
    sbc a
    jr nz, @+$21

    jr nz, @+$41

    ld b, b
    ld a, [hl]
    add b
    db $fc
    nop
    ld d, b
    nop
    rlca
    dec bc
    adc c
    call nz, Call_02f_6809
    db $10
    ld c, b
    jr nc, @+$36

    ld c, b
    jp Jump_02f_4304


    nop
    ld bc, $8460
    pop de
    ldh [$89], a
    ldh a, [$f2]
    adc h
    ld c, b
    ld d, b
    ld b, b
    cp c
    ld b, b
    or b
    ld b, b
    nop
    and b
    add c
    db $fd
    ld [bc], a
    call nz, $b63b
    ld c, c
    and e
    ld e, h
    ld a, [hl]
    ld a, [hl]
    jp $ff3c


    nop
    nop
    and b
    add c
    add hl, de
    and $35
    jp z, $9669

    pop de
    ld l, $7e
    ld a, [hl]
    jp $ff3c


    nop
    ld [$7302], sp
    nop

jr_02f_73b8:
    rst $38
    ld a, e
    add h
    adc h
    ld h, a
    sbc b
    ld b, [hl]
    cp c
    ld e, $e1
    ld a, l
    add d
    adc h
    nop
    ld a, [bc]
    and b
    rst $28
    db $10
    ret c

    daa
    or a
    ld c, b
    ld l, b
    sub a
    ret nc

    cpl
    and h
    ld e, e
    ld e, a
    ld e, a
    call nc, $ff17
    jr jr_02f_7417

    db $76
    rst $28
    ld l, e
    rst JumpTable
    db $db
    db $db
    ld h, c
    ld d, b
    rst $38
    cp a
    ccf
    cp a
    ld a, a
    rra
    rra
    jr nz, @+$61

    ldh [$bf], a
    ret nz

    rst $38
    ret nc

    rst $38
    rra
    ret nz

    ccf
    ldh [$1f], a
    xor d
    add b
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    push hl
    cp $42
    cp a
    pop hl
    sbc a
    push de
    ld e, a
    rst $38
    nop
    ld [hl+], a
    add h
    ld e, l
    ld a, [$5555]
    rst $38
    adc e
    and a
    sbc e
    adc a
    adc a
    and a
    adc a

jr_02f_7417:
    sub a
    nop
    rla
    rst $38
    ld d, a
    ccf
    xor a
    rra
    ld b, e
    sbc a
    add a
    rst $28
    inc hl
    rst $30
    or e
    db $fd
    ld d, l
    ld d, l
    rst $38
    cp $ec
    ldh a, [$ba]
    sbc l
    sbc a
    add a
    cpl
    rst $38
    ret nc

    rst $38
    db $fc
    db $e3
    db $fc
    rst $08
    ldh a, [$d5]
    nop
    rst $38
    db $fd
    ei
    and a
    ld d, a
    rst $28
    dec l
    rst JumpTable
    ld c, e
    cp a
    db $d3
    cpl
    sub b
    nop
    cp $ff
    rst $38
    cp d
    ld e, l
    xor $93
    or [hl]
    ld l, l
    db $ed
    ld a, [c]
    jp c, $fded

    sub $88
    ld [bc], a
    cp a
    ld a, a
    rst $38
    ccf
    ld a, d
    ld [c], a
    ld e, l
    db $dd
    ld [hl+], a
    di
    ld c, a
    ld e, e
    or a
    ld l, e
    ld e, l
    ld e, l
    nop
    inc b
    jr nz, jr_02f_7471

    db $10
    ld b, h

jr_02f_7471:
    ld bc, $57d5
    nop
    ld a, [hl]
    ld a, d
    ld e, [hl]
    ld a, [hl]
    db $76
    ld a, [hl]
    sbc c
    ld c, b
    jp $bd81


    rst $38
    cp l
    cp l
    sbc c
    rst $20
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    rst $38
    push bc
    cp $9a
    db $e4
    cp d
    call nz, $c4ba
    sbc d
    db $e4
    push bc
    cp $d0
    nop
    nop
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    db $76
    ld [hl], $6f
    cpl
    ld [hl], b
    jr nc, jr_02f_7507

    ld hl, $00d0
    nop
    cp $fe
    db $fc
    cp $fc
    ld b, [hl]
    ld b, h
    xor [hl]
    xor h
    sub $d4
    ld h, [hl]
    ld h, h
    nop
    rlca
    nop
    ld h, a
    daa
    ld h, l
    dec h
    ld a, h
    inc a
    ld h, e
    inc hl
    ld h, l
    dec h
    ld a, a
    ccf
    ld a, a
    ld [bc], a

jr_02f_74c8:
    jr z, jr_02f_74c8

    and [hl]
    and h
    xor $ec
    sub [hl]
    sub h
    db $fc
    ld b, $04
    db $fc
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [bc], a
    adc d
    ld bc, $00c5
    ld h, d
    add b
    or c
    ld b, b
    ld e, b
    jr nz, @-$52

    db $10
    ld d, [hl]
    adc b
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
    ld bc, $1500
    nop
    ld a, [hl+]
    call nz, $6295
    jp z, $ed31

    db $10
    db $76

jr_02f_7507:
    ld [$5fbf], sp
    cpl
    ld d, l
    ld d, h
    nop
    dec e
    ld c, $97
    set 4, l
    ld [hl-], a
    sbc c
    ld c, h
    add b
    db $10
    ld [$dfc0], sp
    ldh [$bf], a
    or a
    ret z

    or [hl]
    ret


    sbc b
    rst $20
    call z, $fff3
    ldh a, [rIE]
    nop
    ld d, l
    rst $38
    and a
    ld e, a
    ld h, a
    sbc a
    ld c, a
    cp a
    ld c, a
    cp a
    rra
    rra
    ccf
    ld a, a
    add b
    ld [hl+], a
    db $fd
    sub $da
    db $ed
    rst $08
    ld a, [c]
    cp e
    ld b, h
    ld b, a
    cp d
    ld e, [hl]
    rst $38
    db $fc
    cp $42
    nop
    ld l, e
    cp a
    ld e, e
    or a
    or a
    ld c, a
    or [hl]
    ld [hl], a
    ret


    ld e, l
    cp d
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld d, l
    ld d, l
    nop
    rst $38
    or c
    pop af
    db $e3
    add [hl]
    adc h
    sbc d

jr_02f_7562:
    ldh a, [rHDMA5]
    ld d, l
    nop
    rst $38
    adc l
    adc a
    rst $00
    ld h, c
    ld sp, $0f59
    and b
    nop
    inc a
    ld [bc], a
    ld [bc], a
    dec h
    add d
    ld b, $43
    ld l, $43
    ld e, e
    daa
    db $e3
    rra
    dec de
    rlca
    ld h, b
    add b
    nop
    db $10
    ld [$0f20], sp
    sub b
    ld [$14f8], sp
    ldh [$d3], a
    ldh [$d1], a
    ldh [$d5], a
    ld d, l
    nop
    ccf
    ld h, a
    ld e, a
    ld a, [hl]
    ld a, h
    ld a, c
    ld [hl-], a
    push de
    ld d, l
    nop
    db $fc
    and $fa
    ld a, [hl]
    ld a, $9e
    ld c, h
    ret nc

    ld bc, $3f00
    ld a, [hl]
    ld bc, $026c
    ld a, c
    inc b
    ld [hl], e
    ld [$1067], sp
    ld l, a
    nop
    nop
    nop
    rst $38
    ld [hl], h
    adc e
    ld l, c
    sub [hl]
    ld d, d
    xor l
    dec h
    jp c, $b44b

    ld d, $e9
    dec l
    jp nc, $00d0

    nop
    rst $38
    add c
    cp $a5
    jp $c3db


    ld a, [$dec7]
    rst $20
    ld [hl], $ed
    ld d, d
    xor d
    ccf
    rst JumpTable
    rst JumpTable
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_02f_7562

    ld c, a
    ld a, b
    rra
    ld a, $53
    daa
    ld c, [hl]
    ld hl, $5520
    inc hl
    ld c, [hl]
    ccf
    ld a, [hl]

jr_02f_75f0:
    ccf
    db $10
    ld bc, $0fbf
    rst $38
    ld e, a
    xor l
    ld [hl], e
    ld sp, hl
    rst $20
    ld sp, hl
    rst $20
    db $ed
    or e
    rst JumpTable
    ld a, a
    ld b, a
    sub b
    nop
    jr z, jr_02f_7606

jr_02f_7606:
    rst $10
    xor b
    ld e, a
    ld [hl], a
    xor $77
    xor $a6
    ld e, c
    nop
    rst $38
    call $80f3
    ld [$2759], sp
    ld e, h
    dec sp
    ld e, l
    ld a, [hl-]
    and c
    ld a, [hl]
    ld e, b
    daa
    cp h
    ld e, e
    ccf
    ld h, l
    dec de
    ld d, b
    nop
    rla
    add hl, bc
    jr z, jr_02f_75f0

    dec de
    xor e
    ld b, a
    inc e
    db $e3
    ld l, [hl]
    pop af
    ld h, a
    ld hl, sp+$01
    cp $00
    inc d
    ccf
    nop
    ld bc, $4852
    daa
    ld a, b
    dec e
    ld [hl-], a
    ld a, c
    ld c, $64
    ld [hl], d
    ld sp, $550f
    ld d, l
    nop
    ldh a, [$9a]
    adc h
    add [hl]
    db $e3
    pop af
    or c
    rst $38
    ld d, l
    ld d, l
    nop
    rrca
    ld e, c
    ld sp, $c761
    adc a
    adc l
    rst $38
    ld d, b
    nop
    rlca
    dec bc
    adc c
    call nz, Call_02f_6809
    db $10
    ld c, b
    jr nc, jr_02f_769c

    ld c, b
    jp Jump_02f_4304


    nop
    ld bc, $8460
    pop de
    ldh [$89], a
    ldh a, [$f2]
    adc h
    ld c, b
    ld d, b
    ld b, b
    cp c
    ld b, b
    or b
    ld b, b
    ld d, l
    ld d, a
    nop
    ld [hl-], a
    ld a, c
    ld a, h
    ld a, [hl]
    ld e, a
    ld h, a
    ccf
    ld d, l
    ld d, a

Call_02f_7689:
    nop
    ld c, h
    sbc [hl]
    ld a, $7e
    ld a, [$fce6]
    nop
    and b
    ld b, d
    nop
    rst $38
    ld a, a
    add b
    ld h, b
    sbc a
    ld b, e
    cp h

jr_02f_769c:
    cp l
    cp l
    ld e, a
    and b
    ld d, d
    xor l
    nop
    ld a, [bc]
    and b
    rst $28
    db $10
    ret c

    daa
    or a
    ld c, b
    ld l, b
    sub a
    ret nc

    cpl
    and h
    ld e, e
    ld e, a
    ld e, a
    inc b
    rlca
    rst $38
    ld a, h
    cp e
    ld a, [$3c5d]
    ld e, d
    rst $20
    ld a, a
    jp $dbe7


    jp Jump_02f_5061


    rst $38
    cp a
    ccf
    cp a
    ld a, a
    rra
    rra
    jr nz, jr_02f_772c

    ldh [$bf], a
    ret nz

    rst $38
    ret nc

    rst $38
    rra
    ret nz

    ccf
    ldh [$1f], a
    xor d
    add b
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    push hl
    cp $42
    cp a
    pop hl
    sbc a
    nop
    ld d, e
    rst $38
    pop hl
    sbc $c0
    ccf
    ld [de], a
    db $fd
    inc c
    di
    ld h, c
    ld h, [hl]
    ld l, $df
    dec b
    nop
    rst $28
    adc c
    ld a, a
    daa
    rst JumpTable
    rla
    inc de
    ld hl, $8fff
    ld a, l
    call $c1bf
    cp a
    inc d
    nop
    rra
    push bc
    ccf
    pop hl
    push hl
    dec e
    rst $28
    dec bc
    push af
    scf
    db $fd
    rrca
    pop af
    rst $38
    rst $38
    ld b, b
    ld b, b
    rst $38
    ret nz

    db $ed
    sbc $ad
    ld a, [hl]
    ld d, $f9
    add hl, bc
    ld [hl], a
    rst $28
    ld l, [hl]
    rst $30
    dec d
    rst $28
    ret nz

    nop
    rst $38
    add b

jr_02f_772c:
    ret nz

    cp h
    sbc b
    cp $bc
    rst $30
    or [hl]
    cp a
    sbc $df
    rst $20
    xor b
    ret c

    ret nz

    nop
    rst $38
    ld bc, $3d03
    add hl, de
    ld a, a
    dec a
    rst $28
    ld l, l
    db $fd
    ld a, e
    ei
    rst $20
    dec d
    dec de
    nop
    nop
    xor a
    ld e, $53
    ld sp, $6324
    db $ec
    ld b, b
    ret nz

    ld c, b
    ret c

    xor b
    adc l
    sbc b
    or c
    sbc [hl]
    nop
    nop
    db $fd
    ld a, b
    adc $84
    sbc [hl]
    ld [bc], a
    rra
    ld [c], a
    ld l, e
    ld d, $1c
    rrca
    db $eb
    dec e
    db $dd
    dec sp
    ret nz

    nop
    rst $38
    add b
    ret nz

    or b
    sub b
    ld hl, sp-$48
    db $f4
    or h
    cp $be
    cp $bc
    cp [hl]
    ret c

    ld [bc], a
    xor a
    rst $38
    adc [hl]
    ldh a, [$98]
    ldh [$bf], a
    rst $00
    adc a
    sbc a
    cp a
    ret nz

    nop
    rst $38
    add b
    ret nz

    or b
    add b
    ld hl, sp-$48
    db $fc
    cp h
    cp $be
    cp $bc
    cp [hl]
    ret c

    ld b, b
    ld [$8ff0], sp
    sbc a
    db $e3
    cp h
    rst $08
    rst $30
    sbc b
    rst $28
    or e

jr_02f_77a8:
    db $fc
    xor a
    rst $38
    ld a, a
    rst $38
    ret nc

    nop
    nop
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    db $76
    ld [hl], $6f
    cpl
    ld [hl], b
    jr nc, jr_02f_781d

    ld hl, $00d0
    nop
    cp $fe
    db $fc
    cp $fc
    ld b, [hl]
    ld b, h
    xor [hl]
    xor h
    sub $d4
    ld h, [hl]
    ld h, h
    nop
    rlca
    nop
    ld h, a
    daa
    ld h, l
    dec h
    ld a, h
    inc a
    ld h, e
    inc hl
    ld h, l
    dec h
    ld a, a
    ccf
    ld a, a
    ld [bc], a

jr_02f_77de:
    jr z, jr_02f_77de

    and [hl]
    and h
    xor $ec
    sub [hl]
    sub h
    db $fc
    ld b, $04
    db $fc
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [bc], a
    adc d
    ld bc, $00c5
    ld h, d
    add b
    or c
    ld b, b
    ld e, b
    jr nz, jr_02f_77a8

    db $10
    ld d, [hl]
    adc b
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
    ld bc, $1500
    nop
    ld a, [hl+]
    call nz, $6295
    jp z, $ed31

    db $10
    db $76

jr_02f_781d:
    ld [$5fbf], sp
    cpl
    ld d, l
    ld d, h
    nop
    dec e
    ld c, $97
    set 4, l
    ld [hl-], a
    sbc c
    ld c, h
    add b
    ld bc, $ff0f
    ret nc

    sub a
    ei
    sub a
    xor a
    rst JumpTable
    sub a
    sbc a
    di
    set 7, h
    ld bc, $ff0f
    dec bc
    jp hl


    rst JumpTable
    jp hl


    push af
    ei
    jp hl


    ld sp, hl
    rst $08
    db $d3
    ccf
    nop
    nop
    xor b
    sub e
    and a
    sub c
    add $b3
    sub a
    jp z, $86eb

    db $fd
    ld b, [hl]
    ld [hl], h
    cpl
    cp a
    rra
    ld bc, $7f40
    cp l
    bit 5, c
    rst JumpTable
    jp hl


    ld e, a
    ret


    sub l
    db $e3
    ld a, $ae
    ld a, h
    push af
    ld hl, sp-$67
    ld c, b
    jp $bd81


    rst $38
    cp l
    cp l
    sbc c
    rst $20
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    rst $38
    push bc
    cp $9a
    db $e4
    cp d
    call nz, $c4ba
    sbc d
    db $e4
    push bc
    cp $08
    ld [bc], a
    ld [hl], e
    nop

jr_02f_788c:
    rst $38
    ld a, e
    add h
    adc h
    ld h, a
    sbc b
    ld b, [hl]
    cp c
    ld e, $e1
    ld a, l
    add d
    adc h
    ld d, l
    ld d, l
    nop
    rst $38
    add b
    cp a
    and b
    and h
    xor b
    and b
    and b
    push de
    ld d, a
    nop
    ld a, [hl]
    ld a, d
    ld e, [hl]
    ld a, [hl]
    db $76
    ld a, [hl]
    nop
    ld b, c
    rst $38
    ldh [$df], a
    ld b, b
    cp a
    ld h, $fd
    inc c
    di
    ld h, b
    ld [hl], d
    rst $28
    jr nc, jr_02f_788c

    nop
    ld e, l
    ld e, l
    nop
    inc b
    jr nz, jr_02f_78c6

    db $10
    ld b, h

jr_02f_78c6:
    ld bc, $aaaa
    xor a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld d, a

jr_02f_78d3:
    and b
    add b
    xor a
    and b
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld d, l
    call c, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    jp Jump_02f_66bd


    db $db
    inc a
    rst $20
    jr @+$01

    nop
    jr nc, jr_02f_78d3

    ld h, b
    cp a
    ret nz

    ld a, a
    add c
    cp $80
    rrca
    db $10
    jp nz, Jump_02f_62bf

    rst JumpTable
    ld a, $e3
    ld a, [de]
    nop
    rst $38
    ccf
    rst JumpTable
    scf
    rst $08
    rst $38
    ld a, a
    adc e
    nop
    rst $30
    ld b, [hl]
    cp e

jr_02f_7911:
    adc h
    ld [hl], a
    sbc b
    ld l, a
    ld hl, sp+$00
    rla
    jr jr_02f_7911

    ldh a, [rIE]
    db $fc
    rst $38
    call c, $e300
    add hl, bc
    nop
    inc de
    nop
    ld h, $00
    ld c, l
    nop
    nop
    sbc e
    nop
    ld [hl], $00
    ld l, a
    nop
    rst JumpTable
    nop
    nop
    sub b
    nop
    ret z

    nop
    ld h, h
    nop
    or d
    nop
    nop
    reti


    nop
    db $ec
    nop
    or $00
    ei
    nop
    nop
    nop
    rst $38
    ld a, [hl]
    add c
    ld c, l
    add d
    ld e, e
    nop
    add h
    ld [hl], a
    adc b
    ld l, [hl]
    sub c
    ld e, h
    and e
    jr c, jr_02f_795a

    rst $00
    rst $38
    rst $38
    add c

jr_02f_795a:
    cp $01
    ld a, [bc]
    rst $38
    add b
    ld [$00ff], sp
    nop
    jp $ff20


    jp Jump_02f_40fb


    rst $00
    inc l
    ld a, h
    ld b, [hl]
    adc e
    ld a, h
    di
    rrca

jr_02f_7971:
    ld [bc], a
    rst $08
    ccf
    sbc a
    ld a, a
    ccf
    rst $38
    and c
    ld a, a
    nop
    rst $38
    cp c
    ld a, h
    cp l
    ld a, [hl]
    sub [hl]
    rrca
    sbc a
    jr nz, jr_02f_798a

    sbc [hl]
    ld b, c
    cp [hl]
    ld a, a
    cp l

jr_02f_798a:
    ld a, h
    rst $28
    nop
    ld e, a
    rst JumpTable
    ld a, a
    cp $79
    db $fd
    db $eb
    ld sp, hl
    add hl, de
    rst $28
    db $ed
    ei
    add hl, hl
    dec l
    rst $38
    nop
    ld h, b
    inc b
    rst $30
    nop
    rst $38
    ld [$8aff], sp
    sbc h
    inc b
    sbc b
    ld h, c
    adc h
    inc c
    and a
    ld hl, $041d
    inc e
    nop
    inc b
    inc c
    inc b
    call nz, $e400
    nop

jr_02f_79b8:
    db $fc
    ld b, b
    ldh [$7f], a
    ccf
    ret nz

    nop
    ldh [$88], a
    ld [hl], b
    nop
    sub a
    jr c, jr_02f_7971

    inc e
    sub a
    rrca
    sbc [hl]
    inc b
    nop
    sbc l
    inc b
    jp Jump_02f_66bd


    db $db
    inc a
    rst $20
    nop
    jr @+$01

    jr nc, jr_02f_79b8

    ld h, b
    cp a
    ret nz

    ld a, a
    jr nz, @-$7d

    cp $0f
    ld [de], a
    ld h, a
    db $db
    ccf
    db $e4
    add hl, de
    ld c, b
    cp $6f
    pop bc
    ld a, [hl]
    cpl
    ret nc

    rst $28
    cp h
    nop
    di
    ld hl, sp-$71
    call c, $f0bf
    sbc a
    ldh [$80], a
    sbc a
    db $db
    nop
    ld l, a
    nop
    scf
    nop
    sbc e
    nop
    nop
    ld c, l
    nop
    ld h, $00
    inc de
    nop
    add hl, bc
    nop
    nop
    ei
    nop
    or [hl]
    nop
    db $ec
    nop
    reti


    nop
    nop
    or d
    nop
    ld h, h
    nop
    ret z

    nop
    sub b
    nop
    nop
    nop
    rst $38
    ld [hl], h
    adc e
    ld l, c
    sub [hl]
    ld d, d
    nop
    xor l
    dec h
    jp c, $b44b

    ld d, $e9
    dec l
    nop
    jp nc, $10ef

    ret c

    daa
    or a
    ld c, b
    ld l, b
    ld bc, $d097
    cpl
    and h
    ld e, e
    and b
    ld e, a
    ld hl, $ff00
    jr c, @+$01

    rst $38
    cp l
    ld a, [hl]

jr_02f_7a48:
    ld e, [hl]
    rst $20
    add b
    dec h
    rst $28
    db $d3
    rst $00
    ei
    ei
    rst $38
    cp a
    add d
    jr z, jr_02f_7a95

    cp a
    ld a, a
    rra
    rst $38
    ld hl, $0620
    rst $38
    ld e, a
    ldh [$bf], a
    ret nz

    ld l, $20
    ld a, a
    ret nz

    ld b, c
    inc sp
    sbc a
    ld a, a
    pop bc

jr_02f_7a6b:
    ccf
    ldh [$1f], a
    jr nz, jr_02f_7a6b

    db $fc
    pop hl
    push hl
    cp $42
    cp a
    pop hl
    ld [$db9f], sp
    nop
    rst $20
    ld hl, $db18
    inc a
    ld [bc], a
    cp a
    rst $38
    rst $38
    nop
    rst $38
    jp $ff24


    ld b, e
    dec bc
    ld hl, $196f
    sbc a
    add hl, sp
    ld hl, $4025
    rst $30
    ld c, e

jr_02f_7a95:
    ccf
    add hl, bc
    rra
    add hl, bc
    adc a
    add hl, bc
    ld bc, $01cf
    rst $38
    pop hl
    ei
    ld bc, $25fd
    nop
    rst $38
    db $db
    add b
    rst $20
    ld b, b
    ld h, a
    jr c, jr_02f_7a48

    nop
    inc [hl]
    sbc b
    cpl
    ld l, a
    inc e
    rst $30
    ld a, [bc]
    rst $38
    ld b, b
    add hl, bc
    ld sp, $c080
    cp h
    sbc b
    cp $bc
    nop
    rst $30
    or [hl]
    cp a
    sbc $df
    rst $20
    xor b
    ret c

    add b
    cpl
    ld bc, $3d03
    add hl, de
    ld a, a
    dec a
    rst $28
    nop
    ld l, l
    db $fd
    ld a, e
    ei
    rst $20
    dec d
    dec de
    or e
    nop
    call $cbf5
    cp e
    and a
    cp l
    sub [hl]
    cp $00
    sbc h
    rst JumpTable
    cp h
    db $ed
    cp $9f
    rst $28
    pop bc
    nop
    cp a
    and e
    rst JumpTable
    push de
    db $ed
    cp a
    ld l, c
    rst $38
    nop
    add hl, sp
    ei
    dec a
    cp a
    ld a, a
    ld sp, hl
    rst $38
    ccf
    inc b
    rst $38

Call_02f_7b00:
    ld b, b
    ldh [$9f], a
    ret nz

    ld bc, $fc0a
    rst $38
    ld [$0702], sp
    db $fd
    inc bc
    ld bc, $ff0a
    rst $38
    sub b
    nop
    rst JumpTable
    xor e
    rst $08
    push de
    db $ec
    and a
    ei
    sbc l
    inc b
    rst $30
    cp c
    xor $be
    db $ec
    cpl
    add hl, bc
    ei
    nop
    push de
    di
    xor e
    or a
    push hl
    rst JumpTable
    cp c
    rst $28
    add b
    ld sp, $777d
    jp $bd81


    jp Jump_02f_66c3


    rst $38
    inc hl
    ld hl, $e799
    daa
    ld h, b
    push bc
    rlca
    cp $9a
    db $e4
    cp d
    call nz, $2521
    add hl, hl
    add b
    dec l
    add hl, bc
    nop
    inc de
    nop
    ld h, $00
    ld c, l
    nop
    nop
    sbc e
    nop
    ld [hl], $00
    ld l, a
    nop
    rst JumpTable
    nop
    nop
    rst $38
    nop
    add b
    nop
    cp a
    nop
    and b
    inc c
    nop
    and h
    nop
    xor b
    ld b, l
    ld hl, $0004
    jr nz, jr_02f_7b8e

    nop
    jr nz, @+$04

    nop
    stop
    ld b, h
    and b
    ld b, a
    ld bc, $ff22
    ld a, [hl]
    add c
    ld b, d
    cp l
    sbc b
    and c
    nop
    add c
    dec l
    jr nz, @-$4e

    ldh [$b0], a
    inc h
    xor $b1
    pop bc
    cp a
    ldh [$65], a

jr_02f_7b8e:
    xor c
    or $00
    sbc c
    or $95
    ld a, [$fc8b]
    add l
    cp $80
    dec a
    ret nc

    sub a
    ei
    sub a
    xor a
    rst JumpTable
    sub a
    ld b, $ff
    sbc a
    di
    set 7, h
    dec l
    jr nz, jr_02f_7bb6

    nop
    jp hl


    rst JumpTable
    jp hl


    push af
    ei
    jp hl


    rst $38
    ld sp, hl
    db $10
    rst $08

jr_02f_7bb6:
    db $d3
    ccf
    ld l, a
    rst $20
    sbc a
    xor e
    call c, $9f20
    ldh [rSTAT], a
    rst $20
    rst JumpTable
    rst $20
    ld l, a
    rst $30
    add b
    ld [hl-], a
    rst $20
    ld sp, hl
    push de
    dec sp
    ld sp, hl
    rlca
    pop af
    nop
    rrca
    ld sp, hl
    rst $20
    ei
    rst $20
    or $ef
    db $fc
    inc b
    rst $38
    sbc a
    ret nz

    xor a
    ret nz

    dec a
    adc h
    di
    nop
    add h
    ei
    and h
    set 0, c
    add [hl]
    rst JumpTable

jr_02f_7be9:
    add b
    jr nc, jr_02f_7be9

    inc bc
    ld hl, $113f
    rst $28
    ld [hl], e
    adc l
    ld [$834d], sp
    ld c, c
    add a
    add hl, hl
    or [hl]
    cp $89
    nop
    ld sp, hl
    sub c
    pop af
    and d
    db $e3
    call z, $b8c7
    db $10
    sbc a
    ldh [rIE], a
    jr nz, @+$2f

    ccf
    ld de, $011f
    adc c
    adc a
    ld b, l
    rst $00
    inc sp
    db $e3
    dec e
    inc a
    ret nz

    ld c, a
    ld hl, $4140
    pop bc
    ld [hl+], a
    ld a, $1c
    and d
    cp [hl]
    sbc h
    ld bc, $6362
    sbc h
    ld sp, hl
    inc b
    jr z, jr_02f_7c2b

jr_02f_7c2b:
    ldh a, [$e7]
    db $10
    ld [$070f], sp
    ld [$f803], sp
    ret c

    inc h
    call c, $de23
    ld hl, $0050
    ld [bc], a
    db $fc
    cp h
    ld c, l
    add d
    sbc [hl]
    ld b, e
    xor [hl]
    ld b, e
    ld e, e
    and a
    ld h, e
    sbc a
    ld a, e
    rlca
    jr z, jr_02f_7c4d

jr_02f_7c4d:
    ldh [$f7], a
    nop
    ld [$970f], sp
    ld [$f803], sp
    db $10
    db $e4
    call c, $dee3
    pop hl
    nop
    nop
    rst $38
    nop
    ret nz

    ccf
    sbc b
    ld h, a
    and b
    ld e, a
    add c
    ld a, [hl]
    add e
    ld a, h
    add [hl]
    ld a, c
    call $0032
    nop
    rst $38
    nop
    add e
    ld a, h
    or c
    ld c, [hl]
    add c
    ld a, [hl]
    pop hl
    ld e, $31
    adc $1f
    ldh [$9f], a
    ld h, b
    ldh [rP1], a
    nop
    ccf
    ld bc, $137e
    ld l, h
    ld b, $79
    inc c
    ld [hl], e
    jr jr_02f_7cf5

    jr nc, jr_02f_7cdf

    nop
    nop
    nop
    rst $38
    ld [hl], h
    adc e
    ld l, c
    sub [hl]
    ld d, d
    xor l
    dec h
    jp c, $b44b

    ld d, $e9
    dec l
    jp nc, Jump_02f_6802

    rst $38
    nop
    nop
    sbc c
    nop
    cp $01
    sub e
    rst $28
    ld h, e
    ld [hl], $5e
    cp l
    ld [de], a
    xor b
    ccf
    di
    rrca
    rst $08
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    jr z, jr_02f_7cc9

    ccf
    ld e, [hl]
    dec a
    ld e, $0b
    ld a, a
    add hl, bc
    ld [hl], a

jr_02f_7cc9:
    dec de
    ld a, $0f
    inc c
    ld a, [hl]
    add hl, de
    ld d, b
    ld [$afdf], sp
    cp [hl]
    rst $30
    ld a, a
    ei
    rst $20
    rst $38
    rst $20
    cp [hl]
    rst $30
    ld a, a
    ld e, a
    rst $28

jr_02f_7cdf:
    ret nc

    ld [bc], a
    nop
    sbc c
    cp $01
    ld a, a
    sub e
    db $ec
    rst $38
    inc sp
    call z, $33cc
    rst $38
    dec b
    inc b
    dec c
    ld d, h
    dec sp
    inc [hl]
    dec de

jr_02f_7cf5:
    ld a, [hl-]
    ld a, d
    db $76
    add hl, de
    inc a
    dec bc
    ld a, [hl-]
    ld l, d
    dec e
    inc b
    ld [$3d04], sp
    ld b, $19
    ld c, $8b
    ld [c], a
    dec b
    or b
    ld b, e
    ld c, b
    or c
    ld hl, sp+$02
    db $fc
    ret nz

    nop
    nop
    ld l, a
    ld [hl], b
    ld [hl], l
    ld a, d
    ld a, [hl-]
    ld a, l
    ld e, h
    ccf
    ld l, [hl]
    rra
    ld d, a
    cpl
    ld h, e
    rra
    nop
    add h
    add $78
    ld [bc], a
    ld [hl-], a
    add l
    add a
    ld c, b
    rst $08
    jr nc, jr_02f_7d3c

    nop
    add hl, sp
    add hl, sp
    cp c
    ld b, d
    jr nz, jr_02f_7d53

    nop
    ld c, $21
    pop af
    ld [hl], c
    adc [hl]
    ld a, e
    add h
    add hl, sp

jr_02f_7d3c:
    add h
    add $c6
    add hl, sp
    rst $28
    stop
    nop
    ld a, e
    rlca
    add hl, sp
    add a
    add [hl]
    ld c, c
    adc a
    ld [hl], b
    rst $08
    jr nc, @-$4a

    ld c, b
    ld a, d
    add l
    ld a, c

jr_02f_7d53:
    add d
    ld [bc], a
    add b
    ld a, e
    sbc $e1
    adc c
    ldh a, [$f3]
    adc h
    add h
    add h
    inc b
    jp z, Jump_02f_49b0

    or [hl]
    ld c, b
    nop
    and b
    add c
    db $fd
    ld [bc], a
    call nz, $b63b
    ld c, c
    and e
    ld e, h
    ld a, [hl]
    ld a, [hl]
    jp $ff3c


    nop
    nop
    and b
    add c
    add hl, de
    and $35
    jp z, $9669

    pop de
    ld l, $7e
    ld a, [hl]
    jp $ff3c


    nop
    nop
    and b
    ld b, d
    nop
    rst $38
    ld a, a
    add b
    ld h, b
    sbc a
    ld b, e
    cp h
    cp l
    cp l
    ld e, a
    and b
    ld d, d
    xor l
    nop
    ld a, [bc]
    and b
    rst $28
    db $10
    ret c

    daa
    or a
    ld c, b
    ld l, b
    sub a
    ret nc

    cpl
    and h
    ld e, e
    ld e, a
    ld e, a
    db $10
    dec e
    rst $38
    ld a, a
    cp e
    call c, $fc3f
    cp $67
    ei
    rst $00
    rst $30
    db $dd
    ld h, c
    ld d, b
    rst $38
    cp a
    ccf
    cp a
    ld a, a
    rra
    rra
    jr nz, @+$61

    ldh [$bf], a
    ret nz

    push af
    nop
    rst $38
    ld a, a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    pop bc
    ccf
    ldh [$1f], a
    xor d
    add b
    ei
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    push hl
    cp $42
    cp a
    pop hl
    sbc a
    ld d, b
    ld e, l
    rst $38
    inc sp
    call z, $cc33

Jump_02f_7de7:
    call z, $0033
    inc sp
    call z, $a0a0
    and [hl]
    rst JumpTable
    rst JumpTable
    ld d, e
    rst $28
    ld d, e
    rst $28
    rst JumpTable
    rst JumpTable
    ld d, e
    rst $28
    ld d, e
    rst $28
    nop
    rla
    rst $38
    ld d, a
    ccf
    xor a
    rra
    ld b, e
    sbc a
    add a
    rst $28
    inc hl
    rst $30
    or e
    db $fd
    ld d, c
    ld b, b
    rst $38
    di
    db $ec
    ld [hl], e
    db $fc
    ld a, b
    sbc h
    xor a
    rst JumpTable
    ld d, a
    rst $28
    ld d, a
    rst $28
    ld b, h
    nop
    ret nz

    jr nc, jr_02f_7e7e

    add b
    inc a
    ld c, $f0
    rlca
    ld hl, sp-$7d
    db $fc
    rst $00
    ei
    sbc h
    rst $20
    add d
    nop
    rst $28
    rra
    rra
    rrca
    rst $00
    rrca
    rlca
    dec hl
    rst $00
    inc bc
    rst $20
    sub l
    db $e3
    adc e
    pop af
    and b
    nop
    ld bc, $fee2
    inc e
    and d

Jump_02f_7e42:
    cp a
    ld b, c
    sbc l
    ld b, c
    pop bc
    ld h, d
    add e
    db $fc
    add hl, de
    db $e4
    db $10
    jr nz, jr_02f_7e57

    rst $20
    db $10
    ldh a, [$c0]
    ccf
    add a
    ld hl, sp+$03

jr_02f_7e57:
    ld hl, sp-$0c
    sbc h
    ld h, e
    adc $21
    ret


    inc b
    rst $38
    or $c9
    sbc a
    sub b
    ldh a, [$9f]

jr_02f_7e66:
    ldh a, [$9f]

jr_02f_7e68:
    sub b
    ldh a, [$9f]
    call $ff55
    xor $11
    nop
    nop
    nop
    nop
    nop
    adc d
    jr z, jr_02f_7e68

    sbc a
    sub b
    rst $38
    sbc a
    sbc a
    sub b

jr_02f_7e7e:
    rst $38
    sbc a
    sbc a
    sub b
    rst $38
    add sp, $57
    rst $38
    nop
    nop
    add b
    ld a, a
    nop

jr_02f_7e8b:
    rra
    ld a, a
    jr nz, jr_02f_7ea3

    sbc a
    sbc h
    ldh [$e0], a
    cp b
    rst $00
    jr nc, jr_02f_7e66

    daa
    rst JumpTable
    ld l, a
    rst $28
    rst $28
    sbc [hl]
    add d
    nop
    ccf
    ld a, a
    scf
    rrca

jr_02f_7ea3:
    ld a, a
    add b
    ret nz

    inc e
    db $e3
    sbc b
    rst $20
    pop bc
    cp $fb
    ld a, h
    ret nz

    nop
    inc bc
    rrca
    inc c
    rla
    jr jr_02f_7ee5

    jr nc, jr_02f_7f17

    ld h, b
    ld e, a
    ld h, b
    sbc [hl]
    pop hl
    sbc [hl]
    pop hl
    ld b, b
    db $10
    ld sp, hl
    sub [hl]
    or e
    db $fc
    db $e3
    db $fc
    jp $83fd


    db $fd
    add a
    adc [hl]
    pop af
    adc a
    ldh a, [rP1]
    nop

jr_02f_7ed2:
    dec d
    ld [bc], a
    adc d
    ld bc, $00c5
    ld h, d
    add b
    or c
    ld b, b
    ld e, b
    jr nz, jr_02f_7e8b

    db $10
    ld d, [hl]
    adc b
    nop
    nop
    and [hl]

jr_02f_7ee5:
    ld b, b
    sub e

Jump_02f_7ee7:
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
    ld bc, $1500
    nop
    ld a, [hl+]
    call nz, $6295
    jp z, $ed31

    db $10
    db $76
    ld [$5fbf], sp
    cpl
    ld d, l
    ld d, h
    nop
    dec e
    ld c, $97
    set 4, l
    ld [hl-], a
    sbc c
    ld c, h
    add b
    ld a, [bc]
    nop
    rst $20
    cp b
    rrca
    inc de
    inc a

jr_02f_7f17:
    jr c, jr_02f_7ed2

    rst $30
    reti


    db $d3
    sbc h
    ret c

    sbc a
    rst $38
    rst $38
    db $10
    ld bc, $c2ff
    db $fd
    ret nz

    xor b
    di
    dec [hl]
    db $e3
    ld a, a
    and a
    ld l, h
    or a
    ld a, [hl+]
    push de
    pop bc
    ld [bc], a
    add b
    ret nc

    inc a
    jp nz, $8778

    cp b
    ld c, a
    ccf
    rra
    nop
    ccf
    add hl, sp
    add $b9
    ld b, d
    ld bc, $8440
    ld c, $21
    ld b, $f1
    ld [hl], c
    adc [hl]
    ld a, e
    add hl, sp
    nop
    add $c0
    ccf
    rst $20
    jr jr_02f_7f56

    rst $38

jr_02f_7f56:
    rst $38
    ldh a, [$9f]
    ldh a, [$9f]
    or a
    ret z

    add b
    ld d, c
    rst $38
    rst $38
    nop
    nop
    ld a, e
    add h
    nop
    sbc c
    ld c, b
    jp $bd81


    rst $38
    cp l
    cp l
    sbc c
    rst $20
    rst $38
    rst $38
    rst $38
    ret nz

    inc bc
    rst $38
    push bc
    cp $9a
    db $e4
    cp d
    call nz, $c4ba
    sbc d
    db $e4

jr_02f_7f80:
    push bc
    cp $0a
    nop
    ret nz

    and a
    sbc $93
    rst $28
    rst $38
    rst $38
    ld h, b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, $3f
    rra
    rra
    db $10
    ld b, b
    ld hl, sp+$77
    jr c, jr_02f_7f80

    rrca
    ldh a, [rIF]
    ldh a, [$27]
    inc sp
    db $fc
    ld a, a
    cp $ff
    rst $38
    ld [$7302], sp
    nop
    rst $38
    ld a, e
    add h
    adc h
    ld h, a
    sbc b
    ld b, [hl]
    cp c
    ld e, $e1
    ld a, l
    add d
    adc h
    ld d, l
    ld d, l
    nop
    rst $38
    add b
    cp a
    and b
    and h
    xor b
    and b
    and b
    ld e, l
    ld e, l
    nop
    inc b
    jr nz, jr_02f_7fc8

    db $10
    ld b, h

jr_02f_7fc8:
    ld bc, $57d5
    nop
    ld a, [hl]
    ld a, d
    ld e, [hl]
    ld a, [hl]
    db $76
    ld a, [hl]
    add b
    ld b, b
    rrca
    nop
    ld e, $01
    inc a
    inc bc
    ld a, b
    rlca
    ldh a, [$e1]
    rra
    jp $873f


    ld a, a
    ret nc

    dec e
    rst $38
    call z, $cc33
    ld b, d
    db $10
    adc h
    ld [hl], e
    inc sp
    call z, $005c
    nop
    rrca
    rst $38
    ld bc, $100f
    stop
    ld de, $fcfe
    ld [bc], a
    db $fd
    ld hl, sp-$07

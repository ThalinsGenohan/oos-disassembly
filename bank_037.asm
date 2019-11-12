; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $037", ROMX

    inc b
    inc bc
    inc b
    inc bc
    ld l, $01
    rla
    inc l
    add b
    ld d, l
    ld e, a
    rst $38
    ldh a, [$e8]
    jp nc, $f3e3

    db $fd
    inc b
    ld bc, $43ff
    cp l
    or e
    db $ec
    sub d
    jp c, $e7f7

    ld e, a
    ld d, a
    cp e
    ld c, l
    rst $30
    ld c, l
    nop
    ld a, [bc]
    ld a, a
    jp nc, Jump_037_51c9

    xor [hl]
    dec e
    ld [c], a
    xor e
    ld d, h
    ld [bc], a
    db $fd
    ccf
    rst $08
    rst $38
    rst $38
    nop
    rla
    rst $38
    dec d
    ld a, c
    scf
    ld c, a
    ld h, e
    adc e
    ld d, [hl]
    xor b
    ld d, a
    ei
    or c
    rl b
    ld b, c
    rst $38
    ld b, l
    cp [hl]
    dec [hl]
    cp [hl]
    ld a, a
    db $db
    ld a, a
    ld e, $cf
    ccf
    ld l, l
    rst JumpTable
    add e
    ld bc, $0055
    inc a
    jp $807f


jr_037_405a:
    ld b, a
    add b
    sub $c4
    ldh [rHDMA4], a
    sub b
    ld d, l
    ld d, e
    rst $38
    ld d, e
    ret


    and h
    ldh a, [$f2]
    jp c, $febd

    ld d, c
    dec d
    rst $38
    nop
    nop
    ld b, d
    db $fd
    ld [bc], a
    dec d
    cp $3b
    xor $f8
    db $10
    inc b
    ei
    sub l
    ld a, a
    dec c
    dec bc
    rst $38
    rla
    db $eb
    ld h, h
    rst $38
    ld e, c
    db $fd
    rst $30
    rst $10
    rst $10
    jr nz, jr_037_40ac

    push bc
    ld b, c
    cp [hl]
    ei
    ld a, [de]
    rst $30
    sbc e
    ld h, l
    ld e, $63
    ld a, [hl-]
    ld l, c
    rst $10
    add e
    rst $38
    ld d, c
    ld d, l
    rst $38
    ld c, d
    and e
    sbc e
    rst $30
    inc d
    inc a
    ld c, a
    rst JumpTable
    ei
    rst $38
    ld b, b
    nop
    sub b
    ld [de], a

jr_037_40ac:
    add b
    db $db
    add b
    sbc a
    ldh [rP1], a
    dec d
    rst $38
    rrca
    ldh a, [$82]
    db $fd
    sbc e
    ld [hl], h
    ld de, $6cfe
    cp a
    ld a, $2e
    ld d, a
    nop
    nop
    nop
    rst $38
    ld c, b
    or a
    ld sp, $aacf
    ld d, a
    ei
    rlca
    ld a, c
    add a
    di
    rrca

Jump_037_40d1:
    daa
    rst JumpTable

Jump_037_40d3:
    ld d, l
    ld d, b
    rst $38
    jr nz, @-$7e

    jr nz, jr_037_405a

    and b
    ret nz

    add d
    db $fd
    adc h
    di
    ld a, [hl+]
    nop
    nop
    ld bc, $fffe
    rst $38
    rst $38
    dec b
    ld a, [$ef10]
    dec sp
    call nz, $fd02
    ld b, b
    rst $38
    nop
    ld [$fffb], sp
    xor $ff
    rst $10
    rst $38
    nop
    xor l
    rst $38
    add $ff
    call z, $f1ff
    cp $00
    jp nc, $d4fc

    ld hl, sp-$1c
    ld hl, sp-$12
    ldh a, [rP1]
    xor e
    ldh a, [$4e]
    ldh a, [rVBK]
    ldh a, [$0e]
    ld bc, $0c00
    inc bc
    jr jr_037_4121

    inc l
    inc bc
    ld e, c
    ld b, $00
    adc h
    inc bc

jr_037_4121:
    cp b
    rlca
    ld l, [hl]
    add c
    ret nz

    ccf
    nop
    jp nz, $d03d

    cpl
    add b
    ld a, a
    ld b, b
    cp a
    nop
    and b
    ld e, a
    ret nz

    ccf
    ld b, b
    cp a
    cp d
    ld a, l
    nop
    ld [hl], e
    db $fc
    ld h, l
    ld a, [$ecb3]
    ld d, a
    add sp, $40
    adc a
    dec l
    ld [$e15e], sp
    or b
    ld c, a
    ld a, [$0007]
    push hl
    dec de
    ldh [$1f], a
    jp $a73f


    ld e, [hl]
    nop
    ld b, $ff
    jr @+$01

    rst $28
    rst $38
    ld a, [$00ff]
    ld l, d
    rst $38
    ret nc

    rst $38
    ld h, d
    db $fd
    ld b, l
    ld a, [$0300]
    db $fc
    adc l
    ld [hl], d
    cp d
    push bc
    ld l, l
    sub d
    nop
    cp e
    ld b, h
    db $fd
    ld [bc], a
    rst $38
    nop
    sbc a
    ld h, b
    nop
    ccf
    ret nz

    rst JumpTable
    jr nz, @+$01

    rst $38
    db $fd
    rst $38
    nop
    jp c, $ecff

    rst $38

Call_037_4187:
    di
    cp $e5
    cp $00
    dec bc
    db $fc
    ld d, l
    ld a, [$f8ec]
    ld sp, hl
    db $f4
    ld b, d
    ld a, [c]
    ld a, a
    ld [$f0e8], sp
    db $ec
    ldh a, [$87]
    db $10
    inc h
    nop
    inc bc
    adc d
    ld bc, $010e
    add h
    inc bc
    add hl, hl
    nop
    rlca
    ld a, [bc]
    rlca
    ld sp, $120f
    rrca
    inc de
    nop
    rst $28
    dec de
    rst $20
    rla
    rst $28
    ld b, e
    cp a
    rla
    nop
    rst $28
    ld a, a
    sbc a
    ld l, a
    sbc a
    rst $28
    rra
    ld a, l
    nop
    rst $38
    cp d
    rst $38
    push de
    cp $d6
    ld hl, sp+$18
    nop
    ldh [$71], a
    add b
    add b
    nop
    ld [bc], a
    nop
    sub c
    nop
    nop
    dec bc
    nop
    ld a, [bc]
    ld bc, $0255
    rrca
    nop
    nop
    ld c, $01
    dec b
    ld [bc], a
    ld c, $01
    ld c, e
    nop
    cp h
    inc sp
    call z, $0916
    dec e
    inc bc
    ld l, b
    nop
    rla
    ld b, b
    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld b, b
    nop
    cp a
    ld a, [c]
    dec c
    ld h, b
    sbc a
    ret z

    scf
    ld b, b
    nop
    cp a
    ld [$e0f7], sp
    rra
    ret nc

    cpl
    add h
    nop
    rst $38
    and b
    rst $38
    db $10
    rst $28
    ret


    or $97
    nop
    add sp, $0f
    ldh a, [$6d]
    sub d
    cp c
    jp nz, $00ab

    call nc, $e01f
    ld c, a
    or b
    rst $38
    nop
    ld l, a
    nop
    add b
    rst $28
    nop
    or $00
    ld h, a
    add b
    jp c, $0500

    cp [hl]
    ld bc, $05ba
    ld hl, sp+$07

jr_037_4237:
    db $ec
    nop
    inc de
    or b
    ld c, a
    ret c

    daa
    ldh [$1f], a
    add d
    add b
    ld sp, hl
    ld [$ff00], sp
    ld b, d
    cp a
    dec b
    rst $38
    ld [bc], a
    nop
    rst $38
    sub h
    ld a, a
    add hl, hl
    cp $28
    rst $10
    ld d, h
    db $10
    xor e
    jr nz, jr_037_4237

    inc de
    db $10
    ld e, d
    and l
    ccf
    ret nz

    nop
    ld a, [c]
    nop
    inc hl
    call c, $f10e
    ld e, a
    and b
    nop
    ccf
    ret nz

    rst $30
    nop
    sub $01
    dec h
    ld [bc], a
    nop
    ld c, a
    nop
    ld [bc], a
    db $fd
    adc b
    ld [hl], a
    add c
    ld a, [hl]
    jr nz, jr_037_427b

jr_037_427b:
    rst $38
    ld bc, $c010
    ccf
    and b
    ld e, a
    dec a
    nop
    jp nz, $8d72

    ld bc, $87fe
    ld hl, sp+$43
    nop
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$72], a
    adc l
    jp c, $2500

    inc e
    db $e3
    cp $01
    db $fc
    inc bc
    ret c

    nop
    daa
    ret nc

    cpl
    ld h, b
    sbc a
    nop
    rst $38
    call z, $f000
    db $e4
    ld hl, sp-$0e
    db $fc
    call nc, $eafa
    nop
    db $fc
    push de
    ld a, [$fce3]
    ld a, [c]
    db $fc
    ld a, [de]
    nop
    rlca
    ld e, $07
    ld bc, $190e
    ld b, $ac
    nop
    inc bc
    dec d
    inc bc
    cp d
    rlca
    ld h, c
    rra
    ld c, a
    nop
    rst $38
    sbc a
    ld a, a
    xor a
    ld a, a
    rra
    rst $38
    ld a, a
    ret nz

    ld bc, $0008
    db $10
    ld a, a
    add b
    and $18
    dec e
    ldh [rP1], a
    dec c
    ldh a, [$bf]
    ld b, b
    ld l, $d1
    ld e, $e1
    nop
    ld de, $0bee
    db $f4
    ld c, $f1
    dec d
    add sp, $00
    dec de
    ldh [$65], a
    add b
    pop hl
    nop
    jp RST_00


    ld b, c
    nop
    db $fc
    rst $38
    ld a, [hl-]
    rst $38
    jr nz, @+$01

    nop
    inc b
    ei
    cp b
    rst $30
    add [hl]
    ld sp, hl
    dec l
    ld a, [c]
    nop
    and e
    db $fc
    rst $00
    rst $38
    adc e
    rst $38
    ld b, c
    rst $38
    nop
    add e
    rst $38
    dec h
    rst JumpTable
    add e
    rst $38
    inc de
    rst $28
    inc d
    dec h
    rst JumpTable
    ld sp, hl
    sbc a
    add hl, bc
    db $fc
    inc bc
    ld [$fefd], sp
    db $10
    db $fc
    rst $38
    cp $01
    ld [$42a5], sp
    ld d, e
    add b
    ld bc, $0186
    ld b, e
    nop
    add [hl]
    nop
    dec c
    inc bc
    ld [$0800], sp
    nop
    db $d3
    nop
    jp hl


    nop
    or b
    ld bc, $4610
    ld bc, $5785
    add hl, bc
    ld d, a
    nop
    cpl
    nop
    nop
    call z, Call_037_6033
    sbc a
    call c, $b823
    ld b, a
    nop
    pop af
    rrca
    ldh a, [rIF]
    push hl
    rra
    ret nz

    ccf
    ld bc, $ff5b
    cpl
    rst $38
    ld e, a
    rst $38
    cp [hl]
    adc l
    ld [$bd04], sp
    rst $38
    ld e, d
    rst $38
    ret c

    sub c
    ld [$fffe], sp
    nop
    rst $08
    rst $38
    adc d
    rst $38
    dec b
    rst $38
    ld hl, $06df
    ld d, d
    xor a
    ld a, h
    inc bc
    rst JumpTable
    rrca
    ld [$1013], sp
    db $fd
    jr nz, @+$01

    sbc $67
    ld [$fffc], sp
    add $f8
    xor l
    nop
    ldh a, [$98]
    ldh [$35], a
    ret nz

    ld a, d
    add b
    ld hl, $c000
    cp e
    ld b, b
    inc bc
    ld hl, sp+$00
    nop
    ld a, [hl+]
    nop
    nop
    ld e, h
    nop
    ccf
    nop
    ld a, c
    ld b, $f0
    nop
    rrca
    ret nz

    ccf
    ld [hl], l
    adc d
    rst $30
    db $fc
    ld sp, hl
    ld [bc], a
    cp $f1
    cp $f2
    db $fd
    ld hl, sp+$4b
    ld [$00f5], sp
    rst $38
    ld sp, hl
    ld a, a
    and $1f
    db $d3
    cpl
    dec c
    ld a, [bc]
    rst $38
    rla
    rst $38
    ld c, a
    ld h, e
    ld [$a5ac], sp
    ld [$08ff], sp
    rst $38
    db $ed
    rst $38
    db $db
    or e
    add hl, bc
    ld d, b
    rst $38
    jr nz, jr_037_43e7

    rst JumpTable
    ld d, l
    adc e
    call nz, $0483

jr_037_43e7:
    add hl, de
    cp l
    ld a, [bc]
    xor a
    ld a, [bc]
    rst $38
    xor a
    ld a, a
    rrca
    daa
    ld [$0000], sp
    jr c, @+$23

    ld a, [bc]
    nop
    ld de, $a700
    rst $38
    ld [$47f8], sp
    ld [$20f8], sp
    rst $38
    db $f4
    inc bc
    ld [$fee9], sp
    di
    db $fc
    ld bc, $ff00
    add $bf
    ld d, b
    xor a
    ld [c], a
    dec e
    ld h, c
    nop
    sbc a
    call nc, $e02b
    rra
    ret c

    daa
    db $fd
    and b
    ei
    ld [$fbf7], sp
    ld [$fef9], sp
    db $fd
    cp $f9
    add b
    rra
    ld [$0004], sp
    ld b, b
    nop
    ret nz

    nop
    and b
    nop
    nop
    adc c
    nop
    call nz, Call_037_4b00
    nop
    add e
    adc d
    di
    ld [$003f], sp
    ld e, a
    inc bc
    ld [$c07f], sp
    add hl, bc
    cp $00
    ld bc, $00ff
    adc a
    inc bc
    sbc c
    rlca
    add hl, de
    nop
    rlca
    pop af
    rrca
    ld b, a
    rra
    rst $30
    rrca
    rrca
    dec bc
    ld a, a
    db $eb
    rra
    ldh a, [$d3]
    ld [$3fed], sp
    dec bc
    dec a
    ld de, $4bd0
    db $10
    ld l, l
    db $10
    xor b
    rst $28
    ld a, [bc]
    ld h, b
    rst $38
    add b
    rst $38
    nop
    ld bc, $00fe
    pop bc
    pop de
    cp $a1
    sbc $00
    sub e
    db $ec
    ld a, $c0
    ld l, c
    add b
    db $d3
    nop
    db $10
    ld h, l
    add b
    rlca
    sub a
    ld [$0010], sp
    ld h, b
    nop
    ld b, b
    ld hl, sp+$01
    ld [$00f0], sp
    and b
    ld b, b
    ld h, c
    add b
    jr nz, jr_037_44b9

    rst JumpTable
    add hl, de
    ld [de], a
    ld bc, $0ffe
    ldh a, [rTAC]
    nop
    ld hl, sp+$07
    ld hl, sp-$45
    ld b, h
    ret nz

    rst $38
    ldh [rP1], a
    rst $38
    add sp, -$01
    jp nc, $a9ff

    rst $38
    push de
    add b
    rst $10
    ld [$ffef], sp
    ei

jr_037_44b9:
    db $fc
    di
    db $fc
    ei
    nop
    db $fc
    ld a, [$f1fd]
    cp $f8
    rst $38
    ld a, [$fd00]
    ld a, [$8ffd]
    nop
    and [hl]
    ld bc, $007f
    nop
    ld d, e
    jr nz, @-$2f

    jr nz, @+$01

    nop
    rst JumpTable
    nop
    jr nz, @+$41

    ret nz

    cp $01
    rst JumpTable
    jr nz, @-$11

    nop
    ld [de], a
    push af
    ld a, [bc]
    sub $29
    xor d
    ld d, l
    ld b, b
    ld [bc], a
    cp a
    add h
    ld a, e
    rla
    rst $38
    ccf
    add hl, de
    ld a, [de]
    or $80
    sub l
    ld [$feb5], sp
    xor e
    db $fc
    jp hl


    cp $e1
    nop
    cp $f2
    db $fc
    ld [$d0fc], a
    db $fc
    and $00
    ld hl, sp-$35
    db $f4
    and $f9
    ldh [$7f], a
    ld b, b
    ld bc, $a1ff
    cp $40
    rst $38
    inc bc
    db $fc
    ld l, a
    stop
    inc c
    di
    nop
    nop
    db $fc
    db $fc
    db $dd
    or l
    nop
    db $ed
    sub l
    db $fd
    add l
    db $fd
    and l
    db $fd
    or l
    nop
    db $fc
    db $fc
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld d, c
    add b
    ld bc, $7d10
    ld e, l
    ld a, l
    ld b, l
    ld a, h
    ld a, h
    nop
    nop
    nop
    rst $20
    rst $20
    ld d, a
    or h
    rst $30
    ld d, l
    rst $30
    nop
    ld d, h
    rst $30
    ld d, h
    ld d, a
    or l
    rst $20
    rst $20
    nop
    ld bc, $f100
    pop af
    ld l, d
    sbc e
    ei
    ld l, d
    ld bc, $0010
    ld l, d
    sbc e
    pop af
    pop af
    nop
    nop
    sbc a
    sbc a
    nop
    ld e, a
    pop de
    rst JumpTable
    ld e, e
    ld c, [hl]
    jp z, $cace

    ld [$4ace], sp
    adc $ce
    rra
    db $10
    ld a, [c]
    inc de
    di
    nop
    ld a, [c]
    add l
    add [hl]
    rst $30
    db $f4
    or $15
    rst $30
    ld bc, $00f7
    nop
    ld a, h
    ld a, h
    ld a, h
    ld d, h
    ld bc, $6008
    ld b, h
    dec b
    jr jr_037_45de

    ld [$c7c7], sp
    and a
    ld h, l
    rst $20
    nop
    dec h
    rst $10
    or l
    rst $30
    dec d
    or a
    call nc, $0077
    ld [hl], a
    nop
    nop
    ld [hl], e
    ld [hl], e
    xor e
    jp c, $10fb

    adc d
    ei
    xor d
    inc bc
    db $10
    db $db
    db $db
    nop
    nop
    nop
    dec e
    dec e
    dec e
    dec d
    dec e
    dec d
    inc e
    inc d
    nop
    call c, $ddd4
    ld d, l
    db $dd
    db $dd
    nop
    nop
    nop
    cp e
    cp e
    ei
    ld [$4afb], a

jr_037_45ca:
    ei
    ld a, [bc]
    add b
    ld hl, $ea08
    cp e
    cp e
    nop
    nop
    ld hl, sp-$08
    nop
    ld sp, hl
    add hl, bc
    ld sp, hl
    jp hl


    ld [hl], d
    ld d, e
    ei

jr_037_45de:
    cp d
    add b
    inc de
    ld [$00fb], sp
    nop
    rst $28
    rst $28
    xor $29
    nop
    rst $28
    ld [$49ce], a
    rst $28
    jp hl


    rst $28
    ld a, [hl+]
    nop
    rst $28
    rst $28
    nop
    nop
    db $e3
    db $e3
    ld d, e
    or d
    nop
    di

Jump_037_45fd:
    inc de
    add sp, $58
    ld hl, sp+$08
    ld e, b
    add sp, $00
    cp b
    cp b
    nop
    nop
    add hl, sp
    add hl, sp
    cp d
    xor e
    jr nz, jr_037_45ca

    xor d
    ld bc, $ba10
    xor e
    cp c
    cp c
    nop
    ld de, $fb00
    ei
    scf
    ld [$e3ba], sp
    and d
    ld bc, $4018
    db $e3
    rst JumpTable
    db $10
    ld [$ef2d], a
    add sp, -$71
    adc d
    nop
    rst $28
    add sp, -$11
    ld a, [hl+]
    db $ed
    db $ed
    nop
    nop
    ld [bc], a
    sbc [hl]
    sbc [hl]
    xor l
    or e
    cp a
    xor l
    ld bc, $ad10
    nop
    or e
    sbc [hl]
    sbc [hl]
    nop
    nop
    ccf
    ccf
    or a
    ld bc, $bbad
    and l
    cp a
    and c
    cp a
    xor c
    inc de
    ld [$bf00], sp
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld e, d
    halt
    ld c, d
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld h, b
    ld a, [hl]
    ld l, a
    ld b, d
    nop
    jr nc, jr_037_46aa

    ccf
    ccf
    jr nz, jr_037_46ae

    inc d
    dec sp
    ld c, $0a
    ld bc, $0e18
    rra
    add b
    cp a
    cp a
    nop
    cp l
    and e
    cp a
    xor l
    dec a
    inc hl
    ccf
    dec hl
    ld [$2d3b], sp
    ccf
    ccf
    rra
    add b
    inc e
    inc e
    ld a, [hl+]
    nop
    ld [hl], $3e
    ld [hl+], a
    ld e, l
    ld l, e
    ld a, a
    ld b, c
    ld l, e
    ld [hl], b
    ld e, l
    rra
    ld de, $7000
    ld a, a
    ldh a, [$7d]
    ld a, l
    cp l
    push bc
    nop
    db $fd
    cp l
    or l

jr_037_46a6:
    call $f5fd
    push af

jr_037_46aa:
    adc l
    jr nz, jr_037_46a6

    ld sp, hl

jr_037_46ae:
    rra
    add b
    ret nz

    ret nz

    pop bc
    ld b, c
    pop bc
    rlca
    ld b, c
    jp nz, $fb43

    ld a, d
    ccf
    ld hl, $7000
    ccf
    ld [hl], c
    rst $38
    nop
    ld [hl], b
    ccf
    ld [hl], c
    nop
    ld [hl], b
    ccf
    ld [hl], c
    nop
    ld [hl], b
    ld e, a
    ld [hl], d
    nop
    ld [hl], b
    ld e, a
    ld [hl], d
    ldh a, [$1f]
    add b
    ld e, a
    ld h, d
    nop
    ld [hl], b
    ld e, a
    ld [hl], d
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    rlca
    ld [$8003], sp
    ld e, a
    add d
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [rSB], a
    ld h, b
    ldh [$a0], a
    ldh a, [$50]
    ldh a, [$f0]
    ld e, a
    add d
    ld hl, sp+$1f
    ld bc, $df70
    pop af
    cp a
    ld [hl], b
    nop
    ld [hl], b
    cp a
    ld [hl], b
    ld [hl], a
    ld [hl], a
    ld a, a
    nop
    ld e, l
    ld a, a
    ld c, c
    ld a, a
    ld b, c
    ld a, a
    ld d, l
    ld a, a
    ret nz

    ld c, a
    adc d
    ld b, b
    add b
    nop
    nop
    ld b, h
    add c
    add d
    add e

jr_037_4720:
    add h
    add l
    add [hl]
    ld bc, $8887
    adc c
    adc d
    adc e
    adc h
    adc l
    inc e
    ld [hl], b
    nop
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    nop
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc h
    add b
    rra
    ld [hl], b
    sub d
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    nop
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    ld b, b
    xor e
    rra
    ld [hl], b
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    nop
    or d
    or e
    or h
    sbc h
    or l
    or [hl]
    or a
    cp b
    jr nz, jr_037_4720

    cp d
    rra
    ld [hl], b
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    nop
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    db $10
    ret z

    ret


    jp z, Jump_037_701f

    res 3, h
    call z, $00cd
    adc $cf
    ret nc

    pop de
    jp nc, $d4d3

    push de
    ld [$d7d6], sp
    ret c

    reti


    rra
    ld [hl], b
    jp c, $dcdb

    nop
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    ld [$e6e5], sp
    rst $20
    add sp, -$24
    ld a, b
    jp hl


    ld [$00eb], a
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    ld [$f5f4], sp
    or $f7
    rra
    ld a, b
    ld hl, sp-$07
    ld a, [$fb00]
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $2002
    inc bc
    inc b
    inc e
    adc c
    dec b
    ld b, $07
    ld b, e
    ld b, e
    nop
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    add b

Call_037_47d8:
    rra
    adc b
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $10
    rla
    jr jr_037_47fe

    ld e, h
    and c
    ld a, [de]
    dec de
    inc e
    dec e
    ld [bc], a
    ld e, $1f
    jr nz, jr_037_4811

    ld [hl+], a
    inc hl
    rra
    and b
    inc h
    nop
    dec h
    sub d
    ld h, $27
    jr z, jr_037_4825

    ld a, [hl+]
    dec hl

jr_037_47fe:
    ld bc, $2d2c
    ld l, $2f
    jr nc, jr_037_4836

    ld [hl-], a
    rra
    ld [hl], b
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_037_4849

    ld a, [hl-]

jr_037_4811:
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ldh [$f1], a
    ld bc, $0045
    jr c, jr_037_487b

    inc c
    nop
    ld b, c
    ld a, [bc]

jr_037_4825:
    nop
    rrca
    rra
    jr c, jr_037_4839

    rra
    dec e
    rrca
    sbc h
    ld b, b
    ld a, [bc]
    ld c, $20
    rra
    rla
    ld a, [hl]
    dec bc

jr_037_4836:
    dec bc
    xor h
    ld a, [hl]

jr_037_4839:
    ld c, $1f
    dec d
    ld a, [bc]
    ld a, [hl]
    inc hl
    rrca
    ld c, $fb
    jr nz, jr_037_4863

    dec d
    inc a
    ld b, b
    rra
    dec de

jr_037_4849:
    ld a, [bc]
    sbc a
    ld e, l
    ld a, [$171f]
    inc a
    ld e, b
    sbc [hl]
    rra
    rla
    rrca
    rra
    ld e, $0f
    db $fd
    ld e, a
    ret nz

    rra
    inc d
    inc e
    add hl, bc
    rra
    ld d, $97
    dec c

jr_037_4863:
    ret nz

    ldh [$1f], a
    jr nc, jr_037_4868

jr_037_4868:
    ld a, $ff
    rst $38
    rst $38

jr_037_486c:
    rst $38
    push de
    rst $38
    db $fd
    xor d
    ld d, b
    ld d, l
    ld d, l
    rst $38
    cp $ed
    ld a, [$a8d4]
    ld d, h

jr_037_487b:
    nop
    nop
    ld d, l
    ld d, b
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $08fe
    rst $30
    xor d
    and b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr z, jr_037_486c

    ld d, h
    xor e
    xor d
    and b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    db $f4
    dec e
    ld [c], a
    xor d
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    ld a, [$d42b]
    ld d, a
    xor b
    cp [hl]
    ld b, b
    and b
    dec d
    nop
    rst $38
    rst $38

jr_037_48b8:
    dec d
    ld [$44bb], a
    ld a, a
    add b
    rst $38
    rst JumpTable
    xor l
    and c
    ld d, l
    nop
    rst $38
    rst $38
    ld d, l
    xor d
    rst $38
    rst $38
    ld a, e
    xor $bb
    add c
    ld d, l
    nop
    rst $38
    xor b
    ld d, a
    ld d, l
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld bc, $0055
    dec b
    ld a, [$758a]
    ld d, a
    xor b
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $30
    ld a, [hl+]

jr_037_48e9:
    xor d
    rst $38
    ld a, a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    rst $38
    ret nz

    ccf
    ld sp, hl
    ld b, $fd
    ld [bc], a
    cp $01
    nop
    nop
    nop
    nop
    and b
    nop
    nop
    rst $38
    rst $38
    jr nz, jr_037_48e9

    ld d, b
    xor a
    xor d
    ld d, l
    call nc, $fa2b
    dec b
    cp $01
    push af
    ld d, l
    rst $38
    cp $f5
    xor d
    ld d, l
    add b
    add b
    ld d, l
    ld d, l
    rst $38
    ld a, [$a8d5]
    ld d, b
    add b
    nop
    nop
    nop
    ld d, l
    ld d, l
    rst $38
    db $eb
    ld d, h
    jr nz, jr_037_492f

jr_037_492f:
    nop
    nop
    nop
    nop
    ld d, l
    ld d, l
    rst $38
    jr nz, jr_037_48b8

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
    ld bc, $c011
    rla
    add sp, $0b
    db $f4
    ld e, a
    and b
    ccf
    ld a, a
    add b
    ld a, $5d
    and b
    ld a, [hl-]
    ld bc, $0055
    db $fc
    inc bc
    cp $01
    cp $01
    db $eb
    ld d, a
    xor l
    ld d, e
    add [hl]
    nop
    ld [hl+], a
    db $dd
    dec b
    ldh a, [rNR34]
    ldh [$8a], a
    ld [hl], b

jr_037_4970:
    ld e, l
    and b
    xor d
    ld d, b
    jr nz, jr_037_4970

    nop
    nop
    ld d, a
    ld [hl], l
    nop
    ld d, l
    xor d
    ld d, l
    add b
    add b
    ld b, h
    ld d, l
    ld e, l
    nop
    ld d, l
    xor d
    ld d, l
    ld a, [hl+]
    sub c
    ld d, h
    sub l
    ld d, l
    ld d, l
    nop
    ld l, a
    or l
    ld e, e
    ld d, [hl]
    scf
    xor e
    ld d, a
    xor a
    ld d, l
    ld d, l
    nop
    rst $38
    rst $38
    cp $fd
    cp $fd
    push af
    ld a, [$5555]
    nop

jr_037_49a4:
    ld a, a
    cp [hl]

jr_037_49a6:
    rst $28
    cp e
    rst JumpTable
    ld [hl], l
    cp a
    xor l
    ld d, l
    ld d, l
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
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
    xor b
    add b
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $fffe
    inc d
    db $eb
    jr z, jr_037_49a6

    sbc [hl]
    ld h, c
    and b
    nop
    nop
    rst $38
    rst $38
    ld [bc], a
    db $fd
    ld d, l
    xor d
    cp d

Jump_037_49db:
    ld b, l
    ld e, a
    and b
    ccf
    ret nz

    adc [hl]
    ld [hl], b
    and b
    nop
    nop
    rst $38
    rst $38
    add b
    ld a, a
    ld d, b
    xor a
    and b
    ld e, a
    ret nc

    cpl
    add sp, $17
    db $f4
    dec bc
    add b
    ld bc, $ff00
    ld [$16f7], sp
    jp hl


    cpl
    ret nc

    ld d, [hl]
    xor b
    cpl
    ret nc

    cp l
    ld b, b
    sub $00
    nop
    dec d
    ldh [$2e], a
    ret nc

    ld a, [bc]
    ldh a, [$5d]
    and b
    xor h
    ld d, b
    jp c, $a220

    inc e
    call Call_037_5f10
    db $dd
    nop
    ld e, c
    ld [bc], a
    ld bc, $5580
    push af
    nop
    ld a, d
    inc [hl]
    jr nz, jr_037_49a4

    ld b, b
    db $10
    ld d, l
    ld d, l
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    ld e, a
    xor a
    db $dd
    rst JumpTable
    nop
    dec h
    ld c, c
    ld [de], a
    ld d, l
    ld d, l
    nop
    ld d, a
    xor a
    ld e, a
    ld e, a
    cpl
    ld e, a
    ccf
    ld e, a
    ld d, l
    ld d, l
    nop
    push af
    ld [$d5d5], a
    xor d
    push de
    ld d, d
    sub l
    ld d, l
    ld d, l
    nop
    ld [hl], a
    xor l
    ld l, e
    ld e, l
    xor d
    ld d, [hl]
    xor e
    ld d, l
    ld d, l
    ld d, l
    nop
    ld a, a
    xor e
    ld a, [hl]
    db $eb
    cp [hl]
    db $eb
    ld e, l
    ld l, e
    ld d, l
    ld d, l
    nop
    rst $38
    push de
    ld a, a
    or a
    db $ed
    ld d, [hl]
    xor e
    ld d, [hl]
    jr z, jr_037_4a70

jr_037_4a70:
    rst $38
    cp $01
    nop
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    add c
    ld [bc], a
    nop
    rst $38
    add hl, bc
    or $17
    add sp, -$01
    cp a
    ld b, b
    dec e
    ld [c], a
    inc h
    db $db
    rst $38
    dec b
    ld d, b
    nop
    inc a
    ret nz

    ld c, b
    add b
    push af
    rst JumpTable
    db $fd
    rst $38
    sbc a
    ld h, b
    ld h, a
    sbc b
    dec d
    ld d, l
    nop
    rst $10
    jr z, @+$01

    ld bc, $a9d4
    cp $bd
    or $55
    ld d, l
    nop
    ld e, e
    dec b
    jp nz, Jump_037_5030

    xor l
    jp nc, Jump_037_55a5

    ld d, l
    nop
    ld e, e
    ld d, l
    and b
    db $10
    ld b, b
    db $10
    add b
    ld d, b
    ld e, a
    rst $38
    nop
    ld a, d
    ld h, b
    ld d, l
    ld d, l
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld d, l
    ld d, l
    nop
    rst $38
    rst $38
    ld d, a
    xor e

jr_037_4ad7:
    ld e, a
    rst $38
    or [hl]
    ld e, a
    ld d, l
    ld d, l
    nop
    rst JumpTable
    and a
    pop de
    rst $38
    db $fc
    rst $38
    sbc e
    ld b, a
    ld d, l
    ld d, l
    nop
    ccf
    ld a, $7e
    ld a, h
    ld a, l
    cp b
    ld a, c
    or b
    ld b, b
    ld d, a
    nop
    dec d
    add b
    ld [hl-], a
    ld a, [bc]
    inc d
    xor b
    ld [$200a], sp
    ld c, d
    ld b, b
    ld [hl], h

Call_037_4b00:
    nop
    inc h
    ld b, d
    inc c
    xor c
    rlca
    ld [bc], a
    ld [bc], a
    add b
    ld [bc], a
    dec h
    ld b, h
    rlca
    ld d, l
    nop
    dec b
    ld b, b
    ld [hl+], a
    add b
    adc b
    ld bc, $4880
    sub c
    ld d, h
    nop
    nop
    ld d, l
    xor e
    ld e, a
    ld l, $01
    ld e, h
    inc bc
    cp b
    rlca
    ldh a, [rIF]
    ldh [$1f], a
    ld a, [bc]
    xor d
    nop
    pop bc
    ld a, $80
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr z, jr_037_4ad7

    nop
    ld bc, $fffe
    rst $38
    ld [bc], a
    db $fd
    rst $38
    rst $38
    ld bc, $02fe
    db $fd
    and b
    nop
    rrca
    ldh a, [$f0]
    ld e, l
    and b
    xor a
    ld d, b
    ld e, l
    and b
    dec sp
    ret nz

    ld a, a
    add b
    cp $00
    ld d, l
    ld d, l
    nop
    xor c
    ld d, h
    xor c
    ld d, h
    xor b
    ld d, b
    xor d
    push de
    ld d, a
    push de
    nop
    pop de
    xor d
    ld d, b
    ld [$8852], sp
    db $dd
    db $dd
    nop
    ld b, b
    ld b, b
    and b
    and h
    ld d, l
    ld d, l
    nop
    rst $28
    db $fd
    rst $30
    push bc
    and d
    pop de
    push af
    ei
    ld d, l
    ld d, l
    nop
    cp [hl]
    ei
    push de
    xor d
    ld d, l
    ld l, d
    cp a
    ei
    ld d, l
    ld d, l
    nop
    xor a
    ld d, a
    xor e
    ld d, [hl]
    dec l
    sub a
    jp c, $557f

    ld d, l
    nop
    ld b, e
    add e
    ld b, c
    inc h
    inc h
    add a
    add a
    add a
    ld d, h
    ld bc, $fe00
    push de
    xor [hl]
    sbc l
    ld bc, $80ae
    ld e, a
    ld b, b
    ld e, l
    ld b, b
    sbc d
    ld d, h
    dec d
    nop
    rst $28
    ccf
    ld d, a
    adc a
    add b
    cp a
    add b
    ld a, a
    ld e, $af
    ld d, b
    cp a
    nop
    ld bc, $2018
    inc e
    ld b, h
    ld [hl-], a
    ld b, b
    dec c
    ld d, l
    nop
    inc b
    jr c, jr_037_4be9

    db $10
    add hl, hl
    add b
    inc d
    ld b, b
    sub l
    ld d, h
    nop
    nop
    inc hl
    add e
    daa
    inc e
    inc bc
    jr c, jr_037_4bdf

    ld [hl], b
    rrca
    ldh [$1f], a
    ret nz

    ccf
    ld a, [bc]

jr_037_4bdf:
    xor b
    nop
    ret nz

    ccf
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_037_4be9:
    rst $38
    sub b
    ld l, a

jr_037_4bec:
    nop
    nop
    ld a, a
    add b
    and $19
    ld hl, sp+$07
    sub h
    ld l, e
    call nz, $d73f
    cpl
    adc c
    ld [hl], a
    nop
    rst $38
    nop
    adc b
    rla
    dec d
    ld [$f50a], a
    dec b
    ld a, [$f40b]
    add sp, $2b
    call nc, $2fe8
    ret nc

    ld d, l
    ld d, l
    nop
    ld_long $fff9, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    nop
    ld b, h
    db $10

jr_037_4c1f:
    add h
    pop af
    db $fc
    rst $38
    rst $38
    rst $38
    push de
    call nc, $9000
    inc b
    jr nz, jr_037_4bec

    ld hl, sp-$0a
    ld [$fdff], sp
    nop
    ld b, h
    ld d, l
    ld d, l
    nop
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld d, l
    ld d, l
    nop
    ld hl, sp-$60
    ld e, [hl]
    rst $08
    db $fd
    ld a, b
    or b
    ret nz

    ld d, l
    ld b, b
    nop
    ld a, [bc]
    dec b
    ld [bc], a
    add b
    ld b, b
    inc d
    inc d
    ld a, [hl+]
    ld a, [hl+]
    ld [hl], l
    ld [hl], h
    ld d, l
    push af
    nop
    ld hl, sp+$60
    or b
    jr nc, jr_037_4c1f

    add b
    ld b, e

jr_037_4c61:
    inc b
    nop
    rla
    rlca
    dec b
    inc bc
    ld [bc], a
    jr jr_037_4c72

    dec [hl]
    inc e
    inc h
    ld a, [bc]
    dec b
    adc b
    nop
    rst $38

jr_037_4c72:
    dec bc
    rst $30
    ld c, $04
    rst $30
    nop
    ld [bc], a
    ld [bc], a
    cp c
    dec hl
    add hl, de
    ld de, $cb14
    dec b
    nop
    ccf
    sbc $21
    db $f4
    cpl
    ret c

    ret nc

    ld h, b
    rra
    add b
    rst $38
    ld [hl+], a
    db $fd
    dec e
    cp $00
    ld [hl+], a
    ld b, e
    rst $38
    nop
    db $dd
    ld [hl+], a
    and $19
    db $f4
    rrca
    db $ec
    rla

Call_037_4c9e:
    cp a
    sub b
    ld a, a
    ccf
    nop
    dec e
    rst $38
    cp a

jr_037_4ca6:
    nop
    call nc, $1429
    ei
    ld c, b
    cp a
    adc a
    ld a, a
    add a
    cpl
    dec d
    ld [hl], a
    rst $38
    ret nz

    ccf
    ld bc, $5fee
    cpl
    inc e
    adc b
    nop
    ld e, a
    and b
    cp a
    ld b, b
    and b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    cp $00
    ei
    nop
    ld d, l
    ld d, l
    nop
    rst $38
    rst $38
    rst $28
    ld d, l
    xor d
    ld d, h
    xor c
    ld d, b
    ld d, l
    ld [hl], l
    nop
    rst $38
    rst $38
    rst $38
    ld c, a
    and b
    jr nz, jr_037_4c61

    dec d
    ld a, a
    nop
    cp $01
    rst $38
    rst $38
    rst $38
    rra
    nop
    dec c
    nop
    reti


    ld h, $b8
    ld b, a
    ld e, d
    and l
    xor [hl]
    ld d, c
    call nc, $3e2b
    ld bc, $1101
    nop
    ret nc

    db $dd
    jr nz, @+$2c

    rra
    ldh [$2e], a
    ld d, a
    xor b
    ld l, a
    sub b
    cp $00
    rst $38
    nop
    ld d, c
    dec d

jr_037_4d0d:
    nop
    ld a, a
    sbc [hl]
    ccf
    jr nz, jr_037_4d21

    inc d
    db $10
    ld d, [hl]
    add sp, -$04
    ld d, b
    rlca
    nop
    ret nz

    ret nz

    adc c
    add hl, bc
    inc d
    inc d

jr_037_4d21:
    jp z, $980a

    jr jr_037_4ca6

    rst $38
    db $fc
    nop
    ld bc, $7f01
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    and h
    and h

jr_037_4d33:
    jp hl


    add sp, $55
    ld d, l
    ld b, b
    add hl, bc
    inc bc
    dec b
    adc $23
    dec hl
    rra
    rla
    cpl
    ld l, c
    rla
    sbc h
    ld bc, $1d00
    rla
    ld e, l
    rst $38
    ld b, e
    db $fc
    jr jr_037_4d33

    rst $28
    sbc a
    ccf
    ld d, l
    rst $38
    rst $38
    ld b, $0d
    rst JumpTable
    cp $55
    ld d, l
    rst $38
    add b
    ld d, c
    ld a, a
    rra
    dec c
    ld [de], a
    adc l
    cp a
    rst $38
    rst $10
    rst $38
    rst $28
    ld d, a
    ld d, l
    ld d, l
    nop
    sub $fd
    ld a, [$fafd]
    push de
    ld a, [$55fd]
    ld d, l
    nop
    and d
    ld d, b
    and b
    ld b, b
    add b
    jr nz, jr_037_4d0d

    ld c, b
    push de
    pop af
    nop
    inc b
    ld a, [bc]
    dec h
    ld a, [hl+]
    ld bc, $f445
    nop
    nop
    and b
    ld c, d
    db $10
    di
    inc c
    ld e, c
    ld b, $18
    daa
    ld d, l
    ld a, [bc]
    db $fd
    ld b, l
    nop
    add b
    call nz, $8060
    call nz, $ffa1
    ld d, l
    nop
    ld bc, $9240
    ld b, b
    ld d, l
    ld e, l
    nop
    cp $bc
    ld h, b
    ret nc

    ret nz

    and b
    add b
    ld a, a
    ld d, [hl]
    nop
    add b
    ld [bc], a
    ld bc, $1c0f
    ret nz

    nop
    ld [bc], a
    inc bc
    inc bc
    ld d, l
    ld d, l
    xor e
    xor e
    ld e, a
    ld e, a
    ld a, [hl]
    ld a, [hl]
    ld l, a
    rst $28
    xor d
    ld d, d
    ret nz

    nop
    cp d
    ld e, l
    ld e, l
    cp a
    cp a
    db $fd
    db $fd
    cp $fe
    rst $30
    ld a, [c]
    ld l, b
    daa
    sub h
    or b
    ld [$ff15], sp
    ld b, e
    rrca
    rra
    dec sp
    ccf
    rst $28
    rra
    call $df77
    cp a
    ld a, a
    ld d, l
    ld d, l
    rst $38
    nop
    ld [bc], a
    ld bc, $156f
    ld c, e
    rlca
    inc bc
    ld d, l
    ld e, a
    rst $38
    add c
    add b
    inc b
    ei
    rst $28
    db $fc
    push de
    ld e, a
    rst $38
    rst $20
    ld d, d
    or [hl]
    ld a, a
    cp a
    push af
    rst $38
    rst $38
    rst JumpTable
    ccf
    ld d, l
    ld d, l
    nop
    xor $fd
    or $ff
    cp $fb
    rst $38
    rst $38
    ld d, l
    ld d, l
    nop
    add b
    jr nz, @-$7e

    ld b, b
    add d
    ld c, b
    add d
    ld c, b
    ld d, a
    push af
    nop
    ld a, [hl+]
    ld bc, $1242
    ld b, b
    ld e, a
    ld a, a
    nop
    dec a
    ld [$5704], sp
    rst $38
    nop
    inc b
    ld b, b
    ld [$5555], sp
    nop
    push af
    ld [$fedf], a
    rst JumpTable
    db $fd
    ld sp, hl
    ld a, [c]
    ld e, l
    push de
    nop
    ld b, b
    add b
    inc bc
    ld bc, $0101
    nop
    nop
    or [hl]
    add hl, bc
    inc h
    rra
    rrca
    ld [bc], a
    xor l
    ld b, a
    ld l, l
    ld de, $0c13
    dec b
    inc bc
    ld [hl+], a
    nop
    nop
    or c
    ld c, b
    ld b, h
    cp c
    nop
    cp $00
    rst $38
    add h
    ld hl, $df20
    inc b
    ei
    dec h
    ld a, [hl+]
    nop
    nop
    ld d, d
    ld bc, $01fe
    sbc b
    ld b, e
    ld a, [hl]
    add c
    nop
    db $76
    add c
    ld e, [hl]
    ld hl, $238c
    sbc b
    ld a, a
    add b
    inc sp
    inc b
    rst $38
    ld de, $8aff
    ld a, a
    dec h
    nop
    rst $38
    ld c, d
    rst $38
    db $10
    rst $38
    ld d, d
    rst $38
    ld a, [hl+]
    nop
    rst $38
    xor l
    rst $38
    scf
    rst $38
    rst $28
    rst $38
    cp a
    ld b, c
    rst $38
    jr nz, jr_037_4f1b

    rst $38
    ld l, a
    rst $38
    rst JumpTable
    ld b, l
    adc h
    nop
    dec bc
    nop
    db $fd
    nop
    and e
    and l
    add h
    nop
    ld bc, $0054
    and c
    nop
    ret nc

    nop
    xor b
    ld b, a
    add c
    inc hl
    call nc, $2900
    nop
    add b
    nop
    nop
    inc c
    nop
    ld a, b
    nop
    ret c

    nop
    ld [$fa00], a
    nop
    nop
    cp l
    nop
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    jp nz, $003d

    inc bc
    nop
    ld c, a
    nop
    cp a
    nop
    ld a, l
    nop
    nop
    ld hl, sp+$00
    or a
    ld b, b
    add sp, $17
    adc d
    ld a, a
    nop
    ld [de], a
    dec c
    dec b
    inc bc
    ld [bc], a
    ld bc, $0043
    nop
    ld e, h
    inc hl
    call nz, Call_037_6b3f
    cp a
    dec d
    rst $38
    nop
    ret nc

    cpl
    inc c
    rst $38
    rlca
    rst $38
    adc b
    ld [hl], a
    nop
    ld h, h
    sbc a
    nop
    rst $38
    ld c, c

jr_037_4f03:
    rst $38
    or [hl]
    rst $38
    nop
    call c, Call_037_5c23
    and e
    sbc h
    ld h, e
    ld [$24f7], sp
    inc d
    db $eb
    inc hl
    inc b
    ei
    inc hl
    ld d, b
    cp a
    nop
    inc b
    rst $38

jr_037_4f1b:
    ld b, b
    rst $38
    xor h
    rst $38
    ei
    rst $38
    xor b
    jr nz, jr_037_4f03

    ld b, e
    dec de
    ld b, l
    rlca

jr_037_4f28:
    rst $38
    call $ff34
    db $76
    ld c, e
    and b
    ld a, a
    ld b, c
    ld [hl], a
    rst $38
    ld b, [hl]
    adc a
    xor $00
    cp $00
    inc hl
    ld bc, $aa0a
    dec c
    nop
    push de
    nop
    ld [$2743], a
    push af
    ld b, a
    pop de
    inc hl
    ld h, b
    add b
    ld b, e
    and b
    nop
    ld d, b
    ld d, e
    ld h, b
    ld d, l
    adc a
    and b
    inc bc

jr_037_4f54:
    nop
    xor h
    inc bc
    ld d, b
    ld b, b
    rrca
    ld h, a
    inc c
    inc bc
    jr nc, @+$11

    ret nz

    ccf
    nop
    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    dec b
    ld a, [$259c]
    ld de, $27ee
    dec h
    ld hl, $ff01
    nop
    ld [$1ff7], sp
    rst $38
    xor a
    ld e, a
    ld d, a
    xor a
    ld [bc], a
    sbc c
    ld [hl], a
    ccf
    rst $08
    rrca
    rst $30
    cpl
    jp c, $2d90

    rst $38
    inc b
    ld e, c
    sub b
    rst $28
    ret nz

    ccf
    jr jr_037_4f28

    ld h, a
    add b
    ld c, c
    jr nz, jr_037_4f54

    rst $38
    ld a, a
    nop
    rst $38
    ld e, d
    rst $38
    cpl
    rst $38
    ld a, [hl+]
    rst $38
    ld e, a
    nop
    rst $38
    dec sp
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    db $e3
    ld a, [bc]
    rst $38
    or e
    rst $38
    di
    add c
    ld [hl], e
    ld a, $00
    add b
    ld bc, $5f0c
    and b
    ld a, [$f500]
    nop
    cp $80
    call $01fe
    ld a, b
    add a
    xor d
    nop
    ld d, a
    nop
    nop
    xor h
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld c, [hl]
    ld a, a
    ld [hl], h
    ret nz

    ccf
    call c, $22c1
    db $fd
    nop
    ld [bc], a
    or $09
    ld hl, sp+$07

jr_037_4fdd:
    ld [hl], b
    adc a
    xor h
    db $10
    ld d, e
    ld b, c
    cp [hl]
    cpl
    call c, $2023
    rst JumpTable
    add b
    ld [hl], a
    ld [bc], a
    db $fd
    add b
    ld a, a
    ret nz

    ccf
    ld bc, $fe10
    add hl, bc
    or $2b
    inc bc
    rst $38
    inc b
    rst $38
    ld b, e
    ld l, c
    ld b, e
    ld [$54f7], sp
    xor e
    dec l
    daa
    jr nz, jr_037_4fdd

    rst $38
    jr nz, jr_037_5047

    rst $38
    ld bc, $0aff
    inc bc
    rst $38
    dec b
    rst $38
    rra
    rst $38
    ld l, l
    ld c, l
    jr nz, jr_037_5079

    ld e, a
    ld b, c
    jr nz, jr_037_5072

    rst $38
    di
    add c
    ei
    or b
    ld b, e
    rst $30
    ld b, l
    inc hl
    xor d
    ld d, l
    ld d, l
    xor d
    add hl, bc
    ld a, [bc]
    push af
    nop
    rst $38
    pop hl
    and b
    ld e, a

Jump_037_5030:
    dec bc

jr_037_5031:
    ld a, [bc]
    add c
    ld h, c
    db $fc
    inc bc
    ld sp, hl
    ld b, $fa
    dec b
    xor $20
    db $f4
    dec bc
    inc h
    xor a
    rst $38
    ld e, a
    rst $38
    or a
    nop
    ld e, l
    ld e, b

jr_037_5047:
    and a
    sub $29
    and e
    ld e, a
    ret z

    ld b, h
    scf
    cpl
    add sp, -$01
    ret nc

    ld b, e
    rla
    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    rst $38
    dec h
    rst $38
    ld bc, $00fe
    jr nc, jr_037_5031

    sbc a
    rst $38
    dec bc
    rst $38
    ld d, b
    rst $38

Jump_037_5068:
    ld h, b
    cp $31
    ld b, b
    dec d
    rst $38
    ld e, $ff
    rst $28
    nop

jr_037_5072:
    rst $38
    ld a, [de]
    rst $38
    dec b
    rst $38
    ld h, $ff

jr_037_5079:
    db $fd
    pop bc
    sub c
    jr nz, @-$1e

    ldh [$e4], a
    xor $fe
    ld hl, $80c0
    dec l
    db $fc
    ld hl, sp+$0c
    inc c
    ld c, h
    db $ec
    ld a, b
    db $fc
    ld hl, $7f80
    and b
    ld e, $0f
    ld h, h
    db $10
    adc $c6
    db $ec
    rrca
    ld a, [bc]
    rra
    rrca
    rst $28
    ld h, a
    ld hl, $f7e7
    ld l, c
    ldh [$f0], a
    ei
    ld sp, hl
    ld h, c
    ld a, [bc]
    ld a, [$f9f9]
    ld hl, sp+$6f
    rrca
    add hl, sp
    rst $08
    dec b
    rst $28
    rst $28
    ld hl, sp-$44
    ld a, $21
    inc a
    ld l, a
    add c
    and b
    rrca
    adc a
    add $6f
    xor $e6
    daa
    db $10
    db $d3
    db $e3
    di
    add b
    inc bc
    add e
    inc sp
    ld [hl], e
    add b
    jr nz, jr_037_50cf

jr_037_50cf:
    rst $38
    ld a, [bc]
    push af
    ld d, a
    xor b
    xor e
    add hl, de
    ld d, h
    inc b
    ei
    add hl, hl
    ld hl, $fe01
    inc hl
    add hl, hl
    add sp, $17
    ld c, b
    nop
    ld l, l
    cp [hl]
    ld b, c
    and a
    ld [$55aa], sp
    ld b, l
    cp d
    ld h, a
    add b
    ld a, a
    ld b, b
    nop
    cp a
    ld [$c415], a
    dec sp
    ret nc

    cpl
    rst JumpTable

jr_037_50f9:
    nop
    dec sp
    rst $08
    ccf
    db $e3
    ld e, a
    jp nc, $e52f

    nop
    dec de
    inc d
    db $eb
    ld [bc], a
    db $fd
    or b
    rst $38
    cp b
    nop
    rst $38
    rst JumpTable
    rst $38
    db $fd
    rst $38
    inc hl

jr_037_5112:
    rst $38
    rst $10
    nop
    rst $38
    rrca
    rst $38
    db $10
    rst $28
    ld b, d
    rst $38
    rlca
    nop
    ei
    ld hl, $d6ff
    rst $38
    ld l, a
    rst $38
    ld [hl], d
    ld b, [hl]
    rst $38
    jr nz, @+$19

    rst $38
    inc c

jr_037_512c:
    ld b, l
    jr nz, jr_037_5186

    jr nc, @+$01

    xor a
    add a
    jr nz, jr_037_512c

    rst $38
    ld e, a
    rst $38
    ld d, h
    rst $28
    set 7, [hl]
    ld b, b
    db $fc
    ld b, d
    db $fc
    ld hl, sp-$17
    xor a
    jr z, @+$22

    ld a, h
    ld b, d
    ld a, b
    jr c, jr_037_50f9

    jr nz, jr_037_5112

    db $ec
    ld hl, $eec4
    adc $e6
    inc bc
    ld c, b
    ld b, a
    xor a
    rrca
    rlca
    inc hl
    rst $30
    rst $38
    scf
    ld [de], a
    ld h, a
    sbc a
    rrca
    xor a
    ei
    ld sp, hl
    ld h, c
    ldh a, [rNR10]
    ld sp, hl
    ldh [$f0], a
    xor a
    cp [hl]
    cp h
    and [hl]
    db $fc
    ld [bc], a
    and $ec
    ld h, $cc
    ld [$af0c], sp
    xor $42
    and $61
    ld h, [hl]
    rst $20
    ld b, e
    ld b, e
    xor a
    di
    ld h, c
    ld [hl], e
    ld hl, $6120
    inc sp

jr_037_5186:
    ld bc, $af81
    ld h, b
    nop
    nop
    rrca
    ld b, h
    add e
    ld h, b
    ld d, b
    ld d, c
    ld d, d
    add a
    ldh [$e1], a
    ld b, [hl]
    ld [c], a
    inc h
    ld b, e
    ld b, h
    add b
    nop
    dec bc
    sub a
    ld h, b
    jr nz, jr_037_5203

    ld h, d
    add a
    ldh a, [$f1]
    ld a, [c]
    di
    add e
    inc h
    db $f4
    push af
    rra
    ld de, $7183
    and [hl]
    add e
    ld bc, $0206
    inc de
    add e
    inc b
    dec b
    rra
    ld [de], a
    ret nz

    db $10
    inc h
    ld de, $3f12
    inc d
    dec d
    rra
    add hl, de
    jr nz, @+$23

    inc b
    ld [hl+], a

Jump_037_51c9:
    inc hl
    ld [$d624], sp
    rra
    add hl, de
    ld a, e
    ld a, h
    inc b
    ld [hl], d
    ld [hl], b
    ld h, e
    ret nz

    pop bc
    rra
    add hl, de
    ret nc

    pop de
    inc b
    jp nc, $dcdb

    db $dd
    sbc $1f
    add hl, de
    add sp, -$17
    inc b
    ld [$eceb], a
    db $ed
    xor $1f
    inc d
    jr nc, @+$33

    add b
    ld b, h
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    add c
    sub b
    rra
    inc d
    ld b, b
    ld b, c
    ld h, l
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    inc h

jr_037_5203:
    dec c
    ld c, $1f

jr_037_5206:
    inc d
    ld [hl-], a
    ld b, e
    ld h, l
    add hl, de
    ld a, [de]
    ld [$1c82], sp
    dec e
    ld e, $1f
    inc d
    ld b, d
    add e
    inc sp
    nop
    inc [hl]
    add e
    jr z, jr_037_5244

    add d
    dec hl
    inc l
    dec l
    ldh [rNR34], a
    inc c
    rra
    add hl, bc
    jr nz, jr_037_525b

    ld [hl], $37
    jr c, jr_037_5263

    inc b
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $1f
    ld d, $45
    ld b, [hl]
    nop
    ld b, a
    ld c, b
    add d
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    add b
    rra
    dec d
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_037_5244:
    add d
    add d
    ld e, d
    ld [$5c5b], sp
    ld e, l
    ld e, [hl]
    rra

jr_037_524d:
    dec d
    ld h, h
    ld h, l
    ld h, [hl]
    nop
    ld h, a
    ld l, b
    ld l, b
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    add b

jr_037_525b:
    rra
    inc d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b

jr_037_5263:
    ld a, c
    inc b
    ld a, d
    add c
    add c
    ld a, l
    ld a, [hl]
    rra
    inc d
    add e
    add h
    nop
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    jr nz, jr_037_5206

    adc [hl]
    rra
    inc de
    sub d
    sub e
    sub h

jr_037_527f:
    sub l
    sub [hl]
    nop
    sub a
    sbc b
    sbc c
    add c
    sbc e
    add d
    add d
    sbc [hl]
    add b
    rra
    db $10
    sub d
    and b
    and c
    and d
    and e
    and h
    and l
    ld [bc], a
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    ccf
    xor [hl]
    add b
    rra
    inc c
    sub c
    sub b
    sub c
    inc bc
    or b
    or c
    or d
    nop
    ld d, $17
    add c
    or l
    or [hl]
    or a
    cp b
    cp c
    ld b, $ba
    add d
    cp l
    cp l
    cp [hl]
    rra
    inc c
    ld a, $92
    nop
    sub e
    sub h
    sub l
    ld d, e
    ld h, $27
    sbc c
    add c
    ld bc, $c7c6
    ret z

    ret


    jp z, $81cb

    jr nz, jr_037_524d

    rra
    inc c
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    jr nz, jr_037_527f

    xor b
    ld [hl], $d7
    rst $10
    ret c

    reti


    jp c, $e30c

    db $e4
    push hl
    and $1f
    inc c
    ld [hl], $b2
    or e
    ld [bc], a
    or h
    or l
    or [hl]
    or a
    cp b
    add c
    ld a, c
    rst $20
    ldh [$2e], a
    ld b, b
    rra
    ld c, $c2
    jp $c5c4


    add $32
    rst $00
    ret z

    sbc c

jr_037_5300:
    ld h, b
    or e
    push de
    rra
    ld c, $d2
    dec b
    db $d3
    call nc, $d6d5
    rst $10
    cp e
    cpl
    ld a, a
    ld b, b
    or h
    rra
    dec c
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $44
    rst $20
    sbc [hl]
    jp nz, Jump_037_5f3f

    inc h
    jp $80c4


    rra
    inc c
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $40
    rst $30
    ld a, [hl]
    ld a, a
    push bc
    ld c, a
    ld l, a
    call z, $20cd
    db $d3
    call nc, $0c1f
    nop
    ld bc, $8202
    inc b
    nop
    dec b
    add d
    cp h
    rlca
    jr @+$1d

    cp h
    ld l, $01
    ld c, c
    ld e, b
    ld e, c
    add b
    add c
    add d
    add d
    rra
    inc c
    nop
    call $cfce
    add d
    xor l
    xor [hl]
    sbc d
    cp e
    nop
    sbc h
    sbc l
    nop
    adc a

jr_037_5360:
    or $9f
    rst $08
    rst $38
    jr nc, jr_037_5300

    or c
    add hl, hl
    rra
    inc c
    ret


    jp z, $cccb

    nop
    cp l
    cp [hl]
    inc bc
    rst $30
    xor h
    xor l
    ld a, [hl+]
    adc $03
    ld b, $af
    rst JumpTable
    rrca
    ld a, [hl+]
    pop bc
    add hl, hl
    rra
    inc c
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    rrca
    rrca
    nop
    ldh [$e0], a
    ld l, c
    cp $25
    cp a
    rst $28
    rra
    inc c
    ld l, c
    pop de
    or b
    rrca
    rra
    inc c
    ld e, a
    nop
    ld h, b
    ld [$0720], sp
    ld a, [bc]
    rlc b
    inc c
    rra
    dec bc
    rst $38
    jr z, jr_037_53c8

    inc de
    inc sp
    rst $20
    rra
    rla
    ld e, $0a
    rra
    ld hl, $ff40
    rra
    ld [hl], h
    sub l
    ld e, $1a
    cp a
    ld b, l
    ld h, b
    rra
    inc e
    ld b, d
    rst $38
    rra
    ld d, $bb
    ld e, $18
    ld b, b

jr_037_53c6:
    ld e, c
    ret nz

jr_037_53c8:
    rra
    ld a, [de]
    add h
    rst $38
    rra
    ld d, $b8
    rra
    ld e, $c0
    ld e, $1c
    ld l, c
    rra
    inc e
    ld h, b
    cp $1e
    dec de
    jr z, jr_037_5428

    inc e
    jr jr_037_5360

    rra
    rrca
    ld d, c
    inc b
    sbc [hl]
    ld b, e
    ld c, $0e
    ld l, c
    ld a, [hl]
    ld h, e
    nop
    dec bc
    inc b
    xor [hl]
    add b
    inc c
    ccf
    ld b, $79
    inc e
    rrca
    ld b, b
    dec b
    rst $08
    ld b, b
    ccf
    inc b
    ld b, $3e
    rst JumpTable
    ld b, b
    rra
    inc c

jr_037_5402:
    ld a, $07
    rlca
    sbc a
    jr nz, jr_037_53c6

    ld a, [de]
    inc c
    rra
    add hl, bc
    inc bc
    call $e09f
    add hl, bc
    add hl, bc
    rra
    db $10
    ld e, $0a
    ld [$131f], sp
    ld l, a
    rlca
    ld a, [hl]
    cp a
    ld [$1f20], sp
    inc de
    jr nz, jr_037_5402

    cp h
    ld e, [hl]
    ld [$1f3d], sp

jr_037_5428:
    inc d
    ld [hl], l
    ldh [rSB], a
    ld bc, $1fba
    ld de, $1e07
    inc c
    ld [hl+], a
    rra
    inc c
    dec b
    rra
    dec h
    ld b, d
    dec c
    ld b, d
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    and b
    jr z, @+$44

    rra
    inc c
    nop
    add e
    add h
    add l
    add d
    xor h
    ret nz

    ld c, $0f
    jr z, jr_037_545b

    dec c
    inc bc
    ld a, [bc]
    add b
    nop
    dec bc
    xor c
    xor d
    xor e
    ld bc, $8282

jr_037_545b:
    xor a
    add [hl]
    add a
    adc b
    adc c
    inc bc
    ld a, [bc]
    add b
    rra
    inc c
    cp c
    cp d
    cp e
    cp h
    ret nc

    cp a
    ret c

    nop
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    add e
    ret nz

    add b

Call_037_5477:
    rra
    inc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ld b, b
    sbc b
    rra
    ld de, $9b9a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    nop
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    inc e
    sub [hl]
    sub a
    sbc b
    rra
    rrca
    nop
    jr nz, @+$2c

    inc b
    rlca
    ld h, b
    ld [bc], a
    nop
    dec c
    nop
    nop
    dec bc
    dec b
    db $eb
    sbc a
    ld de, $000c
    ld c, $06
    sbc a
    inc bc
    ret nz

    rra
    rla
    rst $28
    cp $1f
    inc de
    inc sp
    inc b
    add d
    rra
    jr jr_037_54c4

jr_037_54c4:
    jr nz, jr_037_54e6

    nop
    rst $38
    pop bc
    cp $00
    ld hl, sp+$00
    ldh a, [rNR11]
    ld [$3800], sp
    inc h
    nop
    db $e3
    inc bc
    jr nz, @+$32

    dec bc
    inc bc
    dec hl
    ldh [$fc], a
    nop
    inc c
    nop
    ld d, e
    inc b
    nop
    dec c
    ld b, $21

jr_037_54e6:
    ld b, $07
    ld hl, $7e42
    inc b
    ld b, c
    adc d
    ld c, h
    ret nz

    ld e, a
    add b
    nop
    add b
    nop
    dec bc
    inc bc
    nop
    rrca
    ld bc, $077e
    ld [$12c2], sp
    inc c
    nop
    inc c
    rlca
    ld hl, sp-$01
    nop
    ld hl, $40f8
    inc b
    ld e, $17
    ld a, [hl]
    ldh a, [$0e]
    cp $00
    ldh [$50], a
    db $10
    ld a, [de]
    inc d
    rlca
    ld b, b
    rrca
    rrca
    rra
    rra
    ld b, h
    rst $38
    nop
    add hl, bc

Call_037_5520:
    ld a, a
    ld a, a
    ccf
    nop
    add hl, bc
    ld a, a
    ld a, b
    nop
    rst $38
    nop
    cp $01
    add b
    ld a, a
    ld b, b
    ccf
    nop
    jr nz, jr_037_5552

    nop
    rra
    db $10
    rrca
    ld [$8407], sp
    ld h, c
    nop
    rlca
    inc b
    inc bc
    ld hl, $0003
    add b
    ld hl, $0102
    rrca
    rrca
    ccf
    ccf
    rst $38
    ld b, h
    rst $38
    dec h
    ld bc, $0001
    nop

jr_037_5552:
    dec d
    ld [$0000], sp
    pop hl
    ldh [$f8], a
    ld hl, sp-$02
    cp $ff
    rst $38
    ld bc, $7f7f
    ccf
    ccf
    rra
    rra
    rrca
    ld b, b
    ld e, l

jr_037_5568:
    rlca
    ld b, b
    inc bc
    ld b, b
    ld a, a
    ld h, b
    add b
    ld h, e
    add l
    ld b, b
    ret nz

    ret nz

    add sp, -$20
    jr nz, jr_037_5568

    add b
    ret nz

    daa
    db $fd
    jr nz, jr_037_559e

    jr jr_037_5598

    adc h
    adc h
    nop
    ld l, [hl]
    ld l, [hl]
    ccf
    ccf
    rra
    rra
    dec c
    dec c
    nop
    ld c, $0e
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $c101
    db $fd
    ld h, b
    rst $38

jr_037_5598:
    nop
    cp $00
    ldh a, [rNR10]
    inc c

jr_037_559e:
    add b
    nop
    rrca
    inc bc
    nop
    rrca
    nop

Jump_037_55a5:
    ccf
    nop
    cp $00
    nop
    db $fd
    nop
    db $f4
    nop
    ret z

    nop
    ld h, b
    add b
    ld d, c
    jr jr_037_55b5

jr_037_55b5:
    ld a, b
    nop

jr_037_55b7:
    ld [hl], b
    nop
    ld [hl], h
    jr jr_037_55bc

jr_037_55bc:
    inc [hl]
    inc b
    ld a, a
    and b
    ld bc, $0700
    ld [$0e00], sp
    nop
    inc a
    ld e, c
    ld a, [c]
    nop
    add sp, $00
    nop
    and h
    inc b
    add b
    nop
    jr nz, @+$22

    add b
    ld [c], a
    inc h
    db $fd
    ld a, $01
    ld [bc], a
    inc bc
    ld hl, $0004
    rlca
    inc e
    rra
    ld a, b
    ld a, a
    ld hl, sp-$01
    ldh a, [$60]
    rst $38
    add hl, hl
    ld d, e
    nop
    add hl, bc

jr_037_55ed:
    ld a, d
    and e
    ldh [rP1], a
    inc bc
    nop
    jp $03c0


    ret nz

    ld bc, $10c2
    inc bc
    jp nz, $2501

    ret nz

Call_037_55ff:
    nop
    pop bc
    nop
    adc b
    inc hl
    ld b, b
    db $10
    db $10
    dec sp
    ld b, b
    ld b, b
    jr z, @+$62

    jr z, jr_037_5633

    nop
    db $10
    ld bc, $0702
    ld [$000f], sp
    db $10
    ld e, $21
    ccf
    ld bc, $063a
    ld h, h
    ld b, d
    ld e, l
    push af
    ld [$0408], sp
    inc b
    inc h
    nop
    add b
    inc hl
    nop
    ret nz

    jr jr_037_55ed

    ld b, b
    add b
    sub b
    nop
    inc d
    inc [hl]

jr_037_5633:
    jr nz, jr_037_5635

jr_037_5635:
    jr nz, jr_037_55b7

    and b
    nop
    nop
    xor b
    ld c, b
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    nop
    add b
    inc hl
    add sp, $18

jr_037_5646:
    ld h, b

jr_037_5647:
    sub b
    ldh [$80], a
    nop
    dec b
    add b
    add b
    ld b, b
    ld b, b
    ret nz

    inc h
    nop
    ret nz

    ld e, l
    nop
    nop
    ld l, b
    rst $38
    ld bc, $1068
    ld [hl], b
    nop
    ld [hl], b
    rst $20
    nop
    ld [$ef45], sp
    nop
    jr jr_037_5646

    rst JumpTable
    sbc $01
    ld [$2f80], sp
    ld l, b
    ld b, b
    ld bc, $3847
    ccf
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    add d
    dec bc
    db $10
    ldh a, [rIF]
    jp $003c


    dec c

jr_037_5681:
    ld [$211f], sp
    rst $38
    cp $60
    jr jr_037_568c

    db $fc
    ldh a, [rIF]

jr_037_568c:
    inc h
    db $10
    ld b, h
    cp $1f
    ld [$0000], sp
    pop bc
    ld a, [bc]
    ld [$f00f], sp
    and b
    rrca
    db $10
    rrca
    ld de, $c208
    sbc $c0
    ret nc

    call nz, $cc00
    jp nz, $bce6

    cp [hl]
    nop
    ret c

    nop
    db $10
    ld h, h
    nop
    jr jr_037_572d

    ld d, b
    ld a, a
    ld a, a
    inc bc
    inc bc
    ld sp, $ff80
    ld bc, $6f10
    ld b, b
    inc bc
    rst $38
    rlca
    ld bc, $8a58
    rra
    jr nz, jr_037_5647

    rst $38
    ret nz

    ld bc, $c020
    daa

jr_037_56cd:
    jr z, jr_037_56cd

    nop
    nop
    ld hl, sp+$03

Jump_037_56d3:
    di
    inc bc
    inc bc
    ld a, e
    ld a, e
    and c
    xor [hl]
    ld h, b
    cp $0d
    ld e, b
    ret nz

    nop
    jr nz, @+$41

    ret z

    ld b, b
    nop
    db $fc
    inc b
    ld [hl], d
    ld d, e
    add b
    add a
    ldh [$2e], a
    nop
    ret nc

    ld e, $c0
    ld e, [hl]
    and b
    cp [hl]
    ld b, d
    ld a, [hl]
    jr nc, @-$7a

    db $fd
    rrca
    add hl, de
    dec e
    jr jr_037_5681

    add d
    ld b, h
    ld a, h
    ret nz

    rra
    add hl, hl
    cpl
    jr z, jr_037_5786

    nop
    sbc a
    add b
    daa
    ldh [$2a], a
    dec bc
    ld hl, sp-$3e
    ld [$e8e0], sp
    ld [$05fc], sp
    ld [$280f], sp
    rst $38
    pop bc
    add hl, bc
    ld [$b81f], sp
    ld [$ff07], sp
    ld a, a
    and b
    ld bc, $0f08
    jp z, $fc48

    rst $38
    di
    rst $38

jr_037_572d:
    rst $28
    jr c, @+$01

    rst $20
    dec e
    ld [$383f], sp
    ld bc, $8020
    add a
    nop
    nop
    cp $04
    db $fc
    inc de
    di
    ld c, a
    rst $08
    ccf
    nop
    ccf
    db $fc
    db $fc
    ldh a, [$f0]
    jr c, jr_037_574b

jr_037_574b:
    ccf
    nop
    nop
    cp a
    add b
    cp a
    add b
    sbc a
    add b
    rra
    ld l, b
    nop
    ld bc, $a010
    ld b, c
    cp $01
    jr jr_037_575f

jr_037_575f:
    nop
    ld a, c
    nop
    ld a, b
    ld a, l
    ld a, h
    dec e
    inc e
    ld a, l
    ld a, h
    ld h, b

jr_037_576a:
    ld d, b
    ld h, b
    rst $08
    ld de, $c01f

jr_037_5770:
    ld l, c
    ld hl, sp+$00
    ei
    inc bc
    add b
    ld bc, $f010
    nop
    ldh a, [rP1]
    ld a, [c]
    ld [bc], a
    pop af
    nop
    ld bc, $00f8
    ld a, [c]
    inc bc
    ret nz

jr_037_5786:
    nop
    rra
    ld h, b
    db $10
    ld b, h
    ld sp, $1006
    db $10
    rra
    ld [c], a
    inc hl
    db $fc
    ld [de], a
    inc b
    rst $38
    ld bc, $100f
    add hl, bc
    ld sp, hl
    inc d
    add hl, sp
    ld a, a
    db $10
    add b
    ccf
    ret nz

    ld c, [hl]
    ld [$ff80], sp
    ld b, b
    ld a, a
    nop
    jr nz, jr_037_576a

    db $10
    rst JumpTable
    nop
    rst $28
    ld [$23ef], sp
    db $10
    rst $30
    ld e, h
    ld d, b
    jr nz, @+$01

    jr @+$28

    add hl, bc
    ld b, h
    ld d, c
    nop
    ld b, b
    rst $38
    xor $0f
    db $f4
    rlca
    ld [hl], b
    inc bc
    nop
    ld a, [hl-]
    add e
    ld e, d
    jp $c11c


    dec l
    pop hl
    inc [hl]
    ld c, $e0
    cp c
    add hl, hl
    ld bc, $3f08
    nop
    add hl, bc
    ld bc, $00ff
    add $e6
    call z, $fcee
    db $fc
    ld sp, hl
    db $fc
    ld bc, $f8f3
    di
    db $f4
    rst $20
    ldh a, [$e7]
    rra
    jr z, jr_037_5770

    nop
    jr nc, jr_037_5801

    rrca
    sbc $df
    cp [hl]
    cp a
    ld bc, $0010
    cp h
    cp a
    inc a
    ccf
    ld a, l
    ld a, a
    ld a, l

jr_037_5801:
    ld a, a
    cp e
    ld h, l
    db $10
    ld h, b
    ld c, h
    add hl, bc
    ld bc, $d110
    ld de, $b201
    ld h, c
    ld e, e
    jr jr_037_5852

    ld e, $07
    ld [$f818], sp
    inc b
    cp $06
    ld hl, sp+$00
    ld c, $f0
    or a
    or b
    and a
    and e
    rlca
    add a
    pop bc
    dec a
    ld de, $2051
    ld bc, $05f8
    db $fc
    ld bc, $0801
    rlca
    nop
    db $fc
    ld [bc], a
    cp $02
    jr nc, jr_037_5841

    ld a, l
    ld [de], a
    add hl, sp
    jr nz, jr_037_583d

jr_037_583d:
    ldh [$1f], a
    ld hl, sp+$07

jr_037_5841:
    nop
    rst $38
    scf
    ret z

    inc b
    inc sp
    call z, $b649
    ld [bc], a
    db $db
    add hl, bc
    cp b
    ld d, a
    nop
    cp $21

jr_037_5852:
    rst $38
    jr nz, @-$1e

    cpl
    add sp, $0f
    nop
    ldh a, [rNR22]
    db $f4
    rlca
    ld hl, sp+$0b
    ld hl, sp+$03
    ld b, b
    ld a, [$0801]
    nop
    rst $30
    inc b
    rst $30
    ld [$40fb], sp
    nop
    ld bc, $0828
    ei
    inc d
    rst $30
    ld a, [bc]
    ei
    add b
    inc hl
    add hl, bc
    ld hl, sp+$02
    ld a, [$f909]
    ld [bc], a
    ld a, [c]
    nop
    ld de, $20f1
    rst $38
    jr nc, @+$01

    jr c, @+$01

    ld b, b
    sbc h
    ld bc, $4e08
    ld l, a
    ld c, [hl]
    ld l, a
    ld b, $27
    nop
    ld d, $f0
    rlca
    pop af
    ld b, $f0
    inc b
    pop af
    nop
    inc b
    pop af
    inc d
    pop af
    add hl, bc
    jp hl


    dec bc
    db $e3
    add b
    ld e, a
    add hl, bc
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    sbc c
    sbc a
    nop
    db $e3
    db $e3
    db $fc
    db $fc
    db $fc
    rst $38
    rrca
    add sp, $01
    cpl
    ldh [$5f], a
    ret nz

    cp a
    add b
    ld a, a
    rst $10
    add hl, bc
    ld bc, $401f
    rra
    ret nz

    nop
    ret nz

    add b
    and l
    ld [$fe00], sp
    rst $38
    xor $fe
    xor $ee
    adc $ee
    rrca
    add $de
    ld a, l
    ld a, a
    nop
    ld b, b
    cp a
    db $10
    rst $00
    ld a, [hl+]
    rst $10
    ld a, [hl-]
    inc d
    nop
    rst $38
    ld [bc], a
    ld bc, $0308
    ld bc, $0e38
    ldh a, [rP1]
    ld e, $e0
    ld a, a
    add c
    rst $08
    jr nc, jr_037_5903

    ldh a, [rSC]
    rrca
    ldh a, [$1f]
    ldh [rNR34], a
    pop hl
    dec h
    inc de
    ccf
    dec b
    ccf
    cp a
    cp a

jr_037_5903:
    cp a
    ccf
    ld bc, $bf18
    inc h
    ld [de], a
    ret nz

    ret c

    add hl, de
    ld bc, $cf28
    rrca
    rst $08
    cpl
    daa
    rst $00
    ld bc, $f717
    rlca
    rst $30
    inc bc
    di
    dec bc

jr_037_591d:
    jr jr_037_5929

    nop
    db $e4
    ccf
    rst $28
    ld a, $fe
    ccf
    db $fc
    ccf
    nop

jr_037_5929:
    call c, Call_037_7e3f
    sbc a
    sbc [hl]
    rst $38
    rst JumpTable
    rst $38
    ld h, b
    db $fc
    ld l, $21
    ld bc, $fd18
    dec b
    ld sp, hl
    ld bc, $0001
    di
    inc b
    db $f4
    inc de
    di
    rlca
    rst $20
    rrca
    nop
    rst $28
    ld l, a
    rst $28
    rst $08
    rst $08
    rst JumpTable
    rst JumpTable
    nop
    db $10
    inc b
    nop
    ld [hl], b
    ld c, d
    ld a, [bc]
    ldh [rP1], a
    ldh [rSC], a
    nop
    ret nz

    ld [bc], a
    and b
    nop
    ld [hl], b
    daa
    daa
    ld h, a
    nop
    ld h, a
    ld d, a
    ld b, a
    ld d, a
    ld b, a
    ld [hl], $07
    halt
    rla
    db $e4
    ld b, $cd
    dec c
    dec hl
    db $e3
    dec de
    nop
    db $d3
    dec de
    swap e
    and e
    scf
    add a
    ld [hl], a
    inc bc
    ld b, a
    rst $30
    sub a
    rst $20
    rlca
    db $fc
    ld [$010a], a
    jr nz, jr_037_5988

jr_037_5988:
    ld sp, hl
    rst $38
    ld hl, sp-$02
    ld hl, sp-$02
    rra
    add b
    ld b, $3f
    and b
    cp a
    add b
    ccf
    inc d
    ld de, $0aed
    rst $38
    jr jr_037_591d

    add b
    add b
    xor e
    ld [$4800], sp
    cpl
    ccf
    add a
    dec c
    sbc a
    sub e
    cp a
    add c
    ld a, [c]
    ld [de], a
    ld bc, $f018
    scf
    inc c
    or b
    ld bc, $6010
    ld h, a
    ld [hl], h
    rlca
    ld a, [de]
    jr c, @+$01

    inc e
    db $fc
    nop
    ld a, c
    ld sp, hl
    ld a, [c]
    di
    ld [c], a
    db $e3
    ret z

    call $1107
    dec e
    jr nz, jr_037_5a0a

    db $10
    ld l, l
    dec bc
    ld l, c
    ld [de], a
    ld bc, $0310
    rra
    rst $38
    sbc a
    rst $38
    ld e, a
    ld a, a
    dec a
    ld hl, $223f
    db $76
    ldh [rBGP], a
    ld [$6045], sp
    ld a, e
    add hl, bc
    rst JumpTable
    ld bc, $8008
    add hl, bc
    cp $00
    rst $38
    rst $38
    or $7f
    or b
    cp h
    ld b, e
    ei
    nop
    inc hl
    ei
    inc hl
    db $db
    dec bc
    rst $10
    rlca
    jp nc, $1200

    call nz, $8a44
    ld a, [bc]
    add b
    nop
    sbc [hl]
    nop
    sbc [hl]
    cp b

jr_037_5a0a:
    cp b
    ld [hl+], a
    ld [hl+], a
    ld [hl], h
    db $76
    ld [hl], b
    nop
    db $76
    ldh a, [$f6]
    ldh a, [$f6]
    pop af
    rst $30
    ldh a, [$c0]
    nop

jr_037_5a1b:
    ld [$2259], sp
    cp $fe
    db $fd
    db $fc
    ld e, l
    ld e, h
    ld [hl-], a
    db $e3
    ld [hl+], a
    cp e
    inc sp
    ld d, d
    jr nz, jr_037_5a1b

    rrca
    ld bc, $2f08
    ld [$0fcf], sp
    rst JumpTable
    rra
    ld bc, $5f08
    cp a
    ccf
    nop
    ld hl, sp-$02
    ld a, [$f8fe]
    db $fc
    ld sp, hl
    db $fd
    nop
    pop af
    db $fc
    push af
    db $fc
    pop af
    ld hl, sp-$0d
    ld a, [$e9ec]
    ld b, e
    dec [hl]
    ld d, b
    ld bc, $e030
    and $68
    adc [hl]
    ld h, l
    ret nz

    ret nz

    jp nz, $08df

    cp $30
    ld [bc], a
    db $fc
    dec b
    nop
    sbc l
    ld a, [bc]
    ldh a, [rP1]
    db $10
    ret z

    ld c, a
    add b
    cp [hl]
    ld bc, $037d
    nop
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    rst JumpTable
    ld a, a
    nop
    nop
    inc a
    nop
    cp b
    add e
    or b
    add a
    and b
    db $10
    adc a
    add b
    sbc a
    ld l, b
    add hl, bc
    cp a
    rst $38
    nop

jr_037_5a8a:
    ld bc, $0000
    nop
    db $fc
    ld b, $fe
    ld [bc], a
    ld a, [$060a]
    ld a, [$f616]
    ld l, $ee
    pop hl
    ld [hl], l
    ld c, c
    inc e
    ld bc, $fe00
    ld bc, $03fc
    db $fc
    inc bc
    ld hl, sp+$07
    ld [bc], a
    ld sp, hl
    rlca
    add c
    add c
    add a
    add a
    add a
    ld de, $003f
    ccf
    inc bc
    inc bc
    ld a, b
    ld a, b
    ld a, l
    ld a, a
    ldh a, [rLCDC]
    rst $30
    ld bc, $e430
    rst $20
    jr nz, jr_037_5ae6

    ld [$0003], sp
    ld h, e
    ld h, b
    ld [hl], e
    ld [hl], b
    and a
    and b
    rrca
    add b
    nop
    ld e, $80
    ld e, l
    pop bc
    ld a, [bc]
    jp $e200


jr_037_5ad7:
    add b
    ld e, d
    dec e
    nop
    ldh [$03], a
    ld bc, $a70f
    cp a
    inc e
    rrca
    ld a, a
    rra
    ld a, e

jr_037_5ae6:
    ld a, [bc]
    cp b
    ld a, [hl+]
    nop
    jr z, jr_037_5ad7

    ld hl, sp+$00
    db $e3
    ldh a, [$e7]
    db $f4
    rst $30
    ldh a, [$c7]
    ldh [$03], a
    rst $08
    add sp, -$11
    ldh [$8f], a
    ret nz

    jp nc, $f808

    jr nz, jr_037_5a8a

    ld e, d
    ld e, $f1
    pop af
    ld [$1e09], sp
    ld h, b
    ldh [$03], a
    sbc b
    ld a, [hl+]
    ld c, $c1
    pop bc
    ld c, [hl]
    dec a
    dec e
    jr jr_037_5b95

    ld a, a
    ld sp, hl
    ld b, b
    ld sp, hl
    dec c
    db $10
    ret nz

    ret nz

    rra
    rra
    add d
    add d
    ld [$ffff], sp
    dec bc
    dec bc
    rra
    ld [$07f0], sp
    rst $30
    inc de
    rlca
    rlca
    rst $30
    nop
    ld [$8787], sp
    dec b
    db $10
    db $eb
    ld a, [de]
    nop
    cp a
    cp [hl]
    cp [hl]
    cp h
    cp l
    cp b
    cp e
    or h
    inc b
    or a
    or b
    or a
    add b
    cp a
    ld e, b
    ld [de], a
    ld bc, $00ff
    ld [bc], a
    cp $05
    db $fd
    dec bc
    ei
    rla
    rst $30
    nop
    ld e, h
    call c, $bebe
    inc a
    inc a
    ld a, d
    ld a, d
    nop
    cp $fe
    call c, $bcdc
    cp h
    inc a
    inc a
    ret nz

    db $fd
    ld e, l
    push af
    ld [$0ef0], sp
    ldh a, [$0e]
    ld [c], a
    ld e, $00
    ret nz

    inc a
    add l
    ld a, l
    ld bc, $0bf9
    ei
    nop
    inc de
    di
    ld a, l
    ld a, [hl]
    rst $38
    db $fc
    ei
    db $fc
    db $10
    ld hl, sp-$01
    ld hl, sp+$77
    ld a, [hl+]
    db $d3
    inc sp
    ld hl, sp+$04
    ld [$0ef5], sp
    rrca

jr_037_5b91:
    ld hl, sp+$34
    jr nc, @+$39

jr_037_5b95:
    dec h
    ld l, d
    ld e, $9c
    ldh a, [rNR34]
    ld a, h
    dec l
    ld c, a
    inc d
    nop
    ld e, b
    ld b, [hl]
    ld [de], a
    cp $80
    dec b
    ld [$fcfc], sp
    pop af
    ldh a, [$e7]
    db $e4
    adc a
    pop hl
    rst $20
    ld a, [bc]
    rst $28
    ld a, [bc]
    push hl
    ld e, c
    ld a, a
    ld a, a
    rrca
    rrca
    ld b, $0c
    add d
    jp c, $0011

    xor d
    xor d
    ld d, l
    ld d, l
    dec [hl]
    db $10
    rla
    ld b, d
    rla
    dec c
    db $10
    ld bc, $aa01
    xor d
    ld a, [hl-]
    ld de, $2007
    rlca
    cp $d6
    dec d
    nop
    ld d, l
    ld d, l
    xor e
    xor e
    sub b
    dec e
    db $10
    ld hl, sp-$08
    dec hl
    ld b, b
    cp $fe
    di
    di
    nop
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    ld e, a
    ld e, a
    jr nz, jr_037_5b91

    cp a
    ld b, d
    inc c
    ld a, a
    and b
    xor a
    nop
    rra
    ret nz

    dec e
    inc d
    pop af
    jr nc, @+$2f

    db $ed
    ld e, e
    db $db
    or c
    or c
    nop
    ld a, e
    ld a, e
    ld l, [hl]
    ld l, [hl]
    db $fc
    db $fc
    cp c
    cp c
    nop
    ld a, e
    ld a, e
    ld a, c
    ld a, c
    pop de
    ret nc

    inc sp
    ld [hl-], a
    nop
    ld h, e
    ld h, b
    jp $c3c0


    ret nz

    add e
    add b
    jr nz, @+$05

    nop
    ld [bc], a

Call_037_5c23:
    ld hl, sp+$07
    ldh [$1f], a
    nop
    rst $38
    ld h, c
    ld bc, $ff00
    inc bc
    rst $38
    ld b, $fe
    rla
    rst $30
    daa
    nop
    rst $20

jr_037_5c36:
    cpl
    rst $28
    ld c, a
    rst $08
    sbc a
    sbc a
    cp a
    ld bc, $3fbf
    ccf
    ld a, a
    ld a, a
    ldh a, [rIE]
    pop hl
    ld b, b
    ldh [$81], a
    cp a
    jr nz, @-$2f

    ld b, b
    rst $10
    stop
    db $db
    jr jr_037_5c36

    ld a, [hl+]
    push hl
    inc c
    pop hl
    dec c
    ld [$0ee2], sp
    nop
    cp $61
    ld bc, $03ff
    nop
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    db $fc
    ld bc, $79fc
    ld a, b
    ld h, e
    ld h, b
    inc bc
    nop
    and c
    inc d
    rlca
    inc b
    cp a
    ld b, b
    ld a, a
    nop
    dec bc
    and b
    cp a
    nop
    add b
    sbc a
    pop de
    rst JumpTable
    rst $08
    rst $08
    ldh [$e0], a
    ld [$e0e4], sp
    db $eb
    db $e3
    ld hl, $ff03
    inc e
    inc b
    db $fc
    di
    di
    adc a
    adc a
    add hl, sp
    rrca
    rrca
    nop
    ldh a, [$f0]
    cp $ff
    ld hl, $003f
    nop
    ld b, d
    rst $38
    add b
    db $fc
    db $fc
    inc bc
    inc bc
    ld a, [hl+]
    add b
    ld [$7e80], sp
    ld a, [hl]
    cp $40
    ldh a, [$f1]
    dec bc
    ld bc, $8f0c
    ldh a, [$03]
    db $fc
    ld a, a
    ld a, a
    ld a, e
    ret nz

    dec h
    jr nz, jr_037_5cff

    cp a

jr_037_5cc1:
    sbc a
    rra
    sbc a
    ld e, a
    ld hl, $ff00
    and c
    ld bc, $1ffe
    ldh [rNR52], a
    ld a, $e0
    jr jr_037_5cc1

    and [hl]
    ld b, b
    rst $08
    ld hl, $4ffc
    inc bc
    inc h
    inc bc
    inc c
    rrca
    ld a, [bc]
    ld hl, $0064
    nop

jr_037_5ce2:
    ei
    inc b
    ldh a, [rIF]
    cp b
    ld b, a
    add hl, sp
    add $8c
    ld [hl], e
    jp nz, $803d

    ld a, a
    ld [de], a
    db $ed
    nop
    xor b
    nop
    ld b, $f9
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    dec b
    ld_long a, $ffff

jr_037_5cff:
    rst $38
    ld bc, $fffe
    ld d, b
    nop
    rla
    dec a
    ld e, h
    inc bc
    ld a, [$5505]
    ld e, a
    rst $38
    pop af
    pop af
    rst $30
    rst $20
    adc $df
    ld d, l
    ld e, a
    rst $38
    rst $00
    xor $bf
    ld a, a
    ei
    rst $30
    inc d
    dec d
    rst $38

jr_037_5d20:
    sub c

jr_037_5d21:
    cp $e8
    ldh a, [$ca]
    db $fd
    add h
    ei
    and b
    ld b, b
    sub e
    ld de, $ff40
    ldh [$1f], a
    ld [bc], a
    adc b
    ld a, a
    nop
    inc b
    sbc d
    db $fd
    ld sp, $43fe
    db $fc
    ld bc, $0055
    jr jr_037_5d20

    ld a, [hl]
    add b
    ld [hl], c
    add b
    add sp, -$30
    jp hl


    or d
    ld a, [$55df]
    nop
    ld bc, $1408
    jr z, jr_037_5d21

    ld [hl], l
    ld d, a
    nop
    dec b
    add c
    jr nz, jr_037_5ce2

    ld b, l
    ld bc, $5155
    nop
    ld de, $0742
    adc c
    ld e, a
    ld a, a
    cp [hl]
    ld bc, $aa7f
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIF]
    dec l
    jp nc, $11ee

    and d
    nop
    rst $38
    nop
    nop
    rst $30
    ld [$5f00], sp
    and b
    and d
    ld e, l
    db $10
    rst $28
    xor b
    ld d, a
    ld b, b
    ld [bc], a
    nop
    db $eb
    db $fc
    inc bc
    cp $01
    cp $01
    xor c
    ld d, [hl]
    or d
    ld c, l
    ld b, [hl]
    cp c
    rst $38
    nop
    ld a, [bc]
    nop
    sbc a
    ld h, b
    inc sp
    call z, $06f9
    rst $20
    jr @+$53

    xor [hl]
    add b
    ld a, a
    rst $38
    rst $38
    dec d
    nop
    rst $38
    ld b, $f9
    nop
    ld [$2610], sp
    ld sp, hl
    ccf
    ldh [rNR51], a
    cp $2f
    cp $55
    ld a, [bc]
    rst $38
    ld a, [$005d]
    nop
    swap h
    ldh [$1f], a
    nop
    nop
    ld d, h
    ld a, [hl+]
    rst $38
    ldh [rNR10], a
    nop
    dec b
    ld a, [$d42b]
    nop
    nop
    nop
    rst $38
    push de
    rst $38
    ei
    ld [hl], d
    call nz, Call_037_55ff
    rst $38
    db $fd
    di
    ld c, [hl]
    inc e
    ld d, l
    ld d, l
    rst $38
    cp c
    ld [hl], e
    rst $30
    db $ed
    ei
    ld [hl], a
    db $e3
    pop de
    ld d, l
    ld d, l
    rst $38
    rst $00
    ld e, [hl]
    or h
    ld a, b
    ei
    rst $30
    adc $25
    nop
    ld d, l
    rst $38
    ld b, $f9
    dec e
    ld [c], a
    dec hl
    call nc, $ef90
    nop
    and h
    adc d
    ld b, b
    ld d, b
    nop
    nop
    push af
    rst $38
    ld l, a
    sub b
    sub d
    ld l, l
    inc b
    ei
    ld bc, $07fe
    ld hl, sp+$01
    cp $55
    ld b, l
    nop
    call c, $e8f5
    push af
    db $eb
    ld a, a
    add b
    rst JumpTable
    rst $38
    ld d, l
    ld d, h
    nop
    push de
    dec hl
    ld e, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld b, $00
    xor b
    nop
    ld bc, $80fe
    ld a, a
    jr nz, @-$1f

    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    push af
    nop
    nop
    cp c
    ld b, [hl]
    ld [c], a
    dec e
    call nc, Call_037_7a2b
    add l
    db $ec
    inc de
    sub d
    ld l, l
    call nz, $803b
    ld a, a
    nop
    xor b
    nop
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    rst $38
    rst $38
    rst $38
    ret nz

    ccf
    xor b
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld [$10f7], sp
    rst $28
    jr c, @-$37

    inc d
    db $eb
    ld [$40f7], sp
    ld bc, $00ff
    ld a, [bc]
    push af
    ld b, h
    cp e

jr_037_5e75:
    db $10
    rst $28
    xor b
    ld d, a
    db $10
    rst $28
    add c
    ld a, a
    dec bc
    adc b
    nop
    add b
    ld a, a
    ld b, b
    cp a
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    call c, $fd23
    ld d, b
    rst $38
    rst $28
    sbc h
    jr nz, @+$03

    cp $07
    ld hl, sp+$55
    ld b, c
    rst $38
    or $cc
    sbc b
    ld hl, $4000
    cp a
    add e
    ld a, a
    ld b, $57
    ld d, l
    rst $38
    sub a
    cpl
    ld a, a
    sub $60
    add b
    nop
    ld d, l
    ld b, b
    rst $38
    jr nc, jr_037_5e75

    and b
    ld b, b
    nop
    inc h
    db $db
    ld a, c
    add [hl]
    scf
    ret z

    ld d, b
    nop
    rst $38
    and b
    nop
    db $10
    rst $28
    inc hl
    call c, $b847
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a
    ei
    inc b
    ld d, b
    nop
    rst $38
    ld a, [bc]
    inc d
    inc bc
    db $fc
    ld c, $f0
    add hl, de
    ldh [$34], a
    ret nz

    ld sp, hl
    nop
    ldh a, [rP1]
    add b
    dec b
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    or h
    dec bc
    db $ed
    ld [de], a
    ld a, [hl]
    ld bc, $3f1f
    nop
    nop
    rrca
    ldh a, [rTIMA]
    ld a, [$f906]
    sub e
    ld l, h
    xor a
    ld d, b
    dec bc
    db $f4
    ld [hl], $c8
    db $fd
    nop
    ld bc, $0054
    ld a, a
    add b
    ld a, [hl]
    add c
    ccf
    ret nz

    di
    add a
    rra
    cp a
    ld a, [hl]

Call_037_5f10:
    ld bc, $8002
    rst $30
    cp $01
    sub a
    ld l, b
    rst $28
    db $10
    ld [$af08], sp
    ld d, b
    ld b, e
    cp h
    add l
    ld a, d
    ld [bc], a
    db $10
    ld a, [c]
    rst $30
    ld [$20df], sp
    call z, $0d33
    ld c, $f1
    dec c
    sbc d
    ld h, l
    and b
    ld e, a
    add b
    and b
    nop
    rst $38
    and b
    ld e, a
    ld [hl+], a
    db $dd
    ld b, b
    cp a
    rst $38
    rst $38

Jump_037_5f3f:
    call nz, $a03b
    ld e, a
    nop
    nop
    ldh a, [rIF]
    ld sp, hl
    ld b, $5c
    and e
    or d
    ld c, l
    inc sp
    call z, $a15e
    ei
    inc b
    rst $38
    nop
    and b
    dec b
    nop
    rst $38
    rst $38
    add b
    ld a, a
    dec d
    ld [$07f8], a
    inc [hl]
    set 7, a
    rst $38
    ld d, l
    ld d, c
    rst $38
    rla
    dec sp
    ld a, a
    ld e, b
    and c
    nop
    ld bc, $00fe
    nop
    ld d, l
    rst $38
    ld hl, sp+$07
    db $ec
    rra
    db $fc
    ccf
    ld a, h
    cp a
    ld a, $3e
    rra
    rra
    ld a, [bc]
    xor d
    rst $38
    ld d, $e9
    xor [hl]
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    rst $38
    ld h, d
    sbc l
    or h
    ld c, e
    ld a, [$f505]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    xor d
    rst $38
    ld a, [bc]
    push af
    ld d, a
    xor b
    xor a
    ld d, b
    ld a, a
    add b
    nop
    nop
    nop
    nop
    ld d, l
    ld e, l
    nop
    ld bc, $0102
    ld bc, $0101
    ld bc, $0055
    nop
    db $fc
    cp $fe
    rst $38
    ei
    inc b
    jp hl


    ld d, $d9
    ld h, $6d
    ld [de], a
    ld d, l
    ld b, c
    nop
    db $e4
    db $db
    rst $38
    rst $38
    rst $38
    cp $01
    or l
    ld c, d
    rst $38
    ld d, h
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld [$9115], a
    ld l, [hl]
    ret nz

    ccf
    dec h
    jp c, $24db

    add b
    ld b, b
    cp a
    ld b, b
    rst $30
    ld [$916e], sp
    or b
    ld c, a
    ld b, b
    jr nz, @-$1f

    ld d, l
    xor d
    add sp, $17
    nop
    nop
    db $fc
    inc bc
    or b
    ld c, a
    ld h, b
    sbc a
    ld b, c
    cp [hl]
    and d
    ld e, l
    ld d, l
    xor d
    ei
    inc b
    ld d, h
    xor e
    add b
    ld [$ff00], sp
    ld [bc], a
    db $fd
    add hl, bc
    or $24
    db $db
    ld d, e
    xor h
    push bc
    ld a, [hl-]
    rst $38
    ld l, b
    sub a
    nop
    nop
    ld b, b
    cp a

jr_037_6018:
    and b
    ld e, a
    ld c, b
    or a
    call nz, $803b
    ld a, a
    ld [bc], a
    db $fd
    db $10
    rst $28
    ret nz

    ccf
    nop
    nop
    scf
    ret z

    inc sp
    call z, $b649
    ld [bc], a
    db $fd
    nop
    rst $38
    db $10

Call_037_6033:
    rst $28
    ld l, d
    sub l
    push bc
    ld a, [hl-]
    push de
    ld b, b
    nop
    ld bc, $eb37
    rst $38
    db $fc
    ld bc, $b04f
    cp e
    ld b, h
    nop
    nop
    nop
    rst $38
    db $10
    rst $28
    add hl, bc
    or $56
    xor c
    cp e
    ld b, h
    db $f4
    dec bc
    rst $20
    jr jr_037_6091

    call nz, Call_037_5520
    nop
    add hl, bc
    or $ff
    and [hl]
    ld e, c
    ld l, l
    sub d
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    and b
    ccf
    rst $38
    rra
    rra
    rst $38
    rst JumpTable
    rst $38
    sbc $de
    ld e, $fb
    ld a, [de]
    db $ed
    ld d, l
    nop
    rst $38
    rst $28
    ld a, [$d06a]
    ld h, d
    db $fd
    ld b, l
    ld a, [$fc03]
    adc l
    ld [hl], d
    nop
    nop
    cp d
    push bc
    ld l, l
    sub d
    cp e
    ld b, h
    db $fd
    ld [bc], a
    rst $38
    nop
    sbc a
    ld h, b

jr_037_6091:
    ccf
    ret nz

    rst JumpTable
    jr nz, jr_037_6018

    and b
    rst $38
    nop
    cp $01
    cp $01
    nop
    nop

jr_037_609f:
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    ld d, l
    ld d, h
    nop
    ld bc, $0102
    ld d, c
    dec sp
    ld a, c
    ld a, [hl]
    db $ed
    stop
    nop
    jp hl


    ld d, $c0
    ccf
    ret z

    scf
    ld h, b
    sbc a
    xor b
    ld d, a
    sub b
    ld l, a
    jr nz, jr_037_609f

    ret nc

    cpl
    ld bc, $f140
    db $fc
    inc bc
    cp $01
    xor [hl]
    ld d, c
    ld c, $0f
    sbc [hl]
    pop hl
    dec h
    rst $38
    sbc $ff
    and b
    ld [bc], a

jr_037_60d5:
    rst $38
    nop
    nop
    cp $01
    ld d, a
    xor b
    ld a, [$fc05]
    inc bc
    ret nc

    cpl
    nop
    jr nz, jr_037_60e9

    rst $38
    cp $01
    nop

jr_037_60e9:
    ld e, h
    and e
    xor c
    ld d, [hl]
    ld d, b
    xor a
    ld [bc], a
    db $fd
    nop
    sub l
    ld l, d
    ld [$c101], sp
    cp e
    ld b, h
    inc [hl]
    srl [hl]
    jr z, jr_037_60d5

    nop
    rst $38
    ld [bc], a
    db $fd
    ld d, b
    xor a
    ld a, $00
    nop
    nop
    rst $38
    or b
    ld c, a
    ld b, b
    cp a
    ld [bc], a
    db $fd
    ld d, l
    xor d
    and b
    ld e, a
    ld [hl], $c9
    call $0032
    nop
    inc hl
    call c, $bc43
    dec b
    ld a, [$54ab]
    db $fd
    ld [bc], a
    nop
    rst $38
    ld h, b
    sbc a
    sub a
    ld l, b
    nop
    add d
    rst $38
    ld b, l
    cp d
    xor e
    ld d, h
    scf
    ret z

    ld a, a
    add b
    nop
    ld d, a
    xor b
    ld a, [bc]
    push af
    nop
    rst $38
    ld d, b
    nop
    ld a, [de]
    rra
    ld [hl], l
    ld a, [bc]
    cp [hl]
    ld bc, $44d5
    nop
    jr nc, jr_037_61c0

    ld a, b
    ld hl, sp-$57
    ld d, b
    db $fd
    ld d, l
    xor b
    nop
    dec d
    rst $38
    ld a, [hl]
    cp a
    ld a, l
    cp [hl]
    sbc l
    ld a, [hl]
    cp a
    ld e, [hl]
    cp $1f
    ld e, $9e
    sbc a
    ld bc, $ff55
    jr nz, @-$1f

    ld [hl], b
    adc a
    jr nz, @-$1f

    jr nz, jr_037_61ab

    db $e3
    rst $30
    ld [hl], a
    dec d
    db $10
    ldh a, [$d8]
    ldh [$8a], a
    rst $08
    rst $08
    ld d, $e8
    adc a
    and l
    jp c, $fc83

    nop
    nop
    ei
    inc b
    inc [hl]
    ld c, e
    ld a, [$7d05]
    ld [bc], a
    push de
    ld a, [hl+]
    db $eb
    inc d
    call nc, $ea2b

jr_037_618d:
    dec d
    ld bc, $ff55
    add d
    ld a, a
    add b

jr_037_6194:
    ld a, a
    ld b, b
    cp a
    ld [bc], a
    dec b
    ld [bc], a
    inc d
    xor b
    nop
    nop
    ld h, a
    jr jr_037_6194

    inc c
    ret


    ld [hl], $a1
    ld e, [hl]
    jp nz, $e03d

    rra
    ld c, b

jr_037_61ab:
    or a
    jr nz, jr_037_618d

    nop
    xor b
    add b
    and b
    ld e, a
    ret nz

    ccf
    ret nz

    ccf
    and b
    ld e, a
    ld a, a
    ld a, a
    ld a, a
    nop
    rst $38
    push de
    ld d, l

jr_037_61c0:
    nop
    ld h, b
    ldh a, [rSVBK]
    ld hl, sp-$04
    db $fc
    db $fc
    inc d
    nop
    ldh [$c6], a
    ld hl, sp-$43
    sbc b
    dec [hl]
    ret nz

    ld a, d
    add b
    ld hl, $bbc0
    ld b, b
    ld [hl], a
    add b
    ld [bc], a
    xor d
    rst $38
    cp d
    ld b, l
    ld d, h
    xor e
    db $eb
    inc d
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld [$2fff], sp
    ret nc

    ret nc

    cpl
    nop
    nop
    db $fd
    ld [bc], a

jr_037_61f2:
    ld l, d
    sub l
    nop
    adc c
    db $76
    adc b
    db $10
    rst $38
    nop
    cp a
    ld b, b
    nop

jr_037_61fe:
    cp $01
    add b
    ld a, a
    nop
    ld a, [$7f05]
    add b
    xor b
    ld [bc], a
    rst $38
    nop
    nop
    nop
    sub l
    ld l, d
    ld [bc], a
    db $fd
    sub a
    ld l, b
    ld h, c
    sbc [hl]
    nop
    ld [bc], a
    add b
    nop
    jr z, jr_037_61f2

    ld d, h
    xor e
    jr nz, jr_037_61fe

    rst $38
    rst $38
    ld b, d
    cp l
    rra
    ldh [$7a], a
    add b
    nop
    nop
    inc hl
    call c, $f10e
    ld e, a
    and b
    ccf
    ret nz

    rst $20
    db $10
    sub $01
    dec h
    ld [bc], a
    ld b, a
    nop
    ld bc, $ff40
    ld [bc], a
    db $fd
    xor b
    ld d, a
    add c
    ld a, [hl]
    inc b
    ld bc, $ad52
    add sp, $17
    ldh a, [rIF]
    nop
    nop
    dec a
    jp nz, $8d72

    ld bc, $87fe
    ld hl, sp+$43
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$7a], a
    add l
    ld d, l
    ld d, l
    rst $38
    ld a, a
    rst $28
    rst $28
    rst $28
    ei
    db $fd
    db $fd
    db $fd
    inc b
    ld b, l
    db $fc
    adc $f0
    and $f8
    ld a, [c]
    call nc, $eafa
    push de
    ld a, [$f2e3]
    ld d, b
    inc b
    rlca
    ld a, [de]
    ld e, $01
    ld c, $19
    ld b, $ac
    inc bc
    dec d
    inc bc
    cp d
    ld h, c
    rra
    ld b, c
    ld e, a
    rst $38
    ld c, a
    sbc a
    ld a, a
    xor a
    ld a, a
    rra
    ld a, a
    ld a, a
    and d
    ld [bc], a
    rst $38
    nop

jr_037_6295:
    nop
    push af
    ld a, [bc]
    nop
    cp $01
    ld d, b
    xor a
    cp $01
    nop
    nop

jr_037_62a1:
    nop
    rst $38
    nop
    ld a, [$0105]
    cp $e8
    rla
    add b
    ld a, a
    dec d
    ld [$fd02], a
    ld sp, hl
    ld b, $00
    nop
    ld [$8015], a
    ld a, a
    push de
    ld a, [hl+]
    nop
    rst $38
    jr z, jr_037_6295

    ld b, e
    cp h
    ld b, $f9
    ld d, b
    xor a
    add d
    nop
    nop
    rst $38
    ld h, b
    sbc a
    rlca
    ld hl, sp-$01
    ld b, l
    cp d
    cp $01
    adc a
    ld [hl], b
    ld d, l
    xor d
    nop
    ld a, [hl+]
    rst $38
    ld a, [bc]
    push af
    ld d, a
    xor b
    cp a
    ld b, b
    ld a, [hl+]
    push de
    ld a, a
    add b
    nop
    nop
    nop
    nop
    dec d
    rst $38
    rlca
    ld hl, sp+$0a
    push af
    ld b, l
    ld a, [$fb94]
    ld bc, $80fe
    ld b, h
    xor c
    nop
    adc b
    inc hl
    ld b, c
    cp a
    sub h
    ld l, e
    adc c
    ld [hl], a
    ld a, [bc]
    rst $30
    rst JumpTable
    ld de, $ffef
    ld b, a
    rst $38
    inc b
    ld b, b
    ld hl, sp+$7d
    cp $ba
    db $fd
    rst $28
    db $e3
    db $fc
    ld b, [hl]
    xor d
    db $f4
    ld b, d
    db $fc
    sub l
    add sp, $15
    rst $30
    nop
    ld h, c
    add b
    add sp, -$70
    jr nz, jr_037_62a1

    ld d, l
    ld d, h
    nop
    dec de
    dec e
    dec [hl]
    dec bc
    rlca
    rla
    cpl
    cp e
    inc b
    ld [$c210], sp
    pop af
    ld c, $e0
    rra
    dec a
    add c
    ld a, [hl]
    ld a, [bc]
    push af
    dec a
    ld a, a
    add b
    xor $11
    nop
    adc b
    ld a, a
    db $e3
    inc e
    adc a
    ld [hl], b
    ld d, a
    xor b
    xor a
    ld d, b
    add b
    rst $38
    nop
    add b
    rst $38
    nop
    cp $80
    rst $38
    cp $b8
    ld hl, sp-$49
    cp $b1
    ld a, b
    add a
    nop
    ld d, l
    rst $38
    rst $30
    db $fc
    ld sp, hl
    cp $f1
    cp $f2
    db $fd
    ld hl, sp-$28
    push af
    di
    dec b
    ld d, l
    rst $38
    and $1f
    db $d3
    cpl
    dec c
    rla
    ld c, a
    cp l
    xor [hl]
    db $fc
    push de
    ld d, b
    rst $38
    db $ed
    db $db
    ldh a, [$ac]
    ld b, b
    adc [hl]
    pop af
    cp l
    jp Jump_037_45fd


    rst $38
    ld d, a
    ld l, a
    ld l, a
    cp a
    adc a
    rla
    ld d, l
    ld d, b
    rst $38
    db $fc
    ld hl, sp-$0b
    ld hl, sp-$0c
    ld hl, sp-$17
    cp $f3
    db $fc
    nop
    nop
    ld bc, $c6ff
    cp a
    ld d, b
    xor a
    ld [c], a
    dec e
    ld h, c
    sbc a
    call nc, $e02b
    rra
    ret c

    daa
    ld de, $ff59
    and b
    rst JumpTable
    add b
    ret nc

    rst $28
    ld b, b
    ld c, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    add b
    ld [bc], a
    rst $38
    nop
    ei
    inc b
    ccf
    ret nz

    dec b
    ld a, [$0ff0]
    ld a, [$8f05]
    ld [hl], b
    nop
    ld d, l
    ld d, a
    rst $38
    ld c, d
    and l
    db $dd
    ld a, [$ebf1]
    rst JumpTable
    ld d, l
    ld d, a
    rst $38
    sub a
    dec a
    ld l, $fd
    ld a, a
    rst $30
    cp $44
    nop
    ldh a, [$8c]
    add [hl]
    ld hl, sp-$72
    inc e
    ldh [$3e], a
    ret nz

    ld a, l
    add b
    ld a, [hl-]
    ret nz

    ld [hl], e
    add b
    push de
    ld d, l
    nop
    ld bc, $0385
    rla
    xor a
    rst $38
    rst $38
    nop
    nop
    ld a, h
    inc bc
    pop af
    ld c, $e3
    inc e
    add $39
    push bc
    ld a, [hl-]
    and d
    ld e, l
    nop
    rst $38
    add b
    ld a, a
    nop
    adc b
    dec bc
    db $dd
    ld [hl+], a
    cp d
    ld b, l
    pop bc
    ld a, $07
    ld hl, sp-$0c
    rla
    add sp, -$0c
    rra
    ldh [$ae], a
    ld h, b
    rst $38
    rst JumpTable
    rst JumpTable
    cp $fe
    or $7f
    or b
    cp h
    ld b, e
    nop
    ld d, l
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc b
    ei
    ldh [$b1], a
    pop af
    db $fd
    nop
    adc d
    nop
    add hl, bc
    or $0f
    ldh a, [rDIV]
    ei
    ld bc, $fffe
    ld bc, $fffe
    rst $38
    ld d, l
    nop
    rst $38
    ld a, [$b1f4]
    ret nc

    ld l, c
    cp $85
    cp $c1
    cp $81
    cp $01
    db $10
    inc bc
    ld e, $e1
    inc a
    jp $8758


    adc h
    sbc c
    ld b, $0c
    sbc b
    rlca
    xor [hl]
    ld bc, $0000
    ld h, c
    sbc [hl]
    add d
    ld a, l
    ld b, b
    cp a
    nop
    rst $38
    dec bc
    db $f4
    ld e, a
    and b
    cp [hl]
    ld b, c
    ld a, a
    add b
    dec b
    ld b, b
    db $fc
    jp hl


    cp $e1
    cp $f2
    ld [$e6d0], a
    ld hl, sp-$35
    db $f4
    and $f9
    nop
    ld b, h
    rrca
    db $f4
    dec bc
    ld a, [$7c05]
    inc bc
    cp c
    rlca
    ld sp, $1768
    ld a, [c]
    ld b, c

jr_037_6496:
    cp a
    ld d, c
    jr z, jr_037_6519

    cp a
    sbc a
    ld e, [hl]
    cp a
    cp b
    ld a, h
    rst $38
    rst $38
    rst $38
    ld a, l

jr_037_64a4:
    rst $38
    push af
    ld b, b
    nop
    db $f4
    rst $38
    cp [hl]
    rst $28
    db $10
    call nc, $ea2b
    dec d
    push de
    ld b, b
    rst $38
    cp $cf
    adc d
    dec b
    ld hl, $52df
    xor a
    ld sp, hl
    rlca
    ld d, l
    ld d, c
    rst $38
    cp h
    db $fd
    add sp, -$0c
    ld hl, sp-$1c
    pop hl
    cp $e0
    nop
    ld a, [hl+]
    nop
    cp a
    ld b, b
    rst $28
    db $10
    or h
    ld c, e
    ld c, b
    or a
    ld b, b
    cp a
    rst $38
    rst $38
    rst $38
    nop
    dec d
    rst $38
    cp $01
    db $f4
    dec bc
    ld [$a015], a
    ld e, a
    inc b
    ei
    db $10
    ld bc, $1540
    ld d, l
    rst $38
    or b
    ld a, a
    rrca
    rla
    rrca
    dec e
    ld l, e
    ld a, b
    inc d
    add b
    add b
    daa
    ret c

    ld c, $f1
    dec de
    db $e4
    inc sp
    call z, Call_037_47d8
    cp b
    adc [hl]
    ldh a, [$39]
    call nz, $1515
    nop
    db $dd
    jr nz, @+$01

    ld a, [$dcfd]
    jr nz, jr_037_64a4

    jr nz, jr_037_6496

    ld sp, hl
    ld l, c
    rst $38
    cp $fe

jr_037_6519:
    cp $fe
    cp $fe
    ld d, l
    ld d, b
    rst $38
    cp $fd
    ld a, [$f8f0]
    ldh [$f5], a
    cp $f9
    cp $00
    ld b, h
    add b
    xor e
    call nc, $e01f
    ld c, a
    or b
    cp a
    ld b, b
    ld l, a
    rst $28
    nop
    db $76
    rst $20
    nop
    ld b, h
    nop
    dec b
    ld e, d
    cp [hl]
    ld bc, $f8ba
    rlca
    db $ec
    inc de
    or d
    ld c, l
    call c, $ea23
    dec d
    ld d, l
    ld d, l
    rst $38
    cpl
    rra
    cpl
    ld e, a
    cpl
    rra
    ccf
    rra
    ld d, l
    ld e, l
    rst $38
    ret nz

    ldh [$e8], a
    jp nc, $d5a9

    rst $28
    ld d, l
    nop
    rst $38
    inc bc
    inc b
    call nc, $e3f8
    db $fc
    rst $10

jr_037_656b:
    ld hl, sp-$45
    db $fc
    jp nc, $55fc

    ld b, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    ret z

    add hl, de
    sbc c
    add hl, sp
    ld sp, $553b
    nop
    nop
    rst $38
    rst $38
    rst $38
    rra
    ld e, a
    ret nz

    ret nc

    ret nz

    ret nz

    add $86
    adc $d5
    nop
    nop
    dec bc
    dec l
    ld a, a
    ei
    inc b
    push bc
    ld a, [hl-]
    and c
    ld e, [hl]
    db $10
    rst $28
    ld d, l
    ld d, l
    rst $38
    add c
    add d
    ld d, l
    xor $bf
    ld a, [c]
    xor b
    ret nc

    ld b, l
    ld d, l
    rst $38
    nop
    adc b
    rst $30
    ld hl, $0203
    rlca
    ld b, $0c

jr_037_65b2:
    ld d, l
    ld b, b
    nop
    ret nz

    xor d
    rst $38
    rst $38
    rst $38
    ld l, l
    add b
    cp a
    ld b, b
    rla
    add sp, $44
    nop
    cp $09
    db $10
    rst $38
    ld bc, $fd02
    dec b
    ld a, [$ee11]
    dec hl
    call nc, $fc02
    nop
    ld b, l
    nop
    ld d, a
    xor b
    ld h, $d8
    cp l
    ld b, b
    jp nc, $f428

    ret c

    jr nz, jr_037_65b2

    sbc h
    ld d, l
    ld d, a
    nop
    rlca
    inc bc
    rlca

jr_037_65e7:
    ld a, [hl+]
    sub c
    jr z, jr_037_656b

    sub d
    dec d
    rst $38
    db $fc
    db $fc
    cp $f9
    ld h, b
    cp $01
    nop
    nop
    nop
    nop
    dec d
    ld hl, sp-$38
    rst $38
    jp nc, $e1fd

    cp $d5
    ld a, [$f4eb]
    rst $20
    sub $e6
    ld d, l
    ld d, l
    nop
    db $fd
    cp d
    db $f4
    cp c
    ld h, b
    inc de
    dec l
    add e
    nop
    ld d, b
    rrca
    call z, Call_037_7033
    adc a
    call c, $b823
    ld b, a
    pop af
    ldh a, [$e5]
    rra
    ldh [$1f], a
    ld d, l
    ld d, l
    rst $38
    ld e, e
    cpl
    ld e, a
    cp [hl]
    ld a, a
    cp l
    ld e, d
    ret c

    ld e, l
    ld d, l
    rst $38
    rst JumpTable
    cp $fe
    db $fd
    sbc $fc
    db $fc
    and d
    sub c
    rst $38
    cpl
    ld l, [hl]
    rst $28
    ld [hl], h
    ld b, [hl]
    nop
    nop
    ldh [$1f], a
    nop
    ld h, b
    nop
    ld [hl], e
    inc sp
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    rst $30
    add $e7
    add $ee
    db $fc
    cp $fc
    cp $00
    ret nz

    jr c, jr_037_65e7

    adc [hl]
    inc c
    sbc h
    inc e
    sbc l
    jr jr_037_669f

    ld sp, $737b
    ld [hl], e
    ld h, [hl]
    rst $30
    push de
    ld d, b
    rst $38
    cp $f9
    ld [c], a
    ldh a, [$e0]
    adc b
    rst $30

jr_037_6672:
    or h
    ld c, e
    ld d, l
    ld d, l
    rst $38
    jp z, $141c

    add hl, sp
    ld [hl], b
    ld d, d
    jr z, @+$42

    add hl, bc
    and b
    cp $22
    db $dd
    ld c, a
    cp h
    ld a, l
    ld a, l
    ld a, a
    ld a, a
    ld e, a
    cp a
    rst $38
    rra
    jr z, jr_037_6690

jr_037_6690:
    nop
    jr nz, jr_037_6672

    rst $38
    rst $38
    ld bc, $0afe
    push af
    rlca
    ld hl, sp+$07
    ld hl, sp+$1b
    db $e4

jr_037_669f:
    ld bc, $0055
    ld a, $c0
    ld a, l
    add b
    ld l, e
    add b
    or $c4
    ldh [$74], a
    sub b
    ld d, a
    rst $38
    nop
    jr c, @+$3a

    ld d, b
    ld d, l
    ld b, b
    nop
    call nc, $f5bb
    rst $38
    cp [hl]
    rst $28
    db $10
    call nc, $ea2b
    dec d
    xor b
    nop
    rst JumpTable
    jr nz, jr_037_66e6

    jr nz, @-$6f

    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rlca
    ld hl, sp+$07
    ld hl, sp-$01
    ld d, l
    rst $38
    cp $fe
    db $fd
    ld a, [$4055]
    rst $38
    rst $30
    db $eb
    and e
    ld d, l
    and c
    sbc h
    db $e3
    dec [hl]
    jp $8758


jr_037_66e6:
    and b
    nop
    ret z

    ldh a, [$f0]
    sub l
    ldh [$2a], a
    ret nc

    sub l
    ldh [$33], a
    ret nz

    xor d
    pop bc
    ld l, $c1
    db $fd
    push de
    rst $38
    cp $fc
    ld a, [$55fc]
    ld d, l

Call_037_6700:
    rst $38
    cp $ef
    rst JumpTable
    xor a
    adc a
    ld e, a
    rra
    ld a, a
    ld d, l
    ld a, l
    rst $38
    ldh a, [$f1]
    db $eb
    di
    rst $30
    db $fd
    ld e, a
    ld d, l
    rst $38
    cpl
    ld a, [hl]
    db $ed
    jp c, Jump_037_5068

    nop
    dec b
    nop
    push af
    cp $e8
    rst $38
    ld d, a
    ld hl, sp+$5c
    ldh [$29], a
    ret nc

    ld d, l
    and b
    db $e3
    db $db
    inc d
    db $10
    rrca
    add hl, hl
    rst $10
    pop de
    ld [hl], d
    and l
    rra
    ld l, b
    rla
    ldh a, [$ec]
    inc de
    call nc, $042b
    ld b, b

jr_037_673e:
    ld a, [c]
    add c
    cp $02
    db $fd
    adc l
    rlca
    ld hl, sp+$0d
    rra
    ldh [$73], a
    adc h
    ret nz

    ccf
    nop
    nop
    inc l
    db $d3
    ld d, d
    xor l
    cp b
    ld b, a
    ldh a, [rIF]
    ret nz

    ccf
    and b
    ld e, a
    nop
    rst $38
    jr nz, jr_037_673e

    nop
    nop
    ccf
    ret nz

    and [hl]
    ld e, b
    dec e
    ldh [$0d], a
    ldh a, [$bf]
    ld b, b
    ld l, $d1
    ld e, $e1
    ld de, $d5ee
    ld d, b
    nop
    sub b
    ld h, h
    ld hl, sp-$05
    db $f4
    xor b
    ld b, b
    ld b, b
    add b
    db $fd
    ld d, l
    nop
    inc bc
    rlca
    ld a, [bc]
    ld bc, $d506
    ld d, l
    nop
    add hl, bc
    sub e
    dec a
    ld l, e
    rst $30
    ld a, a
    rst $38
    add d
    and b
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld hl, sp-$08
    ld hl, sp+$01
    cp $01
    cp $08
    ld b, l
    ld hl, sp-$06
    rst $38
    ldh a, [rIE]
    rst $38
    db $e3
    db $fc
    or $ef
    ldh a, [$f6]
    and $11
    ld d, b
    rlca
    ld c, l
    add e
    sbc b
    sub l
    dec bc
    ld e, c
    xor e
    ld e, c
    inc sp
    rrca
    ld d, c
    rrca
    ld bc, $ff57
    add hl, sp
    rst $00
    xor l
    db $d3
    ld d, d
    rst $28
    add a
    adc e
    sbc a
    ld l, a
    nop
    ld d, a
    rst $38
    xor e
    rra
    ld d, a
    ccf
    adc a
    ccf
    ld d, a
    cp a
    rrca
    xor a
    ld a, a
    push de
    ld d, l
    rst $38
    rst $30
    db $eb
    pop de
    db $e3
    ld b, l
    and e
    add l
    push de
    ld d, b
    rst $38
    cp $ed
    or $f9
    ld a, [c]
    db $fd
    cp $ea
    db $fd
    nop
    ld d, h
    nop
    sub e
    db $fc
    add l
    ld a, [$f00f]
    dec a
    ret nz

    ld [$fec5], a
    cp c
    ld b, b
    ld d, b
    ld b, b
    nop
    or c
    ld c, e
    adc d
    ld bc, $0255
    rrca
    adc [hl]
    ld bc, $0205
    ld l, $01
    nop
    nop
    ld a, b
    add a
    ld a, [c]
    dec c
    ld h, b
    sbc a
    ret z

    scf
    ld b, b
    cp a
    ld [$e0f7], sp
    rra
    ret nc

    cpl
    ld d, l
    nop
    nop
    or a

jr_037_6823:
    rst JumpTable
    db $ed
    ld a, a
    ei
    inc b
    push bc
    ld a, [hl-]
    and c
    ld e, [hl]
    db $10
    rst $28
    xor d
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    ld a, [$fe01]
    dec bc
    db $f4
    dec d
    add sp, $00
    dec d
    nop
    dec bc
    db $f4
    ld c, $f1
    ld d, l
    xor b
    sbc d
    ld h, b
    ld h, l
    add b
    ret


    add e
    ld c, a
    ld d, l
    ld b, b
    nop
    add sp, -$10
    ld h, c
    res 7, a
    db $fd
    ld [bc], a
    di
    inc c
    ld d, h
    xor e
    ld d, l
    nop
    nop
    rrca
    dec hl
    rst JumpTable
    rst $38
    rst JumpTable
    jr nz, jr_037_6823

    ld b, c
    add hl, de
    and $b6
    ld c, c
    nop
    dec d
    nop
    jp $053c


    ld a, [$0cf3]
    ld a, [hl]
    add b
    ld a, b
    add b
    db $e4
    ret nc

    and [hl]
    dec d
    ld b, b
    db $fc
    ld bc, $03fe
    inc bc
    ld b, e
    ld l, e
    ld a, [c]
    rst $38
    cp h
    rst $38
    rst JumpTable
    rst $38
    ld d, l
    ld d, c
    rst $38
    jp c, $d0e4

    ldh [$e0], a
    ret nc

    pop af
    cp $b8
    inc b
    ld d, h
    add b
    and $00
    ret z

    nop
    ld h, c
    db $eb
    nop
    ld l, [hl]
    ld [hl], a
    ld a, a
    xor a
    ld d, b
    ld d, h
    ld b, b
    rra
    ldh [$e2], a
    pop hl
    add $3f
    db $e3
    ld b, l
    ccf
    xor e
    ld e, a
    rlca
    rst $38
    ld d, l
    ld b, b
    nop
    rst $38
    rst $38
    cp $fe
    cp $e2
    ld [bc], a
    ret nz

jr_037_68be:
    dec e
    ret c

    dec e
    ld d, a
    ld d, l
    rst $38
    ld a, [$fefd]
    rst $30
    cp $f9
    sub $10
    ld b, b
    ld hl, sp+$4b
    db $f4
    ld b, a
    xor c
    or $42
    db $fd

jr_037_68d5:
    rlca
    ld a, [bc]
    push af
    ld bc, $00fe
    rst $38
    nop
    and b
    rst $38
    call nc, $1628
    add sp, $58
    and b
    dec [hl]
    ret nz

    nop
    nop
    xor $11
    cp $01
    inc b
    db $10
    dec b
    ld e, b
    rlca
    ld e, $01
    ld a, d
    push af
    ld a, [bc]
    rst $38
    nop
    ld a, [$8b74]
    jr z, jr_037_68d5

    ld a, [bc]
    add b
    rst $38
    rst JumpTable
    jr nz, jr_037_68be

    ld b, b
    nop
    nop
    nop
    ld l, l
    add b
    cp a
    ld b, b
    rla
    add sp, $55
    ld b, b
    nop
    ld a, [hl+]
    db $dd
    rst $38
    db $eb
    rst $38
    db $fc
    ld bc, $b04f
    cp e
    ld b, h
    nop
    nop
    ld h, $d8
    ld a, [bc]
    db $f4
    ld d, a
    xor b
    ccf
    ret nz

    rst JumpTable
    jr nz, jr_037_697c

    xor h

jr_037_692a:
    rlca
    ld hl, sp+$08
    rst $30
    nop
    nop
    sub [hl]
    ld bc, $007f
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    sub d
    ld l, l
    ret z

    scf
    inc d
    db $eb
    ld a, b
    add a
    ld a, [bc]
    nop
    nop
    adc b
    ld [hl], a
    add b
    ld a, a
    rst $38
    rst $38
    jr nz, jr_037_692a

    ld b, $f9
    ld de, $84ee
    ld a, e
    nop
    nop
    inc b
    ei
    ld [$01f7], sp
    cp $22
    db $dd
    ld c, h
    or e
    adc d
    ld [hl], l
    dec a
    jp nz, $ec13

    ld b, b
    dec d
    nop
    di
    dec l
    ret nz

    ld a, a
    add b
    ld e, c
    and [hl]
    scf
    ret z

    cp $ff
    db $ec
    ld a, [bc]
    xor b
    rst $30
    rst $38
    nop
    rst $38
    nop
    ld [$0808], sp

jr_037_697c:
    ld [$a208], sp
    ld e, l
    ld d, l
    ld e, l
    rst $38
    ld hl, sp-$0c
    ld hl, sp-$2c
    xor $f4
    cp $00
    dec b
    rst $38
    rra
    ldh [$5e], a
    and c
    sub l
    add sp, $0a
    push af
    xor c
    or $43
    db $fc
    ld h, b
    ldh a, [rHDMA5]
    ld d, l
    rst $38
    rrca
    rlca
    dec bc
    rrca
    sbc a
    rra
    ld a, a
    cp a
    nop
    dec b
    rst $38
    or b
    ld c, a
    ld a, [$e507]
    dec de
    ldh [$1f], a
    jp $a73f


    ld e, [hl]
    ld b, $18
    ld d, l
    ld d, b
    rst $38
    ldh [$f4], a
    ret z

    and b
    ld b, h
    ldh [$c9], a
    or $93
    db $ec
    nop
    nop
    ld b, $f9
    dec b
    ld a, [$d42b]
    ld d, a
    xor b
    cp a
    ld b, b
    rst $38
    nop
    db $f4
    dec bc
    ret z

    scf
    nop
    ld a, [hl+]
    nop
    ld d, d
    xor l
    ret c

    daa
    db $e4
    dec de
    ret nc

    cpl
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    and b
    nop
    nop
    rst $38
    rst $38
    add b
    ld a, a
    inc c
    di
    inc h
    db $db
    ld h, d
    sbc l
    ld e, b
    and a
    ld a, [c]
    dec c
    and b
    nop
    nop
    rst $38
    rst $38
    ld [$04f7], sp
    ei
    db $10
    rst $28
    dec h
    jp c, $ef10

    sbc a
    ld h, b
    ld a, [hl+]

jr_037_6a09:
    add b

jr_037_6a0a:
    ccf
    rst $38
    rra
    rst JumpTable
    rst $38
    rst $38
    sbc $1e
    ei
    ld e, $fb
    rra
    add sp, -$60
    add b
    nop
    rst $38
    rst $38
    ld c, b
    or a
    dec d
    ld [$91ff], a
    ld l, [hl]
    ld h, b
    sbc a
    push af
    ld a, [bc]
    nop
    nop
    jr nz, jr_037_6a0a

    dec b
    ld a, [$e51a]
    ld a, h
    add e
    push af
    ld a, [bc]
    ld e, a
    and b
    ld [hl], a
    adc b
    ei
    inc b
    nop
    nop
    dec b
    ld a, [$cc33]
    xor l
    ld d, d
    rlca
    ld hl, sp-$73
    ld [hl], d
    add e
    ld a, h
    ld c, a
    or b
    ei
    inc b
    nop
    ld b, c
    ld c, b
    dec hl
    call nc, $28d7
    cp a
    ld b, b
    rst $38
    nop
    or a
    rst JumpTable
    jr nz, jr_037_6a09

    ld d, b
    or [hl]
    ld d, l
    ld [hl], l
    nop
    jp nc, $a0c5

    ret nc

    add c
    ld b, b
    and c
    ld a, [bc]
    add b
    pop bc
    and d
    ld e, l
    add b
    ld a, a
    ld a, $3e
    ld a, $05
    cp $b9
    cp $54
    rst $38
    nop
    inc d
    ldh a, [$ba]
    ld a, l
    ld [hl], e
    db $fc
    ld l, [hl]
    ld hl, sp-$4d
    db $ec
    ld d, a
    add sp, -$71
    ld c, a
    ld e, [hl]
    pop hl
    ld d, l
    rst $38
    rst $38
    ld h, c
    db $f4
    ld a, [$00fd]
    add d
    ret nc

    ret nz

    ccf
    ld a, [c]
    dec c
    call nz, $803b
    ld a, a
    cpl
    add sp, $17
    ldh a, [rIF]
    cpl
    ld d, l
    ld d, l
    rst $38
    cp $fc
    db $fd
    ld a, [$f0e8]
    ld [$4090], a
    ld d, l
    rst $38
    nop
    ld b, d
    cp l
    and b
    ld e, a
    ld b, l
    cp a
    dec bc
    dec b
    ld e, a
    xor a
    ld d, c
    ld bc, $02ff
    rla
    ld l, c
    cp $b0
    and $f9
    call nc, $c3eb
    cp $a8
    nop
    nop
    dec b
    ld a, [$f00f]
    ld d, a
    xor b
    rra
    ldh [rPCM12], a
    adc c
    dec a
    jp nz, $817e

    ld h, c
    sbc [hl]
    nop
    ld d, c
    add b
    push hl
    ld a, [de]
    push de
    ld a, [hl+]
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    ld a, a
    sbc [hl]
    ld h, b
    ld a, l
    dec d
    ld d, a
    nop
    ld [hl], a
    adc b
    rst $38
    rst $38
    db $fd
    jp nc, $c0a4

    ld d, l
    ld a, l
    nop
    db $fc
    db $fd
    ld [hl-], a
    ld c, b
    sub b
    inc bc
    ld b, l
    ld d, l
    nop
    rst $38
    ld a, l
    ld [bc], a
    rst $08
    rra
    rla
    ld l, $0e
    dec b
    inc b
    ld d, h
    ld hl, sp-$3d
    db $fc
    xor e
    db $fc
    sub a
    db $d3
    db $fc
    and a
    sub $e6
    xor [hl]
    ldh a, [rHDMA5]
    ld d, l
    nop
    inc de
    ld bc, $8142
    ld l, e

jr_037_6b20:
    xor a
    ld e, a
    rra
    jr z, jr_037_6b25

jr_037_6b25:
    rst $38
    db $dd
    jr nz, jr_037_6b29

jr_037_6b29:
    nop
    or $08
    dec l
    ret nc

    sbc [hl]
    ld h, b
    jr c, @-$3e

    or l
    ld b, b
    ld d, l
    ld d, l
    nop
    ld b, h
    or c
    and b
    dec b
    adc e
    rla
    ccf
    ld a, a

Call_037_6b3f:
    add b
    ld bc, $00ff
    rst JumpTable
    jr nz, jr_037_6b20

    dec h
    ret c

    daa
    ret c

    daa
    call c, $c123
    ccf
    inc bc
    ld d, [hl]
    xor d
    nop
    adc b
    xor $00
    ld c, b
    xor e
    nop
    adc b
    rra
    ld d, b
    xor h
    sbc $00
    adc b
    rra
    ld d, b
    xor l
    nop
    adc b
    rra
    ld d, b
    ld a, a
    ldh a, [rNR21]
    ld c, b
    jp $c402


    push bc
    add $c6
    push bc
    rr a
    ld [hl], b
    cp d
    nop
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $aa00

    ret nc

    pop de
    jp nc, $d3d3

    jp nc, Jump_037_40d1

    ret nc

    rra
    ld d, b
    ret z

    ret


    jp z, $cccb

    call $ce20
    rst $08
    ld e, a
    or b
    call nc, $d6d5
    rst $10
    ret c

    ld [bc], a
    reti


    jp c, $aadb

    call c, $1fdd
    sbc b
    sbc $00
    rst JumpTable
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $00
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    db $ed
    ret nz

    ld [bc], a
    ld [$501f], sp
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    nop
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$02fb]
    db $fc
    db $fd
    db $fd
    db $fc
    ei
    ld a, [$501e]
    cp $00
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    rlca
    ld [$0908], sp
    ld a, [bc]
    dec bc
    rst $38
    dec bc
    pop bc
    ld [bc], a
    ld [$80df], sp
    ret nc

    inc c
    dec c
    inc c
    ret nc

    ld a, a
    sbc b
    nop
    db $dd
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    nop
    dec d
    ld d, $17
    jr jr_037_6c1c

    ld a, [de]
    dec de
    inc e
    ld [$afae], sp
    or b
    or c
    rra
    ld d, b
    dec e
    ld e, $1f
    nop
    jr nz, jr_037_6c34

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_037_6c45

jr_037_6c1c:
    ld a, [hl+]
    dec hl
    inc l
    and d
    and e
    and h
    ld b, b
    and l
    rra
    ld d, b
    dec l
    ld l, $2f
    jr nc, jr_037_6c5c

    ld [hl-], a
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_037_6c6d

jr_037_6c34:
    ld a, [hl-]
    ld [bc], a
    dec sp
    inc a
    or d
    or e
    or h
    or l
    rra
    ld d, b
    dec a
    nop
    cp b
    ld a, $b8
    ccf
    ld b, b

jr_037_6c45:
    ld b, c
    ld b, d
    ccf
    nop
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    cp b
    and [hl]
    db $10
    and a
    xor b
    xor c
    rra
    ld d, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    nop

jr_037_6c5c:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    and b
    or [hl]
    or a
    cp b
    cp c

jr_037_6c6d:
    ret nz

    rra
    ld d, b
    ld e, e
    dec c
    nop
    inc de
    jr jr_037_6c76

jr_037_6c76:
    dec bc
    rra
    ld h, b
    ld [$1300], sp
    rra
    dec de
    inc de
    jr z, @+$2a

    ld c, b
    rra
    dec e
    ld [$4028], sp
    rra
    inc e
    jp c, $1f60

    inc a
    jr z, jr_037_6caf

    rra
    jr nz, jr_037_6cba

    rra
    inc c
    dec bc
    xor d
    nop
    rrca
    dec hl
    ld hl, $1f2b
    inc c
    ld a, [bc]
    add b
    ld c, d
    cp [hl]
    ld b, e
    ld l, d
    xor d
    ld b, b
    rra
    ld [de], a
    nop
    ld c, $1f
    db $10
    add hl, bc
    rst $30
    nop
    rrca

jr_037_6caf:
    rra
    inc c
    dec de
    db $10
    rra
    jr jr_037_6cdf

    rra
    rra
    nop
    inc c

jr_037_6cba:
    rra
    inc c

jr_037_6cbc:
    ld b, b
    nop
    nop
    add hl, bc
    inc b
    nop
    ret z

    nop
    jr c, jr_037_6cc6

jr_037_6cc6:
    nop
    jr jr_037_6cd8

    dec de
    rlca
    ld [$0507], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $1717
    ld bc, $5601
    add b

jr_037_6cd8:
    nop
    ld a, h
    add b
    ld l, a
    ldh a, [$7c]
    add e

jr_037_6cdf:
    cp a
    ld b, b
    inc c
    ld a, a
    add b
    ei
    db $e3
    ld c, a
    nop
    rrca
    ld b, [hl]
    jr c, jr_037_6cef

    ld l, a
    jr c, @+$01

jr_037_6cef:
    nop
    ld e, a
    and b
    inc hl
    ld b, l
    jr jr_037_6d36

    rrca
    ld bc, $101f
    jr nz, jr_037_6cbc

    nop
    ld h, b
    ld h, c
    add b
    ld a, l
    ld hl, $30f6
    push hl
    push hl
    rra
    ld [de], a
    and b
    ld h, b
    ld bc, $0543
    ld bc, $030b
    ld b, $00

jr_037_6d12:
    ld b, $0e
    ld c, $5c
    inc e
    cp c
    inc a
    ld d, b
    ld [$ab79], sp
    ld sp, hl
    ld sp, hl
    dec l
    inc bc
    rrca
    nop
    nop
    jr nz, jr_037_6d46

    ld [hl], b
    jr c, jr_037_6d89

    inc a
    ld b, d
    nop
    nop
    ld h, [hl]
    ld [bc], a
    ld l, [hl]
    ld b, $5f
    rrca
    ld a, a
    rla
    nop

jr_037_6d36:
    ld a, [hl]
    dec sp
    push af
    ccf
    ld [$d4bf], a
    cp a
    nop
    ldh [$bf], a
    ld d, b
    xor a
    ret z

    or a
    rst $08

jr_037_6d46:
    jr nc, jr_037_6d90

    nop
    nop
    rrca
    add b
    add b
    ld b, d
    ret nz

    nop
    ldh [rTMA], a
    nop
    ldh a, [rP1]
    ld hl, sp+$7e
    ld c, b
    nop
    inc c
    ld l, h
    jr nc, jr_037_6d5d

jr_037_6d5d:
    sub d
    rrca
    dec c
    ldh [$7f], a
    ld a, a
    cp a
    ret nz

    nop
    rst JumpTable
    cp c
    rst $28
    xor c
    rst $28
    jp hl


    rrca
    add hl, bc
    add c
    ld bc, $360a
    add hl, sp
    ccf
    jr nz, @+$41

    ccf
    ld a, a
    nop
    rst $28
    rst $28
    sbc $39
    cp a
    call c, Call_037_5477
    ld [$7477], sp
    rlca
    inc b
    ld bc, $cf0a

jr_037_6d89:
    call z, $1acf
    ld c, b
    rst $08
    rst $08
    ld a, a

jr_037_6d90:
    jr nz, jr_037_6d12

    add b
    pop hl
    ld bc, $f2e1
    inc de
    ei
    ld [$aabb], a
    and c
    inc bc
    cp $ef
    db $fd
    ld b, l
    cp $fe
    cp a
    ld h, b
    nop
    ld hl, sp-$08
    ld [hl], h
    adc h
    ld a, [$ce36]
    ld c, d
    nop
    cp $7a
    cp $06
    ld hl, sp+$78
    add $46

jr_037_6db8:
    dec c
    cp $3a
    ld a, h
    add h
    inc sp
    ld a, c
    ld a, a
    jr nz, jr_037_6dc2

jr_037_6dc2:
    ld b, b
    ld a, a
    ld h, a
    inc a
    inc h
    dec a
    dec h
    ccf
    rra
    ld h, $3f
    jr nz, jr_037_6df2

    daa
    dec hl
    ld hl, $a031
    ld d, l
    ld a, a
    ld a, a
    ret nz

    ret nz

    and b
    ld h, b
    ldh [rP1], a
    and b
    rst $28
    xor a
    ld l, [hl]
    ld l, c
    adc a
    adc h
    add a
    ld b, b
    add h
    ld h, c
    rlca
    inc b
    ld h, a
    ld h, h
    db $eb
    xor h
    inc c
    xor a
    ld l, b
    rst $08

jr_037_6df2:
    rst $08
    ld a, a
    and b
    ld h, b
    ld h, b
    ld [bc], a
    ldh a, [$90]
    reti


    ld l, c
    cp c
    xor c
    pop hl
    ld d, l
    inc b
    db $ed
    db $fc
    ld b, h
    db $fc
    db $fc
    scf
    inc a
    inc a
    nop
    ld a, [hl-]
    ld h, $3e
    ld [hl-], a
    ld e, $12
    ld a, [hl]
    ld [hl], d
    inc bc
    cp [hl]
    jp nz, $b27e

    sbc $52
    pop hl
    dec hl
    ld [$c1bf], sp
    ld a, a
    ld a, a
    ld bc, $00ff
    rst $38
    nop
    pop af
    nop
    ld e, a
    dec b
    ld [$01d6], sp
    jr z, jr_037_6e2e

jr_037_6e2e:
    ld [$039f], sp
    ld [$0e7f], sp
    ld b, b
    nop
    jr jr_037_6db8

    jr nz, @+$01

    rra
    rrca
    ld c, b
    db $fc
    rst $38
    rrca
    rst $38
    ldh [$d8], a
    ld de, $0018
    jr nz, jr_037_6e67

    dec d
    jr z, jr_037_6e7a

    ld b, b
    ldh [rIE], a
    sub c
    add b
    inc hl
    ld [$ff00], sp
    rst $00
    jr c, jr_037_6ed6

    add b
    adc a
    ld b, l
    ld [hl], b
    ld e, l
    jr c, jr_037_6e5e

jr_037_6e5e:
    ret nz

    ccf
    ld l, a
    ld [$0f0e], sp
    ld b, b
    jr c, jr_037_6ea6

jr_037_6e67:
    ret nz

    inc sp
    ld [$407d], sp
    ld bc, $0f08
    ldh a, [$f0]
    add b
    jr c, jr_037_6e7c

    cp $01
    rst $38
    nop
    add b
    ld a, a

jr_037_6e7a:
    db $fc
    ld h, d

jr_037_6e7c:
    inc bc
    ld d, b
    jr c, jr_037_6e80

jr_037_6e80:
    ld e, b
    db $dd
    rst $38
    ld [hl], a
    inc bc
    ld [$02aa], sp
    rst $38
    ld d, l
    rst $38
    ld [hl+], a
    rst $38
    adc b
    ld [hl], $18
    ld c, b
    ld bc, $22b7
    db $dd
    ld d, l
    xor d
    xor d
    ld d, l
    inc bc
    ld b, b
    ld [bc], a
    cp e
    ld b, h
    xor $11
    cp e
    ld b, h
    ld sp, $0030
    ld [hl+], a

jr_037_6ea6:
    rst $38
    ld a, [hl]
    cp a
    ld c, b
    ldh [rIE], a
    inc bc
    rst JumpTable
    ld e, b
    rrca
    call c, $08df
    rst $28
    ld h, b
    rlca
    ld bc, $8419
    ld [$2801], sp
    inc bc
    db $fc
    ld [bc], a
    ld a, b
    add a
    rlca
    ld hl, sp-$08
    rlca
    xor d
    ld d, b
    sbc [hl]
    ld b, c
    ld h, c
    cp b
    ld e, b
    rst $38
    ld bc, $fffe
    nop
    rrca
    ld d, b
    ld [hl+], a
    ld [c], a
    dec e

jr_037_6ed6:
    ld [$8720], sp

jr_037_6ed9:
    nop
    cp $28
    ld h, b
    nop
    ld a, h
    ccf
    rrca
    ld l, b
    ld bc, $f740

jr_037_6ee5:
    db $10
    ld bc, $0058
    jr c, @-$06

    rst $38
    jr nz, jr_037_6ee5

    ld hl, sp+$0e
    ld c, b
    rst $38
    db $10
    rst $38
    ld h, l
    sbc a
    ld [hl+], a
    add e

jr_037_6ef8:
    ld a, a
    dec bc
    jr nz, jr_037_6f0f

    db $fc
    ret nz

    dec b
    ld [$40b0], sp
    rst $38
    dec b
    db $10
    rst $38
    cp $fb
    db $fc
    adc a
    ld [hl], b
    nop
    ld a, [hl]
    add b
    adc a

jr_037_6f0f:
    ldh a, [$3f]
    ret nz

    rra
    ret nz

    ld bc, $f0ed
    and b
    ld b, b
    add b
    nop
    jr nz, @+$03

    ld [$3008], sp

jr_037_6f20:
    nop
    db $fc
    nop
    ld l, h
    ld de, $3f7f
    rra
    nop
    ld a, a
    ccf
    ccf
    nop
    ccf
    ld bc, $031e
    db $10
    inc a
    nop
    ccf
    ccf
    jr nz, jr_037_6ef8

    rst $38
    rra
    ldh [$c2], a
    sbc e
    ld de, $410f
    jp $ec3f


    inc de
    ld l, l
    ld d, b
    pop bc
    ld l, l
    rst $38
    ld a, [hl+]
    jr z, jr_037_6ed9

    jr c, @-$7e

    ld l, d
    db $10
    rrca
    jr c, jr_037_6f53

jr_037_6f53:
    ld sp, $0809
    ld hl, sp-$01
    rlca
    ld hl, sp+$0d
    jr nz, @-$07

    ld hl, sp+$01

jr_037_6f5f:
    jr jr_037_6f5f

    sbc [hl]
    ldh [$6d], a
    ld [$1842], sp
    rra
    ldh [$80], a
    dec c
    nop
    nop
    nop
    rrca
    push af
    jr nz, jr_037_6fa9

    ld [$0dc0], sp
    ld [$28c2], sp
    add hl, sp
    nop
    ld c, b
    nop
    rst $38
    ld hl, sp+$07
    rrca
    ld d, b
    rra
    cp b
    ld a, a
    add hl, bc
    push de
    ld sp, hl
    ld l, c
    add l
    ld h, b
    nop
    ld b, b
    db $fc

jr_037_6f8d:
    cp $fe
    jr nz, jr_037_6f8d

    db $fd
    ld bc, $8210
    cp b
    add a
    jr c, jr_037_6f20

    dec b
    cp c
    ld b, $7f
    nop
    rst $08
    ld bc, $c708
    ld l, c
    jr jr_037_6fc7

    nop
    add b
    ld a, a
    db $10

jr_037_6fa9:
    inc b
    nop
    add [hl]
    ld l, a
    ld [$081b], sp
    rlca
    rlca
    ld bc, $0b03
    ld [$0007], sp
    rrca
    ld [bc], a
    ld bc, $070f
    inc bc
    inc bc
    ldh [rBGP], a
    ld l, b
    nop
    sbc $1b
    ld a, [bc]
    nop

jr_037_6fc7:
    ld d, b
    rlca
    ld [hl], e
    ld e, c
    rra
    db $10
    db $eb
    ld [hl+], a
    db $10
    ld b, b
    rra
    ld b, e
    ldh [rNR42], a
    ld d, b
    ld d, h

jr_037_6fd7:
    xor e
    xor e
    ld d, h
    rrca
    ld d, b
    ld b, e
    ld [de], a
    ld [hl], h
    db $10
    db $d3
    ld e, b
    inc de
    stop
    jr nz, jr_037_6fd7

    ld l, e
    ld [$fcfd], sp
    nop
    pop bc
    db $fc
    ld [bc], a
    db $fc
    add l
    ld a, [$e3f4]
    nop
    call nz, $0ec3
    pop bc
    rra
    ret nz

    push hl
    ld [bc], a
    nop
    db $fc
    inc bc
    pop hl
    ld e, $c3
    inc a
    rlca
    ld hl, sp+$01
    inc e
    ldh [rNR32], a
    ldh [$c6], a
    jr c, @-$06

    or l
    add hl, bc
    xor b
    cp l
    db $10
    add b
    cp e
    add hl, bc
    ld b, b
    rlca
    ld [$0107], sp
    rlca
    ld [bc], a
    inc bc
    rra

Jump_037_701f:
    rrca
    ld a, l
    ld bc, $0b60
    ld [$2301], sp
    nop
    inc bc
    sbc h
    ld h, b
    rst $38
    ld h, $c1
    rrca
    ld h, b
    ld e, $2a
    nop

Call_037_7033:
    rst $38
    add d
    rst $38
    ldh a, [$8f]
    call z, $0833
    nop
    rst $30
    inc b
    ei
    ld hl, sp-$01
    di
    db $fc
    rst $20
    ld [$e6f8], sp
    ld sp, hl
    rlca
    db $e3
    add hl, bc
    ccf
    rst $38
    ld a, b
    add b
    ld hl, $cc08
    ccf
    ret nz

    ccf
    ld b, b
    cp a
    ld c, $a8
    rrc c
    ld [hl], b
    sbc e
    add hl, bc
    add b
    push bc
    ld a, [bc]
    rlca
    ld hl, sp+$03
    dec b
    db $fc
    nop
    rst $38
    ld a, $c1
    sbc a
    ld de, $431f
    ld a, [bc]
    ld [$619e], sp
    adc $31
    xor h
    ld hl, $7f80
    rst $00
    ld bc, $8e38
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [rNR22]
    ld de, $0192
    jr jr_037_7087

jr_037_7087:
    pop bc
    ld [$f328], sp
    inc c
    scf
    db $10
    rlca
    adc b
    db $ed
    ld a, [bc]
    ret nz

    nop
    jp $3bcb


    ld a, [$f07f]
    rlca
    ccf
    jp hl


    ld e, $e6
    rra
    reti


    add hl, bc
    ret


    ld [$0a63], sp
    nop
    nop
    ld sp, $fec0
    ld bc, $e719
    rra
    add b
    ld c, e
    ld [$04fb], sp
    rst $30
    ld [$3f7f], sp
    jp c, $3c00

    jr nz, @-$26

    rst JumpTable
    ldh [$e0], a
    rst $38
    ldh a, [rP1]
    rrca
    db $fc
    inc bc
    ret c

    daa
    inc bc
    rst $38
    ld a, a
    db $10
    ld bc, $07fa
    adc c
    ld [de], a
    nop
    rst $38
    inc a
    jp $2a87


    ld hl, $ff80
    ld a, h
    add e
    inc sp
    ld a, [bc]
    inc c
    db $10
    rst $28
    jr z, @+$7d

    rlca
    sbc a
    ld a, [bc]
    rrca
    db $10
    ld c, l
    inc c
    nop
    jr c, @+$40

    ld c, [hl]
    ld e, d
    adc e
    inc d
    add b

jr_037_70f2:
    sub e
    inc hl
    rlca
    ld hl, sp+$07
    ld hl, sp+$1f
    ldh [$60], a
    ld h, b
    sbc a
    jp $390b


    jr jr_037_70f2

    rrca
    rst $28
    db $10
    or $10
    add hl, bc
    ld [$2bf7], sp
    jr nz, @+$03

    cp $3a
    ret nz

    ld [bc], a
    ret nz

    nop
    sbc a
    nop
    ld b, b
    ccf
    rst $10
    ld hl, $0007
    nop
    add hl, de
    ld b, $38
    rlca
    ld [hl], b
    adc a
    nop
    inc c
    rst $38
    rst $20
    ld hl, sp-$10
    ld b, a
    db $10
    jr z, jr_037_7138

    add hl, sp
    add $05
    nop
    rst $38
    ccf
    ret nz

    ld a, c
    ld a, $0a
    rst $38
    sub e

jr_037_7138:
    ld [$1f00], sp
    ldh [$c7], a
    jr c, jr_037_717f

    cp a
    jr c, @+$01

    dec sp
    adc h
    ld a, a
    sla c
    dec d
    ld de, $1141
    rlca
    ld e, e
    ld [$0a9f], sp
    dec b
    ret nz

    inc a
    jp $df20


    dec d
    db $10
    adc a
    db $e3
    ld hl, $0f44
    add sp, $32
    cp $ff
    rst $30
    rrca
    ld [$817e], sp
    nop
    ldh [$1f], a
    ld a, $c1
    ld a, a
    add b
    add b
    ld a, a
    rla
    nop
    rst $38
    db $e3
    push bc
    inc de
    rst $28
    dec e
    jr nz, jr_037_71e8

    inc d
    ld a, c
    dec de
    cp b
    ld e, c
    add hl, hl

jr_037_717f:
    ret nz

    ld c, l
    dec bc
    ld b, b
    ld a, [hl+]
    ld h, c
    ld a, [de]
    ld c, $f1
    ld a, a
    ld d, c
    add b
    sbc c
    ld [de], a
    ld hl, sp+$1b
    add hl, bc
    rst $38
    nop
    ld a, $74
    add hl, bc
    dec l

jr_037_7196:
    add b
    ld a, a
    ld sp, $0010
    ld sp, $9508
    inc d
    ld bc, $3a6f
    cpl
    add sp, $17
    xor l
    inc d
    ldh a, [$3f]
    jr c, jr_037_71be

    ld sp, $0980
    ld b, c
    add hl, de
    ldh [rNR44], a
    ld b, c
    rrca
    db $10
    dec bc
    rst $38
    nop
    nop
    rst $38
    and b
    cp c
    ld a, [hl+]
    ld b, c

jr_037_71be:
    xor l
    rrca
    ld a, [bc]
    and b
    rrca
    dec c
    res 1, l
    rrca
    ld a, [bc]
    sbc l
    adc l
    add hl, hl
    ei
    inc b
    rst $28
    ld e, $4d
    ld a, b
    add a
    ld [hl], h
    add $af
    ld e, b
    rst $38
    ld bc, $0ffe
    ld a, [bc]
    ld c, b
    rst $38
    cpl
    add e
    ld a, h
    rrca
    ld a, [bc]
    inc e
    sub c
    rrca
    ld a, [bc]
    adc d
    rrca

jr_037_71e8:
    dec bc
    ld c, b
    add hl, de
    adc a
    adc [hl]
    ld [hl], c
    rst $28
    ccf
    rst $38
    ld bc, $91ee
    rst $28
    jr nz, jr_037_7196

    xor a
    nop
    dec c
    rrca
    db $10
    rra
    and e
    ld b, e
    jp $090d


    ld hl, sp-$01
    ret nz

    ld b, l
    ld h, e
    or b
    jr nz, jr_037_720a

jr_037_720a:
    add e
    ld h, l
    inc bc
    rst $38
    ldh [rIE], a
    inc de
    db $fc
    rst $38
    ld bc, $094b
    or $6f
    dec hl
    adc b
    dec h
    inc b
    rst $38
    ld hl, sp+$7b
    nop
    ccf
    ret nz

    ret nz

    dec sp
    daa
    ld bc, $50fe
    xor a
    ld b, $f9
    jr z, @-$0d

    ld c, $4a
    nop
    ld b, d
    rst $38
    add b
    ld a, a
    rrca
    jr @-$17

    db $e3
    inc e
    ld l, l
    xor a
    ld h, c
    add $94
    rrca
    add hl, bc
    ld bc, $a8fe
    add hl, sp
    rst $08
    ldh a, [rIF]
    ret z

    inc hl
    adc b
    rst $38
    rrca
    add [hl]
    inc e
    db $e3
    inc hl
    ld b, b
    call c, $f826
    rlca
    ret nz

    rst $38
    rlca
    rst $38
    ld c, l
    inc bc
    sub c
    ret nz

    ccf
    ld e, h
    ld b, d
    ccf
    ld [hl+], a
    rst $08
    ld d, c
    or e
    add b
    ld a, a
    ld c, h
    ret nz

    ld l, a
    ld e, [hl]
    or [hl]
    add b
    ldh [rIF], a
    rrca
    daa
    ld hl, sp-$31
    ld hl, $c8f3
    ld c, a
    xor l
    ld a, a
    add b
    inc h
    ld a, b
    rst $38
    ret nz

    ld c, $ff
    db $fc
    rst $38
    db $e3
    adc a
    ld h, h
    ld [hl+], a
    ccf
    ld b, e
    ret nz

    inc hl
    pop de
    cp $06
    ld sp, hl
    sub d
    ld c, a
    call z, $3123
    db $fc
    inc bc
    xor l
    ld b, c

jr_037_7297:
    rst $38
    db $e3
    jr nz, jr_037_7297

    db $fd
    inc h
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38

jr_037_72a2:
    ld b, d
    xor $6e
    rst $38
    cp b
    ld a, a
    add b
    ld b, l
    jr jr_037_72f4

    rst $20
    dec hl
    ret nz

    ccf
    inc hl
    ld hl, sp-$01
    ld [hl], b
    add hl, de
    rst $38
    ld c, $f1
    daa
    ld h, c
    ld a, $c1
    inc hl
    ld hl, $38c7
    add hl, sp
    jr nz, jr_037_72a2

    ld a, [hl]
    add c
    or c
    nop
    ld hl, sp+$07
    rst $00
    ccf
    ld bc, $1fff
    rst $38
    ld [hl-], a

jr_037_72d0:
    inc b
    ei
    xor a
    ld hl, $fff3
    jr nz, jr_037_72d0

    and [hl]
    ld sp, $6be0
    db $fc
    inc bc
    inc hl
    ld h, b
    add c
    ret z

    db $db
    ld hl, $c33c
    ld l, a
    add b
    rst $38
    ld a, a
    sub [hl]
    rst $08
    ld c, $f1
    ld l, a
    ccf
    ld b, e
    xor a
    ldh [$7d], a

jr_037_72f4:
    rra
    ld l, a
    ld h, b
    xor a
    ld hl, $0a0f
    inc bc
    rrca
    dec c
    ld h, c
    rrca
    sub e
    ld bc, $0f0c
    ldh a, [$e4]
    dec de
    ld h, $c9
    rrca
    ld a, [bc]
    ld l, e
    add b
    ld a, a
    ld l, c
    ccf
    ret nz

    inc hl
    inc bc
    ld bc, $e0fe
    rra
    rra
    ldh [$29], a
    daa
    add b
    ld a, c
    ld b, $f9
    db $fc
    inc bc
    dec sp
    call nz, Call_037_4187
    ld a, b
    ld e, h
    nop
    ld e, $e1
    ld hl, sp+$07
    add hl, sp
    jr nc, jr_037_7332

    db $fc
    add hl, hl
    ld h, e

jr_037_7332:
    pop bc
    ld a, $3c
    jp $0139


    cp $27
    inc sp
    inc hl
    add b
    ld a, a
    ld h, e
    ld hl, $ff00
    dec h
    ldh a, [rIF]
    ld a, a
    add b
    dec h
    daa
    ccf
    ret nz

    inc hl
    inc bc
    db $fc
    cpl
    inc sp
    dec l
    ld a, $87
    ld a, b

jr_037_7354:
    dec hl
    ld h, c
    ld a, a
    ld hl, $e067
    ld h, h
    rra
    ld l, a
    ld [hl+], a
    rra
    ldh [rNR44], a
    cp $01
    ld [hl-], a
    ld a, a
    add b
    ld [hl], l
    ld l, a
    rst $30
    ld [$0723], sp
    inc b
    ld hl, sp-$08
    rlca
    rrca
    ldh a, [$af]
    ret nz

    ccf
    db $fc
    inc hl
    dec l
    ld l, e
    xor a
    ld h, c
    ld a, a
    add b

jr_037_737d:
    ld a, a
    jr nc, jr_037_737d

    ld [bc], a
    rst $28
    dec l
    rra
    ldh [$fe], a
    ld bc, $0130
    cp $ef
    ld hl, $1fe0
    ld e, $e1
    ret


    inc hl
    ld l, a
    ldh a, [rIF]
    inc hl
    rrca
    ldh a, [rTIMA]
    ld a, [bc]
    ld sp, $f807
    ld e, [hl]
    ld b, c
    pop af
    nop
    ld a, a
    ld b, l
    inc [hl]
    rst $00
    jr c, jr_037_7354

    ld bc, $fe14
    rrca
    rrca
    ld a, a
    nop
    ld d, l
    pop bc
    dec c
    dec bc
    db $fc
    dec e
    rrca
    inc bc
    ld de, $e30d
    add l
    ld b, l
    add b
    rrca
    add hl, bc
    jr c, jr_037_73c0

jr_037_73c0:
    rst $08
    ld b, l
    ld a, a
    rrca
    add hl, bc
    or h
    ld h, c
    adc a
    dec c
    dec c
    ld hl, $431f
    ldh [$1f], a
    adc d
    db $ed
    cp $00
    rst $00
    dec e
    dec c
    ld a, a
    add l
    inc bc
    ld [$3f00], sp
    nop
    ret nz

    adc c
    add b
    nop
    ld sp, hl
    ld a, [hl-]
    nop
    ld e, $89
    ld sp, $0765
    rrca
    add hl, bc
    rst $30
    ld [$f800], sp
    nop
    cp $89
    ld bc, $f000
    or $09
    add hl, bc
    inc sp
    ld h, a
    ld hl, $8507
    dec [hl]
    ccf
    and d
    rst $08
    ldh [$85], a
    inc sp
    nop
    adc $87
    ld bc, $0034
    ld [hl], b
    rst $10
    ccf
    ld b, e
    add a
    rra
    nop

jr_037_7411:
    jr jr_037_7411

    nop
    ldh a, [$d3]
    and c
    rrca
    nop
    ld a, b
    jr nz, jr_037_741c

jr_037_741c:
    rst $20
    ld de, $1f0d
    nop
    cp $00
    pop hl
    cp e

jr_037_7425:
    set 4, b
    add l
    jr nz, jr_037_7425

    ld a, a
    ld e, e
    ld h, l
    ld d, [hl]
    jp $0911


    ccf
    ld b, e
    rst $20
    dec c
    add hl, bc
    ld h, c
    pop hl
    add $0d
    dec c
    ld hl, $00fe
    rra
    ret


jr_037_7440:
    ld b, b
    nop
    ld h, b
    rrca
    rrca
    db $10
    rra
    jr nz, jr_037_7458

    ld d, b
    ld b, b
    ld hl, $413f
    ld a, a
    ld b, b
    ld e, h
    ld h, e
    inc bc
    jr nz, @+$41

    jr jr_037_7476

    rlca

jr_037_7458:
    rrca
    sbc e
    ld b, b
    nop
    ret nz

    ret nz

    jr nz, jr_037_7440

    sub b
    ld [hl], b
    sub b
    ld a, b
    ld c, d
    adc b
    ld b, c
    ld [$21f8], sp
    db $10
    ld hl, $94f0
    ld sp, $c080
    sbc $01
    ld [hl+], a
    inc bc
    inc bc

jr_037_7476:
    ld [bc], a
    rlca
    ld b, $0f
    add hl, bc
    rrca
    ld e, $47
    inc b
    inc bc
    rlca
    rlca
    ld bc, $0301
    ld [bc], a
    ld h, c
    ld l, e
    add b
    dec sp
    ld hl, sp-$08
    ld c, [hl]
    ld a, [hl]
    db $e3
    rst $38
    ld e, $00
    rst $38
    ld [$50ff], a
    db $fc
    ret nc

    ldh a, [$a0]
    nop
    ldh a, [$30]
    ldh a, [$e8]
    db $fc
    jr z, @-$02

    ld b, a
    ld bc, $89ff
    rst $38
    ld a, [$ec3e]
    db $ec
    ccf
    nop
    nop
    dec b
    ld a, [bc]
    rrca
    ld a, [hl+]
    cpl
    dec [hl]
    ccf
    nop
    ld a, a
    ld l, [hl]
    ld l, d
    ld a, e
    pop hl
    pop af
    ld [hl], b
    ld [hl], b
    ld b, b
    ld d, b
    ld hl, $3071
    ld sp, $1614
    ld b, $48
    rlca
    ld a, [hl-]
    inc bc
    inc bc
    ld e, a
    add b
    nop
    ld [hl], b
    ld b, $b8
    ld hl, sp-$20

jr_037_74d4:
    ldh [$80], a
    ld b, b
    inc l
    jr nz, jr_037_74da

jr_037_74da:
    stop
    or h
    nop
    sub h
    nop
    xor b
    ld c, $01
    ld e, [hl]
    inc b
    ld [hl], h
    jr z, jr_037_74d4

    or b
    cp b
    ld e, a
    add b
    ret nz

    ld [hl], b
    ld [hl], b
    adc b
    ld hl, sp-$30
    ldh a, [$fe]
    nop
    cp $33
    dec a
    ld l, l
    ld a, a
    ld c, a
    ld a, e
    ld e, [hl]
    ld b, $72
    ld e, [hl]
    ld a, d
    ld h, $26
    dec e
    ld a, [bc]
    and b
    ld h, b
    nop
    ld h, b
    ret nz

    ret nz

    add b
    add b
    cp b
    cp b
    ret c

    ld bc, $48e8
    ld a, b
    jr c, jr_037_758e

    db $10
    jr nc, jr_037_7533

    dec bc
    ld [bc], a
    add b
    nop
    ret nz

    ld b, b
    ld h, b
    jr nz, jr_037_7553

    db $10
    jp nz, $2021

    jr nz, @+$22

    ld b, b
    ld b, b
    ld d, c
    add b
    ldh [rNR41], a
    rra
    add hl, bc
    ld b, b
    ld [bc], a
    ld [bc], a

jr_037_7533:
    push bc
    rst $00
    add hl, hl
    ld b, b
    cpl
    jr nz, @+$26

    inc h
    ld a, [de]
    ld a, [de]
    inc [hl]
    inc [hl]
    inc h
    ld c, b
    ld a, b
    ld hl, $7070
    rra
    inc c
    jr c, jr_037_7549

jr_037_7549:
    ld hl, $18e6
    rrca
    inc c
    ld b, $00
    inc a
    inc bc
    dec h

jr_037_7553:
    nop
    rrca
    nop
    add hl, bc
    ld b, $19
    ld b, $10
    rrca
    nop
    jr z, @+$19

    ldh a, [rIF]
    ld h, d
    sbc l
    ld bc, $0000
    ld h, d
    ld bc, $43bc
    add b
    ld a, a
    nop
    rst $38
    sub b
    ld hl, $fe01
    inc hl
    cp [hl]
    ld bc, $3fc0
    ret z

    ld l, e
    dec h
    ldh [$1f], a
    ld [hl], l
    call c, Call_037_6700
    ld b, $98
    inc bc
    db $fc
    ld a, [bc]
    push af
    ld [hl], e
    add c
    nop
    nop
    ld h, b
    nop
    db $fc
    nop

jr_037_758e:
    ld b, c
    cp h
    ld b, $f9
    ret nz

    rst $28

jr_037_7594:
    ld h, b
    ld c, h
    add b
    ld [hl-], a
    call z, $d826
    inc b
    ld a, $c0
    ld c, $f0
    inc bc
    ld c, l
    dec c
    nop
    nop
    rla
    ld [$0a15], sp
    jr jr_037_75b1

    inc d
    ld a, [bc]
    ld bc, $001e
    dec b

jr_037_75b1:
    ld a, [$5fa0]
    rst $38
    ld d, e
    nop
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ldh a, [$f0]
    rst $28
    ldh [rIF], a
    jp nz, $003d

    rst $38
    ld l, a
    inc h
    ld h, [hl]
    ld [hl+], a
    ld [$f708], sp
    jr c, jr_037_7594

    xor a
    cp $fe
    ld a, a
    db $10
    ld a, [hl]
    ld a, h
    ld a, h
    jr z, @+$04

    ld [c], a
    or $36
    ld c, h
    ld d, h
    ld b, c
    sub h
    db $76
    ld [hl], a
    cpl
    and h
    and [hl]
    ld c, $ac
    xor [hl]
    inc h
    ld h, $23
    daa
    xor a
    adc b
    nop
    call z, $db9b

jr_037_75f0:
    adc d
    jp z, $dbdb

    ld c, h
    inc b
    ld c, h
    ei
    inc b
    ld a, [bc]
    inc b
    cpl
    adc d
    rlc b
    jp c, Jump_037_49db

    ld c, c
    ld e, d
    ld e, d
    ld c, e
    ld c, e
    add d
    ld a, a
    inc bc
    db $fc
    ld c, e
    ld c, h
    ld d, [hl]
    add b
    ld c, c
    nop
    ld c, a
    rlca

jr_037_7613:
    ld hl, sp-$3c
    jr c, jr_037_7613

    nop
    ld h, h
    nop
    inc h
    xor b
    xor b
    and h
    and h
    xor [hl]
    xor b
    ld l, a
    ld [bc], a
    ld l, b
    db $fc
    inc bc
    inc b
    inc bc
    nop
    nop
    add hl, bc
    ldh [rP1], a
    nop
    jr nz, jr_037_75f0

    jr nc, @-$3e

    nop
    rst $38
    rst $38
    add b
    ld b, d
    add hl, de
    db $10
    rst $30
    rst $10
    add hl, sp
    ld sp, $10fe
    cp h
    rst $30
    rst JumpTable
    xor a
    ld h, d
    ld a, a
    db $76
    rst $38
    ld d, b
    or $26
    ld a, a
    jr nz, jr_037_764d

jr_037_764d:
    ld hl, sp-$08
    inc b
    nop
    db $fc
    ld a, [c]
    cp a
    ld a, [$7dbf]
    cp a
    db $fd
    ld b, d
    rst $38

jr_037_765b:
    ld b, c
    dec b
    nop
    dec e
    ld bc, $0c21
    nop
    nop
    rlca
    nop
    add hl, bc
    ld b, $08
    rlca
    rrca
    nop
    nop
    ret nc

    rst $08
    and b
    sbc a
    ld b, b
    ccf
    add b
    jr nz, jr_037_76f5

    ret nz

    ld b, e
    ld d, b
    xor a
    jr nz, jr_037_765b

    ld [bc], a
    ld b, b
    db $fc
    ld hl, $f905
    inc bc
    ld sp, hl
    ld a, [bc]
    ld a, [c]
    nop
    inc d
    db $e4
    dec c
    ldh [$29], a
    ret


    ld a, [$0058]
    db $fd
    cp d
    push af
    or d
    ld l, c
    ld h, [hl]
    pop af
    ld l, [hl]
    nop
    pop de
    adc $a1
    sbc [hl]
    add c
    cp [hl]
    rst $38
    rst $38
    inc bc
    ld a, b
    ld a, b
    ld a, e
    ld a, b
    ld a, d
    ld a, c
    and c
    add hl, hl
    ld [$e7e7], sp
    ld l, e
    ld h, e
    ld hl, $23ab
    dec hl
    nop
    and e
    ld c, e
    add e
    rlc e
    dec sp
    inc bc
    ld [$e410], a
    pop de
    adc $01
    inc c
    rst $38

jr_037_76c3:
    cp $7f
    ld a, a
    ld bc, $7979
    ld a, d
    ld a, b
    ld a, e
    ld a, b
    ld a, d
    dec h
    add b
    ld b, c
    ld [hl+], a
    inc e
    jp nc, $ea8c

    call nz, $00ea
    db $e4
    db $76
    ld h, b
    db $76
    ld [hl], b
    ld a, [$3930]
    inc d
    cp b
    ld hl, sp-$05
    ld [hl], l
    db $fc
    ld hl, $fdfd
    add b
    ld [hl+], a
    call c, $dcde
    jr c, @-$3e

    ld b, h
    add b
    nop
    ld d, l

jr_037_76f5:
    add b
    ld c, [hl]
    add c
    ld d, h
    add e
    jr c, jr_037_76c3

    inc [hl]
    nop
    rst $38
    ld b, c
    ld b, b
    ret nz

    ld b, c
    ld a, [hl]
    add b
    nop
    ld [de], a
    db $ec
    inc b
    ld hl, sp+$06
    ld hl, sp+$14
    db $10
    ld l, c
    rst $38
    jr nz, jr_037_7748

    rst $38
    dec hl
    ld [bc], a
    db $fc
    ld hl, $fe54
    add hl, hl
    ld a, a
    xor a
    nop
    ret nz

    rst $38
    ld sp, hl
    inc d
    cp $f2
    db $fc
    inc a
    ld hl, sp-$11
    ld c, $01
    inc bc
    inc a
    inc bc
    inc c
    inc bc
    ld [$2707], sp
    inc hl
    nop
    ld a, b
    rlca
    ld b, b
    ccf
    add b
    ld a, a
    db $10
    rst $28
    nop
    nop
    rst $38
    add hl, bc
    or $00
    cp $02
    db $fc
    nop
    dec b
    ld sp, hl
    inc bc

jr_037_7748:
    ld hl, sp+$5f
    sbc a
    ld a, $9e
    nop
    xor [hl]
    ld h, $6d
    ld h, h
    ld a, [$f879]
    ei
    nop
    or h
    inc sp
    jr z, jr_037_7782

    ld b, c
    ld a, $81
    ld a, [hl]
    inc hl
    ld bc, $01fe
    ld a, [bc]
    ld a, b
    ld a, b
    ld a, a
    ld b, b
    dec h
    inc d
    ld a, d
    ld a, b
    ld a, e
    inc hl
    ld a, c
    ld hl, $93ab
    add b
    ld h, c
    cp e
    add e
    xor e
    add e
    dec bc
    inc bc
    rlc h
    inc bc
    dec hl
    and e
    pop de
    adc $21

jr_037_7782:
    db $d3

jr_037_7783:
    call z, $2192
    call nc, $21c8
    jp c, $21c2

    ld a, d
    ld c, d
    ld a, c
    ld bc, $390e
    cp c
    ld h, c
    dec sp
    ld hl, $82bb
    ld hl, $33ff
    ld [hl], a
    ld [hl], a
    sbc $20
    adc [hl]
    inc b
    xor [hl]
    adc [hl]
    adc a
    adc [hl]
    rst $38
    ld b, b
    add a
    rlca
    ld [bc], a
    ld [hl], a
    rlca
    nop
    rst $38
    add b
    ld a, a
    ld hl, $0019
    ld h, [hl]
    rrca
    ld [hl], b
    ld [hl], c
    ld c, $41
    ld a, $a3
    nop
    inc e
    inc c
    ldh a, [$38]
    ret nz

    jr nz, jr_037_7783

    ret nz

    ld e, b
    nop
    jr nz, jr_037_7748

    ld b, c
    ld b, b
    inc bc
    rrca
    db $10
    ld [bc], a
    rra
    cpl
    ccf
    ld e, a
    ld a, a
    ccf
    and c
    nop
    jr c, @+$01

    rst $38
    ld b, d
    nop
    ld a, [bc]
    xor a
    db $e3
    db $e3
    db $eb
    ld bc, $fbeb
    ret


    pop bc
    pop bc
    db $dd
    db $dd
    xor a
    nop
    adc h
    add h
    db $76
    ld [hl], $7e
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    add h
    dec h
    ld b, b
    ccf
    jr nz, jr_037_7817

    ld hl, $2758
    nop
    nop
    ld a, a
    ret c

    daa
    ret z

    scf
    dec sp
    inc b
    nop
    ld a, [bc]
    ld a, [c]
    ld d, $e4
    inc c
    db $e4
    dec l
    ret


    nop
    ld e, e
    sbc e
    ccf
    sub a
    cp [hl]
    ld a, $7c
    ld a, h
    nop

jr_037_7817:
    ld h, b
    cpl
    ret nc

    ld c, a
    and b
    sbc a
    add b
    cp a
    ld [bc], a
    ld b, b
    ccf
    add b
    ld a, a
    rst $38
    nop
    jr nz, jr_037_7829

    ld b, b

jr_037_7829:
    cp $61
    inc bc
    db $fc
    inc b
    ld hl, sp+$0b
    di
    nop
    rst $30
    ld b, $0e
    ld c, $7a
    ld a, c
    ld a, e
    ld a, b
    or b
    jr nz, jr_037_78bc

    dec sp
    ld e, h
    ld a, a
    nop
    call z, $100c
    xor e
    inc hl
    ld l, e
    ld hl, $e363
    db $e3
    rst $20
    ld h, b
    rst $20
    cpl
    ld [hl-], a
    ld a, [hl+]
    ld l, [hl]
    jp nc, $d6c6

    inc c
    add $c6
    adc $fe
    ld b, b
    ld l, a
    ld d, d
    ld d, e
    nop
    ld a, e
    ld a, b
    ld a, d
    ld a, b
    ld a, c
    ld a, c
    ld a, a
    ld a, a
    ld [$feff], sp
    ld bc, $2200
    ld e, c
    reti


    ld [hl], a
    nop
    ld h, a
    add sp, -$19
    ret nc

    rst $08
    and b
    sbc a
    ld b, b
    inc b
    inc a
    add b
    ld a, b
    nop
    ld hl, sp+$21
    rlca
    ld [hl], e
    jr nz, jr_037_788f

    di
    ld b, c
    add e
    add hl, bc
    rlca
    nop
    inc bc
    add h
    ld hl, $0601

jr_037_788f:
    and l
    sbc d
    dec sp
    ldh [$9f], a
    nop
    ret nz

    rst $38
    pop bc
    cp $01
    ld a, $e2
    inc e
    inc bc
    ret nz

    db $10
    ret nz

    nop
    ld b, b
    add b
    ld hl, $2025
    add b
    nop
    and b
    ccf
    ld e, a
    ld e, a
    cpl
    cpl
    inc de
    jr nc, jr_037_78d1

    rra
    adc $00
    rst $38
    ld h, b
    ld b, l
    sub b
    rst $28
    sbc b
    sbc b

jr_037_78bc:
    xor a
    inc b
    inc bc
    ld [$8707], sp
    ld hl, $000f
    add h
    add h
    rst JumpTable
    add c
    ld [hl+], a
    ld [de], a
    ld a, [bc]
    nop
    ld b, $41
    inc bc
    nop

jr_037_78d1:
    ldh [rIE], a
    ld h, e
    ld a, a
    ld d, h
    ld e, d
    ld c, $01
    rlca
    xor a
    ld b, b
    add b
    ld l, a
    ret nz

    ccf
    ld [c], a
    dec e
    ccf
    nop
    jr jr_037_78e9

    nop
    cp $fc

jr_037_78e9:
    db $fd
    db $fc
    ld bc, $3d25
    ld d, b
    ld hl, sp+$23
    add e
    ld e, a
    or l
    dec [hl]
    and h
    inc [hl]
    nop
    dec [hl]
    or l
    call $334d
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    jr jr_037_790c

    ld d, l
    ld d, l
    push de
    push de
    ld b, $45
    ld b, l

jr_037_790c:
    ld d, [hl]
    ld d, [hl]
    cp c
    ld c, a
    ld h, c
    ld d, [hl]
    nop
    ld d, a
    jp nc, Jump_037_56d3

    rst $10
    ld b, d
    ld b, e
    cp l
    nop
    cp $07
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$ab], a
    db $10
    xor e
    xor c

jr_037_7927:
    xor c
    inc hl
    jp c, $7cdb

    rst $38
    ld a, [bc]
    pop af
    ld c, $1e
    nop
    ld b, b
    db $fc
    ld b, c
    rst $38
    add e
    ld hl, $3fc0
    ldh a, [rIF]
    rra
    ld l, a
    add b
    rlca
    inc a
    ld a, [hl]
    ld a, [hl]
    ld e, d
    jr jr_037_7967

    ld b, b
    ld [de], a
    add hl, bc
    add h
    ld b, b
    cp b
    ld [hl], b
    ld c, b
    ret z

    xor c
    ld h, b
    ldh [rSCX], a
    ld h, b
    ld b, b
    ld a, l
    ld a, b
    ld l, h
    ld h, l
    rra
    inc c
    dec [hl]
    ld hl, $9080
    rrca
    inc c
    xor d
    ld [hl], c
    ld c, c
    rrc a
    inc c

jr_037_7967:
    add hl, bc
    push hl
    rst $08
    ld h, $26
    db $eb
    inc b
    inc c
    jr nz, jr_037_797c

    call c, Call_037_4c9e
    ld c, h
    xor l
    ret nz

    ld b, b
    dec h
    inc c
    set 3, a

jr_037_797c:
    call z, $ffcc
    ld h, b
    sbc c
    add hl, sp
    ld hl, $9999
    rrca
    inc c
    inc l
    inc e
    db $10
    ld [hl-], a
    xor c
    db $10

jr_037_798d:
    jr jr_037_79a7

jr_037_798f:
    ld [$f840], sp
    ld a, b
    add sp, -$38
    or b
    xor a
    ld h, b
    ld b, b
    dec h
    ld h, l
    ld l, a
    ld h, [hl]
    ld h, [hl]
    pop bc
    xor a
    and b
    ret nz

    add b
    ld b, b
    ld b, b
    jr jr_037_7927

jr_037_79a7:
    ld a, [bc]
    inc a
    jr @+$5c

    inc a
    or e
    ret z

    add b
    ld c, b
    inc d
    ret z

    cp b
    ld [hl], b
    xor a
    ld h, l
    add b
    ld l, h
    ld h, l
    jr nz, jr_037_7a38

    ld a, b
    xor a
    sub b
    sub b
    ldh a, [$f0]
    add b
    ld c, b
    add b
    dec h
    ld h, b
    ldh [$af], a
    set 1, e
    jp $c342


    ld [hl+], a
    ld b, c
    res 6, d
    ld [hl], c
    xor a
    ld h, $85
    add b
    cpl
    ld h, $e6
    rst $08
    xor a
    ld c, h
    add b
    ld a, [bc]
    ld l, h
    ld c, h
    call nz, $af6e
    call z, $de80
    inc d
    call z, $decd
    xor a
    sbc c
    add b
    reti


    sbc c
    jr nz, jr_037_798f

    rst $08
    xor a
    ld [hl-], a
    ld [hl-], a
    ld a, $3e
    jr nc, jr_037_79fe

    jr nc, jr_037_798d

    ld [hl-], a
    inc l
    sbc h

jr_037_79fe:
    xor a
    ret z

    add b
    ld a, [bc]
    add sp, -$38
    ld hl, sp+$7c
    xor a
    ld h, [hl]
    add b
    ld l, a
    ret nc

    ld b, d
    xor a

jr_037_7a0d:
    ld b, b
    add b
    ld h, [hl]
    ld b, [hl]
    add $66
    sbc $af
    and b
    ret c

    ld b, b
    rrca
    inc c
    nop
    ld a, [bc]
    ld e, b
    db $fd
    nop
    and b
    nop

jr_037_7a21:
    nop
    jr nc, jr_037_7a43

    nop
    add c
    ld [c], a
    db $e3
    db $e4
    nop
    push hl

Call_037_7a2b:
    and $e7
    add sp, -$17
    ld [$eceb], a
    jr nc, jr_037_7a21

    xor $1c
    ld l, b
    rra

jr_037_7a38:
    db $10
    rst $28
    ldh a, [$f1]
    ld a, [c]
    nop
    di
    db $f4
    push af
    or $f7

jr_037_7a43:
    ld hl, sp-$07
    ld a, [$fb3c]
    db $fc
    rra
    add b
    ld e, h
    ret nc

    ld a, a
    or b
    rra
    adc b
    sub h
    sub l
    ld [bc], a
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    rra
    xor b
    sbc h
    nop
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    jr nz, jr_037_7a0d

    and [hl]
    ld e, a
    sbc b
    xor d

jr_037_7a6c:
    xor e
    xor h
    xor l
    xor [hl]
    ld bc, $b0af
    or c
    or d
    or e
    or h
    or l
    rra
    sub b
    nop
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    ld [$c2c1], sp
    jp $1fc4


    sub b
    ret


    jp z, $00cb

    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, Jump_037_40d3

    call nc, $901f
    reti


    jp c, $dcdb

    db $dd
    sbc $10
    rst JumpTable
    ldh [$e1], a
    rst JumpTable
    cp b
    push bc
    add $c7
    ret z

    db $10
    and a
    xor b
    xor c
    rra
    cp b
    push de
    sub $d7
    ret c

    jr jr_037_7a6c

    or a
    cp b
    ccf
    ld bc, $5b30
    nop
    nop
    ld d, $08
    ldh [$1f], a
    add c
    inc b
    nop
    inc c
    inc e
    rrca
    cp e
    rra
    ld de, $1f04
    ld [de], a
    nop
    inc de
    rra
    jr nz, jr_037_7ad3

jr_037_7ad3:
    rra
    ccf
    ld e, $0b
    cp a
    rra
    adc d
    ld bc, $1fa0
    ld a, [de]

jr_037_7ade:
    add hl, bc
    add hl, bc
    rra
    ld d, $00
    dec bc
    rra
    inc c
    nop
    rlca
    rlca
    dec e
    ld a, [de]
    jr nc, jr_037_7b1c

    ld a, a
    ld b, b
    nop
    pop bc
    cp [hl]
    cp $f9
    ld a, [bc]
    dec c
    jr jr_037_7b0f

    jr c, @+$12

    rra
    ld hl, $2125
    rrca
    ld [$0807], sp
    dec b
    ld [bc], a
    ld [bc], a
    nop
    ld b, b
    add b
    add b
    ld hl, sp+$00
    ld hl, sp-$74
    ld [hl], h
    ld b, [hl]

jr_037_7b0f:
    cp d
    ld [hl-], a
    adc $0e
    inc b
    ld a, [c]
    ld a, [hl]
    cp [hl]
    ld h, b
    and b
    ld hl, $c040

jr_037_7b1c:
    jr c, jr_037_7ade

    ld b, b
    dec [hl]
    ld a, e
    jr nz, jr_037_7b26

    inc bc
    ld b, $00

jr_037_7b26:
    ld b, $0c
    inc c
    jr jr_037_7b43

    jr nc, jr_037_7b5d

    jr nz, @-$30

    ld b, b
    dec h
    inc e
    inc e
    cpl
    inc sp
    jr nz, @+$09

    nop
    rlca
    ld e, $1e
    ld a, h
    ld a, h
    ldh a, [$f0]
    nop
    ret nz

    add b
    cpl

jr_037_7b43:
    rrca
    dec c
    add hl, de
    rla
    ld [hl], c
    ld l, a
    nop
    res 6, l
    adc d
    or $f1
    rst $28
    ld sp, $0c2f
    dec de
    dec d
    ld c, $0e
    cp c
    jr nz, jr_037_7b72

    jr jr_037_7b5c

jr_037_7b5c:
    inc a

jr_037_7b5d:
    inc h
    inc h
    inc a
    ld e, d
    ld h, [hl]
    cp l
    jp $bd02


    rst $38
    jp $b1ff


    rst $08
    ld hl, $4e81
    rst $38
    ld hl, $7e42

jr_037_7b72:
    inc sp
    add hl, sp
    ld e, [hl]
    rst $38
    ldh [rSB], a
    rra
    nop
    inc e
    rra
    inc d
    stop
    jr jr_037_7b81

jr_037_7b81:
    inc e
    dec a
    nop
    ld e, $43
    daa
    dec hl
    ret nz

    ld bc, $0041
    inc bc
    ld bc, $0305
    rlca
    inc bc
    ld [$0007], sp
    inc d
    rrca
    ld e, $0f
    ccf
    rra
    jr nz, jr_037_7bbc

    ld b, b
    ccf
    db $fc
    nop
    add b
    nop
    ld b, b
    add b
    ret nz

    nop
    add b
    ldh [$c0], a
    ret nc

    ldh [$f0], a
    ldh [$08], a
    nop
    ldh a, [rNR14]
    ld hl, sp+$3c
    ld hl, sp+$7e

jr_037_7bb6:
    db $fc
    ld [bc], a
    jr nc, jr_037_7bb6

    cp $9b

jr_037_7bbc:
    dec d
    ld d, l
    nop
    ld d, c
    add b
    sub c
    inc hl
    add $0c
    dec sp
    db $e4
    add hl, de
    ld d, l
    jp nc, $7200

    db $fc
    ld hl, sp-$20
    add e
    ld a, b
    add a
    rst $38
    ld d, l
    ld d, l
    nop
    sub d
    ld [de], a
    inc h
    ld c, b
    sub b
    jr nz, jr_037_7c1d

    add b
    ld d, l
    ld [bc], a
    nop
    ld bc, $0601
    add hl, de
    ld [hl-], a
    ld bc, $03ec
    pop de
    ld c, $ff
    ld d, l
    ld d, l
    nop
    ld [bc], a
    ld [bc], a
    inc c
    db $10
    jr nz, jr_037_7c15

    ld c, b
    sbc b
    ld d, b
    ld d, $00
    jr nc, jr_037_7c6d

    and a
    ld b, b
    ld l, h
    add b
    ld a, b
    add b
    di
    rst $00
    rst $38
    ldh a, [rP1]
    nop
    rlca
    rlca
    rlca
    rlca
    rrca
    ld b, $1f
    ld b, $3e
    ld b, $76
    ld b, $05

jr_037_7c15:
    ld d, b
    ld b, $c7
    rlca
    add a
    rlca
    rrca
    ccf

jr_037_7c1d:
    or $c6
    nop
    nop
    nop
    rst $38
    nop
    ld d, l
    ld h, [hl]
    ccf
    nop
    ld a, b
    nop
    and $c6
    and $e6
    rst $20
    ld h, a
    ld l, [hl]
    ld a, [hl]
    rlca
    ldh a, [rTMA]
    cp $e6
    and $c6
    add $03
    nop
    nop
    rst $38
    nop
    ld a, h
    ld h, [hl]
    nop
    nop
    rlca
    nop
    ld a, a
    inc a
    rst $38
    ld a, [hl]
    rst $20
    ld h, e
    ld h, b
    dec d
    nop
    ld h, [hl]
    ld h, a
    ld h, b
    ld l, [hl]
    ld a, [hl]
    db $76
    ld a, [hl]
    ld a, [hl]
    cp $3c
    ldh a, [rP1]
    nop
    rst $38
    dec b
    ld d, b
    ld h, [hl]
    nop
    nop
    ld bc, $e600
    rst $20
    rst $28
    cp $fe
    ld l, [hl]
    rst $38
    ld a, h
    rrca
    ret nc

jr_037_7c6d:
    ld h, [hl]
    ld a, [hl]
    ld a, h
    ld l, [hl]
    ld l, [hl]
    ld h, a
    inc bc
    nop
    nop
    rst $38
    ld bc, $0155
    adc h
    nop
    jr c, jr_037_7c7e

jr_037_7c7e:
    pop af
    nop
    rst $00
    dec e
    ld sp, $81e1
    push de
    ld d, b
    ld bc, $1f07
    dec a
    pop af
    pop bc
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    sbc b
    nop
    nop
    rlca
    nop
    cp $f0
    ld hl, sp-$08
    ld d, b
    ret nc

    sbc b
    sbc e
    cp $fc
    ld hl, sp-$08
    ld hl, sp-$65
    ld b, $00
    nop
    rst $38
    rlca
    ld bc, $f80f
    nop
    sbc h
    nop
    rra
    inc c
    inc c
    inc e
    inc c
    ld a, h
    inc c
    rst $08
    dec e
    ld d, b
    inc c
    adc a
    rrca
    rrca
    inc a
    ld a, h
    call $001f
    nop
    rst $38
    dec b
    ld bc, $01cc
    nop
    rlca
    nop
    call c, $0ffc
    inc c
    ld e, $0c
    ld a, h
    inc c
    db $ec
    dec d
    ld d, b
    inc c
    call z, $0dcc
    rrca
    inc e
    inc a
    db $ec
    add b
    nop
    nop
    rst $38
    rlca
    rst $38
    jp $009c


    jr c, jr_037_7ceb

jr_037_7ceb:
    db $e3
    push de
    nop
    jp $dbf3


    db $db
    ei
    ei
    ei
    ei
    rst $30
    nop
    nop
    rst $38
    ldh a, [$d4]
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    rlca
    inc a
    ldh a, [$f0]
    dec d
    ld b, $00
    ldh a, [$f0]
    ld bc, $781f
    di
    ldh a, [$fe]
    ldh a, [$f8]
    rst $38
    ld d, l
    ld d, l
    nop
    inc b
    add hl, de
    inc hl
    ld b, [hl]
    add h
    inc c
    jr jr_037_7d36

    ld d, l
    ld d, [hl]
    nop
    db $10
    or b
    ld hl, $c361
    rlca
    ld e, $ff
    ld d, l
    ld d, l
    nop
    ld h, h
    ret


    ld [de], a
    inc h
    ld c, b
    ld d, b
    sub b
    and b
    ld d, l
    ld d, [hl]

jr_037_7d36:
    nop
    and b
    pop hl
    db $e3
    add $c4
    adc h
    jr c, @+$01

    inc d
    ld bc, $2401
    inc bc
    jp nz, $0402

    inc bc
    ld [$0a07], sp
    dec b
    ld d, $09
    ld a, [hl-]
    ld d, h
    nop
    ld bc, $82e2
    ld [bc], a
    inc b
    inc bc
    ld [de], a
    dec c
    ld h, $19
    ld c, h
    inc sp
    nop
    rst $38
    ld b, b
    rst $38
    add b
    ret nz

    add b
    add c
    nop
    rrca
    nop
    nop
    di
    nop
    inc c
    nop
    stop
    ldh [rP1], a
    ret nz

    jr nz, jr_037_7d9f

    ldh a, [rP1]
    ld bc, $0400
    inc bc
    jr nz, jr_037_7d85

    add [hl]
    cp a
    ld a, a
    nop
    rst $38
    rrca
    rst $38
    jr nz, jr_037_7da4

jr_037_7d85:
    add hl, de
    add b
    jr jr_037_7da1

    add hl, sp
    add hl, de
    db $db
    add hl, bc
    add hl, de
    ccf
    add hl, de
    rra
    ld [hl], $0f
    jp $a037


    add b
    add e
    daa
    ld e, $bf
    cp a
    or e
    or e
    inc hl

jr_037_7d9f:
    or a
    or e

jr_037_7da1:
    inc h
    ei
    inc sp

jr_037_7da4:
    di
    ld b, a
    ld hl, $ff28
    cp a
    inc sp
    adc a
    rst JumpTable
    add b
    nop
    cp $04
    ld a, h
    cp $7e
    and $66
    and b
    rst $38
    ld a, [hl]
    nop
    ld a, a
    ld a, h

jr_037_7dbc:
    ld h, [hl]
    ld h, b
    ld l, h
    ld h, b
    ld hl, sp+$60
    ld b, b
    rst $38
    rst JumpTable
    dec e
    inc bc
    adc $cd
    call z, $04cd
    call c, $fccd
    call $21fe
    db $fd
    db $fc
    nop
    ld a, c
    ld a, [hl-]
    ld sp, $3136
    inc a
    ld sp, $10fa
    ld sp, $0305
    ld b, b
    rst $38
    add b
    call z, $9c80
    nop
    jr jr_037_7dea

jr_037_7dea:
    nop
    jr nc, jr_037_7ded

jr_037_7ded:
    ret nz

    nop
    rrca
    nop
    ldh a, [rP1]
    nop
    ld [$1307], sp
    inc c

jr_037_7df8:
    ld c, $f0
    jr nc, jr_037_7dbc

    ld [$00e1], sp
    jp nz, $bf80

    stop
    ld a, $00
    ld e, $5e
    ld e, $58
    jr @-$63

    jr jr_037_7e2d

    nop
    ld e, $9f
    ld a, [hl]
    ld e, [hl]

jr_037_7e13:
    sbc b
    sbc h
    jr jr_037_7e4f

    inc de
    jr jr_037_7df8

    ld e, $2b
    rlca
    nop
    cp a
    ld b, a
    jr z, jr_037_7e13

    ei
    jr nz, @-$23

    ld h, b
    rst $38
    ei
    rst $38
    ld a, [de]
    di
    rst JumpTable
    db $db

jr_037_7e2d:
    dec hl
    ld l, l
    nop
    rst JumpTable
    ret nz

    ld bc, $ef00
    rst $00
    rst $28
    rst $28
    ld l, [hl]
    ld l, h
    ld h, b
    ld b, c
    ld l, a
    jr nz, jr_037_7ea6

Call_037_7e3f:
    ld h, c
    ld h, c
    pop hl
    pop hl
    cpl
    and b
    jr z, jr_037_7e83

jr_037_7e47:
    rst JumpTable
    ld [hl], c
    inc bc
    cp $bd
    cp h
    db $10
    cp l

jr_037_7e4f:
    jr nc, jr_037_7e82

    ld hl, $3d3c
    cp l
    dec a
    nop
    or [hl]
    or c
    cp h
    or c
    ldh a, [$b1]
    cp [hl]
    cp l
    ld [$3dbe], sp
    dec c
    inc bc
    rlca
    inc bc
    inc bc
    ld [hl], e
    ld [hl], e
    inc sp
    nop
    add hl, bc
    dec l
    jr nz, jr_037_7e7a

    ld a, e
    ld a, e
    dec de
    dec de
    inc hl
    ld h, e
    ld b, b
    dec h
    db $f4
    rrca
    ld a, [bc]

jr_037_7e7a:
    inc hl
    ld h, l
    dec l
    rst $38
    add b
    db $fd
    cp $38

jr_037_7e82:
    rst $30

jr_037_7e83:
    ld hl, sp+$23
    xor e
    jr nz, jr_037_7e47

    rst $08
    rst $38
    ld a, b
    rrca
    ld h, c
    ld b, a
    ld h, b
    dec h
    add c
    rst $38
    ret


    ld [bc], a
    rst $28
    reti


    rst $38
    reti


    rst JumpTable
    cp c
    adc a
    rst $20
    add sp, $4f
    inc hl
    ld b, c
    rst $30
    cp a
    rst JumpTable
    rst $38
    add l
    ld [hl+], a

jr_037_7ea6:
    rst $38
    jp c, $bb41

    rst $38
    rst $30
    adc a
    db $db
    jr nz, @+$01

    dec c
    ld c, e
    db $e3
    rst $38
    reti


    rst $38
    rst $20
    call c, $298f
    ret


    pop bc
    add hl, hl
    ld h, b
    daa
    rst $38
    ld e, $0f
    rst $38
    rra
    ld b, e
    daa
    ld hl, $8760
    ld c, $ff
    sub d
    rst $38
    add [hl]
    ld b, e
    ld h, l
    ld h, b
    inc e
    ld [hl+], a
    rst $38
    ld c, c
    add c
    add hl, bc
    rst $38
    ld c, h
    adc a
    ld h, h
    ld a, [bc]
    rst $38
    ld hl, $e3ff
    ld b, e
    inc h
    ld c, c
    rst $38
    ld d, b
    inc d
    nop
    rra
    nop
    nop
    db $10
    rst $38
    ld [$10ff], sp
    add e
    ld b, c
    jr nz, @+$01

    ld h, b
    rst $38
    ret nz

    ld b, c
    cpl
    ld hl, $fe01
    ld hl, $fc03
    rlca

jr_037_7eff:
    ld hl, sp+$21
    ld [bc], a
    rrca
    ldh a, [$1f]
    ldh [$f3], a
    rra
    and c
    ei
    nop
    rra
    srl a
    rst $08
    ccf

jr_037_7f10:
    rst $28

jr_037_7f11:
    rra
    db $fc
    ld b, b
    inc bc
    jr c, jr_037_7f10

    ld b, $f3
    inc c
    db $e3
    inc e
    add hl, bc
    rst $00
    jr c, @-$6f

    ld [hl], b
    ccf
    cp $01
    cpl
    jr nz, @-$0d

    ld c, $2f
    rst $20
    jr jr_037_7f11

    ld a, [de]

jr_037_7f2d:
    call $3201
    adc e
    ld [hl], h
    ld a, a
    add b
    rst $38
    nop
    inc sp
    add c
    ld hl, $02fd
    ld sp, hl
    ld b, $fb
    inc b
    ld d, a
    ld b, b
    rra
    ld hl, $27db
    call $ed33
    inc de
    ld bc, $19e7
    db $e3
    dec e
    ret nz

    ccf
    inc e
    inc h
    nop
    ld [c], a
    add hl, sp
    add $73
    adc h
    ld h, a
    sbc b
    rst $00
    nop
    jr c, jr_037_7f2d

    jr nc, jr_037_7eff

    ld h, b
    ld sp, hl
    ld b, $7c
    ld [de], a
    add e
    cp [hl]
    ld b, c
    daa
    rst JumpTable
    jr nz, jr_037_7f8d

    rst $28
    nop
    db $10
    rst $30
    ld [$3fc4], sp
    ld [c], a
    rra
    ld [hl], c
    nop
    adc a
    ld sp, $b8cf
    ld b, a
    call c, $cc23
    inc b
    inc sp
    and $19
    push af
    ld c, $61
    rst $30
    ld c, $02
    ld a, [c]
    rrca
    di
    rrca

jr_037_7f8d:
    db $e3
    rra
    ld hl, $4283
    db $fc
    ld hl, $fec1
    ldh a, [rIE]
    ld hl, $40fc
    rst $38
    ld h, b
    db $db
    inc h
    db $dd
    ld [hl+], a
    sbc $21
    ld bc, $609f
    rrca
    ldh a, [rVBK]
    ldh a, [$cf]
    ld b, c
    jr nz, @-$1c

    rra
    ld hl, $0ff1
    ld a, c
    add a
    cp b
    nop
    ld b, a
    call c, $ee23
    ld de, $09f6
    db $fc
    jr c, @+$01

    ld hl, sp-$3f
    add hl, hl
    ld h, c
    ld bc, $03ff
    nop
    rst $38
    ld b, $ff

jr_037_7fcb:
    inc c
    rst $38
    inc e
    rst $38
    jr c, jr_037_7fd1

jr_037_7fd1:
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    sub d
    add c
    ld bc, $21fe
    inc bc
    db $fc
    ld hl, $103f
    ret nz

    ld a, a
    add b
    ld a, [hl+]
    db $fd
    ld [bc], a
    ei
    inc b
    inc bc
    rst $30
    ld [$10ef], sp
    rst JumpTable
    jr nz, @+$2d

    inc [hl]
    nop
    ld sp, hl
    ld b, $f3
    inc c
    rst $20
    jr jr_037_7fcb

    jr nc, @+$28

    sbc a
    ld h, b

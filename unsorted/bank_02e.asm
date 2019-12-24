; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02e", ROMX

    ld a, c
    xor a
    ld a, b
    add b
    ld e, a
    nop
    ld b, b
    ei
    ld h, b
    ei
    jr nc, @+$01

    rra
    rst $30
    nop
    inc c
    rst $28
    db $18, $8f
    ld a, b

jr_02e_4014:
    add a
    ld a, a

jr_02e_4016:
    ldh [rP1], a
    rra
    rst $00

jr_02e_401a:
    ld e, $cf
    inc e
    rst $38
    ld hl, sp-$11
    nop
    jr nc, jr_02e_401a

    jr jr_02e_4016

    ld e, $e1
    cp $07
    nop
    ld hl, sp-$05
    nop
    ld l, a
    sub b
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
    jr jr_02e_4014

    inc h
    sub $2c
    ei
    nop
    inc e
    push af
    ld hl, $61fd
    rst $28
    or c
    or e
    nop
    sbc l
    cp a
    adc a
    push bc
    ld b, e
    rst $38
    ld a, $ff
    nop
    nop
    rst $08
    cp b
    xor a
    ld a, h
    adc a
    ld a, d
    sub a
    ld bc, $ef7a
    ld a, [c]
    cp l
    add $fb
    ld a, h
    rst $38
    ld bc, $0042
    add sp, $28
    ld hl, sp+$68
    xor h
    cp b
    sub a
    cp h
    inc b
    xor a
    sbc a
    add $43
    db $fd
    ld e, a

Call_02e_4083:
    ld [$386f], sp
    ld b, $6f
    inc a
    rst $28
    ld a, [hl-]
    rst AddAToHL
    ld e, a
    jr c, @+$17

    nop
    ei
    rst $38
    ld bc, $0607
    ld h, $f6

jr_02e_4097:
    add hl, de
    cp l
    ld e, [hl]
    sbc l
    ld h, [hl]
    add a
    ld a, l
    dec d
    nop
    rst AddAToHL
    rst $38
    add b
    add sp, $68
    ld l, h
    ld l, a
    sbc b
    cp h
    ld a, e
    cp b
    ld h, a
    ldh [$bf], a
    inc d
    dec bc
    rst $38
    rst $00
    cp b
    ld b, b
    ld a, a
    jr nz, jr_02e_4097

    ld e, a
    ret c

    xor a
    add h
    add b
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
    ld a, [bc]
    ld [$1a0f], sp
    db $fd
    ld [hl], h
    ei
    pop af
    ld e, b
    cp a
    dec d
    ld b, h
    rst $38
    ld c, c
    cp $08
    jr z, jr_02e_40fc

    ld hl, sp-$22
    ccf
    dec de
    ld d, $f9
    ld d, l
    ld d, l
    nop
    and a
    ld [$5110], sp
    ld e, $22
    ld b, c
    ld b, b
    ld d, l
    ld d, b
    nop
    add c
    ld a, [c]
    sbc h
    ld [bc], a

jr_02e_40fc:
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
    add h
    nop
    db $fd
    cp $fe
    inc hl
    rst $38
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
    jr @+$5a

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
    jr jr_02e_41b0

    inc h
    inc a
    ld b, b
    ld a, b
    jr nc, jr_02e_4163

    inc de
    nop
    add a
    rst $38
    ld a, d

jr_02e_4163:
    db $fc
    jr c, jr_02e_4176

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
    dec d
    nop

jr_02e_4176:
    rst $30
    rst $38
    inc bc
    ld c, $0c
    inc c
    db $fc
    rrca
    sbc h
    ld [hl], e
    or e
    ld l, l
    and e
    ld a, l
    dec d
    nop
    rst $28
    rst $38
    ret nz

    ld [hl], b
    jr nc, jr_02e_41bc

    ccf
    ldh a, [$38]
    rst $08
    call z, $c4b7
    cp a
    nop
    nop
    or c
    adc $c1
    cp $65
    ld a, [hl]
    add hl, de
    ld a, $10
    rra
    jr nc, jr_02e_41e1

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

jr_02e_41b0:
    ld e, l
    ld a, [$fe5f]
    ld e, [hl]
    sub h
    ld a, h
    ld b, l
    stop
    xor $3b

jr_02e_41bc:
    ld b, b
    rst $08

jr_02e_41be:
    ld a, d
    xor $01
    cp a
    ret c

    ccf
    cp b
    ld a, a
    dec d
    ld b, b
    rst $38
    ld de, $10fe
    jr nc, jr_02e_41be

    db $10
    add sp, $1f
    rst $30
    rrca
    db $fc
    inc bc
    ld d, l
    ld b, b
    nop
    ld b, b
    add b
    add b
    add b
    ret nz

    ld h, c
    add b
    sbc a
    ld h, b

jr_02e_41e1:
    ldh [$1f], a
    inc d
    ld bc, $7d00
    ld [bc], a
    ld a, $33
    ld h, d
    ld bc, $0166
    call c, $2123
    sbc $ef
    ld b, h
    nop
    and e
    and d
    ld [c], a
    db $e3
    and c
    ldh a, [$f0]

Jump_02e_41fc:
    cp a
    cp a
    jp nc, Jump_02e_7fd2

    ld a, a
    nop
    nop
    and b
    nop
    cp a
    dec b
    ld b, a
    rst $28
    dec d
    rst $38
    rlca
    ei
    db $fd
    cp $4b
    db $fd
    cp $ff
    nop
    ld d, b
    dec d

jr_02e_4217:
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
    jr nz, jr_02e_4246

    ld b, h
    ld [$3048], sp
    ld bc, $c06a
    rst $08
    ccf
    or a
    ld a, b
    ld d, b
    ldh [$60], a
    add b

Jump_02e_423c:
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

jr_02e_4246:
    rst $38
    nop
    jp Jump_02e_7eff


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
    jr nz, jr_02e_4217

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

    rst AddAToHL
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

jr_02e_42a2:
    dec sp
    nop

jr_02e_42a4:
    dec d
    ld b, b
    rst $38
    nop
    rst $38
    inc bc
    ld hl, sp+$0c
    ldh a, [rNR10]
    pop hl
    jr nz, jr_02e_42a4

    ei
    ei
    and d
    nop
    rst $38
    nop
    ret nz

    rst JumpTable
    jr nc, @+$0a

    ld [hl], a
    inc b
    and e
    ld c, $c3
    ld e, $c3
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
    jr c, jr_02e_42a2

    ei
    ld [bc], a
    ld [hli], a
    push af
    cp $01
    cp a
    rrca
    ei
    ld a, [hl-]
    add hl, sp
    ld [$272c], a
    ei
    ld [hli], a
    add hl, hl
    ld [hli], a
    nop
    ld a, a
    rst $38
    ldh [rNR41], a
    dec a
    ldh a, [$d0]
    rst $08
    cp b
    sbc a
    ld a, b
    ccf
    add sp, $6f
    ret c

    ld d, h
    ld a, [hli]
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
    rst $38
    xor d
    xor d
    ret nz

    add b
    add b
    add b

jr_02e_4331:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    inc bc
    db $fc
    inc b
    cp c
    dec bc
    db $fc
    inc c
    dec bc
    db $fd
    ld d, $e7
    inc [hl]
    db $ec
    jr z, jr_02e_4348

jr_02e_4348:
    nop
    rst $38
    add b
    ld [hl], a
    ld b, b
    ccf
    and b
    ld a, l
    ld h, b
    cp a
    ldh [$5f], a
    ldh a, [$de]

Jump_02e_4356:
    ld a, c
    xor a
    ld a, b
    nop
    dec d
    nop
    dec hl
    call nz, Call_02e_6295
    jp z, $ed31

    db $10
    db $76
    ld [$5fbf], sp
    cpl
    ld d, l
    ld d, l
    nop
    dec e
    adc [hl]
    rst AddAToHL
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
    jr c, jr_02e_43bd

    ldh a, [$dc]
    ldh [$f8], a
    nop
    and b
    nop
    ei
    ld h, b
    jr nc, @+$01

    rra
    rst $30
    inc c
    rst $28

jr_02e_43a0:
    jr jr_02e_4331

    ld a, b
    add a

Jump_02e_43a4:
    ld a, a

jr_02e_43a5:
    ldh [$1f], a
    ld b, b
    db $10

jr_02e_43a9:
    ld e, $c7
    rst $08
    inc e
    rst $38
    ld hl, sp-$11
    jr nc, jr_02e_43a9

    jr jr_02e_43a5

    pop hl
    cp $07
    ld hl, sp+$44
    ld bc, $fb00
    ld l, a

jr_02e_43bd:
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
    dec a
    jp nz, $a017

    ld e, $e0
    cp a
    nop
    push hl
    jr jr_02e_43a0

    inc h
    sub $2c
    ei
    inc e
    nop
    ld a, [bc]
    rst $38
    push af
    ld hl, $61fd
    rst $28
    or c
    or e
    sbc l
    cp a
    adc a
    push bc
    ld b, e
    ld a, $00   ; xor a
    db $10
    inc b
    ld a, h
    rst $08
    cp b
    xor a
    adc a
    ld a, d
    sub a
    ld a, d
    rst $28
    ld a, [c]
    cp l
    add $fb
    rst $38
    nop
    ld d, l
    ld d, b
    rst $38
    ret nz

    ret nz

    ret nz

    ld b, b
    ld h, b
    ld a, b
    cp a
    ld a, a
    rst $08
    ccf
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
    nop
    nop
    add sp, $28
    ld hl, sp+$68
    xor h
    cp b
    sub a
    cp h
    xor a
    sbc a
    add $43
    db $fd
    ld a, $ff
    nop
    and b
    nop
    ld l, a
    jr c, jr_02e_447a

    rst $28
    ld a, [hl-]
    rst AddAToHL
    ld a, d
    rst $28
    ld a, [c]
    cp l
    add $fb
    ld a, h
    rst $38
    nop
    ld [bc], a
    jr nz, @-$0e

    rst $28
    db $10
    cp a
    inc bc
    sbc $2c
    jr jr_02e_44c1

    jr nc, @+$22

    ldh [rLCDC], a
    ld h, b
    ld b, b
    rrca
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

    ld a, [bc]
    rlca
    cp $00  ; and a / or a
    rst $30
    ret nz

    cp l
    ld [hl], d
    cpl
    jr jr_02e_44ec

    inc c
    ld c, $04
    ld [bc], a
    ld [bc], a

jr_02e_447a:
    ld e, d
    db $10
    ret nz

    or b
    and b
    add b
    add b
    pop hl
    add b
    cp [hl]
    sbc [hl]
    ldh [$82], a
    db $fc
    rst $38
    rst $38
    nop
    rst $38
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

Call_02e_449c:
    rlca
    pop af
    rrca
    ld bc, $ff54
    add e
    db $fc
    ld b, c
    cp $41
    cp $70
    sub d
    adc [hl]
    ld [hl], e
    call c, $d43f
    jr nz, jr_02e_44b1

jr_02e_44b1:
    ld bc, $fe83
    ld bc, $c33c
    rst $38
    sub b
    rst $38
    ld sp, hl
    rst $38
    nop
    ld d, l
    rst $38
    inc bc
    nop

jr_02e_44c1:
    jp nz, $fe01

    ld bc, $c33c
    nop
    nop
    add d
    rst $08
    ld [bc], a
    jr nz, jr_02e_44fe

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

    inc d
    nop
    jr nc, @-$11

    ld a, b
    ld e, b
    pop hl
    db $76
    ld hl, $37eb
    cp h
    rra
    push af
    nop
    ld e, e

jr_02e_44ec:
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

jr_02e_44fe:
    dec b
    ld b, b
    ccf
    ld a, b
    rst $38
    ld bc, $44fe
    ld c, a
    ret


    sbc b
    ld a, a
    ld [hl], c
    cp $cf
    ldh a, [$80]
    add b
    sub $3f
    xor e
    inc e
    rst AddAToHL
    inc c
    ld a, [hl]
    add h
    db $ed
    ld a, a
    ld hl, sp-$0b
    nop
    ld e, e
    inc b

jr_02e_451f:
    dec b
    dec b
    nop
    cp $02
    db $fc
    inc b
    ld hl, sp-$08
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    db $ec
    inc sp
    rst $38
    nop

jr_02e_4532:
    rst JumpTable
    jr nz, jr_02e_4532

    ld [bc], a
    nop
    nop
    db $ec
    jr nz, @+$01

    nop

jr_02e_453c:
    rst JumpTable
    jr nz, jr_02e_453c

    ld [bc], a
    ld hl, sp+$06
    dec b
    ei
    ld a, [c]
    nop
    ld de, $f017
    rst $38
    ld hl, sp+$1f
    db $fc
    rst $08
    cp h
    ld h, a
    call nc, $f437
    or [hl]
    ld d, a
    rst $30
    nop
    nop
    ld b, e
    add b
    db $f4
    db $e3
    inc a
    dec de
    rrca
    inc b
    ld d, $e2
    push bc
    ld a, d
    ld sp, hl
    ld c, a
    ld [hl], a
    rst $08
    inc d
    stop
    ld c, d
    jr nc, jr_02e_451f

    adc l
    ld d, d
    inc c
    ld [de], a
    inc c
    ld l, h
    sub c
    ld h, b
    rst $38
    rst $38
    ld b, c
    ld b, b
    dec b
    db $dd
    dec h
    push bc
    dec l
    push bc
    push bc
    dec [hl]
    ld c, l
    dec [hl]
    ld c, l
    add hl, sp
    ld a, [$14f3]
    ld d, h
    dec d
    or a
    ld d, l
    rst $30
    rst $30
    rst AddAToHL
    dec [hl]
    rst $30
    rst $30
    di
    ld [hl], e
    sub l
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
    add h
    nop
    db $fd
    cp $fe
    inc hl
    rst $38
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
    nop
    dec b
    cp $fa
    rst $00
    rst $30

jr_02e_45be:
    ld l, [hl]
    xor l
    ld a, [hl]
    dec sp
    db $fc
    rst $28
    ldh a, [rIE]
    nop
    db $fd
    ccf
    jr nz, jr_02e_45f5

    rst $38
    or l
    ld a, e
    ld a, c
    ld a, e
    ld a, c
    ld [hl-], a
    ld a, c
    add a
    nop
    nop
    nop
    sub $48
    ld a, [hli]
    rst $38
    ld b, b
    ret nz

    ld a, a
    ccf
    add b
    add b
    jr nz, @-$3e

    ld a, a
    nop
    or l
    nop
    nop
    ld d, c
    ld sp, hl
    ld h, c
    di
    db $e3
    rst $20
    rlca
    rrca
    dec bc
    rra
    ei
    rst $38
    db $eb

jr_02e_45f5:
    ccf
    rst $28
    cp a
    ld b, b
    ld bc, $f0ff
    or e
    db $fc
    call nc, $e5fb
    ld a, [$faf5]
    or h
    ei
    db $d3
    db $fc
    ldh [$80], a
    ld [bc], a
    dec b
    ld a, [$3bc4]
    inc hl
    call c, $5fa0
    and b
    ld e, a
    inc hl
    call c, $3bc4
    ld a, [$00af]
    rst $38
    nop
    nop
    ld e, d
    add c
    and [hl]
    add hl, de
    dec h
    jr jr_02e_45be

    nop
    xor a
    nop
    rst $38
    nop
    nop
    ld e, e
    add b
    ld b, h
    add e
    or h
    inc bc
    ld c, e
    jr nc, jr_02e_4635

jr_02e_4635:
    ld b, l
    dec e
    db $dd
    add hl, sp
    push de
    dec a
    push af
    db $fd
    push af
    db $fd
    ld a, l
    sbc l
    dec c
    and l
    dec h
    ld a, [hli]
    ld a, [hli]
    rst $30
    push af
    rla
    dec d
    dec d
    dec d
    or a
    ld d, l
    dec d
    dec d
    dec d
    ld [bc], a
    ld b, b
    ccf
    rst $28
    rst JumpTable
    db $76
    ei
    ld a, $73
    inc sp
    cp a
    cp [hl]
    inc sp
    or $3b
    cp [hl]
    ld l, a
    ld sp, $ff08
    nop
    nop
    cp a
    ret nz

    ld a, [hl]
    ld b, l
    add e
    rst $00
    add c
    ld a, h
    ei
    ld b, $00
    call $05ff
    ld b, $fb
    db $fc
    cp l
    ld b, d
    rst $30
    ld [$0080], sp
    ld a, a
    adc b
    nop
    rst $30
    dec d
    or a
    ld d, l
    dec d
    rst $28
    dec h
    rst JumpTable
    call $1d3f
    rst $38
    db $fd
    ld sp, hl
    db $fd
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
    jp nc, Jump_02e_7fd2

    ld a, a
    nop
    nop
    and b
    nop
    cp a
    dec b
    ld b, a
    rst $28
    dec d
    rst $38
    rlca
    ei
    db $fd
    cp $4b
    db $fd
    cp $ff
    nop
    add b
    rrca
    rst $38
    sub d
    sub $5b
    ld e, a
    rst $08
    jp $0081


    nop
    db $f4
    ld hl, sp-$70
    nop
    add hl, sp
    sub $10
    rst $28
    rst $38
    ret nz

    rst $38
    ld e, a
    jr nc, jr_02e_46eb

    ld [$048f], sp
    add a
    jp nz, $0090

    adc $b5
    add h
    ld a, e
    rst $38
    add h
    ld a, e
    rst $38
    nop
    db $dd
    ld a, $f7
    ld [hli], a
    ld l, e
    db $eb
    jr nz, jr_02e_4738

    dec a
    ld l, a
    cp a
    ld a, a
    db $fd
    rst $38
    scf

jr_02e_46eb:
    db $fd
    rst $20
    rst $20
    rst $20
    ld h, a
    cp l
    ld bc, $e054
    ld [hl], b
    ld a, a
    or b
    cp a
    sbc a
    rst JumpTable
    add b
    sbc a
    sbc a
    ld e, a
    cp a
    ld a, a
    inc e
    xor e
    rst $38
    dec b
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    pop af
    pop af
    db $e4
    ldh [$ea], a
    db $e4
    db $e4
    ldh [$f1], a
    pop af
    rrca
    ld b, b
    pop af
    ld [c], a
    db $e3
    di
    pop hl
    rst $38
    rst $38
    rst $38
    ei

jr_02e_4723:
    ld sp, hl
    db $fd
    ld hl, sp+$00
    nop
    rst $38
    rlca
    db $ec
    jr @-$26

    jr nc, jr_02e_4723

    inc hl
    or c
    ld l, [hl]
    xor l
    ld d, d
    call nz, $da7b
    ld h, h

jr_02e_4738:
    dec b
    ld d, c
    nop
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$f0]
    ldh a, [$f0]
    ret nz

    ld b, b

jr_02e_4745:
    add b
    jr z, jr_02e_4749

    cp [hl]

jr_02e_4749:
    rst $30
    ld a, a
    call c, $abbf
    cp l
    ld [hl], a
    jp c, $fdeb

    cp a
    rst JumpTable
    cp a
    jr z, jr_02e_4759

    cp [hl]

jr_02e_4759:
    rst $30
    ld a, a
    call c, $abbf
    cp l
    ld [hl], a
    jp c, $fdeb

    cp a
    rst JumpTable
    cp a
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
    jr c, jr_02e_4745

    ei
    nop
    cpl
    rst $38
    pop bc
    add b
    sbc h
    ld a, $22
    ld a, a
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    dec d
    ld b, b
    ld a, l
    and a
    db $fd
    rst $20
    ld h, a
    ld h, a
    ld h, a
    db $ed
    ld a, c
    ld a, e
    di
    push af
    rst $20
    ld d, l
    nop
    rst $38
    ei
    push de
    add d
    nop
    ld h, b
    sbc a
    inc e
    ld h, e
    rlca
    jr jr_02e_47b2

jr_02e_47b2:
    rlca
    ld d, l
    ld b, b
    rst $38
    ld a, [$aafd]
    ld d, l
    nop
    inc c
    di
    ldh a, [$0c]
    nop
    ldh a, [$f5]
    ld d, l
    rst $38
    ld a, a
    sbc a
    push bc
    ldh [$f8], a
    cp $ff
    push de
    rst $38
    xor d
    nop
    add e
    ld d, l
    ld d, l
    rst $38
    ccf
    sbc a
    jp nz, Jump_02e_54e0

    ld a, [hli]
    ld e, a
    db $fc
    db $fd
    ld e, l
    rst $38
    ld d, h
    inc bc
    dec d
    ld a, a
    sbc $ce
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [$f702], sp
    ld hl, sp-$04
    scf
    rst $38
    db $fd
    sub $3e
    push af
    db $fd
    dec c
    dec e
    cp $fe
    rrca
    add d
    nop
    pop hl
    ld a, h
    ld e, c
    db $e4
    di
    db $ec
    cp [hl]
    db $e4
    cp e
    sub l
    cp d
    xor c
    sbc [hl]
    rst AddAToHL
    rst $08
    ld b, b
    inc b
    add b
    ccf
    inc hl
    sbc h
    dec d
    and d
    ld bc, $15aa
    and d
    inc hl
    sbc h
    nop
    nop
    rst $38
    ld b, $55

jr_02e_481f:
    rst $38
    rst $28
    or l
    rst $30
    xor [hl]
    and e
    rst $28
    xor e
    rst $28
    ld l, e
    ld a, $06
    ld d, l
    rst $38
    rst $28
    or l
    rst $30
    xor a
    and e
    rst $28
    xor e
    rst $28
    ld l, e
    ld a, $44
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
    dec a
    jp nz, $a017

    ld e, $e0
    cp a
    nop

jr_02e_4851:
    push hl
    jr jr_02e_481f

    inc h
    sub $2c
    ei
    inc e
    jr nc, jr_02e_485e

    rst $38
    nop
    nop

jr_02e_485e:
    cp l
    adc $52
    ld [hl], e
    xor l
    xor l
    rst $28
    xor l
    sub h
    ld [hl], e
    db $10
    ld [bc], a
    rst $38
    add hl, bc
    rrca
    pop af
    pop hl

jr_02e_486f:
    ld a, a
    sub c
    sbc a
    ld l, e
    ld l, a
    ld a, a
    ld l, [hl]
    xor a
    sbc h
    ld hl, sp+$50
    nop
    rst $38
    xor d
    dec d
    ld b, b
    cp a
    jr nc, jr_02e_4851

    ld e, $a1
    rlca
    jr @+$03

    ld b, $00
    nop
    ld d, l
    ld b, b
    rst $38
    sbc a
    rlca
    nop
    nop
    nop
    cp $01
    ld hl, sp+$06
    nop
    ld hl, sp+$55
    rst $38
    rst $38
    db $fc
    ld hl, sp+$02
    rrca
    ld d, b
    dec d
    rst $38
    ld a, a
    ld a, [hli]

jr_02e_48a4:
    ld b, c
    cp a
    jr c, jr_02e_486f

    rst $00
    ld hl, sp-$08
    cp $fd
    ld d, l
    dec d
    rst $38
    pop af
    add a
    ld a, a
    ccf
    add a
    ld a, a
    ld d, b
    xor d
    ld d, l
    ld d, l
    push de
    rst $38
    adc a
    db $e3
    ld hl, sp-$02
    ld a, a
    add c
    cpl
    ld d, b
    rst $38
    jr nz, jr_02e_48c7

jr_02e_48c7:
    ld [hli], a
    add b
    ld a, a
    ld c, b
    rst $30
    ld b, b
    ld [$4448], sp
    cp a
    rst JumpTable
    ld h, b
    rst $28
    jr nc, jr_02e_48d6

jr_02e_48d6:
    rst $30
    jr jr_02e_48a4

    inc e
    sbc l
    ld [hl], $3e
    ld h, e
    ld [$c17f], sp
    cp a
    ret nz

    dec sp
    xor e
    call c, Call_02e_449c
    db $eb
    ld hl, $ff88
    sbc h
    ld a, [hli]
    ld a, a
    rst $38
    nop
    ccf
    and b
    ldh [rIE], a
    cp a
    xor [hl]
    pop af
    or c
    inc d
    xor $a0
    rst $38
    ld hl, $4fe1
    ld a, [$0035]
    db $eb
    inc [hl]
    rst $30
    ld a, [hl-]
    xor $31
    or l
    ld a, d
    nop
    ld a, l
    ld a, [$baf5]
    db $ec
    inc sp
    xor a
    ld e, h
    nop
    add a
    ld a, h
    ccf
    db $fc
    rst $28
    inc e
    sub l
    ld a, [hl]
    nop
    ld d, $ff
    add a
    ld a, l
    rst $38
    inc e
    or b
    ld a, a
    nop
    ld h, d
    db $fd
    jp nz, $00ff

    rst $38
    inc b
    ei
    add hl, bc
    add h
    rst $38
    add b
    ld a, a
    daa
    dec bc
    db $fd
    ld hl, $4b60
    ld b, e
    ld h, c
    rla

jr_02e_493d:
    ld sp, hl
    db $ed
    di
    rst $38
    ldh [rNR41], a
    inc [hl]
    ld e, c
    db $10
    rst $28
    ld l, h
    sub e

jr_02e_4949:
    cp d
    jr nz, jr_02e_49c9

    ld a, h
    ld a, [hli]
    ldh a, [$b8]
    rst $30
    ret c

    rst $30

jr_02e_4953:
    jr nz, jr_02e_493d

    rst $30
    daa
    or b
    rst $38
    ret nc

    rst $38
    ldh [$81], a
    cpl
    rrca
    dec c
    rst $38
    dec bc
    rst $38
    rlca
    ld b, a
    nop
    dec e
    rst $28
    dec de
    rst $28
    rla
    rst $28
    rst $38
    nop
    inc sp
    inc b
    ei
    ld h, c
    daa
    add b
    ld a, a
    ld h, c
    jr c, jr_02e_49a8

    nop
    nop
    inc hl
    inc h
    cp a
    nop
    db $db
    jr nz, jr_02e_4953

    ld [hl], $47
    sub b
    ld hl, $94bb
    add l
    sub b
    jr nz, jr_02e_4949

    sub c
    ld b, a
    ld a, a
    ld h, b
    ret nz

    rst $00
    adc a
    ld [$9c8b], sp
    or [hl]
    sbc b
    ld [hl], a
    cp [hl]
    sub b
    rst $38
    jr nz, jr_02e_499d

jr_02e_499d:
    rst $28
    ld hl, $ff10
    inc bc
    cp l
    ld b, $00
    ld a, [$fc0c]

jr_02e_49a8:
    add hl, bc
    db $fd
    add hl, bc
    ld b, b
    rst $38
    db $10
    inc b
    ei
    inc b
    inc [hl]
    rst $38
    ld [hli], a
    rst JumpTable
    jr nz, jr_02e_49a8

    ld b, l
    jr nz, jr_02e_49fd

    ld h, [hl]
    rst $20
    ld a, d
    rst JumpTable
    ld hl, $e740
    ld c, b
    db $ec
    inc sp
    ei
    inc [hl]
    and $39
    nop

jr_02e_49c9:
    db $e4
    dec sp
    or [hl]
    ld a, c
    ld h, e
    db $fc
    ld hl, sp-$49
    add b
    dec hl
    ld h, a
    sbc h
    xor a
    ld e, h
    rst JumpTable
    inc a
    ld h, a
    ld bc, $ddbc
    ld a, $86
    ld a, a
    cpl
    db $dd
    dec hl
    nop
    pop af
    ld a, [hl]
    db $eb
    or h
    and d
    cp l
    xor c
    or [hl]
    nop
    xor h
    or e
    or l
    sbc d
    xor d
    sbc a
    rst AddAToHL
    rst $08
    nop
    ld h, $ff
    rst $28
    dec a
    ld h, l
    cp l
    sbc l

jr_02e_49fd:
    ld a, l
    nop
    dec l
    db $dd
    ld e, l
    cp c
    ld d, l
    ld sp, hl
    db $eb
    di
    dec c
    dec bc
    db $fd
    ld c, e
    cp l
    inc hl
    ld h, c
    adc e
    add l
    nop
    dec de
    rst $20
    rst $30
    rrca
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld [$ff09], sp
    dec bc
    rst $38
    ld h, b
    cp $ff
    add $10
    rst $00
    add d
    add e
    ld hl, $ef6c
    ld d, b
    cp a
    ld b, b
    ld [bc], a
    jr c, @+$01

    ld a, a
    ld [hl], b
    cp b
    or a
    sbc a

jr_02e_4a34:
    ld [$80df], sp
    ldh [$9f], a
    ld b, c
    ld e, a
    ldh [$bf], a
    nop
    ld a, a
    cp $0e
    dec c
    db $fd
    ld sp, hl
    ei
    ld bc, $0720
    ld sp, hl
    ld b, c
    ld a, [$fd07]
    cp $ff
    dec bc
    nop
    inc b
    ei
    rst $38
    inc h
    nop
    ld [hli], a
    add c
    rlca
    rst $38
    db $dd
    ld [bc], a
    rst JumpTable
    jr nz, @+$69

    ld d, d
    ld d, h

jr_02e_4a61:
    add h
    jr nz, jr_02e_4a61

jr_02e_4a64:
    add hl, bc
    ld a, l
    add hl, bc
    inc hl
    db $dd
    add hl, hl
    ret nz

    inc hl
    ld h, c
    db $dd
    add hl, bc
    or a
    sbc b
    xor d
    sbc h
    nop
    sub h
    adc a
    res 0, a
    and a
    ret nz

    ret nc

    ldh [rLCDC], a
    ldh [$5f], a
    ld a, [$bd0c]
    ld b, $bf
    ld b, e
    nop
    rst $38
    nop
    rst JumpTable
    nop
    sbc $21
    cp $00  ; and a / or a
    ret nz

    daa
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
    add a
    jr nz, jr_02e_4a34

    ldh a, [rIE]
    nop
    ld bc, $220b
    ld b, b
    jp nz, Jump_02e_4356

    inc [hl]
    rst $38
    call c, $2537
    add b
    ld b, $ff
    rst $08
    or b
    cp c
    add $67
    ld b, d
    add b
    nop

jr_02e_4abf:
    rra
    rst $38
    ld a, [hli]
    pop hl
    ld a, l
    jp nz, $84db

    ld l, h
    set 0, c
    inc [hl]
    nop
    ld h, d
    ld bc, $7f0a
    add b
    nop
    ret nz

    add b
    sbc a
    sbc a
    and b
    cp l
    add b
    or a
    jr z, jr_02e_4a64

    sbc a
    ld a, [hli]
    ret nz

    sub e

jr_02e_4ae0:
    ld bc, $02fa
    nop
    db $f4
    dec b
    cp $1d
    db $ed
    dec h
    xor $36
    nop
    ld c, a
    ld e, a
    ld d, b
    ld d, b
    rst $20
    rst $20
    ld [$0069], a
    call nc, $da57
    ld d, a
    ret c

    sub $0c
    dec bc
    nop
    ld [hl], d
    ld a, d
    ld a, [bc]
    ld a, [bc]
    ld h, a
    ld h, a
    rst AddAToHL
    sub [hl]
    nop
    adc e
    ld [$ea9b], a
    dec de
    ld l, e
    jr nc, jr_02e_4ae0

    db $10
    rst $38
    rst $38
    nop
    ld b, d
    ldh a, [rP1]
    rst JumpTable
    rra
    inc bc
    xor h
    inc hl
    call c, $d043
    ld c, a
    ld c, h
    nop
    dec c
    nop
    db $db
    nop
    cp l
    inc bc
    rst $38
    ld b, $f8

jr_02e_4b2b:
    inc c
    nop
    jr c, jr_02e_4abf

    pop af
    ld hl, $63a2
    db $e4
    ld b, a
    ld [$ff7f], sp
    ret nz

    add b
    dec [hl]
    cpl
    rra
    ldh a, [rP1]
    ld a, a
    add b
    rst $38
    nop
    rst $38
    rra
    ldh [$c7], a
    nop
    adc h
    adc a
    call nz, $c2e7
    and e
    pop hl
    jr nc, jr_02e_4b51

jr_02e_4b51:
    ldh a, [$fc]
    ld l, b
    cp l
    ld l, [hl]
    rst $28
    dec sp
    rst $38
    ld h, b
    inc bc
    ld d, [hl]
    ld hl, $ef80
    ld [hl], b
    cpl
    rra
    nop
    nop
    nop
    ld b, b
    add b
    ld b, c
    rst $38
    pop bc
    rst $38
    ld hl, $7f41
    ld hl, $7fc1
    cp [hl]
    ld a, a
    scf
    inc c
    ld a, a
    nop
    rra
    ldh [$7e], a
    ld hl, $7c83
    sub b
    inc h
    cp a
    ld b, b
    dec l
    rst JumpTable
    scf
    ld e, b
    or b
    nop
    ld e, a
    or b
    rst JumpTable
    jr nc, jr_02e_4b2b

    ld [hl], b
    sbc a
    ld a, a
    ld [bc], a
    ret nc

    ccf
    rst $28
    ldh a, [rIE]
    add b
    pop bc
    rst $38
    ld h, b
    adc b
    ld [hli], a
    jr nz, jr_02e_4b9d

jr_02e_4b9d:
    call $ce82
    add c
    nop
    rst JumpTable
    add b
    sbc $80
    cp $80
    cp h
    add b
    dec bc
    ret c

    ret nz

    rst $28
    ldh [$31], a
    nop
    ld d, l
    ldh [$81], a
    add hl, hl
    rst $38
    cp a
    db $ed
    sub d
    db $ed
    jp nc, $c232

    jr c, @+$63

    rst $38
    ld a, a
    db $ec
    inc [hl]
    ld hl, $00eb
    inc sp
    ldh [$2f], a
    rst $38
    ccf
    db $fd
    dec [hl]
    rst JumpTable
    ld bc, $c01f
    nop
    daa
    and a
    nop
    nop
    ld [hl], $88
    ld b, d
    rst $38
    db $dd
    ld d, l
    ld b, a
    nop
    res 0, h
    ret nz

    ld bc, $390e
    jr c, @+$01

    ld c, a
    rst $38
    sbc a
    rst $38
    ld de, $ff1f
    ccf
    ld b, c
    ld a, a
    rst $38
    nop
    nop
    dec bc
    nop
    stop
    ld a, h
    nop

Jump_02e_4bf9:
    adc h
    rst $00
    ret


    adc [hl]
    inc h
    adc e
    adc h
    ld hl, $888f
    and c
    ld a, a
    add b
    jr nz, @+$01

    nop
    add c
    inc bc
    db $fc
    ld b, $fd
    ld b, $00
    db $fc
    rlca
    rst $38
    ld a, [de]
    cp a
    ld c, $ff
    rrca
    add b
    ld hl, $8f34
    sbc [hl]
    ld b, a
    jp $e627


    nop
    add hl, de
    ccf
    rst $38
    ei
    ld b, h
    ld a, e
    call nz, $81ff
    ld b, b
    nop
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    ret nz

    inc sp
    rst $38
    add c
    add c
    cp l
    add c
    cp l
    add c
    add c
    add c
    db $db
    db $db
    add b
    ld b, b
    ld a, h
    ld a, $c3
    ld b, e
    cp h
    add c
    xor $98
    ld a, a
    rrca
    inc b
    push af
    db $76
    adc d
    adc e
    nop
    nop
    rra
    rrca
    jr nc, jr_02e_4c67

    ld l, $20
    and [hl]
    cp a
    db $db
    sbc l
    rst $20
    ld b, e
    call c, Call_02e_7e3f
    add c
    inc b
    add d
    ld a, e
    rlca
    inc bc

jr_02e_4c67:
    adc d
    call $d721
    scf
    or a
    or c
    ei
    db $f4
    ld [$0ae4], a
    nop
    rst $38
    db $fc
    ld hl, sp+$5e
    inc h
    ld a, [$f9fd]
    db $fd
    pop de
    ei
    ld d, c
    ld d, a
    xor h
    ld d, a
    nop
    inc d
    dec de
    and l
    sbc $85
    cp $c9
    ld a, [hl]
    ld [hl], c
    ld a, $15
    ld a, [hl-]
    inc [hl]
    inc d
    ld d, $19
    dec d
    nop
    sub a
    ld h, a
    sbc a
    ld l, a
    ld l, e
    ld l, e
    ld e, e
    or a
    ld d, a
    cp a
    ld d, l
    cp a
    ld b, l
    cp a
    nop
    nop
    ld [de], a
    dec e
    ld d, d
    dec a
    or $59
    sub $99
    adc $b1
    ld l, h
    di
    or l
    ld h, d
    rst $20
    ld b, d
    adc b
    nop
    ld d, l
    cp a
    ld b, l
    cp a
    xor a
    pop de
    cpl
    ret c

    cpl
    ld sp, hl
    ld c, $e9
    ld e, $25
    ld e, $00
    ld d, b
    ldh a, [$a0]
    nop
    ld d, d
    add b
    db $fc
    ld h, b
    ld e, d
    or b
    sbc l
    xor $b6
    ld a, b
    rst $30
    jr @-$14

    xor e
    nop
    inc e
    ld [hli], a
    jr nz, jr_02e_4cff

    ld [hli], a
    inc e
    ld [$00ab], a
    inc e
    ld [hli], a
    jr nz, jr_02e_4d08

    ld [hli], a
    inc e
    ld b, l
    stop
    xor $3b
    ld b, b
    rst $08
    ld a, d
    xor $01
    cp a
    ei
    rlca
    ld e, h
    rrca
    ld b, l
    stop
    xor $3b
    ld b, b

jr_02e_4cff:
    rst $08
    ld a, d
    xor $01
    cp a
    push de
    ldh [$3b], a
    db $f4

jr_02e_4d08:
    inc d
    nop
    ld [hli], a
    ret nc

    ld [hl-], a
    ld [hl], b
    ldh [$a2], a
    ld h, h
    pop hl
    ld b, h
    ld b, c
    call nz, $84c1
    add d
    adc b
    ld d, h
    nop
    ld e, h
    ld [$e7e7], a
    sub l
    ld l, [hl]
    di
    ld l, $f2
    cpl
    pop de
    cpl
    ld a, e
    dec d
    nop
    inc sp
    rst $38
    db $db
    and l
    rst JumpTable
    and c
    rst AddAToHL
    xor c
    rst $30
    adc c
    add c
    add c
    db $db
    db $db
    nop
    nop
    push hl
    add l
    call c, $2c66
    inc sp
    rra
    db $10
    inc hl
    inc a
    db $ec
    ld e, a
    rst JumpTable
    cp a
    db $e3
    pop af
    ld bc, $f001
    cp b
    rst $00
    pop hl
    ld a, a
    rst JumpTable
    rst $38
    ld l, b
    ret z

    rlca
    rst $08
    ccf
    ccf
    ld sp, hl
    jp hl


    add b
    jr nz, @+$2d

    db $f4
    ld [$f2f5], a
    db $fd
    ld e, d
    dec a
    sub c
    ld c, $c6
    dec de
    and [hl]
    sbc e
    and [hl]
    nop
    dec d
    cp a
    sub e
    ld l, a
    or e
    ld c, a
    and e
    ld e, a
    ei
    rla
    ld e, a
    or a
    ld d, a
    ld d, l
    ld b, l
    ld a, [bc]
    nop
    dec d
    ld d, $19
    inc d
    dec de
    ld a, [de]
    ld a, [de]
    ld de, $111e
    ld e, $13
    inc e
    inc de
    inc e
    ld bc, $9f54
    ld d, l
    xor a
    ld e, l

jr_02e_4d93:
    xor a
    ld c, l
    cp a
    ld l, l
    ld a, a
    ld [hl], a
    ld [hl], a
    ld d, a
    cp a
    nop
    nop
    adc a
    jp nz, $86fc

    and [hl]
    sbc $fa
    ld a, [hl]
    ld a, a
    ld [bc], a
    sbc h
    inc bc
    dec bc
    ld bc, $0025
    dec d
    nop
    rrca
    inc h
    rra
    inc d
    ld d, $17
    inc h
    rra
    srl h
    or $f8
    db $fd
    nop
    ld [bc], a
    ld [$ebea], sp
    inc e
    inc c
    ld a, [$fc33]
    db $f4
    rra
    ldh [$75], a
    add b
    nop
    ld d, b
    nop
    call nc, $00df
    jr nc, @+$4a

    jr nz, jr_02e_4de6

    inc b
    ld b, d
    nop
    nop
    ld c, c
    add d
    jr nz, jr_02e_4d93

    ld b, d
    dec b
    ld b, b
    scf
    inc de
    ld c, b
    jr nz, jr_02e_4e3e

jr_02e_4de6:
    ld c, d
    jr nc, jr_02e_4dee

    ld b, b
    ccf
    ldh a, [rNR32]
    db $10

jr_02e_4dee:
    ld a, h
    ldh [$61], a
    pop de
    cp b
    rra
    rst $30
    rra
    db $76
    inc de
    ld b, b
    dec d
    ld hl, sp+$0e
    dec bc
    db $fc
    rlca
    db $fc
    add [hl]
    db $fc
    adc d
    db $fd
    rra
    db $ed
    ld c, a
    ld [hli], a
    nop
    di
    ld d, b
    ret


    ld [hl], c
    rst JumpTable

jr_02e_4e0e:
    ld a, a
    ld e, a
    cp a
    ld [hl], e
    rst JumpTable
    inc sp
    rst $28
    rra
    ld hl, sp+$07
    dec b
    nop
    rst $38
    ld h, $9b
    rst JumpTable
    adc [hl]
    ld a, [$fcca]
    rst $08
    ld hl, sp-$31
    pop af
    cp $03
    db $fc
    nop
    jp $3ce7


    rst $38
    rst $20
    jr @+$01

    nop
    add b
    pop hl
    jp hl


    ldh a, [rNR32]
    ld hl, sp-$1a
    inc e
    di
    ld b, $0e
    ld a, [c]

jr_02e_4e3e:
    rrca
    ld sp, hl
    rlca
    ld h, c
    ld sp, $48c3
    inc a
    ld a, b
    jr @+$01

    jr nz, jr_02e_4e0e

    rst $38
    ld h, [hl]
    nop
    add c
    pop af
    rrca
    pop bc
    ccf
    inc bc
    rst $38
    ld b, $00
    rst $38
    rra
    cp $fe
    db $fc
    db $e4
    ld hl, sp+$19
    nop
    ldh [$bf], a
    ld a, a
    ld b, b
    rst $38
    sbc a
    ldh [$b0], a
    ld bc, $a3c0
    ret nz

    and [hl]
    pop bc
    and l
    jp $1523


    rst $38
    rst $38
    nop
    ld b, d
    inc b
    inc h
    nop
    ld b, a
    add b
    ld c, e
    inc bc
    rst $38
    ld [hl], h
    cp $9d
    adc h
    cp e
    nop
    call nz, $fd7a
    rla
    ld sp, hl
    dec a
    di
    db $dd
    nop
    set 6, c
    rst $38
    ld a, [hli]
    ld e, $f7
    inc c
    ld e, a
    nop
    push hl
    xor l
    rst $30
    rla
    ei
    dec de
    db $fd
    db $fc
    nop
    rst $38
    ld a, $03
    rst $38
    ld a, c
    adc a
    call nz, $0007
    add h
    adc a
    ld b, $7b
    adc [hl]
    push af
    ei
    ld b, a
    nop
    pop hl
    ld e, h
    ldh [$bf], a
    sbc $f1
    and e
    ld h, b
    nop
    pop bc
    pop de
    ld h, b
    cp [hl]
    ld sp, $1fcf
    ld h, e
    ld d, $87
    and l
    jp $b521


jr_02e_4ec8:
    ld b, e
    ld h, c
    xor l
    and d

jr_02e_4ecc:
    ld b, e
    nop
    jr nz, jr_02e_4ee8

    nop
    inc h
    ld b, c
    ld a, [hl]
    ld [hli], a
    nop
    ld b, d
    ld b, c
    nop
    res 6, b
    ld bc, $1f0e
    ld bc, $2a1f
    inc [hl]
    ld a, l
    ld b, b
    db $db
    and b
    rst $28
    rrca

jr_02e_4ee8:
    rst $38
    rst $38
    nop
    nop
    ld [hli], a
    ld bc, $4f0b
    ld d, c
    call nz, $2246
    ccf
    rst $38
    db $d3
    ld [hli], a
    nop
    rst JumpTable
    nop
    jr nz, jr_02e_4ecc

    jr nc, jr_02e_4ec8

    ld [hl], $33
    call z, $1093
    ld l, h
    sbc a
    ld h, b
    dec l
    ld sp, hl
    rlca
    ei
    rlca
    nop
    rst $20
    rra
    or $0f
    rst $38
    ld b, $fa
    rlca
    ld a, [c]
    dec hl
    ld hl, $a131
    ld a, a
    add b
    ld h, c
    ccf
    ld e, [hl]
    ret nz

    add hl, hl
    inc b
    ld c, l
    ld [hli], a
    jr nz, jr_02e_4f69

    nop
    nop
    ld a, l
    cp $a3
    ret nz

    sub b
    ldh [$c7], a
    ld hl, sp+$0f
    ldh a, [rIE]
    ld a, a
    rst $38
    ld a, $52
    ld b, c
    rra
    inc c
    add b
    ld hl, $89be
    di

jr_02e_4f3f:
    sbc h
    ei
    cp h
    ld c, l
    ld bc, $1efe
    rst $38
    dec h
    db $e3
    ld e, e
    rst $00
    ld [hl-], a
    nop
    xor [hl]
    rst $30
    ld [hl], h
    xor $ce
    ld a, l
    ccf
    cp h
    nop
    call Call_02e_631e
    add [hl]
    cp d
    jp $f3cd


    nop
    dec e
    inc bc
    or $0f
    ld a, [$f9fc]
    cp $02

jr_02e_4f68:
    ld a, h

jr_02e_4f69:
    rst $38
    cp a
    ld a, a
    rst $38
    ccf
    ld b, c
    nop
    ret nz

    ld bc, $220e
    rlca
    rst $38

jr_02e_4f76:
    dec bc
    db $fc
    inc b
    rst $38
    nop
    inc bc
    rst $38
    inc b
    cp $0a
    db $fc
    rst $38
    db $fc
    nop
    db $db
    push hl
    ld e, a
    pop hl
    cp a
    rst $08
    cp b
    sub c
    nop
    ld l, a
    jr @+$69

    sbc a
    sbc c
    ld l, a
    rst $28
    rra
    jr nz, jr_02e_4f76

    ccf
    ld hl, $1fff
    ld a, a
    sbc a
    rst $38
    jr nz, jr_02e_4f3f

    ld [hl], b
    inc hl
    db $10
    ldh [rNR10], a
    call $00b0
    adc $b0
    rst JumpTable
    and b
    sbc $a1
    cp $81
    nop
    cp h
    jp $e7d8


    rst $28
    ldh a, [rIE]
    nop
    ld hl, sp+$20
    ld b, e
    ld [hli], a
    add c
    ld [hli], a
    rst JumpTable
    inc sp
    ld e, a
    ld bc, $5cb3
    or b
    rst JumpTable
    jr nc, jr_02e_4f68

    ld [hl], b
    ld hl, $df30
    ccf
    ccf
    nop
    ld c, $1f
    inc de
    ld sp, $6324
    ld l, h
    ld b, b
    nop
    ld b, b
    ret z

    call c, $8ba8
    sbc h
    cp a
    sbc a
    nop
    ld a, b
    db $fc
    call z, $9e86
    ld [bc], a
    ld e, $e2
    nop
    ld l, d
    rla
    inc e
    rrca
    srl l
    db $fd
    ei
    nop
    rst $38
    rst $38
    ld [$fdf4], a
    ret nz

    db $db
    and b
    inc sp
    res 6, b
    and c
    cpl
    nop
    nop
    ld [hli], a
    ld bc, $880a
    ld b, b
    jr jr_02e_500a

jr_02e_500a:
    inc h
    ld b, c
    ld a, [hl]
    nop
    ld b, d
    ldh [rSTAT], a
    dec de
    dec c
    rra
    inc d
    rst $30
    add hl, de
    cp e
    db $dd
    scf
    nop
    reti


    push de
    dec sp
    xor e
    ld [hl], a
    rst $38
    rst $38
    ld d, c
    nop
    ccf
    db $ec
    rra
    ret c

    rst $20
    cp a
    ret nz

    rst $00
    nop
    cp b
    ret nc

    cp a
    sub b
    rst $28
    ret nz

    rst $38
    cp $80
    ld [hl-], a
    rst $38
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    ld [bc], a
    jr nz, jr_02e_5060

    call nz, $0003
    ld a, a
    ld hl, $4080
    ccf
    ld [hli], a
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$50
    inc bc
    ld b, c
    rlca
    inc a
    ldh [$e7], a
    ld hl, sp+$33
    nop
    db $fc
    ld e, e
    inc a
    sbc l
    ld a, [hl]
    ccf

jr_02e_5060:
    cp $fb
    nop
    rst $38
    ld sp, hl
    cp $f8
    cp $cf
    ccf
    dec de
    db $10
    db $fc
    ldh a, [rIE]
    ld hl, $3fd8
    inc a
    rrca
    nop
    call nc, $bf0f
    rst $00
    pop af
    rst $38

Call_02e_507b:
    ld a, a
    rst $38
    db $10
    ccf
    rst $38
    ld e, $43
    ld [hl], h
    ld hl, sp-$1d
    ldh a, [rP1]
    ret z

    rst $20
    db $fc
    rst $38
    ld sp, hl
    cp $9f
    db $fc
    nop
    dec b
    cp $c6
    rst $38
    and e
    ld a, a
    ld d, e
    ccf
    ld bc, $1ff7
    rst $38
    rst $38
    add c
    add c
    cp l
    ld b, c
    ret z

    jr nz, jr_02e_50cd

    db $db
    db $db
    inc hl
    or b
    sub b
    or a
    nop
    sub a
    rst AddAToHL
    or a
    sub c
    pop de
    db $fd
    sbc l
    ld [hl], l
    nop
    call $7c24
    rra
    ccf
    dec c
    dec bc
    jp hl


    ld b, b
    rst $28
    ld hl, $8f89
    cp l
    cp a
    and d
    cp a
    nop
    inc a
    ld a, $f0
    db $fc
    call $ceb0

jr_02e_50cd:
    or b
    nop
    rst JumpTable
    and b
    sbc $a1
    cp $81
    cp h
    jp $d803


    rst $20
    rst $28
    ldh a, [rIE]
    nop
    jr nz, jr_02e_5123

    pop hl
    ld [hli], a
    add c
    ld l, l
    nop
    jr jr_02e_50e7

jr_02e_50e7:
    inc h
    ld b, c
    ld de, $007e
    ld b, d
    ld b, c
    nop
    res 6, b
    ld bc, $800e
    rra
    db $10
    ret c

    ld l, a
    sbc [hl]
    ld l, a
    ldh a, [$9f]
    ld a, c
    ld bc, $81ff
    rst $38
    ld sp, hl
    rst $38
    inc e
    rst $38
    jr nz, @+$04

    rst $28
    ldh a, [$d8]
    rst $20
    ldh [$df], a
    ld hl, $08c8
    rst $38
    ldh [rIE], a
    ld [hl], c
    ld c, a
    ret nz

    rrca
    ldh a, [$0b]
    nop
    rst $38
    nop
    rst $08
    ld b, e
    cp $43
    ld hl, $1900

jr_02e_5123:
    add b
    ld a, a
    nop
    add a
    ld a, b
    inc bc
    db $fc
    add b
    ld [hl], $01
    db $fc
    inc bc
    ld a, b
    add a
    nop
    db $fd
    inc b
    cp $fd
    rst $38
    cp $ff
    ld h, b
    ld b, $ff
    nop
    ei
    rlca
    db $fd
    inc bc
    rst JumpTable
    rst $20
    cp $e7
    nop
    push de
    xor $b8
    call z, $30d9
    push af
    and $00
    ld b, c
    and $d7

jr_02e_5152:
    ldh [$d7], a
    rst $08
    sbc a
    rst $08
    nop
    or a
    rst $08
    jp c, $bfe7

    ret nz

    rst $30
    ld hl, sp+$00
    ld e, [hl]
    pop hl
    cp d
    ld a, l

jr_02e_5165:
    ld h, [hl]
    sbc a
    rst $28
    sbc [hl]
    nop
    ld l, a
    sbc [hl]
    db $fd
    ld e, $de
    dec a
    ld a, b
    rst $38
    jr nz, jr_02e_5165

    rst $38
    jr nz, jr_02e_5152

    and l
    rst JumpTable
    and c
    rst AddAToHL
    dec b
    xor c
    rst $30
    adc c
    add c
    add c
    ld c, e
    db $db
    inc hl
    ld bc, $4080
    ld c, $1f
    inc de
    ld sp, $6324
    ld l, h
    ret z

    call c, $8ba8
    sbc h
    cp a
    sbc a
    nop
    nop
    ld a, b
    db $fc
    call z, $9e86
    ld [bc], a
    ld e, $e2
    ld l, d
    rla
    inc e
    rrca
    srl l
    db $fd
    ei
    ld [$f801], sp
    db $fd
    inc bc
    cp $07
    rrca
    add sp, $1f
    ret nc

    ccf
    and c
    ld a, [hl]
    jp $477c


    ld [$00ab], a
    inc a
    ld [hli], a
    inc a
    ld [hli], a
    ld [hli], a
    inc a
    ld [$00ab], a
    inc a
    ld [hli], a
    inc a
    ld [hli], a
    ld [hli], a
    inc a
    ld bc, $c06a
    rst JumpTable
    ccf
    xor a
    ld [hl], b
    ld d, b
    ldh [$a0], a
    and b
    add b
    add b
    add b
    ld d, l
    ld b, b
    rst $38
    ld bc, $0806
    ld [$2110], sp
    cp $43
    db $fc
    ld b, a
    ld hl, sp+$00
    nop
    rst $38
    ld h, b
    rst JumpTable
    ld d, e
    db $fc
    ld d, [hl]
    sbc $6d
    db $eb
    ccf
    push af
    inc de
    ld l, c
    daa
    di
    ld l, $81
    nop
    rst $38
    ld a, h
    rst $00
    ld [c], a
    ld h, e
    ccf
    ld a, l
    ld sp, hl
    adc a
    or $26
    ld sp, hl
    ld d, b
    rst JumpTable
    ld [hl], b
    inc b
    inc d
    ld a, a
    ldh a, [rIF]
    ret nz

    ccf
    add b
    jr nz, jr_02e_5232

    ret nz

    rlca
    nop
    nop
    add b
    ccf
    ld bc, $f850
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    inc bc
    inc bc
    rlca
    ldh a, [rIF]

jr_02e_5228:
    ldh [$0a], a
    nop
    ld [$0301], sp
    ld b, $07
    rrca
    rra

jr_02e_5232:
    db $10
    ccf
    ld hl, $437e
    ld a, h
    ld b, a
    ld hl, sp+$50
    nop
    rst $38
    db $e3
    inc a
    jr jr_02e_5228

    ld sp, $03ce
    db $fc
    jp $c13c


    ld a, $80
    ld a, a
    ld d, l
    ld b, b
    rst $38
    add a
    rst $00
    rst $00
    jp nz, $60e0

    ld a, a
    ld e, b
    ld e, a
    ld c, a
    ld c, a
    ld d, l
    ld d, l
    rst $38
    ld [$1c0c], sp
    inc e
    inc e
    ld c, b
    ret nz

    ld [c], a
    ret nz

    inc sp
    rst $38
    add c
    add c
    cp l
    add c
    cp l
    add c
    add c
    add c
    db $db
    db $db
    inc h
    nop
    or a
    or b
    sub b
    sub a
    rst AddAToHL

jr_02e_5278:
    sub c
    pop de
    db $fd
    sbc l
    ld [hl], l
    call $7c24
    rra
    ccf
    jr z, jr_02e_5284

jr_02e_5284:
    jp hl


    dec c
    dec bc
    rst $28
    rst $28
    adc c
    adc a
    cp l
    cp a
    and d
    cp a
    inc a
    ld a, $f0
    db $fc
    ld d, l
    ld b, b
    rst $38
    add a
    rst $00
    rst $00
    jp nz, $e0e0

    ld a, a
    ret c

    ld a, a
    rst $08
    ld a, a
    nop
    dec b
    nop
    sbc d
    dec c
    or $39
    db $fd
    ld b, e
    ld a, e
    ld b, a
    ld h, h
    ld e, h
    cp e
    jr c, jr_02e_5278

    rst $38
    ld bc, $9c02
    cp $ff
    xor e
    rst JumpTable
    ld a, [$eb8d]
    db $dd
    cp [hl]
    sub e
    ld a, [c]
    ld l, c
    ld h, e
    nop
    ld hl, $e002
    ret nz

    add b
    add b
    or b
    ret nz

    rst JumpTable
    ld l, a
    ldh a, [$38]
    rst $38
    adc a
    ld a, a
    rra
    ld [$00ab], a
    inc a
    ld [hli], a
    inc a
    ld [hli], a
    ld [hli], a
    inc a
    ld d, b
    nop
    ld a, $ef
    di
    db $db
    ld h, [hl]
    db $d3
    ld l, [hl]
    rst $20
    ld a, [hl]
    cp l
    inc a
    jp $fe00


    nop
    ld [bc], a
    add b
    ei
    rst $38
    ld a, b
    rst $08
    add h
    or a
    ld a, [$0ece]
    xor $0e
    pop af
    nop
    ld a, a
    nop
    dec d
    ld d, l
    nop
    ret nz

    rrca
    ldh a, [rIE]
    rst $08
    rst $38
    cp $ff
    rst $38
    db $10
    ld bc, $1900
    add b
    ld a, a
    add a
    ld a, b
    inc bc
    db $fc

jr_02e_5314:
    rrca
    ldh a, [rSB]
    db $fc
    inc bc
    ld a, b
    add a
    dec b
    ld d, l
    rst $38
    add a
    ld hl, sp-$6a
    ld sp, hl
    or b
    and b
    and b
    and b
    add d
    add a
    ld [bc], a
    xor b
    inc bc
    jr jr_02e_5314

    add hl, sp
    add $33
    call z, $fcfc
    db $fc
    db $fc
    ld bc, $00fe
    dec bc
    nop
    cp d
    ld a, l
    sub [hl]
    ld a, c
    ld h, l
    ld b, e
    ld a, e
    ld b, a
    ld h, h
    ld e, a
    jr c, jr_02e_53c4

    inc a
    nop
    nop
    cp $ff
    add hl, hl
    rst JumpTable
    jp nc, $aa8d

    sbc h
    db $fd
    sbc [hl]
    db $d3
    cp [hl]
    sub e
    ld a, [$f160]
    nop
    inc sp
    rst $38
    db $db
    and l
    rst JumpTable
    and c
    rst AddAToHL
    xor c
    rst $30
    adc c
    add c
    add c
    db $db
    db $db
    inc b
    rst $38
    rst $38

jr_02e_536b:
    add c
    add c
    cp l
    ld bc, $8108
    add c
    nop
    rst $38
    rst $38
    db $db
    db $db
    rst $38
    rst $38
    nop
    nop
    jr nz, jr_02e_53fb

    add b
    ld bc, $0030
    add b
    nop
    cp $ff
    inc b
    rst $38
    ret nz

    cp a
    rst $38
    and b
    ld bc, $ff48
    nop
    ret nz

    ld [bc], a
    db $10
    ld bc, $0438
    inc bc
    ld a, [hl]
    adc h
    ld d, c
    or b
    nop
    ld b, b
    ret nz

    ld b, a
    ret nz

    ld e, [hl]
    pop bc
    or $89
    nop
    db $fc
    add e
    ld [hl], b
    ldh [$7e], a
    db $10
    xor $1c
    nop
    ld c, [hl]
    and d
    dec bc
    add [hl]
    inc de
    rrca
    ld h, a
    sbc l
    nop
    adc l
    ld a, e
    rst $38
    ret nz

    rst $38
    rst $38
    cp a
    rst $38
    ld b, [hl]
    and d
    ld a, [hl-]
    jr jr_02e_536b

    rst $38

jr_02e_53c4:
    and c
    ld a, $18
    inc b
    db $10
    db $10
    ld hl, $02ff
    ld b, b
    jr jr_02e_53d3

    rst $38
    cp $fc

jr_02e_53d3:
    ccf
    ld d, b
    nop

jr_02e_53d6:
    ldh [rIE], a
    ld a, a
    rra
    xor $1d
    ld c, [hl]
    and d
    dec a
    ld a, [bc]
    add a
    ccf
    jr z, jr_02e_545f

    ld d, b
    ld bc, $3e08
    db $10
    ld a, a
    sbc a
    ld d, b
    adc e
    ld c, a
    ld c, b
    jr c, @+$01

    ld a, h
    ld e, a
    ld e, b
    db $10
    ld de, $0f08
    ld d, b
    ld b, b
    ld a, h

jr_02e_53fb:
    rra
    ld e, b
    nop
    rst $38
    ld h, [hl]

Jump_02e_5400:
    rst $38
    ld a, [hl]
    cp l
    nop
    db $db
    and l
    rst JumpTable
    and c
    rst AddAToHL
    xor c
    rst $30
    adc c
    add c
    rst $38
    jr nc, @+$01

    dec b
    ei
    db $fd
    rst $38
    ld bc, $2023
    add b
    ld a, [hli]
    db $10
    rst JumpTable
    or b
    rst $28
    rst JumpTable
    cp a
    ldh [$bf], a
    adc a
    jp $a008


    rst $38
    ld h, b
    jp z, $1410

    db $10
    ld b, e
    jr z, @+$08

    jr nz, @+$0a

    rst JumpTable
    ldh [rIE], a
    jr nz, jr_02e_53d6

    ld c, b
    dec b
    ld hl, sp+$07
    ret nz

    rra
    ld d, c
    ld [de], a
    db $10
    and c
    rst $38
    add sp, $7f
    ldh [$bf], a
    dec b
    cp a
    rst JumpTable
    sbc a
    ldh [rLCDC], a
    ld e, d
    ld [$1620], sp
    ld [$0440], sp
    dec sp
    jr z, jr_02e_5454

jr_02e_5454:
    rst $38
    cp b
    ret nz

    jp $01f0


    ld [hl], a
    ldh a, [rPCM34]
    adc b
    ld a, e

jr_02e_545f:
    add a
    ld a, a
    rst $08
    jr jr_02e_5464

jr_02e_5464:
    ld l, c
    rst $38
    ret


    ld a, a
    adc $7f
    ld a, c
    cp $21
    adc [hl]
    ldh a, [$df]
    jr nz, @+$62

    cp a
    ld e, a
    cp a
    rst $28
    ld d, b
    ld a, [bc]
    rlca
    db $fc
    cp $f8
    sbc a
    ld d, c
    ld a, l
    push de
    db $10
    cp e
    jr z, jr_02e_54bc

    rst $00
    ld c, a
    jr nc, jr_02e_54c1

    rrca
    ld [$fffe], sp
    cp $62
    ld bc, $300f
    rra
    jr @+$01

    ld a, h
    add e
    rrca
    jr nc, jr_02e_54d6

    ld bc, $3cdb
    rst $38
    ld a, [hl]
    rst $20
    ld h, [hl]
    sbc c
    rrca
    jr nc, jr_02e_54a9

    dec b
    nop
    cp $02
    db $fc

jr_02e_54a9:
    inc b
    ld hl, sp-$08
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    rst $38
    ret nz

    nop
    inc bc
    inc bc
    rra
    rra
    rst $38
    rst $38
    nop

jr_02e_54bc:
    rst $38
    rst $38
    nop
    nop
    rlca

jr_02e_54c1:
    rlca
    rra
    rra
    ld a, a
    ld a, a
    ld bc, $4080
    xor $1f
    db $d3
    ld sp, $63a4
    db $ec
    ret z

    call c, $8ba8
    sbc h
    cp a

jr_02e_54d6:
    sbc a
    nop
    nop
    ld a, e
    db $fc
    call $9f86
    ld [bc], a
    rra

Jump_02e_54e0:
    ld [c], a
    ld l, d
    rla
    inc e
    rrca
    srl l
    db $fd
    ei
    ld b, b
    add b
    db $fc
    ld a, [de]
    or c
    ld a, b
    ld h, a
    ldh a, [$fe]
    pop hl
    ld [$f06f], a
    dec [hl]
    ld_long a, $ffff
    ld [bc], a
    ld [bc], a
    cp l
    ld d, $0e
    ld [c], a
    add l
    jp hl


    inc de
    pop bc
    sbc l
    ld h, c
    ld e, a
    ld h, l
    ld l, a
    pop bc
    db $d3
    ld b, e
    nop
    rst $38
    nop
    cp $01
    ldh [$1f], a
    ld b, $f9
    pop hl
    ld e, $f8
    rlca
    ld bc, $08fe
    ld de, $0f3f
    ldh a, [rP1]
    rst $38
    ret nz

    rst $00
    ld hl, sp+$38
    rst $38
    add $71
    adc a
    ret nz

    ld d, l
    nop
    nop
    rst $38
    ccf
    inc bc
    ld bc, $0f10
    adc [hl]
    ld [hl], b
    jr nc, @-$3e

    ld h, b
    add b
    db $76
    ld a, a
    nop
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    rst $38
    nop
    ret nz

    nop
    nop
    rlca
    rlca
    rra
    jr jr_02e_557b

    jr nc, jr_02e_559e

    ld l, a
    add c
    rst $38
    sbc h
    rst $38
    db $eb
    db $ec
    ret nz

    nop
    inc bc
    add l
    add [hl]
    ld c, c
    adc $a9
    ld l, [hl]
    ld d, l
    cp a
    adc e
    cp $57
    ld a, [$7b96]
    ld [$ff08], sp
    sbc a
    pop af
    cp a
    db $e3
    ld b, l
    ld a, a
    dec b
    db $ed
    rlca
    cp e
    rlca
    dec b
    ld e, b
    ld [$0050], sp
    cp a
    ld b, c

jr_02e_557b:
    ld b, d

jr_02e_557c:
    inc b
    cp $0e
    cp $19
    ld sp, hl
    jr c, jr_02e_557c

    jp hl


    jp hl


    ld b, [hl]
    ld b, [hl]
    dec b
    ld d, c

jr_02e_558a:
    nop
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$f0]
    ldh a, [$f0]
    ret nz

    ld b, b
    add b
    ccf
    rst $38
    rst $38
    ccf
    ccf
    ld d, l
    ld d, l
    rst $38

jr_02e_559e:
    pop bc
    adc a
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    inc h
    nop
    or a
    or b
    sub b
    sub a
    rst AddAToHL
    sub c
    pop de
    db $fd
    sbc l
    ld [hl], l

jr_02e_55b2:
    call Call_02e_7ca4
    rst JumpTable
    ccf
    jr z, jr_02e_55b9

jr_02e_55b9:
    jp hl


    dec c
    dec bc
    rst $28
    rst $28
    adc c
    adc a
    cp l
    cp a
    and d
    cp a
    dec a
    ld a, $f3
    db $fc
    add b
    jr jr_02e_558a

    jp $e7da


    and l
    cp $fa
    cp h
    db $fd
    cp [hl]
    cp $ff
    sbc a
    rst $38
    ld b, c
    ld d, h
    rst $38
    ld e, a
    rst JumpTable
    ld a, a
    rst $08
    ld a, a
    ld c, a
    ld c, a
    rst JumpTable
    and b
    ld e, a
    ldh [rDIV], a
    ld bc, $0efe
    pop af
    db $e3
    rra
    dec c
    ld [hl], $f9
    ld c, h
    di
    call z, $86f3
    ld sp, hl
    add c
    add d
    add b
    ld a, a
    rst $38
    add e
    db $fc
    sbc a
    ld h, b
    add b
    add b
    ccf
    ret nz

    rra

jr_02e_5604:
    ldh [$82], a
    ld a, l
    rra
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    nop
    ld d, h
    inc bc
    add b
    nop
    jr c, jr_02e_5604

    ld h, [hl]
    inc e
    dec bc
    ld b, $1d
    dec b
    dec c
    add hl, de
    rlca
    rst $38
    rst $38
    nop
    nop
    ld d, h
    rst $38
    rla
    jr jr_02e_5652

    inc sp
    ld e, b
    ld h, a
    ld d, c
    ld l, a
    add c
    add c
    add a
    adc c
    ld sp, hl
    jr nz, jr_02e_55b2

    ld c, l
    dec de
    pop af
    db $fc
    add [hl]
    db $fc
    dec sp
    rst $00
    add e
    add hl, de
    add a
    ld hl, $419f
    cp a
    nop
    nop
    pop af
    db $10
    rla
    ld [hl], b
    sbc $31
    ld c, a
    ccf
    rst $20
    rra
    or c
    rrca
    db $f4
    inc bc
    ld e, a

jr_02e_5652:
    nop
    jr nz, @-$7e

    xor $fe
    ld [hl], b
    jr @+$81

    adc c
    rst JumpTable
    and $f0
    or $f8
    dec sp
    db $fc
    add a
    ld a, a
    ld b, b
    rst $38
    ld b, b
    sbc a
    rst $38
    push de
    cp e
    cp a
    pop de
    ld [bc], a
    or [hl]
    db $db
    cp e
    call c, $92ed
    dec l
    di
    add b
    ld b, d
    rst $30
    ei
    ld d, l
    cp e
    ei
    dec d
    ld a, e
    nop
    sub l
    or e
    ld a, l
    cp a
    ld b, b
    add a
    ld h, b
    db $e3
    nop
    jr jr_02e_5704

    add h
    db $fc
    ld b, $e7
    rlca
    rlc b
    inc e
    ld c, a
    ldh a, [$fa]
    rlca
    add sp, $1f
    and c

jr_02e_569a:
    nop
    ld a, [hl]
    ret c

    rst $20
    pop bc
    rst $38
    ld h, a
    rst $38
    ld a, [hl]
    ld [$b3ff], sp
    ld a, h
    ld bc, $9f27
    ld e, $7f
    nop
    ld a, c
    cp $e6
    ld sp, hl
    sub l
    xor $7f
    adc b
    nop
    sbc d
    ld a, l
    rst $38
    jr nz, jr_02e_569a

    ld d, [hl]
    db $db
    ld e, d
    nop
    db $ed
    db $db
    rst AddAToHL
    push af
    xor l
    rst $30
    ei
    xor a
    nop
    xor l

jr_02e_56c9:
    rst $38
    db $fd
    inc bc
    cp $07
    ld hl, sp+$0f
    nop
    add sp, $1f
    ret nc

    ccf
    and c
    ld a, [hl]
    jp $007c


    ld b, a
    ld hl, sp-$1d
    rst $38
    inc a
    rst $38
    jr jr_02e_56c9

    nop
    ld sp, $03ce
    db $fc
    jp $c13c


    ld a, $04
    add b
    ld a, a
    add a
    rst $38
    rst $00
    ld b, c
    jp nz, $00ff

    ldh [rIE], a
    and b
    rst $38
    ret c

    cp a
    ld a, a
    ld a, a
    inc b
    ld [$0cff], sp
    rst $38
    inc e
    add c

jr_02e_5704:
    ld c, b
    rst $38
    nop
    ret nz

    rst $38
    ld [c], a
    rst $38
    rst $38
    rra
    ld [$0334], a
    db $fd
    ld b, b
    db $db
    and b
    res 6, b
    and c
    jr nc, jr_02e_5758

    nop
    nop
    ld [hli], a
    ld bc, $4f0b
    ld d, c
    ld b, [hl]
    ld [hli], a
    db $10
    ccf
    rst $38
    rst JumpTable
    ld [hli], a
    rst $38
    add b
    rst $38
    rst $08
    db $10
    or b
    cp c
    add $27
    sbc a
    rst $30
    rst $38
    sub a
    sub b
    ld hl, $b0cb
    ld bc, $010e
    rst $38
    ld b, $ff
    ld b, b
    ld [$1041], sp
    rst $38
    ld hl, $43fe
    db $fc
    nop

jr_02e_5748:
    ld b, a
    ld hl, sp-$0b
    sbc e
    xor e
    rst JumpTable
    xor $df
    ld bc, $efd9
    ldh a, [$b8]
    rrca
    nop
    rst $38

jr_02e_5758:
    ld b, c
    nop
    rst $30
    ld sp, hl
    ld a, l
    cp e
    db $dd
    dec sp
    xor e
    db $fd
    db $10
    ld b, a
    ld c, a
    or b
    adc a
    cp $00  ; and a / or a
    ld [hl], b
    add c
    nop
    add c
    ld c, [hl]
    ld l, a
    ldh a, [$fd]
    ld b, [hl]
    db $eb
    ld e, [hl]
    nop
    and d
    ld a, a
    adc c
    rst $20
    ld d, c
    rst $38
    call $001b
    db $dd
    dec bc
    rst JumpTable
    dec c
    push de
    rrca
    rst AddAToHL
    rrca
    nop
    db $d3
    rrca
    inc de
    rst $08
    cp $05
    inc bc
    ld b, $00
    cp $03
    ld [bc], a
    rst $38
    scf
    rst $38
    ld a, a
    reti


    nop
    ld e, c
    rst $20
    cp a
    pop bc
    rst $30

jr_02e_579e:
    db $db
    and a
    db $d3
    jr nz, jr_02e_5748

    jp $2421


jr_02e_57a6:
    jp Jump_02e_423c


    add c
    nop
    nop
    rst $38
    nop
    add a
    ld hl, sp-$6a
    ld sp, hl
    or b
    ld d, b
    rst $38
    ld hl, $41a0
    add d
    rst $38
    add a
    rst $38
    nop
    jr jr_02e_57a6

    add hl, sp
    add $33
    call z, $fc03
    add b
    and c
    ld bc, $9afe
    dec c
    or $39
    db $fd
    nop
    ld b, e
    ld a, e
    ld b, a
    ld h, h
    ld e, h
    cp e
    jr c, jr_02e_579e

    nop
    nop
    rst $38
    nop
    cp $ff
    xor e
    rst JumpTable
    ld a, [$8d00]
    db $eb
    sbc h
    db $dd
    cp [hl]
    sub e
    ld a, [c]
    ld l, c
    nop
    ld h, e
    sbc h
    nop
    call $ceb0
    or b
    rst JumpTable
    nop
    and b
    sbc $a1
    cp $81
    cp h
    jp $07d8


    rst $20
    rst $28
    ldh a, [rIE]
    nop
    jr nz, jr_02e_5846

jr_02e_5803:
    ld [hli], a
    jp nz, $2281

    rst JumpTable
    ccf
    ld e, a
    cp a
    ld hl, $02d0
    ccf
    sbc a
    ld [hl], b
    ldh a, [$f0]
    rlca
    ld [hl], d
    sub a
    ld [bc], a
    ld hl, sp-$70
    rst $28
    sbc a
    rst $38
    add b
    ld a, [hl-]
    adc b
    ret nz

    inc l
    ld c, a
    pop bc
    rst $38
    adc a
    rst $38
    rra
    rst $38
    ld d, b
    ccf
    ld b, c
    ld a, a
    add c
    cp l
    ld a, [hl]
    ld e, d
    rst $20
    inc l
    and l
    jp $ada1


    ld b, e
    ld c, b
    nop
    nop
    dec a
    inc bc
    inc bc
    ld h, l
    ld bc, $0701
    nop
    rlca
    rra
    inc e
    ld a, a

jr_02e_5846:
    ld [hl], b
    rst $38
    ret nz

    rst $38
    ld d, $80
    ld e, $1d
    add a
    nop
    pop hl
    ld [hli], a
    xor c
    jr jr_02e_58ab

    push af
    ld a, [bc]
    rrca
    inc c
    ld hl, $eb14
    or l
    ld b, b
    ld c, d
    rst $28
    sbc a
    ldh [$8f], a
    ldh a, [$c7]
    ld hl, sp+$02
    jp Jump_02e_41fc


    cp $60
    rst $38
    ld hl, $6130
    rst $38
    rst $30
    ld hl, $807f
    rrca
    ldh a, [rNR52]
    ld l, $03
    nop
    ld hl, $1387
    add hl, bc
    ld l, $85
    jr nz, jr_02e_5803

    ld hl, $60df
    rst $38
    ld b, b
    cp a
    ret nz

    rst JumpTable
    nop
    ldh [$fc], a
    rlca
    db $ec
    rra
    db $fc
    rra
    add sp, $50
    rra
    rst JumpTable
    nop
    nop
    db $10
    ld bc, $0300
    nop
    ld b, c
    rlca
    ld b, c
    rra
    nop
    ccf
    nop
    ld a, a
    ld b, c
    or h
    ld l, l
    rrca
    pop bc

jr_02e_58ab:
    ld [hl], c
    ld bc, $0380
    inc bc
    nop
    rlca
    ld b, $07
    inc b
    rrca
    inc c
    rrca
    ld [$3704], sp
    or b
    rst $08
    nop
    rst $38
    ld b, c
    ld a, a
    add b
    ldh [$65], a
    ld hl, $0a00
    ld bc, $0301
    inc bc
    rlca
    ld b, b
    ld b, $21
    rrca
    inc c
    ccf
    jr c, jr_02e_5953

    ld h, b
    inc c
    rst $38
    ret nz

    rst $38
    add b
    sbc a
    ld b, h
    ld bc, $00ff
    ld a, e
    rst $38
    sub $ef
    xor b
    rst $00
    cp h
    jp $bd20


    jp nz, $f92d

    rst $38
    ld d, [hl]
    adc a
    adc d
    inc b
    rlca
    adc b
    rlca
    ld sp, hl
    ld b, $21
    db $fd
    ld [bc], a
    nop
    db $fc
    rst $38
    ld c, d
    add a
    add l
    inc bc
    add h
    inc bc
    ld b, b
    db $fc
    pop bc
    ld a, a
    rst $38
    xor c
    rst $00
    ld b, h
    add e
    ld [de], a
    ld b, [hl]
    add c
    ld a, [hl]
    ld b, c
    db $fd
    inc bc
    ld hl, $0010
    rst AddAToHL
    ld [$08ef], sp
    ei
    inc b
    push af
    ld [bc], a
    ld bc, $01fa
    db $fd
    nop
    cp $00  ; and a / or a
    rst $38
    ld bc, $010b
    ld a, a
    ret nz

    rst $38
    ld h, b
    ld l, a
    inc e
    sbc a
    inc de
    dec c
    jr nz, @+$01

    ld a, a
    ld hl, $37f8
    rst $38
    dec de
    db $fc
    jr jr_02e_594b

    cp $03
    or c
    nop
    rra
    rst $38
    rst $38
    dec a
    nop
    jp $08f3


    or e
    ld c, $de

jr_02e_594b:
    jr nz, jr_02e_59c2

    inc b
    ld [bc], a
    sbc a
    ld h, b
    ld c, $b1

jr_02e_5953:
    ld l, a
    cp a
    nop
    ld [bc], a
    rst $28
    db $10
    call $d728
    jr c, jr_02e_5985

    ld a, e
    inc b
    add b
    rra
    jr jr_02e_5983

    db $10
    ld hl, $303f
    jr nz, jr_02e_59a9

    jr nz, jr_02e_598d

    ld a, a
    ld h, b
    ld a, a
    ld b, b
    nop
    and b
    nop
    add hl, bc
    ld bc, $0340
    inc bc
    rrca
    inc c
    rra
    ld h, b
    jr @+$3f

    add hl, sp
    rst $38
    ret nz

    rst $38
    add b

jr_02e_5983:
    rst $38
    ld d, b

jr_02e_5985:
    nop
    pop bc

jr_02e_5987:
    ld bc, $0381
    cp $07
    db $fc

jr_02e_598d:
    nop
    rlca
    cp l
    jp nz, $c3bc

    or $c1
    ld [c], a
    nop
    pop bc
    rst AddAToHL
    pop hl
    ld e, l
    db $e3
    ld b, c
    rst $38
    ld h, c
    jr nc, @+$01

    db $fc
    dec [hl]
    ld b, c
    rst $08
    ld [bc], a
    add a
    ld [bc], a
    add c

jr_02e_59a9:
    inc hl
    ld a, d
    add a
    add d
    rst $38
    db $fd
    inc bc
    ld hl, $2f80
    adc a
    ld [bc], a
    rlca
    ld [bc], a
    adc [hl]
    inc bc
    ld a, [$2488]
    rst $38
    ei
    rlca
    ld hl, $038f

jr_02e_59c2:
    rlca
    ld h, b
    inc bc
    xor l
    ld hl, $3fe0
    ldh [$7f], a
    ret nz

    add b
    pop bc
    ld b, b
    rst $38
    ret nz

    rst $38
    jr nc, jr_02e_5987

    inc c
    nop
    call z, $f707
    ld bc, $00fd

jr_02e_59dc:
    cp $00  ; and a / or a
    ld b, b
    rst $38
    ld bc, $1f09
    ret nz

    ret nz

    ldh a, [$f0]
    ccf
    ld [hl], a
    cp a
    scf
    dec d
    dec bc
    ld b, b
    rst $38
    ld b, b
    ld h, a
    nop
    inc e
    nop
    ld a, [de]
    pop af

jr_02e_59f6:
    xor $71
    rst $38
    nop
    di
    inc c
    nop
    and l
    ld d, d
    ld a, d
    ld d, $ed
    ld e, $bf
    nop
    ld [bc], a

jr_02e_5a06:
    dec a
    ld b, d
    scf
    ret nz

    cp $00  ; and a / or a
    daa
    push hl
    nop
    jr jr_02e_59dc

    inc h
    sub $2c
    ei
    inc e
    rst $38
    ld c, c
    ld b, b
    ld b, c
    ret nz

    cp a
    add c
    sbc a
    ldh [rNR42], a
    nop
    rlca
    ld b, $07
    inc b
    rrca
    inc c
    ccf
    jr c, jr_02e_5a4a

    ld a, a
    ld h, b
    dec [hl]
    rst $38
    sbc b
    rst $38
    cp b
    rst $38
    ld b, b
    nop
    ld bc, $870a
    nop
    inc bc
    nop
    db $fc
    rrca
    ld c, c
    ld hl, sp+$21
    rra
    ldh a, [$61]
    ccf
    ldh [rSTAT], a
    nop
    jr nz, jr_02e_5a06

    jr nz, jr_02e_59f6

jr_02e_5a4a:
    ld sp, $20b1
    ldh [rP1], a
    ld de, $0fdd
    rst $28
    nop
    ld [hl], b
    nop
    rra
    ld [$db82], sp
    add d
    cp [hl]
    ld hl, $dbc3
    rst $20
    nop
    rst $20
    add d
    add d
    ld b, e
    ld e, e
    ld a, $3e
    ld [bc], a
    nop
    db $76
    ld [bc], a
    ld a, [$fb03]
    rlca
    ld [hl], a
    adc [hl]
    nop
    adc [hl]
    inc bc
    inc bc
    ld b, $76
    db $fc
    db $fc
    ld [bc], a
    ld d, b
    ei
    ld hl, $2d06
    adc a
    ld [bc], a
    inc bc
    inc b
    ld hl, $f975
    add hl, sp
    inc b
    ret nz

    rst $38
    add b
    ld bc, $480d
    nop
    nop
    dec c
    rlca
    rlca
    jp hl


    inc bc
    inc bc
    ld e, $30
    rra
    ldh a, [$9f]
    add hl, hl
    ld c, $0f
    ld a, b
    ld a, a
    ld h, b
    ret nz

    add hl, hl
    add c
    ld a, b
    ld a, b
    sbc a
    rst JumpTable
    jp $fb04


    ld b, b
    rst JumpTable
    jr nz, @+$01

    ld hl, $5f10
    nop
    db $10
    rra
    nop
    rrca
    add b
    add b
    cp $fe
    inc c
    ccf
    ccf
    nop
    db $fc
    cp a
    ld b, c
    rrca
    nop
    ld b, e
    nop
    ld sp, $ffff
    ld bc, $11fd
    add hl, bc
    ld b, b
    ldh a, [$2f]
    jr nz, @+$6d

    nop
    ld d, b
    ld hl, sp+$38
    cp e
    ld b, [hl]
    ld a, [hl]
    sbc c
    rst $20
    ldh a, [$87]
    ld a, a
    add hl, sp
    dec c
    db $fc
    ld [hl], a
    rst $30
    nop
    nop
    ld bc, $02fd
    ei
    ld b, $7d
    add $dd
    ccf
    db $fc
    ld [hl], l
    adc h
    jp z, $a550

    sub d
    jr nz, jr_02e_5b18

    db $fc

jr_02e_5af9:
    ld hl, sp-$05
    ld b, l
    cp a
    rst $28
    sub e
    db $fd
    rst $08
    or [hl]
    sbc e
    or $ef
    xor $7f
    ld hl, $7f00
    ccf
    rst $38
    call nz, $effa
    sub d
    and $db
    ld a, [hl]
    or e
    rst JumpTable
    xor $ef
    db $fc

jr_02e_5b18:
    db $10
    jr nz, @-$1f

    add b
    cp a
    ld b, [hl]
    dec h
    rst $38
    ld h, [hl]
    xor l
    ld a, [c]
    rra
    inc e
    inc l
    inc bc
    push de
    jr nz, @-$7e

    add b
    inc a
    cp l
    ld h, d
    ld e, [hl]
    adc l
    di
    sbc $8e
    rst JumpTable
    or b
    ld e, a
    db $10
    rra
    jr nz, jr_02e_5af9

    and b
    nop
    ld bc, $ffff
    rra
    db $dd
    rla
    srl [hl]
    ldh [$2f], a
    ldh [$30], a
    ldh a, [rNR30]
    ld a, [$02a8]
    cp a
    inc e
    ld e, $1f
    xor a
    rra
    di
    rrca
    db $dd
    inc de
    ld a, a
    inc e
    ld e, a
    add l
    nop
    rst $38
    add hl, sp
    rst AddAToHL
    rst AddAToHL
    ret nz

    ld hl, sp-$34
    or a
    ld h, h
    rlca
    adc h
    dec bc
    ret c

    rst AddAToHL
    inc bc
    db $fc
    ccf
    di
    inc bc
    rst $08
    rrca
    sbc a
    rra
    ld a, a
    ld a, a
    nop
    xor d
    set 7, a
    rra
    ld [$fd34], a
    ld b, b
    db $db
    and b
    or b
    or b
    or b
    or b
    jp z, $ffaa

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp $ffb4


    nop
    nop
    nop
    nop
    nop
    ccf
    rst JumpTable
    ccf
    ret nc

    jp z, $80ff

    rst $08
    or b
    cp c
    add $9f
    rst $30
    sub a
    sub a
    xor d
    xor d
    res 6, b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
    ld d, l
    ld b, b
    rst $38
    ld bc, $0806
    ld [$2110], sp
    cp $43
    db $fc
    ld b, a
    ld hl, sp+$00
    add hl, bc
    rst $38
    adc b
    ei
    and h
    db $dd
    ld [hl], e
    ld c, a
    ld a, [hl-]
    and l
    cpl
    ldh [$6d], a
    ret nz

    sbc h
    rst $30
    nop
    nop
    and h
    sub e
    cp d
    and c
    pop bc
    db $fd
    add hl, sp
    add $1c
    ld [c], a
    or $00
    ld [hl], l
    db $10
    rst $38
    db $ec
    nop
    nop
    xor $3f
    cp h
    cpl
    add sp, -$19
    sbc h
    rst $38
    ld c, a
    ld a, e
    cp e
    sbc $6e
    ld l, l
    ei
    dec bc
    ld bc, $fd08
    rst $28
    ld hl, sp+$7b
    add sp, $2d
    call $e470
    cp l
    cp e
    or $7c
    cp a
    and b
    nop
    nop
    ld [de], a
    db $e4
    inc hl
    call $ddc3
    dec de
    pop hl
    ld de, $26e6
    ret


    ld [$eb01], a
    jr nz, jr_02e_5c18

jr_02e_5c18:
    ld [de], a
    xor l
    and b
    ccf
    ld b, b
    ld e, a

jr_02e_5c1e:
    adc h
    xor a
    inc d
    rra

jr_02e_5c22:
    add sp, -$05
    ld e, h
    ld a, [$0306]
    ld [bc], a
    add b
    inc sp
    ld d, $e5
    jr jr_02e_5c1e

    inc e
    di
    call c, $3dec
    pop hl
    ccf
    cp $00  ; and a / or a
    rst $38
    inc d
    nop
    inc bc
    daa
    db $db
    db $fd
    db $ec
    sub [hl]
    ld de, $7077
    adc e
    adc b
    ei
    ld [$ff07], sp
    ld bc, $3d40
    add sp, $27
    jr @-$07

    inc a
    set 0, [hl]
    ld b, [hl]
    cp $c5
    db $fc
    ccf
    jr c, jr_02e_5c22

    ret z

    ld [bc], a
    cp a
    rst $38
    ccf
    ccf
    rra
    rra
    rra
    rra
    jr nz, jr_02e_5c87

    ld e, a
    ld b, b
    add b
    ld d, b
    nop
    or b
    call $dfce
    and b
    sbc $a1
    cp $81
    cp h
    jp $e7d8


    rst $28
    ldh a, [rPCM12]
    xor c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, c
    nop

jr_02e_5c87:
    ccf
    rst JumpTable
    ld e, a
    cp a
    ld e, a
    cp a
    ret nc

    sbc a
    ld [hl], b
    ldh a, [$f0]
    rlca
    nop
    rst $38
    nop

jr_02e_5c96:
    add d
    jp nc, $97ff

    ld hl, sp-$70
    rst $28
    sbc a
    add b
    adc b
    nop
    nop
    nop
    ld d, l
    ld d, l
    rst $38
    pop bc
    adc a
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld [$00ab], a
    inc a
    ld [hli], a
    inc a
    ld [hli], a
    ld [hli], a
    inc a
    ld d, c
    nop
    rst $38
    add b
    ret nz

    ld b, b
    ld a, a
    ldh [$b3], a
    cp a
    sbc [hl]
    sbc [hl]
    db $e4
    db $e4
    ld a, a
    ld a, a
    add c
    ld b, b
    rst $38
    nop
    ld a, [hl]
    add c
    jr c, jr_02e_5c96

    nop
    ret nz

    ld a, h
    ld a, a
    rst $20
    rst $20
    add hl, sp
    add hl, sp
    nop
    ld d, c
    rrca
    sbc $e7
    ld [hl], h
    rst $08
    or l
    rst $38
    inc c
    rra
    add $e6
    and a
    ld c, a
    or e
    ld bc, $c340
    cp a
    ld bc, $8957
    rla
    pop bc
    dec e
    ccf
    ld a, [de]
    rst $20
    ld [hl], a
    cp $d1
    ld [c], a
    dec c
    ld bc, $bfff
    ret nz

    rst $30
    ld hl, sp-$03
    or $fd
    push af
    cp $fb
    cp $fa
    pop de
    nop
    rst $38
    ld a, a
    xor $7f
    jr nc, jr_02e_5d27

    rrca
    ld a, b
    rrca
    cp l
    ld b, [hl]
    rst $20
    rra
    push af
    ld d, b
    rst $38
    inc c
    nop
    ld b, d
    dec b
    rst $00
    dec a
    db $fd
    dec b
    inc d
    nop
    add e
    and a
    ld b, d
    pop bc

jr_02e_5d27:
    sbc l
    cp a
    add c
    xor [hl]
    add c
    rst $38
    add b
    cp e
    call nz, $c0fb
    ld bc, $f144
    ld sp, hl
    db $10
    db $f4
    add hl, de
    reti


    scf
    ld [de], a
    ld [hli], a
    or d
    pop hl
    ld [c], a
    or $e9
    ld [$00ab], a
    jr jr_02e_5d6b

    inc h
    ld a, [hl]
    ld b, d
    ld b, d
    dec b
    nop
    ld e, a
    call nc, $e46f
    ld e, e
    ldh [$e1], a
    ld b, c
    rst $38
    db $e3
    cp $a2
    pop bc
    rst JumpTable
    add b
    nop
    dec d
    add c
    add [hl]
    pop bc
    add $c1
    add [hl]
    pop hl
    and [hl]
    sbc c
    dec bc
    add a
    ld c, $0e

jr_02e_5d6b:
    ld c, [hl]
    ret z

    nop
    rst $38
    add b
    add b
    add b
    adc b
    rst $30
    ret nz

    cp e
    cp e
    adc d
    ld c, d
    adc $71
    push af
    ret z

    inc hl
    rst $38
    nop
    nop
    nop
    inc b
    ei
    ld b, b
    cp a
    nop
    nop
    nop
    inc d
    nop
    or a
    ld [hl], h
    and e
    ld h, c
    ld b, c
    add hl, de
    rst $30
    add hl, sp
    rst AddAToHL
    di
    rst JumpTable
    ld a, [hl-]
    rst JumpTable
    dec hl

jr_02e_5d99:
    sbc $01
    ld b, b
    db $10
    xor [hl]
    or c
    dec de
    or b
    sbc a
    jr nc, jr_02e_5ddf

    ccf
    ld d, [hl]
    cp c
    adc a
    ld a, b
    ld e, [hl]
    jr z, jr_02e_5dc0

    nop
    ld b, b
    and $e1
    db $d3
    ei
    ld l, e
    pop bc
    jr jr_02e_5d99

    rra
    ld h, d
    ld b, d
    ld a, [hl]
    rst $20
    ld a, [hl]
    nop
    ld a, [bc]
    ld a, $d0

jr_02e_5dc0:
    jr nc, jr_02e_5e33

    sub b
    db $db
    ld hl, sp+$0f
    adc b
    add d
    dec b
    inc e
    ld b, $02
    ld bc, $000d
    rst $38
    ld a, [c]
    rrca
    and $1f
    rst JumpTable
    dec sp
    rst $30
    call c, $f7e3
    ld hl, sp-$4b
    adc $40
    ld b, b

jr_02e_5ddf:
    add c
    ld b, b
    rra
    add b
    ld l, a
    db $10
    ld l, a
    nop
    ld a, [hl]
    db $db
    rst $20
    ccf
    rst $38
    di
    rrca
    and b
    nop
    ld_long a, $ffff
    cp e
    ld a, [hl]
    ld e, e
    ld a, $35
    ld e, $77
    db $fc
    call $f73e
    rrca
    db $10
    ld b, b
    ldh [$03], a
    ld sp, hl
    sub a
    ld [hl], l
    jp nz, $c0ad

    rst $08
    adc [hl]
    ld [hl], b
    db $fc
    db $10
    pop bc
    ld a, $d8
    nop
    db $fd
    adc b
    adc b
    jp z, $ed8d

    jp z, Jump_02e_7829

    pop de
    jr c, @-$05

    db $10
    dec b
    ld d, b
    rst $38
    cp $21
    call $c173
    db $e3
    cp $7e
    db $ed
    ld [hl], e
    ld hl, sp+$67
    inc d
    ld b, b
    pop hl
    jp hl


    rst $20

jr_02e_5e33:
    ld [c], a
    jp nz, $c162

    ld b, [hl]
    ld l, [hl]
    pop de
    db $d3
    rst $08
    add [hl]
    pop bc
    nop
    nop
    ld l, e
    sbc [hl]
    cp $09
    call c, $a428
    ld [$04ea], sp
    ld a, [c]
    pop bc
    ld a, h
    jr nz, @-$27

    ldh [$0a], a
    nop
    add [hl]
    adc e
    ld a, [hl]
    ld [hl], a
    ld a, [$7b7b]
    add d
    ld a, a
    ld h, l
    cp $1b
    inc a
    rst $00
    nop
    inc h
    nop
    nop
    inc sp
    rst $08
    ld [hl], b
    adc a
    ld a, $c3
    rst $30
    and b
    ld e, l
    ldh [$f7], a
    add hl, bc
    ld e, [hl]
    ld hl, $0044
    ei
    ld [hl], c
    ld a, c
    di
    dec [hl]
    cp e
    ld [hl], a
    and h
    ld [hl], e
    or h
    ld h, e
    ld h, h
    di
    or a
    rst $28
    nop
    jr z, @-$57

    nop
    rst $38
    sbc $21
    ld a, l
    add b
    rst $28
    sub b
    db $d3
    db $ec
    or d
    cp [hl]
    cp [hl]
    ldh [rHDMA4], a
    nop
    xor $1b
    ld e, $3e
    call nc, $8fef
    db $f4
    ld c, $f4
    ld c, $f4
    db $fc
    cp $00  ; and a / or a
    inc d
    ld [hl], h
    ld e, a
    jr z, jr_02e_5f07

    ld a, [hli]
    ld e, e
    inc l
    ld c, a
    inc a
    ld a, [hl]
    push af
    dec c
    rrca
    adc l
    halt
    jp $3ce7


    rst $38
    rst $20
    jr @+$01

    nop
    add h
    ld bc, $0030
    nop
    ld a, [hl]
    add b
    ld bc, $0030
    add b
    ld [bc], a
    nop
    cp $ff
    nop
    jp $183c


    db $10
    jr jr_02e_5ed4

jr_02e_5ed4:
    rst $38
    rst $38
    rst $38
    jp Jump_02e_66ff


    add c
    pop af
    nop
    rrca
    pop bc
    ccf
    inc bc
    rst $38
    ld b, $ff
    rra
    ld bc, $fefe
    db $fc
    db $e4
    ld hl, sp+$19
    ldh [$30], a
    ld [$1811], sp
    nop
    inc h
    ld bc, $7e08
    nop
    ld b, d
    ld bc, $0008
    nop
    jp hl


    ldh a, [rNR32]
    ld hl, sp-$1a
    inc e
    di
    inc b
    ld c, $f2
    rrca

jr_02e_5f07:
    ld sp, hl
    rlca
    ld bc, $ff10
    dec sp
    nop
    push hl
    ld a, $f9
    rra
    ei
    rrca
    ei
    rra
    nop
    rst $38
    rst $38
    ld a, [$fb87]
    xor a
    rst $38
    call c, $a700
    ld a, h
    sbc a
    cp $df
    push af
    rst JumpTable
    push af

jr_02e_5f28:
    inc b
    sbc a
    db $fd
    scf
    db $fd
    rst $08
    ld d, l
    ld [$ffc6], sp
    nop
    cp e
    add $cd
    or d
    ldh a, [$b9]
    cp b
    db $fc
    nop
    call c, $dfe6
    ld [c], a
    sub a
    xor $eb
    rst AddAToHL
    nop
    db $dd
    ld [c], a
    or [hl]
    ld a, [$dfaf]

jr_02e_5f4b:
    db $fd
    jp nc, $f610

    ld a, [$79ff]
    ld [$f707], sp
    rrca
    ld hl, sp+$00
    rra
    ld sp, hl
    rra
    sra a
    ld sp, hl
    ld l, a
    ld hl, sp+$00
    ld l, a
    ld a, a
    nop
    rst $38
    ldh [$ef], a
    ldh a, [$1f]
    nop

jr_02e_5f6a:
    ld hl, sp-$61
    ld hl, sp-$2d
    db $f4
    sbc a
    or $1f
    jr nc, jr_02e_5f6a

    cp $7f
    ld [hl], b
    rrca
    nop
    jr nc, @+$01

    nop
    rst JumpTable
    jr nz, jr_02e_5f7f

jr_02e_5f7f:
    rst $08
    jr nc, jr_02e_5f4b

    ld [hl], $33
    call z, Call_02e_6c93
    jr c, jr_02e_5f28

    ld h, b
    rst $38
    db $10
    rra
    ld [hl], b
    ld bc, $7f20
    add b
    ld a, a
    nop
    add b
    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ldh [$1f], a
    jr @-$1e

    rst $08
    jr nc, jr_02e_5fd0

    ld d, c
    cpl
    ld h, b
    ld sp, hl
    rlca
    ei

jr_02e_5fa7:
    nop

jr_02e_5fa8:
    rlca
    rst $20
    rra
    or $0f
    rst $38
    ld b, $fa

jr_02e_5fb0:
    ldh [rIE], a
    jr jr_02e_5fa7

    ld [$08f5], sp
    ei
    add a
    ld a, d
    ld b, $80
    add b
    cpl
    jr jr_02e_5fef

    reti


    adc e
    db $fd
    rst $38
    ld sp, hl
    ei
    ld [$0efd], sp
    ld c, $e1
    rrca
    jr jr_02e_5fa8

    rst $38
    and e

jr_02e_5fd0:
    nop
    pop af
    cp d
    rst $20
    sbc a
    rst $20
    cp h
    rst $08
    rst JumpTable
    nop
    rst $38
    rst $30
    rst $38
    jp z, $bbfe

    rst $00
    ld h, l
    nop
    ei
    ei
    db $fd
    call $b5ff
    rst $08
    sub a
    nop
    adc a
    db $ec
    sbc a

jr_02e_5fef:
    db $fc
    ld hl, sp-$20
    ldh a, [$d0]
    nop
    rst $08
    rst $28
    rst $08
    cp a
    sbc a
    rst AddAToHL
    sub b
    ld [hl], a
    nop
    jr c, jr_02e_5fb0

    scf
    rst $38
    ld a, a
    rlca
    rrca
    dec bc
    nop
    di
    rst $30
    di
    db $fd
    ld sp, hl
    db $eb
    add hl, bc
    xor $0c
    inc e
    dec c
    db $ec
    rst $38
    rst $38
    nop
    ld b, c
    nop
    ld a, a
    ccf
    ldh [rLCDC], a
    rst $08
    sbc a
    sub b
    cp a
    nop
    and a
    cp b
    adc a
    or b
    add b
    rst JumpTable
    ld b, b
    ldh [rP1], a
    pop de
    adc [hl]
    and d
    jp Jump_02e_4bf9


    ld l, [hl]
    ld e, c
    nop
    ld e, a
    ld a, l
    cpl
    ld a, a
    ld h, d
    scf
    dec hl
    ld h, a
    inc bc
    nop
    nop
    nop
    inc a
    nop
    ld [hli], a
    inc bc
    jr jr_02e_604a

    db $10
    ret nz

    nop
    db $10
    rrca

jr_02e_604a:
    ld e, b
    ccf
    add c
    sbc a
    ld b, d
    rst $08
    inc h
    nop
    ld l, a
    sbc b
    or e
    sbc b
    db $ed
    ld h, h
    or $52
    nop
    rst $30
    sub e
    inc sp
    adc c
    add a
    ld e, d
    db $d3

jr_02e_6062:
    inc [hl]
    nop
    rst $30
    db $10
    di
    jr jr_02e_6062

    inc l
    db $fc
    ld b, [hl]
    inc h
    xor $fd
    cpl
    and b
    rst $28
    jr jr_02e_6093

    ld [$fc24], sp
    nop
    ld b, d
    cp $81
    rst $38
    rst $38
    add $ff
    cp e
    nop
    add $cd
    or d
    ldh a, [$b9]
    cp b
    db $fc
    call c, $e600
    rst JumpTable
    ld [c], a
    sub a
    xor $eb
    rst AddAToHL
    db $dd
    nop

jr_02e_6093:
    ld [c], a
    or [hl]
    ld a, [$dfaf]
    db $fd
    jp nc, $18f6

    ld_long a, $ffff
    ld a, a
    ldh a, [$9f]
    nop
    inc hl
    ld b, [hl]
    rst $30
    inc a
    nop
    xor l
    ld e, d
    ldh a, [$9b]
    cp b
    sub h
    pop af
    ld h, d
    nop
    nop
    nop
    rst $28
    ld [hl], c
    rra
    ld b, d
    ld c, a
    inc h
    nop
    dec a
    inc e
    dec d
    inc c
    add hl, sp
    inc [hl]
    inc a
    ld d, d
    nop
    ld d, [hl]
    ld c, c
    ldh [$7f], a
    ld a, a
    ld a, a
    ld b, c
    ld a, [hl]
    nop
    ld d, d
    ld h, c
    cp l
    ld hl, sp-$4a
    db $ec
    db $eb
    and [hl]
    nop
    sbc b
    cp [hl]
    ld h, l
    xor $ae
    rst $38
    di
    cp h
    ld [bc], a
    call c, $afbf
    rst JumpTable
    ret nc

    ldh [rNR31], a
    ld [$a03f], sp
    ld e, a
    ld hl, sp-$73
    rst $08
    jr z, @+$1d

    rst $38
    inc h
    db $fc
    ld c, d
    nop
    or $89
    db $db
    ld c, c
    cp a
    ld a, [hl]
    rst $38
    dec h
    nop
    rst $28
    ld hl, sp+$7d
    sbc b
    cp $27
    db $fc
    ld b, [hl]
    jr nz, @-$20

    cp c
    ccf
    ldh a, [$da]
    rst $38
    and e
    pop af
    cp d
    nop
    rst $20
    sbc a
    rst $20
    cp h
    rst $08
    rst JumpTable
    rst $38
    rst $30
    nop
    rst $38
    jp z, $bbfe

    rst $00
    ld h, l
    ei
    ei
    nop
    db $fd
    call $b5ff
    rst $08
    sub a
    adc a
    db $ec
    db $10
    sbc a
    db $fc
    ld hl, sp-$01
    nop
    ld b, b
    nop
    nop
    add c
    inc bc
    nop
    add e
    add h
    adc e
    add sp, $79
    sbc b
    rst $30
    cpl
    nop
    db $fc
    ld c, d
    ld a, [c]
    adc c
    ld [hl-], a
    adc d

jr_02e_6144:
    jp c, $0046

    sbc [hl]
    ld a, l
    ld e, d
    and e
    pop hl
    ld [hl-], a
    ldh a, [$2c]
    ld [$52ec], sp
    db $f4
    adc d
    nop
    ld a, a
    ccf
    ldh [rLCDC], a
    rst $08
    sbc a
    sub b
    cp a
    nop
    and a
    cp b
    adc a
    or b
    add b
    rst JumpTable
    ld b, b
    ldh [rP1], a
    pop de
    adc [hl]
    and d
    jp Jump_02e_4bf9


    ld l, [hl]
    ld e, c
    nop
    ld e, a
    ld a, l
    cpl
    ld a, a
    ld h, d
    scf
    dec hl
    ld h, a
    nop
    rst $38
    rst $38
    add $ff
    cp e
    add $cd
    or d
    nop
    ldh a, [$b9]
    cp b
    db $fc
    call c, $dfe6
    ld [c], a
    nop
    sub a
    xor $eb
    rst AddAToHL
    db $dd
    ld [c], a
    or [hl]
    ld a, [$af02]
    rst JumpTable
    db $fd
    jp nc, $faf6

    dec a
    ccf
    nop
    add c
    sbc a
    ld b, d
    rst $08
    inc h
    ld l, a
    sbc b
    or e
    nop
    sbc b
    db $ed
    ld h, h
    or $52
    rst $30
    sub e
    inc sp
    nop
    adc c
    add a
    ld e, d
    db $d3

jr_02e_61b3:
    inc [hl]
    rst $30
    db $10
    di
    nop
    jr jr_02e_61b3

    inc l
    db $fc
    ld b, [hl]
    xor $fd
    rst $38
    sbc h
    jr nz, jr_02e_6144

    cp l
    ld [hli], a
    ld b, [hl]
    and a
    ccf
    add c
    ld [bc], a
    sbc a
    ld b, d
    rst $08
    inc h
    rst $28
    jr jr_02e_6230

    inc h
    nop
    db $fc
    ld b, d
    cp $81
    ld a, a
    rst $38
    ldh [rIE], a
    nop
    rst $08
    ldh a, [$90]
    ldh [$a0], a
    ret nz

    and e
    ret nz

    ld bc, $c1a6
    and l
    jp $ffff


    nop
    ld b, d
    inc d
    inc b
    nop
    ld b, b
    ld h, $00
    ld c, c
    rst $38
    jp hl


    nop
    ldh a, [rNR30]
    db $fc
    db $e4
    ld e, $1b
    ld b, $0a
    inc b
    rlca
    adc l
    inc bc
    ld b, l
    add e
    ccf
    cp l
    ld a, [hl]
    inc [hl]
    ld e, d
    rst $20
    dec h
    and c
    xor l
    ld b, e
    ld c, $05
    db $10
    or $05
    cp $c1
    db $f4
    rrca
    rst $38
    rst $38
    inc h
    add hl, de
    rst $30
    ld h, c
    sbc c
    ld [hl], a
    inc hl
    inc de
    rst $38
    nop
    ld a, l
    rst $38
    push de
    rst $28
    ccf
    add c
    sbc a
    ld b, [hl]
    nop
    rst $30
    inc a
    xor l

jr_02e_6230:
    ld e, d
    ldh a, [$9b]
    cp b
    sub h
    nop
    pop af
    ld h, d
    nop

jr_02e_6239:
    nop
    rst $28
    ld [hl], c
    rra
    ld b, d
    nop
    ld c, a
    inc h
    dec a
    inc e
    dec d
    inc c
    add hl, sp
    inc [hl]
    ld [bc], a
    inc a
    ld d, d
    ld d, [hl]
    ld c, c
    ldh [$7f], a
    jr nz, @+$43

    nop
    ld a, [hl]
    ld d, d
    ld h, c
    cp l
    ld hl, sp-$4a
    db $ec
    db $eb
    nop
    and [hl]
    sbc b
    cp [hl]
    ld h, l
    xor $ae
    rst $38
    di
    ld bc, $dcbc
    cp a
    xor a
    rst JumpTable
    ret nc

    ldh [$5b], a
    nop
    ccf
    jp c, $a3ff

    pop af
    cp d
    rst $20
    sbc a
    nop
    rst $20
    cp h
    rst $08
    rst JumpTable
    rst $38
    rst $30
    rst $38
    jp z, $fe00

    cp e
    rst $00
    ld h, l
    ei
    ei
    db $fd
    call $ff00
    or l
    rst $08
    sub a
    adc a
    db $ec
    sbc a

jr_02e_628e:
    db $fc
    nop
    ld hl, sp+$3f
    adc l
    sbc a
    ld b, d

Call_02e_6295:
    rst $08
    inc h
    rst $28
    nop
    jr jr_02e_628e

    dec de
    rst $38
    inc h

jr_02e_629e:
    db $fc
    ld c, d
    or $00
    adc c
    db $db
    ld c, c
    cp a
    ld a, [hl]
    rst $38
    dec h
    rst $28
    nop
    ld hl, sp+$7d
    sbc b
    cp $27
    db $fc
    ld b, [hl]
    sbc $2c
    cp c
    rst $38
    jr nz, jr_02e_6239

    ld hl, $ff80
    sbc c
    pop bc
    ld c, h
    ldh [$bf], a
    rst $38
    ld h, e
    rst $38
    pop bc
    dec h

jr_02e_62c5:
    nop
    ret nz

    and e
    ret nz

    call c, $9f80
    add b
    cp a
    ld a, [bc]
    add b
    cp l
    add d
    rst $38
    dec h
    ret nz

    scf
    add d
    ld [bc], a
    ld bc, $007d
    rst $38
    nop
    rst JumpTable
    ld b, e
    ei
    db $10
    inc b
    cp $01
    cpl
    and l
    jp $c1a2


    nop
    or c
    ret nz

    sbc b
    ldh [$ce], a
    ldh a, [$63]
    db $fc
    dec c
    or b
    ld a, a
    ld l, a
    rra
    cpl
    ld hl, $43b5
    and b
    ld h, c
    xor l
    ld b, e
    cp a
    ret nz

    ldh [$9f], a
    ret nz

    jr jr_02e_62c5

    jp nz, $23bd

    ld hl, $ff87
    db $fc
    db $10
    rst $38
    ld h, l
    rst JumpTable
    and c
    ld h, [hl]
    rst JumpTable
    ld e, e
    cp $08
    rst $28
    pop af
    rst $38
    nop
    jr nz, jr_02e_629e

    inc bc

Call_02e_631e:
    add e
    nop
    add h
    adc e
    add sp, $79
    sbc b
    rst $30
    cpl
    db $fc
    db $10
    ld c, d
    ld a, [c]

jr_02e_632b:
    adc c
    rst $38
    ld h, a
    rst JumpTable
    ld a, c
    rst $38
    ld [$fbd5], sp
    reti


    scf
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
    and b
    nop
    ret nz

    jr jr_02e_632b

    rlca
    ld hl, sp-$01
    rst $38
    rst $38
    db $10
    rrca
    ld b, h
    inc bc
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
    ld bc, $a004
    sbc c
    adc a
    call $ffc7
    and d
    rst $28
    or a
    ldh [$cb], a
    ldh [$e5], a
    or e
    db $10
    ret nz

    nop
    rlca
    rra
    jr jr_02e_63b0

    jr nc, @+$52

    ld l, a
    add c
    rst $38
    sbc h
    rst $38
    ei
    db $fc
    rst AddAToHL
    ret c

    ret nz

    nop
    add a
    ld c, l
    adc $39
    cp $99
    ld a, [hl]
    ld d, l
    cp a
    adc e
    cp $57
    ld a, [$7b96]
    ld bc, $0504
    sub c
    pop af
    and e
    db $e3
    rst $00
    ld b, l
    rst $20
    push hl
    rlca
    di
    rlca
    rst $30
    ld a, c
    ld [$0050], sp

jr_02e_63b0:
    rst $38
    ld bc, $0402
    cp $0e
    cp $19
    ld sp, hl
    jr c, @-$06

    jp hl


    jp hl


    ld b, [hl]
    ld b, [hl]
    ld [$be20], sp
    ld [hl], e
    ld a, [c]
    adc e
    reti


    xor e
    xor l
    sbc a
    ld a, [$d88d]
    ld c, a
    ld a, [$7cbb]
    nop
    inc d
    ld l, $39
    daa
    or $f3
    db $ec
    ld e, a
    inc e
    ld c, a
    dec de
    ld c, $33
    rst $38
    jp hl


    sbc a
    ld d, b

Call_02e_63e2:
    nop
    nop
    db $fc
    ld a, h
    cp a
    ld a, a
    ld c, a
    ldh a, [$bb]
    call nz, $c09c
    and a
    jp $ffbc


    ld d, l
    ld b, b
    rst $38
    rlca
    di
    ld sp, hl
    dec e

jr_02e_63f9:
    dec c
    push af
    ld a, a
    db $fd
    ld [hl], a
    db $ed
    ld [hl], a
    ld d, b
    ld b, b
    rst $38
    rlca
    di
    jp hl


    rra
    dec d
    rrca
    push af
    db $ed
    rra

jr_02e_640c:
    sub l
    ld l, a
    db $fd
    ld [hl], a
    ld d, l
    ld d, l
    nop
    adc d
    pop bc
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp+$78
    ld d, l
    ld d, l
    nop
    cp a
    ld d, a
    dec hl
    dec d
    inc bc
    dec b
    ld [bc], a
    ld bc, $0050
    nop
    xor d
    push af
    rst $30
    rrca
    add sp, $1f
    db $d3
    inc a
    jp hl


    ld [hl], $a9
    db $76
    call nz, Call_02e_507b
    nop
    nop
    rrca
    rlca
    di
    ldh [$dd], a
    jr c, jr_02e_6476

    call z, $34cf
    rst $20
    ld a, [de]
    rst $30
    ld a, [bc]
    db $10
    jr nz, jr_02e_64c7

    sub $79
    db $d3
    jp hl


jr_02e_644f:
    ld a, [hl]
    inc h
    ld a, a
    di
    ccf
    rra
    scf
    rrca
    ld d, a
    nop
    nop
    ld b, d
    rst $38
    ld [hl], e
    adc l
    inc sp
    call Call_02e_7789
    jp $063f


    dec e
    cp $f6
    ld hl, sp+$00
    inc b
    jr nz, jr_02e_63f9

    sbc [hl]
    ld [$0cfb], sp
    ld a, d
    ld a, [c]
    db $fc
    and $f8

jr_02e_6476:
    ldh a, [$3a]
    ret nz

    rst $38
    nop
    ld bc, $ff54
    inc l
    inc sp

jr_02e_6480:
    ld e, b
    ld h, a
    ld d, c
    ld l, a
    add c
    add c
    add e
    add a
    adc l
    db $fd
    jr nz, jr_02e_640c

    ld c, l
    dec de
    pop af
    db $fc
    add [hl]
    db $fc
    dec sp
    rst $00
    add e
    add hl, de
    add a
    ld hl, $419f
    cp a
    add b
    jr nz, jr_02e_644f

    db $10
    ld d, a
    jr nc, jr_02e_6480

    ld sp, $3f4f
    ld h, a
    rra
    rrca
    inc e
    inc bc
    add a
    nop
    jr nz, @-$7e

    xor $fe
    ld [hl], b
    jr jr_02e_6532

    adc c
    rst JumpTable
    and $f0
    or $f8
    dec sp
    db $fc
    add a
    ld a, a
    ld [bc], a
    ld d, h
    inc bc
    rrca
    inc c
    rrca
    dec b
    dec b
    ld b, $06

jr_02e_64c7:
    ld [bc], a
    dec a
    dec c
    ld bc, $5000
    nop
    rra
    pop af
    push af
    di
    ld e, a
    rst $28
    ld e, $c8
    jr c, jr_02e_64f0

    ld hl, sp-$10
    rst $38
    ld bc, $50fe
    nop
    nop
    ld [bc], a
    ld bc, $fefd
    jp z, $fd37

    inc bc
    add hl, sp
    inc bc
    push hl
    jp $ff3d


    dec b
    ld b, b

jr_02e_64f0:
    ld e, a
    db $fd
    rlca
    push af
    rrca
    xor c
    pop af
    pop af
    db $e3
    rst $38
    ld a, $ff
    ldh [$1f], a
    nop
    ld d, h
    ld e, a
    db $fd
    ld [hl], a
    db $ed
    ld [hl], a
    db $fd
    rlca
    push af
    rrca
    xor c
    di
    cp $e1
    cp $55
    ld d, l
    nop
    db $fc
    ld a, h
    cp [hl]
    ld a, a
    cp a
    ld e, a
    cpl

jr_02e_6518:
    ld d, l
    ld e, l
    ld d, l
    nop
    ld [bc], a
    ld bc, $8001
    ldh a, [$fc]
    rst $38
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

jr_02e_6532:
    ld b, d
    and b
    nop
    ret nz

    jr jr_02e_6518

    rlca
    ld hl, sp-$01
    rst $38
    rst $38
    db $10
    rrca
    ld b, h
    inc bc
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
    ld d, l
    ld d, l
    rst $38
    add $82

jr_02e_655c:
    inc bc
    inc bc
    ld bc, $0703
    ld [$5400], sp
    rst $38
    sbc e
    ld h, a
    db $fc
    rrca
    ret nc

    ccf
    pop hl
    ld a, a
    add a
    rra
    ccf
    call c, $00df
    ld d, l
    add a
    cp b
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $00
    rst $20
    add [hl]
    add h
    add h
    add h
    ld a, [bc]
    ld a, [bc]
    xor [hl]
    sub b
    rst $38
    sub [hl]
    ld sp, hl
    pop af
    pop af
    adc $f1
    xor $d1
    pop de
    pop de
    ld d, l
    ld d, l
    nop
    rst $38
    rst $38
    ei
    rst $28
    ld d, l
    adc d
    ld e, l
    ld h, $08
    jr nz, jr_02e_655c

    ld [hl], e
    ld a, [c]
    adc e
    reti


    xor e
    xor l
    sbc a
    ld a, [$d88d]
    ld c, a
    ld a, [$7cbb]
    nop
    inc d
    ld l, $39
    daa
    or $f3
    db $ec
    ld e, a
    inc e
    ld c, a
    dec de
    ld c, $33
    rst $38
    jp hl


    sbc a
    nop
    xor d
    ld a, a
    ccf
    jr nz, @+$40

    ld hl, $213f
    ld e, a
    ld h, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld bc, $be54
    ld a, a
    ret nz

    cp a
    ret nz

    rst $28
    sbc h
    rst JumpTable
    rst $38
    rst $38
    rst $38
    rst JumpTable
    cp h
    ld a, [hli]
    xor d
    ld [hl], a
    ld [hl], b
    adc a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld d, l
    ld d, l
    nop
    adc d
    pop bc
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp+$78
    ld d, l
    ld d, l
    nop
    cp a
    ld d, a
    dec hl
    dec d
    inc bc
    dec b
    ld [bc], a
    ld bc, $4005
    ld a, a
    ldh a, [$3f]
    ldh a, [$3f]
    and b
    pop hl
    ld [c], a
    ld b, h
    rst $38
    add $fd
    jp z, $00fd

    xor d
    xor $36
    ld sp, hl
    ld c, [hl]
    pop af
    xor [hl]
    pop de
    ld l, [hl]
    sub c
    ld de, $1111
    ld de, $aa00
    xor $6c
    rst AddAToHL
    ld l, h
    rst AddAToHL
    rst $28
    rst AddAToHL
    ld l, [hl]
    sub c
    ld de, $1111
    ld de, $0050
    rst JumpTable
    sbc h
    db $fc
    ld a, l
    rst $38
    ld e, a
    rst $38
    ld h, d
    db $fd
    xor [hl]
    pop af
    adc $f1
    ld l, [hl]
    sub c
    nop
    ld d, l
    rst $38
    ld sp, hl
    rrca
    di
    rra
    and $3f
    rst $08
    ld a, a
    ld e, a
    cp l
    ld a, h
    and $15
    nop
    rra
    jr @-$5f

    jr jr_02e_666b

    rrca
    adc l
    rrca
    dec c
    adc a
    sbc a
    adc [hl]
    sub $9d
    inc [hl]
    nop
    add e
    add a
    add a
    add d
    add d
    inc bc
    ld b, $07
    rst $00
    rst $00
    rst $38
    ld e, h
    ld h, h
    rst $38

jr_02e_666b:
    inc d
    nop
    rlca
    ld a, a
    add e
    ei
    rst $38
    or $0f
    db $fc
    rrca
    db $ec
    rra
    ld hl, sp+$1f
    ret nc

    ccf
    ld d, l
    nop
    ld b, c
    rst $38
    rst $38
    rst $38
    sub $8d
    ld b, b
    ld l, d
    ld bc, $0043
    add l
    nop
    ld [bc], a
    ld d, h
    inc bc
    rrca
    inc c
    rrca
    dec b
    dec b
    ld b, $06
    ld [bc], a
    dec a
    dec c
    ld bc, $5000
    nop
    rra
    pop af
    push af
    di
    ld e, a
    rst $28
    ld e, $c8
    jr c, jr_02e_66be

    ld hl, sp-$10
    rst $38
    ld bc, $aafe
    xor d
    ld a, a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld [hli], a
    ld [$feff], sp
    add c
    add c
    cp a
    ret nc

jr_02e_66be:
    ld a, [c]
    rst $08
    ld a, [hl]
    rst $30
    cpl
    ld [hli], a
    rst $28
    ldh a, [$2a]

jr_02e_66c7:
    xor d
    ld [hl], a
    rlca
    ld hl, sp-$78
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld d, l
    ld d, l
    nop
    db $fc
    ld a, h
    cp [hl]
    ld a, a
    cp a
    ld e, a
    cpl
    ld d, l
    ld e, l
    ld d, l
    nop
    ld [bc], a
    ld bc, $8001
    ldh a, [$fc]
    rst $38
    dec b
    ld d, l
    rst $38
    ccf
    cp a
    ld b, b
    ld a, a
    sbc a
    cp a
    cp a
    cp a
    cp a
    sbc a
    nop
    xor d
    set 7, a
    rst $38
    ld [$fdf4], a
    ret nz

    db $db
    and b

Jump_02e_66ff:
    or b
    or b
    or b
    or b
    jp z, $ffaa

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_02e_66c7

    ccf
    cp a
    ld b, d
    ld a, a
    sbc h
    rst $20
    cp d
    call $dcb3
    ret c

    ret c

    sbc e
    db $ed
    ld [$b902], sp
    db $fc
    db $fd
    jp nz, $e7fe

    sbc l
    di
    ld e, l
    or e
    db $dd
    inc sp
    ld e, l
    inc sp
    rst $20
    ld [$00ab], a
    inc e
    ld [hli], a
    jr nz, jr_02e_6757

    ld [hli], a
    inc e
    ld d, b
    nop
    nop
    xor d
    push af
    rst $30
    rrca
    add sp, $1f
    db $d3
    inc a
    jp hl


    ld [hl], $a9
    db $76
    call nz, Call_02e_507b
    nop
    nop
    rrca
    rlca
    di
    ldh [$dd], a
    jr c, jr_02e_6789

    call z, $34cf

jr_02e_6757:
    rst $20
    ld a, [de]
    rst $30
    ld a, [bc]
    db $10
    inc b
    rst $08
    or $f9
    sbc a
    ld e, l
    db $e4
    inc hl
    db $fc
    dec h
    di
    ld e, a
    db $e3
    jp nz, $87ca

    add c
    ld b, b
    db $fd
    cp $4e
    sub e
    ld l, c
    sub e
    pop af
    sbc e
    xor a
    db $dd
    ld [hl], l
    rst $08
    rst $00
    rst $38
    ret nz

    nop
    nop
    rlca
    rlca
    rra
    jr jr_02e_67b3

    jr nc, jr_02e_67d6

    ld l, a
    add c
    rst $38

jr_02e_6789:
    sbc h
    rst $38
    db $eb
    db $ec
    ret nz

    nop
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
    ld [bc], a
    ld e, b
    rlca
    sub c
    pop af
    and e
    db $e3
    ld b, a
    ld b, l
    dec b
    dec b
    inc bc
    dec b
    add hl, bc
    ld [$0050], sp
    rst $38
    ld bc, $0402

jr_02e_67b3:
    cp $0e
    cp $19
    ld sp, hl
    jr c, @-$06

    jp hl


    jp hl


    ld b, [hl]
    ld b, [hl]
    ld d, l
    ld d, l
    nop
    adc d
    pop bc
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp+$78
    ld d, l
    ld d, l
    nop
    cp a
    ld d, a
    dec hl
    dec d
    inc bc
    dec b
    ld [bc], a
    ld bc, $0018

jr_02e_67d6:
    add b
    ld b, b
    ccf
    cp h
    ei
    ret nz

    or [hl]
    ldh a, [$86]
    call nz, $1fc3
    inc [hl]
    ld a, a
    rst $38
    ld d, b
    nop
    or b
    call $dfce
    and b
    sbc $a1
    cp $81
    cp h
    jp $e7d8


    rst $28
    ldh a, [rPCM12]
    xor c
    nop

jr_02e_67f9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    xor d
    res 6, b
    or b
    or b
    or b
    or b
    or b
    or b
    or b
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
    inc bc
    adc c
    rst $38
    cp $03
    ld [bc], a
    inc de
    cp $03
    ld bc, $1101
    ld bc, $10fe
    jr nz, jr_02e_68a3

    sub $79
    db $d3
    jp hl


    ld a, [hl]
    inc h
    ld a, a
    di

jr_02e_682f:
    ccf
    rra
    scf
    rrca
    ld d, a
    nop
    nop
    ld b, d
    rst $38
    ld [hl], e
    adc l
    inc sp
    call Call_02e_7789
    jp $063f


    dec e
    cp $f6
    ld hl, sp+$00
    inc h
    nop
    pop hl
    db $d3
    adc a
    sub e
    add d
    call c, Call_02e_63e2
    db $fc
    add hl, sp
    cp $76
    rst $28
    di
    pop bc
    ld bc, $3f50
    or [hl]
    rst $08
    ld h, h
    sbc a
    call z, $78ff
    jr jr_02e_682f

    xor [hl]
    ld b, e
    dec [hl]
    jp Jump_02e_5400


    rst $38
    rla
    jr @+$2e

    inc sp
    ld e, b
    ld h, a
    ld d, c
    ld l, a
    add c
    add c
    add a
    adc c
    ld sp, hl
    jr nz, jr_02e_67f9

    ld c, l
    dec de
    pop af
    db $fc
    add [hl]
    db $fc
    dec sp
    rst $00
    add e
    add hl, de
    add a

jr_02e_6884:
    ld hl, $419f
    cp a
    add h
    jr nz, @+$33

    db $10
    ld d, a
    jr nc, jr_02e_68ed

    ld c, a
    ccf
    ld h, a
    rra
    rrca
    inc e
    inc bc
    rlca
    nop
    jr nz, @-$7e

    xor $fe
    ld [hl], b
    jr @+$81

    adc c
    rst JumpTable
    and $f0

jr_02e_68a3:
    or $f8
    dec sp
    db $fc
    add a
    ld a, a
    ld d, l
    ld d, l
    nop
    db $fc
    ld a, h
    cp [hl]
    ld a, a
    cp a
    ld e, a
    cpl
    ld d, l
    ld e, l
    ld d, l
    nop
    ld [bc], a
    ld bc, $8001
    ldh a, [$fc]
    rst $38
    nop
    jr nc, jr_02e_68c1

jr_02e_68c1:
    ld bc, $c380
    rst $00
    db $f4
    ld a, h
    ld h, $41
    ld e, $3e
    inc bc
    inc de
    rlca
    ld c, $c0
    inc b
    rst $38
    add $81
    xor c
    ld [hl], b
    db $f4
    ld hl, sp+$19
    ld c, $ce
    rst $20
    rst JumpTable
    ld e, $1f
    ld b, b
    add b
    ld b, $82
    and d
    bit 0, d
    dec [hl]
    jr nz, jr_02e_6884

    ld h, d
    cp a
    ld e, $3a

jr_02e_68ed:
    adc a
    push de
    adc e
    nop
    add h

jr_02e_68f2:
    ld e, a
    rlca
    inc bc
    ld c, $0c
    ccf
    rra
    ld l, $31
    jr nz, jr_02e_697c

    ld c, [hl]
    ld a, l
    ld a, [hl]
    ld e, c
    ldh a, [rP1]
    nop
    ld a, c

jr_02e_6905:
    ld [hl], c
    or a
    rst $28
    ld l, l
    or d
    ccf
    add hl, de
    inc de
    ld c, $0f
    inc b
    ld [bc], a
    ld [bc], a
    and c
    ld h, $41
    add h
    ld b, e
    ld d, b
    adc a
    ld a, [de]
    or b
    dec b
    sub e
    jr nz, jr_02e_68f2

    jr nz, jr_02e_6983

    jr nc, jr_02e_6923

jr_02e_6923:
    jr nc, jr_02e_6905

    ret nz

    sbc b
    ld [$c4fc], sp
    cp h
    ld h, [hl]
    ld [c], a
    ld a, $d2
    ld a, $f2
    sbc [hl]
    ld b, c
    nop
    rst $38
    dec hl
    rst $08
    ld a, a
    rst JumpTable
    ld a, a
    ld e, [hl]
    sbc a
    cp $8d
    cp $c3
    db $fc
    ld b, e
    db $fc
    nop
    rrca
    nop
    ld a, a
    ld e, b
    ld e, d
    ld a, l
    ld a, l

jr_02e_694b:
    ld e, d
    ld e, b
    ld a, a
    ld a, h
    rst $38
    push bc
    inc bc
    nop
    dec d
    ei
    ldh a, [$e0]
    ld e, b
    jr nc, jr_02e_69a2

    jr c, jr_02e_694b

    rst $38
    dec de
    db $fd
    rst $08
    rst $28
    ld l, l
    ldh a, [$c7]
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    add b
    add b
    ld d, l
    ld d, a
    rst $08
    ret


    ret


    ret


    ret


    ret


    ret


    ret


    ld d, l
    ld d, l
    rst $38
    ld l, a
    ld l, a
    ld l, a

jr_02e_697c:
    ld l, a
    rst $28
    ld l, a
    ld l, a
    ld a, a
    rrca
    ld [hl], c

jr_02e_6983:
    db $fd
    cp $ff
    inc bc
    ld bc, $ed3d
    dec e
    dec c
    add b
    add b
    nop
    rst $38
    di
    inc c
    db $e3
    ld [$0814], sp
    rst $38
    ld a, [hl]
    add c
    ccf
    add b
    ld b, c
    add b
    add b
    inc b
    cp a
    ld a, h
    rst $20

jr_02e_69a2:
    jp nz, $8f9f

    dec d
    ld a, e
    ccf
    ccf
    ld sp, $7f7f
    xor a
    ld [hl], c
    ret nz

    nop
    nop
    add c
    add c
    add b
    jp nz, Jump_02e_6c5c

    ld d, $39
    rrca
    rrca
    inc e
    cp [hl]
    ld h, b
    ld [hl], b
    nop
    nop
    pop hl
    db $e3
    jr jr_02e_69de

    ld a, c
    inc b
    adc $77
    rst $20
    ei
    cp e
    rst $38
    cpl
    scf
    ld d, [hl]
    ld h, e
    ld d, h
    nop
    push bc
    ld d, e
    ld d, e
    sbc d
    ret z

    sub a
    and d
    rra
    jp nc, $5aaf

jr_02e_69de:
    xor a
    dec de
    rst $28
    jr nz, @+$0a

    reti


    add hl, hl
    xor b
    sbc c
    ret


    set 0, [hl]
    jp z, $fee4

    ld hl, sp-$04
    rst $38
    add [hl]
    adc $00
    rlca
    nop
    inc e
    jr jr_02e_6a19

    jr nz, jr_02e_6a46

    ld b, e
    xor a
    sbc a
    or a
    ld hl, sp+$7f
    add b
    add c
    add h
    ld [$62e5], sp
    xor h
    db $e3
    ld h, a
    ld a, [c]
    rst $20
    ld e, a
    db $e3
    bit 6, [hl]
    ld a, $3b
    inc e
    ld d, b
    nop
    sbc [hl]
    ld [hl], d
    ld a, [$bed6]

jr_02e_6a19:
    cp d
    sbc $d6
    cp [hl]
    rra
    cp $78
    ldh a, [rP1]
    nop
    inc b
    add b
    cp a
    and d
    ld a, h
    cp l
    ld a, [hl]
    ld d, e
    db $ed
    db $d3
    ld l, b
    rst AddAToHL
    jr c, @+$01

    nop
    add b
    nop
    ld d, h
    nop
    rst JumpTable
    sub h
    sub h
    sub a
    sbc [hl]
    call c, $c080
    ret nz

    cp a
    add b
    rst $38
    rst $38
    rst $38
    ld d, h
    nop

jr_02e_6a46:
    ei
    cpl
    cpl
    rst $28
    ld a, a
    dec sp
    inc bc
    inc bc
    inc bc
    db $fd
    ld bc, $ffff
    rst $38
    sbc [hl]
    rst JumpTable
    rst $38
    ld [$8008], sp
    ld [$00a0], sp
    ret


    rst $08
    adc a
    add hl, bc
    rrca
    add hl, bc
    rlca
    push bc
    di
    ld a, [$0501]
    ld hl, sp-$02
    db $fc
    nop
    dec b
    rst $38
    cpl
    ld a, a
    adc a
    ccf
    ld c, a
    sbc a
    or a
    rst $08
    db $eb
    rst $30
    dec b
    ei
    db $fd
    cp $cb
    nop
    db $fd
    dec b
    dec c
    dec b
    inc bc
    ld bc, $ffff
    rst $38
    ld bc, $ffff
    db $e3
    db $e3
    rst $38
    ld bc, $0101
    ld bc, $0101
    call nz, $ff00
    or e
    ld a, a
    rst JumpTable
    ld e, c
    ccf
    ei
    db $ed
    cpl
    dec de
    rst JumpTable
    ld a, $fb
    db $fc
    ccf
    cp a
    ld b, b
    ld a, a
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    ld l, [hl]

jr_02e_6ab5:
    add b
    dec sp
    ld b, b
    rst $08
    nop
    ld a, [$af04]
    jr nc, @+$01

    inc bc
    ld e, e
    daa
    ld sp, hl
    ld [$00ef], sp
    dec sp
    ld b, b
    rst $08
    ld bc, $017a
    db $fd
    cp $07
    inc bc
    ld bc, $0200
    pop bc
    ccf
    ccf
    ld b, d
    ld a, a
    sbc h
    rst $20
    cp d
    call $dcb3
    or [hl]
    ret c

    or [hl]
    ret c

    sbc e
    db $ed

jr_02e_6ae4:
    db $fc
    db $fc
    jp nz, $b9fe

    rst $20
    sbc l
    di
    ld e, l
    or e
    db $dd
    inc sp
    ld e, l
    inc sp
    cp c
    rst $20
    rlca
    jr jr_02e_6ab5

    add hl, bc
    rst $28
    jr jr_02e_6ae4

    ld e, $89
    ld a, [hl]
    ld [hl-], a
    db $fc
    rst $08
    ldh a, [rPCM34]
    adc b
    xor d
    nop
    push af
    nop
    rst $30
    rrca
    add sp, $1f
    db $d3
    inc a
    jp hl


    ld [hl], $a9
    db $76
    call nz, $0f7b
    nop
    rlca
    nop
    di
    ldh [$dd], a
    jr c, @+$37

    call z, $34cf
    rst $20
    ld a, [de]
    rst $30
    ld a, [bc]
    ld l, a
    sbc [hl]
    ld sp, hl
    ld sp, $40c3
    and $43
    db $db
    ld h, [hl]
    ld h, [hl]
    rst $38
    cp l
    ld a, a
    jp nz, $fa3d

    nop
    xor l
    ld [bc], a
    rst $38
    add b
    xor $dc
    ld [hl], $73
    xor h
    rra
    ld e, e
    adc h
    add l
    cp $e0
    pop af
    or b
    ret nz

    ld h, l
    jp nz, $e0d7

    adc d
    pop af
    ld l, d
    rst $38
    ld a, [hl]
    cp $bd
    ld a, h
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, [$357f]
    rst $38
    jr z, jr_02e_6be1

    ld [hl], d
    cp l
    dec hl
    dec d
    push bc
    jr nc, @+$22

    ret nz

    adc d
    db $e4
    ld d, c
    ld [$f06b], a
    ld a, [hl-]
    db $fd
    sub l
    ld a, a
    xor $80
    ld [hl], d
    bit 5, a
    jr nc, jr_02e_6bb8

    ld [de], a
    or [hl]
    ld a, c
    xor e
    db $fc
    set 7, a
    ld d, l
    cp $8a
    nop
    pop bc
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, b
    nop
    cp a
    nop
    ld d, a
    nop
    dec hl
    nop
    dec d
    nop
    inc bc
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $4000
    ccf
    cp h
    add b
    add b
    ei
    ret nz

    or [hl]
    ldh a, [$86]
    call nz, $1fc3
    inc [hl]
    ld a, a
    rst $38
    ld h, d
    db $10
    ldh a, [rNR30]

jr_02e_6bb8:
    add sp, $3c
    jp nz, $e060

    ld b, c
    ld [hl], d
    pop bc
    rst JumpTable
    ldh [$fb], a
    db $fc
    ld e, c
    ld a, $04
    ld bc, $2058
    ld a, [hl]
    add b
    jp $bd3c


    ld a, [hl]
    ld a, a
    cp $fe
    rst $38
    scf
    jr @-$60

    ld [$cc2f], sp
    ld h, a
    adc [hl]
    scf
    adc l
    push bc
    rra
    db $eb

jr_02e_6be1:
    rla
    ld e, l
    inc hl
    xor $00
    cp e
    ld b, b
    rst $08
    jr nz, jr_02e_6c65

    nop
    xor $01
    cp a
    ld e, b
    db $ec
    rst $20
    add hl, de
    ld a, $fe
    inc bc
    ld [bc], a
    inc de
    cp $03
    rst $38
    rst $38
    rst $38
    ld bc, $1101
    rst $38
    ld bc, $fffe
    sub $79
    db $d3
    ld a, h
    jp hl


    ld a, [hl]
    inc h
    ld a, a
    di
    ccf
    ld a, h
    rra
    scf
    rrca
    ld d, a
    nop
    ld [hl], e
    adc l
    inc sp

jr_02e_6c17:
    call Call_02e_7789
    jp $063f


    rst $38
    dec e
    cp $f6
    ld hl, sp-$01
    nop
    xor $00

jr_02e_6c26:
    ei
    ret nz

    ld a, l
    ld [hli], a
    add $f8
    sbc [hl]
    ld h, c
    ld [hl], a
    add b
    db $fd
    ret nz

    ld a, e
    inc h
    ld a, [$cf7d]
    jr nc, jr_02e_6c17

    ld h, c
    or a
    sbc b
    ld [hl], c
    db $fc
    adc a
    ld [hl], b
    cp $01
    ld e, e
    inc b
    call nz, Call_02e_763f
    adc a
    ei
    rlca
    rst $30
    jr c, jr_02e_6c26

    ld c, [hl]
    or d
    ld a, l
    rst $38
    nop
    cp d
    inc b
    and l
    ld a, d
    ld b, [hl]
    rst $38
    cp [hl]
    ret


    db $db
    rrca

Jump_02e_6c5c:
    ld [hl], l
    inc c
    rst $28
    inc d
    cp e
    rlca
    ret c

    daa
    ld d, [hl]

jr_02e_6c65:
    xor a
    ei
    rlca
    ld a, l
    db $e3
    or a
    ret c

    db $e3
    ld a, h
    ld e, a
    ldh [$ab], a
    ret nz

    db $76
    adc b
    db $fc
    ld hl, sp-$07
    ld hl, sp-$2a
    ld sp, hl
    ld [de], a
    db $fc
    jp hl


    ld e, $4c
    ccf
    rst $20
    rra
    or b
    rrca
    db $fc
    nop
    ld a, h
    nop
    cp [hl]
    nop
    ld a, a
    nop
    cp a
    nop
    ld e, a
    nop
    cpl
    nop
    ld d, l

Call_02e_6c93:
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    ld bc, $8000
    nop
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    ld d, b
    nop
    nop
    rra
    rst $38
    ld bc, $700f
    adc a
    ld [hl], a
    adc b
    add h
    ld bc, $d70c
    rst $38
    ei
    ccf
    ld hl, $5ff7
    inc b
    di
    sbc a
    db $d3
    ccf

jr_02e_6cbe:
    db $eb
    ld b, c
    rst $38
    ld d, h
    ld [$bbff], sp
    rst $38
    jr c, jr_02e_6d0d

    sub e
    rst $38

jr_02e_6cca:
    stop
    rst AddAToHL
    jr c, jr_02e_6cbe

    jr c, jr_02e_6cca

    ld d, a
    pop af
    or a
    db $10
    pop af
    scf
    pop af
    dec h
    sub a
    pop af
    rla
    reti


    inc b
    scf
    jp hl


    ccf
    ld a, a
    ld b, c
    ld bc, $bf0a
    rst $38
    ld a, [bc]
    rst $38
    jp $b7da


    ld bc, $be0a
    ld c, a
    sub b
    inc b
    rst $38
    sub [hl]
    ld sp, hl
    xor [hl]
    pop af
    ld hl, $f1ce
    jr @-$10

    pop de
    xor [hl]
    ld b, c
    ld [hl-], a
    rst $28
    ldh a, [$d7]
    nop
    rst $28
    cp b
    rst JumpTable
    rst $20
    cp a
    rst $08
    ld hl, sp-$68
    nop

jr_02e_6d0d:
    ldh a, [$98]
    ld hl, sp-$01
    cp $ef
    ld e, $d7
    nop
    xor $3b
    or $cf
    ld a, [$3ee7]
    inc sp
    ld [bc], a
    ld e, $33
    ld a, $ee
    ld de, $40ff
    add b
    adc l
    ld b, c
    add [hl]
    db $fc
    add a
    ld b, l
    xor a
    ld bc, $1041
    ld h, c
    ccf
    pop hl
    ld b, l
    ld a, a
    ret nz

    cp a
    ret nz

    inc b
    rst $28
    sbc h
    rst JumpTable
    cp [hl]
    rst $38
    add c
    rst JumpTable
    cp h
    nop
    cp $81
    rst $38
    add c
    cp a
    ret nc

    rst $38
    ld a, [c]
    nop
    rst $08
    ld a, [hl]
    rst $30
    cpl
    rst $38
    ld [hli], a
    rst $28
    ldh a, [rDIV]
    rst $38
    rst $38
    add b
    add b
    cp a
    nop
    dec bc
    xor h
    cp a
    ld bc, $a387
    cp b
    and b
    and a
    cp b
    xor b
    ld c, e
    ret nz

    add hl, sp
    dec a
    dec [hl]
    db $dd
    sbc l
    db $ed
    push af
    ld a, l
    nop
    dec c
    dec e
    ld sp, hl
    dec b
    db $fd
    db $fd
    ld bc, $8401
    cpl
    rlca
    ld hl, sp+$77
    adc b
    ld bc, $ab0c
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
    inc h
    db $e3
    sbc a
    ld h, c
    rst $38
    jr z, jr_02e_6df4

    rst AddAToHL
    ld l, h
    jr nz, @+$01

    ld b, h
    ld hl, $c6bb
    rst $38
    add d
    ld sp, hl
    ld b, d
    cpl
    ld h, c
    db $dd
    ld h, a
    push af
    ld b, a
    ld hl, $04b3
    rst $00
    di
    add a
    rst $20
    add c
    ld hl, $c3bd
    nop
    ld b, d
    rst $38
    cp l
    rst $38
    add e
    db $fd
    sbc $e3
    ld hl, $ffbc
    rrca
    ld a, [bc]
    pop bc
    cp a
    ei
    rst $00
    dec h
    ld [$f18e], sp
    xor $91
    ld bc, $df0c
    rst $30
    rst $08
    dec b
    ld hl, sp-$19
    rst $38
    ldh a, [rIE]
    ld h, b
    nop
    ld b, e
    nop
    or $df

jr_02e_6dd9:
    rst $20
    ld a, $cf
    cp $1f
    cp $4b
    rst $38
    ld hl, $01ff
    ld c, a
    add b
    ld bc, $200b
    jr c, jr_02e_6dd9

    ld de, $0133
    ld a, [bc]
    ld l, a
    sbc e
    ld h, a
    db $fc
    nop

jr_02e_6df4:
    rrca
    ret nc

    ccf
    pop hl
    ld a, a
    add a
    rst $38
    rra
    nop
    rst $38
    ccf
    rst $38
    call c, $b8df
    rst $38
    rrca
    add e
    ld b, a
    rst $00
    rst $20
    add [hl]
    add a
    add h
    add c
    rra
    add c
    add c
    rst $38
    jr nz, @+$25

    ld b, l
    add h
    ld h, b
    ld a, b
    nop
    jr nz, jr_02e_6e3d

    ld b, l
    ld c, d
    ld [hl], a

jr_02e_6e1d:
    adc b
    db $fc
    add b
    inc h
    rlca
    dec b
    dec b
    rst $38
    dec b
    db $fd
    rlca
    ld e, b
    rlca
    add hl, hl
    db $fc
    cpl
    ld hl, $f8ff
    rrca
    inc c
    ld [$08ff], sp
    ld hl, sp+$5b
    ld h, c
    ld [hl], b
    adc a
    jp z, $e1a7

jr_02e_6e3d:
    db $e3
    rra
    and c
    push hl
    ld b, c

jr_02e_6e42:
    ld [$1f04], a
    db $d3
    ld a, $f1
    rlca
    ld bc, $e90c
    rlca
    dec b
    cp [hl]
    pop bc
    rst $38
    rst $38
    add b
    ld [hli], a
    rst $38
    ld h, $c4
    and c
    jr nz, jr_02e_6e1d

    add c
    cp l
    pop bc
    and l
    sbc c
    add h
    ld hl, $9fe0
    xor $91
    and c
    xor [hl]
    pop de
    nop
    ld l, [hl]
    pop de
    xor $51
    rst $38
    rlca
    rst $38
    ld [$fb00], sp
    rla
    di
    scf
    xor b
    ld a, b
    rst $30
    ld a, a
    nop
    jp c, $df7d

    ld a, a
    nop
    rst $38
    nop
    jp $000f


    and l
    nop
    sbc c
    ld b, c
    dec h
    add hl, hl
    dec l
    add b
    rrca
    rrca
    ld sp, hl
    rrca
    di
    rra
    and $3f
    rst $08
    nop
    ld a, a
    ld e, a
    rst $38
    cp l
    rst $38
    ld a, h
    rst $38
    and $00
    rst $38
    jr jr_02e_6e42

    jr jr_02e_6ec4

    add hl, de
    rra
    rrca
    nop
    rra
    adc l
    rrca
    dec c
    adc a
    sbc a
    adc [hl]
    sub $02
    sbc l
    add a
    add a
    add e
    add e
    add d
    ld hl, $0003

jr_02e_6ebb:
    ld b, $07
    rst $00
    rst $00
    rst $38
    ld e, h
    ld h, h
    rst $38
    nop

jr_02e_6ec4:
    cp l
    cp [hl]
    or l
    cp [hl]
    and l
    cp [hl]
    and e
    cp a
    nop
    ret c

    sbc a
    rst $00
    rst $08
    or b
    ldh [$9f], a
    rst $38
    nop
    ld a, l
    db $fd
    ld l, l
    db $fd
    ld h, l
    db $fd
    push bc
    db $fd
    nop
    dec de
    ld sp, hl
    db $e3
    di
    dec c
    rlca
    ld sp, hl
    rst $38
    sbc b
    jr nz, jr_02e_6eea

jr_02e_6eea:
    nop
    ld [hli], a
    ld bc, $f70a
    ld hl, sp+$2f
    nop
    jr jr_02e_6ebb

    inc e
    db $d3
    ld c, $d1
    rrca
    pop hl
    db $10
    rrca
    jp hl


    rlca
    ld hl, $f807
    ld [hl], a
    adc b
    add b
    ld bc, $e50c
    cp $1b
    db $fc
    rst $28
    ldh a, [rIE]
    ld b, d
    nop
    pop hl
    jp hl


    rlca
    pop hl
    rrca
    and c
    pop de
    sub b
    add c
    pop bc
    rst $38
    ld h, c
    ld a, a
    rst $38
    rst $38
    add b
    adc c
    add d
    rst $38
    cp l
    add c
    ld hl, $99a5
    ld hl, $e784
    adc $71
    xor $51
    pop bc
    pop de
    ld l, [hl]
    nop
    pop de
    xor [hl]
    pop de
    ld b, a
    rst $38
    add sp, $77
    ld a, [$7500]
    cp d
    ld a, l
    rst $28
    ccf
    rst AddAToHL
    ccf
    db $ec
    nop
    rra
    di
    rrca
    ccf
    jr nz, jr_02e_6f88

    ld hl, $043f
    ld hl, $615f
    ld a, a
    ld b, c
    pop bc
    add e
    ei
    ld bc, $ff07
    rlca
    or $0f
    db $fc
    rrca
    dec a
    nop
    ld hl, sp+$1f
    ret nc

    ccf
    add $ff
    add d
    rst $38
    ld e, b
    inc bc
    ld b, c
    ld bc, $3843
    ld [$9cff], sp
    nop
    rst JumpTable
    db $fc
    rst JumpTable
    ld a, l
    rst $38
    ld e, a
    rst $38
    ld h, d
    nop
    db $fd
    xor [hl]
    pop af
    adc $f1
    ld l, [hl]
    sub c
    ld l, h
    ld c, c
    rst AddAToHL
    ld hl, $d7ef
    daa

jr_02e_6f88:
    xor $11
    and c
    ld e, [hl]
    rst $38
    jr nz, jr_02e_6f90

    ld h, b

jr_02e_6f90:
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
    dec e
    add hl, bc
    rrca
    rst $38
    add hl, hl
    dec l
    ld d, d
    ld [$e460], sp
    dec h
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
    cp c
    rst $08
    ld [hl], b

jr_02e_6fb8:
    inc de
    adc a
    ld [hl], a
    adc b
    daa
    nop
    nop
    ld [hli], a
    dec h
    db $fc
    add hl, hl
    ld hl, $6c69
    and c
    jr nz, jr_02e_6ffa

    rrca
    add hl, bc
    pop af
    rrca
    dec bc
    rst $30
    ld hl, $fb07
    ld hl, $7d40
    ld c, a
    cp $ff
    ld a, [$9af7]
    rst $30
    jr nz, jr_02e_6fb8

    or a
    pop hl
    nop
    rst $38
    nop
    jp $1f00


    and l
    nop
    sbc c
    ld b, c
    dec h
    add hl, hl
    dec l
    rrca
    rra
    inc h
    ld a, a
    ld b, c
    ld bc, $f00e
    ccf
    ld hl, $7fa0
    nop

jr_02e_6ffa:
    pop hl
    ld a, a
    ld [c], a
    ld a, a
    ld b, h

jr_02e_6fff:
    rst $38
    add $fd
    nop
    jp z, $36fd

    ld sp, hl
    ld c, [hl]
    pop af
    xor [hl]
    pop de
    ld [$916e], sp
    xor $11
    and c
    add hl, bc
    nop
    ccf
    jr nz, jr_02e_7016

jr_02e_7016:
    rst $38
    pop bc
    db $fc
    nop
    ldh [rP1], a
    sub b
    ld [$cc00], sp
    nop
    rst $30
    rst $08
    rra
    nop
    inc bc
    ld b, b
    nop
    nop
    jp $dbfc


    db $fc
    reti


    cp $c1
    cp $09
    ret


    or $e3
    db $fc
    ld hl, $fcd3
    rrca
    db $10
    ld h, $a5
    sbc c
    ld hl, $89b5
    ld h, l
    ld hl, $60ad
    sub c
    and a
    rrca
    inc c
    add hl, bc
    nop
    ccf
    nop
    rst $38
    add h
    pop bc
    db $fc
    nop
    ldh [rP1], a
    rrca
    db $10
    sub b
    nop
    ld de, $00cc
    rst $30
    rst $08
    rra
    nop
    inc bc
    rrca
    ld de, $a9c5
    ld hl, $00fe
    ldh [rKEY1], a
    daa
    rrca
    add hl, de
    ld a, [bc]
    rra
    nop
    rlca
    nop
    jr nz, jr_02e_6fff

    rrca
    dec d
    db $fc
    inc hl
    nop
    ldh [rWX], a
    jr jr_02e_707c

jr_02e_707c:
    ld a, a
    db $db
    rrca
    db $10
    add b
    daa
    rlca
    nop
    ret nz

    nop
    or b
    nop
    ld e, h
    add b
    rrca
    inc de
    ld hl, sp+$00
    ldh [rP1], a
    ld [bc], a
    nop
    inc e
    inc c
    nop
    dec de
    nop
    cp a
    sbc e
    rrca
    db $10
    ccf
    nop
    ld bc, $0007
    ld b, b
    nop
    ld h, b
    nop
    rst $20
    adc l
    ret nz

    rrca
    ld [de], a
    nop
    ld e, b
    ld [hl], e
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    inc b
    ld [hl], e
    ld e, b
    ld c, [hl]
    ld c, a
    ld b, b
    nop
    adc b
    ld e, c
    ld d, c
    nop
    ld h, e
    ld h, d
    ld c, d
    ld c, e
    ld h, d
    ld h, e
    ld d, c
    ld e, c
    add h
    rra
    and b
    ld a, d
    ld e, l
    ld e, h
    ld e, e
    nop
    ld [$5d5c], sp
    ld b, b
    ld a, d
    rra
    xor b
    ld l, e
    ld d, e
    ld d, d
    ld l, b
    ld l, b
    ld d, d
    jr nz, jr_02e_712f

    ld l, e
    rra
    or b
    ld a, e
    ld d, l
    ld d, h
    ld a, b
    ld a, b
    ld [de], a
    ld d, h
    ld d, l
    ld a, e
    rra
    xor b
    ld h, c
    ld h, b
    nop
    jr z, jr_02e_7150

    add c
    ccf
    or b
    ld h, l
    ld e, d
    ld l, c
    ld l, c
    ld e, d
    ld h, l
    ccf
    or b
    nop
    ld a, d
    ld l, e
    ld [hl], l
    ld e, d
    ld a, c
    ld a, c
    ld e, d
    ld [hl], l
    sub h
    ld a, a
    ret nz

    ld d, a
    ld d, [hl]
    nop
    ld [$3f57], sp
    ret nz

    ld h, a
    ld h, [hl]
    and l
    nop
    ld [$3f67], sp
    ret nz

    ld [hl], a
    halt
    ld [$3f77], sp
    ret nz

    sbc c
    nop
    db $10
    ld d, b
    ld d, b
    ccf
    ret nz

    nop
    db $10
    ld c, h
    ld c, l
    ccf
    jr nc, jr_02e_717d

    ld l, $60
    ld c, $60
    inc c

jr_02e_712f:
    ld [$0086], sp
    rrca
    rst JumpTable

jr_02e_7134:
    ld e, $09
    rra
    dec de
    ld l, $1f
    ld a, h
    add c
    rra
    dec a
    jr nz, jr_02e_715f

    dec e
    rla
    dec l
    dec l
    dec c
    ld hl, $1f0d
    ld a, [hl-]
    and $1f
    dec e
    ldh [rLCDC], a
    cp a
    nop

jr_02e_7150:
    sbc b
    or e
    or d
    or c
    or b
    or b
    or c
    or d
    db $10
    or e
    sbc b
    add b
    nop
    sbc b
    sbc c

jr_02e_715f:
    sub c
    and e
    and d
    ld [bc], a
    adc d
    adc e
    and d
    and e
    sub c
    sbc c
    rra
    and b
    cp d
    ld de, $9c9d
    sbc e
    nop
    ld [$9d9c], sp
    cp d
    rra
    xor b
    nop
    xor e
    sub e
    sub d
    xor b
    xor b

jr_02e_717d:
    sub d
    sub e
    xor e
    add b
    rra
    or b
    cp e
    sub l
    sub h
    cp b
    cp b
    sub h
    sub l
    ld c, d
    cp e
    rra
    xor b
    and c
    and b
    nop
    jr z, jr_02e_7134

    ld e, a
    or b
    and l
    inc b
    sbc d
    xor c
    xor c
    sbc d
    and l
    ld e, a
    ret nz

    or l
    sbc d
    ld [$b9b9], sp
    sbc d
    or l
    ld e, a
    or b
    cp d
    xor e
    sub a
    ld d, d
    sub [hl]
    nop
    ld [$3f97], sp
    ret nz

    and a
    and [hl]
    nop
    ld [$95a7], sp
    ccf
    ret nz

    or a
    or [hl]
    nop
    ld [$3fb7], sp
    cp b
    xor e
    nop
    db $10
    inc sp
    sub b
    sub b
    ld e, a
    ret nz

    nop
    db $10
    adc h
    adc l
    ld e, a
    jr nc, jr_02e_7226

    inc h
    ld h, b
    inc b
    ld h, b
    ld bc, $1500
    ld e, $09
    rra
    dec de
    ld e, l
    inc h
    rra
    ld a, [hl]
    inc b
    rra
    ccf

jr_02e_71e1:
    jr nz, jr_02e_7202

    rra
    inc b
    ld hl, $1fdf
    dec a
    jr nz, jr_02e_71ef

    ld hl, $1e1f
    ld b, b

jr_02e_71ef:
    xor a
    ld h, $ce
    rst $08
    ld hl, $8e8e
    ld h, l
    ld bc, $8f1a
    ld d, l
    adc a
    rra
    dec e
    sbc [hl]
    inc hl
    sbc [hl]
    rra

jr_02e_7202:
    dec de
    xor l
    ld h, l
    ld b, b
    xor l
    rra
    add hl, de
    cp h
    cp l
    rst $08
    cp a
    cp a
    adc $22
    cp l
    cp h
    rra
    jr jr_02e_71e1

    call Call_02e_4083
    call $cc40
    rra
    rla
    cp e
    adc c
    xor d
    xor d
    sub b
    sub b
    ld [$9393], sp

jr_02e_7226:
    adc c
    cp e
    rra
    ld d, $cb
    add e
    cp d
    ld bc, $91ba
    sub d
    add e

jr_02e_7232:
    add e
    sbc c
    rr a
    ld d, $28
    add a
    sub e
    ret nz

    add a
    rra

jr_02e_723d:
    ld d, $97
    sbc c
    add e
    sub c
    add b
    sbc c
    sub a
    rra
    ld d, $a7
    xor c
    sub e
    add b
    ld [hli], a

jr_02e_724c:
    xor c
    and a
    rra
    ld d, $b7
    cp c
    add e
    add b
    cp c
    ld b, c
    or a
    rra
    ld d, $c7
    sub e
    adc h
    adc l
    sub e

jr_02e_725e:
    ld h, b
    ld b, c
    rst $00
    rra
    ld d, $88
    add e

jr_02e_7265:
    sbc h
    sbc l
    add e
    ld h, b
    ld b, b
    adc b
    rra
    ld d, $98
    and h
    and e
    and d
    and c
    and c
    ld [$a3a2], sp
    and h

jr_02e_7277:
    sbc b
    rra
    ld d, $a8
    or h
    or e
    ld bc, $b0b2
    or c
    or d
    or e
    or h
    xor b
    rra
    ld d, $08
    cp b
    call nz, $c2c3
    ld b, b
    jp $b8c4


    add b
    rra
    rla
    add e
    add [hl]
    add l
    add h
    add h
    add l
    add [hl]
    ld b, b
    add e
    rra
    jr jr_02e_7232

    sub [hl]
    sub l
    sub h
    sub h
    sub l
    dec h
    sub [hl]
    sub e
    rra
    rla
    pop bc
    ret nz

    ret nz

    pop bc
    rra
    ld d, $00
    cp b
    add e
    and [hl]
    add d
    and l
    and l
    add d
    and [hl]

jr_02e_72b8:
    jr nz, jr_02e_723d

    cp b
    rra
    rla
    sub e
    or [hl]
    add d
    or l
    or l
    ld de, $b682
    sub e
    rra
    jr jr_02e_724c

    add $c5
    ld b, b
    ld [hli], a
    add $83
    rra
    jr jr_02e_7265

    adc e
    adc d
    ld b, b
    adc e
    ld b, h
    sub e
    rra
    jr jr_02e_725e

    sbc e
    sbc d
    ld b, b
    sbc e
    add e
    cp b
    rra
    jr jr_02e_7277

    ret nz

    rra
    rla
    ld c, a
    ld b, $40
    inc b
    inc h
    ld h, l
    ld b, a
    nop
    inc de
    rra
    inc hl
    cp e
    ld b, e
    inc h
    rra
    dec de
    ld b, d
    jr nz, jr_02e_731e

    rra
    add hl, de
    ld h, d
    cp a
    dec a
    inc h
    ld [hli], a
    rra
    add hl, de
    dec sp
    ld h, e
    rra
    rla
    ld b, b
    rst $28
    ld a, $21
    ld [hli], a
    inc h
    rra
    rla
    sbc l
    rra
    inc e
    ld b, b
    db $fd
    add a
    rra
    rla
    jr c, jr_02e_72b8

    inc hl
    rra
    rra
    inc h
    rra

jr_02e_731e:
    scf
    rst $38
    ld e, h
    ld a, a
    inc h
    rra
    jr c, jr_02e_7366

    adc b
    rra
    ld a, [de]
    xor b
    rst $38
    rra
    ld d, $5e
    jr nz, jr_02e_734f

    ld a, [hl]
    inc hl
    rra
    ld a, $be
    rra
    inc e
    ld hl, sp+$21
    rra
    dec a
    sbc [hl]
    rra
    rla
    dec h
    ld l, [hl]
    ld l, a
    ld hl, $8e8e
    ld h, l
    add b
    nop
    dec d
    ld h, $7e
    ld a, a
    ld hl, $8f8f
    ld h, l

jr_02e_734f:
    rra
    ld d, $6e
    ld [bc], a
    ld l, a
    ld l, [hl]
    sbc [hl]
    sbc a
    sbc a
    sbc [hl]
    dec h
    ld l, a
    add b
    rra
    ld d, $7e
    ld a, a
    xor l
    xor [hl]
    xor a
    xor a
    xor [hl]
    ld h, b

jr_02e_7366:
    xor l
    daa
    rra
    ld d, $8c
    cp h
    cp l
    cp [hl]
    cp a
    inc b
    cp a
    cp [hl]
    cp l
    cp h
    adc l
    rra
    ld d, $8e
    call z, $cd22
    add e
    ld b, b
    call $8fcc
    rra
    ld d, $bb
    nop
    adc c
    xor d
    xor d

jr_02e_7387:
    sub b
    sub b
    sub e
    sub e
    adc c
    ld b, b
    cp e
    rra
    ld d, $cb
    add e
    cp d
    cp d
    sub c
    sub d
    add hl, bc
    add e
    add e
    sbc c
    rr a
    ld d, $87
    sub e
    ret nz

    ld b, h
    add a
    rra
    ld d, $97
    sbc c
    add e
    add b
    sbc c
    sub a
    ret nz

    rra
    ld d, $4b
    inc c
    ld b, b
    add h
    and h
    ld h, l
    stop
    dec d
    rra
    inc hl
    ld e, l
    add h
    ccf
    and h
    rra
    dec de
    ld a, $5f
    and h
    rra
    jr @+$42

    ld c, $3d
    inc b
    inc b
    inc h
    inc h
    and h
    and h
    ld l, a
    ld c, $1f
    jr @+$5f

    inc b
    inc hl
    rra
    jr @+$3c

    dec sp
    rst JumpTable
    ld b, c
    ld [hli], a
    inc h
    rra
    rla
    sbc l
    rra
    inc e
    ld b, b
    ld e, a
    cp $27
    rra
    rla
    jr c, jr_02e_7387

    inc hl
    rra
    ld d, $5c
    nop
    nop
    rrca
    rst $38
    ld bc, $100f
    stop
    db $10
    push de
    jr z, jr_02e_73f9

jr_02e_73f9:
    sub d

jr_02e_73fa:
    ld l, c
    xor d
    ld d, l
    inc h
    db $db
    and l
    ld e, d
    nop

jr_02e_7402:
    jp z, $4a35

    or l

jr_02e_7406:
    and e
    ld e, h
    sub $29
    nop
    ld b, h
    cp e
    xor c
    ld d, [hl]
    jp nc, $442c

    cp c
    nop
    ld b, [hl]
    cp c
    xor [hl]
    ld d, c
    and h
    ld e, e
    cp l
    ld b, d
    nop
    reti


    ld h, $50
    xor l
    ld [hli], a
    ld e, c
    add l
    ld a, [hl-]
    ld [bc], a
    xor h
    inc de
    ld l, c
    sub [hl]
    ld a, [hli]
    push de
    ccf
    ld h, $01
    sbc c
    ld b, h
    sbc e
    jr nc, jr_02e_7402

    or c
    ld c, h
    add hl, hl
    jr nz, jr_02e_7406

    ld [hl-], a
    ld sp, $0000
    inc bc
    inc bc
    rlca
    nop
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_02e_74c8

    ld bc, $5f40
    ld h, b
    ld c, [hl]
    ld [hl], c
    ld b, h
    ld a, e
    and c
    ld [bc], a
    inc h
    dec sp
    jr jr_02e_7476

jr_02e_7457:
    rlca
    rlca
    ccf
    ldh [rP1], a
    ldh [$90], a
    ld [hl], b
    adc b
    ld a, b
    add h
    ld a, h
    add d
    nop
    ld a, [hl]
    add e
    ld a, l
    ld b, a
    cp e
    cpl
    rst AddAToHL
    rra
    ld b, b
    rst $28
    and c
    ld e, $ee
    inc c
    db $fc
    ldh a, [$f0]

jr_02e_7476:
    ld c, b
    rst $38
    jr nz, jr_02e_73fa

    add b
    ld b, h
    ld [hl], b
    ld a, a
    ld e, a
    rlca
    db $76
    ld e, a

jr_02e_7482:
    ld [hl], b
    ld e, a
    ld [hl], l
    inc hl
    ld [hl], c
    ld [hli], a
    add hl, bc
    inc b
    rlca
    dec b
    ld b, $21
    rlca
    inc bc
    ld c, l
    jr nz, @+$03

    ld bc, $0e44
    cp $fa
    ld l, $fa
    ld e, b
    ld c, [hl]
    ld b, e
    ld c, $71
    ld [hli], a
    jr nz, jr_02e_7482

    and b
    ld c, [hl]
    ld h, b
    ld hl, $c0e0
    ld a, [hl]
    jr nz, @+$26

    rlca
    inc de
    ld sp, hl
    rst $30
    ld sp, hl
    dec hl
    pop af
    rst $38
    dec h
    ld bc, $c20c
    ld sp, $c720
    add e
    add e
    ld bc, $ff21
    db $10
    add hl, hl
    rst $38
    ld l, l
    add c
    ld de, $39ff
    rst $38

jr_02e_74c8:
    ld e, h
    add e
    ld d, [hl]
    xor e
    jr nz, jr_02e_74f1

    ld h, $fc
    inc bc
    nop
    cp $0c
    pop de
    jr nc, jr_02e_7457

    ld b, b
    add a
    ld b, b
    nop
    sbc [hl]
    ld b, c
    or $89
    db $fc
    add e
    ld a, a
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

jr_02e_74f1:
    adc l
    ld a, e
    rrca
    rra
    nop
    inc [hl]
    ld a, d
    ld c, c
    db $f4
    sub d
    add sp, -$5c
    ret nc

    nop
    ret


    ldh [$f7], a
    ld hl, sp-$11
    rst $38
    ldh a, [$f8]
    nop
    adc h
    ld e, $32
    rrca
    ld h, l
    dec de
    ret


    scf
    nop
    sub e
    ld l, a
    cpl
    rst JumpTable
    rst $38
    rst $38
    jp $00ff


    and l

jr_02e_751b:
    ld a, [hl]
    rst $38
    jr jr_02e_759e

    add b
    db $fd
    nop
    nop
    rst JumpTable
    nop
    ei
    inc b
    rst $38
    nop
    ldh a, [rIE]
    nop
    call c, $f63f
    rrca
    ei
    rlca
    db $dd
    inc bc
    nop
    db $fd
    inc bc
    ld [hl], a
    adc c
    rst $38
    ld bc, $03bd
    add b
    dec hl
    rst $30
    rrca
    cp $07
    jp c, $fe07

    add b
    ld [hl], c
    ld bc, $00f7
    cp a
    nop
    db $fd
    nop
    ld [bc], a
    ld b, a
    cp b
    add c
    ld a, [hl]
    inc a
    rst $38
    jr nz, jr_02e_751b

    adc b
    ld [hli], a
    ld bc, $8b75
    scf
    db $db
    rlca
    ld [c], a
    ld [bc], a
    rra
    ld b, $ff
    inc e
    rst $38
    ldh a, [rHDMA3]
    add b
    ld [de], a
    rst $38
    and b
    ldh [$a1], a
    cp a
    rst $38
    ld hl, $0004
    inc bc
    ld c, $0c
    ld de, $0030
    ld b, b
    rlca
    nop
    ld b, b
    sbc [hl]
    ld b, c
    or $89
    db $fc
    add e
    ld h, b
    nop
    ldh [rSVBK], a
    db $10
    xor $1c
    ld c, [hl]
    and d
    dec bc
    nop
    add [hl]
    inc de
    rrca
    ld h, a
    sbc l
    adc l
    ld a, e
    ld a, [hl]
    nop
    rst $38
    db $fc
    rst $38
    jp Jump_02e_7867


jr_02e_759e:
    ret nz

    ld e, a
    nop
    ldh [$ca], a
    ld a, l
    ld a, a
    scf
    inc sp
    add b
    ld h, h
    nop
    cp [hl]
    ld [hl], $df
    sbc a
    xor $75
    cp $0e
    nop
    rra
    cp [hl]
    ld b, e
    db $fc
    cp $38
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0e11
    cpl
    db $10
    ld a, [de]
    ld bc, $1f21
    jr nz, @+$57

    jr nz, jr_02e_7606

    ld b, h
    cpl
    nop
    jr nz, jr_02e_75d0

jr_02e_75d0:
    jr nc, jr_02e_75d2

jr_02e_75d2:
    ld [hl], $00
    call z, $1000
    ld l, h
    nop
    ld h, b
    inc l
    nop
    cp b
    ret nz

    add e
    nop
    ldh a, [$f7]
    ld [hl], b
    sub l
    jp z, $848b

    sub [hl]
    nop
    adc l
    rst $20
    ld e, a
    rst $38
    dec sp
    ld l, c
    rst $38
    jp z, Jump_02e_7f00

    db $dd
    ld [hl], e
    dec sp
    rst $30
    scf
    rst $38
    ld [hl], $00
    rst $38
    ld l, l
    cp $df
    ldh [$e7], a
    ld hl, sp-$1d
    db $10
    rst $38
    rst $20

jr_02e_7606:
    cp $43
    ld hl, sp+$67
    rst $38
    scf
    ld a, [bc]
    ld a, b
    cpl
    rra
    rst $28
    ld hl, $23ff
    rst $08
    add b
    inc hl
    ld a, a
    adc $ff
    db $ec

jr_02e_761b:
    ld e, $f4
    ld hl, sp+$00
    rst JumpTable
    ld h, b
    rst $28
    jr nc, jr_02e_761b

    jr @-$33

    inc e
    nop
    sbc l
    ld [hl], $3e
    ld h, e
    ld a, a
    pop bc
    cp a
    ret nz

    ld a, [bc]
    nop
    rst $38
    ld a, [hl]
    add c
    pop hl
    nop
    ld hl, $46ff
    ld a, a
    ld [hli], a
    nop
    ldh [rP1], a

Call_02e_763f:
    ld [hl], $e1
    ld bc, $fe42
    jr nc, @-$06

    rlca
    db $fc
    inc bc
    pop hl
    rst $38
    cp c
    jr nz, jr_02e_764e

jr_02e_764e:
    ld sp, $8780
    cp e
    db $dd
    ld bc, $000e
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
    ld h, a
    ld e, a
    cp a
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
    ld l, l
    cp $dd
    ldh [rP1], a
    nop
    rst $38
    jr @+$01

    inc h
    rst $38
    ld d, e
    db $eb
    nop
    ld e, d
    db $e3
    jp hl


    and $a3
    db $e4
    push de
    cp h
    nop
    jr nc, @+$01

    ld e, b
    rst $28
    sbc h
    rst $20
    db $76
    jp $a200


    ld h, e
    ld h, e
    or a
    dec b
    sbc a

jr_02e_769b:
    sbc e
    dec e
    ld [$bfc0], sp
    sbc a
    add b
    ld b, c
    ret nz

    ld a, a
    rst $38
    nop
    jr c, @+$01

    jr z, jr_02e_769b

    jr nc, @-$1e

    ld bc, $20ff
    ld sp, hl
    rlca
    ld hl, $07fb
    cp $ff
    inc e
    nop
    rst $38
    ld h, h
    rra
    or h
    rrca
    cp a
    ld a, a
    ld h, b
    nop
    ret nz

    rst $00
    adc a
    adc e
    sbc h
    or l
    sbc [hl]
    cp [hl]
    nop
    sub e
    cp a
    sub c
    cp a
    sub b
    rst $38
    rst $38
    nop
    ld b, b
    nop
    inc hl
    rr h
    sbc l
    ld [hl], $3e
    ld h, e
    inc c
    rst $38
    pop bc
    cp a
    ret nz

    xor a
    inc h
    ei
    rlca
    ld [bc], a
    cp [hl]
    ld a, h
    xor $c8
    xor $88
    xor a
    cp d
    inc b
    ld a, l
    xor $c9
    xor $89
    ld hl, $99fe
    add [hl]
    dec hl
    add b
    rst $38
    sbc [hl]
    pop hl
    pop hl
    dec hl
    ld sp, hl
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

jr_02e_7710:
    ld [hl], b
    sbc $10
    jr nz, jr_02e_7710

    nop
    dec l
    rst $28
    db $10
    call $3028
    rst AddAToHL
    jr c, jr_02e_7746

    dec hl
    db $fd
    nop
    ld [$0000], a
    call nc, $a800
    nop
    ret nz

    nop
    and b
    nop
    nop
    ld b, b
    nop
    add b
    nop
    ld d, c
    nop
    add e
    nop
    ld d, b
    rlca
    ld b, c
    rrca
    ld b, c
    rra
    nop
    ld e, $00
    ld bc, $8f73
    rst $08
    ccf
    rra
    rst $38

jr_02e_7746:
    ccf
    add c
    nop
    ld a, a
    rst $38
    rst $38
    cp a
    ld b, h
    adc c
    db $db
    ld l, l
    ld e, b
    dec l
    jr z, @+$41

    dec l
    ld b, b
    ld a, a
    ccf
    ld a, a
    nop
    add h
    add hl, bc
    ld a, l
    rrca
    ccf
    ld l, a
    ld a, [hl]
    ccf
    nop
    ld hl, sp+$3f
    or [hl]
    ld sp, hl
    ld l, l
    ldh a, [$e2]
    ld a, c
    nop
    add sp, -$72
    add h
    set 3, [hl]
    pop de

jr_02e_7773:
    jp nc, $02b1

    ret nz

Jump_02e_7777:
    sbc d
    ret z

    add h
    ret nz

    add b
    ld hl, $0055

jr_02e_777f:
    ccf
    cpl
    ld [hl], a
    dec [hl]
    and a
    dec b
    ccf
    dec l
    db $10
    dec de

Call_02e_7789:
    dec a
    inc bc
    ld h, c
    ld [hli], a
    ldh [rNR41], a
    ldh [rNR21], a
    jr z, jr_02e_7773

    ld hl, $2445
    ld b, e
    dec l
    inc [hl]
    ld d, d
    rrca
    pop hl
    ld [hl], h
    add l
    cp a
    sub b
    ld hl, $00b7
    sbc b
    cp e
    sbc h
    cp l
    sub [hl]
    cp [hl]
    sub e
    cp a
    ld d, d
    sub c
    dec hl
    nop
    nop
    rrca
    xor $88
    ld hl, $01fe
    sbc b
    rst $28
    add sp, -$11
    adc c
    xor $8e
    ld l, e
    ld de, $e9ee
    xor $29
    adc c
    rst $28
    adc a
    ld h, l
    add h
    ld hl, $99fe
    add b
    rst $38
    ld b, b
    sub l
    db $fd
    ld [bc], a
    sub a
    db $fc
    sub a
    rst $38
    sbc a
    rst $38
    ld c, h
    ei
    nop
    nop
    ld l, a
    sub b
    rst $38
    nop
    di
    inc c
    and l
    nop
    ld d, d
    ld a, d
    ld d, $ed
    ld e, $bf
    nop
    dec a
    inc b
    jp nz, $a017

    ld e, $e0
    daa
    push hl
    jr jr_02e_77f5

jr_02e_77f5:
    sla h
    sub $2c
    ei
    inc e
    ld b, b
    nop
    jr nc, jr_02e_777f

    nop
    jr nz, jr_02e_7825

    ld bc, $0f00
    nop
    db $10
    ccf
    nop
    rst $38
    ld b, e
    ld a, $00   ; xor a
    ld a, l
    nop
    nop
    cp $00  ; and a / or a
    db $fd
    nop
    ld a, [$f400]
    nop
    ld b, b
    xor d
    ld sp, $bf3f
    ld a, a
    ccf
    rst $38
    rra
    add b
    ld b, c
    jr nz, @+$01

jr_02e_7825:
    ld e, a
    ldh [$bf], a
    ret nz

Jump_02e_7829:
    rst $38
    inc a
    ld a, a
    ld a, a
    ld [hl-], a
    ld sp, $3120
    ccf
    dec bc
    nop
    rra
    add b
    inc sp
    ld e, b
    ld h, [hl]
    sub l
    ld [c], a
    ld d, b
    nop
    ld l, a
    ld l, d
    ld [hl], c
    ld l, h
    ldh a, [$57]
    jr c, jr_02e_7881

    ld [bc], a
    rra
    adc e
    inc sp
    ret z

    add b
    ret nz

    ld b, c
    jp nz, Jump_02e_43a4

    ret nc

    adc c
    dec a
    inc bc
    ld hl, $0b35
    add h
    ld h, l
    ld a, l
    inc bc
    add hl, sp
    rlca
    dec h
    add sp, -$20
    ld bc, $e0a1
    db $e4
    and b
    ldh [$a0], a

Jump_02e_7867:
    ldh a, [rNR44]
    nop
    or b
    ret c

    or b
    db $eb
    sbc h
    scf
    rrca
    dec [hl]
    db $10
    rrca
    scf
    dec c
    ld hl, $0db7
    dec sp
    dec c
    nop
    ld l, e
    dec e

jr_02e_787e:
    rst $30
    add hl, sp
    or a

jr_02e_7881:
    sbc b
    xor e
    sbc h
    nop
    sub h
    adc a
    res 0, a
    and a
    ret nz

    ret nc

    ldh [rP1], a
    ldh [rIE], a
    rst $38
    cp a
    rst JumpTable
    ld h, b
    rst $28
    jr nc, jr_02e_78bd

    rst $30
    jr jr_02e_78c2

    rst $38
    nop
    ld b, b
    ld b, [hl]
    xor $06
    adc b
    cp $98
    xor $e8
    dec h
    ld b, c
    adc c
    inc bc
    rst $28
    sbc a
    ld hl, sp-$01
    cp $e9
    daa
    ld hl, $ec20
    adc e
    dec hl
    ld sp, hl
    rst $38
    add a
    rst $38
    ld a, a
    nop
    rst $38
    nop

jr_02e_78bd:
    rst $38
    inc a
    rst $38
    ld a, d
    rst $00

jr_02e_78c2:
    call $8346
    ld hl, $c7b9
    ld b, d
    ld c, l
    ld hl, $4081
    ld a, [hl]
    inc hl
    db $10
    rst $28
    jr @+$01

    inc b
    ei
    jp nz, $226d

    db $e3
    nop
    add c
    inc e
    add c
    ld h, d
    add b
    add hl, hl
    db $e3
    inc e
    rst $00
    nop
    inc bc
    jr c, jr_02e_78e8

    add d

jr_02e_78e8:
    ld h, c
    call nz, $02c5
    rst $00
    jr c, jr_02e_792c

    nop
    add $22
    ld b, c
    db $10
    rst $28
    jr jr_02e_787e

    and c
    inc e
    inc d
    rst $38
    ld a, [hl-]
    rst $20
    ld hl, $cd14
    ld b, d
    cp l
    inc hl
    nop
    rst $30
    dec h
    inc h
    rst $38
    ld e, d
    daa
    ld c, l
    nop
    inc b
    ei
    dec d
    ld [$44bb], a
    xor $15
    dec b
    rst $28
    cp l
    cp l
    rst $38
    ld_long $ff3b, a
    ld [de], a
    nop
    ret nz

    pop bc
    add b
    nop
    add sp, $40
    ld h, b
    ld [hl], b
    and b
    ld a, [hl-]
    call c, $e71f
    rlca

jr_02e_792c:
    ld hl, sp+$05
    nop
    ld [bc], a
    dec a
    inc bc
    inc [hl]
    dec bc
    ccf
    ld a, a
    ld a, $05
    inc a
    dec de
    ld hl, sp-$19
    ldh [$1f], a
    dec c
    ld h, c
    rst $38
    rst $30
    adc a
    add b
    add b
    adc b
    adc b
    ld a, a
    ld a, a
    add b
    nop
    dec c
    ld h, c
    rst $38
    rst $08
    pop af
    ld bc, $1101
    ld de, $fefe
    ld bc, $0600
    rra

jr_02e_795a:
    rst $38
    cp a
    rst JumpTable
    sbc a
    ldh a, [$d0]
    cp a
    cp a
    ret nc

    ret nc

    rst $20
    sbc a
    rst $38
    ld bc, $0801
    ld [$a2aa], sp
    rst AddAToHL
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    sub $77
    ld [hl], a
    nop
    jr jr_02e_795a

    or a
    sbc b
    xor e
    sbc h
    sub h
    adc a
    res 0, a
    and a
    ret nz

    ret nc

    cp a
    ld a, a
    sbc a
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

jr_02e_79a0:
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
    jr jr_02e_79a0

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
    ld [hli], a
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
    jr nc, jr_02e_7a3c

    db $10
    rst JumpTable
    rst JumpTable
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
    ld bc, $c040
    nop
    rst $38
    ld a, [hl]
    adc h
    ld d, c
    or b
    ld b, b
    ld b, a
    ld e, [hl]
    pop bc
    or $89
    db $fc
    add e
    nop
    nop
    ld h, b
    rst $38
    ld a, [hl]
    ld de, $1dee
    ld c, [hl]
    and e
    ld a, [bc]
    add a
    inc de
    rrca
    ld h, a
    sbc l
    adc l
    ld a, e
    nop
    nop
    cp b

jr_02e_7a3c:
    ret nz

    add e
    ldh a, [$f7]
    ld [hl], b
    sub l
    jp z, $848b

    sub [hl]
    adc l
    ld h, a
    rst JumpTable
    dec sp
    rst $38
    ld b, b
    ld d, l
    rst $38
    ld l, c
    jp z, $dd7f

    ld [hl], e
    dec sp
    rst $30
    scf
    ld [hl], $6c
    ret nz

    rst $38
    rst $38
    nop

jr_02e_7a5c:
    ld d, l
    ld d, l
    ld [hl], a
    rst AddAToHL
    rst AddAToHL
    rst AddAToHL
    rst AddAToHL
    rst AddAToHL
    rst AddAToHL
    rst AddAToHL
    sub $0b

jr_02e_7a68:
    ld e, l
    rst $38
    rst JumpTable
    jr nc, jr_02e_7a5c

    or b
    ldh [$3f], a
    inc b
    ld [hli], a
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
    jr nz, jr_02e_7b0a

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


    jr jr_02e_7a68

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
    nop
    jp hl


    and $1a
    add hl, de
    db $e4
    dec b
    dec de
    ld [c], a
    ld a, [bc]
    ld a, [c]
    adc l
    ld [hl], c
    ld b, l
    add hl, sp
    and l
    sbc c
    ret nz

    nop
    ld a, a
    ldh [$e0], a
    rst $08
    ret nz

    sub b
    adc a
    and b
    sbc a
    and e
    sbc h
    and [hl]
    sbc b
    and l
    sbc c
    ret z

    inc hl
    rst $38

jr_02e_7b0a:
    nop
    nop
    nop
    inc b
    ei
    ld b, b
    cp a
    nop
    nop
    nop
    ld a, [bc]
    and d
    and l
    cp l
    inc a
    ld e, d
    ld b, d
    sbc c
    sbc c
    sbc c
    sbc c
    xor l
    sub c
    sbc c
    ld a, [hli]
    nop
    sbc a
    ret nz

    cp a
    add b
    add b
    ret nz

    rst $38
    rst $38
    ld hl, sp-$01
    add sp, -$10
    ldh a, [$e0]
    ld d, l
    ld d, b
    rst $38
    nop
    nop
    nop
    ld bc, $0f01
    dec de
    pop af
    rla
    rst $30
    inc b
    dec b
    ld a, a
    push de
    ld [hl], e
    ret nc

    ld a, b
    rst $38
    rst $38
    ld [hl], b
    rst $28
    ld [hl], b
    rst $28
    ld [hl], b
    rst JumpTable
    rst JumpTable
    inc c
    cpl
    rst $38
    ei
    db $fd
    dec b
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    inc bc
    dec d
    ld d, l
    cp $f8
    rst $38
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    add hl, bc
    ld l, b
    nop
    sbc a
    cp a
    add b
    add b
    rst JumpTable
    ld b, b
    cp a
    ccf
    jr c, jr_02e_7bf2

    ld l, b
    ldh a, [$f0]
    and b
    xor b
    nop
    ld sp, hl
    rst $38
    rlca
    rlca
    ei
    ld b, $fd

jr_02e_7b80:
    cp $1e
    rst $38
    ld h, a
    dec e
    scf
    inc c
    nop
    ld e, d
    ret nz

    rlca
    rst $38
    ld a, [de]
    db $fc
    jr z, jr_02e_7b80

    ld d, b
    ldh [$60], a
    add b
    add b
    add b
    inc bc
    rst $38
    nop
    jp $a5ff


    ld a, [hl]
    inc a
    jr @+$01

    rst $38
    nop
    nop
    ld d, [hl]
    and b
    db $f4
    ld h, b
    ldh a, [rNR41]
    ldh a, [rNR41]
    ld hl, sp+$60
    or b
    or c
    or b
    or b
    adc b
    and b
    scf
    inc c
    daa
    inc e
    inc c
    ld [hl], a
    ld c, $0d
    dec c
    daa
    dec e
    ld a, e
    dec c
    nop
    nop
    and l
    sbc c
    and d
    sbc h
    or c
    adc [hl]
    sbc b
    add a
    adc $c1
    ld h, e
    ld h, b
    or b
    jr nc, jr_02e_7c40

    adc a
    adc b
    ld h, d
    cp a
    ccf
    ld b, b
    ld b, b
    add b
    jp nz, $c0bd

    add b
    ld b, b
    ld b, b
    ccf
    ld d, h
    add b
    sbc c
    and l
    and l
    and l
    cp l
    add c
    add c
    add c
    add c
    ld b, d
    ld b, d
    cp l
    inc a
    and d
    and d
    and l

jr_02e_7bf2:
    sbc c
    sbc c
    or l
    adc c
    sbc c
    sbc c
    sbc c
    xor l
    sub c
    sbc c
    ld [hl], l
    db $dd
    ldh [$e2], a
    add sp, -$1f
    db $e4
    ld [c], a
    xor d
    xor d
    rla
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    ld d, l
    ld d, l
    ld a, a
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    db $e4
    rst $38
    ldh [$d4], a
    sub l
    rst $38
    ld b, [hl]
    cp $07
    cp $fe
    ld b, a
    cp $8e
    inc bc
    push bc
    nop

jr_02e_7c28:
    add hl, bc
    cp $05
    cp $fb
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld b, b
    jr nz, jr_02e_7c28

    ldh a, [$f8]
    pop af
    or b
    jr nc, jr_02e_7c9c

    ld [hl], b
    ldh [$f0], a
    and b

jr_02e_7c40:
    adc d
    ld [bc], a
    scf
    inc c
    daa
    inc e
    inc c
    inc c
    dec [hl]
    ld c, $16
    cpl
    or a
    dec c
    inc c
    ld de, $e042
    and b
    ret nz

    ret nc

    add sp, -$10
    ld [hl], b
    ld b, b
    ld h, b
    ret nz

    and b
    ret nz

    add b
    rrca
    ldh a, [rSB]
    rst $38
    db $fc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    dec b
    rlca
    rst $38
    rst $38
    nop
    nop
    add c
    rst $38
    sbc b
    or b
    adc e
    sbc h

jr_02e_7c73:
    rst $00
    rst $08
    ldh [$a0], a
    sbc a
    ldh a, [$9f]
    ld [hl], b
    rst JumpTable
    cp a
    nop
    call nc, $2bff
    dec e
    ld [hl], a
    add hl, sp
    rst $08
    di
    rlca
    rlca
    rrca
    ld c, $fd
    cp $00  ; and a / or a
    ld d, h
    ld a, [c]
    add e
    cp $d4
    cp $ac
    ld a, [$fad8]
    ld hl, sp-$10
    db $e4
    db $f4
    ld [c], a

jr_02e_7c9c:
    ld b, $20
    inc bc
    ccf
    ldh [$6f], a
    inc e
    dec c

Call_02e_7ca4:
    ld bc, $0201
    inc b
    dec bc
    inc b
    rlca
    ld [$8a02], sp
    rst $38
    cp $07
    rst $30
    jr c, jr_02e_7c73

    ret nz

    add b
    ld b, b
    rst JumpTable
    jr nz, jr_02e_7cda

    db $10
    ld d, l
    ld d, l
    ld a, a
    pop hl
    ld [hl], l
    ld a, e
    ld d, l
    ld e, a
    ld c, a
    ld c, a
    ld d, a
    ld b, b
    ret nc

    rst $38
    ld bc, $07f9
    ld sp, hl
    rlca
    ei
    rlca
    rra
    ld h, a
    rra
    or a
    rrca
    ld d, l
    nop
    rst $30
    ld d, $16

jr_02e_7cda:
    ld d, $17
    rla
    or $37
    or $37
    or $77
    or $55
    ld d, [hl]
    ld a, a
    rst $38
    db $e4
    rst $38
    pop bc
    rst $38
    call nz, $80ff
    push de
    ld e, b
    rst $38
    cpl
    db $fc
    rrca
    db $fc
    cpl
    db $fc
    cp $01
    rst $30
    ld a, c
    rst $38
    ld [$0080], sp
    nop
    rst $38
    push de
    rst $38
    dec d
    xor d
    ret nz

    nop
    ld a, [bc]
    rst $08
    jp $e3b4


    sub h
    xor e
    call nc, $d887
    sub a
    ret


    rst AddAToHL
    adc c
    sub c
    sub c
    add c
    ld a, [bc]
    rst $38
    nop
    db $fd
    inc bc
    rst $08
    ccf
    ld a, a
    db $fd
    cp $ef
    ldh a, [$e0]
    ldh [rHDMA4], a
    nop
    ccf
    rst $30
    di
    rst AddAToHL
    di
    rra
    rst $30
    sbc a
    db $eb
    sbc a
    rst $38
    adc a
    ei
    adc a
    inc d
    nop
    push de
    jp $a2b4


    xor e
    add [hl]
    reti


    sub a
    ret z

    sub $89
    adc a
    pop de
    xor $91
    dec d
    dec d
    ei
    rst $38
    nop
    rst $30
    rst $38
    rst $30
    rst $38
    inc bc
    rst $30
    rst $38
    rst $30
    add b
    add b
    rst $30
    ccf
    ld [hl], e
    cp a
    rst AddAToHL
    cp a
    ld [hl], e
    sbc a
    rra
    ld l, e
    sbc a
    rst $38
    adc a
    ld a, e
    adc a
    add b
    ld [$e6d0], sp
    ldh [$d6], a
    adc b
    sub $cc
    sub d
    ret nz

    sbc d
    pop af
    adc d
    xor e
    db $dd
    and e
    nop
    inc hl
    rst $38
    rrca
    db $10
    cpl
    db $10
    ld e, a
    jr nz, @+$41

    ld b, b
    ld a, a
    add b
    nop
    nop
    nop
    adc d
    add e
    rst $38
    ld [$04fb], sp
    inc b
    ld [bc], a
    ld bc, $01fe
    nop
    nop
    ld d, l
    ld d, b
    ld a, a
    ld d, a
    ld d, e
    ld [hl], a
    ld l, e
    ld l, a
    ei
    rst JumpTable
    rst $38
    db $db
    rst $38
    ld d, l
    ld d, l
    rrca
    scf
    scf
    scf
    scf
    scf
    ld [hl], a
    scf
    ld [hl], $01
    ld b, b
    ret nz

    inc bc
    rst $38
    ld a, [hl]
    adc h
    ld d, c
    or b
    ld b, b
    ld b, a
    ld e, [hl]
    pop bc
    or $89
    db $fc
    add e
    nop
    nop
    ldh [rIE], a
    ld a, [hl]
    ld de, $1dee
    ld c, [hl]
    and e
    ld a, [bc]
    add a
    inc de
    rrca
    ld h, a
    sbc l
    adc l
    ld a, e
    inc d
    nop
    ldh a, [$b8]
    ret nz

    jp Jump_02e_7777


    adc b
    ld a, e
    add a
    ld a, [hl]
    add c
    nop
    add c
    nop
    rst $38
    ld b, c
    ld bc, $69ff
    ret


    ld a, a
    adc $7f
    ld a, b
    adc [hl]
    pop af
    ld a, [hl]
    add c
    nop
    add c
    nop
    ld d, h
    nop
    rst $38
    ld h, b
    jr nc, jr_02e_7e0e

    ld a, $dd
    sbc l
    ld [hl], $3e
    ld h, e
    ld a, a
    pop bc
    cp a
    ret nz

    ld [$ff07], sp
    rst $28
    sub c
    rst JumpTable
    and c
    and b
    cp a
    ldh [$d5], a
    ld [$d5ea], a

jr_02e_7e0e:
    ret nz

    inc b
    rlca
    rst $38
    rst $28
    ldh a, [$fd]
    cp $7f
    rst $08
    ccf
    ld d, l
    xor e
    xor d
    ld d, l
    nop
    ld [$ff07], sp
    rst $30
    adc a
    rst $30
    adc a
    rlca
    ei
    rlca
    ld d, e
    xor a
    xor c
    ld d, a
    ld bc, $0700
    rst $38
    adc a
    ldh a, [$ee]
    or c
    cp a
    pop hl
    cp [hl]
    pop hl
    push de
    ld [$d5ea], a
    ret nz

    adc b
    rlca

Call_02e_7e3f:
    rst $38
    inc bc
    rst $30
    ei
    ei
    rst $30
    ei
    ld d, h
    xor e
    xor d
    ld d, l
    nop
    ld [$ff07], sp
    rst $30
    rrca
    ld [hl], a
    adc a
    add a
    ld a, e
    add a
    ld d, e
    xor a
    xor c
    ld d, a
    ld bc, $c300
    or h
    db $e3
    sub h
    xor e
    call nc, $d887
    nop
    sub a
    ret z

    rst AddAToHL
    adc b
    call $cf93
    sub a
    nop
    rst $38
    nop
    ei
    rlca
    rst $30
    rrca
    rst $38
    rrca
    nop
    rst $30
    rrca
    ei
    rlca
    db $ed
    di
    ei
    db $fc
    nop
    rst $38
    nop
    rst JumpTable
    ldh [$ef], a
    ldh a, [rIE]
    ldh a, [rP1]
    rst $28
    ldh a, [$df]
    ldh [$b7], a
    rst $08
    rst JumpTable
    ccf
    nop
    rst $30

jr_02e_7e92:
    ccf
    di
    ccf
    rst AddAToHL
    ccf
    di
    rra
    nop
    rst $30
    rra
    db $eb
    rra
    cp a
    rst $08
    ei
    rst $28
    ld [bc], a
    rst $38
    rst $38
    cp a
    ret nz

    cp a
    add b
    ld bc, $ff40
    ld [de], a

jr_02e_7ead:
    rst $38
    rst $38
    nop
    ld bc, $0020
    nop
    dec bc
    ld [$c0ff], sp
    dec de
    ld d, b
    rra
    jr jr_02e_7ead

    cp b
    rst $30
    ret c

    rst $30
    add sp, $00
    rst $30
    rst $38
    ldh a, [$b0]
    rst $38
    ret nc

    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    rrca
    dec c
    rst $38
    dec bc
    rst $38
    rlca
    add b
    rlca
    ld [$ef1d], sp
    dec de
    rst $28
    rla
    rst $28
    rst $38
    stop
    inc b
    ei
    ld bc, $ff10
    nop
    add b
    ld a, a
    ldh [rSB], a
    db $10
    ld c, [hl]
    ld [$1047], sp
    nop
    cp a
    nop
    db $db
    jr nz, jr_02e_7f15

    ei
    inc b
    rlca
    ld [$bf90], sp
    sub b
    cp e
    sub h
    adc b

Jump_02e_7eff:
    dec b

Jump_02e_7f00:
    jr jr_02e_7e92

    cp [hl]
    sub c
    rlca
    ld [$607f], sp
    ret nz

    ld [bc], a
    rst $00

jr_02e_7f0b:
    adc a
    adc e
    sbc h
    or [hl]
    sbc b
    rla
    db $10
    cp [hl]
    nop
    sub b

jr_02e_7f15:
    db $fd
    cp $06
    inc bc
    db $e3
    pop af
    pop de
    nop
    add hl, sp
    xor l
    ld e, c
    cp l
    add hl, bc
    ld a, l
    adc c
    db $fd
    nop
    add hl, bc
    rst $38
    nop
    rst $28
    nop
    rst $28
    db $10
    rst $38
    ld bc, $bd03
    ld b, $fa
    inc c
    db $fc
    add hl, bc
    rrca
    jr nz, jr_02e_7f39

jr_02e_7f39:
    rst $38
    nop
    db $fd
    ret nz

    cp l
    ld h, d
    ld e, a
    jr nc, jr_02e_7f82

    ccf
    ld b, l
    ld [$97ef], sp
    db $fd
    and e
    rst $38
    and b
    ld bc, $e0bf
    push de
    ld [$d5ea], a
    ret nz

    ld l, b
    ld [$f504], sp
    ei
    db $db
    rst $20
    rst $30
    db $fd
    ld [$af53], sp
    jr nz, jr_02e_7f0b

    ld d, l
    ld a, b
    db $10
    xor a
    rst JumpTable
    db $db
    rst $20

jr_02e_7f68:
    rst $28
    sub b
    db $fd
    ld [$ead5], sp
    rrca
    jr nz, jr_02e_7f68

    rst $28
    or a
    rst $08
    nop
    rst $38
    rlca
    ei
    rlca
    ld d, e
    xor a
    xor c
    ld d, a
    ld e, a
    ld bc, $58df
    add b

jr_02e_7f82:
    ld a, $08
    xor [hl]
    db $10
    rst $38
    ld h, b
    ld b, $08
    nop
    ld e, b
    nop
    ld a, a
    ld [hl], b
    cp b
    or a
    sbc a
    rst JumpTable
    add b
    ldh [rLCDC], a
    sbc a
    ld bc, $5f08
    ldh [$bf], a
    ld a, a
    cp $0e
    ld bc, $fd0d
    ld sp, hl
    ei
    ld bc, $f907
    ld bc, $0e08
    ld a, [$fd07]
    cp $ff
    db $10
    di
    jr @+$03

    jr nz, @+$01

    ld c, $dd
    ld [bc], a
    rst JumpTable
    jr nz, jr_02e_7fc2

    db $10
    ld c, b
    jr jr_02e_7fc5

    ld [$23fd], sp

jr_02e_7fc2:
    add hl, bc
    ld a, l
    push bc

jr_02e_7fc5:
    ld [$29dd], sp
    db $fd
    dec b
    ld [$0807], sp
    nop
    add hl, bc
    or a
    sbc b
    xor d

Jump_02e_7fd2:
    sbc h
    sub h
    adc a
    rlc h
    add a
    and a
    ret nz

    ret nc

    ldh [rKEY1], a
    add hl, bc
    rst $38
    ld l, l
    nop
    sbc c
    ld d, l
    add hl, sp
    add hl, hl
    pop af
    db $d3
    pop hl
    push hl
    db $10
    inc bc
    dec bc
    rlca
    ld d, l
    add hl, bc
    rst $38
    ld a, [$bd0c]
    db $10
    ld b, $bf
    ld b, e
    push bc
    add hl, bc
    nop
    sbc $21
    cp $80
    ld d, c
    db $08

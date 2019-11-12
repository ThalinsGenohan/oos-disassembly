; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $031", ROMX

    ld b, b
    or b
    and b
    ldh [rSC], a
    nop
    add b
    add b
    ret z

    ld h, b
    ld [hl], b
    push af
    db $20, $80
    ld b, b

Call_031_400f:
    scf
    jr nc, jr_031_404d

    inc a
    inc e
    ccf
    rlca
    nop
    rra
    ld bc, $001f
    rrca
    ld b, $07
    ld bc, $0341
    cp c
    ld bc, $7100
    nop
    ld [hl], b
    ld b, c
    ld b, b
    add hl, de
    ld d, [hl]
    inc c
    inc bc
    ld [hl], b
    rst $38
    inc hl
    rst $38
    inc d
    add a
    rst $38
    nop
    ld b, e
    jp nz, $1c45

    inc a
    ld [bc], a
    jr nz, jr_031_405d

    and b
    jr nc, @-$1e

    ld a, b
    ld hl, $0068
    ld hl, sp+$2c
    db $fc
    jr z, @-$02

    inc d
    db $fc
    nop
    nop

jr_031_404d:
    ld hl, sp+$08
    ld hl, sp+$40
    ldh a, [$c0]
    ldh a, [rP1]
    ld [$00e0], sp
    ret nz

    nop
    ld b, b
    jr jr_031_407c

jr_031_405d:
    inc c
    ld b, $0f
    rlca
    rlca
    ld bc, $6b01
    nop
    dec d
    rst $38
    add h

Jump_031_4069:
    ld h, c
    jp Jump_031_7eff


    ld a, [hl]
    ld e, $16
    add b
    add b
    nop
    call c, $fe5c
    ld [hl+], a
    dec a
    rst $38
    db $e3
    db $e3
    nop

jr_031_407c:
    pop hl
    ld hl, $b0d0
    ld [hl], b
    ld d, b
    jr nc, jr_031_40b4

    jr nc, jr_031_4096

    db $10
    rra
    inc c
    ld e, h
    nop
    nop
    ld l, b
    rst $38
    ld bc, $1068
    ld [hl], b
    nop
    ld a, b
    cp $ff

jr_031_4096:
    ld bc, $fefc
    db $fd
    cp $f9
    db $fc
    ei
    ld bc, $0020
    add a
    ld [hl], a
    rra
    rst JumpTable
    dec sp
    cp b
    ld a, a
    ld hl, sp+$00
    ld a, a
    ld a, c
    cp $f8
    rst $38
    ld hl, sp-$05
    ld hl, sp+$00
    rst $38

jr_031_40b4:
    rst $38
    rst $28
    rst $28
    rst JumpTable
    ld [$0c3f], sp
    nop
    rst JumpTable
    call z, $fcff
    cp a
    inc a
    rst $28
    inc c
    add h
    ld [hl-], a
    db $10
    or $06
    rst $38
    rst $28
    rlca
    db $10
    sbc $de
    jr nz, @+$01

    ld e, $07
    db $10
    di
    inc bc
    rst $30
    add a
    ld e, a
    ld bc, $bb07
    inc hl
    rst $28
    ld h, e
    db $fd
    ld bc, $1817
    nop
    ret nz

    ld sp, hl
    ret nz

    cp $ce
    rst $30
    rst $00
    db $fd
    nop
    pop bc
    rst JumpTable
    ret nz

    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $30
    nop
    ld [hl], b
    db $ed

Call_031_40f8:
    ld h, c
    rst JumpTable
    ld b, a
    rst $30
    rst $00
    rst $38
    db $10
    rst $08

Jump_031_4100:
    ld a, a
    ld c, a
    rra
    db $10
    db $eb
    ld [$86b7], sp

Call_031_4108:
    inc bc
    ei
    ld [c], a
    rst $28
    ld [c], a
    rst $38
    ld a, [c]
    ld bc, $0008
    ld [$fb00], sp
    ld a, b
    rst $38
    ld a, $ff
    ld e, $7f
    ld c, $09
    cp a
    add [hl]
    db $db
    jp nz, $100f

    sbc [hl]
    nop
    ccf
    ld b, b
    nop
    ldh [$ee], a
    ld a, b
    ld a, e
    db $fd
    ld b, d
    rst $38
    ld l, b
    jr nz, @+$01

    ld l, d
    add hl, de
    db $10
    ld a, a
    ld a, a
    ld a, a
    nop
    ccf
    ld bc, $3f00
    add b
    rra
    add b
    rra
    ret nz

    ld bc, $0120
    rst $38
    rst $38
    add c
    add c
    rst $20
    rst $20
    add c
    nop
    ld [$990f], sp
    sbc c
    add c
    add c
    inc hl
    db $10
    rrca
    nop
    ld l, $f5
    jr nz, jr_031_415c

    add hl, bc

jr_031_415c:
    ld h, b
    db $fd
    add hl, bc
    add hl, bc
    ld c, $11
    cp $fb
    ei
    ld a, l
    ld a, c
    nop
    ld a, [hl]
    ld hl, sp+$3d

jr_031_416b:
    cp b
    dec de
    db $db
    add a
    ld [hl], a
    nop
    ld b, b
    ccf
    rst $38
    inc c
    cp a
    adc h
    rst $38
    call z, Call_031_7f08
    inc c
    rst $28
    ld [$101d], sp
    nop
    rst $38
    rst JumpTable
    nop
    sbc $fd
    db $fc
    cp $fc
    rst $38
    db $ed
    rst $30
    add c
    ld c, d
    add hl, de
    nop
    rst $38
    ld a, a
    ld [hl], c
    or $f0
    daa
    ld de, $ef20
    ldh [rIF], a
    jr nz, @-$07

    ldh a, [$dd]

jr_031_419f:
    call c, $01ef
    adc $73
    ld b, b
    xor a
    nop
    rst JumpTable
    rst JumpTable
    rrca
    stop
    rst $38
    ld c, a
    rst $30
    ld b, a
    rst JumpTable
    ld b, a
    db $ed
    ld h, c
    jr nz, jr_031_422d

    ld [hl], b
    rra
    jr nz, @+$01

    ld a, [c]
    rst $28
    ld [c], a
    ei
    ld [$b7e2], sp
    add [hl]
    db $eb

jr_031_41c3:
    ld c, a
    jr z, jr_031_41c3

    ldh [rIE], a
    ret nc

    ccf
    ld [$095b], sp
    ld a, $3f
    ld d, b
    di
    ret nz

    rst $28
    ret nz

    add b
    ccf
    jr z, @+$81

    rst $38
    ld a, a
    cp $7e
    cp $7f
    nop
    ld a, h
    ld a, l
    ld hl, sp-$05
    ldh [$ee], a
    nop
    db $fc
    add c
    rst $30
    jr z, jr_031_416b

    ccf
    add b
    ccf
    nop
    ld a, a
    ret nc

    add hl, de
    rst $00
    rst $38
    nop
    ld a, $0f
    ld [hl], b
    add b
    sbc a
    ret nz

    ld d, e
    add hl, bc
    nop
    ld b, b
    ld b, d
    ld a, [de]
    add h
    nop
    ld c, b
    ld bc, $03f1
    inc bc
    rra
    ld [hl], b
    add b
    ldh [rTAC], a
    nop
    ret nz

    nop
    ldh [$80], a
    rrca
    jr c, jr_031_419f

    ld [hl-], a
    nop
    stop
    rrca
    rst $38
    rlca
    cp a
    inc bc
    ld l, a
    nop
    rst $00
    ld a, [bc]
    nop
    ld hl, $0300
    inc de
    ld [$3506], sp
    jr nz, jr_031_42ab

    nop

jr_031_422d:
    rst $38
    ccf
    rst $38
    rra
    ld a, a
    rrca
    ccf
    rrca
    nop
    ccf
    ccf
    rst $38
    rlca
    ld a, a
    inc bc
    rrca
    inc bc
    ld b, c

Jump_031_423f:
    rlca
    ld bc, $0f08
    rlca
    rra
    rrca
    ld a, a
    sub d
    ld a, [hl+]
    add e
    ld [de], a
    add hl, bc
    ld hl, sp-$02
    ldh a, [$fd]
    ldh a, [$93]

jr_031_4252:
    add hl, bc
    xor a
    ldh [$0e], a
    add $c6
    nop
    ld bc, $0859
    ld bc, $eb08
    ld a, [hl+]
    ldh [rNR32], a
    nop
    ld hl, sp+$60
    ld d, d
    add hl, bc
    adc d
    db $10
    rrca
    jr jr_031_429d

    nop
    dec bc
    rst JumpTable

jr_031_426f:
    nop
    rst $38
    add hl, sp
    rrca
    jr c, jr_031_4284

    ld a, c
    ld [$2000], sp
    rlca
    rst $20
    rlca
    ld bc, $00f9
    di
    add hl, de
    nop
    jr nc, @+$77

jr_031_4284:
    ld [$0f84], sp
    ld e, b
    rlca
    rst $38
    inc bc
    rra
    dec c
    ld b, b
    ldh [rIE], a
    jr jr_031_4252

    ld hl, sp+$00
    ld e, b
    jr jr_031_42c2

    jr nz, @+$62

    rst $38
    nop
    db $10
    db $f4

jr_031_429d:
    nop
    ld a, [de]
    rlca
    ld c, c
    ld h, e
    nop
    inc d
    nop
    ldh [rIE], a
    ld a, [de]
    nop
    db $10
    rst $10

jr_031_42ab:
    ld [$03ff], sp
    sbc a
    nop
    adc a
    add b
    di
    ld [$0024], sp
    dec de
    nop
    rst $00
    inc bc
    xor a
    ld b, [hl]
    rlca
    rst $30
    jr jr_031_42df

    ld a, a
    ccf

jr_031_42c2:
    dec b
    ld [$4000], sp
    ccf
    add b
    rrca
    ld l, b
    ldh a, [$fa]
    ldh a, [$f8]
    ldh a, [$fd]
    ld hl, sp-$20
    adc h
    ld [hl+], a
    nop
    jr @-$3f

    jp hl


    add b
    db $dd
    ld a, [hl]
    cp $63
    ld [hl+], a
    rst $38

jr_031_42df:
    ld c, c
    ld bc, $6218
    rst $38
    sbc h
    dec [hl]
    jr nc, jr_031_426f

    ld bc, $00ff
    rst $08
    nop
    db $eb
    add b
    call c, Call_031_400f
    ld [bc], a
    inc bc
    rst $28
    nop
    add a
    nop
    jp Jump_031_4069


    pop bc
    nop
    rst $38
    nop
    rst $30
    nop
    ret nz

    ldh [$fd], a
    ret nz

    nop
    rst $38
    ret nz

    push af
    ret nz

    db $e4
    add b
    ld [$4000], a
    call nc, $080f
    reti


    nop
    xor a
    nop
    stop
    ld d, c
    add c
    cp a

jr_031_431b:
    add hl, de
    add b
    inc bc
    ld [$00e8], sp
    ret z

    rlca
    ld [$a018], sp
    nop
    ld b, b
    jp nc, $7e21

    dec bc
    nop
    nop
    jr nz, jr_031_4330

jr_031_4330:
    nop
    jr jr_031_4333

jr_031_4333:
    ld c, $00

jr_031_4335:
    xor l
    nop
    ld [hl], d
    add hl, bc
    nop
    jr nc, jr_031_431b

    rst JumpTable
    ld a, l
    ld h, h
    rst $00
    rst $00
    db $eb
    ld [$7c10], sp
    nop
    ld [hl-], a
    cpl
    ld [$0028], sp
    inc b
    nop
    stop
    ld a, l
    ld a, l
    rla
    add hl, bc
    ld a, h
    nop
    rlca
    nop
    ld h, b
    inc c
    ld [de], a
    ld [hl-], a
    rrca
    ld [$001f], sp
    ld l, $00
    ld de, $0f90
    jr nz, jr_031_4335

    rst $08
    rrca
    ld [$00b7], sp
    jp z, Jump_031_4100

    ld b, c
    dec l
    ld [$0002], sp
    inc bc
    ldh [$e1], a
    dec de
    ld a, [hl+]
    ret nz

    ld bc, $0508
    db $10
    db $10
    db $10

Jump_031_437f:
    rst $38
    nop
    ld [hl], e
    rst $38
    nop
    rst $38
    adc l
    rst $38
    inc h
    rst $38
    inc b
    rst $38
    inc a
    nop
    rst $38
    add h
    rst $38
    ld a, e
    rst $38
    ld bc, $fec7
    ld [bc], a
    rst $28
    jr c, @+$01

    ld [de], a
    rst $38
    sub d
    ld bc, $9808
    jr nz, @+$01

    ld h, a
    inc sp
    call z, $ff81
    rst $38
    rst $20
    rst $20
    sbc c
    sbc c
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    ldh [$fe], a
    dec b
    rst $38
    rst $38
    nop
    add e
    nop
    ldh a, [$c0]
    ld hl, sp+$05
    ldh [rIE], a
    nop
    jr nz, jr_031_43c1

jr_031_43c1:
    rlca
    nop
    inc bc
    ld hl, sp-$08
    rst $00
    ret nz

    ccf
    dec b
    push hl
    rst $38
    nop
    inc b
    nop
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    add sp, $1a
    nop
    db $fc
    rst $38
    inc e
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    xor d
    sbc d
    nop
    add [hl]
    ld b, e
    ld bc, $c080
    rst $38
    rst $38
    rst $38
    nop
    rlca
    nop
    add $38
    ld [c], a
    inc e
    ld [hl], e
    inc c
    add hl, hl
    ld b, $14
    inc bc
    ld [bc], a
    ld bc, $0001
    dec b
    nop
    ld e, e
    inc a
    dec l
    ld e, $16
    rrca
    adc e
    rlca
    push bc

Call_031_4408:
    inc bc
    ld h, d
    add c
    pop af
    ld a, b
    ret nc

    nop
    nop
    add b
    ld h, b
    add b
    sub b
    ldh [$ec], a
    ldh a, [$f3]
    db $fc
    cp d
    ld a, a
    ld e, l
    ccf
    ld d, l
    inc d
    nop
    ld h, b
    jr c, @+$20

    rrca
    inc b
    inc bc
    ld bc, $50c0
    and b
    dec d
    ld b, b
    nop
    ld b, [hl]
    ld bc, $1123
    adc b
    ldh [$30], a
    ret nz

    adc h
    ld [hl], b
    ld h, e
    inc e
    ld d, l
    ld d, h
    nop
    jr nc, jr_031_449e

    ld h, b
    ld b, d
    add $c4
    adc l
    adc c
    inc b
    dec b
    nop
    ccf
    db $10
    rrca
    ld hl, $4b1f
    ld d, e
    or a
    ld a, a
    and a
    ld a, a
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld d, l
    ld d, l
    rst $38
    cp $fe
    cp $fe
    cp $fc
    ld a, h
    ld [hl], h
    dec b
    ld b, c
    cp $74
    rst $38
    inc [hl]
    rst $38
    ld sp, $b9b9
    cp e
    db $fc
    inc sp
    db $fc
    ld hl, $ff02
    jr c, @+$7f

    rst $00
    rst $38
    sub d
    and c
    db $fd
    add b
    add hl, hl
    jr c, @+$01

    db $e3
    rst $30
    inc e
    rst $38
    ld c, [hl]
    ld c, b
    ei
    add c
    di
    ld e, $2d
    rst $38
    add $cf
    ld d, h
    ld a, c
    ld b, c
    ld a, b
    add l
    ld a, c
    dec l
    rst $38
    ld l, h
    nop
    rst $38
    sub e
    rst $38
    sbc [hl]
    rst $38
    sub d
    rst $38
    ld [de], a
    ret nz

jr_031_449e:
    ld b, e
    ld hl, $ff6d
    ld b, $6f
    ld sp, hl
    rst $38
    inc b
    sub b
    rst $38
    add hl, bc
    rst $38
    ld c, c
    add c
    or [hl]
    nop
    ret nz

    nop
    rrca
    ld de, $3d3c
    add e
    nop
    rrca
    dec a
    inc a
    add b
    nop
    dec bc
    ld l, d
    ld c, h
    ld e, $10
    jr nz, @+$4e

    rra
    inc c
    ld e, h
    sub d
    or h
    dec b
    or l
    or [hl]
    or a
    cp b
    cp c
    rst JumpTable
    ld e, h
    rra
    inc c
    ld b, b
    ld c, l
    cpl
    pop bc

jr_031_44d6:
    jp nz, $c4c3

    push bc
    add $01
    rst $00
    ret z

    ret


    jp z, $cccb

    call $605f
    ld c, l
    rra
    inc c
    ld l, $d0
    pop de
    jp nc, $d4d3

    nop
    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    jr jr_031_44d6

    sbc $df
    ld sp, $0e1f
    ldh [$e1], a
    ld [c], a
    nop
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eb04], a
    db $ec
    db $ed
    xor $ef
    rra
    db $10
    ldh a, [$f1]
    nop
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    nop

jr_031_451e:
    ld a, [$fcfb]
    db $fd
    cp $ff
    xor d
    xor e
    add b
    rra
    ld c, $00
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $10
    rrca
    cp d
    cp e
    rra
    dec c
    xor l
    db $10
    ld de, $0012
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_031_4564

    ld a, [de]
    ld bc, $1c1b
    dec e
    ld e, $1f
    xor h
    add e
    rra
    dec c
    nop
    cp l
    jr nz, jr_031_457b

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $04
    daa
    jr z, jr_031_458c

    ld a, [hl+]

jr_031_4564:
    dec hl
    cpl
    ld l, $2f
    ld b, b
    cp h
    rra
    dec c
    ld b, [hl]
    add e
    add e
    ld sp, $3332
    nop
    inc [hl]
    dec [hl]
    ld [hl], $2c
    dec l
    or b
    or c
    or d

jr_031_457b:
    ld [hl], h
    or e
    dec l
    ld b, b
    rra

Call_031_4580:
    inc c
    ld b, a
    ld c, a
    add h
    add l
    nop
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e

jr_031_458c:
    adc h
    adc l
    jr z, jr_031_451e

    adc a
    ld c, [hl]
    ld c, e
    rra
    inc c
    ld d, a
    ld e, b
    ld e, c
    nop
    add e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    dec b
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld e, a
    ccf
    rra
    inc c
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    add e
    and l
    and [hl]
    and [hl]
    ld a, [bc]
    xor b
    xor c
    xor c
    xor b
    dec h
    and a
    ld e, [hl]
    ld c, [hl]
    ld b, b
    ld c, a
    rra
    inc c
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    add e
    ld d, l
    ld h, b
    ld d, [hl]
    ld d, a
    ld h, b
    ld e, d
    ld e, e
    add e
    ld e, l
    ld e, [hl]
    ld b, b
    ld e, a
    rra
    inc c
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    db $10
    ld h, [hl]
    ld h, a
    ld l, b
    ld e, l
    ld c, e
    ld l, c
    ld l, d
    ld l, e
    ld [$6d6c], sp
    ld l, [hl]
    ld l, a
    rra
    inc c
    ld [hl], b
    ld [hl], c
    ld [hl], d
    nop
    ld [hl], e
    ld [hl], h
    add $c7
    call $cfce
    ret nc

    ld b, b
    pop de
    inc hl
    ret nz

    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    rra
    inc c
    scf
    jr c, jr_031_463e

    ld a, [hl-]
    dec sp
    add h
    add l
    nop
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    inc e
    adc [hl]
    adc a
    cp a
    dec e
    inc c
    jr nz, @+$48

    ld bc, $1100
    ld hl, $0021
    nop
    dec bc
    rra
    ld h, $07
    rst $30
    add b
    rra
    rla
    ld a, d
    xor $07
    rra
    ld [de], a
    dec de
    add hl, bc
    add b
    dec [hl]
    rlca
    rlca
    ld sp, $1c1f
    nop
    rra

jr_031_4639:
    ld [de], a
    rlca
    rra
    ld c, $f2

jr_031_463e:
    rrca
    ld c, $1f
    ld hl, $0f1e
    jr nz, jr_031_464d

    ld bc, $141f
    inc bc
    rst $38
    ld b, b
    ld h, l

jr_031_464d:
    ld l, $1f
    rrca
    jr nz, jr_031_46a4

    ld b, b
    dec sp
    ld [hl], c
    nop
    ld a, e
    ld h, b
    rra
    rrca
    ld bc, $0407
    ldh [$29], a
    ld b, $05
    rra
    dec d
    ld b, $1f
    ld e, $01
    rlca
    ld h, b
    cpl
    daa
    daa
    ld [hl+], a
    rlca
    adc [hl]
    rra
    ld de, $0f00
    rra
    ld sp, $0a5b
    and b
    ld [bc], a
    jr nz, jr_031_469a

    ld d, $09
    nop
    inc c
    rra
    ld c, $40
    rst $38
    nop
    inc de
    cp $ff
    inc e
    ldh [$c7], a
    ld hl, sp-$2f
    dec h
    jr nz, jr_031_4639

    adc a
    inc c
    ldh a, [rP1]
    ld b, b
    dec b
    rrca
    ldh a, [$d4]
    rst $38
    nop

jr_031_469a:
    adc a
    ld bc, $926e
    ld b, b
    ld a, a
    add b
    xor a
    ldh [$1f], a

jr_031_46a4:
    ld l, l
    ccf
    inc a
    nop
    ret nz

    ld [hl+], a
    ld c, l
    inc hl
    ld b, c
    nop
    rlca
    jr nc, jr_031_46b1

jr_031_46b1:
    push bc
    ld c, l
    xor a
    ld d, l
    rst $38
    inc c
    inc bc
    ld l, l
    rrca
    reti


    jr nz, jr_031_46d4

    ld b, e
    ld h, b
    ld d, b
    rst $08
    xor c
    jr nz, jr_031_4704

    ld b, e
    ld d, h
    adc l
    rra
    ldh [$6f], a
    ld b, d
    ld a, [bc]
    ld c, c
    ldh a, [rP1]
    inc bc
    db $fc
    dec h
    add b
    ld d, c

jr_031_46d4:
    ld a, a
    dec l
    cp $25
    rst $38
    ret nz

    nop
    ld h, b
    ld a, [hl-]
    ld bc, $31fe
    jr nz, @+$25

    jr nz, @-$70

    ld bc, $28e1
    inc h
    ld c, a
    ld bc, $38ff
    rlca
    ld l, a
    inc h
    ldh a, [rIF]
    cpl
    ld h, b
    add b
    cpl
    ld d, a
    rst $38
    ld c, b
    ld a, [hl+]
    inc sp
    nop
    ld a, a
    ld e, e
    ldh [$1f], a
    ccf
    rst JumpTable
    inc h
    add b

jr_031_4703:
    add b

jr_031_4704:
    ld l, $3c
    ld b, c
    daa
    xor a
    or h
    jr nz, @+$2c

    adc a
    ld hl, $85d6
    ld a, [hl+]
    call nc, Call_031_5700
    xor b
    cp a
    ld b, b
    db $fc
    nop
    ldh [rP1], a
    add e
    ld l, l
    ld b, b
    cp a
    rra
    nop
    ret nz

    ld c, b
    dec h
    adc e
    ld b, b
    rst $38
    rlca
    ld hl, sp+$29
    adc a
    ld l, b
    ld b, c
    ld c, a
    ccf
    ld b, [hl]
    cp $01
    daa
    dec a
    xor a
    ld hl, $229d
    push de
    ld a, [hl+]
    ld b, l
    add b
    daa
    add b
    ld b, h
    push hl
    db $ed
    ld l, a
    ld h, h
    push hl
    ld a, [de]
    daa
    rlca
    ld c, b
    ld b, b
    ld bc, $0f4f
    nop
    ld b, $f8
    ccf
    ret nz

    cp [hl]
    daa
    ret nz

    ld c, c
    dec h
    ld h, a
    add hl, sp
    inc hl
    db $fc
    cp e
    ld e, l
    add b
    ld c, l
    ld h, a
    dec h
    rra
    ld b, l
    jr nz, @+$66

    inc bc
    ld c, c
    ld h, b
    ldh a, [rIF]
    daa
    ld a, h
    inc bc
    ld e, b
    ld bc, $f84d
    adc a
    jr z, jr_031_4703

    ld l, a
    ld bc, $fe7c
    dec l
    cp l
    ld l, a
    xor l
    rrca
    ld a, [bc]
    sub d
    ld l, l
    sub h
    rrca
    ld c, $f5
    ld a, [bc]
    ld l, l
    ldh [rIF], a
    add hl, bc
    ld a, a
    add b
    cp h
    ld l, a

jr_031_478c:
    rlca
    rst $28
    ld c, e
    ld [hl+], a
    ld b, e
    nop
    ld bc, $67b2
    rst $38
    dec h
    ld l, a
    ret nz

    ccf
    ld [hl], a
    ld b, $ce
    ld c, a
    dec h
    db $fc
    inc bc
    ld c, d
    ld b, a
    ld hl, $0480
    rst $38
    add sp, -$01
    ld hl, sp+$07
    ld l, l
    rrca
    ldh a, [$90]
    inc h
    ldh a, [rIF]
    daa
    ld e, a
    rst $38
    rlca
    ld hl, sp-$61
    ld l, a
    cp $01
    inc h
    ld h, a
    jr nz, jr_031_47ed

    or c
    sbc [hl]
    ld [hl+], a
    inc bc
    db $fc
    ld l, a
    ld [hl], $26
    ld sp, $671f
    ldh [rHDMA2], a
    ld a, [hl+]
    rst $38
    db $fc
    ld b, h
    ld b, [hl]
    pop bc

jr_031_47d2:
    push de
    and h
    jr nz, jr_031_47d2

    adc b
    ld hl, sp+$4f
    ld bc, $478f
    inc bc
    ld c, l
    add b
    nop

jr_031_47e0:
    ld bc, $204f
    ld l, a
    adc a
    ld a, l
    rrca

jr_031_47e7:
    nop
    db $fc
    ld d, [hl]
    xor a
    ld [hl], c
    ld [hl], h

jr_031_47ed:
    xor b
    jr nz, jr_031_47e0

    ld c, b
    ld bc, $f84a

jr_031_47f4:
    rlca
    inc bc
    push de
    ld c, l
    jr nz, jr_031_4819

    ld c, a
    cp $9d
    db $fc
    adc a
    jp hl


    jr nz, jr_031_482c

    jr nz, jr_031_47f4

    ld d, c
    rlca
    ld hl, sp+$0f
    ld a, [bc]
    cp d
    jr nz, jr_031_478c

    ld d, c
    xor a
    jr nz, jr_031_482f

    ld c, d
    rrca
    ld [bc], a
    ldh a, [rNR34]
    ldh [$03], a
    db $fc
    ret nz

jr_031_4819:
    adc a
    ld hl, sp+$02
    rst $38
    inc e
    ldh [$e0], a
    nop
    add c
    inc [hl]
    nop
    ldh [$31], a
    dec hl
    jr nz, jr_031_4838

    rst $38
    ld h, b
    rra

jr_031_482c:
    nop
    ld [hl-], a
    nop

jr_031_482f:
    add b
    ld c, a
    ld hl, $e01f
    cpl
    db $fc
    ld a, [de]
    rst $38

jr_031_4838:
    inc c
    ldh a, [$3f]
    jr nz, jr_031_47e7

    sub c
    ld a, $38
    pop bc
    ret nz

    ld c, e
    and b
    ld l, a
    ld a, a
    rst $38
    add d
    ld [bc], a
    ld a, a
    ld h, b
    rra
    inc e
    inc bc
    inc bc
    ld c, a
    ld hl, sp-$2d
    ld [hl], c
    ld b, b
    ld a, d
    ld b, [hl]
    ldh a, [rIF]
    ld d, b
    ld [hl], c
    and [hl]
    add b
    rlca
    ld d, c
    adc $01
    ld [hl], c
    dec hl
    db $f4
    xor d
    sub c
    ld a, a
    ld d, c
    ld a, a
    ld c, a
    ldh a, [rBGP]
    ld hl, sp-$79
    pop de
    add b
    ld a, a
    cp $01
    dec l
    ld h, c
    and b
    ld c, h
    ccf
    adc e
    ld e, $e0
    rst $28
    ld b, a
    nop
    jr c, jr_031_4881

    ret nz

    nop

jr_031_4881:
    nop
    rra
    ldh [$80], a
    ld c, l
    cp $82
    ld c, a
    ret nz

    ccf
    ld [hl], e
    rrca
    rlca
    jr nc, jr_031_4890

jr_031_4890:
    ld [$fe01], sp
    ld hl, sp-$01
    inc hl
    rlca
    ld hl, sp-$04
    call z, $5532
    jr c, jr_031_48a5

    inc h
    dec hl
    ld hl, sp+$00
    ld d, d
    ldh [$59], a

jr_031_48a5:
    ldh [rVBK], a
    inc bc
    db $fc
    inc h
    add b
    ret nc

    ld c, e
    ld h, b
    di
    ld c, l
    ccf
    ret nz

    ret nz

    rst $38
    add hl, hl
    cp $ff
    ld h, b
    ld hl, sp+$5d
    cp $01
    inc h
    jr nz, @-$5e

    ld e, a
    daa
    ldh [rIE], a
    add c
    cp $1f
    ld h, [hl]
    ldh [$27], a
    ld hl, $7c83
    ld h, l
    ld [hl], $f8
    ld h, c
    rlca
    ld h, $69
    ldh a, [rIF]
    ccf
    ret nz

    dec h
    ld sp, hl
    jr nz, jr_031_4909

    ld sp, $4b6f
    nop
    cp $3e
    sbc b
    ld b, b
    inc bc
    db $fc
    ld a, c
    ld hl, $3fc0
    ccf
    jr z, @+$01

    cp $4d
    ldh a, [$4c]
    ld a, a
    add b
    rrca
    or [hl]
    ld b, [hl]
    ldh a, [rHDMA5]
    ld [hl+], a
    inc a
    ld a, h
    ld b, c
    ld a, b
    dec a
    add a
    ld bc, $208f
    ld l, l
    ld [hl+], a
    rlca
    dec hl
    ld [bc], a
    rst $38
    rrca
    rst $38

jr_031_4909:
    ldh [$1f], a
    ld bc, $0f8f
    ld e, h
    ldh a, [rNR50]
    ret nz

    ld d, c
    dec h
    ld [hl+], a
    cp $00
    ld [bc], a
    add b
    nop
    ld hl, sp+$00
    ccf
    ret nz

    dec hl
    ldh a, [$36]
    rst $38
    ld bc, $604f
    inc bc
    inc l
    scf
    ld bc, $5dbc
    rst $38
    dec h
    add hl, hl
    ld l, l
    ld d, a
    rst $38
    rrca
    ret c

    ld c, a
    dec h
    ret nz

    add hl, sp
    ld c, l
    add b
    ld a, a
    ld e, $f4
    ld c, l
    ld l, a
    jr c, @+$22

    add sp, -$61
    ldh [rIE], a
    ld e, b
    db $fc
    rst $08
    ld e, a
    adc a
    ld h, c
    rrca
    ldh a, [$a2]
    jr @+$5f

    add b
    ld a, a
    xor e
    ld h, c
    ret nz

    rst $38
    ld d, a
    ld b, $a8
    rlca
    ld hl, sp+$02
    db $fd
    ld de, $640a
    call nc, $0001
    ld d, b
    and b
    rrca
    ldh a, [$0b]
    db $f4
    ld [hl], a
    sub b
    ld l, a
    ld d, b
    nop
    jr nz, jr_031_49af

    nop
    and h
    nop
    inc hl
    ld a, [$3500]
    db $fc
    nop
    add sp, $4d
    and b
    ld l, d
    ld d, l
    ld e, e
    nop
    inc c
    dec hl
    rrca
    rrca
    rrca
    rrca
    rrca
    ldh [rNR43], a
    rra
    ld a, [de]
    db $10
    dec c
    cp [hl]
    ld b, b
    ret nc

    rrca
    dec c
    db $10
    ld [$6f00], sp
    sub b
    rrca
    db $10
    inc c
    nop
    ld d, a
    nop
    rla
    rst $38
    nop
    inc bc
    dec c
    add hl, bc
    ld a, [hl+]
    ld c, l
    ld h, c
    and b
    ld d, l
    dec hl
    ld l, e
    rra
    inc hl
    ldh [$cf], a
    inc bc
    ld c, a

jr_031_49af:
    db $10
    ld hl, sp+$07
    ldh a, [$8b]
    stop
    ld d, a
    nop
    ld a, b
    xor b
    ld [hl+], a
    jr nc, jr_031_49de

    ld b, b
    and b
    nop
    inc e
    ld [hl], h
    and e
    adc e
    ld b, c
    nop
    rrca
    or l
    ld sp, $ffc0
    ld [hl], c
    push af
    db $10
    dec bc
    cpl
    ld hl, $ff80
    rst $28
    rrca
    dec c
    cp c
    ld h, c
    rst $00
    db $10
    add hl, bc
    ld l, l
    nop
    ld a, [bc]

jr_031_49de:
    add $39
    dec l

Jump_031_49e1:
    ld b, c
    ld c, c
    rrca
    dec bc
    ldh [$1f], a
    dec bc
    rst $38
    ld a, a
    rrca
    dec bc
    add b
    nop
    stop
    rst $38
    inc b
    ei
    ld [$48f7], sp
    nop
    or a
    ld hl, $019a
    call nc, Call_031_4580
    ld [de], a
    add hl, bc

Jump_031_4a00:
    rst JumpTable
    ret nc

    rst $38
    ei
    rra
    dec c
    cpl
    ret nc

    ld sp, $0089
    inc c
    call nc, $002b
    rrca
    dec c
    ld b, $f9
    cpl
    adc c
    ld hl, $fff0
    db $fd
    rst $08
    and b
    ld e, a
    ld l, a
    or b
    ld h, c
    and b
    sub e
    xor e
    ld bc, $05ff
    rst $38
    ld d, $1f
    rst $38
    ld a, a
    rrca
    add hl, bc
    ld c, a
    ld c, c

jr_031_4a2e:
    and b
    add sp, $42
    rla
    ld l, $7f
    add b

jr_031_4a35:
    rlca
    ld hl, sp+$33
    db $dd
    nop
    ld [hl+], a
    rst $28

jr_031_4a3c:
    db $10
    jr nc, @-$2f

    rra
    rst $38
    add [hl]
    inc hl
    ld bc, $2ce0
    nop
    rst $08
    jr nc, jr_031_4a6d

    ld a, c
    nop
    rst $38
    rst $38
    cp a
    ld a, e
    rra
    nop
    ret nz

    nop
    ld b, [hl]
    db $fc
    ld c, l
    add c
    ld a, [hl]
    ldh [$3e], a
    jr nz, jr_031_4a3c

    inc c
    rst $38
    dec c
    cp a
    nop
    jr nz, jr_031_4ae3

    jr nc, jr_031_4a35

    jp nc, $804f

    ccf
    sub c
    ld a, a
    add b

jr_031_4a6d:
    rst $28
    rst $38
    ld a, [hl-]
    ld a, a
    rlca
    sub c
    rrca
    add hl, bc
    jr nz, jr_031_4a78

    cpl

jr_031_4a78:
    ld hl, sp-$65
    rrca
    inc c
    rst $38
    rra
    jr nc, jr_031_4a8f

    dec c
    rst $38
    dec l
    rrca
    dec bc

Jump_031_4a85:
    ld l, [hl]
    ld d, l
    ld c, $0e
    ld c, a
    xor d
    rrca
    dec c
    add b
    db $10

jr_031_4a8f:
    ld a, [bc]
    ei
    jr z, @+$01

    ldh a, [$2d]
    ldh [$ef], a
    cp [hl]
    rst $38
    jr c, jr_031_4aa7

    db $fc
    nop
    ret nz

    nop
    jr nz, jr_031_4a2e

    rst $30
    rst $38
    inc hl
    ldh [$f8], a
    ld c, e

jr_031_4aa7:
    ld bc, $1f00
    ld d, b
    ld bc, $200e
    nop
    rst $38
    pop bc
    db $fd

jr_031_4ab2:
    ld [$1076], sp
    xor [hl]
    jr nz, jr_031_4ac8

    res 5, l
    ld [$10f7], sp
    rst $20
    jr nz, jr_031_4ac0

jr_031_4ac0:
    rst $08
    ld b, b
    ld a, $c4
    sbc c
    add d
    ld a, l
    rrca

jr_031_4ac8:
    inc b
    ldh a, [$b6]
    ld c, c
    dec bc
    db $f4
    inc sp
    ld e, l
    and d
    ldh [$35], a
    dec h
    inc a
    db $fd
    nop
    ld d, b
    xor a
    xor a
    ld bc, $5e50
    add b
    add c
    ld a, [hl]
    ldh a, [rIF]
    cpl

jr_031_4ae3:
    add b
    ld [hl-], a
    cp a
    ld b, b
    ld l, b
    sub a
    db $fc
    inc bc
    rlca
    ld bc, $e000
    nop
    jr c, jr_031_4ab2

    rst $08
    jr nc, jr_031_4b34

    nop
    ret nz

    nop
    ld [de], a
    db $ec
    ld l, h

jr_031_4afb:
    rst $38
    cp $00
    sbc b
    ld h, b
    dec d
    nop
    cpl
    jr nz, jr_031_4b65

    nop
    ld b, b
    ld b, b
    add b
    dec h

Jump_031_4b0a:
    inc bc
    nop
    inc h
    inc bc
    ld [hl], e
    rrca
    ld h, b
    db $fc
    sub a
    ld h, b
    ldh [rP1], a
    add hl, sp
    ret nz

    adc [hl]
    ld b, l
    ldh a, [$ab]
    inc c
    nop
    ld a, a
    ld b, l
    adc l
    adc e
    nop
    ld [hl], b
    nop
    adc h
    ld [hl], b
    ld [hl], d
    db $fd
    rst $38
    nop
    inc b
    cpl
    nop
    ld e, a
    nop
    ld a, [bc]
    cp [hl]
    nop
    and b

jr_031_4b34:
    ld a, [de]
    nop
    cp $00
    ld sp, $7f63
    ld c, l
    jr jr_031_4afb

    ld b, e
    rrca
    ld c, e
    dec [hl]
    inc hl
    ld hl, $4d1f
    and $35
    ld l, l

jr_031_4b49:
    jr nz, jr_031_4b49

    ld bc, $23b1
    ld d, b
    jp c, $534d

    ld e, a
    ld l, a
    ld hl, $4dd4
    ccf
    adc b
    dec a
    nop
    cp b
    ld b, b
    dec hl
    add b
    nop
    ldh a, [$b0]
    ld c, l
    rra
    ld d, l

jr_031_4b65:
    ld h, l
    inc h
    rst $38
    jr @-$21

    nop

jr_031_4b6b:
    ld [$188a], sp
    inc e
    adc c
    and e
    sub l
    db $db
    nop
    ld e, l
    ld hl, sp+$4a
    ld a, b
    jr z, jr_031_4beb

    adc h
    add l
    nop
    ld d, b
    db $db
    call nc, $88fa
    pop hl
    inc d
    ld b, a

jr_031_4b85:
    nop
    ld e, [hl]
    db $ed
    xor h
    rst $08
    jr nz, jr_031_4b6b

    ld de, $00ec
    db $10
    ld h, c
    nop
    sbc d
    inc b
    dec hl
    ld hl, $025b
    ld h, h
    or l
    call z, $006e
    rst $38
    ld hl, $0080
    ld a, a
    ld b, b
    or a
    ld b, h
    xor e
    ld [bc], a
    ret


    add c
    nop
    call c, Call_031_5841
    ld e, $e0
    ld [hl], e
    add b
    inc l
    nop
    sub e
    ld d, $e1
    ld d, a
    jr z, jr_031_4be4

    ret nz

    ld e, c
    ld b, d
    and h
    dec sp
    db $eb
    nop
    ret nc

    cpl
    dec h
    xor b
    nop
    ld d, a
    rst $28
    nop
    ld b, l
    nop
    cp e
    ld b, h
    ld b, a
    inc b
    cp b
    rst $28
    rra
    di
    rrca
    cpl
    dec hl
    call nc, $df28
    nop
    jr nz, jr_031_4b85

    jr z, jr_031_4bdd

jr_031_4bdd:
    rst $28
    ldh a, [rTMA]
    ld hl, sp-$01
    ld a, a
    add b

jr_031_4be4:
    rst $30
    ld c, l
    jr nz, @-$4a

    call nz, $204f

jr_031_4beb:
    ldh [rP1], a
    ld a, [$858d]
    nop
    ld a, [hl+]
    ld e, [hl]
    ld bc, $012f
    ld c, c
    jr z, jr_031_4c3c

    ld [bc], a
    nop
    nop
    ld a, h
    inc bc
    add d
    ld a, l
    ld e, a
    and b
    cpl
    jr nz, jr_031_4c05

jr_031_4c05:
    dec b
    ld c, l
    inc b
    nop
    xor d
    nop
    dec l
    ld h, l
    ret nc

    dec a
    ld hl, $01fe
    inc hl
    dec d
    ld d, c
    add hl, de
    add b
    nop
    ld d, l
    ld c, l
    ld hl, $5fa0
    inc hl
    ld b, h
    ld [hl], l
    ld c, a
    ld a, [hl+]
    nop
    ld d, a
    adc a
    dec bc
    db $f4
    add e
    inc hl
    ld c, e
    nop
    dec d
    nop
    cp a
    adc l
    ld h, c
    ld [bc], a
    ld d, c
    nop
    db $fd
    inc bc
    ld h, b
    rra
    db $ed
    xor b
    nop
    ld d, a
    ld h, c

jr_031_4c3c:
    cp $f0
    rst $38
    ld b, $f9
    db $fc
    jr nz, jr_031_4c44

jr_031_4c44:
    ldh a, [rKEY1]
    ld hl, sp+$07
    inc b
    sub [hl]
    ld h, l
    nop
    or a
    and e
    ld [hl], c
    and e
    dec h
    ld h, [hl]
    ld [$0066], a
    ld h, e
    xor d
    xor [hl]
    xor e
    xor e
    or h
    sub l
    rla
    nop
    ld a, $53
    ld a, [hl-]
    jp nc, $f69b

    or d
    or a
    nop
    di
    cp l
    push af
    cp l
    cp l
    adc h
    dec e
    jp c, Jump_031_4a00

    ld e, d
    ld l, a
    or e
    sub [hl]
    cp b
    call c, $0039
    ld a, a
    xor c
    db $ed
    xor d
    cp [hl]
    and h
    cp a
    ret c

    nop
    cp l
    sub b
    ret c

    add b
    and l
    adc d
    rra
    ld d, a
    nop
    or a
    cp l
    rst JumpTable
    or h
    rst JumpTable
    nop
    rst $38
    nop
    nop
    cp a
    db $10
    call Call_031_4108
    inc e
    ld [hl], a

jr_031_4c9b:
    ldh [rP1], a
    and c
    add sp, -$36
    ret z

    cp $01
    cp $ab
    ld bc, $5f54
    and b
    rrca
    ldh a, [rNR22]
    add sp, $39
    jr nz, jr_031_4cc0

    rst $28
    inc hl
    or a
    ld [$00ff], sp
    ld de, $e000
    ld a, [$c301]
    inc a
    ret c

    rlca
    ld [bc], a

jr_031_4cc0:
    nop
    db $fd
    jr z, jr_031_4c9b

    db $dd
    jr nz, @-$02

    inc bc
    adc c
    nop
    ld b, $57
    add b
    ld d, a
    xor b
    dec l
    ld [de], a
    or b
    ld b, b
    ld c, a
    ccf
    db $e4
    dec de
    adc c
    db $76
    add b
    ld a, a
    nop
    ld [hl+], a
    db $dd
    push af
    ld a, [bc]
    ld a, [hl]
    add c
    ld d, l
    xor d
    add c
    cpl
    cp a
    ld b, b
    ld c, h
    or e
    db $10
    rst $28
    daa
    add h
    ld hl, $45ba
    ld bc, $25fe
    push bc
    ld a, [hl-]
    inc b
    cp h
    ld a, a
    ld a, a
    rst $38
    db $fd
    ld c, a
    xor d
    ld d, l
    add b
    ld a, a
    db $fd
    ld [bc], a
    cp a
    ld b, b
    ld d, a
    xor b
    push bc
    ld [de], a
    ld a, [$fd02]
    dec hl
    ld b, b
    cp a

jr_031_4d0f:
    inc hl
    db $db
    nop
    jr nz, jr_031_4d0f

    inc b
    pop de
    ld c, $5f
    and b
    rlca
    inc b
    ld a, b
    ld d, a
    and b
    inc bc
    db $fc
    cpl
    dec e
    ldh [rP1], a
    dec [hl]
    jp nz, $3cc2

    rst $30
    ld [$018e], sp
    ld [$4891], sp
    inc e
    db $e3
    cpl
    rst $20
    nop
    sbc a
    nop
    nop
    reti


    jr nz, jr_031_4d57

    ld [c], a
    ld c, l
    or d
    ld d, $18
    ldh [rNR43], a
    pop bc
    cpl
    jr nz, @+$09

    rst $38
    ldh a, [rDIV]
    rrca
    rst $38
    nop
    ld bc, $c000
    rst $38
    ld c, d
    ld l, b
    or l
    dec l
    ld hl, $0f71
    add hl, bc

jr_031_4d57:
    ld b, b
    cp a
    or l
    ld b, [hl]
    ld c, d
    cpl
    ld e, a
    nop
    ld a, [bc]
    rst $08
    ld hl, $6d49
    or [hl]
    ld b, h
    ld b, c
    dec d
    rrca
    rrca
    ld hl, $503f

jr_031_4d6d:
    inc c
    inc bc
    nop
    xor h
    ld d, e
    adc $41
    dec d
    ld [bc], a
    inc sp
    add b
    ld a, a
    dec c
    ld a, [bc]
    ld hl, $f807
    dec c
    inc c
    ld hl, $2709
    nop
    cp a
    ld b, b
    inc sp
    ld bc, $effe
    sub [hl]
    jr z, jr_031_4d6d

    nop
    ldh [$95], a
    ld d, b
    jr nz, jr_031_4d9a

    inc hl
    nop
    rra
    ld b, a
    rrca
    nop
    ld e, a

jr_031_4d9a:
    ld a, [hl]
    ld b, c
    ldh [$3f], a
    ld sp, $fca9
    inc bc
    ret nz

    ccf
    cp $00
    nop
    ld bc, $fb00
    nop
    cp $01
    ldh a, [$66]
    rrca
    dec hl
    sub h
    nop
    inc bc
    and [hl]
    ld h, h
    rst $38
    db $e4
    ld [hl+], a
    xor l
    ld hl, $807f
    inc h
    rrca
    ldh a, [$e1]
    xor e
    ld bc, $400d
    rrca
    rst $38
    add b
    ld a, a
    add hl, hl
    and b
    nop
    ld a, [bc]
    inc bc
    ld d, a
    rrca
    ldh a, [rSB]
    cp $f8
    and $5b
    ld l, a
    inc h
    ld hl, sp+$07
    inc hl
    ld c, d
    rst $38
    ld d, c
    ret nz

    ld b, h
    ld bc, $f089
    rrca
    cp $68
    adc h
    ld l, d
    nop
    ret nz

    ccf
    adc c
    ld bc, $800b
    rst $38
    inc c
    add sp, -$01
    ld a, [$60ff]
    inc de
    inc c
    ret z

    rst $38
    ld b, b
    db $fc
    sub b
    ld hl, sp+$00
    pop hl
    nop
    sub [hl]
    nop
    nop
    rra
    nop
    ldh a, [rIF]
    ret nz

    ccf
    ld hl, sp+$07
    jr nz, @-$1e

    rra

jr_031_4e0f:
    add hl, hl
    ld a, $01
    pop bc
    ld a, $07
    jr jr_031_4e0f

    ld l, b
    sub a
    inc a
    ld b, b
    add b
    nop
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    nop
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    inc b
    adc a
    ld sp, hl
    ld sp, hl
    ld a, [$1efa]
    inc c
    sub b
    sub c
    nop
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    nop
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    jr nc, @+$33

    jr nz, jr_031_4e7d

    inc sp
    rra
    inc c
    and b
    and c
    and d
    and e
    and h
    nop
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    ld bc, $aead
    xor a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    rra
    inc c
    nop
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    nop
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ld [$3f2f], sp
    ccf
    cpl

jr_031_4e7d:
    rra
    inc c
    ret nz

    pop bc
    jp nz, $c300

    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cb00

    call z, $cecd
    rst $08
    inc a
    dec a
    ld a, $40
    ld a, $1f
    inc c
    ret nc

    pop de
    jp nc, $d4d3

    push de
    nop
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    ld [bc], a
    sbc $df
    inc [hl]
    dec [hl]
    ld [hl], $37
    rra
    inc c
    ldh [rP1], a
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    rst $20
    nop
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    ld b, h
    db $10
    ld b, l
    rst $38
    ld b, h
    rra
    inc c
    ldh a, [$f1]
    ld a, [c]
    di
    nop
    db $f4
    push af
    or $f7
    ld hl, sp-$05
    ei
    rst $20
    jp nz, $2420

    ld hl, sp-$04
    db $fd
    cp $1f
    inc c
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0900], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    jr c, jr_031_4f03

    add hl, sp
    ld a, [hl-]
    dec sp
    rra
    inc c
    db $10
    ld de, $1312
    nop
    inc d
    dec d
    ld d, $17
    jr jr_031_4f1c

jr_031_4f03:
    ld a, [de]
    dec de
    nop
    inc e
    dec e
    ld e, $1f
    ld b, [hl]
    ld b, a
    inc de
    ld [de], a
    add b
    rra
    inc c
    jr nz, jr_031_4f34

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    daa
    jr z, jr_031_4f45

jr_031_4f1c:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $07
    add sp, -$18
    inc h
    inc hl
    ld [hl+], a
    rra
    inc c
    nop
    ld h, b
    ld e, e
    nop
    nop
    inc de
    ld bc, $0b00
    rra
    and b

jr_031_4f34:
    inc b
    nop
    inc de
    rra
    ld e, $3b
    inc h
    inc h
    rra
    ld e, $20
    rra
    inc c
    dec b
    nop
    add hl, bc
    ld e, b

jr_031_4f45:
    db $db
    ret


    rra
    inc c
    inc bc
    rra
    add hl, bc
    nop
    add hl, bc
    dec h
    rra
    dec c
    nop

Jump_031_4f52:
    ld a, [bc]
    db $e3
    ld e, d
    xor b
    rra
    inc c
    ld [bc], a
    ld [bc], a
    ld b, $00
    ld de, $0c1f
    add hl, hl
    ld bc, $2102
    rlca
    dec e
    dec c
    ld [hl+], a
    ld hl, $0d1e
    call z, $2320
    rlca
    rlca
    cp d
    daa
    ld [hl+], a
    ld [bc], a
    xor [hl]
    ld a, $22
    rra
    inc c
    nop
    nop
    inc de
    rra
    ld c, h
    ld de, $0001
    inc bc
    ld bc, $0708
    nop
    rrca
    ld bc, $5108
    rra
    ld bc, $3f08
    ld bc, $7f18
    nop
    ld a, [hl]
    ld bc, $1518
    ld a, h
    nop
    ld hl, sp+$01
    ld [$01f0], sp
    jr @-$1e

    ld bc, $5808
    ret nz

    ld bc, $8008
    ld bc, $0008
    ld b, b
    ld a, h
    nop
    ld a, b
    inc bc
    nop
    ld [hl], b
    nop
    jr nc, jr_031_4fb2

jr_031_4fb2:
    jr nz, @+$03

    ld [$b000], sp
    dec d
    inc b
    nop
    inc c
    ld bc, $0e08
    ld bc, $1e08
    ld bc, $6818
    inc a
    ld bc, $3918
    db $10
    ld hl, sp+$1d
    ld [$0707], sp
    rrca
    ld bc, $1f0f
    rra
    ld [hl], e
    ld [hl], e
    ld [hl], b
    ld [hl], b
    jr z, @+$0a

    ld h, d
    nop
    ld e, [hl]
    jr jr_031_4fdf

    db $10

jr_031_4fdf:
    jp Jump_031_7b00


    dec sp
    db $10
    ldh [rP1], a
    pop hl
    ld hl, sp-$08
    jr c, @+$3a

    cp b
    cp b
    add b
    ret nz

    ld [hl], h
    db $10
    ld h, d
    jr nz, @+$04

    nop
    ld b, $00
    ld e, [hl]
    nop
    ld b, [hl]
    call c, $088a
    rlca
    nop
    ld [$0829], sp
    dec d
    db $10
    stop
    nop
    nop
    inc bc
    ld [$1803], sp
    inc bc
    ld a, b
    rst JumpTable
    ld d, h
    ld [$1001], sp
    ld [hl], b
    ld a, [hl-]
    db $10
    or b
    jr jr_031_5019

jr_031_5019:
    jr nz, jr_031_506c

    ld [$1856], sp

jr_031_501e:
    ld a, [de]
    ld b, b
    add b
    ld b, b
    jp $1610


    jr nc, jr_031_5027

jr_031_5027:
    ld c, d
    ld [$8007], sp
    ld bc, $0318
    inc b
    inc bc
    nop
    ld bc, $0102
    jr nc, jr_031_5036

jr_031_5036:
    nop
    ld [bc], a
    ld [$6000], sp

jr_031_503b:
    ret nz

    jr nz, jr_031_501e

    stop
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    nop
    db $fc
    ld [bc], a
    nop
    db $fc
    ld [bc], a
    ld a, [hl]
    add b
    ld a, [hl]
    add c
    ld a, $c1
    ld [bc], a
    ccf
    ret nz

    ccf
    ld b, b
    rra
    ld h, b
    ld bc, $0f20
    ld [hl], b
    ldh a, [rSB]
    db $10
    ld d, d
    ld c, b
    nop
    jr z, @+$04

    ld bc, $020c
    ld a, d
    jr c, jr_031_503b

    db $10
    ld [c], a

jr_031_506c:
    ld [$0950], sp
    ld bc, $ff10
    ld bc, $f018
    add c
    dec h
    ld d, b
    inc a
    inc bc
    ld [hl], b
    adc [hl]
    nop
    db $fc
    ld h, [hl]
    add hl, hl
    ld h, b
    ldh [$5a], a
    ld e, c
    nop
    jr jr_031_50e7

    ld h, h
    sub b
    ldh a, [rNR10]
    nop
    ld [hl], a
    db $10
    rla
    jr nc, jr_031_5098

    ld [hl], b
    ld b, [hl]
    jr nc, @+$71

    jr nc, @+$23

    add hl, de

jr_031_5098:
    nop
    ld h, b
    ld bc, $090f
    call nz, $c021
    ld [$2813], sp
    ld [hl], b
    ld [$096e], sp
    ret nc

    ld sp, $a800
    add b
    add b
    add b
    ret nz

    or l
    ld [hl], c
    ld [$faff], sp
    add hl, de
    or $31
    jp $0994


    rlca
    jr z, jr_031_5125

    push bc
    or e
    jr nz, @+$03

    jr nc, jr_031_50e2

    nop
    pop bc
    cp d
    add hl, bc
    inc bc
    rra
    cp b
    or a
    inc hl
    jr nc, @+$41

    adc e
    jr c, jr_031_50f0

    add b
    cp $ef
    ld [$112f], sp
    ld hl, $c620
    rrca
    db $10
    ld de, $f810
    nop
    db $f4
    rst $38

jr_031_50e2:
    ld l, b
    dec bc
    jr nc, jr_031_5136

    dec l

jr_031_50e7:
    nop
    xor b
    pop de
    add hl, bc
    db $fc
    dec h
    ld [$103d], sp

jr_031_50f0:
    ld a, a
    ld e, e
    ld [$1f57], sp
    or e
    ld [$4103], sp
    ld [$47e0], sp
    ld [$10e3], sp
    or [hl]

Call_031_5100:
    ld b, d
    ld e, a
    ld a, a
    add sp, $78
    ld hl, sp+$39
    jr @+$03

    jr nc, jr_031_5174

    ld b, c
    call z, $0032
    jr nz, jr_031_518e

    db $10
    jp nz, Jump_031_4b0a

    ld de, $1001
    db $10
    inc hl
    ld [de], a
    inc hl
    inc b
    or a
    ld c, c
    ldh [$bd], a
    jr nc, jr_031_5133

    inc hl
    ld e, e

jr_031_5125:
    ld a, [hl-]
    ret nz

    ret nz

    ldh a, [$f0]
    ld a, b
    inc bc
    ld a, b
    ld a, $3e
    rra
    rra
    rlca
    dec sp

jr_031_5133:
    add hl, bc
    ld d, [hl]
    add hl, bc

jr_031_5136:
    ld a, b
    ret nz

    xor e
    ld a, [de]
    nop
    adc b
    jp hl


    ld [hl+], a
    nop
    db $10
    rrca
    rrca
    ld bc, $2110
    nop
    ld a, $af
    ld [hl], b
    add b
    add b
    ldh a, [$f0]
    ld b, e
    rst $38
    nop
    jr c, jr_031_5171

    rra
    ld bc, $6de1
    ld [$7800], sp
    ld h, $fe

jr_031_515b:
    cp $21
    jr nc, jr_031_515b

    db $fc
    xor l
    add d
    nop
    sub b
    ret nz

    ld [$f8c0], sp
    ld hl, sp-$02
    xor [hl]
    ld [$0030], sp
    ld [$27c0], sp

jr_031_5171:
    dec bc
    sub e
    ld l, b

jr_031_5174:
    rra
    rrca
    ccf
    ld a, $7f
    ld b, $03
    rst $38
    nop
    add a
    jr nc, jr_031_5183

    ld a, h
    pop af
    dec bc

jr_031_5183:
    add hl, bc
    dec bc
    add b
    ld b, [hl]
    or b
    jr jr_031_518e

    inc [hl]
    rrca
    cpl
    rrca

jr_031_518e:
    ld l, a
    jr c, @+$05

    ld [hl], e
    ld bc, $7f0a
    ld de, $a86b
    ldh a, [$f0]
    ldh a, [rPCM12]
    or $7f
    ld a, [bc]
    dec h
    ld de, $0800
    ld [hl], b
    db $fc
    ld a, [de]
    jp c, $ff08

    nop
    db $fc
    rst $38
    ld a, [hl]
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ld l, l
    ld c, $93
    cp d
    nop
    jr nz, jr_031_51f9

    cp [hl]
    ld a, [bc]
    nop
    jr jr_031_51ca

    adc e
    ld [de], a
    ldh a, [$33]
    ld de, $1135
    ld sp, $eb09
    sbc b
    add b

jr_031_51ca:
    add b
    ldh [$e0], a
    pop bc
    db $dd
    ld [$1913], sp
    ld a, [hl]
    ld a, [hl]
    ld e, $1e
    inc b
    ld hl, $286b

jr_031_51da:
    nop
    rst $38
    ld bc, $8070
    ld bc, $c008
    rst $38
    ldh [rP1], a
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, e
    nop
    db $fc
    ccf
    db $fc
    dec e
    cp $0e
    rst $38
    rrca
    ld bc, $07ff

jr_031_51f9:
    rst $38
    inc bc
    rst $38
    ld bc, $28ff
    ld b, b
    nop
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ldh [rP1], a
    rst $38
    jr @+$12

    rst $38
    inc c
    add hl, de
    ld [$3016], sp
    ld l, a
    ldh a, [rNR31]
    ld [$06fc], sp
    rst $38
    add c
    dec sp
    ld [$cf77], sp
    ld a, $10
    pop hl
    rra
    ldh a, [rNR21]
    jr nz, @-$3f

    ret nz

    ld [hl], a
    ld hl, sp+$15
    adc a
    db $fc
    rst $38
    dec a
    ld [$4300], sp
    ld [$4b03], sp
    ld [$0f06], sp
    rst $38
    rra
    rst $38
    ccf
    db $10
    ld [$2000], sp
    rra
    dec bc
    rra
    ld bc, $0001

jr_031_5244:
    nop

jr_031_5245:
    jr jr_031_5245

    inc de
    jr c, jr_031_524a

jr_031_524a:
    jr nz, jr_031_5244

    adc a
    db $10
    adc l
    db $10
    adc e
    db $10
    rrca
    jr nz, @+$73

    db $10
    db $10
    rst $38
    jr jr_031_51da

    ld bc, $1c18
    rst $38
    or e
    call z, $ccf3
    ld sp, hl
    nop
    add $f9
    add $d9
    and $5c
    db $e3
    ld a, h
    add b
    ld bc, $cf08
    ldh a, [$e7]
    ret c

Jump_031_5273:
jr_031_5273:
    ld e, e
    db $e4
    ld a, a
    ld [bc], a
    ldh [$7f], a
    ldh [$6f], a
    ldh a, [$3f]
    ld bc, $f708
    nop

jr_031_5281:
    ld [$04fb], sp
    cp l
    ld b, d
    sbc $21
    rst $08
    nop
    jr nc, jr_031_5273

    jr jr_031_5281

    inc c
    ld sp, hl
    ld b, $0f
    nop
    ld hl, sp+$07
    db $fc
    inc bc
    cp $81
    rst $38
    ld b, b
    ld bc, $38ff
    rst $38
    daa
    rst $38
    ld e, $f1
    swap b
    ld b, $df
    ldh [$37], a
    ld hl, sp+$0d
    ld a, h
    ld [$4107], sp
    inc bc
    db $dd
    ld l, a
    jr c, jr_031_52b5

    db $10

jr_031_52b5:
    rrca
    adc a
    jr c, jr_031_52d2

    db $10
    cp c
    ld b, b
    rlca
    rst $00
    ld [$00c0], sp
    ret nc

    jp nc, $2008

    jr nz, jr_031_52c7

jr_031_52c7:
    jr nz, jr_031_5329

    ld h, b
    pop de
    ld [bc], a
    ld [$0800], sp
    ld [hl], b
    dec e
    ld h, b

jr_031_52d2:
    ccf
    ccf
    inc e
    rst $00
    jr @+$16

    jr c, @+$01

    jr nc, @+$03

    ld [$9560], sp
    ld [$e17e], sp
    ld bc, $f16e
    ld l, a
    ldh a, [$67]
    ld hl, sp+$77
    ld bc, $0008
    di
    db $fc
    di
    db $fc
    ccf
    ldh a, [$15]
    ld a, [$1700]
    ld hl, sp+$1d
    ld a, [$fa0d]
    add hl, bc
    cp $06
    inc c
    rst $38
    ld c, $ff
    cp $84
    ld de, $49ae
    rrca
    nop
    ld hl, sp+$0b
    db $fc
    add a
    db $fc
    ld b, e
    cp $02
    or b
    ld d, $08
    ld hl, $0917
    dec de
    ld d, b
    ld a, a
    nop
    cp a
    add b
    add b
    ld d, h
    add hl, de
    ld bc, $0703
    ld c, $1d
    jr jr_031_535c

    nop

jr_031_5329:
    jr nc, jr_031_5394

    ld b, b
    ld a, a
    nop
    nop
    rrca
    rla
    nop
    cp $79
    ret nz

    or b
    nop
    rlca
    nop
    ccf
    ld hl, $e01f
    sbc [hl]
    db $10
    rst $38
    cp $0f
    di
    jr nc, jr_031_5365

    ld [$1fe0], sp
    db $fc
    inc bc
    db $10
    ld [$f080], sp
    add sp, $02
    inc a
    sbc $0f
    rst $30
    inc bc
    db $fd
    inc de
    db $10
    ld d, b
    nop
    ld [hl], b
    ld d, b

jr_031_535c:
    ld a, b
    ld e, b
    ld [hl], b
    ld e, b
    ld l, h
    inc l
    nop
    jr c, @-$58

jr_031_5365:
    cp h
    ld a, [c]
    ld l, [hl]
    ld [hl], e
    cp l
    rlca
    ld h, c
    rlca
    and a
    ld hl, $3000
    rst $38
    rst $38
    ld a, a
    ld a, a
    inc de
    ld d, b
    ld l, c
    ld hl, sp-$57
    add hl, bc
    ld bc, $f030
    ld bc, $f108
    cp $05
    db $10
    xor l
    inc de
    ld b, b
    rlca
    ld bc, $0338
    ld bc, $7b18
    ld de, $727f
    ld a, [bc]
    nop
    cp a

jr_031_5394:
    ret nz

    rst $38
    ret nz

    rst JumpTable
    ldh [$bf], a
    ldh [rSC], a
    rst $30

jr_031_539d:
    ld [$46b9], sp
    cp h
    ld b, e
    xor a
    add hl, bc
    inc [hl]
    nop
    rst $30
    ld a, [de]
    ei
    dec c
    push af
    ld c, $7f
    ret nz

    nop
    ccf
    ldh [$1f], a
    ldh a, [$8f]
    ld hl, sp+$47
    db $fc
    rlca
    inc hl
    cp $91
    rst $38
    db $ec
    rst JumpTable
    ld e, b
    inc e
    ld [de], a
    call c, $0108
    ld bc, $0303
    inc bc
    ld [bc], a
    inc b
    inc b
    add sp, $18
    nop
    ld bc, $e79f
    db $fc
    ld a, d
    add c
    jp nz, $000f

    rlca
    inc a
    ld a, [de]
    ld [hl], b
    ld l, b
    ret nz

    and b
    add b
    ld b, b
    ld b, e
    ld e, e
    ld a, [bc]
    cpl
    ldh a, [$ef]
    add b
    ld b, b
    nop
    ld c, d
    inc bc
    pop af
    ld [$001c], sp
    ld l, c
    ld [$edfc], sp
    db $10
    ld a, a
    ret nz

    ld a, $18
    inc bc
    add hl, bc
    add hl, sp
    sbc $18
    rst $28
    inc c
    rst $30
    ld [bc], a
    ld b, $fb
    ld [bc], a
    db $fd
    ld bc, $50fe
    jr @-$7e

    nop
    ret nz

    add b
    ld a, b
    ldh a, [$3f]
    rst $38
    ld sp, $02d0
    inc e
    ldh a, [$1f]
    add sp, $1f
    rst $28
    push de
    jr nz, jr_031_539d

    ld bc, $f0c0
    ld hl, sp+$0e
    rra
    ld bc, $eee3
    ld [$2ec0], sp
    ld l, e
    dec l
    dec de
    ld a, a
    and b
    ld a, a
    ldh [$3f], a
    or b
    rlca
    rra
    sbc b
    rrca
    call z, $9e07
    ld de, $2001
    jr nz, jr_031_545e

    ld [bc], a
    rst $28
    ret nc

    rst $20
    ret c

    rst $30
    ret z

    and e
    ld [de], a
    db $dd
    nop
    ld [c], a
    sbc $e1
    cp $e1
    db $fd
    dec b
    ld a, [$060a]
    cp $02
    db $fd
    ld h, $08
    cp $22
    jr @+$5d

    nop
    rst $38

jr_031_545e:
    rst $30
    adc h
    ld a, a
    ld b, b
    rra
    nop
    rra
    nop
    nop
    rrca
    nop
    add a
    add b
    ld b, e
    ret nz

    ld a, a
    sub b
    db $ec
    ld a, [bc]
    rst JumpTable
    jr nc, @+$61

    ld b, b
    inc bc
    ld [bc], a
    ld b, $05
    nop
    inc c
    dec bc
    jr jr_031_548d

    jr jr_031_5497

    db $10
    ccf
    nop
    jr nc, jr_031_54a4

    jr nc, @+$31

    nop
    adc a
    nop
    sbc a
    inc l
    nop

jr_031_548d:
    ld a, [hl]
    add b
    ld c, b
    add c
    ld a, [hl-]
    ld [$0807], sp
    inc b
    ei

jr_031_5497:
    ld [bc], a
    ld [$18f6], sp
    push hl
    ld [hl], b
    adc a
    inc de
    jr @-$0b

    ld [hl+], a
    nop
    rst $08

jr_031_54a4:
    dec d
    ld [$003f], sp
    ld a, a
    db $d3
    jr nz, jr_031_54ac

jr_031_54ac:
    nop
    rst $38
    ld b, $f9
    ld c, $f5
    ld e, $e9
    ld a, [hl]
    ld de, $fc99
    dec hl
    rrca
    jr @-$0f

    nop
    rst JumpTable
    ld b, l
    ld [$018c], sp
    db $10
    dec e
    ccf
    ret z

    ld bc, $e910
    ld [$0fe8], sp
    inc b
    db $f4
    rlca
    db $fc
    rlca
    ld a, [$0bf7]
    ccf
    ld hl, sp+$04
    rrca
    db $fc
    rlca
    cp $03
    ld l, c
    ld a, [de]
    ld bc, $00ca
    rlca
    push bc
    inc bc
    db $e3
    ld bc, $00c1
    ldh [$03], a
    nop
    ret nz

    nop
    add sp, $00
    ret nc

    ldh a, [$09]
    inc hl
    inc h
    db $10
    ret nz

    ld a, a
    ld h, b
    adc a
    ld [$0f18], sp
    rst $38
    ldh [rNR23], a
    rst $28
    ldh a, [$6f]
    ld bc, $af08
    ld [de], a
    ld [hl], e
    db $fc
    ld a, c
    ld a, [hl+]
    or $80
    jp $200a


    add a
    ld a, [bc]
    ld [$0c15], sp
    ld c, $00
    rst $38
    rlca
    db $fd
    ld b, c
    ldh [rNR41], a
    ldh [rNR10], a
    dec bc
    ldh a, [rNR10]
    ld hl, sp+$08
    ld [hl], a
    dec bc
    dec b
    ld d, h
    ld [$3299], sp
    ld d, b
    ccf
    and b
    ld [$09cf], sp
    ld [$2f30], sp
    jr nz, jr_031_5574

    sbc b
    ld bc, $3030
    cpl
    rst JumpTable
    ld [$0918], sp
    inc bc
    db $fc
    rlca
    nop
    ld sp, hl
    rrca
    di
    rrca
    ld a, [c]
    ld e, $e7
    ld e, $08
    rst $20
    ldh [$3f], a
    ret nz

    ld e, $0a
    add c
    ld a, [hl]
    rlca
    ld bc, $1ff8
    ldh [$3f], a
    jp $867f


    rlca
    ld [$e100], sp
    ld a, a
    add [hl]
    rst $38
    rra
    cp $35
    ld sp, hl
    nop
    sbc $f7
    dec hl
    rst $28
    ld e, a
    db $fc
    ld d, e
    db $fc
    nop
    sub e
    db $fc
    ld [hl], e

jr_031_5574:
    sbc h
    di
    inc a
    db $d3
    cp $00
    ld sp, hl
    cp $09
    cp $09
    nop
    dec d
    nop
    add b
    add hl, bc
    ld [de], a
    stop
    add hl, sp
    nop
    dec a
    nop
    cp a
    jr z, jr_031_558e

jr_031_558e:
    rst JumpTable
    add $08
    db $fd
    add $08
    ld a, a
    ld bc, $3c3e
    ld bc, $59de
    db $10
    sbc b
    ld de, $2271
    ld bc, $e820
    nop
    ld b, $f4
    nop
    ld hl, sp+$00
    ldh a, [$03]
    ld [$1007], sp
    ld hl, sp+$00
    nop
    inc c
    rlca
    ld b, $03
    inc bc
    ld bc, $0001
    ld bc, $0302
    inc c
    rlca
    jr z, jr_031_55df

    ld d, b
    nop
    ccf
    ld [hl], l
    ld a, [$f976]
    ld [hl], a
    ld hl, sp+$7b
    nop
    db $fc
    dec sp
    db $fc
    dec [hl]
    ld a, [$f837]
    scf
    ld [hl], b
    ld hl, sp-$3d
    db $10
    ld l, e
    inc de
    rst JumpTable
    ld sp, $ff81
    pop bc
    ld a, a

jr_031_55df:
    nop
    ldh a, [$3f]
    add sp, $1f
    ld [hl], h
    adc a
    sbc e
    add a
    add hl, bc
    add [hl]
    pop bc
    ld b, c
    ret nz

    ld e, l
    db $10
    rst $38
    add b
    or l
    ld [hl-], a
    nop
    rst $20
    ld a, h
    jr nc, jr_031_5627

    db $10
    ccf
    jr jr_031_5613

    nop

Call_031_55fd:
    ld [$0c1f], sp
    dec bc
    ld b, $05
    inc bc
    ld [bc], a
    nop
    ld bc, $1e01
    push hl
    inc a
    rst $00
    dec a
    adc $00
    dec a
    adc $7f
    adc h

jr_031_5613:
    ld a, a
    adc [hl]
    ei
    ld a, [bc]
    nop
    ld sp, hl
    add hl, bc
    dec c
    cp $1b
    db $fd
    scf
    ei
    ld [$f16e], sp
    xor $f1
    ld l, $13

jr_031_5627:
    cp a
    or b
    rst $38
    ld bc, $e79f
    ld h, a
    ld h, $e6
    ld a, $fe
    ld bc, $0010
    call c, $f83e
    inc e
    add h
    rst $38
    call nc, $00ef
    ld [hl], d
    ld l, a
    dec sp
    daa
    add hl, sp
    daa
    inc e
    inc hl
    inc c
    ld a, $41
    ld a, a
    add b
    ld a, l

jr_031_564c:
    add hl, de
    ld e, [hl]
    jr z, jr_031_564c

    ld b, e
    nop
    rst $38
    jr nz, jr_031_5658

    db $fc
    inc bc
    db $fd

jr_031_5658:
    inc bc
    db $fd
    add c
    cpl
    ld de, $e31f
    ld a, a
    adc h
    rst $38
    ld [hl], b
    db $d3
    ld [$7180], sp
    dec h
    ld a, a
    rst JumpTable
    ldh [$7b], a
    add a
    cp c
    ld a, [hl]
    ld bc, $00f8
    db $fd
    nop

jr_031_5674:
    ld a, [$fb01]
    ld [hl], h
    dec e
    ld bc, $0ff7
    rst $28
    rra
    and b
    ld a, a
    ld h, b
    ld c, a
    dec c
    adc h
    db $e3
    dec [hl]

jr_031_5686:
    ld hl, sp-$01
    inc sp
    reti


    ld [$2001], sp
    inc sp
    db $fc
    add b
    rst JumpTable
    db $10
    rst JumpTable
    jr nz, jr_031_5674

    jr nz, jr_031_5686

    db $10
    rst $28

jr_031_5699:
    nop
    db $10
    rst $30
    ld [$04ff], sp
    ld sp, hl
    ld b, $ff
    db $10
    inc bc
    ld b, b
    ret nz

    cp a
    add hl, de
    ldh a, [$08]
    ld hl, sp-$7c
    nop
    db $fc
    ld b, h
    db $fc
    ld [hl+], a
    cp $db
    ld a, $37
    dec a
    rrca
    rra
    jr c, @+$0d

    jr z, jr_031_56d0

    rst $38
    dec de
    ld l, l
    ld c, h
    rrca
    rst $38
    inc de
    ld bc, $7c8c
    ret z

    dec a
    dec [hl]
    dec c
    dec e
    ld b, d
    add hl, bc
    jr nz, jr_031_56d0

    nop

jr_031_56d0:
    db $d3
    dec c
    and a
    or b
    daa

jr_031_56d5:
    jr nz, @-$37

    jr nc, jr_031_5699

    rrca
    and h
    ld [hl+], a
    db $76
    stop
    pop hl
    nop
    pop bc
    ld [$c300], sp
    nop
    add a
    ret z

    ld a, [de]
    cp a
    nop
    ldh a, [rDIV]
    ccf
    ret nc

    ccf
    ldh a, [$1f]
    ld bc, $f110
    rra
    nop
    pop de
    ccf
    pop hl
    ccf
    add c
    rst $38
    add [hl]
    rst $38
    db $10

Call_031_5700:
    sbc b
    rst $38
    and b
    and e
    jr @+$03

    cp $0e
    pop af
    nop
    rst $20
    ld hl, sp+$2f
    ldh a, [$3f]
    ldh [$3e], a
    pop hl
    nop
    ld a, e
    rst $00
    db $fc
    adc a
    or l
    ld a, e
    rst JumpTable
    db $e3
    add a
    add hl, hl
    inc h
    rst $38
    ldh [$f7], a
    ld hl, sp+$29
    ld d, $87
    dec c
    ld a, a
    jr nc, jr_031_5744

    ld bc, $07fb
    ld c, d
    ld h, $14
    ld [$617f], sp
    ld b, l
    dec [hl]
    ld d, $74
    cp $05
    ld [$1001], sp
    nop
    db $10
    ld a, a
    xor c
    ld a, [bc]
    ld a, l
    ld a, [c]
    nop
    ld a, e

jr_031_5744:
    db $f4
    ei
    db $fc
    rst $38
    ld hl, sp-$09
    ld hl, sp+$00
    db $fd
    ld a, [c]
    rst $38
    ld bc, $40bf
    rst JumpTable
    jr nz, jr_031_56d5

    dec e
    ld d, $fb
    inc c
    db $fd
    ld b, $fa
    rlca
    rst $38
    nop
    sub c
    ei
    call z, $e679
    sbc $5b
    and a
    ld bc, $e06f
    ld hl, $10f0
    add sp, $18
    ei
    dec bc
    add b
    ld de, $c00c
    ld b, b
    ld h, b
    and b
    ldh a, [$d0]
    jr c, @+$18

    jr c, jr_031_578a

    inc c
    or a
    ld [de], a
    rlca
    ret c

    stop
    jr z, @+$81

    nop
    ret nz

    ld a, a

jr_031_578a:
    ld b, b
    ld a, a
    ld b, a
    dec de
    ld l, h
    ccf
    ld bc, $1f20
    jr nc, jr_031_57a4

    jr jr_031_579e

    inc c
    db $ed
    ld h, $21
    cp a
    ld b, b
    ld d, [hl]

jr_031_579e:
    ld a, a
    ldh [$9f], a
    db $fc
    add e
    dec l

jr_031_57a4:
    ld a, [bc]
    inc b
    pop hl
    ccf
    and c
    ld a, a
    pop bc
    ld bc, $4208
    rst $38
    ld b, b
    add d
    ld bc, $0708
    rst $38
    dec sp
    rst $00
    dec e
    cp $40
    rst $28
    dec h
    rra
    ld a, a
    add b
    dec e
    db $e3
    rlca
    rst $38
    ccf
    ld a, e
    add a
    and l
    ld de, $10c5
    call nz, $9720
    ld d, a
    or c
    ld de, $273d
    sbc a
    ld b, c
    ld b, a
    ei
    db $fc
    ret


    jr nz, jr_031_57db

    db $10

jr_031_57db:
    ld h, b
    dec d
    dec b
    add hl, bc
    ld d, [hl]
    dec c
    ret nz

    ld [de], a
    ld a, [bc]
    ld bc, $ff08
    ld bc, $817e
    ld [hl], h
    adc h
    nop
    call c, Call_031_6ee4
    ld [hl], d
    dec de
    dec e
    rlca
    ld b, $00
    ld bc, $8181
    add c
    add e
    add d
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    jr c, jr_031_5835

    ldh a, [$c0]
    jr @-$1e

    add b
    adc h
    add e
    add hl, bc
    nop
    nop
    nop
    rst $38
    rst $38
    ld e, $01
    rlca
    nop
    nop
    rst $00
    nop
    ld b, a
    nop
    ld a, a
    nop
    rst $38
    ld bc, $0000
    nop
    add b
    add b
    ld h, b
    ldh [$d0], a
    jr nc, jr_031_5829

jr_031_5829:
    ldh a, [rNR10]
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    nop
    rlca
    ld c, $1b

jr_031_5835:
    ccf
    ld hl, $c17f
    rst $38
    nop
    add e
    rst $38
    ld b, e
    ld a, a
    inc hl
    ccf

Call_031_5841:
    ld de, $001f
    rst $38
    nop
    cp $01
    ld a, b
    add a
    add b
    rst $38
    ld b, b
    db $fc
    ld bc, $8228
    rst $38
    add h
    rst $38
    adc h
    ei
    nop
    sbc b
    rst $38
    sub b
    rst $38
    or b
    rst $28

jr_031_585d:
    and b
    rst $38
    db $10
    ldh [rIE], a
    rlca
    ld bc, $0f08
    rst $30
    rrca
    rst $38
    nop
    add hl, bc
    rst $38
    jr jr_031_585d

    db $10
    rst $38
    jr nc, @+$01

    and d
    nop
    ld d, b
    ld a, a
    inc bc
    ld [$fff0], sp
    ld hl, sp+$01
    ld [$00bc], sp
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    ld [hl+], a
    rst $38
    nop
    ld bc, $8048
    rst $38
    ret nz

    inc hl
    ld [$8a3f], sp
    ld bc, $1f08
    rst $38
    rrca
    ld b, a
    ld [$0103], sp
    ld [$40f7], sp
    ld hl, sp+$01
    db $10
    rst $38
    ld hl, sp-$11
    ld hl, sp-$01
    add sp, $00
    rst $30
    add sp, -$25
    db $e4
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    nop
    ld l, a
    sub b
    ld l, a
    sub b
    or a
    ld c, b
    cp a
    ld c, b
    nop
    cp e
    ld c, h
    cp l
    ld c, [hl]
    rst $00
    db $e4
    db $fd
    cp $40
    cp $57
    ld [$cfcf], sp
    push bc
    ld b, a
    push bc
    ld h, a
    nop
    rst $20
    daa
    ei
    inc b
    rst $38
    inc b
    ld a, a
    add h
    add b
    ld bc, $3c20
    rst $00
    add h
    rst $38
    rst JumpTable
    ld hl, $82ff
    ld bc, $f918
    daa
    and c
    ld a, a
    inc hl
    ld e, c
    ld [$02fc], sp
    inc b
    db $fc
    add h
    rst $38
    add a
    db $fc
    ld bc, $f808
    ld b, b
    adc a
    ld d, [hl]
    ld [$191f], sp

jr_031_58fb:
    rra
    inc h
    ld a, a
    call nz, $ff2a
    ld [bc], a
    ld l, c
    ld [$0101], sp
    ld [$9d00], sp
    jr jr_031_58fb

    add b
    adc c
    ld [$e799], sp
    cp a
    pop bc
    cp l
    jp $20bf


    jp $93c0


    ld [$bfc0], sp
    add b
    rst $38
    add c
    ld [$81fe], sp
    rst $38
    add c
    dec b
    add hl, bc
    ccf
    rst $20
    ld a, b
    cpl
    rst $38
    ld h, b
    inc de
    ld [$0180], sp
    ld [$10b3], sp
    inc sp
    db $10
    ld bc, $e850
    push hl
    db $10
    cp l
    jr nz, @+$1b

    db $10
    ld e, $0f
    ld [$fffd], sp
    ld a, [hl]
    rst $10
    ld [hl], a
    ld [$20cf], sp
    ld bc, $0921
    ld hl, sp+$37
    add hl, de
    or e
    db $10
    ld bc, $c011
    ld [hl], l
    jr nz, jr_031_5958

    ld b, b

jr_031_5958:
    db $db
    db $e4
    db $fd
    add $fb
    add $00
    rst $38
    jp nz, $e3df

    ld a, a
    db $e3
    ld a, l
    db $e3
    nop
    cpl
    pop af
    rst $10
    ld l, $dd
    dec h
    call c, $2026
    xor $12
    ld bc, $1308
    rst $30
    adc c
    rst $30
    adc c
    nop
    ldh [$27], a
    ldh a, [rNR13]
    di
    sub d
    cp c
    jp z, Jump_031_7800

    ld c, c
    dec a
    dec h
    dec l
    dec [hl]
    ld e, $12
    dec l
    rst $38
    adc a
    ld d, b
    ld [$7480], sp
    ld [$2140], sp
    add b
    cp h
    ld [$6e05], sp
    rst $38
    ld [$bfff], a
    ld d, [hl]
    ld [$8a03], sp
    ld de, $fc00
    rra
    db $fc
    daa
    cp $67
    cp $e3
    ld [hl+], a
    cp $c3
    ld bc, $8708
    cp $0f
    ld h, $10
    inc bc
    nop
    rst $38
    ld b, h
    rst $38
    ld c, b
    rst $38
    ld c, a
    rst $38
    ld c, h
    nop
    rst $38
    adc $ff
    db $fc
    rst $00
    call nc, $f8ef
    ld [$38ef], sp
    rst $38
    ld b, $dd
    ld [$fffd], sp
    ld h, a
    add b
    rst $08
    add hl, bc
    add [hl]
    rst $38
    adc h
    rst $30
    call z, $d8bf
    ld [$50ef], sp
    rst $38
    and b

jr_031_59e3:
    db $e3
    jr c, @+$05

    cp $07
    ld bc, $0ffc
    db $fc
    rrca
    ld hl, sp+$1f
    ld hl, sp-$3d
    ld de, $ff30
    add a
    sbc d
    add hl, de
    ld [hl-], a
    add hl, de
    ei
    rst $38
    ld a, l
    rst $38
    ld [hl], h
    dec a
    rst $20
    ld [$10df], sp
    pop hl
    db $10
    ldh [$e1], a
    add hl, hl
    ld a, h
    rst $38
    ld b, b
    cp [hl]
    pop hl

jr_031_5a0d:
    jr jr_031_5a4e

    pop af
    dec sp
    push af
    dec de
    db $f4
    inc b
    dec de
    db $f4
    dec d
    ld a, [$011d]
    ld [$f91f], sp
    nop
    ei
    call nz, $e4db
    cp l
    and d
    sbc l
    sub d
    nop
    ld d, [hl]
    reti


    adc $49
    rst $00
    ld b, h
    and e
    ld h, d
    nop
    adc [hl]
    adc d
    add a
    add l
    jp $c142


    ld b, c
    nop
    ldh [rNR41], a
    ldh [rNR41], a
    ld [hl], b
    sub b
    or b
    ld d, b
    nop
    rst $38
    ret nz

    ld a, a
    ld h, b
    sbc a
    sbc a
    add e
    add c
    jr jr_031_5a0d

    ret nz

jr_031_5a4e:
    nop
    nop
    jr jr_031_5aac

    ld [$ff3f], sp
    rst $38
    add hl, de
    db $fc
    ld hl, sp+$38
    nop
    jr z, jr_031_5a6a

    db $10
    rst $20
    rst $00
    dec de
    jr nz, jr_031_59e3

    nop
    db $10
    rst $08
    rst $38
    call c, $d0ff

jr_031_5a6a:
    rst $38
    ld d, e
    jr z, jr_031_5aed

    ld e, [hl]
    sub h
    ld [$c383], sp
    ld [$ff07], sp
    ld a, $00
    rst $38
    db $ec
    rst $38
    call nz, $62ff
    rst $38
    di
    xor b
    ld a, a
    ld [$591e], sp
    ld c, c
    inc c
    and e
    jr @+$21

    ldh a, [$3f]
    db $10
    ldh a, [$3f]
    ldh [rSB], a
    jr nz, jr_031_5ab2

    ldh a, [$df]
    db $fc
    cp l
    add e

jr_031_5a98:
    ld [de], a
    ld a, a
    and c
    add hl, de
    or l
    ld hl, $1283
    jp Jump_031_7810


    and e
    ld a, [bc]
    ld b, b
    sbc $bf
    ld [$fd1b], sp
    rra

jr_031_5aac:
    db $fd
    dec e
    rst $38
    ld d, b
    dec e
    dec e

jr_031_5ab2:
    ld [$013c], sp
    jr jr_031_5a98

    and c
    ldh [$90], a
    nop
    ld [hl], b

jr_031_5abc:
    ld d, b
    or b
    or b
    cp b
    xor b
    ret c

    ret c

    nop
    ld l, h
    db $ec
    jr nc, jr_031_5abc

    ret nc

    jr z, @-$16

    sbc b
    nop
    ld d, h
    ld l, h
    inc l
    inc [hl]
    ld e, $1a
    ld b, $06
    ld h, b
    ld bc, $0b3d
    and d
    ld [$1c3c], sp
    inc a
    inc e
    ld a, $00
    ld e, $1e
    ld c, $0f
    rlca
    rrca
    inc bc
    rlca
    ld bc, $0100
    inc bc

jr_031_5aed:
    rlca
    inc e
    ccf
    jr nz, @+$03

    jr jr_031_5afb

    jr nc, jr_031_5b35

    sbc b
    cp a
    add c
    ld l, e
    ld a, [bc]

jr_031_5afb:
    rst $28
    ld d, c
    ld [hl], a
    ld [hl+], a
    xor h
    xor h
    ld de, $7f03
    ld [$713f], sp
    ld [$1231], sp
    ldh a, [$f8]
    nop
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    ld d, $2b
    ld h, h
    ld a, a
    inc [hl]
    ccf
    inc e
    rra
    jr jr_031_5b5a

    rra
    db $10
    ld c, c
    inc hl
    ld d, e
    ld [de], a
    add hl, hl
    inc de
    rra
    add a
    dec sp
    ld hl, sp-$80
    or c
    jr z, jr_031_5b42

    ld a, [c]
    add hl, bc
    ld sp, hl
    inc b
    db $fc

jr_031_5b35:
    ld [bc], a
    ld l, c
    cp $57

jr_031_5b39:
    ld a, [hl-]
    nop
    ld c, b
    add b
    nop
    ld [$0303], sp
    and l

jr_031_5b42:
    db $10
    sub b
    nop
    ld b, b
    call c, $99df
    dec de
    ld a, a
    ccf
    ccf
    cpl
    ld b, $3f
    ld c, e
    ld a, a
    sbc $f1
    ld l, [hl]
    db $10
    sbc e
    ld [de], a
    ret nz

    or a

jr_031_5b5a:
    inc bc
    add hl, bc
    db $fc
    rlca
    ld [$20a5], sp
    ldh [$dd], a
    ld a, [hl-]
    dec c
    ld a, [de]
    ld e, b
    ld [de], a
    ldh [$2f], a
    add hl, de
    ld a, [hl+]
    jr jr_031_5b39

    ld [hl+], a
    ldh a, [$bf]
    ret nz

    ld a, a
    add b
    ld [$03fc], sp
    add b
    add b
    ld d, l
    db $10
    pop bc
    pop bc
    cp c
    nop
    ld a, c
    rst $30
    rrca
    push hl

jr_031_5b83:
    dec de
    jp nz, $3f3d

    ld de, $7f20
    ld b, b
    ld l, $1b
    ld hl, sp-$01
    call z, $11a0
    adc b
    ld b, a
    jr nz, jr_031_5b97

    rst $38

jr_031_5b97:
    xor a
    inc de
    inc l
    nop
    rst $38
    ld a, [bc]
    jr z, @+$01

    rla
    rrc b
    cp $c3
    jr @-$1e

    rst $38
    jr nz, jr_031_5b83

    inc l
    jr jr_031_5bcb

    ld b, c
    rrca
    add hl, bc
    inc a
    ld [hl], l
    db $10
    rlca
    inc sp
    dec de
    di
    cpl
    rst $38
    pop af
    sbc l
    ld [$2df0], sp
    ld [$1097], sp
    xor a
    ld hl, $1271
    pop hl
    ld h, l
    inc de
    db $e3
    stop
    db $10

jr_031_5bcb:
    ld hl, sp-$04
    rst $38
    rst $20
    ld h, $08
    ld b, h
    db $fc
    jp hl


    ld b, b
    ld hl, sp-$04
    rlca
    dec hl
    ld [$0100], sp
    nop
    ld bc, $0301
    inc bc
    ld b, $07
    inc c
    rra
    jr nz, jr_031_5bff

    ccf
    dec a
    db $10
    sub a

jr_031_5beb:
    ld hl, sp-$73
    cp $c3
    xor b
    ccf
    ld [$3b3c], sp
    ld [$0f03], sp
    ld [$7fbf], sp
    rst $38
    ld c, $0f
    ld l, c
    sbc a

jr_031_5bff:
    di
    pop hl
    db $10
    sub $08
    db $ed
    ld a, [de]
    rst $38
    ld de, $8ff7
    db $fd
    ld a, [de]
    stop

jr_031_5c0e:
    ld a, a
    add b
    ld l, d
    ld [$a680], sp
    ld [$f01f], sp
    cp a

jr_031_5c18:
    ldh a, [$7f]
    ldh a, [rIE]
    nop
    jr c, jr_031_5c0e

    inc e
    rst $38
    rrca
    ei
    inc b
    rst $30
    nop
    ld [$10ef], sp
    rst JumpTable
    jr nz, jr_031_5beb

    ld b, b
    cp [hl]
    nop
    ld b, c
    ld a, h
    add e
    ld a, l
    add d
    ld [c], a
    dec e
    ld hl, sp+$05
    rlca
    cp [hl]
    ld b, c
    ld a, a
    add b
    dec hl
    ld [$1b00], sp
    stop
    ld b, b
    rst $38
    ld b, b
    cp a
    jr nc, jr_031_5c18

    cp b
    ld b, a
    nop
    ret c

    daa
    ldh [$1f], a
    ret nz

    ccf
    add c
    ld a, a
    add b
    adc a
    ld h, c
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    db $fc
    inc b
    ld sp, $02fe
    rlca
    ld b, h
    xor h
    ld d, c
    ret nz

    ld b, b
    ret nz

    call nc, $2023
    ret nz

    ld a, a
    ld bc, $e010
    ld a, a
    ldh [$3f], a
    ld h, b
    inc d
    ldh [rNR41], a
    ldh a, [$9c]
    dec c
    ld hl, sp-$64
    dec c
    db $fc
    inc c
    adc [hl]
    call z, $f00c
    ccf
    di
    jr nc, jr_031_5c9c

    dec d
    dec bc
    sbc c
    dec c
    pop bc
    nop
    rst $38
    inc bc
    inc b
    cp $c6

jr_031_5c92:
    cp $f2
    cp $17
    ld a, [$faff]
    sub a
    dec bc
    db $fd

jr_031_5c9c:
    cp e
    db $10
    xor b
    add hl, bc
    db $d3
    ld [$00c4], sp
    xor b
    ld b, e
    ld [de], a
    cp a
    rst $38
    sbc a
    ld bc, $a118
    db $e3
    inc e
    and b
    ldh [rLCDC], a
    jp $b909


    ld [$0801], sp
    cp a
    add b
    ld b, $cf
    ret nz

    ret nz

jr_031_5cbe:
    ret nz

    ldh [$f8], a
    ld sp, $1801
    rrca
    jp $138f


    nop
    ld c, b
    ccf
    ld a, a
    ld bc, $4f07
    ld h, b

jr_031_5cd0:
    ld sp, $8312
    add hl, bc

jr_031_5cd4:
    jr z, jr_031_5cd4

    ldh a, [$f8]
    ret nz

    ldh [$2f], a
    ld [$6801], sp
    add hl, bc
    ret nz

    add b
    ldh [$60], a
    cp [hl]
    ld [$fc08], sp
    or $10
    add b
    ld hl, sp+$08
    rst $20
    jr jr_031_5cbe

    jr nc, jr_031_5cd0

    jr nz, jr_031_5c92

    nop
    ld h, b
    cp $41
    db $fd
    jp Jump_031_437f


    ld l, $00
    ld [hl], $c1
    ccf
    jp nz, $c23e

    ld a, $84
    nop
    ld a, h
    ld [$f0f8], sp
    ld hl, sp+$78
    ld a, b
    jr c, @+$62

    jr c, jr_031_5d40

    ld d, c
    cp c
    ld de, $3c1c
    jr c, @+$3e

    jr c, @+$03

    jr c, jr_031_5d8c

    ld a, b
    ld [hl], b
    ldh a, [$e0]
    ldh a, [rNR44]
    dec bc
    rlca
    ret nz

    ccf
    ld hl, sp+$0f
    cp $59
    dec h
    ccf
    ld hl, $0baa
    nop
    inc e
    rst $38
    cp h
    ei
    cp $f9
    ld sp, hl
    ld hl, sp-$80
    ld b, c
    ld [$f0f0], sp
    ld sp, hl
    ld b, $fb

jr_031_5d40:
    add h
    ld e, e
    dec c
    db $ec
    ld a, a
    ld hl, sp-$75
    jp hl


    dec bc
    ld b, e
    db $10
    ldh a, [rP1]
    ld b, b
    adc $40
    db $10
    ld b, c
    ld [$40c0], sp
    ld d, d
    add hl, bc
    sub c
    db $10
    add [hl]
    add hl, de
    ldh a, [rNR33]
    ldh a, [$f8]
    ld hl, sp-$2c
    ld a, [de]
    sbc a
    ld [hl-], a
    nop
    ld [$e503], sp
    ld d, b
    ld b, b
    jp $0d24


    daa
    cp $2e
    db $fc
    inc l
    ld hl, sp+$6d
    ld a, b
    ld h, c
    ld [$1046], sp
    ldh [$f3], a
    ld [hl+], a
    nop
    jr nz, @-$5e

    ld d, c
    ld [$b3c4], sp
    ld d, b
    rst $38
    ld l, b
    add c
    cp $02
    ld bc, $0618

jr_031_5d8c:
    cp $00
    ld e, $fe
    ld a, [hl]
    db $fc
    db $fc
    ld hl, sp-$08
    inc e
    ld a, b
    inc e
    dec l
    ld d, b
    ccf
    inc c
    dec a
    inc d
    nop
    jr c, jr_031_5ddd

    inc e
    rlca
    ld [hl+], a
    rrca
    ccf
    dec de
    dec bc
    ld hl, sp-$04
    nop
    ld h, e
    jr z, @-$7e

    ld [hl], a
    ret nz

    add hl, bc
    jr nc, jr_031_5dc6

    add hl, hl
    dec a
    inc a
    db $e3
    sbc [hl]
    jr jr_031_5d8c

    ld [$1c3a], sp
    ld b, e
    ldh [$dd], a
    ld [$f8fc], sp
    rst $38
    cp $47

jr_031_5dc6:
    ld [de], a
    and e
    inc hl
    cp b
    jp hl


    ld [$a9c0], sp
    ld d, b
    nop
    jr nz, jr_031_5dd2

jr_031_5dd2:
    rst $38
    rst $38
    cp $ff
    push af
    rst $38
    xor d
    rst $38
    ld b, b
    ld d, h
    inc bc

jr_031_5ddd:
    ld [$ff50], sp
    nop
    rst $38
    ret nz

    rst $38
    ld a, [de]
    and b
    rst $38
    ld b, b
    rlca
    ld [$b001], sp
    rrca
    ld bc, $1e08
    nop
    rst $38
    inc e
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    ld a, [hl]
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    ldh [$31], a
    ld [$31c0], sp
    ld [$2240], sp
    rst $38
    add b
    ld bc, $0318
    rst $38
    ld bc, $1801
    inc bc
    or b

jr_031_5e10:
    ld bc, $fe20
    ld [hl+], a
    ld [$1800], sp
    cp $fe
    ccf
    rst JumpTable
    ld bc, $8f77
    ei
    rlca
    ldh a, [rIE]
    ld hl, sp+$71
    ld [$ff00], sp
    rst $38
    nop
    ld bc, $0080
    ret nz

    ret nz

    jr z, jr_031_5e10

    ldh a, [rHDMA3]
    db $10
    ld bc, $0841
    db $fc
    rst $38
    inc bc
    inc [hl]
    rrca
    nop
    nop
    db $10
    ld h, l
    jr @-$0e

    ld h, c
    ld [$ffc3], sp
    ld a, [bc]
    jr nc, jr_031_5ec7

    inc c
    rra
    ld a, e

jr_031_5e4b:
    ld d, b
    ret nz

    adc l
    ld a, b
    jr nz, @-$2a

    dec a
    jr @+$6b

    db $10
    rlca
    sbc c
    jr @+$21

    ld l, l
    jr z, jr_031_5e4b

    rst $38
    ld bc, $ffc7
    add d
    rst $38
    add $ff
    xor $91
    ld [$3194], sp
    ld h, b
    cp $fc
    nop
    ld [$00f8], sp
    ld [$f0f0], sp
    ld b, [hl]
    ldh [rP1], a
    ld [$01c0], sp
    ld bc, $1875
    nop
    jr c, @-$02

    nop
    ld hl, sp-$02
    ld a, [hl]
    ccf

jr_031_5e84:
    rra
    rra
    rrca
    rlca
    ld b, b
    inc bc
    jr jr_031_5ecc

    add b
    nop
    ldh [$c0], a
    ld hl, sp-$10
    add hl, bc
    cp $fc
    ld a, a
    ccf
    rla
    db $10
    inc bc
    ld bc, $3033
    cp $17
    db $10

jr_031_5ea0:
    ld d, e
    db $10
    rst $30
    db $10
    dec b
    ld de, $1001
    ld h, a
    jr nc, @-$69

    db $10
    rlca
    inc [hl]
    rst $38
    ld c, $19
    add hl, sp
    inc de
    jr nz, jr_031_5eb5

jr_031_5eb5:
    and c
    ld [$ff3f], sp
    ld e, d

jr_031_5eba:
    ld a, a
    ld bc, $fd08
    rlca
    add hl, bc
    dec bc
    ld de, $01fc
    ld [$88f8], sp

jr_031_5ec7:
    dec bc
    jr jr_031_5eba

    rst $38
    ld a, b

jr_031_5ecc:
    dec bc
    ld [$ff01], sp
    ld [bc], a
    nop
    rst $38
    ld b, $fc
    ld [$10f8], sp
    ldh a, [$30]
    nop
    ldh [$60], a
    ret nz

    ret nz

    add b
    db $fc
    ld hl, sp-$61
    jr @+$71

    inc bc
    db $fd
    pop bc
    ld c, b
    ld [hl], l
    jr jr_031_5ecc

    ld h, b
    jr c, jr_031_5eef

jr_031_5eef:
    ldh a, [rNR32]
    ld hl, sp+$0e
    db $fc
    ld b, $fe
    ld c, $20
    nop
    jr c, jr_031_5e84

    ld [$0007], sp
    rra
    nop
    ld a, a
    call nz, $1001
    or a
    jr z, jr_031_5ec7

    nop
    di
    ld l, $28

jr_031_5f0b:
    ld hl, sp-$10
    ld a, e
    rst $38
    or a
    jr jr_031_5ea0

    ld [$180f], sp
    and e
    db $10
    ldh [$6f], a
    ld [$1000], sp
    ld de, $ffbf
    add a
    and c
    ld [$ff1c], sp
    inc a
    ld a, c
    ld [$81a0], sp

jr_031_5f29:
    jr nz, jr_031_5f0b

    dec hl
    ld e, c
    inc bc
    rst $38
    dec c
    cp $7d
    xor c
    xor a
    ld [$591f], sp
    add hl, bc
    rlca
    or e
    ld [$c3bc], sp
    inc d
    ld [$ff00], sp
    rst $38
    db $fc
    cp $f9
    rst $38
    di
    cp $40
    rst $30
    or a
    db $10
    sbc h
    ld a, a
    nop
    nop
    ld hl, sp+$00
    rlca
    ld c, $f0
    ei
    db $fc
    ld c, $dd
    jr @-$5f

    db $10
    add hl, de
    ld hl, $c000
    nop
    ld [hl], b
    add b
    cp b
    ret nz

    ld e, b
    ldh [$c0], a
    ld l, $19
    ld h, e
    ld c, c
    ld a, a
    inc c
    rst $38
    inc c
    rst $38
    sbc [hl]
    inc bc
    rst $38
    sbc a
    rst $38
    rst JumpTable
    rst $38
    ld a, a
    rlca
    ld de, $39da
    ld a, [hl]
    ldh a, [rNR21]
    ld a, [de]
    rrca
    jr nz, jr_031_5fc0

    ld hl, $19cc
    ld d, l
    ld [hl+], a
    ld bc, $c030
    or a
    ld de, $1f08
    adc a
    jr @+$03

    jr nz, @+$09

    ld e, [hl]
    ld [hl-], a
    nop
    jr c, jr_031_5f29

    ld [hl+], a
    jp nz, $116f

    add l
    ld a, [de]
    cp $12
    db $fd
    db $10
    dec h
    ld a, [bc]
    ld a, a
    nop
    rst $38
    jp $8081


    nop
    ret c

    ldh [$ee], a
    ld b, b
    inc e
    ld c, e
    ld b, d
    ldh [$7f], a
    jr c, jr_031_5fd7

    inc c
    rrca
    nop
    xor $1f
    inc sp
    rst $08
    add hl, bc

jr_031_5fc0:
    rst $30
    inc b
    ei
    ld h, d
    ld [bc], a
    ld h, e
    ld d, c
    ld l, c
    jr @+$42

    rst $38
    ld h, b
    ld bc, $6c08
    nop
    ldh a, [$3e]
    ldh a, [rNR34]
    ld hl, sp+$1b
    db $fc

jr_031_5fd7:
    rrca
    inc bc
    db $fc
    dec c
    cp $07
    cp $06
    rst JumpTable
    ld [$116b], sp
    ld b, h
    ccf
    ld bc, $bf08
    nop
    cp [hl]
    ld h, d
    ld [$3f7f], sp
    inc hl
    cp a
    ccf
    ld [hl+], a
    add hl, bc
    ccf
    and a
    ld a, a
    dec l
    db $10
    sbc a
    db $10
    or l
    nop
    ld b, b
    rlca
    ld l, $19
    nop
    ld d, b
    ld a, a
    ld a, l
    add hl, de
    ldh [$f9], a
    add hl, de
    cp b
    xor $20
    rlca
    ld sp, $931b
    jr nc, jr_031_6011

jr_031_6011:
    jr nz, @-$04

    cp $02
    nop
    cp $04
    db $fc
    ld [$10fc], sp
    ld hl, sp-$02
    db $10
    rst $38
    add b
    add b
    sbc a
    ld h, d
    dec b
    cp $07
    db $fc
    adc h
    ld bc, $0540
    cp $fe
    rst $10
    add hl, hl
    ld bc, $8630
    rlca
    nop
    add $83
    jp $e161


    ld sp, $10f9
    dec l
    jp hl


    jr @+$48

    ld a, [bc]
    inc c
    pop de
    ld b, b
    ld bc, $4010
    dec bc
    add hl, bc
    ld d, c
    jr nc, @+$03

    ld [$0138], sp
    ld [$ff2c], sp
    inc h
    dec c
    ld [$7fe0], sp
    db $10
    ld bc, $b510
    inc hl
    ld bc, $fbff
    rlca
    ei
    nop
    rlca
    ld a, [hl]
    add a
    or $8f
    cp $8f
    rst $28
    dec b
    sbc a
    db $fd
    sbc a
    ret c

    cp a
    ccf
    ld b, e
    ret nz

    or e
    ld [$3f62], sp
    ld c, l
    ld l, e
    ld a, c
    dec de
    cp $0f
    cp $d5
    ld [de], a
    ld e, a
    jr nc, @+$01

    adc a
    or d
    ld de, $304a
    pop bc
    rst $38
    pop hl
    rst $38
    nop
    ld sp, hl
    rst $38
    rst $38
    ret nz

    ldh [$e0], a
    ldh a, [$f8]
    nop
    ld hl, sp-$04
    db $fc
    and $fe
    jp $e3ff


    rlca
    rst $38
    rst $30
    rst $38
    rra
    cp $35
    inc d
    nop
    ld c, b
    ld c, b
    jr jr_031_60ac

jr_031_60ac:
    ld a, a
    add b
    cp a
    ret nz

    rst JumpTable
    ldh [$ef], a
    ldh a, [rP1]
    di
    db $fc
    db $f4
    inc c
    db $f4
    inc c

jr_031_60bb:
    db $fc
    inc b
    jr nz, jr_031_60bb

    inc b
    nop
    add hl, bc
    ld b, $fa
    ld b, $ff
    ld [bc], a
    inc l
    ret nz

    ld a, a
    ld bc, $4010
    ld bc, $0918
    db $10
    ld [hl+], a
    rst $38
    ld e, l
    ld [hl+], a
    ld hl, $040b
    ld bc, $8108
    ld c, b
    ld bc, $0e18
    xor l
    ld a, [bc]
    nop
    dec de
    db $fc
    rst $38
    cp a
    or e
    db $fc
    daa
    ld hl, sp+$02
    ld h, a
    ld hl, sp-$11
    ldh a, [$ef]

jr_031_60f0:
    ld [hl], b
    ret nz

    ld de, $8083

jr_031_60f5:
    db $db
    ld a, [bc]
    rst JumpTable
    ccf
    rst $28

jr_031_60fa:
    inc e
    db $eb
    inc e
    rst $28
    ld [bc], a
    jr jr_031_60f0

    jr jr_031_60fa

    jr jr_031_60f5

    and e
    ld [$80c1], sp
    cp c
    inc c
    cp l
    ld [hl], e
    cp l
    ld [hl], e
    db $fd
    inc sp
    rst $38
    ld l, b
    ld sp, $1043
    push af
    ld [de], a
    pop af
    cp l
    ld [$c33d], sp
    ld a, a
    ld d, l
    add b
    ld b, a
    inc d
    rra
    and a
    add hl, bc
    ei
    ld de, $e008
    inc bc
    ld [$bf6b], sp
    cp l
    inc h
    or b
    ld c, b
    cp a
    ld a, a
    ld a, [de]
    rra
    add hl, de
    jr jr_031_614f

    ld d, b
    ld d, b
    cp [hl]
    rla
    dec c
    ld c, $af
    add hl, bc
    ret nz

    ldh [$b0], a
    ld hl, sp+$18
    inc c
    cp $02
    rrca
    ld e, e
    ld [de], a
    inc de
    add b
    ret nz

    ld h, b

jr_031_614f:
    ld a, [hl-]
    ldh a, [rNR10]
    ld a, b
    inc hl
    ld d, e
    jr z, jr_031_61ce

    db $10
    db $fd
    ld b, d
    ld [$00fd], sp
    cp $fb
    db $fc
    adc $ff
    rrca
    ld sp, hl
    rrca
    nop
    ld hl, sp+$0f
    ld hl, sp-$01
    ld [bc], a

jr_031_616b:
    ld a, $c3
    db $ed
    nop
    di
    db $db
    dec a
    rst $30
    rrca
    rst $38
    ret nz

    cp l
    db $10
    ld [hl], e
    rst $28
    ld e, $ff
    jr nz, @-$1e

    ld a, a
    and b
    ld a, a
    dec b
    ldh [$bf], a
    ld [hl], b
    cp a
    ldh a, [rIF]
    dec a
    ld bc, $18f1
    ld bc, $fd1a
    ccf
    ld hl, sp+$37
    ld hl, sp+$6f
    cp b
    inc de
    add h
    db $f4

jr_031_6198:
    ld [hl+], a
    nop
    rst $38
    ld h, b
    rst JumpTable
    ld bc, $f758
    jr jr_031_61a2

jr_031_61a2:
    rst $38
    db $10
    rst $38
    db $10
    rst JumpTable
    jr nc, jr_031_6198

    jr nc, jr_031_616b

    db $ec
    add hl, bc
    ld bc, $3110
    rst JumpTable
    ld sp, $31de
    cp $09
    ld de, $19f6
    xor $01
    ld [$08ff], sp
    ld d, d
    ld [hl], l
    inc b
    cp e
    ld a, a
    rst $38
    ccf
    rst JumpTable
    ld a, [c]
    dec bc
    cp $0f
    ld bc, $0ff6
    db $fc

jr_031_61ce:
    rlca
    ld a, [$8f07]
    inc hl
    inc c
    db $ec
    sbc a
    ld [hl-], a
    ld bc, $c710
    ld [hl-], a
    rra

jr_031_61dc:
    ld a, a
    ld [$1017], sp
    ld e, $ff
    ld d, [hl]
    cp h
    jp $f83c


    ld e, c
    ld a, [bc]
    ld [$09ba], sp
    sub d
    ld d, d
    dec bc
    and b
    and l
    ld a, [de]
    inc bc
    rrca
    add hl, bc
    dec b
    rst $38
    ld b, $fd
    dec bc
    ld c, b
    db $fc
    cp d
    add hl, de
    inc b
    ld sp, hl
    reti


    add hl, bc
    ld a, a
    add d
    cp l
    nop
    jp $f36f


    ldh a, [$1f]
    ldh a, [$1f]
    ld sp, hl
    add b
    jp nc, $df0b

    ccf
    dec a
    cp $e7
    ld hl, sp-$41
    nop
    ret nz

    ld a, $f1
    ld a, [hl]
    pop hl
    cp $c1
    cp $03
    add c
    db $fc
    ld bc, $01f8
    pop hl
    ld b, a
    inc c
    sbc e
    ld d, b
    ld c, $7f
    add b
    ld a, a
    add b
    db $d3
    db $10
    ld d, h
    dec e
    ld bc, $df28
    ld bc, $df20
    jr nz, jr_031_61dc

    ld h, b
    cp a
    ld b, b
    ld bc, $2130
    rst $30
    ld [$1001], sp
    di
    inc c
    ei
    inc b
    ld bc, $1620
    cp $03
    db $fd
    sub c
    ld a, [bc]
    cp $c2
    jr c, @+$0f

    ld b, e
    ld b, b
    ld h, d
    rst $38
    ld e, c
    ld de, $11c9
    ld e, $ff
    ld a, $01
    jr @+$81

jr_031_6265:
    jr nz, jr_031_6265

    ld a, a
    ld c, a
    dec bc
    ei
    ld b, $fd
    ld b, $fb
    db $10
    inc c
    rst $30
    jr jr_031_62a7

    ld de, $60bf

jr_031_6277:
    dec c
    ld hl, sp+$11
    add hl, bc
    ld hl, sp+$10
    ld bc, $1808
    ldh a, [rNR10]
    ld bc, $0c08
    jr nz, jr_031_6277

    xor $1f
    adc c
    jr @+$05

    inc c
    nop
    ld bc, $0512
    inc bc
    rrca
    dec l
    dec bc
    db $fd
    ld c, $63
    add hl, bc
    jr nz, jr_031_62ab

    rst $38
    ld b, b

jr_031_629d:
    cp a
    add c
    ld de, $f080
    ldh [$d8], a
    rlca
    jr c, jr_031_629d

jr_031_62a7:
    inc c
    ld a, [$7506]

jr_031_62ab:
    jr nc, @-$4b

    db $10
    sbc c
    jr nz, jr_031_62cf

    ccf
    ret nz

    cp a
    ld bc, $a910
    jr c, @+$03

    jr nz, jr_031_62da

    db $10

jr_031_62bc:
    ld a, a
    ret nz

    cp c
    add hl, bc
    inc bc

jr_031_62c1:
    jr nc, jr_031_62bc

    ld b, $fd
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld b, b
    pop af
    ld bc, $e008
    inc bc
    ld [c], a

jr_031_62cf:
    ld bc, $01e2
    ld [bc], a
    ldh [$3f], a
    ldh [$3f], a
    ret nc

    ccf
    dec h

jr_031_62da:
    ld de, $52e8
    rra
    ld e, $0a
    rrca
    ld [hl], $0a
    cp $3d
    ld bc, $3c18
    ldh [rSB], a
    jr jr_031_62c1

    jr nz, jr_031_6357

    ld [$fd01], sp
    inc bc
    cp $03
    ld e, $7b
    ld b, $ff
    ld h, $0b
    adc c
    db $10
    ld c, e
    db $10
    ld bc, $2010
    adc b
    ld b, a
    ld c, $35
    db $e3
    ld a, $44
    add hl, sp
    add hl, sp
    rra
    pop hl
    jr c, jr_031_638d

    add c
    di
    dec hl
    dec [hl]
    inc de
    inc b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld bc, $ff18
    nop
    add b
    ld bc, $fe70
    ld bc, $01ff
    ld a, a
    ret nz

    rst $38
    ld b, d
    ld b, b
    ld bc, $7f10
    ret nz

    cp a
    ret nz

    add hl, hl
    db $10
    cp a
    ld h, b
    ld b, b
    ld bc, $3530
    jr nz, @-$3e

    ld bc, $01e0
    pop bc
    inc bc
    nop
    and b
    nop
    ret nz

    nop

jr_031_6343:
    add b
    inc bc
    jr @+$39

    db $10
    ret nz

    add hl, de
    jr nz, jr_031_6377

    db $10
    ccf
    ld b, b
    db $fc
    rlca
    db $fc
    rlca
    nop
    ld a, [$fe07]

jr_031_6357:
    inc bc
    cp $03
    db $fd
    inc bc
    ld b, b
    rst $38
    ld c, a
    ld [$fe3c], sp
    inc a
    cp $3e
    cp $00
    ccf
    cp $1e
    rst $38
    ld e, $ff
    rra
    rst $38
    nop
    rst $38
    rst $38
    ccf
    inc b
    rlca
    inc c
    dec de

jr_031_6377:
    inc c
    db $10
    rrca
    jr @+$19

    ld bc, $3f08
    db $10
    sbc a
    jr nc, jr_031_6343

    ld a, c
    jr nc, jr_031_63b3

    ld [$fb03], sp
    rlca
    rst $38
    rlca
    rst $38

jr_031_638d:
    ld bc, $db00
    inc a
    ld a, l
    cp $ff
    cp $02
    ld [$2d88], sp
    ld [$ffff], sp
    nop
    nop
    db $10
    add b
    add b
    ret nz

    nop
    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    nop
    cpl
    or b
    xor a
    or b
    rst $38
    and b
    rst $38

jr_031_63b3:
    ldh [$08], a
    rst $38
    ldh [$ed], a
    di
    jr nz, @+$1a

    rrca
    rst $28
    rra
    inc b
    rst JumpTable
    ccf
    cp a
    ld a, a
    ld a, a

jr_031_63c4:
    inc c
    jr @+$01

    rst $38
    inc d
    inc b
    rst $38
    ld [bc], a
    ld bc, $0108

jr_031_63cf:
    call nc, $f840
    ldh a, [rLCDC]
    rrca
    and c
    db $10
    cp a
    ret nz

    ld e, a
    ldh [$3f], a
    ldh [rNR44], a
    cpl
    ldh a, [rKEY1]
    ld [$c0f0], sp
    ccf
    jp hl


    ld [$10ed], sp
    ret nz

    ld e, $08
    nop
    jr z, jr_031_63cf

    ret nz

    inc a
    ld a, h
    add e
    sbc a
    jr jr_031_6456

    rst $20
    jr jr_031_63c4

    jr nc, jr_031_641c

    ld hl, $807f
    ld b, b
    db $e4
    db $e3
    ld [$0880], sp
    inc bc
    jr z, jr_031_6407

jr_031_6407:
    nop
    db $e3
    db $10
    ld e, a
    jr nz, @+$12

    ld e, a
    jr nz, jr_031_642f

    ld bc, $2f18
    db $10
    rla
    ld hl, sp+$07
    rrca
    ld hl, sp+$0b
    db $fc
    dec b

jr_031_641c:
    ldh a, [$08]
    ld [hl], l
    jr nz, jr_031_6470

    ld d, c
    nop
    ld a, a
    add b
    db $fd
    add d
    di
    inc c
    db $fc
    inc bc
    or $13
    ld h, b
    ld d, a

jr_031_642f:
    jr nz, jr_031_64aa

    ld l, c
    ld bc, $fc28
    adc a
    jr nc, jr_031_6438

jr_031_6438:
    jr @+$05

    dec b
    ld bc, $0706
    cpl
    db $10
    ld bc, $0f10
    ld bc, $0208
    cpl
    db $10
    rst $28
    ret nc

    cpl
    ldh a, [$e5]
    jr nz, jr_031_648e

    jr c, @+$01

    rrca
    ld a, [hl+]
    add hl, bc
    ld l, a
    db $10

jr_031_6456:
    rst $10
    db $10
    cpl
    ldh a, [$27]
    nop
    ld hl, sp+$1b
    db $f4
    dec d
    ld a, [$f90e]
    dec bc
    nop
    db $fc
    ccf
    ret nz

    rst $08
    jr nc, @-$07

    ld [$10f9], sp
    ld b, $fc

jr_031_6470:
    inc bc
    rst JumpTable
    db $10
    ld a, a
    add b
    db $fc
    nop
    ld b, b
    ld a, [$0855]
    ld hl, sp+$00
    db $fd
    nop
    ei
    ld bc, $f700
    ld bc, $03fb
    jr jr_031_64a7

    jr c, jr_031_64c9

    nop
    ld [hl], b
    ld a, a
    pop af

jr_031_648e:
    rst $38
    ld a, [c]
    rst $38
    di
    cp $00
    rst $30
    db $fc
    ei
    db $fc
    cpl
    ldh a, [$3f]

jr_031_649b:
    ldh [$30], a
    rst $38
    ret nz

    adc a
    ld c, b
    nop

jr_031_64a2:
    jr jr_031_64a2

    rst $38
    db $fc
    rst $38

jr_031_64a7:
    db $10
    ld hl, sp-$01

jr_031_64aa:
    ldh a, [rSB]
    ld [$ffff], sp
    rst $08
    rst $38
    ret nz

    ret nz

    ld d, b
    nop
    ld b, b
    rra
    rra
    rlca
    rlca
    nop
    nop
    ld a, b

jr_031_64bd:
    rlca

jr_031_64be:
    ei
    jr z, jr_031_64be

    db $10
    ld bc, $0510
    ld [de], a
    sbc a
    ld h, b
    rst JumpTable

jr_031_64c9:
    nop
    jr nz, jr_031_649b

    jr nc, jr_031_64bd

    db $10
    ld h, a
    sbc b
    ld h, a
    ld h, b
    sbc b
    di
    jr nz, jr_031_654c

    ld [de], a
    cp a
    ret nz

    db $dd
    db $e3
    rst $38
    dec d
    rst $38
    rst $30
    inc bc
    cp b
    ld [$0a0f], sp
    ld a, [bc]
    ccf
    or c
    ld hl, $f707
    ld hl, sp-$05
    db $fc
    db $fd
    ld [$0021], a
    jr nz, jr_031_6519

    add hl, hl
    dec bc
    rst $28
    ldh a, [$fb]
    db $fc
    ld d, $10
    ret nz

    cp e
    ld [$2813], sp
    nop
    nop
    rra
    nop
    inc bc
    nop
    rlca
    nop
    ld bc, $23c2
    ld e, c
    nop
    ld d, b
    ret nz

    nop
    ld a, h
    nop
    nop
    nop
    sub $01
    and d
    rra

jr_031_6519:
    ld a, c
    rlca
    db $eb
    rla
    sub a
    ld a, a
    ld h, c
    jp hl


    adc a
    jr nc, @+$01

    nop
    nop
    nop
    rst $28
    db $10
    ld a, [c]
    dec c
    adc b
    ld [hl], a
    cp b
    ld a, a
    ld c, a

jr_031_6530:
    rst $38
    jr c, jr_031_6530

    db $e4
    or $00
    add b
    rlca
    nop
    rst $38
    ld e, b
    ldh [$2c], a
    cp $77
    and [hl]
    and [hl]
    call $e8cd
    ld d, b
    call nz, $0538
    nop
    rst $38
    add sp, $16

jr_031_654c:
    jp nc, $3d3f

    adc a
    ld e, [hl]
    cp $f8
    db $fc
    ld h, b
    ld h, b
    nop
    nop
    ldh [rP1], a
    nop
    ld bc, $0705
    rrca
    rrca
    ld a, a
    ld a, a
    rst $28
    rst $38
    ld sp, hl
    rst $38
    rla
    rla
    and b
    rrca
    nop
    inc bc
    rrca
    ld [de], a
    rra
    dec e
    rra
    rrca
    rrca
    rlca
    rlca
    dec d
    ld d, l
    rst $38
    nop
    rrca
    ld bc, $cf2b
    cp a
    db $fc
    ld hl, sp-$7c
    add b
    ccf
    nop
    rst $38
    and h
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    pop hl
    pop hl
    dec b
    ld b, b
    rst $38
    daa
    ld a, b
    ld [bc], a
    db $fd
    ret nc

    ld a, [$b5fd]
    ld a, l
    ld l, e
    sbc e
    db $10
    db $ec
    dec d
    ld b, b
    rst $38
    add b
    ld a, l
    ld [bc], a
    jp $fbac


    ld a, $3e
    nop
    nop
    nop
    nop
    ret nc

    nop
    nop
    ret nz

    dec a
    ret nz

    rrca
    ldh a, [rHDMA5]
    ld [$fdb2], a
    db $fd
    cp $c8
    rst $38
    dec d
    ret nz

    rst $38
    ld bc, $68fe
    or b
    xor $ed
    cp a
    ld b, [hl]
    ld l, a
    nop
    add b
    db $fd
    ld b, h
    nop
    add b
    call c, $10ea
    rst $38
    ld a, $c0
    ld b, b
    inc b
    ldh a, [$08]
    ld b, [hl]
    ld hl, sp-$77
    or $c2
    db $fc
    push af
    cp $bd
    ld hl, sp-$1c
    jr nz, @+$42

    rst $38
    rst $38
    nop
    ld d, b
    ld [bc], a
    nop
    dec bc
    ld d, a
    ld a, l
    ld [bc], a
    dec sp
    inc b
    ld b, d
    ccf
    and l
    ld e, a
    ld b, e
    scf
    ld a, [bc]
    rst $38
    rst $38

jr_031_65fa:
    nop
    nop
    jr nc, jr_031_65fa

    ret nc

    nop
    ld [hl], h
    adc d
    xor h
    ld e, [hl]
    ld [hl], $f7
    cp b
    db $fd
    sbc [hl]
    sbc [hl]
    rlca
    rlca
    db $fc
    nop
    nop
    ld bc, $4e04
    ld bc, $02bd
    call nc, $202b
    ld e, a
    nop
    rrca
    nop
    inc bc
    ld a, a
    cpl
    cp a
    ld e, $ff
    ld [hl], h
    ld a, a
    ld a, $3f
    dec b
    dec b
    db $fd
    nop
    nop
    ldh [$b0], a
    ld c, b
    ld c, b
    cp a
    cp h
    db $fd
    ld d, l
    push af
    ld de, $ff00
    ld [hl], e
    di
    db $e3
    rst $10
    rst $30
    ld a, l
    and $ee

Call_031_663f:
    rst $10
    rst JumpTable
    ccf
    ccf
    ld d, $16
    rst $38
    nop
    nop
    jr nc, jr_031_6692

    and b
    ld a, a
    dec sp
    cp e
    rst $10
    rst $10
    nop
    rrca
    nop
    adc h
    rst $28
    ld h, b
    sub b
    ret nc

    jr nz, @+$66

    call c, $f898
    ldh a, [$f0]
    db $f4
    ld [hl], h
    nop
    inc bc
    dec b
    ld [bc], a
    ld c, $01
    ld b, $01
    ld d, b
    ld [bc], a
    nop
    rra
    ccf
    ld e, e
    inc h
    push af
    ld a, [bc]
    ret z

    scf
    ld [bc], a
    rst $38
    inc d
    cp $59
    ldh a, [rIF]
    nop
    inc b
    inc b
    jr z, jr_031_66a8

    jr z, jr_031_66aa

    db $10
    db $10
    rst $38
    rst $38
    nop
    db $fc
    rrca
    nop
    inc bc
    inc bc
    inc h
    inc h
    jr jr_031_66a8

    rst $38
    rst $38

jr_031_6692:
    nop
    rst $38
    inc bc
    nop
    inc b
    inc b
    ld a, [de]
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    nop
    ld d, b
    inc bc
    ld b, b
    ld [bc], a
    add c
    ld b, $07
    inc b
    rlca

jr_031_66a8:
    jr nz, jr_031_66af

jr_031_66aa:
    ld b, $21
    dec c
    ld c, $09

jr_031_66af:
    ld c, $0a
    ld c, b
    dec c
    ld h, c
    add hl, bc
    rrca
    ld hl, $0f01
    ld [de], a
    ld [$131f], sp
    ld e, $17
    ld b, c
    dec d
    ld e, $3d
    nop
    ld a, $30
    scf
    add hl, hl
    cpl
    ld [hl], l
    ld a, a
    ld c, d
    nop
    ld e, a
    ld [hl+], a
    scf
    ld d, $37
    ld h, h
    ld h, a
    dec h
    nop
    ld h, $0d
    ld c, $09
    ld c, $0b
    inc c
    ld a, [bc]
    nop
    dec c
    dec de
    dec e
    ld de, $121f
    ld e, $14
    nop
    inc e
    inc [hl]
    inc a
    jr c, jr_031_6725

    jr nc, @+$32

    ld h, b
    ld [$4060], sp
    ld b, b
    nop
    ret nz

    db $10
    db $10
    jr jr_031_6748

    jr @+$35

    inc a
    inc a
    add hl, sp
    ccf
    ld hl, $0415
    dec de
    inc d
    dec de
    ld d, $19
    ld hl, $3936
    inc b

jr_031_670c:
    inc sp
    inc a
    dec sp
    inc a
    dec hl
    ld b, c
    ld l, e
    ld a, h
    and b
    ld hl, $4163
    db $e3
    db $fc
    set 6, h
    ld c, e
    ld bc, $6ff4
    ret nc

    cpl
    ret nc

    ld l, a
    sub b

jr_031_6725:
    ld hl, $4f00
    or b
    ld e, a
    and b
    rst JumpTable
    jr nz, jr_031_670c

    ld hl, $fe20
    ld bc, $be21
    ld b, c
    cp h
    ld b, e
    inc a
    inc b
    jp $837c


    ld a, b
    add a
    ld hl, $8679
    nop
    pop af
    ld c, $f5
    ld c, $e7
    inc e

jr_031_6748:
    rst $28
    inc e
    nop
    xor $1d
    rst JumpTable
    dec a
    cp c
    ld a, a
    xor c
    ld l, a
    ld [bc], a
    ld d, e
    rst JumpTable
    sub d
    sbc [hl]
    sub h
    sbc h
    ld hl, $0018
    jr @+$3a

    jr c, jr_031_6791

    jr nc, jr_031_6783

    jr nz, jr_031_6765

jr_031_6765:
    and b
    nop
    rra
    add b
    add b
    ret nz

    ret nz

    ret nc

    ret nc

    ld d, b
    ld bc, $c8d0
    ld c, b
    add sp, $68
    xor h
    ld l, h
    ld hl, $a420
    ld h, h
    ld hl, $4484
    sub [hl]
    ld d, [hl]
    sbc $48
    ld e, [hl]

jr_031_6783:
    ld hl, $7eee
    ld hl, $7fcf
    ld c, a
    ld [bc], a
    rst $38
    ld e, a
    rst $28
    rst $10
    rst $28
    sub a

jr_031_6791:
    add c
    scf
    ld bc, $36cf
    adc $26
    sbc $6e
    sbc [hl]
    ld hl, $4e08
    cp [hl]
    call nc, $2134
    and h
    ld h, h
    ld h, h
    db $10
    db $e4
    ld c, b
    ret z

    jr nz, jr_031_6783

    ret c

    sub b
    sub b
    inc d
    and b
    and b
    nop
    ret nz

    ld bc, $0900
    ld [bc], a
    inc bc
    sub b
    ld h, c
    dec b
    rlca
    ld hl, $0606
    ld [$6408], sp
    ld [bc], a
    ld b, b
    daa
    ld a, [bc]
    ld c, $21
    adc a
    adc e
    ld [bc], a
    adc l
    adc e
    sub l
    sbc e
    push de
    db $db
    ld hl, $005d
    ld d, e
    dec c
    ld d, e
    dec l
    ld [hl], e
    cpl
    ld [hl], e
    dec de
    nop
    ld h, a
    ld e, e
    ld h, a
    ld e, d
    ld h, [hl]
    ld d, d
    ld l, [hl]
    or [hl]
    ld b, b
    adc $21
    and h
    call c, $9c6c
    ld d, h
    or h
    nop
    ld c, b
    xor b
    ld [$58c8], sp
    ret c

    ld d, b
    ret nc

    ld d, h
    add b
    ld b, b
    nop
    nop
    dec de
    ld bc, $03c0
    inc bc
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
    ld d, b
    nop
    rst $38
    jr nz, jr_031_6832

    adc h
    ld a, a
    db $e3
    rra
    ld a, c
    rlca
    ld [hl], $09
    dec bc
    inc b
    inc e
    inc bc
    ld bc, $ff54
    rrca

jr_031_6832:
    ldh a, [$03]
    db $fc
    ld hl, $18fe
    add $79
    ccf
    rst $08
    ccf
    ld d, h
    nop
    nop
    inc bc
    add c
    ldh [$78], a
    add b
    inc e
    ldh [$c7], a
    ld hl, sp-$0f
    cp $fc
    rst $38
    ld bc, $0054
    sbc c
    ld h, a
    call z, $7633
    add hl, bc
    ccf
    rrca
    add e
    ldh a, [$3f]
    ret nz

    ld d, l
    ld [bc], a
    rst $38
    db $eb
    pop af
    ld a, h
    rra
    add a
    ld a, a
    ldh [$1f], a
    ld a, h
    inc bc
    nop
    db $fd
    ld d, b
    rst $38
    rrca
    ret nz

    ld a, h
    inc bc
    db $fc
    ldh [$1f], a
    ld d, l
    ld b, c
    rst $38
    db $fc
    ldh a, [$87]
    db $fc
    nop
    inc bc
    db $fc
    db $fc
    inc bc
    rrca
    nop
    rlca

jr_031_6883:
    rst $38
    rrca
    ldh a, [$3a]
    push bc
    dec b
    ld a, [$f40b]
    inc a
    jp $1fe6


    ccf
    ld bc, $ff54
    ld b, b
    cp a
    add b
    ld a, a
    dec b
    cp $28
    ld d, l
    xor a
    ld a, h
    jp $00fc


    nop
    ld [hl], c
    adc [hl]
    and d
    ld e, l
    ld b, c
    cp [hl]
    inc bc
    db $fc
    call nc, $88eb
    rst $30
    nop
    rst $38
    add b
    ld a, a
    nop
    dec b
    rst $38
    ld a, [hl]
    add c
    db $fc
    inc bc
    ld sp, hl
    rlca
    ld [hl-], a
    rst $08
    ld h, e
    sbc a
    adc [hl]
    ld a, a
    jr c, jr_031_6883

    nop
    nop
    ld a, c
    cp $b3
    db $fc
    ld h, l
    ld a, [$f4cb]
    add [hl]
    ld hl, sp+$08
    ldh a, [rNR52]
    ret nz

    call c, Call_031_5100
    rst $38
    nop
    jr jr_031_68e8

    dec b
    ld [bc], a
    ld bc, $0514
    nop
    ld b, $01
    inc bc
    ld bc, $8040
    add b
    ld h, b

jr_031_68e8:
    ld c, b
    jr nc, jr_031_6907

    rlca
    nop
    rlca
    nop
    ld l, h
    ldh a, [rSC]
    db $fc
    call z, Call_031_663f
    rra
    add hl, sp
    rlca
    inc b
    inc bc
    ld bc, $0140
    rra
    ld [$0f16], sp
    adc e
    rlca
    ld [hl+], a
    pop bc
    adc b

jr_031_6907:
    ldh a, [$f1]
    cp $3c
    rst $38
    ld l, a
    nop
    rlca
    rst $38
    pop bc
    nop
    jr nz, @-$3e

    ld [$c6f0], sp
    ld hl, sp+$71
    cp $fc
    ccf
    rrca
    nop
    nop
    ld [hl], c
    adc a
    sbc h
    ld h, e
    ld l, a

jr_031_6924:
    db $10
    inc sp
    inc c
    adc h
    inc bc
    ld h, [hl]
    add c
    add hl, de
    ldh [$e3], a
    db $fc
    ld d, h
    nop
    rst $38
    rst $20
    ld a, c
    ld c, $e3
    rra
    db $fc
    inc bc
    rst $08
    ldh a, [$bc]

jr_031_693c:
    ld a, a
    rst $08
    ccf
    dec d
    pop bc
    rst $38
    add e
    db $fc
    ldh a, [$3e]
    jp Jump_031_7f87


    db $fc
    inc bc
    ldh [rDIV], a
    ld [hl], l
    rst $38
    ldh a, [rIF]
    ld a, [hl]
    add c
    nop
    pop af
    cp $c0
    ccf
    nop
    ld d, b
    rlca
    rst $38
    rrca
    nop
    inc bc
    db $fc
    ret nz

    ccf
    jr c, jr_031_6924

    ld bc, $e0fe
    ret c

    dec h
    rst $38
    ld a, h
    nop
    rra
    ldh [rP1], a
    nop
    nop
    nop
    ret nz

    dec b
    ld c, d
    nop
    ldh [rIE], a
    inc bc
    db $fc
    ld hl, sp+$07
    rst $38
    ldh a, [rIF]

jr_031_697f:
    rst $38
    rst $38
    db $10
    ld [bc], a
    rrca
    inc e
    db $e3
    di
    ld b, b
    ccf
    ld hl, sp+$07
    add e
    ld a, h
    nop
    rst $38
    ld bc, $f0fe
    ld d, h
    add b
    rst $38
    inc a
    pop hl
    rrca
    ld bc, $00fe
    ccf
    ret nz

    db $fc
    nop
    ret nz

    nop
    ld bc, $005f
    ld sp, $c7fe
    ld hl, sp+$1f
    ldh [$fe], a
    ld hl, sp-$40
    ld d, a
    ld d, b
    nop
    ldh a, [$e0]

jr_031_69b2:
    add b
    ld bc, $0e03
    ld bc, $0639
    ld b, b
    jr nz, jr_031_693c

    ld b, b
    jr nc, jr_031_697f

    inc c
    ldh a, [rTMA]
    ld hl, sp+$01
    cp $7f
    ld h, b
    rra
    inc e
    inc bc
    rst $38
    ld b, b
    nop
    add b
    ld h, b
    add b
    jr jr_031_69b2

    ld b, $f8
    ldh a, [rP1]
    nop
    ld b, b
    add b
    sub b
    ld h, b
    ld b, h
    jr c, @+$30

    rra
    dec bc
    rlca
    dec b
    inc bc
    rrca
    ldh a, [rP1]
    rlca
    rrca
    dec b
    inc bc
    and b
    ret nz

    add sp, -$10
    nop
    ccf
    nop
    db $e3
    rst $38
    ld hl, sp-$01
    ld a, $ff
    daa
    rra
    ld [bc], a
    ld bc, $0050
    rst $38
    cp $7f
    ld b, e
    cp a
    and [hl]
    pop bc
    call z, $8cf0
    ld a, a
    inc de
    rrca
    ld [bc], a
    ld bc, $0155
    rst $38
    nop
    ret nz

    db $fc
    ccf
    jr nc, jr_031_6a24

    ret nz

    nop
    adc [hl]
    ldh a, [$78]
    nop
    sbc l
    nop
    rst $38
    rst $38
    inc bc
    rst $38
    ld a, b
    add a
    rst $20

jr_031_6a24:
    ld hl, sp-$01
    ld a, a
    ld hl, sp+$74
    jr nz, @+$01

    ret nz

    rlca
    ret nz

    ccf
    ld a, h
    add e
    nop
    ccf
    nop
    nop
    nop
    add d
    add l
    nop
    rst $38
    rra
    ldh [$fc], a
    rst $38
    rst $38
    rst $38
    db $fc
    inc bc
    rst $38
    rlca
    ld a, [bc]
    dec b
    nop
    rlca
    ld hl, sp-$40
    ccf
    rst $38
    rst $38
    ccf
    ret nz

    inc bc
    db $fc
    rst $38
    add e
    inc h
    and b
    rst $38
    add c
    ld a, [hl]
    nop
    nop
    rlca
    ld hl, sp+$00
    nop
    ld e, $01
    add e
    ld a, h
    ld d, c
    pop bc
    nop

jr_031_6a65:
    db $fc
    rst $38
    rra
    ldh [$fc], a
    ld hl, sp+$07
    rlca
    ld hl, sp-$04
    call nc, $0047
    ldh a, [$80]
    ld b, $01
    ld a, a
    rra
    ldh [$f8], a
    ld b, b
    ld e, a
    nop
    inc bc
    inc e
    inc bc
    rst $20
    rra
    rlca
    ld hl, sp-$08
    add b
    inc bc
    rst $38
    nop
    inc [hl]
    ld hl, sp-$38
    ldh a, [$60]
    add b
    push af
    ld d, a
    nop
    db $10
    ld h, b
    ldh [$c0], a
    add b
    rlca
    rst $38
    nop
    add b
    ld a, a
    jr c, jr_031_6aa5

    inc bc
    ld b, c
    rst $38
    nop
    add b
    jr c, jr_031_6a65

jr_031_6aa5:
    add e
    ld a, h
    rra
    ld bc, $00ff
    ld sp, hl
    ld a, [hl]
    ld e, [hl]
    ccf
    inc de
    rrca
    inc bc
    ret nz

    ccf
    nop
    ld b, b
    add b
    ret nc

    ldh [$84], a
    ld a, b
    ld h, c
    ld e, $fd
    ld d, l
    nop
    add b
    ld [hl], b
    ld e, $07
    ld bc, $f51f
    nop
    ld h, b
    rra
    inc bc
    ldh [rIE], a
    inc bc
    push af
    nop
    ld bc, $c0fe

jr_031_6ad3:
    ccf
    ld e, $01
    inc bc
    ret nz

    ld l, c
    rst $10
    nop
    ld hl, sp-$01
    rst $38
    rlca
    ld bc, $c5ff
    ld d, a
    nop
    inc bc
    db $fc
    rst $38
    rst $38
    inc bc
    rst $38
    cp $55
    ld e, a
    nop
    ld a, a
    db $fc
    ret nz

    rst $38
    rst $38
    db $fc
    ld a, l
    ld a, a
    nop
    cp $f8

jr_031_6af9:
    ret nz

    rst $38
    ld b, e
    nop
    ld bc, $030c
    ldh [$1f], a
    db $f4
    inc bc
    nop
    ld bc, $0718
    add b
    ld a, a
    ld bc, $70fe
    add b
    ld d, b
    rra
    nop
    ld bc, $810f
    ld a, [hl]
    ld [bc], a
    db $fc
    jr jr_031_6af9

    ret nz

    ld d, l
    ld e, a
    nop
    ldh [$c0], a
    add b
    jr nz, jr_031_6b62

    add b
    and b
    nop
    inc bc
    dec b
    dec c
    rlca
    add hl, de
    rrca
    inc sp
    rra
    ld h, a
    ccf
    rst $08
    ld a, e

jr_031_6b31:
    sbc h
    db $fc
    dec sp
    and b
    nop
    add b
    ld b, b
    ld h, b
    ret nz

    jr nc, jr_031_6b9c

    sbc b
    or b
    call z, $e4f8
    ld hl, sp+$04
    nop
    db $fc
    rst $38
    cp $00
    ld bc, $ab00
    nop
    ldh [$98], a
    ld b, b
    or b
    ret nz

    jr nz, jr_031_6ad3

    ld h, b
    ret nz

    add b
    add b
    ld [$00af], a
    ld bc, $0101
    ld bc, $ff01
    db $fc
    nop

jr_031_6b62:
    rst $38
    rst $38
    xor d
    xor d
    rst $38
    ld [hl+], a
    ld e, l
    or d
    xor [hl]
    xor [hl]
    or d
    ld e, l
    ld [hl+], a
    ld a, [bc]
    jr nz, jr_031_6b31

    rst $38
    ld c, $1f
    pop af
    db $e4
    db $fc
    sbc a
    pop af
    rst $20
    ccf
    ldh [rIE], a
    rra
    ld a, [bc]

jr_031_6b80:
    nop
    rrca
    rlca
    add hl, bc
    dec b
    dec de
    inc de
    scf
    rra
    ld h, [hl]
    ccf

jr_031_6b8b:
    ld c, h
    cpl
    ret c

    ld a, a
    sbc b
    cp $80
    nop
    ld bc, $0103
    ld [bc], a
    ld bc, $0306
    inc c
    nop

jr_031_6b9c:
    dec bc
    nop
    ret nc

    jr z, jr_031_6bf1

    xor b
    sub b
    ld l, b
    ld d, b
    xor b
    jr nz, jr_031_6b80

    ret nz

    jr nc, jr_031_6b8b

    rst $38
    ld a, [$0100]
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    db $fc
    nop
    ld a, a
    ld a, a
    rst $38
    db $fc
    nop
    pop bc
    pop bc
    rst $38
    db $fc
    nop
    ret nz

    ret nz

    nop
    rst $38
    rst $38
    and $ff
    ret nz

    rst $38
    ret nz

    rst $28
    nop
    ret nz

    ld [c], a
    ret nz

    ldh a, [$c0]
    db $f4
    ldh [$fb], a
    nop
    nop
    rst $08
    rlca
    sbc b
    rrca
    inc de
    dec bc
    scf
    nop
    rra
    and a
    rla
    ld l, a
    ccf
    ld c, a
    ld l, $df
    stop
    rst $38
    rst $38
    ld [bc], a
    ld [$ffff], sp
    rst JumpTable

jr_031_6bef:
    ldh [rSC], a

jr_031_6bf1:
    and b
    rst JumpTable
    ld b, b
    or d
    add b
    ld l, b
    rrca
    jr nc, @+$01

    inc h
    nop
    nop
    ld [bc], a
    ld [$0100], sp
    rrca

jr_031_6c02:
    jr c, @+$11

    cpl
    nop
    rst JumpTable
    ld a, a
    sbc a
    ld a, a
    cp a
    nop
    db $fc
    ld hl, sp+$00
    ld b, $f4
    ld a, [$faf4]
    ld hl, sp-$0a
    ld hl, sp+$00
    db $e4
    ret nc

    rst $28
    rst $38
    ret nz

    ld a, a
    ld b, c
    ld a, a
    dec b
    ld d, l
    ld a, a
    ld [hl], a
    dec e
    dec d
    ld bc, $1d08
    dec hl
    stop
    rst JumpTable
    ld d, h
    rst $38
    ld [hl], l
    rst $38
    inc b
    rst $38
    ld [hl], l
    db $10
    rst JumpTable
    ld d, h
    rst JumpTable
    ld e, e
    jr jr_031_6c02

    ld b, l
    rst $00
    push bc
    adc b
    inc bc
    jr jr_031_6c86

    rst $00
    rst $00
    rrca
    db $10
    ld a, a
    ld b, [hl]
    ld a, a
    ld bc, $7f5d
    ld b, l
    rst $38
    db $dd
    rst $38
    ld b, [hl]
    inc c
    ld [$f100], sp
    ldh [rNR31], a
    rst $38
    ld sp, $f7ff
    rst $38
    jr jr_031_6bef

    rst $38
    rst $10
    rlca
    ld [$1068], sp
    nop
    rst $28
    ld h, h
    nop
    rst $38
    dec [hl]
    rst $38
    ld d, l
    rst $38
    ld h, l
    rst $38
    ld [hl], h
    add b
    ccf
    ld [$f8fc], sp
    rlca
    ldh a, [$32]
    di
    sub $00
    ld [hl], e
    ld d, d
    di
    sub $f3
    inc sp
    pop hl
    pop hl
    add b
    adc a
    db $10

jr_031_6c86:
    rst $38
    jr @+$01

    db $eb
    cp a
    xor b
    rst $38
    ld a, [bc]
    db $eb
    cp $1a
    cp $2f
    jr jr_031_6d14

    nop
    jr nc, @+$01

    inc bc
    inc a
    rst $38
    ld bc, $02fe
    cp l
    xor e
    jr jr_031_6ca2

jr_031_6ca2:
    jr jr_031_6ca4

jr_031_6ca4:
    ccf
    rst $38
    rst JumpTable
    ccf
    cpl
    rst JumpTable
    ldh [$f9], a
    ld bc, $fef0
    db $fc
    rst $38
    db $fc
    rst $38
    cp $01
    ld [$0780], sp
    db $10
    ld a, e
    sbc h
    ld d, h
    cp e
    add sp, $36
    or b
    ld bc, $e04c
    jr jr_031_6cc5

jr_031_6cc5:
    ldh a, [rP1]
    ret nz

    ld d, c
    ld [$cc16], sp
    nop
    and b
    rlca
    ld [$0940], sp
    ld [$2000], sp
    inc bc
    nop
    ld bc, $0102
    ld b, $03

jr_031_6cdc:
    inc c
    rlca
    add hl, bc
    nop
    dec b
    dec de
    rrca
    inc sp
    rra
    daa
    ei
    ccf
    nop
    rst $30
    ld a, a
    ld h, a
    rst $38
    rst $38
    xor $fd
    adc $00
    rst $38
    sbc h
    cp $19
    db $f4
    dec sp
    rst $38
    add a
    nop
    ld c, a
    or e
    rst $00
    add hl, sp
    add e
    ld l, l
    inc bc
    push bc
    jr z, @+$05

    add l
    ld bc, $0508
    ld l, d
    jr @-$06

jr_031_6d0c:
    db $fc
    ei
    jr nc, jr_031_6d0c

    ld a, [$2001]
    ld l, b

jr_031_6d14:
    db $10
    rst JumpTable
    ld a, $6f
    sbc [hl]
    nop
    ccf
    adc $17
    ld l, [hl]
    rra
    ld h, $0b
    ld [hl], $82
    dec e
    ld [$ff7f], sp
    ccf
    ld a, a
    cp a

jr_031_6d2a:
    ld bc, $f130
    nop
    jp z, $9be0

    ret nz

    ld sp, $6080
    add b
    ld h, b
    ld b, b
    ld bc, $1d20
    jr jr_031_6cdc

    ccf
    rst JumpTable
    ccf
    ld e, a
    add b
    ld bc, $f620
    ld sp, hl
    db $fd
    cp $de
    ccf
    rst $38
    nop
    rrca
    sbc a
    ld h, a
    adc a
    ld [hl], e
    add l
    ld e, e
    add a
    nop
    ld c, c
    nop
    add c
    nop
    pop bc
    add b
    ld h, b
    ld b, b
    nop
    or b
    and b
    ret nc

    ldh [$d8], a
    ret nc

    add sp, -$10
    ld [$bfed], sp
    ld a, [hl]
    sbc $2f
    db $10
    ld e, a
    ld a, a
    sbc a
    ld b, b
    ld e, a
    ld c, l
    ld [$3fff], sp
    dec b
    jp z, Jump_031_4a85

    nop
    add l
    ld l, d
    push bc
    ld a, [hl+]
    ld b, d
    xor l
    pop bc
    or [hl]
    nop
    ldh [$93], a
    and b
    ret nc

    rst $10
    cpl
    ld d, a
    xor a
    nop
    sub a
    ld l, a
    ld d, a
    xor a
    daa
    rst JumpTable
    rst $08
    ccf
    ld b, b
    rra
    inc de

jr_031_6d98:
    add hl, bc
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [$f9], a
    nop
    ldh [$f4], a
    ldh [$f8], a
    ldh a, [$fe]
    ldh [$fc], a
    jr z, jr_031_6d2a

    pop af
    pop hl
    ld [$f940], sp
    ld [$0020], sp
    ld d, d
    ld [bc], a
    nop
    inc c
    nop
    inc b
    nop
    ret nc

    push af
    jr nc, jr_031_6dbd

jr_031_6dbd:
    db $10
    dec b
    ld bc, $f70e
    db $10
    rla
    ld l, [hl]
    ccf
    call z, Call_031_7f01
    sbc b
    ld e, a
    cp b
    rst $38
    add hl, sp
    rst $38
    ld d, e
    add hl, bc
    nop
    rst $38
    add $fc
    ld [hl-], a
    ld hl, sp+$66
    ret nc

    ld l, h
    nop
    ldh a, [$c8]
    ldh [$98], a
    ld b, b
    or b
    ret nz

    jr nz, jr_031_6df0

    add b
    ld h, b
    inc bc
    dec b

jr_031_6de8:
    ld bc, $f560
    jr jr_031_6de8

    db $fc

jr_031_6dee:
    inc b
    ei

jr_031_6df0:
    db $fd
    ld a, [$f8ff]
    ld h, $1a
    ld [hl], d
    dec h
    nop
    jp c, $8877

    di
    inc l
    ldh a, [$6f]
    ldh a, [rTAC]
    db $eb
    ldh a, [$e8]
    ldh a, [$e8]
    ld sp, hl
    ld b, b
    ld bc, $f720
    jr nc, jr_031_6dee

    ld bc, $f730
    jr nc, @+$03

    jr nc, jr_031_6d98

    ld c, l
    add d
    ld b, l
    add e
    inc b
    ld b, h
    add c
    ld b, [hl]
    add c
    ld b, d
    ld bc, $e820
    push af
    ld [bc], a
    ld hl, sp-$0b
    ld sp, hl
    or $f5
    ld a, [$105f]
    cp $00
    ld sp, hl
    rst $38
    ld sp, hl
    cp a
    ld a, a
    rst $30
    ld a, a
    rst $38
    nop
    ld [hl], a
    ld l, a
    rst $30
    ei
    rst $20
    rst $30
    db $eb
    rst JumpTable
    ld bc, $edeb
    db $db
    ldh [$d8], a
    ldh a, [$c8]
    rla
    add hl, bc
    nop
    db $ec
    ld hl, sp-$1c
    add sp, -$0c
    ld hl, sp-$0c
    ld hl, sp+$01
    or $20
    rst $38
    nop
    ld a, h
    nop
    and e
    call $0039
    nop
    nop
    adc $00
    ld hl, sp-$70
    db $fc
    ldh [rP1], a
    ld hl, sp-$80
    ldh a, [$80]
    jp nz, $d800

    nop
    ld b, $ec
    nop
    ld h, c
    nop
    ld b, $d7
    ld a, [de]
    nop
    jr nz, @+$23

    add b
    rst $20
    add hl, de
    inc de
    rrca
    scf
    rra
    and $3f
    ld c, h
    nop
    cpl
    ret c

    ld a, a
    sbc b
    or l
    adc $ff
    adc h
    inc bc
    cp $f9
    db $f4
    ei
    db $fc
    ld [hl], d
    rst $30
    jr nz, jr_031_6eb1

    ld a, [bc]
    ld l, h
    add b
    ld bc, $0008
    db $10
    jr nz, jr_031_6ed6

    db $10
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp+$70
    db $fd
    rst $38
    jr @+$01

    ld sp, $08f5
    ld l, a
    di
    inc l
    ld [hl], a
    nop

jr_031_6eb1:
    adc b
    dec [hl]
    jp z, Jump_031_720f

    dec bc
    ld [hl], $1f
    ld b, b
    ld h, $ff
    adc b
    ld b, e
    add b
    ld b, a
    add e
    ld b, h
    add d
    ld bc, $874d
    ld c, c
    add l
    ld e, e
    adc a
    ld d, e
    di
    ld [$df06], sp
    ccf
    rst JumpTable
    cp a
    ld e, a
    ld bc, $f330

jr_031_6ed6:
    ld [$9046], sp
    dec e
    ld [$8345], sp
    rra
    jr nz, jr_031_6f53

jr_031_6ee0:
    rst $38
    ld sp, hl
    db $fd
    nop

Call_031_6ee4:
    ei
    rst $38
    ei
    rst $30
    ei
    ei
    rst $30
    rst $38
    nop
    rst $30
    xor $f7
    rst $30
    xor $fb
    db $dd
    cp a
    ld b, d
    pop bc
    ld h, a
    ld de, $807f

jr_031_6efb:
    add c
    ld a, [hl]
    rra
    ld de, $20fc
    ld a, [c]
    db $f4
    ld a, a
    ld [$f9fe], sp
    ld a, [$fefd]
    inc b
    db $fd
    ld a, a
    db $fc
    db $fd
    ld a, [hl]
    rst $10
    jr z, jr_031_6f14

    nop

jr_031_6f14:
    nop
    adc a
    rlca
    rst $38
    rrca
    rst $38
    ld bc, $80ff
    dec b
    ld hl, sp-$20
    ldh a, [rP1]
    add sp, -$3b
    ld [$1360], sp
    ld [$0114], sp
    nop
    ld [bc], a
    inc bc
    ld [$e703], sp
    add hl, bc
    inc b
    ld [bc], a
    db $10
    dec c
    rlca
    add hl, de
    rlca
    inc d
    rst $38
    jr nc, jr_031_6efb

    ld [hl], c
    nop
    rst $38
    ld h, e
    rst $38
    and $fd
    add $ff
    call z, $9e00
    ld sp, hl
    or h
    ei
    ldh [$9c], a
    ld b, b
    cp c
    ld a, [bc]
    ret nz

    inc l
    add b

jr_031_6f53:
    ld h, b
    ld sp, $c608
    ld a, e
    ld a, [bc]
    db $10
    jp c, $1831

    nop
    jr nz, jr_031_6ee0

    dec sp
    db $10
    rst $30
    ld a, [bc]
    adc l
    add hl, sp
    ld [$0033], sp
    rra
    ld h, a
    ccf
    rst $08
    ld a, e
    sbc h
    cp $39
    ldh a, [rIE]
    ld hl, $21fb
    inc sp
    inc d
    ccf
    ld a, [bc]
    adc $6f
    sbc [hl]
    rst JumpTable
    ld a, [hl]
    ld a, $70
    dec de
    rrca
    ld [$20f5], sp
    adc h

jr_031_6f87:
    dec bc
    ld c, h
    ld a, [bc]
    rrca
    db $10
    adc e
    rlca
    ld [hl], a
    sbc a

Call_031_6f90:
    ld h, a
    sub a
    ld l, a
    sbc d
    ld [$282f], sp
    push af
    jr nz, jr_031_6fca

    rst $38
    rra
    ld hl, $0f18
    ld [$679f], sp
    rst $38
    rrca
    nop
    rst JumpTable
    ccf
    cp $ff
    db $fd
    cp $f3
    db $fc
    add b
    rrca
    db $10
    rst JumpTable
    xor $ad
    sbc $7f
    sbc h
    rst JumpTable
    db $10
    inc a
    rst $38
    ld a, [hl]
    sub e
    inc l
    pop bc
    nop
    add e
    ld bc, $8600
    inc bc
    call z, Call_031_7987
    rst $08
    inc sp
    rst $08

jr_031_6fca:
    ld b, [hl]
    jr nc, jr_031_6fce

    inc c

jr_031_6fce:
    ld a, [hl]
    cp $7f
    ld e, e
    jr jr_031_6f87

    inc [hl]
    jp $8000


    ld h, b
    ret nz

    jr nc, jr_031_703c

    sbc b
    or b
    call z, $d802
    and $f8
    ld b, $00
    db $fc
    or l
    add hl, bc
    ret nz

    dec bc
    nop
    jp nz, $1600

    rst $20
    dec bc
    db $fc
    add hl, bc
    inc d
    or a
    ld [$4f60], sp
    ret


    inc d
    db $76
    db $10
    ccf
    ret nz

    nop
    rst $38
    db $ec
    ld bc, $f8f2
    and $d0
    rst $28
    rst JumpTable
    ldh [$f3], a
    ld c, h
    ld [c], a

jr_031_700b:
    dec b
    ld [$4503], sp
    dec bc
    inc e
    ld sp, hl
    rst $38
    inc bc
    rrca
    jr nc, jr_031_700b

    nop
    ld a, e
    db $fd
    di
    db $eb
    or $fb
    and $d3
    ld bc, $f3ee
    jp z, $1be3

    ld bc, $15f1
    ld [$1800], sp
    ld e, a
    db $ed
    cp a
    xor l

jr_031_7030:
    cp a
    xor h
    ld e, a
    nop
    db $ed
    ld_long a, $ff1d
    rst $38
    adc [hl]
    adc [hl]
    rst JumpTable

jr_031_703c:
    nop
    ld d, c
    rst $38
    cp e
    rst $38
    or l
    xor $71
    rst $38
    nop
    ld l, $ff
    adc [hl]
    ei
    ei
    ccf
    ccf
    ld a, a
    nop
    ld c, d
    db $db
    or [hl]
    rst $30
    cp [hl]
    rst $38
    cp [hl]
    rst JumpTable
    ld h, b
    cp [hl]
    di
    inc d
    nop
    ld [$ffc1], sp
    rst $28
    cp [hl]
    and d
    nop
    cp [hl]
    xor [hl]
    rst $38
    rst $28
    rst $38
    ld hl, $ffbd
    ld [bc], a
    rrca
    rrca
    rra
    jr @+$1c

    rla
    ccf
    dec d
    ld a, [de]
    nop
    rla
    rra
    jr jr_031_7089

    rrca
    db $fc
    db $fc
    db $fc
    db $10
    call nz, $5cfc
    ld bc, $4408
    db $fc
    ld e, h
    ldh a, [$1f]

jr_031_7089:
    ret nc

    ldh a, [$f0]
    ret z

    ld b, d
    sbc l
    jr jr_031_7030

    jr nz, jr_031_70a2

    ld d, b
    push de
    ld de, $0320
    ld bc, $1001
    rla
    inc bc
    ccf
    rlca
    rra
    sub h
    db $ed

jr_031_70a2:
    ld [$f0f9], sp
    inc b
    ld b, l
    rst $38
    ld c, b
    nop
    rrca
    nop
    rlca
    jr jr_031_70c2

    dec bc
    scf
    rra
    daa
    rla
    ld l, a
    ccf
    ld c, a
    ld l, $df
    ld l, a
    nop
    rst $38
    nop
    nop
    rst JumpTable
    ldh [$a0], a
    rst JumpTable

jr_031_70c2:
    ld b, b
    or b
    add b
    ld h, b
    nop
    ld c, $00
    db $e3
    inc hl
    di
    jp nc, Jump_031_5273

    di
    jp nc, $21e1

    ret nz

    ret nz

    ld bc, $06a2
    rst $38
    add hl, de
    db $eb
    cp a
    xor c
    db $eb
    cp $1a
    xor $ee
    nop
    nop
    rst $38
    ldh [rP1], a
    inc bc
    ld bc, $0286
    adc l
    rst $38
    ldh [rP1], a
    ldh [$c0], a
    jr nc, jr_031_7113

    ret c

    xor a
    rst $38
    nop
    ret nz

    add b
    nop
    rlca
    nop
    add $38
    ld [c], a
    inc e
    ld [hl], e
    inc c
    add hl, hl
    ld b, $14
    inc bc
    ld [bc], a
    ld bc, $0001
    dec b
    nop
    ld e, e
    inc a
    dec l
    ld e, $16
    rrca
    adc e

jr_031_7113:
    rlca
    push bc
    inc bc
    ld h, d
    add c
    pop af
    ld a, b
    ret nc

    nop
    nop
    add b
    ld h, b
    add b
    sub b
    ldh [$ec], a
    ldh a, [$f3]
    db $fc
    cp d
    ld a, a
    ld e, l
    ccf
    ld d, l
    inc d
    nop
    ld h, b
    jr c, @+$20

    rrca
    inc b
    inc bc
    ld bc, $50c0
    and b
    dec d
    ld b, b
    nop
    ld b, [hl]
    ld bc, $1123
    adc b
    ldh [$30], a
    ret nz

    adc h
    ld [hl], b
    ld h, e
    inc e
    ld d, l
    ld d, h
    nop
    jr nc, jr_031_71ab

    ld h, b
    ld b, d
    add $c4
    adc l
    adc c
    inc b
    dec b
    nop
    ccf
    db $10
    rrca
    ld hl, $4b1f
    ld d, e
    or a
    ld a, a
    and a
    ld a, a
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld d, l
    ld d, l
    rst $38
    cp $fe
    cp $fe
    cp $fc
    ld a, h
    ld [hl], h
    dec b
    ld b, c
    cp $74
    rst $38
    inc [hl]
    rst $38
    ld sp, $b9b9
    cp e
    db $fc
    inc sp
    db $fc
    ld hl, $5555
    nop
    dec l
    dec b
    inc b
    ld b, $02
    inc bc
    ld bc, $8080
    ld bc, $f708
    ld b, $f9
    xor e
    ld d, h
    dec d
    ld l, d
    ld e, l
    ld [hl+], a
    ld c, [hl]
    ld sp, $18a7
    or a
    ld d, l
    nop
    rst $38
    dec bc
    inc bc
    dec b
    ld [bc], a
    sub b
    ld l, a
    ret c

    daa
    db $ed
    ld [de], a
    cp $01
    ld [hl], l
    ld d, h
    rst $38

jr_031_71ab:
    ld a, a
    cp a
    cp a
    rra
    rra
    rrca
    add a
    ld a, a
    rst $38
    db $fc
    nop
    rst $00
    rst $00
    rst $38
    push de
    rst $38
    rst $30
    ei
    db $dd
    ld d, l
    ld d, b
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld e, a
    rra
    adc a
    ld a, a
    xor a
    ld a, a
    ld bc, $1f54
    ld c, a
    ccf
    ld c, a
    ccf
    ld e, a
    ccf
    ld [hl], a
    scf
    daa
    daa
    inc sp
    rrca
    db $fd
    ld d, l
    rst $38
    rst JumpTable
    rst JumpTable
    ld l, a
    xor a
    rst $10
    ld d, l
    ld d, l
    rst $38
    cp $fd
    ld sp, hl
    ei
    di
    push af
    db $eb
    sub $55
    ld d, b
    rst $38
    rst $30
    xor $cc
    sbc l
    pop de
    and d
    ld d, l
    xor $23
    call c, Call_031_55fd
    rst $38
    cp $fe
    cp $fe
    db $fd
    ld bc, $0b40
    adc b
    dec b
    ld [de], a
    dec c
    rla
    add hl, bc
    dec d
    dec [hl]
    cpl
    dec de

Jump_031_720f:
    cpl
    dec de
    dec sp
    rra
    ld d, l
    xor d
    ld a, a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, b
    rst $38
    rst $28
    db $ec
    jp z, $c0c4

    add h
    sub c
    xor $89
    or $50
    nop
    cp $11
    ld hl, $fb04
    ld l, $f1
    adc $31
    adc d
    ld [hl], c
    ld e, d
    and c
    sub d
    ld h, c
    and l
    ld bc, $0080
    nop
    ld b, b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    ldh a, [rP1]
    ld d, b
    nop
    ld d, l
    nop
    inc hl
    inc c
    add hl, hl
    ld b, $04
    inc bc
    ld [de], a
    ld bc, $0819
    inc c
    ld b, $04
    ld bc, $ef00
    db $10
    or a
    ld [$ddbf], sp
    ld [bc], a
    ld c, h
    add e
    xor [hl]
    ld b, c
    and $01
    inc sp
    ld b, b
    db $10
    cp a
    ld b, e
    inc bc
    rst $38
    sub l
    ld a, a
    adc d
    ld a, a
    rst $00
    ccf
    ld b, a
    ld h, e
    sbc a
    ld [hl], e
    adc a
    nop
    ld hl, $f4f0
    ld a, e
    db $fc
    ld a, [c]
    add sp, -$0a
    ld hl, sp-$1c
    ret nc

    db $ec
    ret z

    ldh [rNR23], a
    nop
    ld d, l
    ld d, h
    rst $38
    db $db
    adc l
    ld b, d
    add h
    ret nc

    add b
    ld b, b
    add h
    ei
    push de
    ld d, l
    rst $38
    rst JumpTable
    ld l, a
    ld c, a
    daa
    daa
    inc bc
    inc bc
    and b
    nop
    inc de
    rrca
    rrca
    sbc c
    rlca
    adc c
    rlca
    adc l
    inc bc
    add h
    inc bc
    ld b, [hl]
    ld bc, $0142
    ld d, l
    ld d, l
    rst $38
    ld a, [hl]
    ld a, [hl]
    cp a
    sbc l
    ld c, [hl]
    ld h, [hl]
    inc hl
    db $10
    ld d, l
    ld d, l
    rst $38
    rst $28
    rst $30
    ld [hl], a
    ld [hl], e
    cp e
    dec e
    dec e
    adc a
    db $fd
    ld b, c
    rst $38
    rst $30
    push hl
    db $f4
    rst $28
    call nc, $c2ef
    ld d, l
    nop
    rst $38
    rst JumpTable
    push de
    adc c
    add c
    ld [hl+], a
    rst JumpTable
    ld d, b
    xor a
    push hl
    dec de
    xor b
    rla
    ld d, l
    ld h, b
    ccf
    ld e, e
    ld e, e
    ld e, a
    ld e, a
    ld a, a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    push de
    ld d, l
    rst $38
    rst $28
    rst $28
    cp $ee
    db $dd
    sbc $d4
    nop
    dec d
    ret nz

    ld de, $4bee
    db $f4
    ld e, l
    ld [c], a
    sbc a
    ldh [$97], a
    ldh [$35], a
    inc sp
    ld sp, $1501
    nop
    ld a, [c]
    ld bc, $41b2
    db $76
    add c
    rst $20
    ld h, a
    add b
    add $cc
    adc d
    inc d
    nop
    add b
    ret z

    nop
    ld l, b
    ld h, h
    ld [hl], $c0
    or d
    ld b, b
    ld e, e
    and b
    dec a
    ret nz

    ld c, [hl]
    or b
    ld d, l
    ld d, l
    nop
    add e
    pop bc
    ld b, b
    ld h, b
    jr nc, jr_031_736c

    sbc l
    adc $7f
    push de
    nop
    add hl, bc
    ld [bc], a
    ld [bc], a
    ld bc, $4501
    nop
    cp c
    ld b, a
    db $fc
    inc bc
    cp [hl]
    ld bc, $ffdf
    db $76
    ld bc, $9f3b
    push af
    nop
    rst $38
    ld a, [hl]
    ld e, $8d
    ld a, a
    ld [c], a
    rra
    ldh a, [rIF]
    cp h
    ld b, a
    ld b, c
    nop
    db $fd
    jp nz, $f986

    rst $00
    ld hl, sp+$62
    inc hl
    db $fc
    or c
    cp $91
    cp $2a
    db $dd
    nop
    dec b
    nop
    add c

jr_031_736c:
    ld a, a
    ld d, b
    xor a
    ld h, b
    sbc a
    db $f4
    dec bc
    ld [hl], d
    adc l
    ld_long a, $ff05
    rst $28
    push de
    ld d, h
    rst $38
    db $fd
    db $fd
    ld e, h
    ld l, $15
    ld a, [bc]
    sub b
    ld a, a
    db $fd
    ld d, l
    rst $38
    rst $30
    rst $30
    ld l, e
    scf
    ld e, e
    ld d, l
    ld d, l
    rst $38
    ei
    ld a, [$f2f9]
    ldh a, [$f2]
    db $e4
    ldh [$50], a
    nop
    sbc $e5
    and c
    ld a, [hl+]
    call nc, $a856
    ld a, h
    add b
    ld hl, sp+$00
    cp b
    ld b, b
    inc sp
    ret nz

    ld [bc], a
    add b
    inc sp
    ld [hl], l
    dec bc
    dec hl
    rla
    ld e, c
    rlca
    rrca
    rrca
    ld h, [hl]
    rra
    db $e4
    rra
    ret


    ccf
    ld [hl], l
    ld d, l
    rst $38
    db $fd
    db $fd
    dec a
    ld [hl], l
    ld a, e
    push hl

jr_031_73c2:
    bit 2, l
    ld b, b
    rst $38
    sub a
    and [hl]
    sub [hl]
    inc h
    ld c, b
    and l
    cp $c9
    cp $83
    db $fc
    dec b
    ld d, l
    nop
    ld h, d

jr_031_73d5:
    add b
    ld h, c
    add b
    ldh [$c9], a
    ret z

    ret


    adc h
    adc h
    ld d, a
    rst $38
    nop
    sub h
    ld [$0080], sp
    dec b
    ldh a, [$a7]
    ld e, b
    ld [hl], e
    adc h
    ld sp, $98ce
    rst $20
    sub h
    db $e3
    jp c, Jump_031_49e1

    inc l
    ld b, c
    nop
    nop
    ld l, a
    push af
    ld [bc], a
    jp c, $e501

    ld [hl], c
    add b
    jr c, jr_031_73c2

    inc e
    ldh [$a6], a
    ld a, b
    ld d, h
    ld bc, $8000
    ret nz

    ldh [$78], a
    add b
    sub [hl]

jr_031_740f:
    ld h, b
    swap b
    ld [hl], h
    ld [$551e], sp
    ld d, a
    nop
    rst $08
    ld l, a
    scf
    dec de
    dec b
    add b
    ret nz

    nop
    nop
    ld [$e517], a
    dec de
    or d
    ld c, l
    ret c

    daa
    and h
    ld e, e
    ld a, [c]
    dec c
    jr c, jr_031_7436

    inc c
    inc bc
    ld bc, $ff41
    ld [hl+], a
    db $dd

jr_031_7436:
    ld de, $49ee
    or $60
    jr nc, jr_031_73d5

    ld a, a
    ld b, [hl]
    cp a
    dec bc
    ld d, b
    db $10
    add b
    ld h, l
    ld [hl], l
    or b
    ld b, b
    ld hl, sp+$00
    ld hl, sp+$00
    ld [hl], h
    jr c, jr_031_740f

    sbc [hl]
    ldh [rP1], a
    ld [de], a
    rlca
    adc b
    ld a, a
    and $1f
    ld a, [c]
    rrca
    ld l, c
    rla
    inc [hl]
    dec bc
    jr jr_031_746e

    ld bc, $5500

jr_031_7463:
    nop
    rst $38
    add hl, hl
    dec d
    ld bc, $4408
    cp a
    ld b, e
    cp a
    and l

jr_031_746e:
    ld e, a
    ld d, d
    xor a
    ld b, h
    nop
    cp $c5
    ret z

    rst $38
    sub c
    add e
    db $fc
    dec h
    ld a, [$fc03]
    ld b, a
    cp b
    adc [hl]
    ld [hl], c
    dec b
    nop
    ld bc, $8067
    rst $00
    nop
    xor [hl]
    adc $bb
    inc b
    push af
    ld a, [bc]
    call c, $b823
    ld b, a
    ld b, c
    nop
    ld a, a
    sbc a
    dec sp
    rst $38
    ld d, [hl]
    rst $38
    and h
    ld c, c
    cp $93
    db $ec
    cpl
    ret nc

    ld [hl], e
    add b
    ld d, b
    dec b
    rst $38
    rl d
    ld b, l
    cp a
    ld b, d
    cp a
    add h
    ld a, a
    sub d
    ld a, a
    inc c
    jr jr_031_74b4

jr_031_74b4:
    nop
    inc bc
    db $fc
    adc [hl]
    ldh a, [rNR21]
    add sp, $2c
    ret nc

    ld a, [de]
    ldh [$3d], a
    ret nz

    ld a, d
    add b
    or b
    ld b, b
    ld d, l
    ld e, a
    nop
    inc e
    jr jr_031_7463

    jr nc, @-$4e

    jr nz, jr_031_7524

    ld d, a
    nop
    ld bc, $0301
    inc bc
    ld b, $04
    ld [$005c], sp
    nop
    ld l, b
    rst $38
    ld bc, $1068
    ld [hl], b
    nop
    ld [hl], b
    rlca
    ld b, $00
    rrca
    ld [$101f], sp
    ccf
    jr nz, @+$81

    ld b, b
    ld [$007f], sp
    rst $38
    add b
    ld a, [hl+]
    ld d, b
    db $ed
    ld [de], a
    sbc e
    nop
    ld h, h
    ld b, l
    cp d
    ldh [rP1], a
    ld a, [hl]
    nop
    jr z, jr_031_7522

    rlca
    inc bc
    ld h, e
    ld e, b
    db $10
    ldh [rSB], a
    cp $60
    db $10
    rra
    inc c
    inc bc
    dec d
    ld d, b
    jr nc, @-$3e

    ld [bc], a
    db $fc
    db $10
    ret nz

    ccf
    inc c
    jr z, jr_031_7573

    ld h, b
    add b
    inc bc
    db $fc
    add b
    rlca
    db $10

jr_031_7522:
    ld hl, sp+$00

jr_031_7524:
    ccf
    nop
    ld b, $01
    ld bc, $1389
    jr @+$41

    nop

jr_031_752e:
    rrca
    dec b
    ld [$00c3], sp
    add hl, de
    ld [$ff08], sp
    ld [hl], b
    rrca
    rrca
    ld h, a
    ld [$08f7], sp
    ei
    nop
    inc b
    cp $01
    cp $01
    ld hl, sp+$07
    rst $08
    nop
    jr nc, jr_031_75ca

    add b
    or $09
    reti


    ld h, $24
    jr jr_031_752e

    pop bc
    ld a, $a9
    ld [$1885], sp
    db $e3
    inc e
    rrca
    nop
    ldh a, [$7f]
    add b
    sbc a
    ld h, b
    ld l, a
    sub b
    inc bc
    nop
    db $fc
    reti


    ld h, $a2
    ld e, l
    cp $06
    rst $38
    nop
    ld bc, $00ff
    db $fd

jr_031_7573:
    ld [bc], a
    ld [$b415], a
    nop
    ld c, e
    ld h, b
    sbc a
    nop
    rst $38
    inc e
    nop
    ld h, d
    nop
    ld e, h
    ret


    or [hl]
    ld sp, hl
    add $e3

jr_031_7587:
    call c, $04cf
    or b
    pop bc
    cp [hl]
    rst $38
    pop bc
    ld a, a
    ld d, b
    inc bc
    ld [bc], a
    ld hl, $0407
    rlca
    jr nz, @+$05

    nop
    rrca
    ld [$20dd], sp
    jr nz, jr_031_75df

    jr nc, jr_031_7587

    ld h, b
    db $fc
    inc bc
    ld a, [c]
    dec c
    xor c
    nop
    ld d, [hl]
    db $f4
    dec bc
    ld hl, sp+$07
    rst $38
    nop
    rst JumpTable
    ld b, $20
    rst $38
    nop
    add a
    ld a, b
    ld l, a
    db $10
    ld b, l
    ld [hl], c
    ld a, [$0500]
    db $fd
    ld [bc], a
    ld a, [$e905]
    ld d, $f7
    ld bc, $e908
    ld d, $d3

jr_031_75ca:
    inc l
    inc b
    ei
    xor [hl]
    ld [$ff10], sp
    rla
    add sp, $1f
    ld b, b
    ld e, a
    and b
    xor e
    db $f4
    ld hl, $0af5
    rrca
    ld b, b
    and e

jr_031_75df:
    ld e, h
    ld hl, sp+$07
    ld e, c
    db $10
    jr nz, @-$4f

    ld d, b
    ld de, $af30
    ld d, b
    ld d, [hl]

jr_031_75ec:
    xor c
    inc bc
    jr jr_031_75ec

    ret nc

jr_031_75f1:
    cpl
    or $08
    inc bc
    add hl, bc
    rst $38
    nop
    add b
    ld bc, $0700
    ld hl, sp+$00
    rst $38
    ret nz

    ccf
    dec e
    ld de, $ff19
    nop
    ldh a, [$bc]
    add hl, sp
    cpl
    jr nc, @-$03

    inc b
    ld [hl], c
    db $10
    jr nz, jr_031_75f1

    rra
    dec bc
    db $10
    rst $30
    ld [$45ba], sp
    ld h, l
    nop
    sbc d
    db $10
    rst $28
    ld bc, $00fe
    rst $38
    db $f4
    nop
    dec bc
    ld [$5015], a
    xor a
    add b
    ld a, a
    ld b, b
    jr nz, jr_031_75ec

    add b
    or b
    add hl, bc
    nop
    rst $38

jr_031_7632:
    cp $fe
    ld a, a
    db $10
    ld a, a
    rlca
    rlca
    inc a
    db $10
    rlca
    inc b
    rra
    jr jr_031_7640

jr_031_7640:
    ld a, a
    ld b, b
    rrca
    ld [$e0ef], sp
    rst $38
    ldh a, [rNR41]
    rst $38
    ldh [$e5], a
    ld b, b
    db $fd
    ld [bc], a
    ei
    inc b
    pop af
    inc b
    ld c, $e8
    rla
    db $ed
    ld [de], a
    rst $00
    db $10
    rst $28
    stop
    or [hl]
    ld c, c
    ld e, l
    and d
    jr nc, jr_031_7632

    jr nz, @-$1f

    nop
    rlca
    ld hl, sp+$0f
    ldh a, [$8f]
    ld [hl], b
    xor $11
    nop
    push de
    ld a, [hl+]
    inc hl
    call c, $f00f
    ccf
    ret nz

    add b
    cpl
    ld [hl-], a
    add b
    ld a, a
    ldh a, [rIF]
    db $fc
    inc bc
    cp $00
    ld bc, $22dd
    xor d
    ld d, l
    ld b, h
    cp e
    di
    nop
    inc c
    call $f032
    rrca
    ld a, [$5405]
    nop
    xor e
    add h
    ld a, a
    jp $d43f


    cpl
    rst $38
    nop

jr_031_769d:
    nop
    ld l, d
    sub l
    dec d
    ld_long $ff00, a
    ld c, d
    ld bc, $b4ff
    rst $38
    pop af
    cp $9f
    ldh [$33], a
    stop
    adc h
    ld [hl], e
    rla
    add sp, $0b
    db $f4

jr_031_76b6:
    rst $30
    ld [$0bc0], sp
    db $10

jr_031_76bb:
    jr jr_031_76c6

    nop
    db $eb
    inc d
    sub l
    ld l, d
    db $ec
    ld b, b
    inc de
    ld c, a

jr_031_76c6:
    jr nz, jr_031_7723

    and h
    db $ec
    inc de
    sbc $21
    nop
    ld c, c
    or [hl]
    inc d
    db $eb
    nop
    rst $38

jr_031_76d4:
    ldh [$1f], a
    ld d, e
    ld hl, sp-$57
    jr jr_031_76bb

    db $ec
    jr jr_031_76f6

    rlca
    ld [hl], b
    jr nz, jr_031_769d

    jr @+$24

    nop
    ldh a, [$0a]
    ld a, [bc]
    ld c, $f0
    ld hl, sp+$0b
    ld [$000f], sp
    nop
    ld [hl], $08
    jr jr_031_76d4

    jr nc, jr_031_76b6

jr_031_76f6:
    ret nz

    add b
    add hl, de
    jr @-$0e

    jr nc, jr_031_7779

    add h
    inc e
    ldh [rTAC], a
    ld b, d
    ld sp, hl
    ld e, d
    ld sp, $0101
    rrca
    rrca
    or a
    ld [de], a
    db $fc
    nop
    ld a, h
    ld [hl], b
    sub b
    ld a, b
    adc b
    rra
    ldh [$71], a
    inc b
    nop
    adc d
    ld [hl], c
    inc h
    db $db
    ld bc, $8a20
    ld [hl], c
    ld b, b
    ld [hl], c
    ld h, $28

jr_031_7723:
    cp $01
    db $fc
    inc bc
    ld a, [$8005]
    push de
    ld de, $10ef
    db $f4
    dec bc
    add sp, $17
    jp $3c04


    or a
    ld c, b
    ld e, a
    and b
    add hl, de
    db $10
    rrca
    ldh a, [rP1]
    rla
    add sp, $7f
    add b
    db $fc
    inc bc
    ld sp, hl
    ld b, $20
    rst $30
    ld [$10ab], sp
    ld sp, hl
    ld b, $f3
    inc c
    call nc, $2b00
    ld hl, sp+$07
    pop af
    ld c, $da
    dec h
    or h
    nop
    ld c, e
    ld a, h
    add e
    ld a, [$e505]
    ld a, [de]
    add b
    nop
    ld a, a
    ld d, $e9
    inc c
    di
    db $10
    rst $28
    ld hl, $df00
    ld [bc], a
    rst $38
    sub a
    ld l, [hl]
    ld b, l
    cp [hl]
    inc bc
    ld bc, $2ffc
    ldh a, [$df]

jr_031_7779:
    ldh [rIE], a
    ret nz

    rla
    ld d, d
    nop
    cp $01
    db $f4
    dec bc
    jp z, $bc35

    ld b, e
    add b
    dec c
    jr nz, @-$43

    ld b, h
    xor h
    ld d, e
    ld b, a
    cp b
    ld [bc], a
    nop
    db $fd
    inc d
    db $eb
    push af
    ld a, [bc]
    ld a, [$4c05]
    ld bc, $b1b3
    ld c, [hl]
    inc d
    db $eb
    ld [$a1f7], sp
    ld de, $c600
    nop
    add hl, hl
    add $91
    ld l, [hl]
    sbc c
    ld h, [hl]
    adc b
    ld bc, $3010
    rst $08
    rst $08
    pop de
    ld [$0102], sp
    dec bc
    ld h, b
    rlca
    rst $30
    ld de, $2000
    rrca
    ccf
    ld a, a
    rst $38
    ld hl, sp+$30
    rst $38
    inc a
    db $ec
    jr nz, jr_031_77c9

jr_031_77c9:
    ld [$fefc], sp
    call nz, Call_031_40f8
    jr nc, jr_031_77de

    jr c, jr_031_77d3

jr_031_77d3:
    nop
    add l
    rst $38
    ld c, a
    rst $38
    nop
    cp $ff
    push de
    cp $63

jr_031_77de:
    db $fc
    dec b
    ld a, [$2002]
    rst JumpTable
    nop
    rst $38
    ld h, l
    ld a, [$1173]
    db $fc
    db $10
    inc bc
    xor b
    ld d, a
    adc b
    jr nz, jr_031_77fe

    nop
    inc de
    inc c
    nop
    inc de
    inc c
    ld de, $120e
    dec c
    inc de
    inc c

jr_031_77fe:
    db $10
    sub e

Jump_031_7800:
jr_031_7800:
    inc c
    inc e
    dec sp
    ld a, [hl+]
    ld l, a
    sub b
    rra
    ldh [$0c], a
    ld a, a
    add b
    cp a
    ld b, b
    jp Jump_031_4f52


Jump_031_7810:
    ld [de], a
    db $fc
    inc bc
    ret nz

    reti


    ld de, $10a3
    sbc h
    ld h, e
    ld l, [hl]
    sub c
    sbc b
    ld h, a
    nop
    jr nz, jr_031_7800

    ld b, b
    cp a
    and d
    ld e, a
    rlca
    rst $38
    nop
    inc bc
    rst $38
    ld b, e
    rst $38
    rrca
    rst $38
    dec b
    cp $00
    cpl
    cp $20
    rst $38
    pop de
    cp $7a
    db $fd
    ld h, b
    sbc a
    dec a
    ld [$10ed], sp
    db $fd
    ld [bc], a
    db $eb
    inc d
    sub a
    jr @+$6a

    call $0b32
    db $10
    ld c, a

jr_031_784b:
    ld de, $1fe0
    db $f4
    nop
    dec bc
    ei
    inc b
    rst JumpTable
    jr nz, jr_031_784b

    ld a, [bc]
    ldh [rSC], a
    rra
    adc b
    ld [hl], a
    nop
    rst $38
    ld e, h
    ld e, b
    ld [$1805], sp
    rst $38
    and [hl]
    ld e, a
    ld c, b
    add hl, bc
    ld bc, $a808
    rst $38
    inc d
    add b
    dec b
    ld [$ff10], sp
    xor c
    cp $db
    db $fc
    rst $30
    nop
    ld hl, sp-$0c
    ei
    ld h, c
    cp $94
    rst $38
    rlca
    db $10
    ld hl, sp+$7e
    add c
    add hl, sp
    db $10
    ld [hl-], a
    call Call_031_6f90
    jr nz, jr_031_78cc

    cp a
    adc h
    jr nc, jr_031_789f

    ldh a, [$3d]
    jp nz, $6542

    cp l
    sub e
    inc a
    ld e, e
    ld [$bb44], sp
    xor d
    ld b, b
    add b

jr_031_789f:
    ld [c], a
    dec bc
    nop
    inc l
    rst $38
    ld a, [de]
    rst $38
    dec l
    rst $38
    ld a, [hl]
    rst $38
    ld [bc], a
    ret c

    nop
    ld h, $d8
    dec a
    jp nz, $31e1

    db $db
    ld h, $00
    ld [bc], a
    ld l, a
    ld [$ff3e], sp
    xor h
    dec bc
    ld bc, $fa28
    nop
    dec b
    push de
    ld a, [hl+]
    jp hl


    ld d, $84
    ld a, e
    ret nz

    jr jr_031_790a

    add c

jr_031_78cc:
    ld a, a
    dec de
    db $10
    inc d
    db $10
    ld a, [hl]
    add c
    or l
    nop
    ld c, d
    ld c, d
    or l
    jr nz, @+$01

    or $ff
    db $fd
    nop
    rst $38
    db $ed
    ld [de], a
    sub $29
    ld a, [bc]
    push af
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    ld de, $2aff
    rst $38
    sub l
    pop bc
    inc sp
    jr jr_031_78fe

    db $10
    ldh [rIE], a
    ld b, c
    rst $38
    db $eb
    ld b, a
    ld a, [bc]
    db $10
    ld d, $fd

jr_031_78fe:
    add hl, sp
    ld d, l
    dec bc
    ld e, d
    rst $38
    xor a
    rst $38
    nop
    ld d, a
    rst $38
    jp hl


    rst $38

jr_031_790a:
    call c, $ebff
    inc d
    nop
    sub d
    ld l, l
    ld bc, $60ff
    rst $38
    or b
    rst $38
    nop
    db $fc
    rst $38

jr_031_791a:
    db $e3
    rst $38
    rra
    rst $38
    ld b, d
    cp a
    ld bc, $ff05
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
    dec hl
    ld [$fe5c], sp
    inc bc
    ld [$23e8], sp
    ld [$3000], sp
    ld l, [hl]
    inc c
    rst $38
    dec sp
    ld [hl+], a
    rst $38
    push af
    add hl, de
    jr z, @+$01

    rst $38
    sbc e
    xor e
    add hl, bc
    ld a, b
    dec bc
    rst $38
    rst $30
    rst $38
    ld a, [$083f]
    sub b
    inc de
    jr z, jr_031_791a

    db $10
    ld b, l
    ld [$0897], sp
    ld a, [hl+]
    rst $38
    rst JumpTable
    dec c
    ld [$7ffa], sp
    jr z, jr_031_799c

    dec b
    pop bc
    ld [$ff81], sp
    ld d, h
    rst $38
    ld [$28ef], a
    inc b
    nop
    rst $38
    and b
    rst $38
    push de
    ld c, e
    ld [$ffff], sp
    ld d, c
    jr z, jr_031_79b1

    add hl, bc
    ld b, b
    dec c
    ld [$ff40], sp
    ret nz

    rla
    ld [$b2d0], sp
    ld [de], a
    dec l
    db $10
    xor e
    add e
    ld [$ffff], sp
    ld a, h
    rst $38

Call_031_7987:
    ld b, c
    jr @+$15

    ld [$ff50], sp
    ld [c], a
    rst $38
    db $dd
    ld hl, $8a18
    dec sp
    db $10
    dec d
    rst $38
    ld [hl+], a
    dec l
    add hl, bc

jr_031_799a:
    ld a, [bc]
    dec a

jr_031_799c:
    ld [$ab6f], sp
    sub a
    jr c, jr_031_7a21

    or a
    ld [$0bc2], sp
    jr z, @-$02

    ld [hl], c
    dec e
    sub [hl]
    dec d
    inc e
    ld [hl], b
    nop
    inc e
    rlca

jr_031_79b1:
    jr @+$71

    inc d
    ld bc, $1f10
    nop
    ccf
    ld bc, $6800
    ld [hl+], a
    nop
    add hl, bc
    ld bc, $9b28
    dec d
    adc b
    inc e
    jp nc, $8310

    ld b, e
    inc e
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld a, a
    ld b, a
    ld e, d
    sub a
    dec [hl]
    sub b
    pop hl
    inc d
    pop af
    ld c, $0d
    jr nz, jr_031_799a

    ld b, b
    ld b, l
    cp d
    add c
    ld [hl], c
    ld [de], a
    rst $38
    nop
    ret nz

    ret nz

    ldh a, [rNR10]
    call c, Call_031_4408
    inc bc

jr_031_79eb:
    ld a, a
    ld a, $00
    rra
    rra
    adc c
    jr nz, jr_031_79eb

    jr jr_031_7a21

    cp $02
    ld [hl], l
    db $10
    cp $81
    ld [$42e0], sp
    rst $38
    rst $38
    ld d, c
    di
    rst $38
    ld a, [bc]
    pop af
    ld c, c
    add hl, bc
    jp $8fff


    cp c
    ld [$e417], sp
    rst $38
    ld sp, hl
    cp [hl]
    inc c
    pop hl
    inc de
    ld [$2000], sp
    ld c, a
    ld [de], a
    rla
    add d
    rst $38
    ld c, c
    rrc c
    db $fc
    rrca

jr_031_7a21:
    jr z, jr_031_7a24

    db $10

jr_031_7a24:
    xor h
    inc h
    ld b, b
    inc bc
    rrca
    stop
    add b
    add b
    add b
    nop
    ret nz

    jr nz, jr_031_7a72

    ldh [rSCX], a
    dec c
    cp h
    ld b, h
    ld e, a
    and c
    rst $38
    dec hl
    rst $38
    sub a
    rst $00
    add hl, bc
    cp a
    cp [hl]
    jr jr_031_7a57

    ret nz

    ld [$110d], sp
    ld bc, $ffff
    ccf
    rst $38
    ld [hl], a
    rst $38
    cp d
    sub [hl]
    ld [$5f55], sp
    jp nz, $0248

    dec sp

jr_031_7a57:
    add hl, bc
    cp [hl]
    add hl, bc
    jr jr_031_7a9c

    ld [hl], l
    add hl, bc
    ld e, [hl]
    call c, $095d
    ret z

    ldh a, [rNR10]
    add a
    inc sp
    xor c
    ld [$66f5], sp
    db $fc
    sbc c
    add b
    ld [$1e1f], sp
    xor l

jr_031_7a72:
    inc e
    push bc
    inc e
    inc bc
    inc bc
    xor b
    ld [$001e], sp
    ld a, a
    ld a, a
    adc a
    inc d
    inc sp
    add hl, hl
    ld h, b
    cpl

jr_031_7a83:
    cpl

jr_031_7a84:
    jr nz, jr_031_7a84

    ld e, c
    cp $0f
    jr nz, jr_031_7a83

    call nc, $0014
    jr @-$06

    jr @+$53

    dec bc
    ldh a, [$93]
    ld a, [bc]
    ld [hl], a
    ld [de], a
    nop
    jr nc, jr_031_7afc

    ld d, b

jr_031_7a9c:
    add b
    add b
    ldh [rNR41], a
    xor d
    ld [hl], e
    ld [de], a
    ld a, [$6fa3]
    and e
    ld b, [hl]
    ld [$01ef], sp
    ld [$8e9f], sp
    rr b
    ldh a, [rIE]
    add e
    inc hl
    ld [$3000], sp
    ld [bc], a
    xor d
    nop
    rrca
    ldh a, [$3f]
    ret nz

    adc d
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ldh [$60], a
    ldh a, [rNR10]
    ld hl, sp+$08
    inc a
    call nz, $da26
    ld [de], a
    db $ec
    inc bc
    db $fd
    ld bc, $55fe
    ld d, l
    rst $38
    nop
    nop
    ld c, e
    ld d, $0c
    inc bc
    nop
    ld bc, $5540
    rst $38
    ld b, $67
    ld hl, sp-$41
    ret nz

    ld l, e
    sub h
    nop
    nop
    nop
    add b
    add b
    xor d
    nop
    rst $38
    ldh [$1f], a
    sub b
    ld l, a
    ret nz

    ccf
    rst $38
    rst $38

jr_031_7afc:
    rst $38
    rst $38
    sub b
    nop

Jump_031_7b00:
    inc c
    nop
    jp nc, $de21

    ld [de], a
    db $ed
    sub d
    ld l, l
    sub d
    ld l, l
    sub e
    ld l, h
    ld l, h
    nop
    rst $38
    push de
    rst $38
    rst $30
    or $e4
    push de
    ld d, l
    rst $38
    ei
    ld sp, hl
    ld sp, hl
    db $ed
    db $ed
    db $ec
    db $e4
    ld d, l
    ld b, b
    rst $38
    ei
    di
    ld [hl], d
    ld a, [hl-]
    jr c, jr_031_7b51

    cp $69
    cp $49
    cp $55
    ld d, l
    rst $38
    rst $28
    rst $28
    ld l, a
    ld c, l
    ld c, l
    ld b, l
    inc b
    inc b
    push de
    ld d, l
    rst $38
    rst $30
    rst $20
    rst $20
    and l
    add l
    add c
    add b
    ld d, a
    rst $38
    rst $38
    ccf
    add c
    rst $20
    push de
    ld a, a
    rst $38
    db $fd
    and d
    ld b, b
    db $fc
    ld d, l
    ld a, a

jr_031_7b51:
    rst $38
    rst $30
    jp z, $0b01

    ccf
    rst $38
    push de
    rst $38
    ld bc, $fef0
    push de
    push af
    rst $38
    rst $08
    db $e3
    db $fc
    rst $20
    rra
    ret nc

    ld bc, $e500
    ld a, [de]
    push hl
    ld c, b
    or a
    add hl, bc
    or $79
    add [hl]
    add hl, bc
    or $f6
    ld d, l
    ld d, l
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ldh a, [rHDMA5]
    ld d, l
    rst $38
    ld [bc], a
    nop
    nop
    ld bc, $170a
    jp $55bf


    ld e, a
    rst $38
    di
    ld a, $f8
    ld a, b
    inc [hl]
    ld a, [$5555]
    rst $38
    ret nz

    ld l, b
    nop
    nop
    nop
    dec b
    xor d
    push af
    db $fd
    ld d, l
    rst $38
    ld a, [$f3f2]
    di
    di
    ld d, l
    nop
    rst $38
    db $ec
    ld c, l
    ld e, c
    ld a, [de]
    inc de
    cp $13
    cp $13
    cp $21
    sbc $00
    dec d
    db $fc
    ldh [rIE], a
    add sp, -$09
    ld l, b
    rst $30
    ld a, [hl]
    push af
    ld e, [hl]
    push af
    ld d, a
    ld e, a
    dec bc
    ld d, h
    nop
    cp $41
    ld h, c
    ld l, c
    dec l
    ld a, [$fb2c]
    inc c
    ei
    ld b, [hl]
    cp c
    ld b, [hl]
    cp c
    nop
    ld d, b
    or a
    inc b
    rst $38
    add [hl]
    ld a, a
    jp nz, Jump_031_423f

    cp a
    ld c, e
    ld c, c
    dec bc
    rst $30
    dec bc
    rst $30
    ld b, b
    ld bc, $80ff
    or b
    rst $08
    ret c

    and a
    ret z

    or a
    ret z

    or a

jr_031_7bf2:
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    ld d, l
    ld d, l
    rst $38
    rst JumpTable
    rst JumpTable
    sbc a
    rla
    dec b
    dec b
    add l
    push bc
    db $fd
    ld e, a
    rst $38
    ld a, a
    sub e
    ldh [rIE], a
    ld e, a
    rst $38
    sbc a
    dec h
    rst $30
    ld d, l
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld [bc], a
    and b
    inc h
    inc bc
    nop
    adc h
    inc bc
    ld d, b
    adc a
    db $db
    db $db
    db $db
    jr nc, jr_031_7bf2

    rst $08
    nop
    nop
    rra
    nop
    ld h, d
    db $fd
    ld [hl], a
    adc a
    rst $38
    rst $38
    inc e
    rst $38
    pop bc
    ld a, $3e
    ld e, l
    ld b, b
    rst $38
    cp c
    jp $077f


    ld [hl], b
    rrca
    rra
    nop
    nop
    nop
    di
    ld b, b
    rst $38
    xor a
    rst JumpTable
    ldh [$39], a
    ret nz

    add b
    nop
    nop
    nop
    ld e, l
    ld d, b
    rst $38
    cp $bf
    db $f4
    ld a, a
    rrca
    ld sp, $000e
    nop
    dec d
    ld b, b
    rst $38
    cp a
    ld a, a
    rst $30
    ld hl, sp+$7f
    rra
    db $dd
    db $e3
    ldh a, [rIF]
    inc c
    inc bc
    xor b
    and b
    ld a, [$f7f7]
    rst $30
    ld hl, sp-$09
    push af
    push af
    ld a, [de]
    push af
    ld [$0215], a
    jr nz, jr_031_7cf6

    ld hl, $2cde
    db $db
    ld l, $d9
    sbc c
    db $76
    sbc c
    sub c
    ld c, h
    sub e
    ld d, h
    add e
    ld d, b
    nop
    cp b
    ld c, a
    ld b, a
    ld d, [hl]
    xor b
    jp nc, $9228

    jr z, jr_031_7cac

    jr nz, jr_031_7ccf

    nop
    ld a, $01
    ld bc, $1954
    sub $39
    ld [hl-], a
    dec e
    or d
    dec e
    or [hl]
    and $e6
    and $ec
    inc de
    dec b
    nop
    rst $28
    dec bc
    rst $30
    dec de

jr_031_7cac:
    rst $20
    inc sp
    ld sp, $eb35
    inc [hl]
    db $eb
    inc b
    ei
    ld c, $f9
    ld d, l
    ld d, l
    rst $38
    add b
    pop bc
    pop hl
    and c
    xor c
    sbc c
    dec e
    dec d
    ld d, l
    ld d, l
    rst $38
    inc h
    and [hl]
    ld h, $22
    ld [hl-], a
    ld d, $17
    rla
    add e
    ld b, b

jr_031_7ccf:
    nop
    rst $38
    jr nz, jr_031_7cf2

    inc c
    inc bc
    rst $00
    ld a, [hl]
    add c
    inc e
    db $e3
    rlca
    ld hl, sp-$58
    ld c, b
    nop
    rst $38
    rst $38
    rst $38
    ld sp, $800e
    ld h, e
    add b
    rst $38
    ld hl, sp+$07
    xor b
    ld a, [hl+]
    nop
    rst $38
    rst $38
    rst $38
    jr nz, @+$21

jr_031_7cf2:
    inc c
    inc bc
    rst $38
    rst $38

jr_031_7cf6:
    rst $38
    ld bc, $ef54
    rst $08
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    rra
    ld e, a
    ld e, a
    ld d, b
    rst $10
    add sp, $54
    ld a, [hl+]
    db $fd
    cp $fe
    cp $fc
    rst $38
    ld hl, sp-$05
    ld a, [$fafa]
    ld bc, $1050
    or l
    ld c, b
    sub h
    ld c, b
    call nz, $cd18
    call $be8c
    nop
    ld [hl], $80
    ld b, c
    ld d, l
    rst $38
    sbc $fe
    rst JumpTable
    cp $df
    sbc $ce
    rst $28
    rst $28
    rst $28
    db $fd
    ld b, d
    nop
    add b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    ld d, l
    ld [$04db], sp
    db $db
    inc b
    jp nc, $920c

    inc c
    or [hl]
    or h
    inc [hl]
    inc d
    xor b
    nop
    ld a, [$f5f5]
    push af
    cp $f1
    xor $e1
    xor $e1
    db $ec
    db $e3
    db $fc
    db $e3
    ld d, b
    ld a, [bc]
    jp nz, $1115

    sbc c
    ld b, d
    or b
    ld b, d
    or h
    ld b, d
    and h
    ld b, d
    inc b
    inc b
    dec d
    nop
    jr nz, jr_031_7dda

    db $10
    ld e, l
    ld e, e
    ld e, e
    ld d, [hl]
    jr z, @+$75

    inc c
    ld a, c
    ld b, $69
    ld b, $00
    nop
    db $ec
    inc de
    call z, $0433
    db $db
    ld b, h
    sbc e
    or h
    dec de
    ld d, [hl]
    cp e
    dec l
    di
    ld c, a
    or c
    ld a, [hl+]
    nop
    sub d
    ld b, [hl]
    cp c
    ld a, l
    ld a, l
    ld a, l
    sub b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, l
    cp [hl]
    ld d, h
    nop
    rst $38
    inc de
    ld [de], a
    ld [de], a
    ld d, [hl]
    cp a
    ld b, [hl]
    cp a
    ld h, $df
    ld h, $df
    and [hl]
    ld e, a
    ld d, l
    ld d, l
    rst $38
    rra
    rrca
    ld c, a
    rst $28
    rst $28
    rst $28
    ei
    ei
    xor d
    ld a, [de]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    inc bc
    add e
    rst $38
    rst $38
    ret nc

    nop
    nop
    cp b
    call nz, $9238
    ld l, h
    sub d
    ld l, h
    sub e
    ld l, l
    push bc
    add hl, sp
    dec sp
    inc bc
    xor d
    adc d
    ret nc

    ldh [$e0], a
    ldh [$e0], a
    ldh [$b0], a

jr_031_7dda:
    ret nz

    and b
    and b
    and b
    nop
    ld a, [$0505]
    ret c

    daa
    reti


    ld h, $d9
    ld h, $99
    ld h, [hl]
    cp c
    ld b, [hl]
    ld a, c
    add [hl]
    ld a, [hl+]
    add b
    ld sp, hl
    db $fd
    ld a, [$fefe]
    cp $fe
    di
    db $f4
    ei
    db $f4
    rst $30
    ld hl, sp+$00
    dec d
    nop
    dec d
    and d
    dec d
    and d
    sub $21
    db $f4
    ld bc, $017c
    ld a, c
    ld e, e
    ld a, [de]
    ld d, l
    ld d, l
    rst $38
    ei
    ei
    cp e
    cp l
    cp l
    rst $28
    rst $28
    rst $28
    ld d, l
    ld a, [hl+]
    ret nz

    add b
    and b
    and b
    and b
    add b
    ldh [$e0], a
    ldh [$e0], a
    ld d, l
    ld b, b
    nop
    ld e, l
    ld c, l
    ld l, a
    ld l, a
    ld h, a
    and $01
    and $01

jr_031_7e30:
    adc $01
    ld a, [hl+]
    add b
    jp hl


    db $ed
    ld a, [c]
    or $f6
    or $f6
    ret


    sub $cb
    call nc, $d4eb
    dec d
    ld d, h
    nop
    ld [$e604], a
    sub h
    sub b
    db $10
    jr nc, jr_031_7e30

    call nz, $a020
    nop
    ld c, l
    ld [hl+], a
    ld [hl+], a
    dec c
    ld h, d
    xor a
    ld b, b
    add l
    ld b, d
    ret nz

    ld b, $c8
    ld b, $ea
    inc b
    nop
    nop
    jp z, $e235

jr_031_7e64:
    dec e
    ld [hl+], a
    ld e, l
    jr nz, jr_031_7ec8

    ld sp, $324e
    ld c, h
    ld a, b
    inc c
    add hl, hl
    inc e
    dec d
    nop
    sbc l
    ld l, $9c
    inc l
    ld l, d
    ld l, d
    ld h, c
    sbc a
    ld c, c
    or a
    ld c, e
    or l
    ld c, e
    or l
    dec b
    ld b, b
    cp a
    xor $1f
    ld l, d
    sbc a
    ld b, e
    ld b, c
    ld b, c

jr_031_7e8b:
    ld de, $98ef
    rst $20
    cp b
    rst $00
    ld d, l
    ld d, l
    rst $38

jr_031_7e94:
    ld a, e
    ld l, c
    dec l
    dec h
    ld h, l
    push hl
    rst $30
    sub a
    xor b
    ld [hl+], a
    nop
    rst $38
    rst $38
    rst $38
    jr nc, jr_031_7e64

    ld b, $f8
    rst $38
    ld bc, $fffe

jr_031_7eaa:
    rlca
    call nz, Boot
    cp $06
    ld hl, sp-$20
    jr jr_031_7e94

    pop hl
    ld c, $f1
    adc b
    ld d, l
    ldh a, [$a0]
    or b
    ldh [$e0], a
    cp b
    ldh [$a8], a
    add sp, -$18
    xor b
    jr z, jr_031_7ec6

jr_031_7ec6:
    scf
    ld [hl], d

jr_031_7ec8:
    adc l
    ret z

    ret z

    dec h
    jp c, $da25

    inc l
    db $d3
    jr z, jr_031_7eaa

    jr z, @-$27

    and b
    nop
    di
    db $fc
    db $fc
    db $eb
    db $e4
    ld hl, sp-$1b
    ld hl, sp-$1b
    ret z

    push de
    db $ec
    pop de
    and $d1
    ld d, l
    ld d, h
    nop
    jr nc, jr_031_7e8b

    and b
    xor c

jr_031_7eed:
    xor c
    add hl, hl
    ld l, l
    dec l
    ld b, b
    inc d
    nop
    jr nz, jr_031_7eed

    nop
    ld d, e
    ld d, [hl]
    ld d, d
    inc h
    ld a, [de]
    ld h, h
    sbc [hl]
    ld h, b

Jump_031_7eff:
    xor [hl]
    ld b, b

Call_031_7f01:
    xor [hl]
    ld b, b
    ld d, l
    ld [bc], a
    ldh [$80], a
    add b

Call_031_7f08:
    or b
    or b
    ret nz

    or b
    ret nz

    or b
    and b
    ret nc

    ret nc

    ld d, b
    nop
    ld bc, $dece
    call c, $fc03
    inc bc
    db $dd
    ld [hl+], a
    reti


    ld h, $4b
    inc [hl]
    ld h, e
    inc e
    ld a, [bc]
    nop
    and $eb
    call nc, $d0ee
    ret c

    ret c

    or $c8
    or $c8
    sub $e8
    sbc [hl]
    and b
    nop
    ld d, h
    ld bc, $6082
    xor b
    ld b, b
    xor d
    ld b, b
    db $eb
    nop
    ld l, [hl]
    ld l, [hl]
    ld [$02c9], a
    ld d, h
    nop
    inc b
    xor d
    cp b
    cp c
    sbc l
    nop
    adc e
    db $10
    and e
    jr jr_031_7f72

    add hl, de
    ld l, d
    ld de, $4005
    inc e
    ld a, [hl+]
    dec e
    ld l, d
    dec e
    ld l, e
    ld [hl], e
    ld [hl], e
    daa
    jr jr_031_7f86

    add hl, de
    or [hl]
    add hl, bc
    ld bc, $ef40
    ld e, a
    and c
    ld a, l
    and e
    ld [hl], h
    xor e
    jr nc, jr_031_7f7f

    sbc e
    ld h, a
    sbc d
    ld h, a

jr_031_7f72:
    cp d
    ld b, a
    xor d
    nop
    xor b
    rst $10
    rst $10
    rst $10
    rst $10
    xor l
    db $d3
    ld l, l
    db $d3

jr_031_7f7f:
    inc h
    db $db
    inc h
    db $db
    ld d, l
    ld d, l
    rst $38

jr_031_7f86:
    add e

Jump_031_7f87:
    add e
    dec bc
    res 5, e
    cpl
    daa
    inc hl
    ld bc, $005d
    ld h, b
    rra
    db $10
    rrca
    ld [$0107], sp
    rrca
    inc bc
    ret nz

    xor b
    nop
    nop
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    jr jr_031_7fac

    add b
    ld a, a
    jr nc, jr_031_7fb8

    ld b, $01
    and b

jr_031_7fac:
    nop
    xor h
    ldh a, [$f0]
    and h
    ld hl, sp-$3c
    ld hl, sp-$40
    db $fc
    add sp, -$24

jr_031_7fb8:
    ld [$dadc], a
    db $ec
    ld d, l
    ld b, b
    rst $38
    rra
    rrca
    rrca
    rra
    dec e
    ld d, l
    cp a
    ld d, h
    cp a
    ld d, h
    cp a
    ld d, h
    nop
    or b
    add a
    adc a
    set 3, d
    and b
    sbc d
    ldh [$92], a
    add sp, -$80
    add sp, $00
    ld l, b
    nop
    ld d, h
    ld [bc], a
    cpl
    ld b, b
    xor e
    ld b, b
    ld c, c
    add d
    ld e, b
    add d
    ret c

    ret nc

    call nc, $06f1
    dec d
    nop
    ld [$009c], sp
    ld d, $36
    db $76
    ld [hl], e
    inc c
    ld h, e
    inc e
    db $eb
    inc d
    ei
    inc b
    ld d, l
    nop
    ldh a, [rLCDC]
    ld c, b
    xor b

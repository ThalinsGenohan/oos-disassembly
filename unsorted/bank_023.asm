; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $023", ROMX

    ld d, h
    ld d, h
    ld d, b
    xor d
    add sp, -$46
    ld d, c
    db $eb
    rst $38
    rst $38
    xor a
    rst $38
    ld d, h
    inc e
    ld de, $8052
    xor a
    xor a
    xor a
    ldh a, [rNR11]
    xor a
    xor a
    ld d, d
    ld [hl], b
    rrca
    xor a
    ld d, d
    add b
    ld b, b
    ld b, b
    rlca
    ld b, b
    ld [hl], $af
    xor a
    ld d, d
    ld [hl], b
    rra
    ld d, h
    ld d, c
    xor a
    xor a
    call c, Call_023_52af
    add b
    xor c
    di
    xor a
    ld d, d
    ld [hl], b
    rst $08
    xor a
    ld d, d
    add b
    rra
    xor a
    xor c
    ld d, d
    ld [hl], b
    call z, $8101
    jr @+$10

Call_023_4043:
    dec hl
    ldh [$2b], a
    ld bc, $710d
    jr jr_023_404c

    ld a, [bc]

jr_023_404c:
    ld bc, $0e0e
    add c
    jr jr_023_405f

    dec hl
    rra
    ld hl, sp+$01
    ld [hl], c

Call_023_4057:
    jr jr_023_4091

    dec c
    ld bc, $f82b

Call_023_405d:
    ld hl, sp+$0e

jr_023_405f:
    ldh [$0d], a
    add c
    jr jr_023_4065

    dec hl

jr_023_4065:
    ld hl, sp-$3f
    ld hl, sp+$01
    ld [hl], c
    jr jr_023_4079

    dec hl
    rlca
    ld hl, sp+$01
    add c
    jr jr_023_4074

    dec hl

jr_023_4074:
    ccf
    dec hl
    ld [hl], c
    jr jr_023_4094

jr_023_4079:
    ld bc, $0e0e
    dec hl
    ld c, $3e
    dec de
    dec c
    ld bc, $f82b
    inc b
    add b
    add c
    add hl, de
    nop
    jr jr_023_40b6

    ld [hl], b
    ld [hl], c
    add hl, de
    inc b
    and b
    and c

jr_023_4091:
    add d
    inc b
    and d

jr_023_4094:
    jr @+$2d

    add b
    add c
    add hl, de
    nop
    or b
    or c
    or d
    inc b
    jr jr_023_40cb

    ld [hl], b
    ld [hl], c
    ld [hl+], a
    inc b
    add hl, de
    or $ea
    or $1a
    dec hl
    ld e, b
    ld d, $80
    add c
    ld bc, $172b
    ld a, [c]
    dec hl
    ld a, [c]
    ld d, $16

jr_023_40b6:
    ccf
    dec hl
    ld bc, $de01
    ld bc, $0e0e
    inc b
    db $10
    ld bc, $1852
    add hl, de
    add b
    add d
    ld [hl], d
    add c
    add b
    add d
    ld d, d

jr_023_40cb:
    jr jr_023_40e6

    ld [hl], b
    ld [hl], d
    jr nz, jr_023_40d9

    ld a, [de]
    add c
    dec d
    rla
    add b
    ld d, d
    dec de
    inc e

jr_023_40d9:
    add b
    add c
    jp z, Jump_023_701c

    ld e, c
    rst $08
    nop
    ld e, $54
    ld d, a
    ld b, b
    ld b, b

jr_023_40e6:
    ld [hl], $d0
    dec [hl]
    ld b, d
    add b
    ld d, b
    ld d, c
    ret nc

    ld d, b
    db $f4
    nop
    ld d, $62
    ld b, b
    ld bc, $172b
    ld d, b
    ld d, h
    dec hl
    dec hl
    ld c, $01
    add h
    rst $38
    dec hl
    ld bc, $0d0d
    ld d, $16
    ld c, $30
    cp a
    ld [hl], d
    add c
    and h
    and l
    and [hl]
    and a
    ld b, $82
    add b
    ld [hl], c
    or h
    or l
    and b
    and b
    jr @+$74

    or [hl]
    or a
    ld [hl], b
    add d
    ld [hl], c
    xor b
    sub b
    ld [hl], d
    and c
    and c
    xor e
    ld [hl], b
    add d
    add d
    nop
    add c
    cp b
    cp c
    cp d
    cp e
    add b
    add d
    ld [hl], d
    ld [hl], b
    cp a
    ld b, b
    ld b, b
    ld [hl], $f2
    dec [hl]
    ldh [$d0], a
    ld b, b
    ld b, b
    ld d, h
    ld d, h
    ld d, c
    ldh a, [rNR21]
    ret nc

    ld d, b
    ld d, h
    ld d, h
    jp $162b


    rla
    ld [hl], b
    ld [hl], c
    rrca
    dec hl
    ld bc, $8019
    add d
    ldh [$c3], a
    ld hl, sp+$71
    ld d, e
    inc b
    dec d
    ld c, $81
    ld d, e
    dec d
    ld c, $0e
    ld b, $30
    ld sp, $5371
    jr @-$06

    ld sp, $1234

jr_023_4166:
    ld [de], a
    add c
    ld d, e
    ret nz

    nop
    ld [de], a
    jr jr_023_4166

jr_023_416e:
    ld d, d
    and e
    rrca
    ld d, e
    ld b, b
    ld h, e
    jr jr_023_416e

    ld d, d
    or e
    ld de, $8033

jr_023_417b:
    ld bc, $3411
    ld [de], a
    ld d, h
    ld d, c
    jr jr_023_417b

jr_023_4183:
    ld d, d
    rrca
    ld d, e
    ld [de], a
    ld [hl], b
    ld [hl], c
    jr jr_023_4183

    nop
    jr c, jr_023_41ce

    ld d, d
    rst $20

jr_023_4190:
    ld de, $5311
    ld [de], a
    ld [hl], d
    add c
    jr jr_023_4190

    ld h, d
    ld h, e
    ld [de], a
    rst $08
    ld h, c
    ld hl, sp+$0e
    ld bc, $3052
    jr nc, jr_023_41de

    ld bc, $8800
    ld de, $3039
    inc [hl]
    ld d, d
    ld [de], a
    ld c, l
    ld h, $f8
    ld c, $01
    dec h
    ld d, e
    ld d, d
    ld c, l
    ld b, $18
    ld hl, sp+$48
    dec c
    ld b, a
    ld de, $5253
    ld e, l
    ld de, $0153
    ld d, d
    ld de, $0802
    ld d, d
    ld d, e
    ld e, l
    ld b, e
    ld h, e
    ld hl, sp+$0d

jr_023_41ce:
    ld bc, $d05b
    ld e, h
    ld e, l
    ld d, e
    ld d, c
    ld hl, sp+$01
    rlca
    ld hl, sp+$0e
    ld l, h
    ret nc

    ld l, h
    ld d, d

jr_023_41de:
    ld e, l
    ld d, e
    ld bc, $0e01
    dec c
    ld d, d
    cp $40
    ld b, e
    ld hl, sp+$54
    ld b, b
    ld b, b
    ld d, e
    ld c, $54
    add sp, $53
    xor l
    xor l
    xor [hl]
    inc [hl]
    xor a
    xor [hl]
    cp h
    cp h
    ld d, e
    xor l
    ld hl, sp-$51
    xor l
    xor [hl]
    xor [hl]
    and b
    cp h
    ld d, e
    cp l
    cp l
    cp [hl]
    cp [hl]
    xor a
    add e
    xor a
    ld d, e
    cp l
    cp l
    cp [hl]

jr_023_420e:
    cp [hl]
    rst $28
    xor a
    ld d, e
    cp a
    xor a
    ld d, e
    rst $38
    xor a
    cp $fb
    xor a
    ld h, e
    ld d, c
    cp a
    ld b, c
    xor a
    cp h
    cp h
    xor l
    xor l
    xor [hl]
    xor [hl]
    xor l
    add $18
    xor [hl]
    xor l
    xor a
    xor l
    xor l
    xor a
    xor l
    xor l
    cp h
    cp l
    cp l
    ld h, e
    adc h
    cp [hl]
    xor a
    cp l
    cp l
    xor a
    cp l
    cp l
    xor a
    cp l
    cp l
    cp $ff
    xor a
    cp [hl]
    rrca
    ccf
    xor a
    xor l
    xor l
    xor [hl]
    xor [hl]
    xor l
    xor l
    jr nc, jr_023_420e

    xor l
    xor [hl]
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor [hl]
    cp l
    cp l
    cp [hl]
    cp [hl]
    xor a
    xor a
    ret nz

    and b
    xor a
    xor [hl]
    xor [hl]
    cp l
    cp l
    cp [hl]
    cp [hl]
    cp l
    cp l
    cp [hl]
    cp [hl]
    cp h
    cp h
    ld b, e
    db $fd
    xor a
    cp l
    cp l
    cp [hl]
    cp [hl]
    cp h
    cp h
    rst $38
    rst $38
    xor a
    rra
    ld a, h
    xor a
    xor l
    xor l
    xor [hl]
    xor [hl]
    ld d, d
    xor l
    ldh a, [rLCDC]
    xor a
    xor l
    xor [hl]
    xor [hl]
    ld d, d
    cp h
    cp l
    cp l
    cp [hl]
    cp [hl]
    ld d, d
    xor l
    ld b, $18
    xor [hl]
    xor l
    cp l
    cp l
    cp [hl]
    cp [hl]
    ld d, d
    xor a
    xor l
    xor l
    xor a
    xor a
    xor a
    add l
    dec d
    xor a
    ld d, d
    cp l
    cp l
    cp [hl]
    cp [hl]
    cp h
    ld d, d
    cp l
    cp l
    cp [hl]
    sbc $7f
    xor a
    cp [hl]
    ld d, d
    ld d, d
    call c, $01d0
    and e
    dec hl
    ld c, $19
    and c
    or e
    dec hl
    ld c, $a0
    adc d
    dec hl
    ld bc, $1901
    or c
    and e
    push de
    push de
    push de
    push de
    ld d, $b3
    ld a, a
    xor d
    dec hl
    ld bc, $d5a3
    push de
    push de
    ldh a, [rIF]
    dec hl
    push de
    ld bc, $a2a1
    or c
    or d
    and e
    or e
    ret nz

    db $e3
    ld b, b
    and e
    inc b
    or e
    and e
    or e
    and e
    ld [hl], $dd
    dec [hl]
    cp h
    or b
    ld bc, $18a2
    ld c, $2b
    or e
    or d
    jr jr_023_4300

    ld b, h
    sbc l
    dec hl
    ld bc, $a301
    ld d, $d5
    push de
    push de
    or e
    ld bc, $d45f

jr_023_4300:
    dec hl
    db $eb
    and e
    ld bc, $d5d5
    push de
    db $fd
    inc bc
    dec hl
    or e
    and c
    and d
    or e
    and e
    or e
    and e
    ret nz

    rst $38
    ld b, b

jr_023_4314:
    or e
    and e
    or e
    and e
    or c
    or d
    jr jr_023_4314

    xor a
    ld d, e
    ld d, h
    ld d, c
    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, e
    rst $20
    sbc a
    xor a
    and d
    ld d, e
    or d
    ld d, e
    ld a, a
    ld a, [$a9af]
    ld d, e
    ld c, h
    ldh [rIF], a
    ei
    xor a
    xor a
    ld d, e
    ld e, a
    ld d, e
    ld d, e
    ld de, $fd53
    ccf
    cp $fd
    ld h, e
    ld de, $3853
    ldh [rNR11], a
    ld d, h
    ld d, h
    ld d, d
    ld d, e
    ld d, c
    xor a
    xor a
    and e
    pop af
    ld d, d
    inc l
    cp b
    xor a
    ld d, e
    xor c
    or e
    ld d, d
    ld de, $1111
    ld d, e
    xor c
    ld c, $38
    ld de, $5352
    xor a
    xor a
    xor a
    xor a
    xor a
    ld d, d
    ld d, e
    xor a
    inc c
    ld c, $fb
    xor a
    xor a
    ld d, d
    ld de, $1111
    ld d, e
    db $fd
    db $fd
    ld d, d
    ld de, $e0f8
    db $fd
    ld de, $5311
    ld d, d
    ld de, $1111
    ld d, e
    rst $38
    rst $38
    xor a
    cp a
    rst $38
    xor a
    xor c
    rst $38
    ld e, a
    xor a
    xor c
    xor c
    db $fc
    ld c, $fb
    xor a
    xor a
    and a
    db $fd
    db $fd
    db $fd
    db $fd
    ei
    rst $08
    db $fd
    and a
    and a
    and b
    ld a, a
    db $fc
    xor a
    xor c
    ld d, d
    add b
    di
    rst $00
    xor a
    ld d, d
    ld [hl], b
    xor c
    ld d, d
    add b
    cpl
    rst $38
    xor a
    xor c
    ld d, d
    ld [hl], b
    db $fc
    inc bc
    ei
    ld d, d
    add b
    ld d, d
    ld [hl], b
    db $fd
    db $fd
    db $fd
    db $fd
    rst $08
    ccf
    db $fd
    ld d, d
    add b
    ld d, d
    ld [hl], b
    call c, $0102
    add c
    jr jr_023_43da

    dec hl
    ld [hl], c
    jr jr_023_43de

    ld hl, sp-$08
    ld hl, sp-$7d
    ld [$2bf8], sp
    ld bc, $1881

jr_023_43da:
    ld bc, $eba0
    and d

jr_023_43de:
    dec hl
    ld c, $71
    jr jr_023_4405

    adc b
    ld hl, sp+$01
    xor c
    xor d
    xor e
    dec hl
    ld bc, $1881
    ld bc, $eaf6
    or $81
    call nz, $012b
    ld [hl], c
    jr @+$03

    ld c, $0d

Jump_023_43fa:
    dec c
    ld c, $0e
    add c
    jr @+$41

    ld b, c
    dec hl
    ld [hl], c
    jr @-$07

jr_023_4405:
    rst $30
    rst $30
    rst $30
    rst $30
    ld c, $fe
    ret


    dec hl
    ld bc, $0e0e
    ld c, $0e
    inc h
    sub e
    dec hl
    ld c, $0e
    ld bc, $0e01
    xor [hl]
    xor [hl]
    ld c, $01
    ld bc, $ce73
    dec hl
    xor h
    xor l
    ld bc, $bc01
    cp l
    ret


    inc [hl]
    dec hl
    ld c, $0e
    dec c
    xor [hl]
    xor [hl]
    dec c
    ld bc, $0d0e
    or e
    ld a, a
    dec hl
    dec c
    ld c, $0e
    ld [hl], b
    ld hl, sp+$1b
    ld bc, $012b
    ldh [$f7], a
    ld bc, $010e
    dec hl
    add hl, de
    add e
    rst $30
    jr @+$03

    ld c, $2b
    add hl, de
    ld h, b
    ld bc, $a4a3
    and l
    rst $30
    jr @+$2d

    ld [hl+], a
    rst $30
    add hl, de
    or e
    or h
    or l
    jr jr_023_446c

    ld d, b
    or $01
    dec hl
    add hl, de
    rst $30
    ld [$88f7], a
    dec hl
    jr @+$03

    ld c, $19

jr_023_446c:
    rst $30
    rst $30
    ldh a, [$2b]
    rst $30
    rst $30
    jr jr_023_4475

    ccf

jr_023_4475:
    dec hl
    ld [hl], c
    inc b
    sub l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    dec hl
    ld b, [hl]
    ld bc, $0e0e
    dec hl
    dec hl
    add hl, de
    ldh a, [$2b]
    ld [hl], b
    ld [hl], d
    ld bc, $4101
    dec hl
    add hl, de
    add b
    add d
    ld bc, $0d0e
    ret nz

    ld bc, $0d0e
    dec hl
    add hl, de
    inc b
    add b
    ld a, [bc]
    ld c, $2b
    dec c
    dec hl
    add hl, de
    rst $30
    rst $30
    inc bc
    ld bc, $0d2b
    ld c, $0d
    dec hl
    add hl, de
    xor b
    ld c, $ca
    inc b
    ld bc, $0d2b
    pop af
    dec hl
    add hl, de
    jp z, $0704

    dec hl
    inc e
    rst $30
    rst $30
    ld [hl], c
    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c

jr_023_44c2:
    ld [hl], c
    ld [hl], c
    ld h, b
    ld d, h
    add d
    ld [hl], c
    jr jr_023_44c2

    ld b, l

jr_023_44cb:
    add sp, $00
    ld d, c
    ld [de], a
    ld [hl], d
    add c
    jr jr_023_44cb

    ld d, b
    add sp, $0c
    ld [de], a
    ld l, c
    ld e, [hl]
    add c
    inc b
    ld a, [de]
    ld c, $30
    ld e, a
    ld hl, sp-$08
    ld d, d
    rrca
    rst $30
    inc b
    ldh [rLCDC], a
    inc b
    jr jr_023_44f8

    ld hl, sp+$62
    rlca
    inc b
    ld a, [de]
    ld bc, $50f8
    ld d, h
    inc a
    inc b
    ld d, h
    ld d, h
    ld a, [de]

jr_023_44f8:
    ld c, $0f
    ld hl, sp-$09
    inc b
    inc b
    inc b
    inc a
    dec de
    inc b
    ld a, [de]
    ld [hl], c
    ld [hl], b
    ld hl, $f771
    inc b
    rst $30
    ld [hl], b
    ld sp, $4030
    pop bc
    ld bc, $535d
    ld hl, sp-$08
    dec c
    ld c, $0e
    ld d, d
    ld e, l
    ld d, e
    ld hl, sp-$08
    add b
    ld bc, $1b0e
    dec de
    inc e
    ld d, d
    rrca
    ld d, e
    ld hl, sp+$1c
    call nz, $c404
    ld d, d
    ld b, b
    ld h, e
    ld e, b
    ldh [rDIV], a
    ld hl, sp+$0d
    add hl, de
    call nz, Call_023_5452
    ld d, c
    ld hl, sp+$01
    inc e
    add c
    nop
    inc b
    ld d, d
    ld hl, sp-$08
    ld c, $1c
    call nz, $201f
    ld hl, $1b52
    dec de
    inc e
    call nz, Call_023_7fc0
    jr nc, jr_023_4553

    inc b
    ld [hl+], a
    inc hl
    inc h

jr_023_4553:
    ld d, d
    ld [hl-], a
    cp $fb
    xor a
    ld d, e
    ld d, e
    rst $28
    or l
    xor a
    ld d, e
    cp h
    cp h
    ld d, e
    rst $38
    ld e, [hl]
    xor a
    ld d, e
    cp h
    cp h
    cp e
    rst $28
    xor a
    ld d, e
    cp h
    ld d, e
    scf
    ld e, $af
    cp h
    inc sp
    jr nc, jr_023_45a8

    ld sp, $3030
    rst $38
    rst $38
    xor a
    ld a, a
    rst $38
    xor a
    cp h
    rst $30
    rst $38
    xor a
    cp h
    rst $38
    rst $38
    xor a
    cp a
    rst $38
    xor a
    inc [hl]
    rst $38
    rst $38
    xor a
    rst $38
    db $fd
    xor a
    xor c
    db $e3
    rlca
    xor a
    and [hl]
    and a
    xor b
    or l
    or [hl]
    or a
    cp b
    cp c
    rra
    ld a, h
    xor a
    and e
    xor d
    rst $20
    xor e
    and h
    or e
    rst $30
    rst $38
    xor a
    or h

jr_023_45a8:
    rst $38
    db $fd
    xor a
    ld d, d
    rst $30
    rst $08
    xor a
    ld d, d
    cp h
    ld d, d
    ld l, a
    ccf
    xor a
    cp h
    ld d, d
    cp h
    cp h
    ld a, l
    rst $30
    xor a
    ld d, d
    cp h
    ld h, d
    reti


    rlca
    xor a
    cp h
    ldh [$50], a
    ld sp, $3030
    jr nc, @+$6a

    adc a
    inc bc
    ld d, h
    ld d, c
    rst JumpTable
    ld d, b
    ld b, a
    ld [de], a
    ld [de], a
    ld [de], a
    ld l, l
    ld de, $098c
    ld [de], a
    ld de, $526e
    ld c, [hl]
    ldh [$6d], a
    ld l, [hl]
    ld c, l
    ld e, a
    ld d, d
    ld de, $fe00
    ld b, b
    ld e, a
    ld c, [hl]
    ld [de], a
    ld [de], a
    ld [de], a
    ld c, l
    ld de, $6211
    ld hl, sp+$0f
    ld d, h
    ld b, b
    ld b, b
    ld d, b
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    cp a
    inc bc
    ld d, h
    add sp, $12
    ld e, l
    ld de, $6f11
    ld l, [hl]
    ld bc, $1219
    ld l, l
    ld l, a
    ld de, $115f
    ld l, a
    ld l, [hl]
    ld c, l
    ld c, [hl]
    ld l, l
    ld de, $005e
    rst $38
    ld b, b
    ld [de], a
    ld c, l
    ld e, a
    ld de, $4e11
    ld [de], a
    ld [de], a
    db $fc
    rrca
    ld d, h
    ld b, b
    ld b, b
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    ld hl, sp-$3d
    db $fd
    ld d, c
    ld de, $1138
    ld de, $2f2f
    add a
    ccf
    db $fd
    cpl
    ld l, a
    ld de, $1248
    ld l, l
    cp $f8
    db $fd
    ld d, e
    ld b, b
    ld b, b
    ld h, e
    db $e3
    rst $38
    db $fd
    ld d, h
    ld d, h
    ld d, c
    rst $38
    rst $38
    db $fd
    jr c, @-$1e

    ld de, $fdfd
    scf
    ld d, e
    db $fd
    db $fd
    db $fd
    cpl
    cpl
    cpl
    ld a, $f8
    db $fd
    ld d, e
    ld b, a
    ld de, $1111
    ld d, e
    ldh [$83], a
    db $fd
    ld d, d
    ld de, $1111
    ld d, e
    ld h, d
    ld b, b
    ld b, b
    ld b, b
    ld h, e
    rrca
    cp $fd
    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    rst $38
    rst $38
    db $fd
    cp a
    rlca
    db $fd
    and a
    ld sp, $3030
    jr nc, jr_023_46ed

    jr jr_023_46e9

    db $fd
    and a
    ld h, l
    inc [hl]
    ld d, d
    and d
    and e
    and h
    ld a, [c]
    ld de, $530f
    ld d, d
    db $10
    call z, $b20f
    or e
    or h
    ld de, $5311
    db $fd
    db $fd
    ld d, d

jr_023_46a2:
    ld de, $5011
    jp nz, Jump_023_530f

    db $fd
    db $fd
    ld d, d
    ld de, $1111
    ld d, e
    db $fd
    db $fd
    ld d, d
    nop
    ccf
    ld b, b
    ld de, $0f11
    rrca
    ld d, e
    db $fd
    db $fd
    ld b, c
    ld b, h
    db $fd
    cp $30
    ld sp, $c4e0
    ld [hl-], a
    add b
    ld d, d

jr_023_46c7:
    pop af
    sub [hl]
    daa
    ld hl, sp+$16
    ld d, d
    sub [hl]
    call nz, $f81c
    call nz, $01c4
    ld h, d
    ld b, d
    ld [hl], c
    ld hl, sp-$3c
    call nz, $01c4
    jr c, jr_023_46a2

    ld d, b
    ld d, d
    ld hl, sp-$08
    ld hl, sp-$10
    ld b, b
    ld hl, sp+$01
    or c
    ld h, d

jr_023_46e9:
    rrca
    ld b, b
    or c
    ld d, b

jr_023_46ed:
    ld d, h
    ld d, h
    ccf
    ld d, h
    or c
    or c
    rst $38
    or c
    inc b
    ld de, $812b
    jr @-$5b

    db $eb
    and h
    db $eb
    and l
    ld c, $16
    ld bc, $b4b3
    or h
    jr jr_023_46c7

    ld bc, $b5b4
    dec hl
    ld c, $2b
    or $ea
    or $ea
    or $2b
    ld c, $55
    db $fc
    dec hl
    dec c
    dec c
    dec c
    ld b, e
    ld c, $01
    db $fc
    rlca
    ld b, b
    dec hl
    ld d, e
    ld h, e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ret nz

    rst $38
    or c
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    xor d
    ld bc, $f80e
    ld hl, sp+$0e
    ld l, b
    ld hl, sp+$19
    add b
    ld bc, $0d0e
    pop bc
    ld hl, sp+$01
    add hl, de
    ld [hl], b
    ld c, $0d
    inc c
    dec de
    ld hl, sp-$08
    inc e
    add b
    ld b, b
    ld b, b
    nop
    ld b, d
    rst $20
    ld hl, sp+$19
    rra
    jr nz, jr_023_4775

    ld [hl], b
    inc bc
    ld d, h
    ld d, d
    ld hl, sp-$08
    add hl, de
    ld [hl+], a
    inc hl
    ldh [rLCDC], a
    inc h
    add b
    or c
    or c
    ld h, d
    rrca
    ld b, b
    or c
    or c
    ld d, b
    ld d, h
    ccf
    ld d, h
    or c
    or c
    rst $38
    or c
    xor c
    add c
    inc b
    add b
    add b

jr_023_4775:
    add b
    jr nc, @-$3a

    dec hl
    add b
    ld [hl], c
    inc b
    ld [hl], e
    ld [hl], h
    add e
    call nz, $2b2b
    add c
    inc b
    inc b
    adc b
    inc b
    add e
    add h
    call nz, $2b2b
    ld [hl], c
    ld [hl], e
    inc b
    dec d
    rla
    ld [hl], b
    add [hl]
    call nz, $1581
    ld c, $01
    rla
    db $fc
    ld b, b
    call nz, $0f80
    ld b, b
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ccf
    ld d, h
    or c
    or c
    rst $38
    or c
    ld a, [hl+]
    add b
    add c
    add c
    add c
    add d
    ld [hl], d
    inc c
    dec hl
    add c
    add b
    and [hl]
    db $eb
    xor b
    and c
    jr nc, jr_023_47e5

    add b
    add c
    inc b
    ld sp, $b7b6
    nop
    cp b
    ld [$b9ba], a
    cp e
    ld d, d
    ld [hl], c
    dec hl
    ld [hl], b
    dec bc
    or $ea
    or $1d
    ld d, d
    ld c, $2b
    add c
    cp c
    add hl, bc
    db $fd
    db $fd
    jr c, jr_023_4804

    db $fd
    ld h, d
    ld b, d
    cp c
    add hl, bc
    and b
    jp z, $fdfd

    pop af
    ld b, l
    ld d, d

jr_023_47e5:
    rrc h
    db $fd
    cp c
    add hl, bc
    ld [$626a], sp
    ld b, b
    ld a, a
    ld b, b
    ld h, e
    nop
    ldh [$0b], a
    add c
    add b
    add c
    rst $30
    inc b
    rst $30
    add b
    add c
    ld h, d
    ld b, b
    inc [hl]
    and l
    and [hl]
    db $10
    ld b, b
    ld d, e

jr_023_4804:
    and l
    and [hl]
    ld d, b
    ld d, h
    or e
    or h
    or l
    xor a
    xor a
    or e
    or h
    and e
    and h
    and e
    inc e
    ld hl, sp-$51
    and h
    or l
    or l
    or e
    or h
    ld h, e
    or e
    or h
    ld hl, sp+$0f
    ei
    xor a
    xor a
    ld b, [hl]
    ld b, [hl]
    db $fd
    db $fd
    db $fd
    cp a
    rst $38
    db $fd
    ld b, [hl]
    rst $38
    ld b, b
    db $fc
    ld d, h
    ld b, b
    ld b, b
    rrca
    ld d, h
    and e
    and h
    or l
    xor a
    ccf
    xor a

Call_023_4839:
    or e
    or h
    di
    xor a
    and e
    and h
    adc a
    xor a
    or e
    or h
    or l
    db $fc
    ei
    xor a
    xor a
    rrca
    ei
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    inc bc
    inc bc
    ld b, b
    ld h, e
    and b
    and b
    and b
    and b

jr_023_485a:
    ld h, d
    ld d, h
    ld d, h
    ld d, c
    or c
    or c
    or c
    ldh a, [$c7]
    xor a
    or c
    ld d, b
    ld d, h
    ld d, h
    ld a, [c]
    and e
    and h
    ccf
    rst $38
    xor a
    or e
    or h
    db $fc
    rlca
    ei
    or l
    ld sp, $fd52
    db $fd
    db $fd
    db $fd
    rst JumpTable
    ld a, a
    db $fd
    ld d, d
    ld h, d
    cp $fb
    xor a
    ld h, e
    ld l, c
    rst $28
    cp d
    xor a
    ld d, d
    cp h
    cp h
    ld d, d
    jp $af06


    xor l
    xor l
    xor [hl]
    xor [hl]
    ld [hl-], a
    cp h
    xor l
    xor l
    xor [hl]
    xor [hl]
    jr c, jr_023_485a

    xor a
    ld b, e
    ld b, b
    cp h
    cp l
    cp l
    cp [hl]
    cp [hl]
    ld d, e
    ld d, h
    cp h
    cp h
    ret nz

    ccf
    ld b, b
    cp l
    cp l
    cp [hl]
    cp [hl]
    ld d, e
    db $fd
    ld h, e
    db $fd
    rst $38
    rst $38
    xor a
    rst $38
    rst $38
    xor a
    db $fc
    nop
    xor a
    ld b, e
    ld [hl], $40
    ld b, b
    ld h, e
    ld d, c

Jump_023_48c0:
    ei
    ei
    ei
    ei
    ldh [rIE], a
    db $fd
    ei
    ei
    ld d, h
    ld d, h
    ld d, c
    rst $38
    rst $38
    db $fd
    rra
    ld a, h
    xor a
    ld d, d
    or l
    or l
    or l
    ld d, e
    scf
    ldh a, [$c1]
    xor a
    or l
    ld de, $53f1
    dec h
    ld de, $1111
    ld d, e
    nop
    rra
    ei
    xor a
    xor a
    xor a
    ld b, a
    rst $20
    ld de, $5311
    ld h, d
    ld b, b
    ld b, b
    ld a, h
    ldh a, [$fd]
    ld b, b
    ld h, e
    ld b, l
    ld d, h
    ld d, h
    ld d, h
    ld b, [hl]
    pop bc
    rst $38
    db $fd
    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    ld b, h
    xor b
    cp b
    and a
    xor e
    or h
    xor h
    xor c
    or b
    xor b
    cp b
    cp b
    and c
    and a
    cp d
    add c
    xor b
    xor c
    xor d
    cp b
    xor l
    and a
    or h
    nop
    and [hl]
    xor b
    or h
    xor c
    xor [hl]
    cp b
    xor l
    or a
    ld de, $bdb5
    rst $28
    cp [hl]
    xor c
    xor [hl]
    cp b
    cp $b2
    xor l
    ld hl, sp-$4e
    and b
    cp b
    xor l
    ldh [$bc], a
    or d
    or d

jr_023_4938:
    cpl
    cpl
    or c
    rrca
    cp h
    or b
    cp b
    ld b, l
    ld d, h
    ccf
    ld d, h
    ld b, [hl]
    cp b
    rra
    ld a, h
    cp b
    ld sp, $3030
    jr nc, jr_023_497d

    ld d, d
    ret nz

    ld bc, $a230
    or d
    or e
    and d
    cp b
    ld sp, $a432
    or d
    and d
    or d
    cp b
    ld d, d
    ldh [rP1], a
    or d
    push hl
    push hl
    and l
    or e
    and d
    cp b
    scf
    inc d
    ld d, $17
    and l
    and e
    and d
    inc bc
    ld [$2fb2], sp
    cpl
    sub d
    ld a, [de]
    ld bc, $9c17
    and h
    and d
    cp b
    ld b, a
    push hl

jr_023_497d:
    push hl
    nop
    rst $00
    ld b, b
    jr @+$1b

    sub $a5
    and e
    and d
    cp b
    ld h, d
    ld e, b
    rst $08
    ld d, a
    rst $38
    ld bc, $3430
    and d
    or e
    and [hl]
    ld a, [de]
    ld c, $19
    jr nc, jr_023_49d8

    or d
    sub d
    jp z, Jump_023_53cb

    and d
    and [hl]
    ld a, [de]
    inc e
    sub d
    inc b
    inc b
    ld d, e
    and d
    ld bc, $b203
    ld b, e
    ld [hl], $d0
    dec [hl]
    ld b, b
    ld b, b
    ld h, e
    or h
    ld d, e
    ld b, [hl]
    ret nc

    ld d, b
    ld d, h
    jr nz, jr_023_4938

    ld d, e
    ld d, h
    ld b, [hl]
    and d
    or d
    or [hl]
    ld b, a
    dec c
    inc e
    or l
    and d
    ld c, b
    or d
    or [hl]
    dec d
    ret nz

    ld a, c
    ld b, b
    ld d, d
    inc e
    or l
    and e
    or [hl]
    ld d, e
    ld h, e
    ld h, d
    ld h, e
    rst $38
    rra
    inc b
    db $f4
    db $f4

jr_023_49d8:
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    ccf
    and d
    scf
    ld c, c
    ld a, [hl]
    and d
    jr c, jr_023_4a31

    ldh a, [$a2]
    ld b, a
    ld c, c
    ld c, b
    jr c, jr_023_4a23

    ld c, d
    and d
    ld h, a
    rst $28
    ld l, c
    and d
    and h
    ld [hl], b
    cp h
    or e
    or l
    and d
    ld c, d
    ld c, d
    ld e, $49
    scf
    ld b, a

jr_023_4a13:
    ld a, [hl-]
    cp h
    ld a, b
    cp h
    add hl, sp
    ld c, b
    ld c, e
    ld h, a
    ld h, d
    ret nc

    ld l, c
    ld h, a
    ld l, c
    ld l, h
    dec sp
    dec a

jr_023_4a23:
    cp h
    dec sp
    dec sp
    ld h, h
    ldh a, [rOBP1]
    rrca
    ld c, d
    cp h
    ld b, a
    rst $38
    and d
    ld [hl], a
    and d

jr_023_4a31:
    and h
    and h
    adc b
    and h
    or e
    or l
    and d
    or e
    or h
    or l
    ld l, $b4
    or e
    or d
    scf
    ld c, c
    rst $38
    ld c, c
    cp $bc
    ld c, b
    ei
    cp h
    xor h
    ccf
    cp h
    scf
    ld c, c
    ld hl, sp+$49
    ld a, [hl-]
    rst $08
    add hl, sp
    cp $58
    ld c, b
    ld a, h
    ld c, c
    and d
    scf
    jr c, jr_023_4a62

    and d
    ld c, d
    cp h
    rst $20
    xor h
    cp h
    ld [hl+], a

jr_023_4a62:
    ld c, d
    rst $20
    and d
    and d
    scf
    cp h
    cp h
    ld b, $bc
    xor h
    ld c, d
    jr c, jr_023_4a13

    ld c, b
    ld b, a
    add hl, bc
    ld a, [hl-]
    cp h
    add hl, sp
    cp h
    ld c, e
    ld c, d
    or h
    ld [de], a

jr_023_4a7a:
    ld h, a
    cp h
    ld l, c
    ret nc

    ld l, c
    ret nc

    ld l, h
    inc a
    cp h
    ld b, a
    ld c, c
    dec sp
    dec sp
    ldh a, [rOBP1]
    cp h
    cp h
    cp h
    cp h
    inc a
    ld c, c
    ld c, b
    ld b, a
    ld e, b
    ld e, b
    di
    ld e, b
    ld e, c
    ld d, a
    ld a, b
    ld c, c
    and d
    and d
    scf
    jr c, jr_023_4aad

    and d
    ld c, d
    rst $20
    cp h
    cp h
    inc a
    and d
    cp h
    ld c, d
    ld c, d
    cp h
    rlca
    cp h
    ld c, d
    and d

jr_023_4aad:
    and d
    or l
    and h
    ld e, $bc
    ld c, d
    ld c, d
    and h
    and d
    ld a, b
    cp h
    ld c, c
    ld c, c
    ld c, b
    ld c, d

Jump_023_4abc:
    db $fc
    cp h
    or h
    or d
    ldh a, [rOBP1]
    cp h
    ld c, d
    jr c, jr_023_4a7a

    rlca
    ld c, c
    ld c, b
    ld c, d
    jr c, jr_023_4b24

    ld e, b
    rra
    ld e, b
    ld e, c
    ld c, d
    ld c, d
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4

jr_023_4b24:
    db $f4
    rst $30
    db $dd

jr_023_4b27:
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    ccf
    db $fc
    xor l
    ld sp, $3030
    jr nc, jr_023_4b27

    jp Jump_023_52ad


    ld a, [c]
    ld e, l
    rrca
    ld d, d
    ld e, a
    rst $20
    rrca
    ldh [$80], a
    rrca
    and h
    and h
    xor l
    xor l
    ld d, d
    or l
    or e
    or h
    or h
    or l
    and h
    ld d, d
    nop
    ld c, $40
    rrca
    rrca
    and d
    and b
    and c
    and d
    and b
    and c
    ld h, d
    or d
    or c
    or d
    or c
    jr c, @-$1e

    ld d, h
    or d
    or c
    ld b, l
    add d
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], d
    ld b, l
    ld a, b
    ldh [$ad], a
    jr nc, jr_023_4ba2

    inc [hl]
    ld sp, $3030
    rrca
    rrca
    ld d, e
    inc a
    ldh a, [rIF]
    xor l
    ld d, d
    ld d, e
    xor l
    xor l
    xor l
    xor l
    ld d, d
    ret nz

    inc bc
    rrca
    ld d, e
    and h
    xor l
    xor l
    xor l
    ld d, d
    ld d, e
    or h
    or l
    and h
    or e
    ld e, c
    nop
    inc a
    ld d, h
    adc $57
    ld b, b
    ld b, b
    ld h, e
    and c
    and d
    and b
    and c
    ld b, l
    ld b, [hl]
    or c

jr_023_4ba2:
    ldh a, [$c0]
    ld d, h
    or d
    or c
    or d
    ld b, l
    ld b, [hl]
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld b, l
    rra
    jr nc, jr_023_4be6

    xor l
    xor l
    inc e
    rrca
    xor l
    xor l
    db $ec
    ld l, a
    ld d, e
    rrca
    xor l
    rrca
    rrca
    ld l, a
    ld l, [hl]
    inc e
    xor l
    ld h, h
    ld d, e
    and l
    rrca
    ld e, [hl]
    ret nz

    jr nc, jr_023_4c2f

    ld h, h
    ld c, l
    ld d, e
    xor l
    ld sp, $401f
    ld h, e
    and h
    ld d, d
    nop
    ld de, $540f
    ld b, [hl]
    cp e
    cp h
    cp l
    ld l, e
    sub b
    ld d, h
    and b
    ld d, d
    rrca
    ld de, $4546

jr_023_4be6:
    jr nc, jr_023_4bf7

jr_023_4be8:
    ld b, [hl]
    ld l, e
    or c
    ld d, d
    ld d, h
    ld b, [hl]
    ret nz

    ld b, b
    ld b, l
    ld d, h
    ld b, [hl]
    ld l, e
    ld [hl], d
    ld h, d
    rlca

jr_023_4bf7:
    dec de
    xor l
    ld sp, $3030
    jr nc, jr_023_4c32

    and h
    ld d, d
    rrca
    rrca
    ld bc, $0f07
    ld d, e
    xor l
    xor l
    or h
    or l
    and h
    ld d, d
    ld d, e
    xor l
    xor l
    jr nc, jr_023_4c41

    inc b
    ld de, $300f
    ld [hl-], a
    xor b
    ret nc

    ld e, h
    xor l
    and h
    ld l, [hl]
    di
    ld l, l
    ld d, e
    ret nc

    ld l, e
    jr c, @-$7e

    ld h, h
    and l
    or h
    ld e, [hl]
    ld e, l
    ld d, e
    ret nc

    ld l, e
    and c
    and d
    rrca
    ld e, a

jr_023_4c2f:
    ld c, [hl]
    ld b, b
    ld [bc], a

jr_023_4c32:
    ld e, b
    ld e, l
    ld d, e
    ret nc

    ld l, e
    or d
    or c
    adc $57
    adc $5a
    ret nc

    ld l, e
    add d
    ld [hl], d

jr_023_4c41:
    rrca
    ld a, $ad
    ld sp, $3030
    jr nc, jr_023_4c7d

    ld d, d
    rst $20
    ld hl, sp-$20
    xor l
    xor c
    xor d
    ld d, e
    ld d, d
    rrca
    cp c
    cp d
    ld d, e
    jr c, jr_023_4c58

jr_023_4c58:
    rrca
    and h
    ld sp, $5352
    inc [hl]
    or l
    and l
    or h
    ld d, d
    ld h, d
    ld e, b
    adc $57
    jr nz, jr_023_4be8

    ld d, d

jr_023_4c69:
    ld h, e
    ld d, e
    and b
    and c
    and d
    ld d, b
    add sp, $54
    ld d, h
    ld d, c
    ld d, e
    or d
    or c
    or d
    rra
    ld a, h
    rrca
    ld d, e
    add d
    ld [hl], d

jr_023_4c7d:
    add d
    ld d, d
    ld d, e
    ld a, d
    nop
    ld d, h
    ld b, l
    and a
    and a
    ld d, c
    ld h, l
    ld b, a
    ld d, $a7
    ret z

    ld [hl], e
    ld [hl], h
    ld b, d
    ld [$c8a7], sp
    inc b
    ld h, h
    ld d, d
    ld c, $c8
    add e
    add h
    ret z

    or l
    or e
    ld d, d
    ld c, $12
    jr nc, jr_023_4c69

    or a
    ld d, $16
    or a
    and h
    and d
    ld d, d
    dec de
    dec de
    sbc h

jr_023_4cab:
    sbc h
    add hl, de
    ret nz

    ld bc, $a41b
    or d
    ld d, d
    rst $10
    rst $10
    ld a, [de]
    inc e
    and l
    and d
    ld d, d
    rlc h
    ld c, h
    add b
    pop hl
    ld b, b
    ret nc

    ret nc

    ld c, e
    inc b
    inc b
    and l
    ld h, d
    ld h, e
    ret nc

    ret nc

    ld h, d
    or h
    db $d3
    ld d, h
    jr nc, jr_023_4d15

    and c
    and c
    ld h, h
    ld d, b
    or c
    ld b, $00
    ld d, h
    or c
    ld l, c
    and [hl]
    inc b
    rra
    jr nz, jr_023_4d00

    inc de
    sub e
    jr jr_023_4cab

    ld d, d
    and d
    and [hl]
    nop
    inc c
    or e
    ld [hl+], a
    inc hl
    inc h
    jr jr_023_4d04

    ret z

    dec de
    ld d, d
    or d
    and d
    and [hl]
    ld a, [de]
    ld bc, $3419
    ldh [$b2], a
    sub d
    ld d, d
    and d
    and d
    and [hl]
    ld a, [de]

Call_023_4d00:
jr_023_4d00:
    inc e
    sub d
    ld d, d
    and d

jr_023_4d04:
    ld bc, $b21e
    and d
    or e
    and [hl]
    and a
    ld d, d
    ld b, d
    and d
    and d
    and d
    and a
    ld d, d
    db $e3
    add hl, bc
    ld d, h

jr_023_4d15:
    and c
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld l, d
    or c
    ld d, c
    or l
    or d
    ld b, c
    sbc [hl]
    or d
    or e
    and [hl]
    ld c, b
    ld d, e
    or l
    and d
    and d
    ld d, e
    ld d, e
    inc a
    cp h
    or d
    and d
    and d
    or h
    ld d, e
    ld d, e
    and a
    and d
    ldh [$85], a
    or d
    and d
    ld d, e
    ld d, e
    and a
    and d
    and d
    ld d, e
    ld d, e
    and a
    and h
    rla
    inc a
    or d
    and d
    ld d, e
    ld d, e
    and a
    and h
    and d
    or h
    ld d, e
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    add hl, bc
    ld c, d
    ld h, h
    rrca
    cp h
    ld d, a
    ld e, b
    ld e, b
    inc h
    ld c, d
    ld e, b
    ld e, b
    ret


    ret z

    cp h
    ld h, a
    rrca
    ld l, b
    ld c, d
    ret


    ld h, h
    ld c, d
    ccf
    cp h
    ld c, d
    ret


    db $fc
    cp h
    ret


    ld c, d
    ret nz

    cp h
    ld c, d
    ld h, h
    ret


    ld b, a
    ld c, c
    jr c, jr_023_4d95

    cp h
    ld c, d
    ret


jr_023_4d95:
    ret


    ld h, a
    ld l, b
    ld c, e
    inc c
    ld c, c
    cp h
    add hl, sp
    ld c, d
    cp d
    dec sp
    call nz, Call_023_6830
    cp e
    ld l, h
    ret nc

    ld h, a
    ld c, d
    cp c
    ld hl, sp-$44
    ld c, d
    cp d
    xor c
    ld hl, sp+$0f
    ld l, b
    ld e, b
    ld e, b
    ld e, c
    ld l, c
    rrca
    rrca
    rrca
    and d
    dec b
    rrca
    ld h, h
    ret z

    ld [hl], b
    xor c
    di
    ld h, h
    ret z

    ld [hl], b
    ld [hl], d
    cp h
    cp d
    ld d, $02
    rrca
    di
    ld h, h
    cp a
    add b
    add c
    xor c
    ld h, h
    ld h, h
    scf
    ld c, c
    ld a, [hl-]
    call z, $1880
    ld l, b
    add hl, sp
    ld c, c
    ld c, c
    jr c, jr_023_4e41

    rrca
    ld c, d
    cp l
    sub l
    cp [hl]
    ld c, d
    xor b
    xor c

Call_023_4de5:
    ld a, b
    jp Jump_023_4abc


    rrca
    xor e
    ld c, d
    ld c, d
    rrca
    xor c
    xor c
    ld c, a
    ld l, b
    ld l, c
    ld h, a
    or [hl]
    ldh a, [rIF]
    xor $b7
    ld [hl], c
    ret z

    ld a, [bc]
    ld [hl], b
    ret z

    ld [hl], c
    add d
    ld [hl], c
    ret z

    rrca
    ld c, b
    add b
    rrca
    ret z

    ret z

    add d
    ld [hl], d
    add c
    rrca
    rrca
    ret z

    ret z

    add b
    add d
    ld b, a
    ld c, c
    ld a, [hl-]
    rrca
    add hl, sp
    jr c, @+$1e

    ld l, b
    ld [hl], b
    ld [hl], d
    ld l, c
    ret nc

    ld h, a
    or b
    cp h
    ld l, b
    ld c, d
    add b
    add c
    cp c
    ld b, a
    cp h
    ld c, d
    cp d
    xor c
    xor c
    call c, $0fbc
    xor c
    ld c, d
    ld a, a
    ld l, b
    ld l, c
    ldh a, [rIF]
    ld c, d
    ld c, d
    ld [hl], c
    ret z

    add e
    rrca
    ld c, d
    ld c, d
    add c
    ret z

    ret z

    add hl, bc

jr_023_4e41:
    rrca
    ld [hl], b
    ld [hl], c
    ld c, d
    ld c, d
    ld [hl], c
    ret z

    daa
    rrca
    add b
    add c
    ld c, d

Call_023_4e4d:
    ld c, d
    ld hl, sp+$0f
    add d
    ld [hl], c
    ret z

    ldh [rIF], a
    ld c, d
    ld c, d
    add b
    add c
    cp e
    inc c
    ld c, d
    cp a
    rrca
    xor d
    cp d
    xor c
    scf
    ret nz

    cp h
    ld c, c
    ld a, [hl-]
    call z, Call_023_4839
    ld c, d
    add d
    ld c, d
    cp h
    ld e, b
    xor l
    sub h
    xor [hl]
    ld e, c
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    ld e, $30
    ld h, a
    ld l, b
    ld b, l
    ld d, h
    ld a, b
    rrca
    ld d, h
    ld d, h
    ld d, d
    ld d, e
    ldh [rIF], a
    ld b, l
    ld d, h
    ld d, h
    ld d, h
    ld d, d
    add c
    rrca
    jr c, @+$52

    add sp, $54
    ld d, h
    ld d, d
    rla
    rrca
    ld h, $5e
    inc b
    ld h, h
    ret nz

    rrca
    ld h, d
    ld b, b
    ld [hl], $d0
    dec [hl]
    ld c, d
    sub b
    ld d, c
    ld c, [hl]
    ld h, h
    ld b, l
    ld d, h
    ret nc

    ld d, b
    push hl
    rrca
    ld de, $475f
    cpl
    rrca
    ld de, $4062
    rrca
    ld b, b
    ld b, d
    rrca
    rrca
    rrca
    ld a, b
    jr nc, jr_023_4f67

    ld d, h
    ld b, [hl]
    ld b, l
    rlca
    ld d, h
    add sp, $46
    ld de, $095e
    inc a
    ld d, h
    ld a, [$5145]
    ld de, $5430
    ld l, [hl]
    add hl, bc
    ld a, [$6450]
    ld l, l
    ldh a, [$fa]
    ld l, a
    ld l, [hl]
    inc b
    add hl, bc
    ld e, $04
    ld h, h
    add hl, bc
    ld a, [$0cfa]
    ld e, a
    ld a, [$4efa]
    ld h, h
    inc b
    ld c, h
    ld d, b
    rrca
    rst $38
    ld c, e

jr_023_4f43:
    ld a, [$11fa]
    ld e, a
    jr nc, jr_023_4f43

    ld e, a
    ld d, e
    rst $38
    ld d, d
    ld de, $c60f
    ld b, b
    ld b, e
    ld h, e
    rst $38
    ld h, d
    ret nz

    jr nc, jr_023_4fac

    ld b, [hl]
    or [hl]
    or a
    cp b
    ld l, e
    ret nc

    ld l, e
    jr nc, jr_023_4fc9

    ld d, h
    ld b, [hl]
    xor $07
    db $fd
    ld d, e

jr_023_4f67:
    ld d, h
    ld b, [hl]
    ld l, e
    call z, $fd9c
    ld l, e
    ld l, e
    ld d, e
    ld a, [$fd3f]
    dec b
    ld d, e
    db $fc
    ld b, $fa
    dec b
    ld de, $5304
    ld a, [$1f08]
    jr nz, @+$23

    ld b, c
    inc b
    push hl
    push hl
    ld d, e
    ld a, [$2208]
    inc c
    inc b
    inc hl
    inc h
    push hl
    ld d, e
    ld b, b
    ld b, b
    ld [hl], c
    ld b, b
    ld e, b
    rst $08
    ld d, a
    ld h, e
    rra
    ld l, h
    ld d, h
    ld b, [hl]
    ret nc

    ld l, e
    jr nc, jr_023_4fcf

    add sp, $46
    ldh a, [rSB]
    ld d, h
    ret nc

    ld l, e
    rrca
    rrca
    ld b, [hl]
    ret nc

    ld l, e
    rrca

jr_023_4fac:
    ld de, $0f47
    add c
    nop
    rrca
    ld c, b
    ld d, h
    ld b, [hl]
    ret nc

    ld l, h
    ld de, $5862
    adc $5a
    ld d, h
    ld b, [hl]
    ld e, [hl]
    ld h, h
    jr jr_023_5022

    ld d, h
    ld l, l
    ld de, $4645
    and $48

jr_023_4fc9:
    ld e, [hl]
    ld h, h
    rst $10
    ld l, l
    ld b, l
    cp [hl]

jr_023_4fcf:
    add b
    rlca
    ld d, h
    adc $5a
    ld de, $d74e
    ld h, h
    ld b, l
    ld b, [hl]
    ld de, $5f11
    ld e, a
    ldh a, [rSB]
    rrca
    jr nc, jr_023_5013

    jr nc, jr_023_5037

    ld d, e
    ld e, [hl]
    ld [de], a
    ld [de], a
    ld h, d
    ld b, b
    ld b, d
    rlca
    ld b, b
    rrca
    ld d, e
    ld e, [hl]
    ldh [rNR12], a
    ld b, l
    ld d, h
    ld h, d
    ld b, b
    ld e, b
    adc $5a
    ld e, a
    ld d, h
    db $10
    ld d, h
    ld e, a
    ld b, l
    ld b, l
    add sp, $46
    ld de, $6f6f
    ld d, b
    ld b, l
    ld l, c
    rrca
    jr jr_023_503c

    ld h, h
    rrca
    ld c, b
    ld l, [hl]
    ld a, [c]
    ld e, l
    ld b, l

jr_023_5013:
    ld d, d
    rrca
    rrca
    ld d, e
    ld [de], a
    ld c, l
    ld bc, $0f08
    ld d, b
    ld h, d
    ld e, b
    adc $5a
    ld e, a

jr_023_5022:
    ld c, [hl]
    ld h, h
    ld e, l
    ld de, $5445
    ld d, h
    ld b, [hl]
    ld [bc], a
    inc bc
    ld d, h
    ld b, l
    and c
    ld b, [hl]
    ret nc

    ret nc

    ld b, l
    and c
    ld b, a
    ld l, d
    or c

jr_023_5037:
    ld d, c
    ret z

jr_023_5039:
    ret z

    ret nz

    rrca

jr_023_503c:
    ret z

    ld d, b
    or c
    ld l, c
    ld l, d
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    inc sp
    add h
    ret z

    dec de
    dec de
    ld d, d
    ld d, e
    ld d, d
    ld d, e
    add hl, de
    sbc h
    sbc h
    jr jr_023_505a

    inc b
    ld d, d
    ld d, e
    ld d, e
    ret z

jr_023_505a:
    dec de
    ld d, $16
    dec de
    ret z

    ld d, e
    ld h, d
    ld h, e
    inc de
    sbc h
    nop
    ld [de], a
    ld d, $18
    add hl, de
    sbc h
    inc de
    ld h, d
    ld h, e
    ld d, b
    ld d, c
    jr jr_023_5039

    ret z

    add hl, de
    ld d, b
    ld d, c
    or h
    ldh a, [$b2]
    ld d, d
    and h
    and d
    and d
    and a
    ld h, d
    ld d, d
    and d
    add e
    rlca
    or d
    or a
    ld d, b
    ld d, d
    and l
    and d
    and d
    and d
    or e
    ld d, d
    ret z

    ld a, b
    ldh [$b2], a
    and l
    and e
    and d
    and d
    ld d, d
    ret


    ret z

    ret z

    and h
    ld bc, $b20b
    and d
    ld d, d
    ret


    ret z

    ret z

    and l
    and d
    and d
    ld d, d
    ret


    ret


    ret


    add b
    rst $38
    ld b, b
    ret z

    and l
    or d
    and e
    and d
    and d
    ld h, d
    ldh [rP1], a
    or d
    ld h, e
    and a
    and l
    and e
    and d
    and d
    ld d, e
    ld d, c
    or a
    ld c, $0d
    and l
    and e
    ld b, b
    dec b

Call_023_50c4:
    dec c
    and e
    and d
    or h
    ld d, e
    and d
    and [hl]
    ld c, $0e
    and l
    and d
    ld d, e
    or d
    or d
    inc h
    ld [$a60e], sp
    dec c
    dec de
    dec de
    and l
    ld d, e
    or d
    and d
    or h
    add hl, de
    db $e3
    inc b
    jr jr_023_5123

    ld b, $1b
    ld c, $53
    and d
    or d
    or d
    and [hl]
    inc d
    inc d
    ld d, e
    and e
    or d
    and d
    and e
    ret nz

    ld a, a
    ld b, b
    and [hl]
    jp z, $caca

    jp z, Jump_023_6353

    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    ld a, [$bc0b]
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    cp c

jr_023_5123:
    rrca
    cp b
    rrca
    jr nc, @-$42

    ld c, d
    xor c
    ld c, d
    rra
    jr nz, jr_023_514f

    cp e
    xor c
    ld c, d
    call nz, Call_023_78c0
    ld c, c
    ld c, d
    ld [hl+], a
    inc hl
    inc h
    xor b
    scf
    ld c, d
    push hl
    ld b, a
    ld c, b
    db $e3
    ld bc, $4a68
    call nz, Call_023_6967
    cp c
    cp h
    ld c, d
    xor c
    cp c
    cp h
    add b
    rst $38
    ld c, c

jr_023_514f:
    cp h
    xor c
    ret z

    ret z

    rrca
    cp c
    ld b, a
    dec c
    cp h
    ld c, d
    ld c, d
    rrca
    rrca
    xor c
    scf
    cp h
    ld c, d
    ld c, d
    ld [hl], b
    sbc h
    cp h
    ld [hl], c
    xor c
    ld c, d
    and $00
    ld c, d
    add b
    add c
    xor e
    xor c
    ld h, h
    ld c, c
    ld b, a
    ei
    ld c, c
    ld c, b
    pop hl
    ld l, b
    ld d, a
    ld e, b
    ld e, b
    ld e, c
    inc sp

jr_023_517b:
    ld l, b
    cp h
    ld h, a
    ld l, c
    call nz, $bcf8
    call nz, $a90f
    dec c
    xor c
    xor b
    cp h
    cp h
    ld c, c
    ld c, c
    ld hl, $383c
    cp h
    cp h
    scf
    ld c, c
    ld c, c
    ld [hl], c
    add a
    cp h
    cp c
    rrca
    xor c
    ld c, d
    xor b
    xor c
    scf
    ld a, [hl-]
    inc c
    ret nz

    ld c, c
    add hl, sp
    ld b, a
    ld h, h
    cp h
    cp h
    ld c, d
    ld l, c
    ret nc

    ld h, a
    ld d, a
    ld e, b
    ld e, b
    ret nz

    rlca
    ld l, b
    ld c, c
    ld c, b
    call nz, $0f0f
    ld h, a
    ld l, c
    call nz, $1f0f
    jr nz, jr_023_51d9

    jr nc, jr_023_517b

    ld hl, $ba70
    cp d
    cp c
    ld [hl+], a
    inc hl
    inc h
    add b
    xor c
    cp b
    ret nz

    rst $38
    ld c, c
    cp d
    cp h
    xor d
    xor b
    cp e
    rrca
    rlca
    cp h
    ld c, d
    ld l, b
    cp l
    sub l

jr_023_51d9:
    cp [hl]
    inc e
    ld c, c
    ld l, c
    ld c, d
    ld c, b
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld e, b
    ret z

    ret z

    rrca
    ld c, d
    ld e, c
    ret nz

    ld l, b
    add b
    add c
    ld [hl], b
    ld [hl], c
    ret z

    ld c, d
    ld c, h
    ret z

    ld l, b
    ld l, c
    add b
    add c
    ld c, d
    or $c8
    ld [hl], c
    rrca
    ld [hl], b
    rrca
    ret z

    ld c, d
    add c
    ret z

    ret z

    push af
    rrca
    ret z

    ld c, d
    rra
    rrca
    ld c, d
    ld c, c
    ld c, c
    ld a, a
    ld c, c
    ld c, b
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38

Call_023_524d:
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    ld a, $f8
    ld d, h
    ld b, l
    ld d, d
    rrca
    rrca
    rrca
    ld d, b
    ld c, [hl]
    inc bc
    rrca
    ld d, d
    rst $30
    ld e, l
    ld de, $ce59
    ld d, a
    ld b, b
    ld e, a
    ld de, $3e07
    ld de, $450f
    ld d, h
    ld d, h
    ld d, h
    ld l, a
    ld d, b
    ld d, h
    db $10
    adc b
    rrca
    ld d, h
    ld d, h
    rst $30
    ld e, l
    ld de, $1111
    ld e, [hl]
    sub e
    ld e, l
    ld b, b
    ld b, b
    ld b, d
    dec d
    jr nz, jr_023_52b0

    rrca
    ld e, a
    ld l, a
    ld d, h
    ld d, h
    ld h, d
    ld b, b
    ld b, b
    ld b, d
    rrca
    ld e, [hl]
    ld h, h
    jr jr_023_5310

Jump_023_52ad:
    ld d, h
    rrca

Call_023_52af:
    rrca

jr_023_52b0:
    ld d, e
    ld b, [hl]
    cp $45
    rrca
    rrca
    ld d, e
    ld d, c
    inc c
    ret nz

    ld d, h
    db $fd
    ld d, b
    ld b, b
    ld b, b
    ld h, e
    ld a, [c]
    inc b
    add hl, bc
    db $fd

Call_023_52c4:
    db $fd
    ld [$0418], sp
    db $10
    inc b
    ld b, [hl]
    ld c, [hl]
    add hl, bc
    db $fd
    db $fd
    ld [$5418], sp
    ld d, h
    ld d, c
    ld e, [hl]
    add hl, bc
    dec l
    dec l
    inc d
    jr nz, @+$11

    ld [$111a], sp
    ld e, [hl]
    inc b
    add hl, bc
    ld l, $2e
    ld [$6f04], sp
    ld de, $0c11
    ldh a, [$fd]
    ld c, [hl]
    add hl, bc
    ld a, [bc]
    dec bc
    ld h, h
    ld e, l
    ld de, $5e11
    add hl, bc
    rst $38
    ld d, h
    dec c
    ld d, h
    ld b, [hl]
    ld l, c
    rrca
    rrca
    ld l, d
    rlca
    ld d, h
    ld d, c
    ld bc, $620e

Call_023_5304:
    ld e, b
    jr nc, jr_023_530b

    adc $5a
    ld c, $19

jr_023_530b:
    ld c, $01
    ld b, $54

Jump_023_530f:
    ld d, b

jr_023_5310:
    ld d, c
    dec c
    ld bc, $0417
    inc bc
    dec de
    add hl, de
    sub d
    inc b
    sub d
    jr @+$03

    ldh [rNR14], a
    ld c, $43
    inc b
    inc b
    ld a, [de]
    ldh a, [$0b]
    dec de
    ld c, $01
    ld d, e
    inc bc
    dec bc
    ld e, $18
    dec c
    ld d, e
    db $fd
    db $fd
    rrca
    db $fd
    ld [$0118], sp
    ld d, e
    ld e, $54
    ld d, b
    ld d, c
    ld de, $036f
    ld de, $1f64
    jr nz, jr_023_5365

    inc b
    ld e, l
    ld [de], a
    inc b
    ld e, [hl]
    ld l, l
    ld de, $2322
    inc h
    ret nc

    inc b
    ld c, l
    ld de, $4e11
    ld l, l
    inc a
    ld de, $5f4d
    ld c, [hl]
    inc b
    rst $38
    ld b, b
    inc bc
    ld b, b
    ld b, [hl]
    cp e
    cp l
    ld b, l
    ld d, h
    ld d, h

jr_023_5365:
    rrca
    ld d, h
    ld b, [hl]
    rst $38
    rst $38
    ld l, e
    jr nc, @+$56

    cp e
    cp h
    cp l
    ld b, l
    ld b, [hl]
    rst $38
    dec e
    rst $38
    ld l, e
    ld b, l
    ld d, h
    ld d, h
    ld hl, $6e11
    ld h, h
    ld l, l
    ld l, a
    ld d, b
    ld d, h
    jr nc, @+$66

    ld d, h
    ld c, b
    ld e, [hl]
    inc b
    sub d
    ld l, l
    rlca
    ld l, a
    ld d, e
    ld l, [hl]
    inc b
    sub d
    sub d
    ld c, b
    inc b

jr_023_5392:
    ld h, h
    ld h, h
    sub d
    sub d
    ld d, e
    ld c, l
    ld e, h
    inc b
    ld e, a
    ld c, [hl]
    ld h, h
    ld d, e
    inc bc
    ld b, b
    ld b, d
    ld de, $4e5f
    inc b
    sub d
    ldh [rNR11], a
    sub d
    ld d, e
    ld d, h
    ld d, h
    ld d, d
    jr nc, jr_023_5403

    ld c, [hl]
    sub d
    sub d
    ld d, e
    ld h, d
    ld b, b
    rra
    ld b, b
    ld h, e
    ld d, h
    ld d, h
    ld a, [hl]
    ld d, h
    ld b, l
    ld b, [hl]
    inc b
    ld b, b
    jr jr_023_5432

    ld [hl], c
    dec de

Call_023_53c4:
    ret z

    ret z

    dec de
    add hl, de
    ld [hl], b
    ld [hl], c
    add b

Jump_023_53cb:
    add c
    inc de
    sbc h
    add hl, de
    ld b, b
    dec bc
    ret z

    sbc h
    inc de
    add b
    add c
    ld [hl], c
    dec d
    inc d
    inc d
    rla
    ld [hl], b
    add c
    jr jr_023_53df

jr_023_53df:
    or h
    ret z

    add hl, de
    sbc h
    jr jr_023_53fe

    sbc h
    jr @+$1b

    add b

jr_023_53e9:
    ld [hl], c
    jr jr_023_5400

    inc d
    sub c
    nop
    add hl, de
    ld [hl], b
    add c
    ld a, [de]
    sbc h
    jr jr_023_5392

    jr jr_023_5414

    add b
    ld [hl], b
    ld [hl], c
    ld a, [de]
    ld d, $03

jr_023_53fe:
    inc c
    ret z

jr_023_5400:
    ld d, $1c
    ld [hl], b

jr_023_5403:
    ld [hl], c
    ld [hl], d
    add d
    ld [hl], c
    jr @+$1b

    ld [hl], b
    ld [hl], d
    add d
    cp $bb
    ld d, h
    ld b, l
    ld d, b

Jump_023_5411:
    ld [c], a
    rrca
    nop

jr_023_5414:
    ld d, h
    ld [hl], c
    inc b
    jr jr_023_5432

    inc b
    ld a, [de]
    dec de
    ret z

    ret z

    ret z

    add c
    dec d
    jp $c81c


    rla
    inc b
    inc b
    ld a, [de]
    ld [hl], c
    jr jr_023_5442

    inc b
    inc b
    ldh a, [rP1]
    ret z

    ld a, [de]
    cp c

jr_023_5432:
    add c
    ld a, [de]
    ld d, $17
    inc b
    and e
    ld [hl], b
    ld [hl], c
    ld a, [de]
    ld bc, $7c0f
    ret z

    ld d, $a3
    ld [hl], d

jr_023_5442:
    add c
    inc b
    jr jr_023_53e9

    rst $38
    db $fd
    ld d, h
    ld b, [hl]
    rlca
    nop
    ld d, h
    ld d, c
    ret z

    add hl, de
    rst $10
    inc b

Call_023_5452:
    inc b
    rra
    jr nz, jr_023_5477

    cp c
    cp e
    ret z

    add hl, de
    ld b, $e0
    inc b
    rst $10
    ld [hl+], a
    inc hl
    inc h
    and e
    and h
    cp d
    cp d
    cp e
    ld d, $17
    ld h, b
    ldh [$c8], a
    and e
    and h
    and l
    or d
    or h
    ld d, $16
    ld d, $a3
    and h
    and h
    adc a

jr_023_5477:
    ccf
    ret z

    and e
    and h
    and h
    and e
    and h
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    cp $03
    ld l, b
    ld h, a
    sbc h
    rrca
    sbc h
    rrca
    ld [hl], b
    ld [hl], c
    ldh a, [$90]
    rrca
    ld [hl], b
    ld [hl], c
    rst $30
    rst $30
    add b
    add c
    add b
    add c
    inc b
    inc b
    push bc
    dec bc
    rrca
    inc b
    di
    di
    di
    inc b
    inc b
    di
    di
    di
    add hl, sp
    add b
    inc b
    rrca
    rrca
    rrca
    sbc h
    sbc h
    di
    rst $30
    rst $30
    ld [hl], c
    sbc h
    rrca
    ld b, $16
    rrca
    inc b
    sbc h
    ld [hl], b
    ld [hl], c
    add c
    ld [hl], b
    ld [hl], c
    inc b
    ld [hl], b
    ld [hl], d
    add c
    call z, Call_023_684a
    ld l, b
    cp h
    cp h
    inc bc
    ld l, b
    rst $30
    rst $30
    ld b, a
    ld c, b
    cp h
    cp h
    nop
    ld b, a
    ld c, b
    xor c
    ld [hl], b
    rrca
    cp b
    ld h, a
    ld l, c
    add e
    cp h
    ld h, a
    ld l, c
    ld a, [c]
    add b
    rrca
    ld e, [hl]
    cp h
    cp c
    xor c
    rrca
    ld [hl], b
    cp h
    inc b
    rrca
    rrca
    cp c
    cp d
    ld [de], a
    xor d
    cp d
    rst $30
    rst $30
    cp b
    xor c
    cp e
    add hl, bc
    rrca
    xor e
    inc b
    ld [hl], b
    ld [hl], c
    push hl
    push hl
    inc c
    call nz, $e5e5
    rrca
    inc b
    add b
    add c
    cp $40
    ld b, e
    ccf
    nop
    ld l, b
    and [hl]
    and a
    ld d, h
    ld d, h
    ld [hl], c
    ld h, h
    ld h, h
    rrca
    rrca
    inc b
    ld c, l
    ld c, d
    rrca
    inc b
    add c
    ld h, h
    ld [hl], b
    ld [hl], c
    inc b
    inc b
    inc b
    inc b
    ld a, b
    cp a
    inc b
    di
    add b
    add c
    rrca
    rrca
    ld [hl], a
    and e
    inc b
    rrca
    di
    rrca
    ld h, h
    rrca
    rrca
    ret nz

    rst $38
    ld b, b
    rrca
    inc b
    inc b
    rrca
    ld h, h
    ld h, h
    rst $38
    ld bc, $5154
    rrca
    inc b
    rrca
    di
    ld h, h
    ld h, h
    ld [de], a
    or b
    inc b
    rrca
    rst $30
    rst $30
    rrca
    di
    ld h, h
    ld h, h
    ld h, h
    rrca
    rrca
    rrca
    sub l
    cp a
    inc b
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, [c]
    add c
    inc b
    rrca
    ld h, h
    rrca
    rrca
    rrca
    rrca
    ld h, h
    rrca
    rrca
    ret nz

    rst $38
    ld b, b
    rrca
    inc b
    rrca
    inc b
    rst $30
    rst $30
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    dec de
    ld h, b
    ld d, h
    ld b, l
    ld d, d
    rrca
    rrca
    ld l, [hl]
    ld h, h
    ld [hl], b
    ld [hl], c
    ld d, b
    ld d, d
    ld c, b
    add b
    ld h, h
    rrca
    ld l, [hl]
    inc b
    ld [hl], d
    add c
    ld [hl], b
    ld [hl], c
    ld h, d
    ld b, d
    sub d
    sub d
    inc b
    add c
    ld bc, $1216
    add b
    add c
    ld b, l
    ld d, d
    sub d
    sub d
    ld c, l
    rst $30
    ret nz

    ld b, l
    ld d, d
    sub d
    inc c
    ld h, b
    ld [de], a
    sub d
    ld e, l
    ret nz

    jp nz, Jump_023_48c0

    ld d, d
    sub d
    sub d
    ld l, l
    rst $30
    ret nz

    ld hl, sp+$07
    ld b, b
    ld [de], a
    ld d, e
    ld h, d
    ld h, e
    ld b, l
    ld d, h
    ld d, h
    ld d, h
    inc c
    jr nc, jr_023_5640

    ld h, h
    ld e, l
    ld e, [hl]
    add hl, bc
    db $fd
    db $fd
    db $fd
    db $fd
    ld h, h
    ld e, l
    ld e, [hl]
    add hl, bc
    ret nz

    add c
    ld de, $fdfd

jr_023_5640:
    dec b
    ld b, $04
    ld e, l
    ld b, e
    ld [hl], $ff
    dec [hl]
    ld b, b
    ld e, a
    ld bc, $1103
    ld l, a
    ld l, a
    ld d, e
    ld b, [hl]
    rst $38
    ld b, l
    ld d, h
    ld e, [hl]
    sub d
    sub d
    ld d, e
    ld b, [hl]
    rst $38
    nop
    ldh a, [rLCDC]
    ld b, l
    ld d, h
    ld de, $5e11
    sub d
    sub d
    ld d, e
    ld d, c
    cp $50
    ld d, h
    ret nz

    rlca
    ld d, h
    ld b, b
    ld h, e
    ld c, a
    db $fd
    db $fd
    db $fd
    ld b, [hl]
    ld c, a
    ld c, a
    ld c, a
    ld sp, $fd3f
    ld [$3c18], sp
    ld b, $01
    ld d, e
    rlca
    db $fd
    nop
    ld [$0e18], sp
    ld d, e
    ld e, b
    call Call_023_4057
    nop
    ld [hl], $ff
    dec [hl]
    ld b, d
    ld bc, $5453
    sub h
    inc bc
    ld d, h
    ld b, [hl]
    rst $38
    ld b, l
    ld d, d
    ld c, $53
    dec c
    ld d, h
    sub h
    ld b, [hl]
    rst $38
    ld b, l
    ld h, d
    inc [hl]
    ld d, h
    ld b, b
    ld h, e
    sub h
    ld d, c
    cp $f0
    db $fd
    ld d, b
    ld b, l
    ld d, h
    ld b, [hl]
    rlca
    db $fd
    ld b, l
    ld d, h
    ld b, [hl]
    jr nc, jr_023_56e6

    inc e
    ld c, a
    jr nc, jr_023_56ee

    ld d, b
    ld d, h
    ld d, c
    db $76

jr_023_56be:
    cp $47
    ld l, h
    ld d, b
    ld hl, sp-$03
    ld d, h
    ld d, h
    ld d, d
    db $e3
    db $fd
    ld a, [$52fa]
    adc a
    db $fd
    ld a, [$52fa]
    ccf
    db $fd
    ld a, [$1efa]
    db $fd
    ld d, d
    ld a, [$fafa]
    ld a, b
    db $fd
    ld a, [$52fa]
    ld a, [$fa0f]
    ld d, d
    db $fd
    db $fd

jr_023_56e6:
    db $fd
    jr nc, jr_023_56ef

    db $fd
    ld a, [$05fa]
    ld d, d

jr_023_56ee:
    db $fd

jr_023_56ef:
    rlca

jr_023_56f0:
    db $fd
    ld a, [$08fa]
    ld b, e
    ld b, b
    ei
    pop hl
    ld d, h
    ld b, l
    ld b, [hl]
    ld a, [$45fa]
    add a
    rra
    ld d, h
    ld b, [hl]
    ld a, [$50fa]
    ld c, b
    ld a, [$01fa]
    rlca
    ld a, [$0408]
    inc b
    xor b
    db $eb
    xor d
    ld d, e
    ld [$04c6], sp
    cp b
    cp c
    inc e
    ret nz

    ld a, [$53ba]
    ld a, [bc]
    dec bc
    dec bc
    xor c
    xor $a9
    ld d, e
    ld b, $07
    rra
    ld a, h
    db $fd
    ld d, e
    ld b, b
    ld b, d
    ld c, a
    ld c, a
    ld d, e
    jr nc, jr_023_56f0

    ret z

    add d
    ld [hl], d
    add c
    jr jr_023_574f

    add b
    add d
    ld [hl], d
    ld [hl], d
    add c
    rst $10
    jr jr_023_56be

    inc bc

jr_023_573f:
    dec de
    add hl, de
    rst $10
    add b
    add d
    add c
    rst $10
    dec d
    ret z

    rla
    rst $10
    add b
    ld d, $16
    jr nz, @-$7e

jr_023_574f:
    dec c
    add hl, de
    rra
    jr nz, jr_023_5775

    jr jr_023_576c

    ld d, $1b
    dec de
    add hl, de
    ld [hl+], a
    inc hl
    inc h
    jr jr_023_573f

    nop
    ld d, $1b
    dec de
    ld [hl], c
    rst $10
    ld a, [de]
    ret z

    inc e
    rst $10
    ld [hl], b
    add d
    ld [hl], c

jr_023_576c:
    rst $10
    jr jr_023_5772

    inc c
    ret z

    add hl, de

jr_023_5772:
    rst $10
    ld [hl], b
    ld [hl], d

jr_023_5775:
    ld [hl], d
    add d
    ld [hl], c
    jr jr_023_5793

    ld [hl], b
    ld [hl], d
    add d
    ld b, b
    ld h, c
    ret z

    add d
    ld [hl], c
    inc b
    jr jr_023_5786

    dec c

jr_023_5786:
    ld c, $a3
    ld [hl], d
    add c
    dec d
    ld bc, $8f46
    ret z

    ld bc, $81a3
    dec d

jr_023_5793:
    ret


    ret


    and e
    ld d, $76
    rst $20
    ret z

    ld bc, $a3c9
    ld bc, $a101
    add d
    ret z

    and e
    ld [hl], c
    ld a, [de]
    ret


    ret


    ret


    ld bc, $82a3
    ld [hl], c
    ld a, [de]
    rla
    ld [$0ec8], sp
    and e
    ld [hl], d
    add d
    ld [hl], c
    ld a, [de]
    dec de
    ld bc, $0e0d
    and e
    cp $c8
    and h
    ld a, b
    ret z

    and e
    or l
    and h
    ld bc, $bae0
    dec de
    dec de
    and e
    and d
    or l
    inc c
    dec bc
    cp d
    cp e
    and e
    and d
    and l
    or d
    add a
    or d
    or h
    db $fd
    db $fd
    or e
    ld h, b
    db $fd
    and h
    rra
    jr nz, jr_023_5800

    add hl, bc
    ld c, a
    nop
    ld [$a41a], sp
    ld [hl+], a
    inc hl
    inc h
    add hl, bc
    ld c, a
    add sp, $04
    ld c, a
    db $fd
    ld [$0ca4], sp
    db $fd
    add hl, bc
    ld c, a
    ld [$a404], sp
    xor [hl]
    inc e
    ld b, b
    ret nc

    dec [hl]
    ld e, b
    call $f057

jr_023_5800:
    and a
    cp d
    cp d
    cp d
    xor b
    jr @-$4c

    and a
    cp b
    and l
    or h
    ret z

    add hl, de
    ldh [$c8], a
    rst $10
    inc b
    rst $20
    or a
    and h
    add e
    ret z

    rla
    rst $10
    rst $10
    or a
    or h
    rrca
    ret z

    add hl, de
    inc b
    cp c
    cp l
    scf
    ret z

    ld bc, $041c
    ld a, b
    dec de
    and e
    and h
    ld a, [de]
    inc e
    di
    inc b
    or e
    or h
    rrca
    inc b
    ld b, e
    ld [hl], $40
    ld e, b
    ld [hl+], a
    ld d, a
    rst $08
    ld b, b
    ld e, b
    call $4663
    ld e, b
    ld b, b
    rrca
    ld [hl], b
    ld [hl], d
    add c
    inc b
    add b
    add d
    ld [hl], c
    add b
    add d
    ld [hl], c
    inc b
    inc b
    add c
    ld a, [bc]
    rrca
    sbc h
    add b
    add c
    ld [hl], b
    ld [hl], d
    add c
    inc b
    inc b
    ld [hl], b
    ld [hl], c
    add b
    add c
    ld e, $a8
    inc b
    rrca
    sbc h
    add b
    add c
    ld [hl], b
    ld [hl], c
    sbc h
    db $e3
    rrca
    pop bc
    rlca
    inc b
    sbc h
    add b
    add c
    rrca
    rrca
    rst $30
    ld [hl], b
    ld [hl], c
    sbc h
    rrca
    ld a, [hl-]
    nop
    inc b
    rrca
    rrca
    add b
    add d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    rst $30
    ld hl, sp+$0b
    ld d, h
    ld b, e
    ld b, b
    ld h, e
    ld d, e
    ld d, c
    db $fd
    db $fd
    db $fd
    rst $28
    cp a
    db $fd
    ld d, e
    ld d, e
    rst $38
    ldh [$fd], a
    inc sp
    jr nc, @+$32

    jr nc, @+$36

    inc bc
    ld c, $fd
    rst $30
    rst $30
    jp z, $33ca

    jr nc, jr_023_58da

    ld de, $5f11
    ld e, a
    nop
    ldh [$30], a
    ld e, a
    ld c, [hl]
    ld d, e
    db $fd
    db $fd
    db $fd
    rst $30
    rst $30
    ld e, l
    ld de, $5e0f
    inc sp
    rst $38
    inc bc
    ld d, h
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    rrca
    rra
    db $fd
    ld sp, $3030
    jr nc, @+$33

    ld [hl-], a
    ld de, $f07c
    db $fd
    ld de, $526f
    ld de, $5e11
    sub b

jr_023_58da:
    inc c
    ld [hl], b
    ld de, $52fd
    ld e, [hl]
    sub d
    jr nc, @+$32

    inc [hl]
    db $fd
    db $fd
    ld d, d
    ld sp, $54ff
    db $fc
    db $fd
    ld d, h
    ld d, h
    rst $38
    db $fd
    ccf
    db $fd
    jr nc, jr_023_5924

    rst $38
    jr nc, jr_023_5957

    call nz, $116f
    ld e, [hl]
    sub b
    sub c
    ld e, l
    ld de, $905e
    sub c
    ld l, l
    sub d
    sub e
    call nz, Call_023_4d00
    ld de, $925e
    sub e
    ld h, h
    ld l, l
    ld c, [hl]
    jr jr_023_5922

    call nz, Call_023_6dc4
    ld e, a
    jr nc, jr_023_5947

    ret nz

    ld de, $3030
    inc [hl]
    sub b
    sub c
    ld e, l
    rra
    ld d, h
    ld d, c

jr_023_5922:
    ret nc

    ret nc

jr_023_5924:
    db $fc
    db $fd
    ld d, b
    ld d, h
    rst $38
    db $fd
    ccf
    db $fd
    jr nc, jr_023_595e

    rst $38
    jr nc, @+$07

    sub c
    sub b
    di
    di
    call nz, Call_023_5dc4
    inc bc
    ld de, $9293
    sub e
    di
    di
    ld h, h
    ld c, $11
    ld c, l
    ld e, a
    ld e, a
    ld e, a
    ld c, [hl]

jr_023_5947:
    call c, $3111
    inc [hl]
    ld sp, $1170
    ld sp, $3230
    ld d, e
    ld d, d
    cp a
    ld d, h
    ld l, c
    db $fc

jr_023_5957:
    db $fd
    ld d, h
    ld d, h
    ldh a, [$fd]
    ld d, d
    rst $20

jr_023_595e:
    ld de, $3811
    ld b, b
    db $fd
    db $fd
    ld b, c
    jr nc, @+$32

    ld hl, sp-$03
    jr nc, jr_023_599b

    inc [hl]
    ldh [$30], a
    ld de, $5e11
    call nz, $e033
    call nz, $3030
    ld de, $6e11
    jp $12c4


    sub b
    inc [hl]
    ld e, [hl]
    inc c
    ld e, a
    call nz, Call_023_4e4d
    sub d
    inc sp
    jr nc, jr_023_59c1

    ld de, $3030
    inc [hl]
    ld e, [hl]
    sub b
    rst $38
    ld d, h
    db $fc
    ld de, $5454
    rrca
    ld de, $4040
    ld b, b
    ld b, b

jr_023_599b:
    ccf
    ld b, b
    db $fd
    db $fd
    rst $38
    db $fd
    jp Jump_023_6630


    ret nc

    ret nc

    ld h, l
    ldh a, [rNR11]
    jr nc, @+$32

    sub c
    ld e, l
    jp Jump_023_5e11


    ld [de], a
    sub e
    ld e, l
    rlca
    ld de, $6e6f
    ld [de], a
    sub c
    ld e, l
    rrca
    ld de, $905e
    sub c
    dec [hl]
    sbc a

jr_023_59c1:
    ld d, h
    ld c, b
    ld b, l
    ld a, h
    ld de, $5454
    ld d, e
    ld c, $54
    ld d, b
    ld b, b
    ld d, [hl]
    ret nc

    ret nc

    db $fc
    db $fd
    ld d, l
    ld b, h
    rst $38
    db $fd
    rst $38
    jr nc, jr_023_59f5

    ld [de], a
    jr nc, @+$32

    ld l, l
    ld de, $c811
    ld [de], a
    ld de, $6e11
    ld c, l
    ld c, [hl]
    ld b, $11
    ld e, l
    ld e, [hl]
    ld [de], a
    ld c, l
    ld b, b
    ld b, b
    pop af
    ld b, b
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rra
    ld d, h

jr_023_59f5:
    ld b, [hl]
    ld c, a
    db $fd
    ld a, h
    ld d, h
    ld c, a
    ld d, d
    ld d, c
    push af
    db $fd
    ld c, a
    ld d, d
    rst JumpTable
    db $fd
    ld d, d
    ld a, a
    db $fd
    ld d, d
    rst $38
    jr nc, jr_023_5a16

    ld [de], a
    jr nc, @+$54

    ld h, h
    di
    di
    ld de, $1222
    ld l, [hl]
    ld e, l
    ld d, d

jr_023_5a16:
    ld c, [hl]
    di
    di
    ret nz

    ld b, b
    ld h, h
    ld l, [hl]
    ld [de], a
    ld c, l
    ld de, $6052
    ld de, $4040
    ld [hl], $12
    ld c, l
    ld d, d
    rlca
    xor [hl]
    ld d, e
    db $fd
    ld c, a
    db $fd
    ld c, a
    inc d
    or $a6
    and a
    ld [$4f53], a
    db $fd
    ld d, b
    rst $30
    and [hl]
    and a
    or [hl]
    or a
    dec hl
    ld d, e
    ld de, $fd4f
    or [hl]
    or a
    db $fd
    cp e
    ret nc

    sub h
    ld c, a
    dec [hl]
    ld h, e
    db $fd
    db $fd
    db $fd
    ldh a, [$fd]
    ld d, e
    ret nc

    ld d, b
    ld d, c
    jp nz, $fafd

    ld d, e
    inc b
    ld a, [c]
    add hl, bc
    rlca
    ld a, [$53fd]
    dec bc
    dec bc
    inc c
    rra
    ld a, [$53fd]
    db $fd
    ld a, b
    ld a, [$fdfd]
    db $fd
    db $fd
    ld e, $fd
    ld d, d
    ld a, [$08fa]
    jr c, @+$01

    ld d, e
    ld d, h
    ld e, e
    dec [hl]
    ld b, b
    ldh [rIE], a
    ld e, b
    rst $08
    ld e, d
    ld d, h
    ld l, e
    ld c, $54
    ld b, l
    ld b, [hl]
    ld c, a
    ld l, h
    cp $38
    ld d, h
    cp $fe
    ld d, b
    ld d, c
    db $fd
    rrca
    db $fd
    ld [$201f], sp
    ld hl, $fd3e
    add hl, bc
    ld a, [bc]
    ld [hl+], a
    ld hl, sp-$03
    inc hl
    inc h
    inc c
    pop af
    db $fd
    ld a, [bc]
    dec bc
    inc c
    ld a, a
    db $fd
    ld c, a
    ldh a, [$c1]
    db $fd

jr_023_5aab:
    ld d, h
    ld h, d
    ld b, b
    ld b, d
    ld d, e
    ld d, h
    ld l, e
    db $ed
    ld d, d
    ld bc, $fdc0
    dec b
    ld b, $53
    ld c, a
    ld l, h
    call z, $ff5b
    rst $38
    rst $38
    cp h
    call $015a
    rlca
    db $fd
    ld l, e
    rst $38
    rst $38
    rst $38
    ld b, l
    sub h
    ld b, [hl]
    ld l, h
    cp $fe

jr_023_5ad1:
    cp $50
    db $fc
    pop af
    db $fd
    sub h
    ld l, c
    ld [$5204], sp
    rlca
    ld h, b
    db $fd
    ld a, [bc]
    dec bc
    ld d, d
    and [hl]
    and a
    and [hl]
    and a
    and [hl]
    and a
    ld c, a
    ld d, d
    jr nc, jr_023_5aab

    ret z

    add c
    add b
    add c
    jr jr_023_5b0a

    add b
    add c
    add b
    cp d
    cp d
    cp e
    ld c, $80
    add l
    ret z

    ld c, $b9
    cp d
    cp d
    and l
    or d
    or h
    ld hl, sp-$4d
    or d
    or d
    and h
    rst $30
    and [hl]
    ret z

jr_023_5b0a:
    ld hl, sp-$5c
    ld hl, sp-$08
    ld hl, sp-$45
    rst $00
    ret z

    and h
    ld hl, sp-$47
    or l
    cp e
    nop
    ccf
    cp d
    ret z

    ret z

    ret z

    ret z

    cp c
    or [hl]
    and d
    or l
    or [hl]
    and d
    ret nz

    add c
    ret z

    add c
    add b
    add c
    inc b
    inc b
    jr jr_023_5ad1

    cp d
    cp d
    cp e
    inc b
    dec d
    ld b, $ce
    ret z

    ld bc, $b2a3
    or d
    or h
    ld d, $0e
    ld c, $a3
    ld b, a
    rrca
    ret z

    dec de
    dec de
    dec de
    and e
    inc e
    inc b
    inc b
    inc b
    ret nz

    ld b, $04
    ld a, [de]
    and e
    cp d
    cp e
    ret z

    add hl, de
    res 4, e
    and d
    and h
    ret z

    ret z

    nop
    ld a, a
    cp d
    rla
    inc b
    inc b
    inc b
    dec d
    and e
    and d
    or l
    or [hl]
    db $fc
    ld [hl], d
    ld d, h
    and h
    ld b, l
    sub h
    and h
    ld d, b
    cp [hl]
    ldh [$81], a
    ret z

    inc b
    ld l, d
    sub l
    ld d, h
    and h
    daa
    inc b
    ld d, e
    ld bc, $a41c
    rlca
    ld d, $c8
    ld b, a
    inc b
    ld d, e
    add hl, de
    inc b
    and h
    dec de
    ld e, e
    ret nc

    ld e, h
    ld [$c860], sp
    inc e
    ld [hl], b
    and h
    add hl, de
    sub $18
    ld l, h
    ret nc

    ld l, h
    inc b
    add b
    and h
    ld d, $80
    ccf
    cp d
    ret z

    ret z

    ret z

    add hl, de
    inc b
    ld [hl], b
    or l
    cp e
    add b
    cp a
    db $fc
    ld d, h
    sub h
    ld b, [hl]
    ld d, c
    or b
    call c, $9504
    ld d, h
    ld d, c
    ld [hl], b
    sub e
    ld [hl], b
    ld [hl], c
    add b
    ld [hl], e
    ld [bc], a
    inc b
    add b
    add c
    ld [hl], b
    ld [hl], c
    sub b
    sub c
    ld [hl], b
    ld [hl], c
    rra
    jr nz, @+$44

    nop
    add b
    ld hl, $d781
    dec a
    ld a, $81
    ld [hl+], a
    inc hl
    inc h
    ld [hl], b
    ld [hl], c
    di
    inc b
    xor c
    sub b
    jr nz, jr_023_5c47

    xor d
    inc b
    xor c
    xor e
    ld [hl], d
    add c
    ld [hl], c
    xor l
    xor d
    xor e
    xor d
    ld [hl], d
    add c
    xor d
    ld [hl], d
    ld [hl], b
    add d
    add d
    add d
    xor b
    add c
    add d
    ld [hl], c
    ld [hl], d
    add b
    add b
    dec b
    add b
    add c
    add d
    add d
    ld [hl], c
    cp c
    dec d
    ld h, b
    ld [hl], d
    inc d
    ld d, $17
    cp c
    ld [hl], b
    add c
    ld hl, $13b9
    inc b
    jr jr_023_5c20

    add b
    add d
    add h
    cp c
    add d
    ld [hl], c
    ld a, [de]
    ld d, $01
    inc e
    ld b, $72
    ld [hl], b
    add c
    cp d
    cp e
    jr jr_023_5c32

    and b
    ld [hl], c
    cp d
    cp e
    add b
    add d
    add d

jr_023_5c20:
    ld [hl], b
    inc d
    ld [hl], b
    jr jr_023_5c3e

    ld [hl], c
    ld [hl], d
    add b
    add c
    ld de, $8180
    jr jr_023_5c47

    add d
    ld [hl], d
    add d
    add c

jr_023_5c32:
    ld [bc], a
    ld [hl], b
    ld [hl], c
    ld e, l
    rrca
    ld de, $645e
    ld [hl], c
    ld [hl], d
    add c
    ld l, l

jr_023_5c3e:
    ld de, $5e0f
    ld hl, $6480
    add b
    add d
    ld [hl], d

jr_023_5c47:
    add c
    ld [de], a
    ld l, l
    ld de, $125e
    ld a, [c]
    add b
    add c
    ld [hl], c
    inc bc
    ld c, $12
    ld e, l
    ld de, $4e5f
    rst $30
    rst $30
    add c
    ld e, l
    rrca
    ld de, $0011
    adc a
    ld l, a
    ld e, a
    ld e, a
    ld [hl], c
    ld [de], a
    ld c, l
    ld e, a
    ld de, $8111
    ld c, l
    ld de, $e000
    ld b, b
    ld l, a
    ld l, [hl]
    ld [de], a
    ld [de], a
    rst $30
    rst $30
    ld [hl], c
    ld e, l
    ld e, [hl]
    ld b, e
    ld [hl], $d0
    dec [hl]
    jr jr_023_5cdf

    db $fd
    ld [hl], c
    ld h, h
    ld d, e
    ld d, d
    ld de, $1111
    ld h, d
    add d
    ld [hl], c
    ld d, e
    ld d, d
    rlca
    inc a
    ld de, $8050
    add c
    ld d, e
    db $fd
    db $fd
    ld d, d
    rst $30
    rst $30
    ldh a, [$c0]
    ld de, $fd3c
    db $fd
    dec sp
    ld e, a
    ld e, a
    dec l
    dec l
    dec l
    dec l
    inc bc
    ld c, $11
    ld l, a
    ld l, a
    ld l, $2e
    ld l, $2e
    ld l, a
    rst $30
    rst $30
    ld c, h
    db $fd
    ld bc, $fd06
    ld c, e
    or c
    ld l, l
    ld l, a
    ld l, a
    ld b, b
    ld b, b
    ld h, e
    ld d, d
    ld [hl], b
    ld [hl], c
    inc b
    ld [hl], b
    rlca
    ld b, b
    ld b, d
    ld d, e
    sub d
    sub e
    ld e, l
    inc e
    ld d, h
    ld de, $5211
    ld d, e
    rst $20
    ld a, [hl]
    ld de, $524d
    ld a, $30
    inc sp
    ld de, $fc11
    ld b, b
    ld de, $f062

jr_023_5cdf:
    ld d, h
    ld de, $1111
    ld d, b
    inc c
    ld de, $5454
    ld e, [hl]
    ld h, h
    di
    di
    inc c
    ld de, $5df3
    ld l, a
    ld l, a
    ld l, [hl]
    di
    jr nc, @+$71

    di
    di
    ld h, h
    ld l, l
    ld [hl], c
    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    jp $110d


    ld d, d
    ld b, e
    ld b, b
    ld h, e
    ld h, d
    ld d, d
    ld d, e
    ld d, h
    ld d, c
    inc bc
    jr nz, jr_023_5d80

    ld de, $3050
    jr nc, @+$34

    ld d, e
    ld h, h
    di
    di
    ld h, h
    ld l, l
    ld b, b
    ld b, b
    inc a
    ret nc

    di
    ld b, b
    ld h, e
    ld h, h
    ld sp, $5454
    ld d, h
    ld d, c
    ld h, h
    add c
    inc b
    ld h, h
    ld d, d
    ld de, $5e11
    di
    di
    inc b
    inc b
    ld h, d
    ld l, a
    ld l, a
    ld l, [hl]
    di
    add b
    add d
    ld [hl], b
    di
    inc b
    dec d
    rla
    inc b
    ld d, b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    rst $30
    jr jr_023_5d62

    rst $30
    ldh [rNR11], a
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    ld d, e
    inc e
    ld d, h
    ld e, [hl]
    sub d
    ld d, d
    ld d, e
    ld l, a
    inc de
    ld l, a
    ld l, [hl]
    ld [de], a
    ld l, [hl]
    di
    ld d, d
    sbc b
    ld h, h
    ld d, e

jr_023_5d62:
    di
    di
    ld sp, $7134
    di
    ld d, d
    ld d, e
    ld h, h
    ld d, d
    ld de, $f353
    di
    ld d, d
    ld h, h
    sub b
    sub c
    ld [hl+], a
    ld d, d
    call nz, $f363
    ld h, h
    ld d, e
    rst $20
    inc h
    ld c, l
    sub d
    sub e

jr_023_5d80:
    ld d, d
    ld d, c
    ld e, a
    ld d, d
    ld c, $5f
    ld d, e
    ld de, $7152
    ld e, l
    add hl, de
    ld de, $5352
    ld sp, $3230
    inc a
    ld de, $5d93
    ld e, [hl]
    sub d
    ldh a, [$6f]
    sub e
    ld b, a
    ld [de], a
    ld l, l
    ldh a, [$30]
    ld l, [hl]
    call nz, Call_023_52c4
    inc e
    call nz, $3430
    ld d, d
    ld h, h
    ld de, $6446
    ld de, $c453
    call nz, $1e52
    ld b, b
    ld b, e
    ld h, e
    di
    di
    ld a, b
    ld d, h
    di
    ld d, d
    ld d, e
    ld d, c
    ldh [rNR11], a
    ld h, h
    ld h, h
    di
    ld d, d

Call_023_5dc4:
    ld d, e
    ld e, $12
    ld e, [hl]
    ld h, d
    ld d, e

Jump_023_5dca:
    ld de, $1103
    ld e, [hl]
    sub b
    sub c
    sub b
    sub c
    ld b, l
    ld bc, $7605
    add [hl]
    ld [hl], e
    ld a, b
    ld a, c
    ld a, d
    ld [hl], l
    add [hl]
    ld l, d
    cp c
    sbc h
    sbc [hl]
    sbc [hl]
    sbc [hl]
    inc d
    ld d, b
    db $76
    sbc a
    cp c
    ld d, e
    cp c
    xor h
    xor l
    sbc l
    xor [hl]
    ld [hl], a
    cp c
    ld d, e
    cp c

jr_023_5df2:
    jr nz, jr_023_5df2

    cp c
    cp h
    rst $28
    sbc [hl]
    rst $28
    add a
    db $76
    ld d, e
    db $76
    ld hl, sp+$03
    cp c
    db $76
    ld d, e
    add [hl]
    add [hl]
    ld d, e
    ld b, b
    ld b, b
    ld [hl], $d0
    inc bc
    ld c, $d0
    dec [hl]
    ld b, b
    ld b, b
    ld h, e
    ld d, h

Call_023_5e11:
Jump_023_5e11:
    ld d, h
    ld b, [hl]
    ld b, l
    ld d, h
    ld d, h
    ld b, [hl]
    rrca
    nop
    ld d, h
    ld c, b
    ld [de], a
    ld l, l
    ld de, $5211
    add [hl]
    or d
    add [hl]
    add [hl]
    jr c, @+$50

    inc b
    ld [bc], a

jr_023_5e28:
    ld de, $6d12
    ld h, d
    or d
    cp c
    and b
    and c
    ld h, $4e
    ld [de], a
    ld l, l
    ld d, b
    add [hl]
    cp c
    jr jr_023_5e99

    ld de, $b8b7
    ld h, $4e
    ld [de], a
    rst $30
    or d
    cp c
    add [hl]
    add [hl]
    or e
    ld l, [hl]
    jr c, jr_023_5e28

    cp c
    ld [de], a
    ld [de], a
    db $76
    ld h, $11
    ld l, [hl]
    ld [de], a
    ld [de], a
    rst $30
    add [hl]
    add b
    inc bc
    cp c
    ld h, $6e
    ld [de], a
    ld c, l
    ld e, a
    ld sp, $48b2
    ld [de], a
    ld c, l
    ld de, $5211
    ld e, $42
    db $fd
    ld d, e
    ld a, [$fafa]
    ld a, [$0663]
    ld b, $07
    ld a, [$3007]
    ld a, [$51fd]
    inc b
    inc b
    add hl, bc
    db $fd
    xor b
    db $eb
    xor d
    rst $30
    inc b
    ld bc, $0407
    add hl, bc
    db $fd
    cp b
    cp c
    cp d
    ld a, [$09fa]
    db $fd
    xor c
    xor $a9
    add e
    rrca
    ld a, [$04f7]
    inc b
    add hl, bc
    db $fd
    inc [hl]
    dec bc
    dec bc
    inc c

jr_023_5e99:
    or c
    rst $00
    db $fd
    ld a, [$fafa]
    ld d, e
    ld a, [$fafa]
    rst $38
    db $fd
    db $fd
    db $fd
    ld c, a
    rlca
    db $fd
    ld c, a
    ld a, [$31fa]
    jr nc, jr_023_5ecf

    jr nc, jr_023_5ee6

    ld a, [$30fa]
    ld [de], a
    ld d, d
    and b
    and c
    and d
    jr jr_023_5f0f

    inc bc
    ld a, [$b052]
    db $ed
    or d
    ld [de], a
    dec d
    ldh [rNR12], a
    dec c
    ld d, e
    ld a, [$52fa]
    ld b, $01
    dec d
    ld d, e

jr_023_5ecf:
    db $fd
    db $fd
    ld d, d
    ld d, $14
    ld c, $16
    ld d, $01
    ld d, e
    db $fd
    db $fd
    ld a, d
    ld bc, $0d52
    ld d, e
    ld de, $b680
    and d
    or d
    or a

jr_023_5ee6:
    and d
    and a
    db $fd
    db $fd
    ld d, d
    and [hl]
    or d
    or a
    dec b
    rlca
    ld b, $10
    db $fd
    or a
    ld d, d
    or [hl]
    or a
    dec b
    ld [hl], e
    ld [hl], h
    rlca
    and [hl]
    and a
    ld d, d
    and [hl]
    and a
    nop
    ldh [$fa], a
    ld a, [bc]
    add e
    add h
    inc c
    or [hl]
    or a
    db $fd
    ld d, d
    or [hl]
    and d
    and a
    ld a, [bc]

jr_023_5f0f:
    inc c
    pop hl
    rlca
    ld a, [$a652]
    or d
    or a
    ld d, d
    or [hl]
    or a
    db $fd
    db $fd
    rlca
    rra
    db $fd
    ld a, [$52fa]
    and [hl]
    and a
    ld a, [$52fa]
    cp $03
    ld b, b
    ld b, e
    ld d, e
    ld d, h
    ld d, h
    ld d, h
    and h
    and l
    ld c, $00
    ld d, h
    and [hl]
    ld d, e
    rst $20
    ld h, h
    ld l, d
    or h
    rst $28
    or [hl]
    ld l, c
    rrca
    rrca
    ld d, e
    ld e, a
    inc d
    ld d, b
    ld d, h
    ld e, a
    ld d, e
    sub h
    ld h, d
    ld b, b
    ld b, b
    ld d, e
    ld de, $5311
    sub l
    ld b, l
    ret nz

    ld b, c
    rrca
    ld d, h
    ld d, h
    ld d, e
    ld de, $5311
    ld d, b
    ld d, h
    ld d, h
    ld d, e
    ld de, $0e53
    dec c
    ld de, $fa0f
    ld a, [$0f53]
    ld d, e
    rrca
    ld a, [$fafa]
    rst $38
    ld b, b
    db $fc
    ld d, h
    ld b, b
    ld b, b
    ldh a, [rIF]
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    scf
    rrca
    ld de, $4040
    jr @+$42

    ld [hl], $d0
    dec [hl]
    ld b, d
    rrca
    ld de, $5463
    ld b, [hl]
    ret nc

    ld b, l
    ld d, d
    adc h
    ld d, h
    ld de, $510f
    ret nc

    ld d, b
    inc c
    ld b, $54
    ld d, d
    ld a, [$08fc]
    inc b
    rlca
    push hl
    ld d, d
    dec hl
    dec hl
    ld a, [$1efa]
    inc b
    ld [$2b52], sp
    ld [hl], b
    rst $38
    ld b, b
    inc e
    ld d, h
    ld b, b
    ld b, d
    and c
    db $eb
    and e
    rlca
    ld d, h
    ld d, d
    rrca
    ld [$b1c0], sp
    inc d
    rrca
    or d
    or e
    rst $20
    ld d, d
    ld de, $7008
    ld de, $f604
    ld [$52f6], a
    ret nz

    ld b, $0f
    ld [$f7c0], sp
    dec hl
    inc b
    jr jr_023_5fd4

    ld b, $62
    ld b, $f7

jr_023_5fd4:
    dec hl
    rst $30
    ldh a, [$2b]
    rst $30
    rst $30
    rst $30
    ld d, b
    sub h
    ld [hl], b
    dec hl
    inc b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, [bc]
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], d
    add d
    ld [hl], d
    add c
    ld a, b
    xor l
    and d
    and e
    and h
    and l
    ret nz

    and b
    and [hl]
    and a
    or d
    or e
    or h
    and a
    nop
    and d
    or l
    or [hl]
    or a
    xor h
    or d
    cp b
    xor b
    inc bc
    and c
    cp h
    cp l
    or a
    xor h
    xor [hl]
    cp c
    inc c
    xor l
    cp d
    cp e
    cp c
    cp d
    cp e
    xor [hl]
    db $fc
    xor l
    ld b, d
    ld a, [c]
    cp c
    xor l
    xor [hl]
    ld d, d
    xor [hl]
    ldh [rLCDC], a
    xor [hl]
    xor l
    xor l
    xor [hl]
    ld h, d
    rlca
    ld b, b
    ld [hl], $ad
    dec [hl]
    ld d, b
    ld d, h
    rra
    ld d, h
    ld d, c
    xor l
    ld d, b
    ld b, e
    ld [hl], $70
    ld [hl], c
    jr jr_023_604d

    ld [hl], b
    ld [hl], d
    add d
    ld [hl], d
    ld d, e
    ld d, c
    add b
    add c
    jr jr_023_6057

    add b
    add c
    add b
    add d
    ld d, e
    call nz, $0404
    jr jr_023_6049

    rla

jr_023_6049:
    inc b
    inc b
    add b
    ld d, e

jr_023_604d:
    call nz, $1504
    dec de
    ld bc, $1401
    inc d
    inc d
    ld d, e

jr_023_6057:
    inc b
    dec d
    add hl, de
    inc b
    ld a, [de]
    ld bc, $4043
    ld b, b
    ld d, e
    inc b
    ld a, [de]
    ld bc, $0417
    ld a, [de]
    ld d, e
    ld d, h
    ld d, h
    ld h, e
    inc b
    inc b
    ld a, [de]
    ld bc, $0417
    ld d, e
    db $fd
    db $fd
    ld d, c
    inc b
    inc b
    inc b
    jr @+$03

    ld d, $53
    db $fd
    db $fd
    add b
    inc bc
    ld d, h
    add c
    ld e, l
    ld e, [hl]
    ld d, e
    ld d, c
    ret nc

    ld d, b
    ld [hl], c
    ld e, l
    ld e, [hl]
    ld d, e
    ld a, [bc]
    inc c
    rrca
    rlca
    db $fd
    add c
    ld l, l
    ld l, [hl]
    jr c, jr_023_60cf

    jr nc, jr_023_60c8

    inc d
    inc d
    ld a, $00
    cpl
    inc d
    inc d
    inc d
    ld b, b
    ld b, b
    ld b, b
    ld c, d
    db $fd
    db $fd
    db $fd
    ld c, c
    ret nz

    pop af
    db $fd
    ld b, b
    ld b, b
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    ld d, b
    ld d, h
    ld d, h
    rst $38
    rst $38
    db $fd
    inc bc
    ld d, h
    ld d, c
    db $fd
    db $fd
    ld d, d
    add b
    add c
    ld a, h
    db $fd
    inc b
    add b
    ld d, d
    ldh a, [$30]
    inc b
    rst $30

jr_023_60c8:
    inc b
    rst $30
    ret nz

    inc d
    jr nc, jr_023_6100

    inc b

jr_023_60cf:
    rst $30
    di
    rst $30
    rra
    inc d
    ld d, $19
    ld [hl], b
    ld sp, $3640
    ret nc

    dec [hl]
    ld b, d
    dec c
    nop
    add hl, de
    add b
    ld d, h
    ld d, c
    ret nc

    ld b, a

jr_023_60e5:
    jp z, $81cb

    ld d, d
    ld bc, $7019
    db $fd
    db $fd
    ld [$5f03], sp
    ld d, d
    ld c, $1c
    add b
    db $fd
    db $fd
    inc c
    ld de, $5208
    ld d, d
    add hl, de
    inc b
    ld [hl], b
    xor d

jr_023_6100:
    ld [bc], a
    add b
    add c
    add c
    add c
    add c
    add c
    ld [hl], b
    ld [hl], c
    inc b
    dec d
    inc d
    inc d
    ld [bc], a
    add b
    inc b
    rla
    ld [hl], b
    ld [hl], c
    add b
    add c
    dec d
    inc e
    ld [hl], e
    ld [hl], h
    ld a, [de]
    rla
    add b
    add c
    ld [hl], c
    ld [de], a
    jr nc, jr_023_60e5

    inc de
    add e
    add h
    inc de
    inc b
    dec d
    add c
    inc b
    ld a, [de]
    rla
    dec d
    inc e
    add hl, de
    ld b, [hl]
    inc b
    ld a, [de]
    ld [hl], c
    jr jr_023_614a

    ld d, $19
    ld [hl], b
    add d
    ld [hl], c
    ld a, [de]
    db $10
    ld de, $0d70
    ld c, $1c
    inc b
    ld [hl], d
    ld [hl], d
    add c
    ld [hl], c
    jr jr_023_6160

    ld [hl], c
    add b
    add d

jr_023_614a:
    dec d
    add c
    add b
    add b
    rst $30
    jr jr_023_616a

    ret nz

    ld d, $f7
    add b
    ld [hl], b
    ld [hl], c
    dec d
    inc d
    nop
    ld bc, $0419
    ld [hl], b
    add b
    add c

jr_023_6160:
    inc de
    ld a, [c]
    ret nz

    ld d, $18
    ld bc, $1c1b
    inc b
    add b

jr_023_616a:
    ldh [rLCDC], a
    ld bc, $0116
    add hl, de
    ld b, e
    dec e
    dec de
    ld bc, $531c
    db $fd
    jr nc, jr_023_617d

    db $fd
    db $fd
    ld [hl], c
    inc de

jr_023_617d:
    call nz, $0ec4
    db $fd
    ld d, e
    add c
    inc de
    inc b
    call nz, $fd38
    call nz, Call_023_53c4
    ld [hl], c
    dec hl
    ldh [$fd], a
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld d, e
    ld h, h
    ld de, $5d81
    ld d, d
    ld d, e
    ld h, d
    nop
    ld b, b
    ld b, d
    ld [hl], c
    ld l, l
    ld l, [hl]
    ld h, d
    ld h, e
    ld de, $5082
    ld de, $5254
    add c
    ld h, h
    ld [de], a
    sbc b
    di
    ld d, c
    ld l, l
    ld l, [hl]
    ld d, d
    ld b, d
    jr c, @+$66

    di
    di
    di
    ld [de], a
    ld d, d
    or d
    di
    ld d, d
    ld h, h
    ld h, h
    ld [de], a
    ld a, c
    di
    ld d, d
    ld d, d
    ld h, h
    and a
    ld h, h
    ld d, d
    ld d, d
    ld [de], a
    inc e
    ld e, a
    call nz, Call_023_524d
    ld d, d
    ld h, h
    ld [hl], b
    ld de, $9012
    sub c
    ld e, l
    ld d, d
    ld c, $11
    ld d, e
    ld e, [hl]
    sub d
    sub e
    sub d
    jr c, jr_023_6250

    sub e
    ld b, a
    ld d, e
    ld l, [hl]
    ld [de], a
    rlca
    ld [de], a
    ld d, d
    ld d, e
    call nz, $c4c4
    sbc a
    call nz, $5352
    ld a, a
    call nz, $1452
    sub b
    ld d, e
    di
    sub c
    sub c
    di
    ld h, h
    ld d, b
    sub d
    ld h, h
    ld d, d
    ld d, e
    di
    sub e
    sub e
    ld h, a
    di
    ld d, d
    ld d, e
    ld e, a
    nop
    ld c, [hl]
    sub b
    sub c
    dec d
    rla
    ld h, d
    inc sp
    jr nc, jr_023_6213

jr_023_6213:
    inc [hl]
    ld de, $925e
    sub e
    jr jr_023_6233

    ld b, l
    nop
    ld hl, sp-$47
    ld d, h
    ld d, h
    ld d, c
    ret nc

    ret nc

    ret nc

    ld d, b
    ld d, h
    ld d, h
    ld d, c
    db $76
    xor a
    cp e
    cp c
    db $76
    db $76
    db $76
    db $76
    xor $fe
    cp c

jr_023_6233:
    add [hl]
    add [hl]
    db $76
    db $fc
    rlca
    add [hl]
    cp c
    cp c
    cp c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    rrca
    ld d, h
    ld b, b
    ld b, b
    ld b, d
    cp c
    cp c
    cp c
    ld d, d
    cp c
    ld d, l
    ld b, b
    ld c, $0c
    cp c

jr_023_6250:
    or d
    jr c, jr_023_62a0

    ld de, $1111
    ld d, d
    and b
    and c
    ld h, $6d
    rlca
    jr jr_023_626f

    ld d, d
    cp c
    cp c
    or a
    cp b
    ld h, $12
    ld l, l
    ld d, d
    cp c
    add [hl]
    ld b, b
    jr nz, @+$13

    ld b, e
    ld b, b
    ld c, d

jr_023_626f:
    ld c, [hl]
    ld [de], a
    ld l, l
    ld d, d
    cp c
    or d
    ld d, e
    ld d, h
    ld d, c
    ld c, [hl]
    ld [de], a
    ldh [$81], a
    ld de, $526d

jr_023_627f:
    cp c
    ld b, e
    ld h, e
    ld c, [hl]
    ld [de], a
    ld d, d
    cp c
    ld d, e
    ld d, c
    dec c
    nop
    ld de, $5f6f
    ld d, d
    ld b, b
    ld h, e
    rst $30
    ld e, l
    ld e, [hl]
    rst $30
    ld b, e
    ld b, b
    ld [hl], $52
    ld e, $03

jr_023_629a:
    db $fd
    ld d, e
    ld a, [$fafa]
    ld d, e

jr_023_62a0:
    xor b
    db $eb
    xor d
    ld a, [$07fa]

jr_023_62a6:
    db $10
    ld a, [$53fd]
    cp b
    cp c
    cp d
    ld b, $06
    ld b, $07
    db $fd
    ld d, e
    or $00
    jr c, jr_023_627f

    ld [$16f6], a
    ld d, $17
    add hl, bc
    ld a, [$53fd]
    ld a, [de]
    dec de
    add hl, de
    add hl, bc
    jr jr_023_62a6

    call nz, $fdfa
    ld d, e
    ld a, [de]
    dec de
    ret z

    add hl, de
    add hl, bc
    ld a, [$53fd]
    add b
    rst $38
    jr nc, jr_023_629a

    ld a, [de]
    inc e
    add hl, bc
    ld a, [$33fa]
    ld [hl], b
    ld bc, $fdfd
    ld d, d
    ld c, $0d
    ld h, c
    ld bc, $fd53
    db $fd
    ld d, d
    dec c
    inc bc
    ld bc, $530e
    db $fd
    db $fd
    ld h, d
    ld b, b
    rra
    ld b, b
    ld h, e
    db $fd
    db $fd
    ld a, [hl]
    ld d, h
    ld d, b
    ld d, c
    rst $38
    db $fd
    ld a, a
    db $fd
    ld a, [$faf3]
    db $fd
    db $fd
    dec sp
    ld a, [$30fd]
    jr nc, @+$01

    jr nc, jr_023_6388

    db $fd
    or [hl]
    or a
    ld a, [$fdf0]
    ld a, [$a652]
    and a
    ld b, $fa
    db $fd
    ld d, d
    or [hl]
    and d
    and a
    db $fd
    ld e, $fa
    db $fd
    ld d, d
    ld c, a
    or [hl]
    ld b, $fd
    or a
    ld a, [$eba8]
    xor d
    ld d, d
    rra
    db $fd
    ld a, [$b9b8]
    ld a, h
    db $fd
    cp d
    ld d, d
    ld a, [$faf0]
    xor c
    xor $a9
    ld d, d
    rra
    ld a, [$3052]
    jr nc, @+$81

    jr nc, jr_023_6376

    ld [hl], d
    nop
    rrca
    ld d, e
    ld de, $fa53
    ld a, [$53fa]
    ld de, $5311
    ld b, $06

Jump_023_6353:
    inc c
    jr nc, @-$04

    ld b, $07
    ld d, e
    ld de, $530f
    rra
    jr nz, @+$23

    add hl, bc
    ld d, e
    rrca
    nop
    ldh a, [$30]
    ld de, $2253
    inc hl
    inc h
    add hl, bc
    ei
    ld a, [$1153]
    rrca
    inc sp
    ret c

    pop hl
    ld de, $3030

jr_023_6376:
    ld d, e
    rrca
    rrca
    ld [$5304], sp
    jr nc, jr_023_638e

    inc b
    ld de, $050f
    ld b, $53
    rrca
    ld de, $0511

jr_023_6388:
    ld b, $70
    ld [hl], c
    ld [hl], b
    ld a, b
    nop

jr_023_638e:
    inc b
    ld a, [$08fa]
    ld d, d
    dec hl
    add b
    ld a, [$0afa]
    dec bc
    dec bc
    dec bc
    ldh a, [$c3]
    ld a, [$520b]
    dec hl
    ld [hl], b
    db $fc
    ld d, d
    inc de
    add b
    rra
    ld [hl], b
    ld a, [$1352]
    ld [hl], b
    jr nc, jr_023_63de

    jr nc, jr_023_63ea

    scf
    inc e
    ld [hl], b

jr_023_63b3:
    inc b
    inc de
    add b
    jr z, jr_023_63b3

    ld a, [$27fa]
    inc de
    ld [hl], b
    jr z, jr_023_63c6

    inc e
    ld a, [$1327]
    add b
    ld [hl], c
    ld [hl], b

jr_023_63c6:
    ld [hl], c
    ld c, b
    ld b, a
    inc de
    ld [hl], b
    ld d, h
    ld [$8281], sp
    ld [hl], d
    add b
    add b
    add b
    add d
    ld [hl], c
    ld [hl], d
    dec d
    inc d
    inc d
    inc d
    and b
    inc d
    inc b
    inc d

jr_023_63de:
    rla
    add b
    add d
    add c
    inc de
    ld [hl], e
    ld [hl], h
    inc de
    add b
    ld [hl], c
    dec d
    sub d

jr_023_63ea:
    jr nc, @+$06

    add hl, de
    add e
    add h
    jr jr_023_6408

    add c
    ld a, [de]
    dec de
    rla
    dec d
    dec de
    inc d
    add h
    ld [hl], c
    dec de
    inc d
    ld [hl], b
    ld a, [de]
    ld d, $16
    inc e
    ld [hl], b
    ld [hl], b
    add d
    ld [hl], d
    add d
    ld l, b
    nop

jr_023_6408:
    ld [hl], d
    jr jr_023_6424

    ld [hl], b
    add d
    add c
    add b
    add c
    jr @+$1b

    add b
    add c
    add b

jr_023_6415:
    add d
    ld d, l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    inc d
    ld [hl], d
    dec hl
    ld [hl], b
    add d
    add c
    add b
    add c

jr_023_6424:
    add hl, hl
    add b
    add c
    dec hl
    add c
    add c
    call nz, $04c8
    call nz, Call_023_7170
    dec hl
    ld [hl], b
    inc hl
    inc b
    call nz, $8180
    dec hl
    add b
    adc [hl]
    ld d, $14
    rla
    ld a, [c]
    dec d
    ld [hl], b
    ret z

    dec hl
    ld [hl], b
    ld [hl], c
    ld a, [de]
    dec hl
    rlca
    dec hl
    add b
    add d
    ld [hl], c

jr_023_644b:
    jr jr_023_6415

    dec c
    ret z

    dec hl
    add hl, de
    ld [hl], b
    ld [hl], d
    add c
    ld [hl], $c8

jr_023_6456:
    jr jr_023_6483

    add hl, de
    add b
    ld c, $18
    inc b
    ld [hl], c
    jr jr_023_6461

    dec de

jr_023_6461:
    ld d, e
    db $fd
    db $fd
    add c
    dec d
    ret z

    add hl, de

jr_023_6468:
    inc c

jr_023_6469:
    jr nc, jr_023_6468

    inc b
    ld d, e
    ld [hl], c
    inc b
    dec d
    ret z

    ret z

    inc e
    inc b
    ld d, e
    add d
    ld [hl], c
    rlca
    db $10
    di
    sub b
    sub c
    ld d, e
    db $fd
    db $fd
    ld [hl], d
    add c
    jr jr_023_644b

jr_023_6483:
    dec a
    ld a, $53
    adc b
    ld h, c
    inc b
    db $fd
    db $fd
    add c
    ld a, [de]
    ret z

    add hl, de
    ld d, e
    db $fd
    db $fd
    ld [hl], c
    ld a, [de]
    jr nc, jr_023_6456

    db $fd
    ret z

    rla
    inc b
    ld d, e
    add c
    dec d
    rla
    inc b
    jr jr_023_6469

    ld d, $53
    rst $38
    rrca
    db $fd
    ld sp, $3030
    jr nc, @+$3e

    ldh a, [$fd]
    jr nc, @+$36

    ld d, d

Call_023_64b0:
    inc e
    call nz, $1ac4
    ld d, e
    nop
    ld a, b
    ld d, $52
    call nz, $c4c6
    call nz, $fd53
    db $fd
    db $fd
    db $fd
    ld d, d
    ld d, e
    rrca
    inc a
    db $fd
    ld h, d
    ld b, b
    ld b, b
    ld [hl], $d0
    ld e, h
    ld d, b
    ld d, h
    ldh a, [rIE]
    db $fd
    ld d, h
    ld d, c
    ret nc

    ld l, h
    db $fd
    db $fd
    ld [$1152], sp
    ld de, $1952
    inc b
    add b
    db $fd
    db $fd
    ld [$1152], sp
    ld de, $0152
    rla
    ld [hl], b
    db $fd
    db $fd
    ld [$cc59], sp
    ld d, a
    ld d, d
    ld c, $19
    add b
    db $fd
    db $fd
    ld [$9550], sp
    ld d, h
    ld d, d
    dec de
    dec c
    ld d, $fd
    db $fd
    ld [$011a], sp
    inc e
    ld d, d
    inc b
    ld a, [de]
    ld bc, $fdfd
    ld a, [bc]
    ld e, $13
    inc b
    ld d, d
    inc b
    inc b
    ld a, [de]
    db $fd
    db $fd
    db $fd
    ld [$0413], sp
    ld d, d
    ld [hl], b
    ld [hl], c
    ld [hl], b
    db $fd
    db $fd
    db $fd
    ld [$1718], sp
    ld d, d
    add b
    add c
    add b
    adc b
    ld [$8281], sp
    ld [hl], c
    add b
    jr @+$1b

    add b
    ld [hl], b
    ld [hl], d
    ld [hl], d
    dec d
    ld d, $01
    dec c
    add b
    ld a, [bc]
    ld bc, $1716
    add b
    add d
    add c
    dec d
    dec de
    ld c, $1b
    rla
    add b
    ld d, $19
    ld de, $04cc
    ld a, [de]
    ld bc, $1a19
    inc e
    ld [hl], b
    ld bc, $181c
    add hl, de
    add hl, de
    ld h, $04
    add b
    inc e
    dec d
    dec c
    ld bc, $7017
    ld [hl], c
    dec d
    ld bc, $1407
    ld hl, sp+$17
    inc b
    add b
    add c
    dec d
    ld bc, $0e0d
    ld bc, $7017
    add hl, hl
    add c
    dec hl
    add b
    add b
    inc sp
    jr nc, jr_023_65ee

    dec hl
    jr nc, jr_023_65a9

    ld [hl], c
    and [hl]
    ret nz

    ld hl, sp-$59
    xor b
    ld [hl], b
    ld [hl], c
    add c
    dec hl
    nop
    ld hl, sp-$4a
    or a
    cp b
    add b
    add c
    ld [hl], c
    dec hl
    rlca
    ld hl, sp-$0a
    ld [$70f6], a
    ld [hl], c
    ld [c], a
    dec hl
    add c
    ld hl, sp-$08
    ld hl, sp-$10
    ld hl, sp-$80
    add c
    ld [hl], c
    dec hl
    ld [c], a
    dec hl
    ld hl, sp+$70
    ld [hl], c
    add c
    rrca
    dec hl
    add b
    add c

jr_023_65a9:
    ld [hl], c
    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ret nz

    ld bc, $3211
    ld h, h
    ld [de], a
    sub d
    sub e
    ld e, l
    ld h, d
    ld [hl], b
    ld [hl], c
    ld [de], a
    sub b
    sub c
    ld e, l
    rlca
    inc a
    ld de, $8050
    add c
    ld [de], a
    sub d
    sub e
    ld l, l
    ld [hl], b
    ld [hl], c
    inc bc
    inc c
    ld [de], a
    sub b
    sub c
    ld l, l
    ld l, a
    ld l, a
    ld l, a
    add b
    add c
    sub d
    sub e
    sub b
    sub c
    ldh a, [$c0]
    ld [de], a
    sub b
    sub c
    ld [hl], b
    ld [hl], c
    sub d
    sub e
    sub d
    sub e
    add b
    add c
    ccf
    nop
    ld [de], a
    ld [hl], c
    ld [hl], b

jr_023_65ee:
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    inc bc
    ld b, b
    ld h, e
    ld de, $905e
    sub c
    jr @+$0e

    ld d, h
    add hl, de
    ld d, b
    ld d, c
    ld de, $925e
    nop
    sub e
    jr @+$03

    ld d, $11
    ld e, [hl]
    ld h, h
    ld l, l
    jr nc, jr_023_6612

    ld l, [hl]

jr_023_6612:
    sub b
    sub c
    ld a, [de]
    ld l, a
    ld l, [hl]
    nop
    ld [de], a
    ld h, h
    di
    sub d
    sub e
    call nz, $0d18
    inc a
    di
    sub b
    sub c
    ld h, h
    call nz, Call_023_64b0
    jr jr_023_662b

    sub d

jr_023_662b:
    sub e
    di
    ldh a, [rNR12]
    di

Jump_023_6630:
    call nz, $011a
    rlca
    di
    ld h, h
    inc b
    ld a, [de]
    ld [hl], c
    ld [hl], b
    ld d, l
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld sp, $000f
    ld d, h
    or h
    jr nc, jr_023_6678

    cp c
    or d
    or d
    ld d, $16
    inc d
    ld d, $25
    and h
    ld b, $18
    cp c
    and l
    or d
    dec c
    inc e
    ld a, [c]
    ld a, [de]
    dec h
    or l
    or [hl]
    or d
    add hl, de
    inc b
    inc bc
    nop
    inc b
    ld c, c
    ld b, b
    ld b, b
    ld [hl], $d0
    ld c, e
    add hl, de
    dec e
    dec bc
    dec bc
    ld d, b
    ld d, h
    ld d, h
    ld d, c
    ret nz

    rlca
    db $fd
    ret nc

    ld d, d
    add hl, de
    add hl, bc
    ld c, a
    ld c, a

jr_023_6678:
    ld d, d
    inc e
    inc c
    cpl
    cpl
    sbc b
    dec a
    ld c, a
    sbc e
    db $fd
    db $fd
    ld d, d
    inc [hl]
    db $fd
    db $fd
    ld h, d
    ld l, d
    ld d, c
    rst $30
    ld e, l
    ld e, [hl]
    rst $30
    ld d, e
    ld d, h
    ld d, c
    ld h, d
    ld d, e
    ld b, a
    ld [de], a
    ld l, l
    ld de, $535f
    jr jr_023_66b4

    ld d, b
    ld d, e
    ld d, d
    ld [de], a
    ld [de], a
    ld e, l
    ld de, $1853
    add hl, de
    rst $30
    ld d, e
    ld h, d
    ld b, b
    ld b, b
    ld e, b
    adc $5a
    ld a, [de]
    dec de
    inc d
    ld d, e
    ld d, b
    ld d, h
    ld d, h

jr_023_66b4:
    ld d, h
    ld d, h
    ld d, c
    sub b
    sub c
    rst $30
    ld d, e
    rra
    jr nz, jr_023_66df

    inc de
    sub e
    inc de
    dec a
    ld a, $70
    ld d, e
    ld [hl+], a
    inc hl
    inc h
    jr jr_023_66e0

    ld bc, $1716
    add b
    ld h, e
    dec d
    ld d, $16
    ld bc, $0101
    dec de
    inc e
    and b
    rst $38
    ld b, b
    db $ec
    ld d, h
    ld b, b
    ld b, b
    ld [c], a

jr_023_66df:
    rrca

jr_023_66e0:
    ld d, h
    rst $30
    inc b
    inc de
    inc b
    ld d, $c4
    inc b
    inc b
    ld [hl], b
    inc d
    ld d, $06
    ld d, $c8
    rla
    di
    dec d
    rla

jr_023_66f3:
    add b
    sbc h
    ret z

    rst $30
    jr @+$03

    ld d, $41
    ld bc, $7116
    jr jr_023_66f3

    ret z

    ret z

    pop bc
    dec de
    ret z

    ret z

    ret z

    add c
    jr jr_023_673b

    dec de
    inc e
    di
    ld a, [de]
    and d
    inc de
    ld d, l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ccf
    ld b, b
    ld b, d
    ld d, h
    rst $30
    ld d, h
    add sp, $0c
    ld de, $0f52
    ld [hl], c
    jr jr_023_673b

    rra
    jr jr_023_6736

    jr nz, jr_023_674a

    ld d, d
    ld de, $1881
    nop
    inc e
    ld [hl+], a
    inc hl
    inc h
    ld h, d
    ld [hl], $d0
    dec [hl]

jr_023_6736:
    ld hl, $1916
    sub b
    sub c

jr_023_673b:
    dec d
    ld d, b
    ld d, c
    nop
    ret nc

    ld d, b
    ret z

    add hl, de
    dec a
    ld a, $18
    ld bc, $c80f
    dec de

jr_023_674a:
    dec de
    inc d
    inc d
    ccf
    dec de
    ld [hl], b
    ld [hl], c
    ld d, l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld hl, sp+$40
    ld d, h
    ld d, h
    ld b, e
    ldh [rHDMA4], a
    ld b, b
    ld b, b
    ld de, $380f
    rrca
    ld d, h
    ld de, $2611
    inc b
    ret nz

    ld b, b
    call nz, $acc4
    db $eb
    xor [hl]
    ld [hl], b
    inc c
    call nz, $044a
    cp h
    cp l
    cp [hl]
    add b
    inc bc
    ld d, h
    ld d, c
    inc b
    call nz, $f6f2
    xor c
    ldh [rNR21], a
    or $70
    ret z

    ret z

    ret z

    ldh a, [rNR31]
    rla
    dec hl
    inc b
    add b
    jr jr_023_6794

    dec de
    ld bc, $7019

jr_023_6794:
    ld [hl], b
    ld [hl], c
    ld b, c
    ld [hl], b
    ld [hl], c
    rst $30
    jr @+$1b

    rst $30
    ld [hl], d
    ld c, $70
    ld de, $0a53
    dec bc
    ld e, $80
    add c
    add b
    ld h, e
    rrca
    rrca
    ld h, b
    add hl, bc
    rrca
    ld a, [bc]

jr_023_67af:
    dec bc
    ld e, $04
    ld b, [hl]
    ld de, $1111
    ld a, [bc]
    ld e, $47
    ld b, $00
    ld e, $04
    ld b, $06
    rlca
    rrca
    ld de, $0f11
    ld [$0752], sp
    ld de, $1811
    ld h, b
    call nz, $0a11
    ld d, d
    jp nz, $0904

    rrca
    ld de, $0f11
    ld d, d
    inc b
    add b
    rst $38
    ld b, b
    inc b
    inc b
    rlca
    rrca
    ld de, $6211
    ld [hl], b
    nop
    ld a, [$8081]
    add c
    ld d, e
    ld d, d
    inc de
    add b
    inc b
    dec d
    db $ec
    ld d, e
    and b
    and b
    db $10
    ret nz

    inc b
    and b
    ld d, d
    inc de
    ld [hl], b
    ld a, [de]
    dec de
    ld d, e
    ld a, [$fafa]
    ld d, d
    inc de
    add b
    inc e
    ld [hl], b
    ld a, [$5304]
    ld d, d
    inc de
    inc b
    dec bc
    dec bc
    dec bc
    ld d, e
    ld d, d
    inc e
    ld [hl], b
    rrca
    ld bc, $5316
    ld a, [$fafa]
    ld d, d
    ld bc, $5301
    rlca
    inc e
    ld a, [$0152]
    ld c, $40
    ld b, b
    ld b, b
    ld h, e
    ld h, d
    ld b, b
    ld b, b
    db $10
    ld b, b
    jr jr_023_67af

    ld [hl], c
    ld [hl], b
    ld [hl], c

Call_023_6830:
    add hl, de
    ld sp, $3430
    add b
    ld [hl], d
    add c
    add b
    add c
    add hl, de
    ld h, b
    ret z

    inc b
    ld d, d
    ld a, [c]
    ld d, e
    ld [hl], b
    add c
    dec d
    ld c, $19
    ld d, d
    ld d, e
    add b
    ld b, $14

Call_023_684a:
    ld bc, $1915
    ld e, c
    call Call_023_705a
    ld d, $16
    dec c
    inc e
    ld b, l
    sub h
    inc [hl]
    or b

jr_023_6859:
    ld bc, $8046
    ld c, $19
    ld a, [c]
    ld d, b
    sub l
    ld d, c
    ld [hl], b
    dec c
    ret nz

    ccf
    ld b, b
    ld bc, $0116
    inc e
    inc b
    add b
    ld b, d
    rst $30
    ret c

    ld h, b
    ret z

    add d
    ld [hl], c
    jr jr_023_68a1

    add hl, de
    ld [hl], b
    ld [hl], d
    add c
    jr jr_023_68a7

    jp $c808


    add hl, de
    add b
    add c
    dec d
    dec hl
    dec hl
    dec hl
    add hl, de
    ld [hl], b
    ld [hl], c
    jr jr_023_68b6

    xor h
    ret z

    dec hl
    dec hl
    add hl, de
    add b
    add c
    jr jr_023_68bf

    dec hl
    jr nc, jr_023_6859

    ret z

    add hl, de
    ld [hl], b
    ld [hl], c
    jr jr_023_68c8

    dec hl
    dec hl
    add hl, de
    add b

jr_023_68a1:
    add c
    ld a, [de]
    ld b, $0a
    ret z

    dec hl

jr_023_68a7:
    dec de
    inc e
    ld [hl], b
    rst $30
    rst $30
    jr jr_023_68d9

    add hl, de
    rst $30
    inc b
    add b
    ld [$0418], sp
    ld [hl], c

jr_023_68b6:
    ld a, [de]
    inc e
    jr jr_023_68bb

    dec de

jr_023_68bb:
    ld d, e
    db $fd
    db $fd
    add c

jr_023_68bf:
    dec d
    ld bc, $c019
    add a
    di
    inc b
    ld d, e
    db $fd

jr_023_68c8:
    db $fd
    ld [hl], c
    inc b
    inc sp
    jr nc, jr_023_68fe

    add c
    add b
    jr nc, jr_023_68d6

    di
    add hl, de
    di
    ld a, [de]

jr_023_68d6:
    ld bc, $1c0d

jr_023_68d9:
    ld [hl], c
    dec d
    dec c
    inc e
    jr jr_023_68f8

    pop hl
    jr nz, jr_023_68e6

    dec d
    add c
    ld a, [de]
    add hl, de

jr_023_68e6:
    ld a, [de]
    ld bc, $0116
    ld [hl], c
    ld a, [de]
    inc d
    add h
    inc bc
    inc b
    ld d, $17
    jr jr_023_68f5

    dec de

jr_023_68f5:
    add c
    jr @+$03

jr_023_68f8:
    ld d, $01
    add hl, de
    ld [hl], b
    rst $38
    rst $38

jr_023_68fe:
    db $fd
    rrca
    inc a
    db $fd
    jr nc, @+$32

    jr nc, jr_023_6936

    jr nc, jr_023_693c

    inc b
    inc b
    ldh a, [$c0]
    db $fd
    inc b
    inc b
    inc b
    ld d, e
    ld d, $17
    inc b
    push hl
    inc b
    ld d, e
    inc bc
    rrca
    db $fd
    ld bc, $1701
    inc b
    dec d
    ld d, e
    dec de
    dec de
    dec de
    inc d
    inc a
    ldh a, [$fd]
    dec de
    ld d, e
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld d, e
    rlca
    inc e
    db $fd
    ld [$0e18], sp
    ld d, d

jr_023_6936:
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [$011a], sp

jr_023_693c:
    ld [hl], b
    ret nz

    db $fd
    ld d, d
    add b
    add c
    add b
    ld [$1a04], sp
    ld h, d
    ld b, b
    ld b, b
    ld b, b
    ld bc, $fd87
    ld [$d704], sp
    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld [$d704], sp
    inc c
    rra
    ldh a, [$fd]
    ld a, [bc]
    dec bc
    inc c
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    rst $38
    rst $38
    db $fd
    ld a, h
    ld d, b

Call_023_6967:
    ld hl, sp+$71
    jr jr_023_6978

    add hl, de
    add b
    add c
    jr jr_023_697d

    ld c, $04
    ld [bc], a
    add hl, de
    dec de
    ld bc, $4070

jr_023_6978:
    ld b, b
    ld b, d
    ld hl, sp-$08
    inc b

jr_023_697d:
    ld a, [de]
    inc e
    add b
    ld d, h
    add sp, $0c
    nop
    ld bc, $1b52
    rla
    inc b
    call nz, $fd70
    db $fd
    ld d, d
    call nz, $0d1a
    ld c, $17
    ld hl, $c404
    add b
    ld c, a
    ld c, a
    ld d, d
    inc b
    ld a, [de]
    dec de
    inc e
    ld [hl], b
    db $fd
    db $fd
    ld d, d
    ld [hl], b
    ld c, $10
    inc b
    ld [hl], c
    ld [hl], b
    ld [hl], d
    db $fd
    db $fd
    ld d, d
    add b
    add c
    rst $30
    rst $30
    add b
    add d
    and b
    ld [de], a
    add b
    add d
    ld [hl], d
    add d
    or [hl]
    ld [hl], d
    add c
    add c
    ld [hl], d
    add c
    db $ed
    add c
    cp d
    ld [hl+], a
    sub b
    cp c
    cp d
    cp e
    ld [hl], b
    add c
    inc b
    inc de
    inc b
    inc b
    dec d
    rla
    add b
    ld [hl], c
    ld [de], a
    jr nc, jr_023_69d4

    dec d

jr_023_69d4:
    ld d, $16
    inc e
    cp c
    ld [hl], b
    add c
    cp c
    ld a, [de]
    dec de
    add hl, de
    inc b
    add hl, bc
    inc b
    cp c
    add b
    ld [hl], c
    inc b
    inc b
    ld a, [de]
    dec de
    dec de
    rla
    ld [hl], b
    add c
    cp d
    cp d
    cp d
    add b
    adc d
    ld [hl], b
    cp c
    cp e
    cp e
    jr jr_023_6a0e

    add b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, [de]
    inc e
    xor d
    ld [bc], a
    add b
    add c
    add c
    add c
    add c
    add c
    ld [hl], c
    inc b
    inc b
    push hl
    call nz, $0fe5
    inc c

jr_023_6a0e:
    ld [de], a
    add c
    inc b
    inc b
    call nz, $c4e3
    ld c, l
    ld e, a
    ld [hl], c
    inc b
    ret nz

    ret nz

    ld de, $e504
    call nz, Call_023_4de5
    ld e, a
    add c
    inc b
    ld c, l
    ld e, a
    ld e, a
    ld e, a
    di
    rst $00
    ld de, $4d71
    ld l, a
    add c
    ld e, l
    rrca
    rra
    ld de, $706e
    ld [hl], c
    ld e, l
    ld e, [hl]
    ld [hl], b
    ld [hl], d
    add c
    add b
    xor h
    xor c
    and [hl]
    and a
    xor b
    xor c
    xor l
    ld b, c
    ld c, l
    ld e, a
    cp h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp l
    ld [hl], b
    ld de, $5211
    and e
    and h
    rst $28
    cp d
    xor e
    ld d, e
    add b
    ld de, $5211
    or e
    xor a
    ld de, $bbbf
    ld d, e
    ld [hl], b
    ld de, $5b11
    ret nc

    dec [hl]
    ld e, b
    adc $57
    ld h, e
    add b
    ld l, a
    ld l, a
    ld l, h
    ret nc

    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    ld [hl], b
    ld [hl], c
    ld [de], a
    rst $10
    rst $10
    rst $10
    ld [de], a
    ld [de], a
    ld h, h
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [de], a
    ld [hl], b
    ld [hl], d
    add d
    or [hl]
    ld c, a
    ld b, h
    ld a, [$21fa]
    ld c, a
    ld d, b
    ld [hl], c
    ld b, $07
    ld a, [$00fa]
    ld c, a
    dec b
    ld b, $15
    add c
    inc b
    add hl, bc
    ld a, [$fa07]
    ld [$1a04], sp
    ld [hl], c
    inc b
    ld e, $fa
    add hl, bc
    ld [$701d], sp
    ld a, b
    ld b, $81
    inc b
    inc b
    inc b
    ld sp, hl
    inc b
    add b
    ld [hl], c
    rst $00
    inc b
    ld [hl], b
    add d

jr_023_6abb:
    ld [hl], c
    rrca
    inc b
    ld [hl], b

jr_023_6abf:
    ld [hl], d
    ld [hl], d

jr_023_6ac1:
    add d
    ld a, [hl+]

jr_023_6ac3:
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    add d
    inc e
    ld bc, $1851
    dec de
    inc e
    inc b
    add c
    inc b
    and e
    ld d, $0e
    ret z

    ret z

    add hl, de
    rlca
    inc b
    and e
    dec de
    ld bc, $c8c8

jr_023_6adf:
    ld a, [de]
    di
    add hl, de
    inc b
    and e
    ld [hl], c
    jr jr_023_6b2f

    inc b
    ret z

    ret z

    add hl, de
    di
    di
    or b
    ldh [rDIV], a
    add c
    jr jr_023_6abb

    ret z

    add hl, de
    jr nc, jr_023_6abf

    inc b
    rst $30
    ld [hl], c
    jr jr_023_6b17

    inc d
    inc c
    inc b
    ld d, $17
    add c
    jr @-$36

    add hl, de
    add h
    jr @-$5e

    and d
    add hl, de
    inc b
    rst $30
    ld [hl], c
    ld [hl+], a
    add hl, de
    ret z

    and e
    and h
    jr jr_023_6b84

    ld [hl], c
    jr c, jr_023_6ac1

jr_023_6b17:
    and h
    inc de
    xor b
    xor e
    ld h, a
    inc bc
    jr nc, jr_023_6ac3

    inc de
    or a
    cp b
    cp c
    cp d

jr_023_6b24:
    nop
    cp e
    ld d, d
    rst $20
    jr jr_023_6adf

    and d
    ld d, b
    or e
    nop
    rst $28

jr_023_6b2f:
    or h
    ld d, c
    ld h, d
    ld b, d
    jr @-$4d

    or d
    ld c, $ad
    call nz, Call_023_50c4
    ld h, d
    ld b, b
    jr z, jr_023_6b24

    rst $30
    rst $30
    inc b
    call nz, $0d15
    ldh [rNR21], a
    ld d, b
    ld d, h
    inc b
    ret nz

    dec d
    ld a, [bc]
    ld bc, $0e0e
    rst $30
    rst $30
    ld a, [de]
    dec de
    ccf
    dec de
    ld [hl], b
    ld [hl], c
    ld d, l
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    rst $38
    jr nc, jr_023_6b61

jr_023_6b61:
    jr nc, @+$6a

    add hl, de
    pop af
    rst $20
    push hl
    ret nz

    inc b
    nop
    rra
    jr nz, jr_023_6b8e

    ld d, e
    ld bc, $1716
    push hl
    ret nz

    ld b, b
    ret nz

    inc b
    ld [hl+], a
    inc hl
    inc h
    ld d, e
    ld h, e
    ld b, b
    ld e, b
    call $6357
    rst $10
    ld d, h
    add sp, -$6b

jr_023_6b84:
    ld [hl], b
    db $fd
    add sp, $51
    add hl, de
    add hl, bc
    ld [$0425], sp
    rst $10

jr_023_6b8e:
    ld [hl], b
    inc e
    ld b, $06
    ld c, $04
    ld b, $d7
    add b
    ld [hl], b
    ld [hl], c
    ld d, c
    ld [hl], b
    ld [hl], c
    dec d
    rla
    ld [hl], c
    ld [hl], c
    sub b
    rst $30
    add b
    add d
    ld [hl], d
    add c
    jr @+$1b

    ld [de], a
    add d
    add b
    ld [hl], b
    ld [hl], d
    ld [hl], c
    inc b
    ld a, [de]
    ld e, b
    add b
    dec de
    ld d, $17
    add c
    add d
    ld h, d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    jr jr_023_6bd6

    ld [hl], c
    add d
    add b
    res 0, d
    ld [hl], d
    add c
    jr jr_023_6bdf

    ld de, $8180
    inc b
    jp z, $1581

    ret z

    ldh [rNR21], a
    add hl, de
    ld [hl], b
    ld [hl], c
    jp z, $0315

jr_023_6bd6:
    ret z

    add hl, de
    add b
    add c
    jp z, $0d18

    ld b, $1b

jr_023_6bdf:
    ret z

    ret z

    add hl, de
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld hl, $c818
    add hl, de
    ld [hl], b
    ld [hl], c
    add hl, de
    add b
    cp $54
    ld b, l
    ld hl, sp-$38
    ld d, h
    ld d, h
    ld b, a
    ld h, b
    ret z

    inc e
    inc b
    ld l, l
    ld de, $0e52
    inc e
    inc b
    ret z

    inc e
    ld e, l
    ld d, d
    ret z

    jr jr_023_6c0a

    ret z

    ret z

    add hl, de
    dec [hl]

jr_023_6c0a:
    ld b, b
    ld b, b
    ld a, [bc]
    ret z

    ld d, d
    ld c, $01
    ld d, $17
    ld d, b
    jr jr_023_6c31

    ld d, h
    ld l, c
    ld d, d
    ld bc, $c8c8
    jr @+$54

    ld c, $16
    rla
    ld [hl], b
    ld [hl], c
    ld a, [de]
    rrca
    dec de
    add hl, de
    ld d, d
    ld d, d
    add b
    ld a, [hl+]
    ld [hl], c
    add d
    ld [hl], b
    ld [hl], b
    inc de
    ld d, d

jr_023_6c31:
    rlca
    inc bc
    ld d, h
    ld b, [hl]
    ld a, [$fafa]
    ld d, b
    ld de, $044e
    ld c, b
    ld a, [$03fa]
    rra
    ld a, [$a7fc]
    ld de, $5f11
    ld d, e
    or a
    ld e, b
    adc $58
    ret nz

    ld a, [$5ace]
    and d
    db $fc
    and a
    ld l, d
    ld d, h
    ld d, h
    ld d, c
    db $fc
    or d
    nop
    dec bc
    or d
    ld a, [$53b7]
    inc b
    add hl, bc
    and d
    ld a, [$fafb]
    ld d, e
    inc b
    add hl, bc
    ei
    rrca
    or d
    ld a, [$a2fc]
    inc sp
    jr nc, jr_023_6ca5

    and a
    xor b
    or d
    rst $38
    nop

jr_023_6c76:
    ld d, h
    ld h, d
    ld b, b
    xor b
    ei
    ld a, [$fafa]
    ld a, [$0fa1]
    ld a, [$45fc]
    ld d, h
    cp b
    or d
    ld b, a
    ld [hl], b
    xor b
    and d
    ld a, $bc
    ld a, [$52fb]
    add b
    and l
    xor b
    db $fc
    jr nc, jr_023_6c76

    ld a, [$7052]
    or a
    cp b
    ei
    db $fd
    db $fd

jr_023_6c9e:
    db $fd
    ld d, d
    add b
    or d
    ld c, $3e
    db $fd

jr_023_6ca5:
    ld a, [$7052]
    ld a, [$fafc]
    ld d, d
    add b
    db $10
    ldh [$2b], a
    ld b, b
    ld b, d
    jr @-$36

    ret z

    add hl, de
    ld c, h
    inc b
    ld [hl], b
    ld d, h
    ld d, d
    ld a, [de]
    add b
    inc bc
    call z, $531c
    inc b
    add b
    ld [hl], c
    ld h, d
    ld e, b
    ld d, a
    ld h, e
    inc b
    ld [hl], b
    add c
    ld d, b
    nop
    add $f7
    ld d, h
    sub l
    sub l
    sub l
    ld d, h
    ld d, c
    di
    add b
    ld [hl], c
    dec hl
    dec hl
    dec hl
    ld bc, $f306
    ld [hl], b
    add c
    rra
    jr nz, @+$23

    dec hl
    ld d, $17
    add b
    ld [hl], c
    ld [hl+], a
    inc hl
    inc h
    ld [bc], a
    ld [$2b01], sp
    add hl, de
    di
    di
    ld [hl], b
    add c
    inc b
    dec d
    ld d, $2b
    add hl, de
    ld [hl], b
    ld [hl], c
    add b
    ld c, $38
    inc b
    ld [hl], c
    jr jr_023_6d0f

    dec de
    ld bc, $801c
    add c
    jr @+$1e

    dec h
    db $10
    inc b
    inc de
    ld [hl], b
    ld [hl], c

jr_023_6d0f:
    dec d
    inc d
    inc e
    dec d
    ld d, $19
    add b
    add c
    dec d
    jr jr_023_6c9e

    ld bc, $0419
    dec d
    dec c
    rla
    ld [hl], b
    ld [hl], c
    jr jr_023_6d3a

    ld c, $1b
    dec de
    ld bc, $1940
    add b
    add c
    jr jr_023_6d3b

    dec de
    inc e
    ld [hl], b
    ld [hl], c
    ld a, [de]
    ld bc, $7116
    ld a, [de]
    inc b
    add c
    inc b

jr_023_6d3a:
    inc b

jr_023_6d3b:
    add b
    add d
    ld [hl], c
    ld a, [de]
    dec de
    add c
    jr jr_023_6d5a

    ld [hl], b
    ld [hl], d
    add d
    ld [hl], c
    ld [hl], b
    nop
    ld a, b
    inc b
    add c
    add b
    add c
    add b
    add c
    ld d, e
    db $fd
    db $fd
    db $fd
    db $fd
    ld [hl], c
    ld d, e
    rrca
    inc a
    db $fd

jr_023_6d5a:
    add c
    inc b
    call nz, $0404
    ld d, e
    ld [hl], c
    call nz, $c0f0
    db $fd
    db $e3
    call nz, Call_023_5304
    add c
    inc b
    call nz, $4304
    ld h, e
    inc bc
    rrca
    db $fd
    ld d, $17
    inc b
    inc b
    ld d, e
    ld d, c
    dec de
    inc e
    inc b
    inc b
    ld a, $f8
    db $fd
    ld d, e
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld b, e
    ld h, e
    rst $38
    rlca
    db $fd
    ld sp, $3030
    jr nc, jr_023_6dbd

    inc e
    ld [hl], b
    db $fd
    jr nc, jr_023_6dc6

    ld d, d
    ld de, $a4a3
    and l
    db $ec
    ld d, e
    ld d, d
    ld de, $1144
    or e
    or h

jr_023_6d9f:
    or l
    jr c, jr_023_6d9f

    db $fd
    db $fd
    ld d, d
    and c
    rst $28
    and d
    dec l
    ldh a, [$c1]
    ld de, $2d2d
    db $fd
    ld d, d
    ld l, $2e
    ld l, $fd
    ld d, d
    ld [hl], b
    ret nz

    db $fd
    ld de, $1111
    ld c, b
    ld e, e

jr_023_6dbd:
    ret nc

    dec [hl]
    ld b, b
    ld b, b
    ld b, b
    ld h, e
    and b

Call_023_6dc4:
    rst $30
    db $fd

jr_023_6dc6:
    db $fd
    ld d, d
    ld [hl], b
    ld [hl], c
    inc b
    inc c
    db $fd
    ld [hl], b
    ld [hl], d
    ld d, d
    add b
    add c

jr_023_6dd2:
    rst $30
    jr nc, jr_023_6dd2

    inc b
    rst $30
    add b
    add c
    ld d, d
    rlc [hl]
    ret nz

    jp z, $04f2

    dec d
    db $fd
    db $fd
    ld l, b
    ld d, $37
    call nz, $1415
    dec de
    rlca
    dec l
    push hl
    jr jr_023_6e0b

    inc b
    ld a, [de]
    inc e
    ld l, $1c
    inc b
    push hl
    inc de
    inc b
    add a
    inc b
    dec d
    db $fd
    db $fd
    ld b, a
    ld e, $04
    inc de
    ld a, [de]
    db $fd
    db $fd
    and b
    ld [hl], b
    ld d, d
    dec d
    ld c, $16
    rla

jr_023_6e0b:
    ld [hl], c
    jr z, jr_023_6e14

    add b
    add d
    ld [hl], d
    add c
    add c
    add c

jr_023_6e14:
    inc b
    inc b
    add c
    inc b
    rra
    jr nz, @+$23

    ld b, h
    db $10
    inc b
    dec d
    rla
    ld [hl], b
    ld d, $17
    ld [hl+], a
    inc hl
    inc h
    ld a, [de]
    add hl, de
    add b
    dec de
    ld bc, $391e
    inc b
    rla
    jr jr_023_6e48

    ld [hl], b
    jr jr_023_6e4d

    dec d
    ld bc, $04a0
    ld [de], a
    inc e
    add b
    ld d, $01
    add hl, de
    inc b
    ld a, [de]
    inc e
    ld [hl], b
    dec de
    dec de
    inc e
    inc b
    dec e
    ld a, b

jr_023_6e48:
    ld [de], a
    inc b
    add b
    ld [hl], c
    ld [hl], b

jr_023_6e4d:
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld a, h
    ldh [rNR11], a
    add c
    ld e, l
    ld l, [hl]
    add b
    add c
    ld [hl], c
    ld l, l
    ld l, a
    ld c, $20
    ld [de], a
    ld e, [hl]
    add c
    inc b
    inc b
    ld l, l
    ld de, $1111
    ld e, a
    ld c, [hl]
    ld [hl], c
    inc b
    ld a, b
    ret nz

    ld de, $0404
    ld l, l
    ld e, a
    add c
    rra
    jr nz, jr_023_6e97

    inc b
    ld e, l
    add e
    rrca
    ld de, $2271
    inc hl
    inc h
    ld c, l
    add c
    inc b
    inc b
    ld c, l
    ld hl, $1186
    ld b, e
    ld b, b
    ld b, b
    ld b, d
    ld [hl], c
    ld c, l
    ld e, a
    ld d, e
    db $fd
    db $fd
    ld d, d
    sub l
    add b
    add c
    add c
    add c

jr_023_6e97:
    ld [de], a
    sbc h
    ld [de], a
    add c
    add b
    di
    ret nz

    adc $f7
    ld [de], a
    ld [de], a
    ld [de], a
    rrca
    rst $30
    ld c, l
    ld c, [hl]
    ld e, a
    ld c, [hl]
    ld c, $c4
    rst $30
    ld c, l
    ld e, a
    ld de, $386e
    call nz, Call_023_5e11
    rst $30
    ld e, l
    ld de, $c460
    ld l, [hl]
    rst $30
    ld de, $f75e
    ld c, l
    ld sp, $5e11
    ld [de], a
    rst $30
    ld b, e
    ld b, b
    rra
    ld b, b
    ld b, d
    ld de, $7e11
    db $fd
    ld d, e
    ld d, d
    ld a, [hl+]
    ld [bc], a
    add b
    add c
    add c
    add c
    add d
    ld [hl], d
    add c
    rst $30
    inc b
    inc b
    rra
    jr nz, @+$23

    ld [hl], b
    ret nz

    inc b
    add b
    add c
    dec bc
    dec bc
    ld [hl+], a
    inc hl
    inc h
    ld a, [c]
    add hl, bc
    db $fd
    db $fd
    rlca
    ld b, $04
    dec e
    dec bc
    inc c
    ld a, [$f7fd]
    ld [hl], b
    ld [hl], c
    add hl, bc
    ld a, [$18fa]
    ldh [rDIV], a
    ld a, [$f7fd]
    add b
    add c
    add hl, bc
    ld a, [$fafa]
    db $fd
    rst $30
    inc bc
    inc sp
    inc b
    ld b, $06
    ld b, $06
    ld [hl], b
    ld [hl], c
    dec d
    rla
    dec d
    ld d, $81
    ld a, [de]
    dec de
    add hl, de
    and e
    and h
    jr @+$1b

    add b
    add c
    dec bc
    dec bc
    ld e, $13
    and e
    and h
    ld a, [de]
    dec de
    ld d, $16
    db $fd
    db $fd
    ld [$b013], sp
    or d
    ld [hl], b
    ld [hl], c
    ld a, [de]
    dec de
    db $fd
    db $fd
    ld [$141a], sp
    rla
    add b
    add c
    ld [hl], b
    ld [hl], c
    db $fd
    db $fd
    ld a, [bc]
    dec bc
    ld e, $18
    ld d, $17
    add b
    add c
    db $fd
    db $fd
    db $fd
    db $fd
    ld [$0118], sp
    ld bc, $1616
    ld b, $06
    ld b, $a0
    and c
    and c
    and c

jr_023_6f58:
    and d
    dec de
    dec de
    ld d, $16
    ld d, $a3
    and a
    and a
    and a
    and h
    ld [hl], b
    ld [hl], c
    ld d, l
    add b
    add c
    add c
    add c

jr_023_6f6a:
    add c
    ld a, h
    ld d, $80
    add d
    rla
    ldh a, [rNR31]
    call nz, Call_023_70c4
    ld [hl], d
    nop
    ret z

    dec c
    rla
    call nz, $8180
    ld [hl], b
    ld [hl], c
    nop
    ld [hl], b
    ld [hl], c
    ld a, [de]
    dec de
    ret z

    ld d, $17
    rst $30
    dec b
    add b
    add c
    add c
    ld [hl], b
    ld [hl], c
    jr jr_023_6f58

    ld e, $16
    ret z

    rla
    add b
    add c
    jr c, @+$1d

    jr @+$0f

    ret z

    ld bc, $4119
    ld [hl], b
    ld [hl], c
    jr jr_023_6f6a

    add hl, de
    rst $30
    ld [hl], c
    ld de, $1918
    add b
    add c
    ld bc, $7019
    dec b
    add hl, bc
    ld [hl], d
    add d
    add c
    jr jr_023_6fcd

    add b
    add d
    add d
    add d
    add c
    dec d
    dec de
    dec de
    ld a, [de]
    nop
    add b
    rla
    add c
    add c
    dec d
    inc e

jr_023_6fc4:
    ld [hl], e
    ld [hl], h
    ld a, [de]
    rla
    call nz, $f770
    inc b
    ld [de], a

jr_023_6fcd:
    jr nc, jr_023_6fd3

    inc de
    add e
    add h
    inc de

jr_023_6fd3:
    call nz, $1680
    rla
    ld a, [de]
    rla
    dec d
    inc e
    ld [bc], a
    and h
    ld [hl], b
    call nz, $1c1b
    inc b
    ld a, [de]
    inc d
    inc d
    inc e
    inc b
    ld [hl], d
    rst $30
    ld [hl], c
    db $10
    xor d
    ld [hl], d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    add d
    ld [hl], c
    add b
    add d
    add d
    add d
    add d
    ld [hl], d
    add c
    jr jr_023_6fc4

    add hl, de
    add b
    add c
    ld a, [de]
    inc e
    ld [hl], b
    add c
    dec d
    dec de
    dec de
    ret z

    rla
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], d
    ld [hl], c
    inc de
    ld [hl], b
    ld [hl], c
    jr jr_023_702b

    add b
    add c
    add b
    add d
    add c
    inc de
    add b
    add c
    jr jr_023_7037

Jump_023_701c:
    ld d, $17
    inc b
    add b
    ld [hl], c
    ld a, [de]
    ld d, $16
    add hl, de
    inc b
    ld a, [de]
    dec de
    rla
    ld [hl], b
    add c

jr_023_702b:
    inc b
    ld a, [de]
    dec de
    inc e
    inc b
    ld [hl], b
    ld [hl], c
    inc de
    add b
    ld [hl], c
    dec e
    dec bc

jr_023_7037:
    dec bc
    dec bc
    ld e, $80
    add c
    inc de
    and b
    add c
    add hl, bc
    ld a, [$fafa]
    ld [$1615], sp
    add hl, de
    and e
    ld d, d
    ld [hl], b
    ld [hl], d
    add c
    add b
    add d
    ld [hl], d
    add c
    inc de
    ld d, d
    ld d, d
    add b
    add c
    inc b
    inc b
    add b
    add d
    ld [hl], c

Call_023_705a:
    inc de
    ld h, d
    ld d, d
    dec d
    inc d
    inc d
    inc d
    rla
    add b
    add c
    inc de
    ld d, b
    ld d, d
    inc de
    ld [hl], b
    ld [hl], c
    ld c, e
    inc de
    ld c, h
    inc b
    jr jr_023_7084

    ld d, d

Jump_023_7071:
    inc de
    add b
    add c
    ld e, c
    rst $08
    ld e, d
    inc b
    inc de
    ld [hl], b
    ld d, d
    inc de
    ld [hl], b
    ld [hl], c
    ld d, b
    ld d, h
    ld d, c
    inc b
    inc de
    add b

jr_023_7084:
    ld d, d
    inc de
    add b
    add d
    ld [hl], c
    ld a, [de]
    inc d
    inc d
    add hl, de
    ld [hl], b
    ld d, d
    inc de
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    inc de
    add b
    ret z

    jp nz, Jump_023_43fa

    ld b, b
    ld h, e
    or a
    cp b
    and d
    ld h, e
    ld d, h
    ld d, c
    or d
    ld b, $3a
    ld a, [$fcb2]
    ld d, c
    jr jr_023_70c6

    ld b, $07
    and d
    inc d
    dec de
    ld hl, sp+$00
    ld a, [$041c]
    add hl, bc
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld h, h
    ld h, h

jr_023_70bd:
    ld b, $06
    rlca
    inc bc
    ld [$82fa], sp

Call_023_70c4:
    ld [hl], d
    add c

jr_023_70c6:
    di
    di
    inc b
    inc b
    add hl, bc
    ei
    ld [hl], d
    add c
    dec d
    rla
    ld a, [bc]
    inc b
    ld [hl], b
    ld h, h
    ld [hl], c
    ld [hl], c
    and a
    add d
    ld [hl], c
    jr jr_023_70f4

    ld [hl], d
    add d
    ld [hl], d
    and l
    or l
    ld hl, sp-$40
    db $fd
    ei
    ld a, [$52fa]
    ld [hl], b
    ld a, [$fafa]
    or d
    inc bc
    rrca
    db $fd
    ld d, d
    add b
    ld a, [$fcfa]

jr_023_70f4:
    and d
    ld d, d
    ld [hl], b
    ld a, [$3ffa]
    db $fc
    db $fd
    ld d, d
    add b
    ld a, [$f0fa]

jr_023_7101:
    inc bc
    db $fd
    ld d, d
    ld [hl], b
    ld a, [$52fa]
    add b
    xor b
    and a
    xor b
    and a
    ld c, $30
    db $fd
    xor b
    ld h, d
    ld b, b
    and l
    or l
    and l
    or l
    and l

Call_023_7118:
    xor b
    ld d, b
    ld d, h

Jump_023_711b:
    jr z, jr_023_70bd

    ld bc, $0471
    jr @+$2d

    add hl, de
    add b
    add c
    ld [hl], b
    add c
    inc b
    jr @+$2d

    inc b
    jr nc, jr_023_7131

    ld bc, $8017
    ld [hl], c

jr_023_7131:
    and [hl]
    db $eb
    xor b
    dec hl
    dec hl
    dec hl
    add hl, de
    add c
    or [hl]
    inc c
    jr nc, jr_023_7101

    or a
    cp b
    dec hl
    ld bc, $1616
    ld [hl], c
    or $ea
    or $2b
    ret z

    ld [$c8e6], sp
    ld bc, $8101
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld bc, $3f42
    ldh a, [$c8]
    ld h, d
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    ld [de], a
    inc b
    ld [hl], c
    jr @+$1b

    add b
    add c
    add b
    dec b
    add c
    add b
    inc b
    ld a, [de]
    ld bc, $c417
    ld [hl], b

Call_023_7170:
    inc b
    call nz, Call_023_4043
    ld b, b
    jr jr_023_71a7

    ld d, h
    ld bc, $c417
    ld d, e
    ld d, $14
    ret nz

    db $fd
    ld d, $01
    dec de
    inc e
    jp z, $3253

    inc b
    add hl, de
    ld a, [de]
    inc e
    jp z, $f053

    inc b
    db $fd
    db $fd
    ld bc, $0c17
    db $fd
    bit 2, e
    ret z

    ld bc, $0417
    ld b, $c4
    inc b
    ld d, e
    db $fd
    db $fd
    ret z

    ret z

    ret nz

    db $fd
    ld b, e
    ld b, b

jr_023_71a7:
    ld [hl], $d0
    dec [hl]
    ld h, e
    ldh [$83], a
    db $fd
    add c
    add b
    add c
    ld d, e
    ld d, c
    ld b, b
    ld b, b
    ld b, b
    ld h, e
    ld c, a
    rrca
    rst $38
    db $fd
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    db $fd
    ld c, a
    ld sp, $c130
    rlca
    db $fd
    ld sp, $3030
    ld [hl-], a
    ld [hl], b
    ld d, d
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], d
    ld [hl], b
    ld d, h
    db $fd
    ld l, h
    ret nc

    ld d, b
    ld d, c
    rst $00
    db $fd
    ld a, [bc]
    dec bc
    inc c
    rst $38
    db $fd
    rst $38
    db $fd
    cp $30
    ld sp, $04e8
    db $fd
    db $fd
    ld d, d
    call nz, $0403
    jr nc, jr_023_7222

    ld [hl-], a
    call nz, $c4e0
    rst $20
    inc b
    dec d
    ld [hl], c
    ld b, $04
    call nz, $1615
    ret z

    add d
    ld [hl], c
    dec b
    ld [hl], b
    ld [hl], c
    ld [hl], c
    dec d

jr_023_7207:
    ld bc, $c8c8
    inc bc
    inc c
    db $fd
    ld d, d
    jr @+$03

    ld bc, $8019
    add c
    add b
    ld d, d
    jr jr_023_7219

    dec c

jr_023_7219:
    jr nc, jr_023_724b

    db $fd
    add hl, de
    ld b, e
    ld b, b
    ld b, b
    ld d, d
    ld a, [de]

jr_023_7222:
    dec de
    dec de
    inc e
    ld d, e
    jr nc, jr_023_7258

    ld a, [de]
    db $10
    call nz, $0432
    ld d, e
    db $fd
    db $fd
    inc b
    dec d
    ld d, $17
    dec d
    rla
    ld d, e
    jr c, jr_023_7269

    ld bc, $fdfd
    ld d, $14
    dec de
    inc e
    ld d, e
    db $fd
    db $fd
    ld c, $1c
    jr nc, jr_023_7207

    db $fd
    inc b
    inc b
    dec d

jr_023_724b:
    ld d, e
    dec c
    ld bc, $0419
    dec d
    ld d, $01
    ld d, e
    ldh [$81], a
    ld [de], a
    add c

jr_023_7258:
    add b
    add c
    add b
    add c
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, d
    ldh a, [$c0]
    db $fd
    ld [de], a
    ld [de], a
    ld [de], a
    ld [hl], b

jr_023_7269:
    ld d, d

jr_023_726a:
    ld [hl], b
    ld [hl], c
    ld c, l
    ld c, [hl]
    add b
    inc bc
    rrca
    db $fd
    ld d, d
    add b
    add c
    di
    di
    ld [hl], b
    ld d, d
    ld e, a
    ld e, a
    ld de, $f03c
    db $fd
    ld e, [hl]
    add b
    ld b, c
    ld b, b
    ld d, [hl]
    ret nc

    ret nc

    ld d, l
    rst $38
    rst $38
    db $fd
    inc c
    ld [de], a
    ld de, $5d81
    ld l, a
    ld d, e
    db $fd
    db $fd
    ld d, d
    ld [hl], c
    ld e, l
    ld e, [hl]
    ld [de], a
    ld d, e
    inc bc
    inc c
    db $fd
    ld d, d
    ld l, l
    add c
    ld l, l
    ld de, $125e
    ld d, e
    ld d, d
    ld [de], a
    ld [hl], c
    ld [de], a
    jr nc, jr_023_726a

    db $fd
    ld l, l
    ld de, $534e
    ld d, d
    ld [de], a
    add c
    jp z, Jump_023_5dca

    ld de, $0053
    di
    db $fd
    ld d, d
    ld c, [hl]
    ld b, b
    ld b, b
    ld d, [hl]
    ret nc

    ld d, l
    ld b, h
    ld d, d
    ld de, $3fcf
    db $fd
    ld d, d
    ld de, $1152
    ld hl, sp-$1f
    db $fd
    ld de, $5311
    ld d, d
    ld de, $5311
    add a
    rra
    db $fd
    ld d, d
    ld l, l
    ld de, $5253
    ld [de], a
    ld l, l
    ld a, h
    ldh a, [$fd]
    inc sp
    inc [hl]
    ld d, d
    ld [de], a
    ld [de], a
    ld l, l
    ld d, e
    pop bc
    rlca
    db $fd
    ld d, d
    ld c, [hl]
    ld [de], a
    ld [de], a
    ld d, e
    ld d, d
    ld de, $4043
    ld b, h
    rra
    ld a, a
    db $fd
    ld d, d
    ld de, $5253
    call z, $0410
    add b
    add c
    jr @+$1e

    ld a, [de]
    dec de
    ld [hl], b
    ld [hl], c
    dec d
    add hl, de
    dec e
    add hl, bc
    nop
    dec bc
    ld [hl], b
    ld [hl], c
    add b
    add c
    inc b
    ld a, [de]
    inc e
    add hl, bc
    ld a, [$8180]
    ld a, [$7170]
    ldh a, [rP1]
    ld a, [$7004]
    ld [hl], c
    add hl, bc
    add b
    add c
    inc b
    add b
    add c
    inc b
    ld b, $06
    jr nc, jr_023_7371

    inc b
    ld b, $06
    ld [hl], b
    ld [hl], c
    dec d
    rla
    ld [hl], b
    ld [hl], c
    dec d
    add b
    add c
    dec d
    db $10
    ld a, c
    inc b
    ld bc, $801c
    add c
    jr jr_023_73b3

    ld [hl], c
    jr jr_023_735f

    jr @+$72

    nop
    or c
    dec de
    dec de
    ld bc, $b2b0
    add b
    add d
    dec bc
    ld e, $18
    add hl, de
    inc b
    call nz, $1607
    call nz, $fa80
    ld [$1918], sp

jr_023_735f:
    inc b
    add $70
    ld a, [$7808]
    ret nz

    call nz, $c818
    rla
    add b
    ld b, $15
    ret z

    ret z

    inc e
    inc b

jr_023_7371:
    ret nz

    add a
    inc b
    call nz, $1670
    ret z

    ret z

    inc e
    add b

jr_023_737b:
    ld bc, $1cc8
    rra
    nop
    inc b
    ld [hl], b
    ld bc, $7019
    ld [hl], c
    ld [hl], b
    ld [hl], c
    dec d
    rla
    ld [hl], b
    ld [hl], d
    ld b, h
    jr jr_023_7401

    add c
    add hl, de
    ld [hl], b
    ld [hl], c
    ret z

    ld hl, $8019
    add c
    dec d
    ret z

    add b
    add c
    ld hl, $c818
    add hl, de
    ld [hl], b
    ld [hl], c
    ret z

    add hl, de
    add h
    jr jr_023_7417

    ld [hl], c
    ret z

    add hl, de
    add b
    add c
    ld b, d
    add hl, de
    ret z

    add b
    add c
    jr jr_023_737b

jr_023_73b3:
    ld [hl], b
    call z, $71c8
    jr jr_023_73cf

    ld d, $e0
    ret z

    add hl, de
    add b
    add c

jr_023_73bf:
    ld a, [de]
    dec de
    ld b, $01
    ret z

    ld d, $71
    ld [hl], b
    ld [hl], c
    ld a, [de]
    ccf
    dec de
    add d
    ld [hl], d
    xor d
    ld [hl], b

jr_023_73cf:
    add c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    add c
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add d
    ld [hl], c
    inc b
    inc b
    dec d
    ld d, $17
    dec e
    dec bc
    dec bc
    ld [hl], d
    add c
    sub b
    sub c
    jr jr_023_73bf

    add hl, de
    add hl, bc
    ld a, [$81fa]
    inc b
    dec a
    ld a, $1a
    dec de

jr_023_7401:
    inc e
    add hl, bc
    ld a, [$16fa]
    rla
    sub b
    sub c
    rra
    jr nz, @+$23

    and b
    and c
    and c
    dec de
    inc e
    dec a
    ld a, $22
    inc hl
    inc h
    and e

jr_023_7417:
    and a
    and a
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    and e
    and a
    and a
    inc e
    ld a, [$0971]
    ld [$1b1a], sp
    ld [hl], b
    ld a, [$a31c]
    add c
    add hl, bc
    ld a, [bc]
    rla
    dec bc
    and e
    inc c
    ld a, [$1efa]
    db $fd
    ld a, [$faa3]
    ld a, [$fd78]
    ld a, [$fafa]
    and e
    ld hl, sp-$03
    ld a, [$fafa]
    pop hl
    db $fd
    and e
    and d
    ld a, [$e6fa]
    ld b, $05
    and e
    and h
    jr jr_023_7459

    ld b, $06
    ret nz

    and e

jr_023_7459:
    and h
    ld [hl], b
    ld d, l
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld [hl], b
    and e
    ld d, d
    inc de
    add b
    add d
    ld [hl], d
    add d
    ld [hl], d
    add c
    inc de
    ld [hl], b
    ld d, d
    inc de
    ld [hl], b
    ld [hl], d
    add c
    add b
    add c
    ld [hl], b
    ld [hl], c
    add b
    ld d, d
    di
    add b
    add c
    dec d
    inc d
    rla
    add b
    add c
    ld [hl], b
    ld d, d
    call nz, Call_023_7170
    inc de
    and $18
    inc d
    rla
    add b
    ld d, d
    call nz, $8180
    ld a, [de]
    inc d
    inc e
    inc b
    inc de
    ld [hl], b
    ld d, d
    di
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ret nz

    add b
    ld d, d
    inc de
    add b
    add d
    ld [hl], d
    add d
    ld [hl], d
    add c
    inc de
    ld [hl], b
    ld d, d
    inc de
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], d
    add d
    ld [hl], c
    inc de
    add b
    ld [bc], a
    inc b
    add c
    ld [hl], d
    jr @+$1b

    add b
    xor c
    cp c
    or h
    or a
    cp b
    dec d
    ld c, $1c
    and e
    cp c
    ld c, $3c
    db $fd
    or h
    ld [hl], c
    di
    di
    and e
    cp c
    or h
    add c
    di

jr_023_74ce:
    adc b
    jr nc, jr_023_74ce

    and e
    cp c
    or h
    or d
    or d
    or d
    ld [hl], c
    add hl, bc
    or e
    or h
    and d
    and [hl]
    ld [c], a
    adc b
    db $fd
    or d
    add c
    inc b
    rlca
    and d
    and d
    and d
    ld [hl], c
    inc b
    add hl, bc
    rrca
    ld a, $fd
    ld a, [$81fa]
    inc b
    add hl, bc
    ld a, [$c0fa]
    sbc h
    db $fd
    or a
    cp b
    or a
    and l
    or l
    cp b
    ld c, a
    ld c, a
    or a
    cp b
    rst $38
    rst $38
    db $fd
    rst $38
    ccf
    db $fd
    ld sp, $fc30
    nop
    db $fd
    jr nc, jr_023_753e

    ld h, d
    ld b, b
    ld b, b
    ld b, b
    ld a, [$05fa]
    ld b, $38
    and b
    ld d, h
    ld b, $06
    ld b, l
    ld a, [$08fa]
    inc b
    ld [hl], b
    ld [hl], c
    ld b, l
    ld l, d
    ld a, [de]
    ld d, h
    ld d, b
    add sp, $52
    ret z

    ret z

    inc e
    db $fd
    ret z

    ret z

    ld c, a
    ld c, a
    ld d, d
    rrca
    ret z

    db $fd
    db $fd
    db $fd
    db $fd
    inc a
    ld b, b
    db $fd
    ld h, d
    db $fd
    db $fd

jr_023_753e:
    ldh a, [rHDMA4]
    db $fd
    db $fd
    db $fd
    ld d, b
    db $fc
    db $fd
    inc [hl]
    ld c, a
    db $eb
    db $fd
    ld h, e
    ld c, a
    rrca
    db $fd
    ld b, [hl]
    jr nc, jr_023_7581

    jr nc, jr_023_7592

    jr nc, jr_023_759b

    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    inc bc
    inc c
    ret z

    ld d, e
    ld d, h
    ld d, c
    ret nc

    ld d, b
    ld d, c
    db $fd
    db $fd
    ld d, e
    ld a, [c]
    ld hl, sp-$08
    ld c, $38
    db $fd
    add hl, bc
    ld b, b
    ld b, b
    ld h, e
    ld hl, sp-$08
    ld hl, sp+$09
    ld d, h
    ld d, h
    ldh [rIE], a
    db $fd
    ld d, c
    dec bc
    dec bc
    dec bc
    inc c
    rst $38

jr_023_7581:
    rlca
    db $fd
    ld sp, $3030
    jr nc, jr_023_75b8

    rra
    nop
    jr nc, jr_023_75be

    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b

jr_023_7592:
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    rra
    ld a, h
    db $fd
    ld d, d
    add b

jr_023_759b:
    add d
    or [hl]
    ld [hl], d
    ld d, d
    ldh a, [$c0]
    db $fd
    ld h, h
    add b
    db $ed
    add d
    ld sp, $0432
    ld h, h
    inc de
    add b
    inc bc
    rrca
    db $fd
    ld d, d
    ld h, h
    inc b
    inc b
    inc de
    ld [hl], b
    ld d, d
    inc b
    ld h, h

jr_023_75b8:
    inc b
    nop
    inc bc
    inc b
    inc de
    add b

jr_023_75be:
    jr nc, jr_023_7626

    ret nc

    ld h, l
    ld [hl-], a
    ld h, h
    inc de
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld a, [de]
    inc d
    rrca
    nop
    inc d
    inc e
    add b
    ld [hl], d
    add d
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], b
    jr z, jr_023_75eb

    add c
    add d
    or [hl]
    ld [hl], d
    add b
    jr @-$06

    ret z

    ret z

    ld [hl], d
    db $ed
    inc b
    inc b
    dec d
    ret nz

    nop

jr_023_75eb:
    inc b
    ld c, $c8
    ld c, $c8
    add c
    inc de
    dec d
    ld hl, sp+$0d
    ld hl, sp+$43
    ld b, b
    ld [hl], c
    jr jr_023_7617

    ld hl, sp-$08
    ld d, $16
    ld c, $53
    db $fd
    add c
    jr jr_023_7613

    ld h, b
    ld bc, $53f8
    db $fd
    ld [hl], c
    ld a, [de]
    dec c
    ld c, $0d
    ld d, e
    db $fd
    add c
    inc b

jr_023_7613:
    ld a, [de]
    dec de
    add b
    and b

jr_023_7617:
    ld [hl], b
    ld bc, $1bf8
    dec de
    inc sp
    jr nc, jr_023_7690

    ld [hl], c
    rst $30
    jr jr_023_763c

    rst $30
    ld [hl], c
    ld [hl+], a

jr_023_7626:
    add h
    ld bc, $190d
    inc b
    jr jr_023_763b

    ld d, e
    db $fd
    db $fd
    ld c, $19
    inc b
    jr jr_023_7676

    dec b
    ld bc, $fd38
    db $fd
    ld b, b

jr_023_763b:
    ld b, d

jr_023_763c:
    ld d, $0d
    cpl
    cpl
    cpl
    db $fd
    ld d, d
    inc e
    nop
    ld bc, $1b1b
    ld c, b
    db $fd
    db $fd
    db $fd
    ld d, d
    inc b
    inc b
    ld a, [de]
    dec de
    ld c, $53
    rlca
    inc c
    db $fd
    ld d, d
    inc b
    inc b
    ld [hl], b
    ld [hl], c
    ld a, [de]
    ld d, e
    jr nc, jr_023_7691

    ld [hl], b
    ld [hl], c
    ld b, b
    inc d
    ld [hl], c
    add b
    add c
    inc b
    ld d, e
    db $fd
    db $fd
    ld [hl], b
    ld [hl], d
    add d
    ld [hl], b
    inc sp
    jr nc, jr_023_76a1

    rst $38
    db $fd
    ldh a, [$30]
    db $fd

jr_023_7676:
    db $fd
    db $fd
    add hl, sp
    jr nc, jr_023_76aa

    jr nc, jr_023_76b1

    db $fd
    db $fd
    ld [de], a
    di
    ld [hl], b
    db $fd
    ret z

    ret


    ret z

    ld d, e
    ld b, a
    inc c
    ld h, h
    di
    pop af
    ret


    ld d, e
    db $fd
    db $fd

jr_023_7690:
    ld [hl], b

jr_023_7691:
    ret


    db $fd
    ld d, d
    ret nz

    ret z

    ld d, e
    ldh a, [rLCDC]
    db $fd
    db $fd
    db $fd
    ld b, c
    db $fc
    db $fd
    ld b, b
    ld b, h

jr_023_76a1:
    ccf
    db $fd
    jr nc, @+$32

    rst $38
    jr nc, @+$01

    inc b
    db $fd

jr_023_76aa:
    ld d, d
    ld l, l
    ld sp, $3030
    jr nc, jr_023_76e1

jr_023_76b1:
    inc h
    sub b
    ld d, d
    inc [hl]
    db $fd
    ld [de], a
    db $fd
    and $f2
    rst $10
    rst $10
    ld d, e
    db $fd
    ld [de], a
    db $fd
    inc bc
    inc c
    ld [de], a
    rst $10
    rst $10
    ld d, e
    db $fd
    ld d, d
    ld c, [hl]
    db $fd
    ld d, d
    rst $10
    rst $10
    ld d, e
    db $fd
    inc b
    ld a, [c]
    db $fd
    ld d, d
    ld de, $5641
    ret nc

    ld d, l
    ld b, b
    ld b, h
    ld d, d
    ld l, a
    ret nz

jr_023_76dd:
    ccf
    jr nc, jr_023_76dd

    db $fd

jr_023_76e1:
    db $fd
    db $fd
    ld d, d
    ld [hl], b
    ld [hl-], a
    add b
    db $fc
    pop af
    db $fd
    ld de, $5253
    ld l, l
    ld d, e
    rst $00
    rlca
    db $fd
    ld d, d
    ld [de], a
    ld d, e
    ld sp, $3230
    ld [de], a
    ld d, e
    rra
    nop
    db $fd
    ld d, d
    ld [hl], b
    ld [hl], c
    ld e, a
    inc sp
    jr nc, jr_023_776a

    ret nc

    ret nc

    ld h, l
    ld [hl-], a
    ld hl, sp+$00
    ld de, $8180
    ld l, a
    ld l, [hl]
    ld [de], a
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld l, l
    ld l, a
    ld l, a
    ld [$7015], sp
    ld l, a
    ld l, [hl]
    ld [de], a
    ld [hl], d
    add c
    add d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], d
    add d
    ld [hl], c
    add b
    add c
    inc b
    jr jr_023_772b

    inc d

jr_023_772b:
    inc d
    ld d, $16
    ret z

    ld [hl], b
    ld [hl], c
    inc b
    jr jr_023_774d

    ld [hl], b
    ld [hl], c
    jr jr_023_7739

    dec de

jr_023_7739:
    add b
    add c
    inc b
    jr jr_023_7757

    add b
    add c
    ld a, [de]
    inc e
    ld [hl], b
    ld [hl], b
    ld [hl], c
    dec d
    ld bc, $041c
    inc b
    inc b
    ld a, [c]
    add b

jr_023_774d:
    add b
    add c
    jr jr_023_776a

    ld [hl], b
    ld [hl], c
    inc b
    dec d
    ld d, $14

jr_023_7757:
    ld [hl], b
    ld [hl], c
    ld a, [de]
    add hl, de
    add b
    add c
    inc b
    jr jr_023_7779

    inc b
    add b
    add c
    inc b
    ld a, [de]
    ld d, $16
    ld d, $1b
    inc e

jr_023_776a:
    ld [hl], b
    ld [hl], b
    ld [hl], c
    inc b
    inc b
    jr jr_023_777f

    inc e
    ld [hl], b
    ld [hl], c
    add b
    nop
    ret z

    inc e
    add b

jr_023_7779:
    add d
    ld [hl], d
    add c
    jr jr_023_7797

    adc b

jr_023_777f:
    inc b
    dec [hl]
    ld b, d
    inc e
    ld [hl], b
    ld [hl], d
    add c
    nop
    jr jr_023_77a2

    ld d, b
    ld d, d
    ld [hl], c
    ld [hl], b
    ld [hl], d
    add c
    inc bc
    inc b
    jr jr_023_77ac

    call nz, $8152
    add b

jr_023_7797:
    nop
    add c
    inc b
    dec d
    ld d, $01
    inc e
    call nz, $0752
    inc d

jr_023_77a2:
    ld d, $0e
    ld bc, $041c
    inc e
    inc b
    call nz, $1a52

jr_023_77ac:
    dec de
    inc e
    and b
    ld [hl], b
    inc b
    call nz, Call_023_52c4
    ld [hl], c
    ld [hl], c
    dec d
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld d, d
    add c
    add b
    ld d, l
    add c
    add b
    add b
    add b
    ld d, d
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b

jr_023_781f:
    db $f4
    ld [bc], a
    add hl, bc
    inc de
    ld d, d
    add b
    add d
    ld [hl], d
    add d
    ld [hl], d
    add c
    ld [hl], b
    ld d, d
    inc b
    add b
    add d
    ld [hl], d
    add d
    inc b
    inc b
    add c
    inc de
    add b
    ld d, d
    jr jr_023_7850

    add b
    add c
    dec d
    add hl, de
    ld [hl], b
    ld d, d
    jr jr_023_7862

    ld c, b
    ret z

    rla
    inc b
    inc b
    dec d
    add hl, de
    add b
    ld d, d
    ld a, [de]
    dec de
    ld d, $16
    ld c, $18

jr_023_7850:
    ld b, b
    inc b
    add hl, de
    ld [hl], b
    ld d, d
    jr jr_023_781f

    ret


    ret z

    ret z

    add hl, de
    add b
    ld d, d
    jp nz, $8018

    rst $38
    ld b, b

jr_023_7862:
    ret z

    ret z

    ret


    ret z

    ret z

    ld d, $62
    ld hl, sp-$03
    ld [hl], c
    inc b
    add hl, bc
    ldh [$fd], a
    ld a, [$81fa]
    inc b
    add hl, bc
    ld h, b
    inc b
    db $fd
    db $fd
    ld a, [$71fa]
    ld b, $3f
    ld b, $81
    ld [hl], b
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    xor d
    add b
    ld [hl], c
    add c
    add c
    add c
    ldh a, [rNR21]
    add c
    add b
    add c

jr_023_7892:
    dec d
    dec e
    ld d, $c9
    ret z

    ret z

    ld c, $35
    ret z

    ret


    ld c, $40
    ld b, b
    rst $38
    ld b, b
    inc bc
    inc c
    ld a, [$0408]
    add b
    add c
    ld d, b
    ld [c], a
    ld d, e
    ld d, h
    ld [$7004], sp
    ld [hl], c
    jp $040c


    ld d, e
    ld [hl], b
    ld b, $06
    add b
    add c
    ld d, e
    add b
    ld [hl], c
    dec d
    add h
    nop
    ld [hl], b

Call_023_78c0:
    ld d, $17

jr_023_78c2:
    ld [hl], c
    sub b
    sub c
    ld d, e
    add c
    jr jr_023_7892

    add hl, de
    add b
    add c
    dec a
    ld a, $38
    ret nc

    ret z

    ld d, e
    add b
    ld d, $16
    ld d, $16
    ld d, $53
    ld [hl], b
    ld c, $c0
    ccf
    ld b, b
    ret z

    ret z

    ld bc, $53c8
    add b
    ld h, e
    ld [hl], b
    xor d
    add b
    ld d, c
    add c
    add c
    add c
    ld hl, sp+$04
    add c
    add b
    ld [hl], c
    ld l, b
    inc b
    dec d
    ld d, $17
    add c
    dec d
    jr jr_023_78c2

    rla
    di
    jr jr_023_7914

    ld [hl], c

jr_023_78ff:
    inc b
    sub [hl]
    ret z

    dec d
    ld d, $01
    dec c
    ld a, b
    ret z

    add c
    di
    jr jr_023_78ff

    ld hl, $c81b
    ld [hl], c
    inc b
    ld a, [de]
    ret


    ret z

jr_023_7914:
    db $e4
    inc b
    dec c
    inc e
    ld a, [de]
    add c
    or b
    inc b
    ld a, [de]
    dec de
    inc e
    di
    ld [hl], c
    db $fc
    ld b, b
    inc b
    dec [hl]
    xor d
    nop
    add b
    add c
    add c
    add c
    add c
    add d
    ld [hl], d
    inc b
    inc b
    ld a, [c]
    jp z, $caca

    ret nz

    inc e
    inc b
    jp z, $80ca

    add c
    ld d, $17
    dec d
    rla
    rst $30
    ret z

    ld bc, $e0e0
    dec hl
    ld d, $16
    dec de
    inc e
    inc b
    ret z

    ret z

    ld bc, $0419
    add c
    rlca
    inc b
    rst $30
    ld bc, $c8c8
    ld bc, $7017
    ret z

    ld c, $01
    ret z

    ld b, b
    db $fc
    ld b, b
    ret z

    ld d, $17
    inc b
    inc b
    add b
    ld e, b
    adc $57
    ccf
    and a
    add c
    add b
    or h
    or $81
    add b
    ld [$0fb7], a
    ld d, $f7
    dec hl
    dec hl
    dec hl
    rst $38
    dec hl
    ccf
    dec de
    ld bc, $7c01
    dec bc
    rst $30
    dec e
    ld e, $f0
    ld hl, sp+$18
    ld bc, $0971
    pop bc
    ld hl, sp+$08
    jr jr_023_7990

    add c

jr_023_7990:
    add hl, bc
    rlca
    ld hl, sp+$08
    ld a, [de]
    dec de
    ld b, b
    ld b, b
    ccf
    ld b, b
    ld b, d
    ld [hl], b
    nop
    inc a
    ld d, $81
    add b
    add c
    rst $30
    jr jr_023_79be

    rst $30
    add b
    add c
    add b
    ld bc, $f001
    ccf
    dec hl
    ld d, $16
    ld d, $16
    ld bc, $1419
    nop
    dec de
    ld d, l
    ld b, d
    dec hl
    ld b, e
    ld d, [hl]
    jr jr_023_79cb

jr_023_79be:
    ld bc, $6217
    ld e, b
    adc $57
    ld h, e
    ld c, $68
    ld bc, $1915
    ld d, b

jr_023_79cb:
    ld d, h
    ld d, h
    ld d, h
    ld d, c
    jr jr_023_79ec

    ld d, $20
    ld [hl], a
    ld bc, $9317
    dec d
    ld d, $0e
    ld [hl], c
    jr jr_023_79f3

    dec c
    dec d
    add c
    add b
    add b
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld [hl], b
    jp z, Jump_023_7071

    ld d, $17
    add b

jr_023_79ec:
    ret nz

    ld d, $81
    add b
    add c
    add b
    dec hl

jr_023_79f3:
    dec hl
    ccf
    ld d, $0e
    dec hl
    rst $38
    dec hl
    ld h, b
    ret z

    ld c, $01
    dec c
    ld d, l
    ld b, d
    dec hl
    inc e
    ld bc, $c8c8
    add hl, de
    ld h, d
    ld b, b
    ld d, b
    ld bc, $d036
    dec [hl]
    ld b, b
    ld c, $19
    ld de, $5450
    ld d, c
    ret nc

    ld d, h
    dec c
    ld bc, $c81c
    ld bc, $2b19
    ld [hl], b
    ld [hl], c
    xor d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    xor b
    add b
    ld [hl], c
    ld [hl], b
    add c
    add c
    add c
    ld [hl], b
    ld d, $81
    add b
    add d
    ld [hl], d
    and e
    ret nz

    dec hl
    db $eb
    and h
    db $eb
    and l
    add b
    add d
    inc e
    or h
    dec hl
    or e
    or l
    and a
    add b
    add sp, -$0a
    ret z

    ret z

    dec hl
    ld [$2bf0], a
    or $70
    ld b, d
    ret z

    rlca
    inc b
    add b
    ld d, d
    ret z

    ret z

    ld c, $00
    dec de
    inc e
    rst $30
    ldh [rDIV], a
    ld [hl], b
    ld d, d
    jr jr_023_7ab4

    ld [hl], b
    ld bc, $7119
    ld [hl], c
    ld [hl], d
    xor b
    add b
    add d
    ld [hl], d
    add c
    add c
    add c
    ldh [rNR21], a
    add d
    ld [hl], d
    ld [hl], d
    add c
    dec d
    nop
    ld d, $17
    add b
    add d
    add c
    dec d
    ld c, $0d
    ld b, $01
    dec de
    ld c, $17
    add b
    ld [hl], c
    jr jr_023_7ae7

    ld bc, $ac19
    jr jr_023_7a98

    ld d, $48
    ld bc, $1a81
    dec de
    ld d, $0d
    dec de
    jp Jump_023_711b


    ld [hl], b

jr_023_7a98:
    ld [hl], c
    ld a, [de]
    ld a, [bc]
    ld [hl], b
    inc e
    ld [hl], c
    add d
    ld [hl], d
    add d
    ld [hl], c
    dec b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    add d
    ld [hl], d
    add b
    add c
    ld d, l
    add b
    add c
    add c
    add c
    add c
    ld d, l
    ld bc, $8272

jr_023_7ab4:
    add d
    add d
    add d
    add d
    add c
    add b
    add c
    add b
    add c
    add b
    add b
    add hl, de
    inc b
    add c
    add b
    add c
    add b
    ld [hl], c
    jp z, $15ca

    rla
    dec d
    add c
    jp z, $3804

    inc b
    jp z, $1aca

    dec de
    inc d
    ld d, $f8
    ld [hl], c
    ld b, e
    ld d, [hl]
    call nz, Call_023_70c4
    rst $00
    inc b
    ld a, [de]
    ld hl, sp-$7f
    ld d, e
    call nz, Call_023_7118
    ld d, e

jr_023_7ae7:
    rlca
    inc bc
    inc b
    dec d
    ld d, $f8
    add c
    ld d, e
    dec d
    ld d, $16
    ld bc, $f8f8
    db $10
    or b
    ld hl, sp+$72
    add c
    dec d
    ld d, $01
    rla
    add b
    add d
    ld [hl], c
    add c
    dec d
    dec c
    and b
    jp $01f8


    rla
    add b
    add c
    ld d, $0d
    ld c, $19
    ld [hl], b
    ld [hl], c
    rrca
    sbc e
    ld hl, sp+$01
    add hl, de
    add b
    add c
    dec c
    ld c, $0d
    nop
    ld [$16f8], a
    ld d, $01
    ld c, $01
    ld c, $0e
    ld bc, $0d0e

jr_023_7b28:
    dec c
    call c, $f877
    dec c
    ld c, $1b
    ld bc, $fe31
    ld bc, $3130
    ld [hl-], a
    ld d, d
    rst $20
    rrca
    rrca
    ld de, $e00f
    ld de, $1140
    ld e, [hl]
    ld h, h
    ld h, h
    ld h, d
    ld e, b
    adc $57
    ld b, d
    ld d, b
    ld d, h
    ld a, a
    nop
    ld d, h
    ld d, d
    ld d, $17
    ret nz

    jr jr_023_7b54

    add hl, de

jr_023_7b54:
    sub e
    inc de
    add h
    nop
    ld bc, $52ca
    add hl, de
    ret nz

    jr @+$10

    ld d, $19
    jp z, $1b52

    inc e
    ret nz

    jr jr_023_7b28

    ld a, a
    jr nc, jr_023_7b6c

    dec c

jr_023_7b6c:
    ld bc, $ca19
    ld d, d
    ld [hl-], a
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4

jr_023_7baa:
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    cp $54
    ld d, b
    ldh [$a9], a
    ld d, h
    ld d, h
    and c
    and d
    and h
    ld b, $01
    and l
    dec de
    or c
    or d
    and a
    or a
    nop
    or [hl]
    or a
    xor b
    dec de
    inc e
    xor d
    or e
    dec hl
    ld a, [bc]
    or [hl]
    and a
    rst $28
    xor b
    rst $10
    rst $10
    cp d
    jr c, jr_023_7baa

    and e
    dec hl
    and a
    xor b
    dec hl
    dec bc
    dec hl
    or e
    or h
    cp c
    ret nc

    cp c
    ld [c], a
    dec hl
    or l
    ld bc, $a31b
    adc a
    dec hl
    add hl, de
    xor d
    or e
    ld a, $01
    ld c, $19
    cp d
    rst $38
    inc bc
    ld d, h
    dec de
    inc e
    or e
    and e
    or e
    and e
    add b
    rlca
    dec hl
    or e
    and e
    and c
    and d
    xor e
    or e
    and e
    push hl
    or c
    or d
    cp e
    and e
    dec d
    ld a, a
    dec hl
    push de
    push de
    push hl
    push hl
    and e
    call nz, $c150
    dec hl
    push hl
    or e
    dec de
    ld bc, $d5d5
    call nz, $a3c4
    xor e
    jr jr_023_7c5e

    ld b, b
    dec hl
    or e
    cp e
    jr @+$03

    ld bc, $010e
    ld bc, $a30e
    ld d, h
    ld d, h
    ld d, h
    and h
    db $eb
    and l
    cp b
    ld d, h
    ld d, c
    add b
    and d
    and e
    res 6, h
    or l
    or [hl]
    ld [$f7f7], a

jr_023_7c5e:
    and d
    or d
    or e
    dec hl
    or $ea
    or $2b
    ld d, $17
    or d
    and d
    and e
    dec hl
    dec hl
    dec hl
    rst $30
    dec hl
    ld bc, $a219
    or d
    or e
    jr jr_023_7c78

    add hl, de

jr_023_7c78:
    rst $30
    ld a, [de]
    dec de
    inc e
    or d
    and d
    and e
    jr jr_023_7c82

    add hl, de

jr_023_7c82:
    rst $30
    rra
    jr nz, jr_023_7ca7

    and d
    or d
    or e
    ld a, [de]
    dec de
    inc e
    rst $30
    ld [hl+], a
    inc hl
    inc h
    or d
    ld b, e
    ld b, b
    ld [hl], $0b
    dec bc
    dec [hl]
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, $38
    inc b
    add c
    ld d, b
    ld d, h
    ld d, h
    add sp, $54
    ld d, h
    ld d, h
    and e

jr_023_7ca7:
    ld e, l
    rrca
    inc c
    ccf
    ld de, $0f0f
    or e
    inc b
    inc b
    ld c, l
    and e
    inc b
    ld hl, sp+$00
    ld b, b
    ld c, l
    ld de, $b335
    ld c, l
    ld de, $500f
    ld d, h
    ld d, h
    ld d, h
    or b
    jp Jump_023_5411


    ld d, h
    and e
    ld e, l
    rrca
    xor a
    xor a
    or e
    ld e, l
    rlca
    ld c, $11
    xor a
    xor a
    xor a
    ld b, b
    ld b, b
    ld b, d
    ld b, e
    ld [hl], $af
    xor a
    rst $38
    inc bc
    ld d, h
    ld de, $0f0f
    ld de, $1111
    db $fd
    inc hl
    ld de, $5e6f
    call nz, Call_023_405d
    ld b, b
    add b
    jr c, jr_023_7d30

    ld b, d
    rrca
    ld de, $b70f
    adc $57
    ld d, h
    ld d, h
    ld h, d
    ld h, e
    ld d, h
    inc c
    db $fc
    xor a
    ld d, h
    ld d, h
    ld d, b
    xor d
    add sp, -$46
    ld d, c
    db $eb
    rst $38
    rst $38
    xor a
    rst $38
    ld d, h
    inc e
    ld de, $8052
    xor a
    xor a
    xor a
    ldh a, [rNR11]
    xor a
    xor a
    ld d, d
    ld [hl], b
    rrca
    xor a
    ld d, d
    add b
    ld b, b
    ld b, b
    rlca
    ld b, b
    ld [hl], $af
    xor a
    ld d, d
    ld [hl], b
    rra
    ld d, h
    ld d, c
    xor a
    xor a
    call c, Call_023_52af
    add b
    xor c

jr_023_7d30:
    di
    xor a
    ld d, d
    ld [hl], b
    rst $08
    xor a
    ld d, d
    add b
    rra
    xor a
    xor c
    ld d, d
    ld [hl], b
    call z, $8101
    jr @+$10

    dec hl
    ldh [$2b], a
    ld bc, $710d
    jr jr_023_7d4b

    ld a, [bc]

jr_023_7d4b:
    ld bc, $0e0e
    add c
    jr jr_023_7d5e

    dec hl
    rra
    ld hl, sp+$01
    ld [hl], c
    jr jr_023_7d90

    dec c
    ld bc, $f82b
    ld hl, sp+$0e

jr_023_7d5e:
    ldh [$0d], a
    add c
    jr jr_023_7d64

    dec hl

jr_023_7d64:
    ld hl, sp-$3f
    ld hl, sp+$01
    ld [hl], c
    jr jr_023_7d78

    dec hl
    rlca
    ld hl, sp+$01
    add c
    jr jr_023_7d73

    dec hl

jr_023_7d73:
    ccf
    dec hl
    ld [hl], c
    jr jr_023_7d93

jr_023_7d78:
    ld bc, $0e0e
    dec hl
    ld c, $70
    ld hl, sp-$38
    dec c
    dec de
    dec de
    inc e
    dec hl
    add b
    add c
    add hl, de
    ld hl, $c886
    dec hl
    ld [hl], b
    ld [hl], c
    add hl, de
    and b

jr_023_7d90:
    and c
    and d
    dec hl

jr_023_7d93:
    add b
    add c
    add hl, de
    jr jr_023_7dfa

jr_023_7d98:
    ret z

    or b
    or c
    or d
    dec hl
    ld [hl], b
    ld [hl], c
    add hl, de
    or $ea
    or $2b
    jr nz, jr_023_7d98

    dec hl
    add b
    add c
    ld bc, $1616
    ld d, $17
    ld a, [c]
    ret z

    ret z

    ccf
    nop
    dec hl
    ld bc, $0e01
    ld bc, $0101
    add hl, de
    ret z

    ret z

    ret z

    inc b
    db $10
    ld bc, $1852
    add hl, de
    add b
    add d

jr_023_7dc6:
    ld [hl], d
    add c
    add b
    add d
    ld d, d
    jr jr_023_7de6

    ld [hl], b
    ld [hl], d
    jr nz, jr_023_7dd9

    ld a, [de]
    add c
    dec d
    rla
    add b
    ld d, d
    dec de
    inc e

jr_023_7dd9:
    add b
    add c
    jp z, Jump_023_701c

    ld e, c
    rst $08
    nop
    ld e, $54
    ld d, a
    ld b, b
    ld b, b

jr_023_7de6:
    ld [hl], $d0
    dec [hl]
    ld b, d
    add b
    ld d, b
    ld d, c
    ret nc

    ld d, b
    inc a
    ret nz

    ret z

    ld h, d
    ld b, b
    ld d, $16
    dec hl
    rla
    ld d, b
    ld d, h

jr_023_7dfa:
    dec hl
    dec hl
    add h
    rst $38
    dec hl
    ret z

    dec c
    dec c
    ld d, $16
    ret z

    jr nc, jr_023_7dc6

    ld [hl], d
    add c
    and h
    and l
    and [hl]
    and a
    ld b, $82
    add b
    ld [hl], c
    or h
    or l
    and b
    and b
    jr @+$74

    or [hl]
    or a
    ld [hl], b
    add d
    ld [hl], c
    xor b
    sub b
    ld [hl], d
    and c
    and c
    xor e
    ld [hl], b
    add d
    add d
    nop
    add c
    cp b
    cp c
    cp d
    cp e
    add b
    add d
    ld [hl], d
    ld [hl], b
    cp a
    ld b, b
    ld b, b
    ld [hl], $f2
    dec [hl]
    ldh [$d0], a
    ld b, b
    ld b, b
    ld d, h
    ld d, h
    ld d, c
    ldh a, [$c8]
    ret nc

    ld d, b
    ld d, h
    ld d, h
    jp $162b


    rla
    ld [hl], b
    ld [hl], c
    rrca
    dec hl
    ld bc, $8019
    add d
    ldh [$c3], a
    ld hl, sp+$71
    ld d, e
    inc b
    dec d
    ld c, $81
    ld d, e
    dec d
    ld c, $0e
    ld b, $30
    ld sp, $5371
    jr @-$06

    ld sp, $1234

jr_023_7e65:
    ld [de], a
    add c
    ld d, e
    ret nz

    nop
    ld [de], a
    jr jr_023_7e65

jr_023_7e6d:
    ld d, d
    and e
    rrca
    ld d, e
    ld b, b
    ld h, e
    jr jr_023_7e6d

    ld d, d
    or e
    ld de, $8033

jr_023_7e7a:
    ld bc, $3411
    ld [de], a
    ld d, h
    ld d, c
    jr jr_023_7e7a

jr_023_7e82:
    ld d, d
    rrca
    ld d, e
    ld [de], a
    ld [hl], b
    ld [hl], c
    jr jr_023_7e82

    nop
    jr c, jr_023_7ecd

    ld d, d
    rst $20

jr_023_7e8f:
    ld de, $5311
    ld [de], a
    ld [hl], d
    add c
    jr jr_023_7e8f

    ld h, d
    ld h, e
    ld [de], a
    rst $08
    ld h, c
    ld hl, sp+$0e
    ld bc, $3052
    jr nc, jr_023_7edd

    ld bc, $8800
    ld de, $3039
    inc [hl]
    ld d, d
    ld [de], a
    ld c, l
    ld h, $f8
    ld c, $01
    dec h
    ld d, e
    ld d, d
    ld c, l
    ld b, $18
    ld hl, sp+$48
    dec c
    ld b, a
    ld de, $5253
    ld e, l
    ld de, $0153
    ld d, d
    ld de, $0802
    ld d, d
    ld d, e
    ld e, l
    ld b, e
    ld h, e
    ld hl, sp+$0d

jr_023_7ecd:
    ld bc, $d05b
    ld e, h
    ld e, l
    ld d, e
    ld d, c
    ld hl, sp+$01
    rlca
    ld hl, sp+$0e
    ld l, h
    ret nc

    ld l, h
    ld d, d

jr_023_7edd:
    ld e, l
    ld d, e
    ld bc, $0e01
    dec c
    ld d, d
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    rst $38
    rra
    inc b
    db $f4
    db $f4
    db $f4
    ld a, a
    db $fd
    inc b
    db $f4
    db $f4
    xor $83
    inc b
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    rst $30
    db $dd
    inc b
    db $f4
    db $f4
    db $f4
    rst $30
    rst $38
    inc b
    db $f4
    call c, $01d0
    and e
    dec hl
    ld c, $19
    and c
    or e
    dec hl
    ld c, $a0
    adc d
    dec hl
    ld bc, $1901
    or c
    and e
    push de
    push de
    push de
    push de
    ld d, $b3
    ld a, a
    xor d
    dec hl
    ld bc, $d5a3
    push de
    push de
    ldh a, [rIF]
    dec hl
    push de
    ld bc, $a2a1
    or c
    or d
    and e
    or e
    ret nz

    db $e3
    ld b, b
    and e
    inc b
    or e
    and e
    or e
    and e
    ld e, b
    call $bc57
    or b
    ld bc, $18a2
    ld c, $2b
    or e
    or d
    jr jr_023_7fb1

    ld b, h
    sbc l
    dec hl
    ld bc, $a301
    ld d, $d5
    push de
    push de
    or e
    ld bc, $d45f

jr_023_7fb1:
    dec hl
    db $eb
    and e
    ld bc, $d5d5
    push de
    db $fd
    inc bc
    dec hl
    or e
    and c
    and d
    or e
    and e

Call_023_7fc0:
    or e
    and e
    ret nz

    rst $38
    ld b, b

jr_023_7fc5:
    or e
    and e
    or e
    and e
    or c
    or d
    jr jr_023_7fc5

    xor a
    ld d, e
    ld d, h
    ld d, c
    ld d, b
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, e
    rst $20
    sbc a
    xor a
    and d
    ld d, e
    or d
    ld d, e
    ld a, a
    ld a, [$a9af]
    ld d, e
    ld c, h
    ldh [rIF], a
    ei
    xor a
    xor a
    ld d, e
    ld e, a
    ld d, e
    ld d, e
    ld de, $fd53
    ccf
    cp $fd
    ld h, e
    ld de, $3853
    ldh [rNR11], a
    ld d, h
    ld d, h
    ld d, d
    ld d, e
    ld d, c
    xor a
    xor a

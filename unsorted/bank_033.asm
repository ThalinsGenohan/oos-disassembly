; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $033", ROMX

    ld [hl], e
    ld a, b
    add a
    ld l, a
    sbc b
    ld e, a
    cp [hl]
    and c
    nop
    ld a, a
    ld b, b
    rst $38
    add hl, bc
    or $b3
    ld c, h
    ld h, b
    dec e
    sbc a
    add b
    rst $38

jr_033_4015:
    rst $38
    db $10
    ret nc

    ld c, b
    dec b
    add d
    ld bc, $0868
    nop
    inc e

Call_033_4020:
    ld c, b
    or $ec

Call_033_4023:
    di
    rst $38
    ld h, b
    ld h, h
    nop
    add e
    ld c, d
    add l
    adc h
    inc bc
    rrca
    nop
    inc c
    nop
    inc bc
    inc e
    rra
    inc de
    inc a
    rlca
    jr c, jr_033_4056

    ld bc, $7160
    add b
    ldh [$c0], a
    ret nc

    ldh [$5f], a

jr_033_4042:
    jr nz, jr_033_4044

jr_033_4044:
    call nz, Call_033_5c3b
    and e
    dec a
    jp nz, $3ccf

    nop
    sbc [hl]
    ld a, a
    ld h, c
    cp a
    ld b, b
    cp a
    add c
    ld a, [hl]
    inc bc

jr_033_4056:
    sbc e
    ld h, h
    ldh [$1f], a
    ldh [$1f], a
    ld e, a
    ld c, b
    ld b, c
    add c
    ld d, e
    ld [bc], a
    ld [hl], c
    jr nz, jr_033_4015

    ld [hl], l
    add hl, bc
    ld h, b
    add b
    xor c

jr_033_406a:
    ld [hl], e
    ld e, a
    ld b, c
    nop
    inc c
    rra
    ld e, $7d
    rrca
    db $fc
    or [hl]
    ld c, b
    db $10
    ld a, b
    nop
    jr nz, jr_033_40c3

    and b
    ldh [rLCDC], a
    or b
    ldh [rP1], a
    inc e
    ld [hl], c
    ld c, $3e
    ld [hl], c
    rrca
    db $fc
    rla

jr_033_4089:
    nop
    xor $38
    ld b, a
    jr @+$69

    inc d
    ld h, e
    ld [hl], l
    ld bc, $f3e2
    add sp, $61
    call c, $0875
    dec e
    inc d
    add b
    sbc a
    db $10
    cp d
    ld e, l
    jr c, jr_033_406a

    inc c
    di
    jr c, jr_033_40ab

    rst $00
    rst $28
    jr jr_033_4089

jr_033_40ab:
    ccf
    rst $38
    jr nz, jr_033_4042

    ld l, h
    ld [$1fe0], sp
    add b
    ld a, a
    sbc a
    db $10
    call nc, $f9ff
    nop
    rst $38
    cp $ff
    ld a, [hl]
    cp $06
    cp $00  ; and a / or a

jr_033_40c3:
    nop

Call_033_40c4:
    cp $00  ; and a / or a
    db $fc
    nop
    db $fc

jr_033_40c9:
    ld hl, sp-$04
    ld a, h

Call_033_40cc:
    inc b
    db $fc
    inc c
    db $fc
    nop
    ld hl, sp+$01
    jr c, @+$01

Call_033_40d5:
    nop
    nop
    rst $38
    ld b, b
    rst $38
    add sp, -$01
    db $fc
    rst $38
    ld a, a
    ret nz

    add hl, bc
    ld [$0801], sp
    ld a, a
    nop
    ld a, a

Call_033_40e7:
    ld [hl], h
    ld a, a
    nop
    ld b, [hl]
    ccf
    ld bc, $1f18
    nop
    rra
    inc d
    jr nz, @+$03

    ld [$0180], sp
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$02
    nop
    jr z, @+$62

    db $fc
    nop
    jr z, @+$20

    jr nc, jr_033_4107

jr_033_4107:
    rst $30
    and b
    ld b, e
    ld b, b
    rrca
    and e
    add b
    ld b, c
    add c
    ld e, a
    ld a, [hli]
    nop
    jr nc, jr_033_4133

    jr nc, @+$58

    ld [$01e8], sp
    jr jr_033_4174

    jr nz, @+$5c

    jr jr_033_4120

jr_033_4120:
    db $fc
    ld [$3f1f], sp
    nop
    jr nz, @-$02

    inc bc
    dec e
    ld [$f380], sp
    db $fc
    ld a, [hl]
    rst $38
    nop
    ld a, a
    ld a, a
    dec sp

jr_033_4133:
    ld a, h
    rrca
    jr nc, @-$1d

    ld e, $42
    db $fd
    ld de, $1f18
    ldh [rIF], a
    ld [hl], b
    jr nc, jr_033_414a

    ret nz

    jr nz, jr_033_4145

jr_033_4145:
    ldh a, [rSTAT]
    jr z, jr_033_40c9

    add [hl]

jr_033_414a:
    ld sp, hl
    ld sp, hl
    ld b, $80
    add hl, bc

jr_033_414f:
    db $10
    sbc a
    ldh [rSVBK], a
    rst $38
    or $19
    adc a
    ld a, [bc]
    ld [hl], b
    ld a, [hl]
    add c
    rst $38
    ld h, l
    jr z, jr_033_414f

    ret z

    jr @+$0d

    ld b, b
    db $f4
    ld l, l
    jr nc, jr_033_41e3

    add e
    jp Jump_033_76fc


    rst $38
    ld [$7ecd], sp
    add e
    ld a, h
    add a
    jr nc, @+$3e

jr_033_4174:
    nop
    ld l, a
    nop
    ldh a, [$bb]
    ld a, h
    rst $28
    rra
    di
    rrca
    db $fd
    jr nz, @+$05

    sbc a
    ld [$e818], a
    rla
    rla
    add sp, $7f
    ret nz

jr_033_418a:
    adc d
    ld c, d
    ld l, b
    ld [$7800], sp
    add b
    ldh [$f8], a
    ldh a, [rP1]
    ld hl, sp-$10
    db $fc
    jr nc, @-$02

    ld hl, sp+$0e
    ld a, b
    nop
    add [hl]
    cp $01
    db $fc
    inc bc
    ld e, $61
    ld c, $00
    ld [hl], c
    dec h
    ld a, [hl-]
    ld [de], a
    ccf
    dec e
    rra
    rrca
    ld bc, $0f1f
    rrca
    rlca
    rrca
    rlca
    ld [$0aa5], sp
    inc h
    rlca
    inc b

jr_033_41bc:
    ld l, $14
    inc bc
    ld [bc], a
    xor c
    ld a, [bc]
    rrca
    ldh a, [rP1]
    add a
    ld hl, sp-$55
    db $fc
    push de
    cp $fe
    rst $38
    jr nz, jr_033_418a

    rst $00
    inc hl
    add hl, bc
    add b
    ld a, a
    ret nz

    rst $08
    ldh a, [rSB]
    rst AddAToHL
    ld hl, sp-$2f
    cp $f0
    rst $38
    ld hl, sp+$01
    ld [$fc40], sp

jr_033_41e3:
    ld [hl-], a
    add hl, bc
    db $fc
    ld a, a
    cp $3f
    ld sp, hl
    ld e, a
    nop
    rst $30
    cpl
    inc bc
    rst $38
    ldh [$1f], a
    rst $38
    ccf

jr_033_41f4:
    nop
    rst $38
    ld b, a
    rst $38
    dec hl
    db $fd
    rla
    di
    db $ed
    db $10
    rrca
    ld sp, hl
    rlca
    xor d
    jr jr_033_41f4

    rra
    rrca
    cp $a0
    ld h, $08
    call nc, $0982
    pop hl
    ld e, $f9
    db $e3
    rst $38
    ld hl, $7fef
    xor [hl]
    add hl, bc
    db $fd
    rst $28
    cp $9f
    add hl, bc
    ld [$8710], sp
    rst $38
    ld bc, $0801
    ldh [$3f], a
    ld hl, sp+$0f
    nop
    ei
    inc b
    rst $30
    jr jr_033_41bc

    ld sp, hl
    inc bc
    rst $38
    inc hl
    ldh a, [rIE]
    nop
    ld [$ffdf], sp
    ld a, e
    inc hl
    db $10
    inc bc
    ld [$7f10], sp
    rst $38
    cp a
    ld b, d
    ld [$01c1], sp
    rst $38
    db $fc
    db $10
    rst JumpTable
    rst $38
    cp [hl]
    inc e
    ld [$73f0], sp
    db $fc
    adc l
    and d
    ld a, c
    ld [$25fe], sp
    db $10
    ld e, a
    rst $38
    and b

jr_033_4259:
    adc a
    ld [$00c2], sp
    nop
    nop
    ld hl, sp+$78
    db $fc
    inc e
    nop
    db $fc
    nop
    rst $38
    inc a
    rst $38
    ld d, a
    rst $38
    ld a, [hli]
    rst $38
    ld bc, $fe00
    inc bc
    ld hl, sp+$2f
    nop
    rst $38
    sbc [hl]
    ld a, a

jr_033_4277:
    nop
    db $fc
    sbc a
    ei
    ld b, a
    rst $20
    ld a, $ff
    ld e, [hl]
    add c

jr_033_4281:
    or d
    dec a
    nop
    ldh [rP1], a
    or e
    ld a, h
    ret nz

    ld c, [hl]
    ld [$0310], sp
    rst $38
    rrca
    ld e, b
    ld [$fcf3], sp
    rst $08
    jr nc, jr_033_4259

    and b
    stop
    ld h, b
    ret nz

    nop
    ld b, b
    ret nz

    db $db
    dec c
    pop bc
    dec bc
    ld e, b
    ldh a, [$4c]
    ld a, [bc]
    cp $1f
    ld [$0000], sp
    rst $38
    inc c
    di
    jr c, jr_033_4277

    jr nc, jr_033_4281

    jr nz, jr_033_42b4

jr_033_42b4:
    rst $38
    ld bc, $0320
    db $fc
    ld de, $01ee
    ld bc, $20fe
    rst JumpTable
    ld h, b
    sbc a
    ret nz

    ccf
    rrca
    stop
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld b, b
    ld bc, $281f
    ld sp, hl
    ld hl, sp-$0d
    ldh a, [$f3]
    ldh a, [rP1]
    and $e0
    add c
    add c
    nop
    nop
    nop
    ret nz

    nop
    nop
    ldh [$f9], a
    ld bc, $03e3
    add l
    dec b
    ld [bc], a
    ld a, [hli]
    ld a, [hli]
    ld d, l
    ld d, l
    ld a, [hli]
    ld a, [hli]
    ld de, $0008
    nop
    rst $38
    rst $38
    cp $fe
    ei
    ld hl, sp-$51
    and b
    nop
    ld e, $00
    ld [hl], b
    nop
    dec d
    dec d
    nop
    nop
    nop
    adc h
    add b
    ld a, [hl]
    nop
    ld sp, hl

jr_033_430d:
    ld bc, $07c7
    ld [de], a
    ccf
    ccf
    rst $38
    nop
    ld [$5555], sp
    ld b, h
    db $10
    ei
    inc de
    nop
    db $eb
    db $10
    ld bc, $c920
    jr nc, jr_033_4339

    stop
    jr nc, jr_033_4330

    ld a, [$a3fa]
    and b
    rlca
    db $10
    cp $fe

jr_033_4330:
    ld hl, sp+$00
    ld hl, sp-$1d
    ldh [$9c], a
    add b
    ld h, b
    nop

jr_033_4339:
    add h
    ld b, b
    inc b
    rrca
    db $10
    dec b
    dec b
    ld bc, $8f00
    nop
    nop
    ccf
    nop
    ldh [rP1], a
    dec bc
    dec bc
    pop hl
    ldh [rNR41], a
    adc a
    add b
    sbc b
    db $10
    ld hl, sp+$00
    inc bc
    inc bc
    ccf
    inc d
    ccf
    ldh a, [$f0]
    ld c, a
    db $10
    cp $19
    ld [$0f0f], sp
    add b
    add hl, hl
    db $10
    rra
    rra
    pop hl
    ld bc, $0f8f
    ccf
    inc b
    ccf
    db $fc
    db $fc

jr_033_4370:
    pop af
    pop af
    ld d, e
    jr nz, jr_033_4370

    ld hl, sp+$02
    rst JumpTable
    ret nz

    nop
    nop
    rlca
    rlca
    ld d, a
    jr nz, @-$6f

    add hl, bc
    add b
    ldh a, [rP1]

jr_033_4384:
    add a
    dec bc
    jr jr_033_4384

    db $fc
    ld b, a
    jr nz, jr_033_430d

    db $d3
    db $10
    inc b
    ei
    ld [$18f7], sp
    rst $20
    inc bc
    ld de, $8060
    push hl
    jr z, jr_033_439c

    ld b, b

jr_033_439c:
    rra
    ldh [$3f], a
    ret nz

    rlca

jr_033_43a1:
    nop
    ld hl, sp+$07
    ld hl, sp+$0b
    db $f4
    dec b
    ld a, [$0019]
    and $09
    or $fd
    ld [bc], a
    db $e3
    inc e
    di
    ld de, $fd0c
    ld [bc], a
    jr nz, jr_033_43e9

    nop
    nop
    add b
    ld b, $09
    db $10
    ldh a, [rP1]
    ld sp, hl
    rrca
    jr c, jr_033_43e1

    nop
    ld l, $10
    add hl, bc
    rst $08
    jr nc, jr_033_43db

    ldh a, [rSB]
    db $10
    add a
    ld a, b
    ld d, b
    ld [hl], b
    nop
    ret


    jr nc, @-$3e

    jr nc, @-$6e

    ld h, b
    adc b

jr_033_43db:
    ld [hl], b
    nop
    sub b
    ld h, b
    jr nc, jr_033_43a1

jr_033_43e1:
    inc e
    ldh [$30], a
    ret nz

    and c
    rla
    jr nc, jr_033_4468

jr_033_43e9:
    ld bc, $2828
    jr z, jr_033_43f0

    ld [bc], a
    ld b, a

jr_033_43f0:
    ld de, $b3c0
    ld [$080d], sp
    ret nz

    nop
    ld d, l
    ld d, l
    and e
    and b
    ld b, $00
    nop
    ld bc, $1001
    ld h, a
    ld [$1000], sp
    add hl, sp
    nop
    ld bc, $0787
    ld a, [hli]
    ld a, [hli]
    ld d, b
    ld d, b

jr_033_440f:
    inc bc
    ret nz

    dec e
    ld [$216f], sp
    ld a, h
    ld a, h
    and a
    and b
    ccf
    nop
    ld h, d
    db $fc
    dec bc
    ld [$116f], sp
    rst $00
    ret nz

    ld a, a
    add a
    jr z, @+$41

    dec b
    ccf
    ld a, a
    ld a, a
    xor a
    xor a
    dec bc
    db $10
    ld hl, sp-$0d
    ld [$7f2e], sp
    ld a, a
    rrca
    ld hl, $0be0
    ld [$218b], sp
    nop
    jr nz, jr_033_440f

    nop
    rst $38
    add sp, -$01
    db $f4
    rst $38
    db $fc
    rst $38
    cp $c1
    rrca
    jr z, @-$56

    jr nc, jr_033_445e

    rst $38
    ret z

    rst $38
    push af
    rrca
    ld [$0420], sp

jr_033_4456:
    ei
    cp [hl]
    ld d, b
    ret nc

    rst $38
    rlca
    ld hl, sp+$03

jr_033_445e:
    ld h, b
    db $fc
    ld de, $0450
    db $10
    rst JumpTable
    jr nz, jr_033_44e6

    add b

jr_033_4468:
    ld [hl], a
    nop
    adc b
    ld a, e
    add h
    inc a
    jp $f906


    di
    nop
    inc e
    ei
    inc e
    push af
    ld c, $ff
    ld b, $f9
    ld bc, $fc06
    inc bc
    rst $00
    jr c, @+$03

    cp $9d

jr_033_4484:
    add hl, bc
    ld c, b
    ld bc, $1001
    db $fc
    inc bc
    ld bc, $3020
    ret nz

    ld e, b
    nop
    and b
    ld h, c
    add b
    jr c, jr_033_4456

    ld h, d
    add b
    jr nz, jr_033_449c

    ret nz

    ld h, [hl]

jr_033_449c:
    add b
    or b
    ld b, b
    ccf
    rst AddAToHL
    add hl, bc
    cp a
    xor e
    inc bc
    ld [$011f], sp
    jr jr_033_4509

    or a
    ld [$0702], sp
    ld [$4000], sp
    xor e
    dec b
    ld de, $0bea
    jr z, jr_033_44c3

    dec bc
    ld [$6f0f], sp
    ld [$10eb], sp
    dec c
    rlca
    rlca
    cp a

jr_033_44c3:
    cp a
    ld a, h
    ld [$080d], sp
    ldh a, [$09]
    ld a, [de]
    sbc h
    cp e
    db $10
    xor d
    xor d
    inc bc
    ld de, $213f
    ld b, e
    jr nc, jr_033_4554

    ld a, l
    jr jr_033_4484

    xor d
    inc bc
    inc sp
    jr z, @+$2f

    db $10
    ld d, b
    ld d, b
    rlca
    sbc d
    rra
    add hl, hl

jr_033_44e6:
    ld [bc], a
    ld [bc], a
    cpl
    ld de, $20f5
    ld a, a
    push hl
    ld a, [bc]
    inc bc
    rrca
    rst $38
    and b
    rst $38
    ld d, b
    dec c
    jr @+$0d

    ld sp, $0a4f
    add hl, de
    add hl, bc
    ld de, $ffff
    and a
    rst $30
    ld [$fffa], sp
    db $fd

jr_033_4506:
    rra
    add hl, hl

jr_033_4508:
    nop

jr_033_4509:
    add b
    rst $38
    ldh a, [rIE]
    jr @+$01

    ld b, $ff
    inc e
    ld b, c
    rst $38
    xor b
    ld hl, $0d09
    ld h, c
    ld bc, $f980
    ld b, $04
    add hl, hl
    sub $b1
    sbc $d6
    ld d, e
    jr c, jr_033_4506

    nop
    ld bc, $c007
    nop
    ret nz

    or c
    ret nz

    add b
    ld bc, $5108
    xor b
    inc bc
    ld [$d1df], sp
    ld [$002c], sp
    call z, $38ed
    ld [bc], a

jr_033_453e:
    add a
    nop
    ldh [$1f], a
    add b
    ld a, a
    ld bc, $0c40
    ld d, b
    ldh a, [$71]
    ld de, $d480
    add hl, bc
    ld b, b
    cp a
    ld [hl], b
    adc a
    jr z, @+$3a

jr_033_4554:
    rst $00
    ld l, a
    ld [de], a
    ldh [$d1], a
    add hl, bc
    db $fc
    nop
    ccf
    inc b
    ret nz

jr_033_455f:
    rra
    ldh [rSC], a
    db $fd
    daa
    ld sp, $0008
    ld c, d
    jr nc, @-$6f

    inc de
    rst $38
    cp a
    rrca
    jr z, jr_033_45ec

    ld b, $20
    add a
    push bc
    ld c, d
    ld c, c
    nop
    jr jr_033_457c

    nop
    jr c, @+$11

jr_033_457c:
    ld e, b
    ld [$28d7], a
    ld de, $ff7f
    ld a, [bc]
    xor a
    jr jr_033_4508

    rst $38
    ld d, h
    db $eb
    ld [$00b1], sp
    jr nz, @+$05

    rst JumpTable
    ld de, $0819
    inc d
    rst $38
    xor d
    db $fd
    jr c, @-$5b

    nop
    db $10
    ccf
    add hl, hl
    jr jr_033_455f

    rst $38
    ld hl, sp+$1f
    add hl, bc
    jp hl


    ld b, b
    ld [hl], $03
    cp $01
    db $10
    db $fd
    ld h, b
    add b

jr_033_45ad:
    db $76
    ld a, [bc]
    ld bc, $8060
    add b
    ld bc, $fe08
    add c
    reti


    add b
    ldh [$80], a
    pop hl
    jr c, jr_033_453e

    sub $04
    add hl, bc
    ld h, c
    inc c
    inc bc
    dec bc
    ld e, c
    nop
    ld bc, $000e
    ld h, c
    nop
    inc c
    dec b
    ld [$1835], sp
    add a

jr_033_45d2:
    add hl, bc
    ld a, [hl]
    jp nz, $1c77

    dec e
    db $10
    rra
    ldh [rIF], a
    ldh a, [$65]
    ld hl, $80c3
    dec bc
    inc d
    ld a, [$05fa]
    call nc, $a02b
    ld e, a
    stop

jr_033_45ec:
    rst $38
    ld e, $8b
    jr @+$52

    xor a
    add b
    ld a, a
    ld l, $0b
    db $f4
    ld l, l
    jr nz, @-$3e

    sbc c
    add hl, bc
    ld c, c
    dec bc
    call nz, $1f0b
    ld b, h
    ldh [$31], a

jr_033_4604:
    jr nz, jr_033_4604

    rst $38
    ldh a, [rNR30]
    jr jr_033_45d2

    jr c, @+$21

    ldh a, [rIF]
    ccf
    dec e
    add hl, bc
    ld hl, sp+$19
    ccf
    add hl, bc
    ld hl, $3310
    jr nz, @+$05

    cp $fe
    ldh a, [$f0]
    add b
    add b
    rst $28
    ld sp, $111f
    dec bc
    cp $00  ; and a / or a
    rra
    rra
    dec c
    jr nz, jr_033_45ad

    ld [hl], d
    dec bc
    scf
    ld [de], a
    adc e
    dec c
    ld b, b
    rlca
    rlca
    ldh [rNR33], a
    jr c, @+$09

    ld b, a
    dec de
    push af
    jr nz, jr_033_46a0

    dec b
    ld bc, $b338
    ld de, $7f00
    ld b, b
    ccf
    ld bc, $0810
    jr nz, jr_033_466c

    jr nz, jr_033_466e

    db $fd
    ld h, b
    rlca
    rst $38
    ldh [$aa], a
    di
    ld [$fdd8], sp
    ld [$07c2], sp
    ld [$03e6], sp

jr_033_465f:
    ld [$8001], sp
    di
    ld [$3079], sp
    ld a, c
    ld a, b
    ei
    ld a, b
    ld sp, hl
    add b

jr_033_466c:
    inc bc
    db $10

jr_033_466e:
    ld [hl], b
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $28
    inc b
    jr z, jr_033_465f

    jr z, @-$17

    jr nc, @+$03

    ld [$e364], sp
    pop de
    sbc c
    ld [de], a
    ld d, c
    ld d, c
    db $fd
    sbc l
    add hl, bc
    call nc, $0fff
    sub $20
    and [hl]
    ld bc, $8c08
    add a
    dec sp
    rlca
    ld hl, sp-$51
    inc e
    rrca
    jr z, @-$1e

    adc l
    ld [$0118], sp
    cp $e8

jr_033_469f:
    push bc

jr_033_46a0:
    ld a, [de]
    adc e
    ld hl, $d0fc
    add hl, bc
    ld [hl], d
    nop
    add e
    ld [$11d3], sp
    dec h
    jr nz, jr_033_469f

    rrca
    rst AddAToHL
    ld [hl-], a
    ccf
    ld a, [$19ed]
    ld a, e
    ld hl, $11ed
    xor a
    ld [de], a
    ld a, c
    ld d, b

jr_033_46be:
    and b
    ld [hl], l
    ld [$21ff], sp
    rst $38
    dec hl
    rrca
    jr c, @+$41

    ret nz

    rst $00
    ld hl, sp+$35

jr_033_46cc:
    inc d
    add h
    push af
    jr nz, jr_033_46be

    ld e, $8d
    ld a, [hl]
    ld h, e
    inc de
    add b
    nop
    ret nc

    di
    db $10
    sla e
    ld hl, sp+$6d
    ld a, [de]
    ld a, c
    cp $7f
    rst $38
    dec b
    sbc a
    ld a, a
    di
    rrca
    ldh [$e7], a
    ld [$0b3f], sp
    inc c
    nop
    add b
    nop
    add c
    cp $11
    add b
    nop
    add b
    ld h, b
    db $10
    inc bc
    ld [$080c], sp
    add b
    db $10

Call_033_4700:
    rrca
    or $01
    inc d
    add d
    ld bc, $2933
    ld [$e303], sp
    dec c
    ld de, $000e
    ld [hl], b

jr_033_4710:
    db $e3
    ld [hl], b
    db $e3
    ld a, [c]
    pop hl
    ld a, [c]
    pop hl
    ld bc, $e0f9
    ld a, [$fee1]
    pop bc

jr_033_471e:
    ldh a, [rIF]
    ld a, [de]
    add b
    and l
    add hl, bc
    ld bc, $0001
    adc e
    nop
    ld [hl], a
    add b
    ld hl, $0132
    ld l, e
    db $d3
    dec c
    ld a, [c]
    sub d
    jr nz, jr_033_4744

    ld d, b
    jr jr_033_471e

    add hl, de
    add hl, de
    ccf
    jr z, jr_033_46cc

    ld b, d
    rst $38
    rst $38
    add c
    ld [$e781], sp

jr_033_4744:
    rst $20
    add c
    nop
    ld [$9999], sp
    add c
    ld b, b
    add c
    cp a
    add hl, bc
    db $fc
    ld b, $f8
    inc b
    ld hl, sp+$02
    inc d
    db $fc
    dec b
    cp $e5
    ld h, $32
    dec d
    dec de
    add c
    nop
    nop
    ld l, c
    add b
    sbc [hl]
    pop hl
    ld hl, sp-$01
    di
    db $fc
    ld b, b
    ret nz

    push bc
    add hl, de
    ld h, b
    rra
    jp $033f


    rst $38
    ld bc, $bf43
    jp Jump_033_7e3f


    rst $38
    ld a, h
    sbc e
    ld a, [bc]
    ld b, c
    cp $01
    jr c, jr_033_4710

    nop
    dec de
    ldh [$f4], a

jr_033_4786:
    ld a, b
    dec bc
    add e
    ld bc, $df20
    nop
    ret c

    nop
    jr nz, @+$09

    ld [$3000], sp
    ld bc, $001a
    ld b, $01
    ld [bc], a
    ld bc, $e406
    ld de, $0180
    jr jr_033_47aa

    ld bc, $8010
    inc de
    add b
    ld h, b
    nop
    add b

jr_033_47aa:
    ld d, b
    add b
    ld b, b
    add b
    ld b, $81
    ld b, $20
    ld hl, sp+$48
    rst $38
    ld [$1f2c], sp
    cpl
    rra
    ld l, a
    sub b
    ld bc, $0f08
    rst $38
    dec b
    db $10
    ld bc, $0e00
    add b
    nop
    ld [hl], b
    add [hl]
    ld b, $86
    ld h, $86
    nop
    add [hl]
    ld b, b
    ld d, b
    rra
    add hl, bc
    or $01
    ld [$5601], a
    ld hl, $4a02
    dec [hl]
    ld e, b
    jr nz, jr_033_4812

    inc a
    pop de
    dec c
    ccf
    and b
    ld c, h
    dec d
    nop
    and a
    ld [$1f61], sp
    inc bc
    ld bc, $a0cf
    db $e3
    ld c, $b3
    ld h, l
    ld [$00b0], sp
    inc h
    cp b
    ld a, c
    nop
    cp h
    dec sp
    db $fc
    ld sp, hl
    cp $fc
    rst $38
    jr jr_033_4786

    rrca
    ld [$0001], sp
    ld sp, $3c00
    ld a, a
    add hl, bc
    db $10
    ld [de], a
    ld [hl], e
    ret nz

    add a
    ld a, [bc]

jr_033_4812:
    ld a, b
    add hl, bc
    ld bc, $4008
    ccf
    ld b, l
    inc d
    rst $38
    ld [hl], b
    ld d, h
    ld d, l

jr_033_481e:
    rst $38
    ld bc, $0001
    ld [bc], a
    db $fd
    nop
    nop
    nop
    nop
    dec e
    ld bc, $f3ff
    db $fc
    ldh a, [$1f]
    and e
    ld e, a
    inc e
    db $e3
    ld bc, $00fe
    cp a
    ret nc

jr_033_4838:
    rst $38
    ccf
    ld a, a
    add a
    ld a, a
    inc e
    db $e3
    db $10
    ld b, b
    ldh a, [$f3]
    db $fc
    db $ec
    ret nc

    ldh [$d0], a
    ldh [$c6], a
    pop de
    or $dc
    rst $30
    sbc $f7
    ld d, a
    ret nc

    nop
    ret nc

    db $10
    jr nc, jr_033_488f

    inc b
    jr c, jr_033_481e

    jr c, jr_033_48b3

    push de
    nop
    sbc a
    ld [de], a
    db $10
    ld b, $76
    db $76
    ld d, l

jr_033_4865:
    ld d, l
    ld bc, $8a02
    ld d, $0a
    ld a, $3e

jr_033_486d:
    ld a, $3e
    ld d, l
    inc d
    add b
    ld b, b
    ld h, b
    ld l, b
    ld h, b
    jr nz, jr_033_4838

    ld a, h
    ld l, l
    ld a, $c1
    ld d, l
    ld b, b
    rra
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    ld l, a
    rst JumpTable
    ccf
    cp a

jr_033_4887:
    ld a, a
    rst $28
    rst $38
    nop
    cpl
    rst $38
    ld h, [hl]
    add b

jr_033_488f:
    nop
    add b
    ld d, e
    add b
    xor e
    ret nz

    rst $30
    ld hl, sp-$02
    call nc, $3f00
    rst $38
    ld a, a
    cp a
    ld a, a
    jr c, @+$01

    ld a, $c0
    jr nz, jr_033_4865

jr_033_48a5:
    ret nc

    jr nz, jr_033_48a5

    ld b, b
    rst $38
    ld [c], a
    nop
    xor a
    nop
    inc de
    nop
    ld bc, $9500

jr_033_48b3:
    nop
    cp $ff
    cp a
    db $db
    xor c
    ld b, e
    db $fc
    xor d
    db $f4
    ld b, e
    db $fc
    or e
    ld c, h
    nop
    dec d
    nop
    sub c
    ld l, [hl]
    dec sp
    db $e4
    or [hl]
    ld l, b
    ret nz

    jr c, jr_033_486d

    jr jr_033_4887

    add b
    add b
    rst $38
    rst $38
    nop
    inc sp
    call z, $ff81
    rst $38
    rst $20
    rst $20
    sbc c
    sbc c
    rst $38
    rst $38
    ld d, l
    ld d, l
    rst $38
    inc bc
    inc bc
    inc bc
    ld bc, $a840
    ld d, l
    ld a, [$3f00]
    ld a, a
    nop
    inc sp
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld a, [hl]
    ld a, [hl]
    xor e
    ret nz

    nop
    rst $38
    call c, $e0c8
    ldh [$fe], a
    cp $ff
    rst $38
    rrca
    jr nc, @+$11

    ld d, $1e
    rra
    rra
    ld c, $0e
    ld c, $0e
    rst $28
    rst $28
    add b
    ld a, [bc]
    inc bc
    call nz, Call_033_4700
    db $f4
    push af
    rst $30
    rst $30
    ld h, c
    ld l, l
    nop
    ld e, $3c
    inc e
    ld b, b
    dec b
    nop
    rst $30
    cp $01
    db $10
    rst $38
    dec a
    ld a, [c]
    ld c, b
    or b
    ld b, b
    add b
    add c
    ldh [rSC], a
    xor d
    add b
    ld a, h
    inc bc
    ld a, h
    add e
    add $01
    nop
    nop
    nop
    nop
    nop
    ld bc, $007f
    inc bc
    rst $38
    dec b
    rst $38
    inc e
    db $e3
    ld a, a
    inc bc
    ld d, l
    nop
    rst $38
    push af
    xor e
    sub l
    dec bc
    db $e3
    rra
    ld a, b
    rlca
    dec hl
    nop
    nop
    ld b, b
    ld b, b
    ld [bc], a
    cp $fd
    ei
    db $fc
    push af
    ld hl, sp-$16
    ldh a, [$5f]
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    nop
    nop
    ld d, l
    nop
    ldh [rNR23], a
    ld a, b
    inc b
    add sp, $02
    ld a, [hl]
    ld bc, $feff
    ldh [$0d], a
    add c
    ld [hl], l
    nop
    inc b
    dec b
    inc h
    xor a
    ld h, b
    rst $38
    db $e4
    ld e, h
    ld a, [c]
    ld b, b
    ld d, h
    inc e
    db $e3
    pop af
    ld c, $f2
    inc c
    add c
    ld e, $63
    ld h, d
    inc hl
    ld h, b
    ld e, $55
    ld d, l
    nop
    add c
    ld bc, $8985
    ld bc, $0101
    add c
    ld d, l
    ld a, a
    nop
    ldh a, [rIE]
    rst $38
    cpl
    dec b
    ld d, l
    ld e, a
    nop
    dec d
    and b
    ld a, [$7fff]
    dec b
    db $fd
    ld a, [bc]
    nop
    db $fc
    rra
    ldh [rTAC], a
    ld hl, sp-$01
    rst $38
    rst $38
    ld d, d
    nop
    ret nz

    rst $38
    ccf
    ret nz

    rst $38
    db $fd
    ld d, [hl]
    nop
    rrca
    ld a, a
    rst $38
    rst $38
    rst $38

jr_033_49c9:
    db $fd
    ld b, d
    nop
    ldh [$fc], a
    cp $01
    ldh [$1f], a
    rst $38
    jr nz, @-$5c

    ld bc, $1c03
    ld a, [hl]
    dec b
    ld a, [de]
    inc bc
    inc a
    ld c, $7e
    inc bc
    inc e
    ld a, $55
    nop
    jr jr_033_49e7

    add b

jr_033_49e7:
    ret nz

    ld h, c
    nop
    ld bc, $00c1
    dec c
    nop
    add b
    nop
    xor d
    nop
    add b
    nop
    ld [bc], a
    inc b
    inc b
    adc h
    nop
    adc a
    nop
    ld [hl], d
    add c
    ld h, l
    sbc d
    ld hl, $0042
    ld [$3010], sp
    inc d
    jr nz, jr_033_49c9

    ccf
    ld a, [c]
    inc c
    db $f4
    ld [$8008], sp
    ld bc, $c003
    add [hl]
    nop
    ld de, $e00e
    rra
    adc b
    ld a, a
    sub l
    ld c, a
    ret z

    rlca
    inc c
    ld d, h
    nop
    nop
    ldh [$03], a
    sbc a
    ld a, a
    add b

jr_033_4a28:
    rla
    ldh [$58], a
    rst $20
    sbc l
    db $e3
    ld [hl], c
    add e
    xor b
    nop
    rst $38
    nop
    nop
    nop
    pop af
    dec c
    adc a
    ld l, a
    ld a, h
    ld a, h
    ld hl, sp-$07
    db $f4

Call_033_4a3f:
    push af
    ld bc, $8055
    ld a, [c]
    nop
    db $fc
    nop
    inc h
    ret nz

    ld b, [hl]
    dec b
    inc b
    dec b
    inc b
    inc b
    ld d, c
    jr c, jr_033_4a75

    inc e
    ld h, e
    inc e
    ld b, [hl]
    ld b, e
    inc a
    ld b, a
    ld b, a
    ld c, a
    jr nc, jr_033_4aa3

    sub l
    ld d, l
    ld bc, $8000
    add b
    jr jr_033_4a65

jr_033_4a65:
    nop
    ld [bc], a
    add d
    ld [hli], a
    nop
    sbc $fd
    ld [bc], a
    jr nz, jr_033_4a28

    inc b
    jr nz, jr_033_4abd

    sub h
    ld l, l
    sub d

jr_033_4a75:
    ld c, l
    and d
    ld [hl-], a
    push bc
    nop
    nop
    ld a, e
    add b
    ei
    inc b
    db $fd
    ld [bc], a
    sbc [hl]
    ld b, c
    dec [hl]
    ld b, b
    cp $00  ; and a / or a
    inc h
    rrc c
    and [hl]
    ld a, a
    ld b, l
    rst $38
    sbc a
    nop
    rlca
    ld hl, sp+$00
    nop
    ld e, a
    ld h, c
    rst $38
    nop
    ld hl, sp+$3f
    nop
    ccf
    ret nz

    nop
    ld d, l
    ret z

    rst $38
    nop
    nop

jr_033_4aa3:
    add b
    db $fd
    jr nz, @-$1f

    nop
    ld bc, $55fe
    ld d, d
    rst $38
    nop
    nop
    nop
    ldh a, [$c3]
    nop
    pop bc
    ld a, $00   ; xor a
    nop
    ld a, [hli]
    nop
    rlca
    ld hl, sp+$03
    inc a

jr_033_4abd:
    ld bc, $023e
    dec c
    ld bc, $3f7e
    rra
    dec bc
    pop de
    ld de, $e900
    ld b, b
    add b
    di
    ld b, c
    add b
    pop hl
    ld l, h
    add b
    add c
    dec b
    ld d, l
    add b
    inc e
    ld [c], a
    ld h, b
    add d
    ld d, h
    ld l, b
    ld c, b
    ld b, b
    ld h, b
    ld c, b
    ld e, a
    db $fd
    nop
    ld bc, $3080
    ld d, l
    ld d, l
    inc bc
    inc c
    inc c
    inc c
    inc c
    inc c
    adc h
    adc h
    inc c
    ld d, l
    ld d, l
    add e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    ld b, c
    inc d
    rst $28
    db $ec
    ld hl, sp-$05
    ldh a, [$f3]
    add sp, -$30
    rst AddAToHL
    ldh [$e0], a
    ret nz

    rst $08
    ld d, l
    db $10
    add b
    inc b
    inc b
    inc b
    inc c
    ld a, [bc]
    add h
    dec c
    ld a, [bc]
    add h
    inc de
    adc h
    ld b, l
    ld d, l
    jr nc, jr_033_4b6b

    ld b, [hl]
    jr c, jr_033_4b6c

    ld c, [hl]
    ld c, h
    ld c, [hl]
    call z, Call_033_554e
    ld d, l
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    and d
    ld [bc], a
    inc h
    nop
    ld b, a
    inc [hl]
    ret


    ld [c], a
    or b
    ld l, c
    db $f4
    ld c, e
    ldh a, [$f2]
    db $fd
    cp h
    ei
    ld l, [hl]
    rst $30
    nop
    nop
    ld hl, $86de
    db $eb
    xor b
    ld [hl], a
    bit 6, d
    dec [hl]
    ld h, e
    push hl
    ld d, d
    ld l, e
    db $f4
    cp [hl]
    ei
    add d
    xor d
    nop
    rst $38
    ld a, a
    add b
    rrca
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    add h
    xor d
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    ccf
    ret nz

    rst $38
    rst $38

jr_033_4b6b:
    rst $38

jr_033_4b6c:
    rst $38
    and l
    ld l, d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, d
    dec e
    rst $38
    nop
    ld a, a
    add b
    nop
    nop
    ldh a, [rIF]
    ld bc, $2200
    adc b
    ld bc, $3f00
    ld a, [hl]
    ld a, [bc]
    dec [hl]
    ld e, $3e
    nop
    rlca
    ld a, $00   ; xor a
    rra
    ld d, l
    ld b, b
    nop
    jp hl


    pop bc
    rst $00
    pop af
    and e
    db $fc
    ld bc, $01ea
    add $01
    ld d, l
    nop
    add b
    ld l, [hl]
    ld b, b
    ld l, b
    ld b, b
    ret c

    nop
    ret nz

    nop
    ret nz

    nop
    ldh a, [rP1]
    ld e, l
    db $dd
    nop
    ret nz

    ld bc, $2001
    dec b
    ld d, l
    ld d, l
    inc bc
    adc h
    inc a
    inc c
    inc c
    inc l

jr_033_4bc0:
    inc a
    inc c
    ld c, h
    ld b, l
    ld b, b
    inc bc
    add a
    rlca
    add e
    rst AddAToHL
    sub a
    call nc, $00ff
    cpl
    ret nc

    ld h, e
    add b
    ld [bc], a
    add l
    nop
    ldh [$ef], a
    ret nz

    rst $08
    add b
    sbc a
    ld a, a
    rst $38
    xor b
    ld d, a
    rst $38
    rst $38
    inc b
    ld d, l
    nop
    ld l, e
    add h
    ld c, e
    add h
    adc a
    adc e
    inc b
    adc a
    adc [hl]
    add e
    rrca
    ld d, h
    nop
    jr nc, jr_033_4bc0

    adc $cf
    add $38
    db $eb
    inc d
    ld b, l
    ld a, [hl-]
    ret nc

    ccf
    add sp, $3f
    ld d, l
    ld a, [bc]
    ld bc, $0202
    rlca
    adc [hl]
    db $fd
    inc bc
    pop af
    rrca
    rst $38
    rst $38
    ld d, h
    inc b
    rst $38
    or h
    ld [hl], a
    jp c, $debd

    ld c, [hl]
    db $fd
    xor c
    ld a, a
    ld d, [hl]
    db $eb
    ld a, a
    nop
    dec d
    rst $38
    pop de
    rst $28
    ld l, d
    rst $30
    ld a, a
    xor l
    db $dd
    scf
    xor [hl]
    ld a, a
    dec sp
    sbc $8a
    inc sp
    call z, $ff81
    rst $38
    rst $20
    rst $20
    sbc c
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $08
    call z, $eeef
    xor $ee
    xor $ee
    xor $28
    add d
    ld bc, $7f00
    ld c, $3e
    nop
    rra
    ld a, $02
    dec a
    nop
    rrca
    ld e, $00
    nop
    ld a, b
    add [hl]
    ld a, [$fe02]
    rlca
    ld a, h
    add l
    ld hl, sp+$01
    ld a, c
    add d
    ei
    inc b
    rst $38
    nop
    ld d, l
    ld d, h
    nop
    db $fc
    ldh [$f8], a
    ret nz

    ret nz

    add sp, -$04
    ld h, c
    add b
    ld d, l
    ld d, l
    nop
    ld bc, $1010
    ld b, h
    ld c, b
    ld c, a
    ld c, e
    rst JumpTable
    ld d, b
    nop
    inc bc
    call z, $0a0c
    dec b

jr_033_4c84:
    dec [hl]
    ld a, [bc]
    cp d
    dec b
    rst AddAToHL
    jr z, jr_033_4c84

    nop
    rrca
    nop
    dec d
    ld b, b
    nop
    inc bc
    add b
    add d
    add d
    sub l
    rrca
    dec sp
    inc b
    ld a, [$d005]
    cpl
    ld d, h
    nop
    nop
    ld l, b
    rlca
    ccf
    ei
    inc b
    ei
    inc b
    reti


    ld h, $ca
    dec [hl]
    ld b, b
    cp a
    nop
    dec b
    rst $38
    ld a, a
    nop
    cp $01
    ld a, [$7a05]
    add l
    ld d, b
    xor a
    db $10
    rst $28
    inc b
    dec bc
    nop
    ld e, l
    rst $38
    ret nc

    ccf
    ld [$b43f], a
    ld a, a
    cp d
    ld a, a
    ld [hl], l
    cp a
    ei
    ld d, l
    ld d, l
    rst $38
    ld bc, $570b
    dec hl
    cp a
    rst JumpTable
    ld [hl], a
    or e
    nop
    nop
    ld a, [c]
    rst $20
    xor e
    or $d5
    di
    ld d, e
    jp hl


    ld h, e
    cp $94
    ei
    dec a
    rst $28
    db $dd
    xor a
    nop
    nop
    set 7, [hl]
    db $ec
    sbc $fc
    adc $97
    call z, $d489
    db $ed
    db $db
    scf
    rst $38
    ld b, l
    cp a
    inc sp
    call z, $ff81
    rst $38
    rst $20
    rst $20
    sbc c
    sbc c

jr_033_4d04:
    rst $38
    rst $38
    push af
    ld b, b
    rst $38
    ei
    ei
    ei
    cp e
    db $fd
    db $dd
    ccf
    ccf
    rst JumpTable
    ld d, b
    ld bc, $dfff
    rst JumpTable
    sbc a
    rst $28
    or a
    rst $08
    rst $08
    rst $30
    rst AddAToHL
    rst $28
    ld l, a
    cp a
    or [hl]
    inc c
    jr nc, jr_033_4d04

    cp $fe
    rst $28
    rst $28
    jp nc, $dcd2

    call c, $ffff
    rst $38
    rst $38
    xor b
    add b
    nop
    rra
    rrca
    rra
    pop bc
    sbc $03
    ldh [$e1], a
    ld hl, sp-$07
    db $f4
    push af
    ld b, b
    xor d
    nop
    push af
    sbc $01
    db $fc
    inc bc
    ld l, b
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld b, b
    add b
    ld a, l
    ld a, a
    ld a, d
    ld h, l
    ld a, a
    ld a, l
    add d
    ld [hl], l
    adc d

jr_033_4d5a:
    jr nc, @-$2f

    ld d, h
    nop
    nop
    ld hl, sp-$5d
    ld e, a
    cp $01
    or $09
    jp nc, $c42d

    dec sp
    ld b, b
    cp a
    nop
    ld a, [bc]
    nop
    ld a, [hl]
    ld bc, $13ec
    ld l, b
    sub a
    db $e4
    dec de
    and b
    ld e, a
    jr nz, jr_033_4d5a

    rst $38
    rst $38
    inc sp
    call z, $ff81
    rst $38
    rst $20
    rst $20
    sbc c
    sbc c
    rst $38
    rst $38
    rrca
    ldh a, [rIE]
    pop hl
    ld bc, $3f3f
    nop
    nop
    dec b
    nop
    rst $38
    ldh a, [rIE]
    ld bc, $7f00
    nop
    rst $38
    ret nz

    rst $38
    inc bc
    nop
    cp a
    nop
    cp $00  ; and a / or a
    rst $38
    jr nz, @+$01

    add b
    add b
    nop
    ret nz

    nop
    rrca
    rrca
    rst $38
    ccf
    rst $38
    rra
    rra
    rst $38
    rst $38
    rst $38
    inc sp
    call z, $ff81
    rst $38
    rst $20
    rst $20
    sbc c
    sbc c
    rst $38
    rst $38
    inc sp
    call z, $ff81
    rst $38
    rst $20
    rst $20
    sbc c
    sbc c
    rst $38
    rst $38
    inc bc
    db $10
    rst $38
    ld e, l
    xor $aa
    db $fd
    db $db
    db $fc
    or $fb
    db $ec
    rst AddAToHL
    rst $28
    xor e
    rst $08
    and [hl]
    nop
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst JumpTable
    rst $38
    rst $30
    rst JumpTable
    inc de
    rst $38
    ld c, c
    rst $30
    ld [hli], a
    inc c
    db $f4
    ld hl, sp-$07
    push af
    ld hl, sp-$07
    push af
    ld hl, sp-$06
    db $fc
    db $fc
    db $fd
    db $fd
    db $fd
    nop
    rst $38
    cp $78
    cp $38
    ld a, [$fc10]
    nop
    call nc, $00fd
    rst $38
    cp $fc
    cp $f8
    ld a, [hl]
    add sp, $7c
    jr nz, jr_033_4e8f

    dec b
    nop
    di
    rst $38
    rst $30
    ld a, [c]
    ei
    ldh [$60], a
    call nz, Call_033_40e7
    ld l, l
    nop
    ld [hl], l
    ld bc, $a039
    nop
    ld a, d
    add h
    inc b
    ld sp, $178c
    jr z, jr_033_4e38

    or d
    add [hl]
    db $db
    ld d, l
    rst $28
    xor e
    rst $08
    ld d, b
    nop
    cpl
    ld b, d
    dec d

jr_033_4e38:
    ld a, [hli]
    sbc a
    ld c, [hl]
    sbc a
    dec sp
    rst JumpTable
    rst $20
    rst JumpTable
    inc de
    rst $38
    ld c, c
    rst $30
    ld d, a
    db $fd
    nop
    rst $38
    rst $38
    and b
    add b
    ld a, a
    ld a, a
    nop
    rst $38
    rlca
    dec c
    ld a, a
    nop
    pop hl
    ld bc, $0f0f
    ld a, a
    rst $38
    dec b
    ld a, a
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    xor b
    dec d
    rst $38
    nop
    add b
    add b
    inc bc
    rst $38
    db $fc
    rst AddAToHL
    rst $38
    nop

jr_033_4e6e:
    rst AddAToHL
    rst $38
    ld b, b
    nop
    ld b, b
    inc bc
    nop
    ld [$c007], sp
    ccf
    inc h
    nop
    rst $38
    add c
    nop
    rrca
    ld b, h
    inc a
    jp $1032


    rst $28
    xor a
    sub d
    nop
    ld a, [$028c]
    pop bc
    ld c, c
    ld h, a
    rrca

jr_033_4e8f:
    nop
    add b
    nop
    ld hl, sp+$47
    ld l, d
    cp a
    rst $08
    ld hl, $4905
    and b
    ld b, a
    dec d
    db $db
    rst $08
    pop af
    db $fc
    rrca
    add hl, bc
    ld hl, $5157
    jr nz, jr_033_4e6e

    rrca
    ld a, [bc]
    ld hl, $005f
    ld [bc], a
    dec h
    add b
    ldh a, [rNR42]
    ldh a, [rTAC]
    ld c, a
    ldh a, [rP1]
    add a
    rlca
    ld l, l
    nop
    ret nz

    ret nz

    nop
    nop
    rst $08
    rrca
    ccf
    ccf
    ret z

    cp e
    jr nz, @+$21

    rra
    and a
    cp $fe
    ld hl, sp+$60

jr_033_4ecd:
    ld hl, sp-$0d
    jr nz, jr_033_4ecd

    db $fc
    rlca
    nop
    ld a, a
    ld b, d
    nop
    xor e
    ldh a, [$f0]
    rst $00
    ret nz

    ld c, e
    nop
    ld b, [hl]
    cp $8f
    ldh [$e0], a
    ccf
    ld c, e
    ld hl, $1cfc
    nop
    ld bc, $2d01
    add hl, sp
    ld [hl], a
    pop af

jr_033_4eef:
    ld bc, $8f08
    rrca
    ccf
    ccf
    dec l
    add b
    add b
    rst $00
    ld b, $07
    rrca
    rrca
    ld a, a
    ld a, a
    add hl, hl
    and b
    nop
    sub l
    ld b, c
    inc bc
    rst $38
    ld l, $fe
    ld b, a
    db $fc
    jr z, jr_033_4f1a

    nop
    ld bc, $0fff
    rla
    add hl, bc
    ld hl, $7f22
    nop
    nop
    xor a
    nop
    dec sp

jr_033_4f1a:
    add b
    sbc $20
    jp z, $3101

    and l
    ld d, d
    ld c, d
    sub l
    ld a, d
    inc b
    ld sp, $fe00
    nop
    jp hl


    ld [bc], a
    or h
    inc bc
    ld e, c
    inc h
    inc bc
    or a
    ld c, b
    ld l, d
    ld de, $11a2
    cpl
    ld hl, $f300
    ld [$22dd], sp
    ld a, e
    inc b
    db $eb
    db $10
    inc c
    ld d, a
    jr z, jr_033_4eef

    ld [de], a
    ld l, a
    ld h, c
    ld a, [$8d01]
    inc hl
    dec [hl]
    nop
    cp a
    call $df21
    ld b, e
    inc c
    ld a, l
    add b
    xor e
    ld b, h
    rst $28
    pop hl
    ld a, l
    ei
    nop
    rst AddAToHL
    cp a
    ld c, [hl]
    ei
    db $ed
    ei
    db $e3
    ei
    nop
    reti


    db $fd
    push af
    rst JumpTable
    ld [hl], a
    rst $28
    xor c
    rst JumpTable
    nop
    sbc $b3
    db $f4
    cp c
    ccf
    ld sp, hl
    db $fd
    cp a
    nop
    rra
    or a
    cp a
    dec de
    ld c, a
    sbc a
    rrca
    rst JumpTable
    nop
    ld d, a
    adc a
    xor a
    add a
    ld b, d
    add a
    db $f4
    add a
    nop
    ld l, e
    jp nz, $8678

    adc [hl]
    db $f4
    ld l, e
    cp $00  ; and a / or a

jr_033_4f94:
    or [hl]
    rst $38
    ld a, l
    rst JumpTable
    rst $08
    rst JumpTable
    and a
    rst $08
    nop
    ld c, e
    rst $20
    and a
    ld [hl], a
    ei
    ld [hl], a
    sub [hl]
    adc $00
    ld e, l
    adc [hl]
    inc l
    sbc [hl]
    rst $38
    and [hl]
    jp c, $00f7

    rst $30
    rst JumpTable
    sbc [hl]
    rst $08
    ld d, a
    adc [hl]
    ld b, $db
    nop
    inc sp
    adc [hl]
    xor a
    ld b, a
    ld h, a
    rst $08
    db $db
    rst $08
    nop
    and [hl]
    rst JumpTable
    ld e, d
    rst $20
    or a
    cp $00  ; and a / or a
    rst $38
    ld a, b
    rst $38
    ld [hli], a
    ld b, c
    ld b, a
    ld b, b
    rrca
    rst $38
    ccf
    jr jr_033_4f94

    inc bc
    db $fc
    xor a
    or c
    ei
    nop
    ld d, c
    nop
    add d
    and e
    ld d, $a4
    ld e, a
    scf
    adc d
    add hl, hl
    nop
    rst JumpTable
    ld d, e
    adc $a3
    ret


    dec d
    xor b
    ld b, l
    nop
    and d
    xor [hl]
    inc bc
    db $db
    inc c
    ld d, d
    db $ec
    dec h
    nop
    ld a, h
    ld b, h
    rst $28

jr_033_4ffa:
    jp c, $c587

    db $10
    add hl, hl
    nop
    add [hl]
    or e
    ld [$39c4], sp
    jr jr_033_4ffa

    and l
    nop
    ei
    jp nz, $edef

    ld a, [hl-]
    jp hl


    ld d, $52
    nop
    inc h
    and b
    ld a, [bc]
    or [hl]
    ld c, c
    and h
    dec de
    ld c, c
    ld bc, $f13f
    daa
    ld e, h
    ld d, a
    ld e, b
    dec h
    dec hl
    nop
    ld a, c
    add d
    ld d, $c9
    db $ec
    ld c, e
    cp c
    ld b, [hl]
    nop
    ld c, d
    or l
    or l
    rst $28
    ei
    inc b
    rst $30
    ld [$5700], sp

jr_033_5037:
    and b
    ld c, l
    sub b
    or a
    ld c, b
    ld a, [hli]
    ld [hl], h
    nop
    ld h, h
    ld a, [de]
    push de
    ld a, $ff
    nop
    ld [hl], l
    ld [bc], a
    nop
    di
    nop
    push af
    ld a, [bc]
    rst JumpTable
    jr nz, jr_033_5037

    dec d
    ld [$403b], sp
    ld c, e
    inc h
    cpl
    cp $01
    db $fd
    nop
    nop
    xor a
    nop
    ld d, a
    add b
    or [hl]
    ld c, c
    ld c, e
    nop
    and h
    or l
    ld [bc], a
    rst $38
    ld a, a
    ld e, a
    cp [hl]
    cpl
    nop
    cp $fc
    cp $7b
    db $fc
    ld a, [hl-]
    db $fc
    cp [hl]
    nop
    ld hl, sp-$29
    ld a, [hl-]
    xor a
    rst $08
    ld d, $cf
    cp a
    nop
    rst $00
    rst AddAToHL
    rst $28
    ld l, l
    rst $38
    cp d
    ld e, l
    ld a, b
    nop
    dec a
    ld d, a
    add hl, sp
    ld d, d
    db $ec
    xor l
    ld hl, sp-$24
    ld bc, $fbf8
    db $fc
    ldh a, [$fa]
    db $ec
    rst $38
    dec [hl]
    nop
    xor e
    rst $08
    ld a, a
    ccf
    scf
    ccf
    dec sp
    sbc a
    nop
    ld c, a
    sbc a
    inc sp
    rst JumpTable
    rst $20
    rst JumpTable
    inc de
    rst $38
    nop
    ld c, c
    rst $30
    jp c, $be9e

    ld e, h
    add sp, $1c
    nop
    ld a, d
    sbc h
    db $76
    cp b
    pop af
    ld hl, sp-$4b
    ret c

    nop
    call $bdfa
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, [hl]
    dec a
    nop
    call nc, Call_033_4a3f
    scf
    ld a, e
    rla
    rst $20
    ld e, e
    nop
    rst JumpTable
    xor c
    ldh a, [rP1]
    rst $38
    nop
    rrca
    ldh a, [rNR41]
    ld bc, $26fe
    ld bc, $0fff
    rst $38
    rra
    or b
    inc l
    nop
    ld [hl], c
    ld hl, $e01f
    ret nz

    rst $38
    nop
    ldh [rIE], a
    db $fc
    rst $38
    xor a
    jp c, $ffd4

    nop
    cp [hl]
    ld a, d
    ld c, a
    db $dd
    ld e, a
    db $fd
    cp [hl]
    rst $30
    ld bc, $ffeb
    ld a, a
    rst $30
    rst $28
    db $d3
    sub c
    inc hl
    nop
    or d
    ld l, c
    cp $d5
    ld a, a
    ld a, e
    rst $38
    ld e, l
    nop
    rst $38
    ei
    cp a
    ld b, [hl]
    db $ec
    add d
    sub $d8
    nop
    di
    ld a, [hli]
    db $fd
    ld e, d
    or a
    db $ed
    sbc a
    ld e, a
    nop
    rst $38
    or l
    ld a, a
    ld b, l
    ld l, a
    or [hl]
    ld h, e
    ld a, h
    nop
    ld d, a
    inc hl
    db $fd
    or [hl]
    rst JumpTable
    cp e
    rst $38
    db $dd
    nop
    rst $38
    ld [$8fdf], a
    rst $30
    db $d3
    and $fa
    nop
    rst AddAToHL
    ld b, a
    sbc l
    ld e, l
    rst $28
    xor [hl]
    rst $30
    jp c, $ff00

    db $fd
    rst $38
    ld [bc], a
    sbc $5d
    or $b9
    ld [bc], a
    rst $38
    ld l, e
    or $d4
    rst $28
    cp a
    ccf
    ld l, a
    ld bc, $fea7
    xor d
    ld d, h
    ld b, h
    ld a, [$2d2b]
    nop
    rst $38
    call z, $fbdf
    sbc l
    ld d, a
    cp l
    cp l
    nop
    ld d, a
    daa
    ret c

    adc d
    ld d, l
    jp hl


    ld e, [hl]
    sub h
    nop
    db $eb
    ld [hl-], a
    rst JumpTable
    ld c, c
    rst $38
    xor h
    rst $38
    rst $20
    nop
    rst $38
    ld a, [de]
    rst $38
    ld a, h
    rst $30
    push hl
    di
    ld h, d
    nop
    or e
    jp $2971


    pop de
    ld d, c
    ret nz

    sbc d
    nop
    ldh [$35], a
    ld a, c
    ld a, e
    pop af
    ld d, l
    ei
    jp nc, $ff00

    cp e
    cp $1b
    rst $28
    add $bf
    xor $00
    or a
    ld l, e
    rst $00
    ld c, l
    add a
    rst AddAToHL
    inc bc
    sub a
    nop
    inc bc
    dec hl
    add a
    inc de
    jp $9722


    pop af
    nop
    ld a, [de]
    xor a
    rst $30
    push de
    rst $20
    sub $e3
    cp l
    nop
    rst AddAToHL
    cp $ef
    db $dd
    cp $59
    cp $f9
    nop
    ld a, [hl]
    or c
    rst $38
    sbc c
    cp a
    xor [hl]
    rra
    rra
    nop
    ld a, [bc]
    adc [hl]
    rlca
    ld d, a
    inc bc
    add d
    dec bc
    adc $00
    rlca
    xor e
    cp h
    cp b
    rra
    ld d, l
    ld e, $ab
    nop
    rrca
    call $b71f
    rrca
    ld c, a
    cp a
    inc sp
    db $10
    rst JumpTable
    ld a, a
    rst $38
    ldh [rSB], a
    rst $38
    nop
    rst $38
    ld e, $e0
    rra
    cp $0f
    add hl, bc
    jr nz, jr_033_5225

    ld hl, $0029
    cp $f4
    cp $ef
    ld a, h
    ld a, b
    dec a
    di
    nop
    ld l, l
    or h
    db $db
    swap [hl]
    inc c
    sbc a
    ld a, [$f700]
    inc a
    rst $38
    ld a, [hl-]
    ld a, h
    ld e, l
    ld hl, sp-$0b
    nop
    cp [hl]
    sbc $f5
    ld a, d
    db $fc
    db $e3
    ld hl, sp-$2d
    nop
    rst $30
    cp a
    and $44
    rst $28
    ld h, a
    db $fd
    ret


jr_033_5225:
    nop
    cp $ad
    rst $38
    rst AddAToHL
    rst $38
    ld h, a
    di
    sbc e
    nop
    cp $ec
    sbc $fe
    call z, $fcb5
    db $ed
    nop
    or $dd
    rst $38
    db $eb
    db $dd
    call $2d9e
    nop
    cp $f6
    ld a, [hl]
    cp [hl]
    ld a, h
    jr c, jr_033_52c4

    ld a, d
    add b
    ld hl, $f5df
    sbc [hl]
    ld a, [bc]
    sub a
    ei
    or $00
    ld l, h
    cp $3a
    ld a, h
    db $db
    inc a
    ld [hl], l
    ld e, [hl]
    nop
    sbc $75
    ld a, e
    db $fd
    db $e3
    ld sp, hl
    ld h, a
    ld l, a
    nop

jr_033_5265:
    cpl
    ld h, a
    rst AddAToHL
    inc hl
    db $db
    dec [hl]
    rst $30
    cp e
    nop
    rst $08
    ld a, [$8edf]
    ld c, [hl]
    sbc h
    rst $08
    db $ed
    nop
    xor [hl]
    rst $00
    ld d, a
    rst $20
    db $db
    or $2e
    ei
    nop
    pop af
    ld a, a
    ld [hl], l
    ccf
    ld a, a
    ccf
    cp h
    ldh [rP1], a
    sbc l
    ldh [rNR43], a
    ldh a, [$99]
    db $f4
    ld c, b
    and c
    nop
    jr z, jr_033_5265

    ld a, $c0
    ld a, [hli]
    sbc l
    add a
    rst $38
    nop
    sbc l
    ld a, [hl]
    ld a, d
    db $dd
    add h
    ld a, a
    ld d, b
    xor a

jr_033_52a3:
    nop
    dec d
    dec sp
    ld [hl], a
    cp c
    cp a
    sub e
    reti


    ld b, l

Jump_033_52ac:
    nop
    scf
    sub $44
    cp $2c
    cp $40
    cp $00  ; and a / or a
    cp l
    ld a, [$f8fa]
    ei
    db $fc
    db $fd
    ld a, [hl]
    nop
    add [hl]
    db $fd
    xor e
    ld [hl], h
    ld d, [hl]

jr_033_52c4:
    ld a, l
    ld [hl], d
    dec a
    nop
    inc h
    dec sp
    dec [hl]
    dec de
    ld e, a
    dec de
    rla
    add e
    nop
    pop de
    inc bc
    ld hl, $324d
    add l
    sbc [hl]
    jr nz, jr_033_52da

jr_033_52da:
    xor c

jr_033_52db:
    add b
    ld c, l
    and c
    ld h, a
    db $ec
    dec l
    rst JumpTable
    nop
    sub l
    rst $38
    xor $ff
    sbc $ff
    ei
    rst $38
    nop
    ld [hl], d
    rst $38
    ld [hl], b
    rst $38
    jp hl


    rst $38
    rst $38
    nop
    sbc c
    and c

jr_033_52f6:
    rra
    ldh [$66], a
    jr nz, jr_033_52db

    rra

jr_033_52fc:
    pop af
    inc h
    rrca
    ldh a, [rNR50]
    ret nz

    rst $38
    ld b, b
    add b
    nop
    ld h, b
    sbc [hl]
    sbc a
    sub h
    push bc
    add $e6
    jr nc, jr_033_52f6

    call $6816
    nop
    jr z, jr_033_52a3

    adc a
    xor [hl]
    xor a
    ld [bc], a
    and h
    push de
    sub $47
    ld c, b
    ld c, $1e
    sbc b
    add e
    nop
    add h
    add l
    add [hl]

jr_033_5326:
    add a
    adc b
    adc c
    adc d

jr_033_532a:
    adc e
    jr nz, @-$72

    adc l
    rra
    sbc b
    sub e
    add c
    sub l
    sub [hl]
    sub a
    ld [bc], a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    jr jr_033_539e

    inc b
    ld b, b
    inc d
    ld b, $18
    and e
    add c
    and l
    and [hl]
    and a
    xor b
    inc b
    xor c
    xor d
    xor e
    xor h
    xor l
    dec e
    ld d, b
    ld b, b
    ld b, c
    ld [$4342], sp
    ld b, h
    ld [hl-], a

jr_033_5358:
    ld [$b308], sp
    or h
    add d
    nop
    or [hl]
    or a
    cp b
    cp c
    cp d

jr_033_5363:
    cp e
    cp h
    cp l
    jr nz, jr_033_5326

    cp a
    inc e
    jr z, jr_033_52fc

    sub c
    sub d
    ld d, b
    ld d, c
    nop
    ld d, d
    ld d, e
    ld d, h
    inc hl
    inc h
    pop hl
    pop hl
    jp $c400


    add d
    add d
    rst $00
    ret z

    ret


jr_033_5380:
    jp z, $08cb

    call z, $ce81
    rst $08
    rra
    jr z, jr_033_532a

    and c
    and d
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e

jr_033_5391:
    ld h, h
    inc sp
    inc [hl]
    ret nz

    nop
    pop hl
    db $d3
    call nc, $8282
    rst AddAToHL
    ret c

    reti


jr_033_539e:
    ld [bc], a
    jp c, $dcdb

    db $dd
    sbc $df
    rra
    jr z, jr_033_5358

    nop
    or c
    or d
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    or b
    nop
    or c
    ret nc

    sbc l
    db $e3
    db $e4
    push hl
    add d
    add d
    nop
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    add c
    rra
    jr z, jr_033_5363

    pop bc

jr_033_53c8:
    jp nz, $8180

    add d
    reti


    stop
    ldh [$9c], a
    sbc l
    db $f4
    push af
    or $f7
    ld hl, sp+$01
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $ff
    sbc l
    jr nc, jr_033_5402

    pop de
    jp nc, $0882

    sub e
    sub h
    sub l
    sub [hl]
    ldh a, [rP1]
    pop af
    ld a, [c]
    di
    dec b
    ld b, $07
    ld [$0209], sp

jr_033_53f5:
    ld a, [bc]
    dec bc
    inc c
    dec c
    add c
    rrca
    ld e, $28
    xor h
    jr nz, jr_033_5380

    ld [c], a
    add d

jr_033_5402:
    ld [$a4a3], sp
    and l
    and [hl]
    nop
    nop
    ld bc, $0302
    dec d
    ld d, $17

jr_033_540f:
    jr jr_033_5391

    ld [bc], a
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    rra
    jr z, jr_033_53c8

    ld b, b
    cp l
    ld [hli], a
    ld [$b3b2], sp
    or h
    or l
    or [hl]
    stop
    ld de, $1312
    dec h
    ld h, $27
    jr z, jr_033_540f

    ld [bc], a
    ld a, [hli]
    add c
    inc l
    dec l
    ld l, $2f
    rra
    jr z, jr_033_53f5

    and b
    dec bc
    add hl, bc
    xor l
    ld d, h
    add hl, de
    jr nz, jr_033_5461

    ld [hli], a
    sbc h
    dec [hl]
    nop
    ld [hl], $37

jr_033_5446:
    jr c, @-$62

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld [hli], a
    ld a, $3f
    ld e, a
    jr c, @-$51

    cp l
    xor h
    ld d, h
    add hl, de
    jr nc, jr_033_5458

jr_033_5458:
    ld sp, $19bd
    ld b, l
    ld b, [hl]
    sbc h
    sbc l
    ld c, c
    ld [bc], a

jr_033_5461:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ccf
    ld b, b
    sbc [hl]
    ld b, b
    sbc a
    ld d, h
    add hl, hl
    or l
    add hl, hl
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld bc, $5a59
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    add d
    ld a, a
    ld b, b
    inc b
    xor [hl]
    xor a
    or a
    cp b
    add c
    ld d, h
    add hl, bc
    sbc l
    dec hl
    nop
    add hl, sp
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld a, [bc]
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld e, a
    jr nc, jr_033_5446

    ld l, e
    add hl, bc
    adc h
    inc b
    adc l
    adc [hl]
    add c
    adc a
    cp c
    ld a, [bc]
    ld [$7675], sp
    nop
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld h, b
    ld a, a
    rra
    jr z, @+$49

    nop
    nop
    ld c, $01
    ld bc, $8005
    ld d, $0f
    ret nz

    rst $30
    scf
    sbc $1f
    ld d, $57
    inc b
    ld h, e
    ld b, h
    rra
    add hl, de
    di
    ld e, e
    inc hl
    inc h
    jr @+$10

    ld bc, $ff01
    ld e, h
    db $fc
    rra
    ld de, $403d
    rst $38
    ld b, b
    ld a, $06
    ld b, $fa
    dec h
    ld e, $0e
    jr nz, jr_033_5502

    add hl, bc
    ld a, $07
    ccf
    ld b, $bf
    rst $38
    inc b
    rra
    rrca
    dec a
    ld e, a
    jr nz, jr_033_5510

    ld a, [bc]
    jr nz, @-$7c

    ld a, e
    ld bc, $0809
    nop
    ld [$057f], sp
    and c
    rra
    rrca
    ld [$0c2e], sp

jr_033_5502:
    add hl, bc
    add hl, bc
    ld a, [bc]
    jr nz, @-$49

    ld e, a
    ld [$9fbe], sp
    ld b, $df
    nop
    ld a, a
    push af

jr_033_5510:
    inc a
    ld hl, $203f
    ld bc, $06bf
    ld e, a
    rst $28
    cp $36
    ccf
    inc c
    rra
    add hl, bc
    jr nz, jr_033_555e

    ld h, $be
    ccf
    ld b, $20
    rst $38
    scf
    ld b, c
    ld b, b
    inc c
    cp a
    add hl, sp
    inc b
    ld e, a
    jr nz, jr_033_556f

    ld a, a
    sbc $7a
    ret


    sbc [hl]
    sbc a
    ld [$5f04], sp
    ld [$3d05], sp
    add hl, de
    ld b, $07
    ld b, $ff
    sbc l
    ld a, [bc]
    ld a, [bc]
    ld a, a
    rst $30
    ld a, $43

jr_033_5549:
    ld a, $3f
    rlca
    ld b, b
    rst $38

Call_033_554e:
    jr nz, jr_033_55cb

    dec bc
    ld b, b
    ld b, [hl]
    jr nz, jr_033_55b3

    inc b
    inc a
    cp a
    ld e, l
    inc b
    rra
    add hl, bc
    nop
    ld a, a

jr_033_555e:
    ld b, a
    ld a, a
    nop
    inc a
    push de
    ld b, b
    ld a, a
    rlca
    rra
    add hl, bc
    ld [$087f], sp
    ld l, b
    push bc
    jr nz, @-$61

jr_033_556f:
    inc b
    rlca
    inc b
    ld [hli], a
    ld b, $df
    ld hl, $4c4f
    nop
    ret c

    ld c, a
    ld c, l
    ld e, a
    ld e, h
    nop
    ret z

    dec b

Jump_033_5581:
    ld e, a
    ld c, l
    ld c, l
    ld e, l
    ld d, [hl]
    nop
    ret z

    ld e, l
    rra
    nop
    add hl, hl
    ld [de], a
    sub b
    sub c
    jr nc, jr_033_5591

jr_033_5591:
    ld c, b
    sub b
    sub c
    rra
    ld [hl], b
    add [hl]
    ld c, c
    add [hl]
    rra
    ld d, b
    add [hl]
    add [hl]
    rra
    ld [hl], b
    jr nc, jr_033_55d1

    ld d, a
    ld d, b
    jp z, $300d

    rra
    ld h, b
    sbc h
    ld h, e
    nop
    jr jr_033_5549

    rra
    or b
    ld h, e
    ld bc, $8080

jr_033_55b3:
    ld h, h
    ld h, l
    ld h, [hl]
    add b
    ld h, e
    rra
    ret nz

    ld [$6867], sp
    ld l, c
    ld l, d
    rra
    ret nc

    ld l, e
    ld l, h
    ld l, l
    ld b, e
    ld l, [hl]
    rra
    ret nc

    ld l, a
    ld [hl], b
    ld [hl], c

jr_033_55cb:
    ld [hl], d
    rra
    ret nc

    nop
    jr @+$01

jr_033_55d1:
    rra
    cp b
    cp a
    ldh a, [rIE]
    ldh a, [$1f]
    ret nc

    ld a, a
    ld bc, $ff40
    ld bc, $1f40
    nop
    jr c, jr_033_562c

    dec bc
    nop
    ret c

    dec hl
    dec hl
    rra
    nop
    ld [hli], a
    inc c
    inc l
    ld bc, $99c0
    rra
    db $10
    ld c, h
    ld l, h
    ld bc, $3fc0

Jump_033_55f7:
    ld b, b
    ld [$5708], sp
    ld d, b
    dec h
    ld [$3f08], sp
    ld [hl], b
    ld [$1f28], sp
    ld e, b
    jr z, jr_033_5646

    ld [hl], b
    ld a, [c]
    add a
    ld h, b
    dec c
    jr nc, jr_033_564d

    ld b, b
    rlca
    db $10
    ld [$000c], sp
    jr jr_033_561e

    rst $38
    dec c
    jr nz, jr_033_5659

    adc b
    nop
    jr nc, jr_033_565d

jr_033_561e:
    xor b
    ld e, $30
    ccf
    nop
    ld a, b
    cp a
    ld hl, sp-$01
    add sp, -$04
    ld bc, $3f40

jr_033_562c:
    add b
    ld a, a
    ld bc, $ff40
    ld bc, $3f40
    nop
    jr c, jr_033_567b

    inc bc
    add b
    and e
    and d
    and c
    ld b, b
    and d
    and e
    call nz, $00ad
    ld [de], a
    or e
    or d
    or c

jr_033_5646:
    ld b, b
    or d
    or e
    add b
    add hl, de
    ld [de], a
    rst $08

jr_033_564d:
    adc $cd
    call z, $ecee
    and a
    nop
    and [hl]
    and l
    and h

Call_033_5657:
    and h
    and l

jr_033_5659:
    and [hl]
    and a
    db $ec
    inc b

jr_033_565d:
    xor $cc
    call $cfce
    rra
    inc c
    rst JumpTable
    sbc $00
    db $dd
    call c, $effd
    or a
    or [hl]
    or l
    or h
    nop
    or h
    or l
    or [hl]
    or a
    rst $28
    db $fd
    call c, $20dd
    sbc $df

jr_033_567b:
    rra
    inc c
    db $db
    jp c, $cacb

    db $fd
    nop
    db $ed
    xor l
    xor h
    xor e
    xor d
    xor d
    xor e
    xor h

jr_033_568b:
    ld bc, $edad
    db $fd
    jp z, $dacb

    db $db
    rra
    inc c
    ld h, b
    nop
    ld b, b
    ccf
    cp l
    cp h
    cp e
    cp d
    cp d
    inc e
    cp e
    cp h
    cp l
    ccf
    ld l, a
    rra
    ld [de], a
    ret


    ret z

    ld [bc], a
    pop bc
    ret nz

    ret nz

    pop bc
    ret z

    ret


    rra
    jr jr_033_568b

    ld bc, $d1d8
    ret nc

    ret nc

    pop de
    ret c

    reti


    rra
    jr jr_033_571d

    db $d3
    ret nz

    rra
    inc [hl]
    xor $ec
    db $fd
    rst $38
    db $ec
    ld h, [hl]
    xor $7d
    add hl, hl
    rst $38
    db $fd
    add hl, hl
    rra
    db $10
    db $fd
    ld b, $ef
    cp $fc
    db $fc
    cp $7f
    ld h, a
    rst $28
    ld b, b
    db $fd
    rra
    ld de, $aeed
    xor a
    xor a
    xor [hl]
    sbc a
    jp nc, Jump_033_6740

    db $ed
    rra
    cpl
    xor $ec
    rra
    db $10
    db $ec
    ld c, b

jr_033_56ef:
    xor $1f
    inc c
    db $fd
    rst $28
    ccf
    cp [hl]
    cp a
    cp a
    ld a, [hl]
    cp [hl]
    ld a, a
    ld h, a
    ccf
    jr nc, jr_033_571e

    dec c
    jr nc, jr_033_56ef

    ld e, [hl]
    pop hl
    ld b, b
    db $d3
    ld b, b
    ld h, a
    ld c, [hl]
    rra
    ld [hl], b
    and $28
    ldh [$e8], a
    ld bc, $e60a
    rra
    ld de, $f0e7
    ldh a, [rHDMA2]
    ld hl, sp+$01
    dec bc
    rst $20
    rra

jr_033_571d:
    db $10

jr_033_571e:
    rst $30
    pop af
    nop
    dec c
    rst $30
    add l
    rra
    db $10
    ld [c], a
    ld [c], a
    pop hl
    pop hl
    inc hl
    db $d3
    ld b, b
    rst $08
    xor c
    rra
    db $10
    ld a, [c]
    ld a, [c]
    dec [hl]
    inc hl
    ld a, a
    xor c
    sbc h
    rra
    db $10
    push hl
    db $e4
    dec [hl]
    inc hl
    ld a, a
    db $e4
    push hl
    rst $20
    add hl, hl
    inc hl
    rra
    db $10
    push af
    db $f4
    dec [hl]
    inc hl
    ld a, a
    add hl, sp
    db $f4
    push af
    add hl, hl
    inc hl
    rra
    db $10
    db $e3
    db $e3
    dec [hl]
    rst $38
    inc hl
    ld a, a
    xor c
    rra
    db $10
    inc sp
    ld h, b
    ld a, a
    xor c
    ret nz

    rra
    ld l, [hl]
    ld d, l
    ld l, $80
    dec l
    ld b, b
    dec c
    ld b, b
    ld c, $80
    rst $28
    ld l, c
    ldh [$1f], a
    inc h
    dec c
    ld a, [hl]
    sbc a
    add hl, hl
    rra
    inc d
    cp $3a
    rst $38
    inc h
    rra
    dec d
    add b
    xor a
    rra
    add hl, sp
    jr z, jr_033_57e0

    ld [$1e1f], sp
    dec l
    xor a
    rra
    ld d, $0f
    ld a, [bc]
    rra
    ld [hl-], a
    dec c
    rst $30
    ld e, [hl]
    ld b, d
    add b
    ld b, [hl]
    dec l
    rra
    db $10
    ld [hl], e
    rst $38
    cp a
    ld c, c
    dec c
    rra
    ld de, $235b
    ld h, l
    sbc [hl]
    rra
    cpl
    rst $38
    ld a, d
    rra
    ld c, $24
    ld e, $0d
    sub e
    rra
    inc c
    ld e, $0d
    sbc c
    and $fd
    nop
    inc d
    rra
    ld h, e
    dec hl
    dec bc
    nop
    inc c
    rra
    ld de, $bf2b
    rra
    ld c, $0b
    rra
    ld [de], a
    ld h, b
    rra
    ld a, [de]
    ld b, d
    ld b, e
    xor h
    rst $38
    jp $2d1f


    and b
    dec d
    ld c, $1f
    inc l
    ld b, d
    ld b, e
    xor h
    db $fc
    jp $0d1f


    and b
    dec d
    ld c, $1f
    ld l, d
    jr nc, jr_033_57e0

jr_033_57e0:
    rst $38
    ld hl, $fa22
    nop
    ret nc

    nop
    inc e
    and b
    nop
    ld b, b
    ld b, e
    ld l, a
    ld hl, $01fe
    ld a, c
    rla
    add hl, hl
    and b
    adc a
    ld hl, $3ec1
    inc h
    add b
    inc sp
    ld b, $00
    inc bc
    db $fc
    rlca
    ld hl, sp+$1c
    nop
    db $e3
    add hl, hl
    sub $d3
    inc l
    push af
    nop
    xor b
    jr nz, jr_033_580d

jr_033_580d:
    ld b, b
    ld e, d
    ldh a, [rP1]
    add b
    nop
    ret nz

    ret nz

    ld b, e
    and b
    add b
    ld a, a
    ld b, b
    ccf
    db $10
    rrca
    ld [de], a
    ld [$0307], sp
    rst $08
    nop
    rst $38
    and c
    inc bc
    ld bc, $b8fc
    ld b, a
    ld sp, $7a0e
    inc b
    rst $28
    nop
    ret nz

    ccf
    ret z

    rlca
    ld [bc], a
    ld bc, $0001
    jr jr_033_586a

    ldh a, [rSVBK]
    ld b, c
    dec h
    or b
    ldh a, [$80]
    adc c
    ld b, c
    ret nz

    ldh a, [rP1]
    nop
    dec c
    rrca
    ld [$0a0b], sp
    ld [bc], a
    dec c
    dec c
    ei
    ei
    ldh [$e0], a
    xor e
    rlca
    ld bc, $3f07
    jr nc, @+$01

    ret nz

    rst $38
    add b
    dec h
    add [hl]
    ld l, l
    ccf
    jr c, @+$01

    nop
    pop hl
    add sp, $07
    ld [bc], a
    ld hl, sp+$1f

jr_033_586a:
    ldh [$7e], a
    add b
    push af
    adc $ca
    nop
    dec [hl]
    db $fd
    ld [bc], a
    ld d, a
    xor b
    ld [$8015], a
    ld b, b
    ld a, a
    xor a
    ld e, a
    and b
    and l
    ld e, d
    ld a, [$2005]
    and h
    ld e, e
    ld a, [hli]
    ret nc

    nop
    add sp, $00
    ld hl, sp+$48
    nop
    dec h
    and b
    nop
    nop
    ld d, $14
    nop
    jr nz, @-$5e

    rrca
    dec c
    rst $38
    pop bc
    rst JumpTable
    ldh [rNR22], a
    jr jr_033_58ae

    db $10
    rrca
    rlca
    rlca
    add hl, hl
    ldh a, [rIF]
    cp $01
    add b
    dec h
    ei
    rlca
    dec sp
    ei

jr_033_58ae:
    add sp, -$18
    db $f4
    nop
    db $f4
    db $fd
    inc bc
    and a
    ld e, a
    rra
    rst $38
    push af
    nop
    dec d
    sub b
    ldh a, [$e8]
    ld hl, sp-$48
    cp b
    ld e, b
    nop
    ld e, b
    ld b, $ff
    rst $08
    rst $08
    rst $00
    rst $00
    db $e3
    nop
    db $e3
    ld h, l
    ld h, l
    inc sp
    inc sp
    ld de, $0011
    add b
    nop
    ld de, $7f80
    ld [hl], b
    rrca
    ccf
    nop
    ld d, l
    ld [bc], a
    nop
    ld l, $00
    rlca
    nop
    ld [bc], a
    ld [hl], b
    rst $38
    pop bc
    ld hl, $1f22
    nop
    add e
    nop
    inc bc
    ld c, h
    ld hl, $0102
    ld l, a
    ret nz

    ccf
    ldh a, [rIF]
    ld h, $03
    db $e3
    inc e
    sbc a
    ld h, b
    ccf
    ret nz

    ld l, a
    ld hl, $3c28
    ret nz

    inc h
    cp $41
    db $ec
    db $10
    inc bc
    nop
    db $fc
    rrca
    ldh a, [$7f]
    add b
    dec a
    ld [bc], a
    ld b, $22
    ld bc, $4000
    ld b, b
    nop
    ei
    ld e, [hl]
    and e
    ld c, d
    ld e, h
    inc sp
    rlca
    ld hl, sp+$27
    dec d
    ld d, c
    ld d, b
    ld [hl], b
    xor a

jr_033_5929:
    ld d, b
    ld bc, $e81b
    ld d, h
    xor e
    xor d
    ld d, l
    inc c
    dec d
    ld [$fd02], a
    xor l
    dec hl
    dec b
    ld a, [$af0c]
    ld d, b
    ld d, l
    xor d
    daa
    xor a
    xor e
    ld d, h
    ld a, $5f
    and b
    dec h
    cpl
    inc sp
    xor a
    ld bc, $ea12
    db $10
    dec d
    or h
    ld c, e
    dec c
    ld a, [bc]
    ld a, [$5f05]
    and b
    ld a, [hli]
    ld a, [hli]
    push de
    ld [hl], l
    nop
    nop
    dec c
    ld a, [bc]
    dec c
    dec c
    dec hl
    jr nz, jr_033_5964

jr_033_5964:
    ret nz

    ret


    inc bc
    nop
    ccf
    nop
    ldh [rNR41], a

jr_033_596c:
    nop
    add c
    ld c, c
    dec l
    ld [bc], a
    ld e, a
    nop
    ld [hl], a
    nop
    nop
    jp z, $1000

    nop
    and c
    nop
    ld [bc], a
    nop
    nop
    rlca
    nop
    rra
    ldh [$f9], a
    ld b, $75
    nop
    ld a, [bc]
    jr jr_033_5991

    ld sp, $570e
    ld [$04b2], sp
    nop

jr_033_5991:
    ldh [rP1], a
    sub l
    ld h, b
    ld sp, $837c
    nop
    ld hl, sp+$07
    db $db
    nop
    add a
    nop
    ld a, [bc]
    nop
    add b
    jr nz, jr_033_596c

    nop
    ld d, b
    add b
    jr nz, jr_033_5929

    ret nc

    inc c
    nop
    and b
    nop
    jr nz, @+$4f

    nop
    ld a, [bc]
    ld bc, $0201
    rrca
    ld [$101f], sp
    rst $38
    add b
    xor l
    rlca
    add hl, de
    inc b
    rst $38
    nop
    and c
    jr nz, jr_033_59c7

    inc bc
    ld d, a
    inc b

jr_033_59c7:
    inc bc
    db $fc
    inc e
    rst $08
    ld c, a
    adc a
    rst $38
    ld d, $64
    jp hl


    jp c, Jump_033_5581

    xor d
    inc h
    dec d
    ld [$0f84], a
    ld a, [bc]
    ld a, a
    add b
    push af
    ld a, [bc]
    ld h, $aa
    ld d, l
    jp $22ef


    ld l, d
    sub l
    sub l
    ld l, d
    rra
    ld a, [bc]
    ld a, e
    daa
    ld b, b
    cp a
    rrca
    ld a, [bc]
    push af
    ld a, [bc]
    dec bc
    ld a, [bc]
    add c
    nop
    dec de
    ld [$0203], sp
    ccf
    jr nz, @+$0f

    ld a, [bc]
    rra
    db $10
    rst $38
    ld a, b
    nop
    ld hl, $0a00
    ld l, l
    rst $28
    ccf
    jr nz, @+$01

    ld b, e
    add b
    xor a
    ld bc, $0701
    ld b, $4d
    db $dd
    sub b
    pop hl
    cp $01
    ld hl, $07f8
    rst $20
    jr jr_033_5a3f

    ccf
    ret nz

    ld l, l
    pop af
    rrca
    inc e
    rst $38
    add sp, $10
    rst $38
    ld a, a
    add b
    cp e
    ret nz

    ccf
    inc bc
    db $fc
    jr nc, jr_033_5a41

    ldh a, [$ed]
    ld bc, $f70a
    rrca

jr_033_5a38:
    db $fd
    inc bc
    nop
    rst JumpTable
    ccf
    rra
    rra

jr_033_5a3f:
    inc bc
    inc bc

jr_033_5a41:
    dec b
    dec b
    inc bc
    nop
    nop
    ld bc, $0201
    ld [bc], a
    daa
    inc hl
    inc de
    ld hl, sp-$08
    rst $38
    nop
    add hl, bc
    ld a, a
    ld a, a
    inc hl
    add hl, sp
    jr c, jr_033_5a38

    ldh [rNR11], a
    ld a, [bc]
    ld l, a
    jr nz, @+$03

    ld bc, $12e7
    rst $20
    cp $fe
    rst $28
    rrca
    rrca
    dec h
    ld d, l
    inc d
    ld d, l
    xor e
    xor e
    ld c, h
    ldh [$7e], a
    ldh a, [$f0]
    sbc b
    cp c
    rst $38
    add b
    dec l
    ld l, a
    ld bc, $0301
    jr @+$04

    rst $38
    ld hl, sp-$53
    ld bc, $fe0e
    ld bc, $4287
    ld a, a
    xor c
    db $fc
    inc bc
    ld hl, sp+$07
    dec l
    inc hl
    db $10
    rst JumpTable
    and c
    rst $38
    ld l, l
    adc a
    ld [hl], b
    scf
    rst $08
    nop
    dec [hl]
    ei
    ld e, $1f
    or $ff
    adc l
    sbc [hl]
    add b
    dec l

jr_033_5aa2:
    rst $28
    db $10
    rla
    ld hl, sp-$21
    ldh [$3f], a
    ld bc, $7fc0
    add b
    db $fd
    inc bc
    rst $08
    ccf
    ld a, a
    add b
    ld hl, $17eb
    call $7b3f
    ei
    db $f4
    db $10
    db $f4
    and b
    ldh a, [$2b]
    ld hl, sp+$07
    ld a, [hl]
    rst $38
    nop
    add c
    ld h, c
    add c
    add d
    rla
    jr jr_033_5ad9

    ld c, $24
    ld e, h
    ld h, e
    cpl
    ccf
    ret nz

    inc hl
    ld a, a
    add b
    inc [hl]
    db $fd
    inc bc

jr_033_5ad9:
    dec h
    ld a, e
    db $fc
    add a
    inc bc
    db $fc
    nop
    cp a
    ret nz

    adc l
    ld a, l
    pop af
    add hl, bc
    ld [$a0f8], sp
    ld b, b
    inc b
    cpl
    cp $01
    di
    rrca

jr_033_5af0:
    adc e
    ld b, b
    rst $38
    ld h, c
    ld bc, $0b01
    dec bc
    ld d, a
    ld d, a
    rla
    xor a
    xor a
    rst $38
    jr nz, jr_033_5af0

    scf
    ld b, c
    and b

jr_033_5b03:
    jr jr_033_5b03

    rst $38
    ret nz

    adc l
    ld l, a
    db $fc
    rst $38
    ldh [$c0], a
    set 0, c
    db $fc
    inc bc
    ld hl, sp+$07
    rst $00
    jr c, jr_033_5aa2

    dec h
    adc $3f
    ccf
    dec a
    ld c, a
    db $fd
    ld [bc], a
    nop
    ld l, c
    rst $30
    or d
    ld a, a
    inc sp
    rst $38
    ld a, c
    push af
    jr nz, jr_033_5b3e

    reti


    dec l
    and $19
    scf
    rst $08
    ld b, c
    jr nz, @+$01

    ld h, a
    ld b, c
    ld l, a
    rst $38
    rst $28
    rst $38
    add a
    nop
    ld a, b
    inc sp
    rst $08
    ld d, e

jr_033_5b3e:
    or h
    db $ec
    rst $28
    push bc
    ld b, b
    rst $00
    ld h, c
    rst $20
    rst $20
    and b
    ld a, a
    call nc, $02db
    inc de
    sbc h
    sub d
    sbc l
    sbc c
    sbc a
    ld h, c
    dec de
    nop
    rra
    rrca
    rst $38
    ld h, e
    rst $38
    push hl
    dec e
    ld l, b
    ld [$f0f8], sp
    ldh a, [$f8]
    add b
    cp h
    cp a
    ld h, [hl]
    nop
    ld h, a
    inc sp
    inc sp
    ld c, c
    ld c, [hl]
    ld b, $09
    inc b
    db $10
    dec bc
    ld a, [bc]
    rrca
    jr nz, @+$15

    di
    and l
    and $00
    inc sp
    db $fc
    ld b, l
    rst $38
    dec c
    rst $38
    ld d, $fe
    nop
    ld a, h
    db $fc
    ret nc

    ldh a, [$38]
    add sp, -$38
    jr c, jr_033_5b8b

jr_033_5b8b:
    ret c

    ld hl, sp-$38
    ld hl, sp-$18
    ld hl, sp-$54
    cp h
    add b
    ld hl, $3838
    pop af
    adc $4f
    ld a, h
    ld c, h
    db $10
    ld a, a
    ld b, h
    ld [hl], a
    ld hl, $3724
    jr nz, jr_033_5bdc

    nop
    ld [$c71f], sp
    ccf
    ld a, a
    rst $38
    rst $28
    rst $28
    db $10
    rst $20
    rst $20
    and $40
    jp nz, $d2c2

    jp nc, $d402

    db $f4
    call nz, $cce4
    db $ec
    ld hl, $4088
    add sp, $21
    nop
    ld h, b
    ld [$0a68], sp
    cp $a0
    ld bc, $020a
    ld b, c
    rst $38
    nop
    cp e
    ld b, h
    ldh [rP1], a
    rra
    dec sp
    res 1, c
    pop af
    ld d, d
    cp $bc

jr_033_5bdc:
    nop
    cp h
    adc [hl]
    adc [hl]
    di
    rrca
    ret


    add hl, sp
    dec [hl]
    nop
    call $f880
    db $f4
    db $fc
    ld a, h
    ld a, h
    rra
    nop
    rra
    ld b, $06
    nop
    rst $38
    ld a, [$7eff]
    jr nz, @+$81

    ccf
    ld b, b
    rrca
    rrca
    dec b
    dec b
    add d
    nop
    add d
    rst JumpTable
    rst JumpTable
    rrca
    adc a
    inc bc
    add e
    ld b, l
    nop
    push bc
    jp $c1c3


    pop bc
    ld h, b
    ld h, b
    ld hl, $2100
    dec e
    reti


    sbc c
    db $dd
    reti


    db $dd
    sbc b
    add hl, hl
    call c, Call_033_40cc
    db $ec
    ld b, b
    db $ed
    db $fd
    ld hl, $e110
    push af
    pop af
    add c
    db $f4
    db $f4
    db $e4
    db $e4
    nop
    rst $20

jr_033_5c2f:
    rst $20
    db $e3
    db $e3
    di
    di
    or d
    or d
    ld [bc], a
    sub d
    sub d
    and d
    and d

Call_033_5c3b:
    jp nc, $23d2

    dec bc
    ld c, l
    rrca
    and c
    inc bc
    rlca
    ld hl, $f460
    ld b, b
    nop
    ldh a, [$f0]
    ret nc

    ret nc

    pop bc
    pop bc
    jp nz, $00c3

    ld b, d
    ld b, e
    ld b, c
    ld b, d
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    ld c, a
    ld c, a
    cp b
    rst $38
    ld h, d
    rst $38
    inc de
    rst $28
    ld [bc], a
    ldh [$1f], a
    pop bc
    ccf
    and b
    ldh [$3d], a
    jr c, jr_033_5c6d

jr_033_5c6d:
    ld hl, sp-$28
    ld hl, sp+$7c
    db $fc
    ld l, [hl]
    xor $c2
    ld [bc], a
    jp nz, $8585

    jr c, jr_033_5cb3

    jr jr_033_5cbd

    ld [$8090], sp
    nop
    nop
    ld b, h
    rra
    add hl, bc
    rra
    dec e
    jr nz, jr_033_5ca8

    dec d
    ld b, c
    dec b
    rrca
    ld bc, $090f
    nop
    rrca
    jp nc, $92d2

    sub d
    or e
    or e
    and e
    adc b
    ld b, b
    and c
    and c
    ld bc, $4840
    ld l, b
    ld b, b
    ld d, h
    ld h, b
    inc hl
    ld h, b
    ld b, b
    and b

jr_033_5ca8:
    ld b, b
    add b
    add b
    jr nz, jr_033_5c2f

    cp $21
    add h
    db $fc
    inc b
    ld a, h

jr_033_5cb3:
    inc c
    nop
    ld a, h
    ld [$1878], sp
    ld a, b
    ld d, b
    ld [hl], b
    nop

jr_033_5cbd:
    adc b
    nop
    inc c
    ld bc, $0201
    ld b, h
    ld [bc], a
    rlca
    ld [$2900], sp
    ld [hl], $33
    ld c, h
    ld a, [hl]
    add c
    db $ec
    inc de
    nop
    sub d
    ld l, a
    ld a, b
    add a
    rst $38
    nop
    cp $01
    nop
    sbc e

jr_033_5cdb:
    ld h, a
    ld h, a
    rst JumpTable
    pop de
    ld a, a
    ld l, $f1
    nop
    inc sp
    call z, $8000
    add b
    ld h, b
    jr nc, jr_033_5cdb

    nop
    ld hl, sp-$08
    adc $fe
    db $f4
    rst $38
    rra
    rst $38
    nop
    db $fc
    inc bc
    db $ec
    db $ec
    ld l, b
    ld l, b
    ld c, b
    ld c, b
    inc c
    nop
    nop
    ld [$2308], sp
    ld h, b
    ld h, h
    ld h, h
    nop
    ret nz

    ret nz

    call nz, Call_033_40c4
    ld b, b
    ld b, h
    ld b, h
    ret z

    inc hl
    ld l, a
    sub b
    sub b
    cpl
    ret z

    ret z

    add sp, -$60
    ld b, b
    ld l, b
    add b
    rlca
    rlca
    ld b, $06
    inc b
    ld h, b
    inc b
    inc hl
    ld h, a
    dec b
    dec b
    dec c
    dec c
    rlca
    nop
    ld [$1c13], sp
    rra
    jr nz, jr_033_5d5a

    ld d, [hl]
    ld [hl], b
    nop
    rrca
    sub b
    rst $28
    add c
    rst $38
    ld bc, $81fd
    nop
    ld a, a
    and e
    ld e, a
    rst $20
    rra
    add $3e
    adc [hl]
    nop
    ld a, [hl]
    inc c
    db $fc
    sbc h
    db $fc
    inc [hl]
    db $f4
    ret nz

    ld [$01c0], sp
    ld bc, $0000
    dec bc
    add b
    add b
    adc b
    ld a, b
    adc b

jr_033_5d5a:
    inc sp
    ld h, b
    add hl, hl
    ld l, l
    dec b
    rlca
    inc bc
    dec a
    inc bc
    ld bc, $0900
    ld sp, $0a09
    and b
    add b
    ld b, b
    ret


    db $eb
    ld h, b
    ld d, b

jr_033_5d70:
    ld [hl], b
    ld h, c
    db $10
    jr nc, @+$23

    or b
    jr nz, jr_033_5d98

    ld b, b
    jr jr_033_5d7d

    inc bc
    ld [bc], a

jr_033_5d7d:
    dec b
    dec b
    rrca
    ld bc, $3a0e
    ld b, l
    push af
    ld c, $ee
    rra
    rst $38
    ld d, b
    dec b
    rst $38
    rlca
    dec bc
    rst $20
    sbc a
    rst $30
    rrca
    rst $20
    rra
    jp Jump_033_693f


    db $f4

jr_033_5d98:
    inc d
    nop
    rst $38
    adc l
    or $92
    adc b
    db $ed
    ld a, [$f8e7]
    rst $28
    ldh a, [$dc]
    db $e3
    jr c, jr_033_5d70

    ld a, [bc]
    add b
    rst $38
    ccf
    ret nz

    sub a
    ld l, b
    nop
    nop
    nop
    ld a, l
    add d
    cp c
    ld b, a
    ld a, l
    add e
    nop
    ld d, b
    ld a, a
    nop
    ldh [$c0], a
    ld [hl], b
    or $39
    db $e3
    inc a
    or b
    ret c

    ld a, $ff
    dec de
    rst $38
    ld a, [$0000]
    add b
    ldh [$60], a
    ldh a, [$f8]
    ld hl, sp+$1c
    db $fc
    inc c
    db $fc
    rst $38
    ldh a, [rNR41]
    nop

jr_033_5ddb:
    nop
    nop
    nop
    nop
    db $fc
    ld [$0d0c], sp
    inc c
    dec c
    dec c
    dec c
    add hl, bc

jr_033_5de8:
    add hl, bc
    nop
    nop
    nop
    ret nz

    ld a, [c]
    inc hl
    ei
    pop de
    pop af
    add hl, de
    ld a, c
    cp c
    ld sp, hl
    ldh [$e0], a
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    nop
    rrca
    jr nz, jr_033_5de8

    add sp, -$10
    ldh a, [$c4]
    call nz, $8888
    sbc b
    sbc b
    db $10
    db $10
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    adc b
    xor d
    rst $38
    nop
    db $fc
    call nz, $3f8f
    jr c, jr_033_5ddb

    nop
    nop
    nop
    ld a, [bc]
    xor d
    rst $38
    ret nz

    ret nz

    ccf
    jr c, jr_033_5e26

jr_033_5e26:
    nop
    nop
    nop
    nop
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
    xor b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [$50]
    ld bc, $81ff
    ldh [$c9], a
    cp $ea
    db $fd
    rst $30
    ld hl, sp-$59
    ld hl, sp-$32
    pop af
    jp hl


    ld b, b
    dec b
    rst $38
    db $fc
    rst $30
    ld hl, sp+$4f
    or b
    sbc a
    ld h, b
    sbc b
    ld h, a

jr_033_5e5e:
    ld c, a
    di
    and a
    rst $00
    ld bc, $9f04
    db $d3
    cpl
    or a
    ld c, a
    rst $30
    rrca
    ld l, a
    ld e, a
    cp a
    rlca
    rst $38
    db $e3
    and e
    rst JumpTable
    ld d, l
    ld d, h
    rst $38
    inc bc
    inc bc
    add e
    add e
    pop bc
    ret nz

    ret nz

    add a
    ld hl, sp+$55
    ld c, d
    rst $38
    sbc c
    call c, $9ebc
    adc a
    ld h, h
    sbc a
    nop
    nop
    dec b
    ld b, b
    rst $38
    adc [hl]
    cp $96
    cp $88
    ldh [$fc], a
    xor $1f
    db $dd
    ccf
    ld e, a
    cp a
    ld a, [$0080]
    ret nz

    ldh [$e0], a
    and b
    and $e0
    xor $e0
    rst $28
    ld hl, sp+$00
    nop
    ld e, $1c
    inc hl
    ld a, [de]
    ld h, l
    ld hl, $065f
    rst $38
    ld c, a
    rst $38
    rst $38
    push de
    rst $38
    rst $08
    rst $20
    db $e3
    ld d, l
    ld d, l
    rst $38
    rst $28
    ld h, a
    add c
    add b
    ret nc

    add sp, -$22
    rst $30
    rst $38
    ld d, l
    rst $38
    ld a, a
    ld a, a
    ccf
    ld l, $5f
    db $fd
    rst $38
    jp hl


    db $fd
    ld a, a
    ld d, l
    ld e, a
    rst $38
    nop
    add b
    ret nz

    ld hl, sp-$08
    db $f4
    jr nz, jr_033_5e5e

    inc b
    nop
    rst $38
    ei
    inc bc
    db $fc
    add hl, bc
    or $fb
    rlca
    ld hl, sp+$0b
    db $f4
    add l
    ld a, [$0a54]
    rst $38
    inc bc
    ld bc, $a201
    ld e, l
    pop de
    ld l, $ed
    ld [de], a
    nop
    nop
    ret nz

    nop
    cp $ed
    db $fd
    ldh [$fc], a
    ldh a, [rIE]
    inc d
    ei
    jp $f53c


    ld a, [bc]
    ei
    inc b
    ld d, l
    db $f4
    rst $38
    ld a, a
    ccf
    db $fd
    cp $cf
    db $eb
    rst $30
    ld d, l
    ld a, a
    rst $38
    jp $e1e1


    ldh a, [$fe]
    dec e
    ld b, b
    rst $38
    db $d3
    rst $28
    db $eb
    ld a, [hl]
    ld [hl-], a
    rst JumpTable
    ldh [$bf], a
    ret nz

    ld l, c
    sub a
    jr z, jr_033_5f2e

jr_033_5f2e:
    ld a, a
    rst JumpTable
    and b
    add b
    add b
    rst $38
    nop
    sbc $21
    ccf
    ret nz

    ld b, [hl]
    ld sp, hl
    pop af
    cp $28
    ld b, l
    rst $38
    cp $01
    ld bc, $f103
    rrca
    inc b
    ld a, l
    cp $38
    inc a
    sub b
    inc b
    rst JumpTable
    cp a
    xor a
    ld [$88ff], sp
    ld a, a
    call z, $e43f
    rra
    ld h, $11
    rst $28
    and b
    nop
    pop hl
    rst $30
    push hl
    ld sp, hl
    ld sp, hl
    ld b, b
    ret nz

    ld a, h
    db $fc
    ld a, b
    rst $38
    daa
    ld hl, sp+$2d
    ld a, [c]
    inc bc
    db $f4
    nop
    ld b, e
    ld e, e
    add a

jr_033_5f72:
    or a
    ld [hli], a
    ld [hli], a
    add b
    ld b, b
    ret nz

    ld d, b
    ld a, [hli]
    rst $38
    pop hl
    ldh a, [$f3]
    db $fc
    rst $28
    ldh a, [$3f]
    ret nz

jr_033_5f83:
    nop
    nop
    nop
    add b
    dec b
    nop
    rst $38
    ld [hl], b
    adc a
    call z, $a133
    ld e, [hl]
    rst $20
    jr jr_033_5f72

    jr nz, @+$01

    rst $38
    ld b, b
    add b
    rst $38
    inc e
    jr jr_033_5f83

    ldh a, [rIF]
    rst $28
    stop
    cp $01
    rst $30
    rrca
    ei
    rlca
    ld d, l
    nop
    rst $38
    rra
    inc bc
    ld c, $03
    ret nz

    ccf
    inc bc
    db $fc
    rst $28
    ldh a, [$9f]
    ldh [rHDMA5], a
    ld l, d
    rst $38
    ld sp, hl
    ld hl, sp-$04
    inc a
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    rst $38
    and $f9
    ld [hl], c
    cp $6f
    ldh a, [$3f]
    ret nz

    ld d, l
    xor d
    ei
    inc b
    nop
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
    add d
    rst $38
    nop
    nop
    nop

jr_033_5fe3:
    nop
    nop
    ldh a, [rIF]
    db $fd
    ld [bc], a
    nop
    ld a, l
    rst $38
    rst $38
    ld sp, hl
    db $fd
    ld d, l
    ld d, l
    rst $38
    cp $f7
    ld a, c
    ld a, [hl]
    ccf
    xor a
    sub a
    rst JumpTable
    dec [hl]
    rst $38
    rst $38
    rst $20
    rra
    cp $fe
    ld d, l
    nop
    rst $38
    ld hl, sp-$08
    ld a, h
    inc e
    add [hl]
    ld a, a

jr_033_600a:
    ld h, c
    sbc a
    or b
    rst $08
    jp c, Jump_033_55f7

    ld d, l
    rst $38
    inc c
    ld b, $06
    ld [bc], a
    ld bc, $0000
    nop
    dec b
    ld d, l
    rst $38

jr_033_601e:
    ld de, $09ef
    rst $30
    nop
    nop
    nop
    nop
    add b
    ld b, b
    ld d, l
    ld d, l
    rst $38
    jr nz, jr_033_5fe3

    ld [hl], e
    ld [hl], c
    add hl, sp
    inc a
    rra
    rra
    ld d, b
    and e
    nop
    inc d
    inc bc
    nop
    ld a, [bc]
    and b
    and c
    and d
    and e
    inc c
    and h
    and l
    adc [hl]
    adc a
    rlca
    dec c
    rra
    dec bc
    or b
    or c
    inc bc
    or d
    or e
    or h
    or l
    sbc [hl]
    sbc a
    rlca
    dec c
    rra
    dec bc
    nop
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    ld e, b
    sbc a
    ld h, b
    adc l
    call $0b1f
    sub b
    sub c
    sub d
    ld b, b
    or [hl]
    ld b, b
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    ld a, b
    sbc l
    call $0b1f
    ld l, [hl]
    jr nz, jr_033_601e

    and a
    xor b
    ld [$aaa9], sp
    xor e
    xor h
    jr z, jr_033_600a

    adc d
    adc e
    ld [hl], b
    adc h
    jr nz, jr_033_60a6

    ld de, $ada0
    xor [hl]
    xor a
    inc c
    inc b
    dec c
    ld c, $0e
    rrca
    rrca
    rra
    ld [de], a
    or a
    cp b
    nop
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    sub e
    ld [$9594], sp
    sub [hl]
    ld a, [bc]
    rra

jr_033_60a6:
    dec bc
    ret nz

    pop bc
    jp nz, $c300

    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cb03

    call z, $cecd
    rst $08
    ld a, [bc]
    ld h, b
    rra
    dec bc
    nop
    ret nc

Call_033_60bf:
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    nop
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    add b
    rra
    db $10
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
    xor $40
    rst $28
    rra
    db $10
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    nop
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd

jr_033_60f5:
    jr nz, jr_033_60f5

    rst $38
    rra
    stop
    ld bc, $0302
    inc b
    rlca
    dec b
    ld b, $07
    ld [$9909], sp
    and b
    rra
    dec bc
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ret nz

    dec e
    dec bc
    rra
    dec c
    jr nz, jr_033_613a

    ld [hli], a
    inc hl
    inc h
    dec h
    jr nz, jr_033_6145

    daa
    rra
    jr jr_033_6153

    ld sp, $3332
    inc [hl]
    db $10
    dec [hl]
    ld [hl], $88
    rra
    jr jr_033_6146

    add hl, de
    ld a, [de]
    dec de
    ld [$1d1c], sp
    ld e, $1f
    rra
    jr jr_033_6161

    add hl, hl

jr_033_613a:
    ld a, [hli]
    ld b, $2b
    inc l
    dec l
    ld l, $2f
    rra
    jr c, jr_033_61a3

    inc c

jr_033_6145:
    nop

jr_033_6146:
    inc d
    dec c
    nop
    ld a, [bc]

jr_033_614a:
    rra
    ld h, e
    add $1b
    ld [de], a
    nop
    ld a, [bc]
    or l
    dec de

jr_033_6153:
    dec c
    dec l
    rra

jr_033_6156:
    ld [de], a
    nop
    dec bc
    ld c, $20
    ld l, $1a
    ld a, [de]
    cp $a0
    ld a, [de]

jr_033_6161:
    dec de
    rra
    inc de
    dec de
    ld c, $1f
    rrca
    inc e
    ld [de], a
    rra
    ld c, $0f
    db $fd
    ld b, b
    rra
    jr nz, @+$22

    rra
    jr nz, jr_033_6195

    rra
    sbc b
    ld c, a
    ret nz

    ret nz

    rra
    jr jr_033_617d

jr_033_617d:
    or b
    ld c, b
    ld [hl], b
    adc b
    db $d3
    jr z, jr_033_6156

    jr z, jr_033_618e

    ld a, h
    db $fc
    and h
    db $e4
    ld hl, $e7af
    rra

jr_033_618e:
    nop
    nop
    nop
    ld bc, $01c1
    ld e, l

jr_033_6195:
    ld bc, $8045
    ld b, c
    ld a, a
    rra
    pop hl
    rst $38
    ccf
    rrca
    ld a, a
    nop
    rst $38
    push hl

jr_033_61a3:
    db $e3
    dec l
    db $e3
    ld l, $ef
    jr z, jr_033_614a

    add c
    rst $38
    add b
    pop af
    rst $38
    ld bc, $0dff
    ld bc, $4dff
    rst $38
    ld de, $15ff
    ldh a, [$a1]
    db $10
    add hl, bc
    ldh a, [$0b]
    add c
    or b
    ld b, b
    cp a
    ld a, a
    inc b
    add b
    ld b, b
    xor a
    ld d, b
    xor a
    daa
    ld b, b
    cp l
    nop
    ld b, d
    adc l
    ld [hl], b
    nop
    nop
    inc e
    ldh [rVBK], a
    inc b
    ccf
    ret nz

    nop
    sbc a
    ld h, b
    ld hl, $02fd
    nop
    db $fd

jr_033_61e1:
    nop
    ld a, a
    ld a, a
    ld b, a
    ld a, h
    inc [hl]
    db $fc
    inc b
    ld [hl], h
    inc a
    inc d
    inc a
    call nc, $9641
    ld a, h
    nop
    and $f9
    and [hl]
    ld a, c
    ld h, [hl]
    add hl, sp
    ld h, $39
    nop
    and d
    dec a
    cp a
    ccf
    ret nz

    jr nz, jr_033_61e1

    jr nz, jr_033_6234

    db $e4
    ei
    ld sp, $e0a1
    rst $38
    ld e, a
    ccf
    ld [bc], a
    add b
    nop
    rst $20
    rst $38
    set 6, a
    and c
    db $eb
    nop
    rst $30
    ei
    rst $38
    inc hl
    rra
    inc [hl]
    jp z, $002c

    jp nc, $c23c

    ld [hl], h
    adc d
    ld c, d
    or h
    ld d, d
    ld bc, $50ac
    xor h
    ld b, c
    cp h
    db $ed
    nop
    jr nz, jr_033_6231

jr_033_6231:
    inc b
    ld hl, sp-$08

jr_033_6234:
    rlca
    adc a
    nop
    add b
    nop
    nop
    call z, Call_033_4020
    dec l
    nop
    rra
    inc bc
    rra
    ld bc, $0f17
    ld a, [hl-]
    rst $08
    jp c, $1a2f

    ld b, c
    ld bc, $3f8f
    ld e, $ff
    db $e3
    cp $23
    add c
    nop
    cpl
    cp $ff
    cp $83
    cp $ca
    ld [hl], l
    ld [bc], a
    jp nz, $067d

    ld sp, hl
    push de
    xor d
    ld h, c
    push af
    dec b
    adc d
    call $a8b2
    rst $28
    ld hl, $c1b8
    ld c, c
    cp a
    ld b, c
    ld bc, $e1ff
    ccf
    rst $38
    jr nz, @+$0c

    pop bc
    rst $38
    add hl, hl
    rst $28
    ld hl, $4138
    dec sp
    ld [$6741], a
    cp e
    dec c
    ld b, c
    ld hl, $3f47

jr_033_628a:
    ld a, [bc]
    rst $38
    dec bc
    ldh a, [$03]
    ld b, c
    ld b, $41
    ld d, $80
    add c
    rrca
    ld [hl], b
    ccf
    ld b, b
    cpl
    ld d, b
    inc l
    nop
    ld b, e
    inc a
    ld b, e
    rra
    ld h, b
    ccf
    ld a, a
    ret nz

    nop
    ld a, a
    rst $28
    db $10
    xor a
    ld b, b
    db $fd
    ld [bc], a
    db $dd
    nop
    jr nz, jr_033_628a

    ld b, $f9
    ld b, $bf
    ret nz

    ccf
    nop
    rst $38
    sub [hl]
    inc a
    sub $3c
    sub [hl]
    ld a, h
    sub h
    nop
    ld a, h
    call nc, $953c
    ld a, h
    push de
    inc a
    push de
    db $10
    db $fc
    rst JumpTable
    jr nz, jr_033_62ef

    rst $38

jr_033_62cf:
    jr nz, jr_033_62cf

    ccf
    dec c
    rst $20
    ccf
    ld hl, sp+$27
    daa
    ld b, c
    nop
    ld h, c
    nop
    ld a, a
    add b
    rst $38
    rst $38
    inc bc
    rst $38
    ld hl, sp+$07
    or d
    add hl, hl
    pop bc
    adc a
    ld hl, $e01f
    ld sp, $000f
    rst $38

jr_033_62ef:
    ldh a, [rIF]
    ld d, c
    xor h
    ld b, c
    cp h
    xor c
    ld b, b
    ld d, h
    and c
    sub l
    ld l, b
    or l
    ld c, b
    nop
    dec c
    ld [$2c40], sp
    ld b, b
    dec l
    and l
    inc c
    ld bc, $02e0
    nop
    cp h
    rra
    jr nc, jr_033_632d

    or b
    ld b, c
    inc sp
    jr nz, jr_033_6332

    cp a
    ld hl, $3f0f
    rrca
    dec b
    cp $22
    rlca
    db $fc
    ld hl, $fd1e
    cp $81
    rst $38
    nop
    db $fd
    inc a
    jp nz, $1ae4

    adc h
    ld [hl], d
    inc l
    nop

jr_033_632d:
    jp nc, Jump_033_52ac

    ld l, h
    sub d

jr_033_6332:
    cp $7f
    sub d
    dec b
    pop af
    or h
    rst $28
    xor h
    rst $20
    ld h, c
    xor l
    add l
    nop
    cp h
    rst $20
    dec b
    rst $38
    ld b, c
    rst $38
    ld bc, $60ff
    inc de
    ld b, e
    ld h, c
    ld hl, $1fff
    rst $28
    rla
    db $10
    rst $28
    inc e
    rst $20
    and c
    inc c
    rst $20
    dec c
    rst $20
    nop
    rst $38
    rst $38
    pop hl
    rst $38
    rlca
    rst $38
    add hl, sp
    rst $38
    nop
    ld de, $15ff
    rst $38
    ld a, c
    rst $38
    push bc
    rst $38
    jr z, jr_033_6383

    ldh a, [rNR42]
    inc de
    ld bc, $3309
    ldh a, [rIE]
    ld b, b
    ld b, b
    ld hl, $40c5
    pop af
    ld b, b
    or $40
    ld [hli], a
    sbc a
    ld h, b
    ld h, c
    nop

jr_033_6383:
    rst $38
    rst $38
    ld [hli], a
    nop
    nop
    rlca
    nop
    ld e, b
    nop
    ei
    nop
    pop af
    nop
    ld bc, $01fe
    dec [hl]
    db $fc
    or l
    ld a, h
    and l
    ld b, c
    ld b, d
    and a
    add c
    daa
    db $fc
    rst $38
    jr nz, jr_033_6402

    ld a, a
    sub b
    ld bc, $ff09
    nop
    ld bc, $f10a
    rrca
    cp $0f
    add b
    rrca
    inc c
    rst $38
    db $fc
    res 0, [hl]
    ld c, b
    rlca
    ld d, b
    nop
    rrca
    ld b, b
    rra
    ld h, h
    add hl, de
    ld d, c
    nop
    ld b, c
    nop
    nop
    ld a, h

Jump_033_63c3:
    nop
    inc bc
    nop
    ld b, $fa
    ld [bc], a
    nop
    cp $0a
    ld a, [c]
    inc bc
    ld a, [$d903]
    ld b, l
    ld bc, $0589
    add c
    ld sp, hl
    ld bc, $ff80
    ld hl, $4008
    rst $38
    ret nz

    ld a, a
    ld hl, $7f7c
    ld a, e
    inc b
    ld b, a
    ld a, a
    ld b, b
    nop
    rst $38
    ld bc, $f00a
    rst $38
    nop
    rst $28
    rra
    inc bc
    rst $38
    ld c, $fc
    inc [hl]
    rst $38
    ld [$e458], sp
    ld a, b
    call nz, $b421
    ret z

    db $f4
    ld [de], a
    adc b

jr_033_6402:
    cp h
    rst $20
    ld bc, $010e
    rst $38
    ld bc, $0c0e
    ld b, l
    rst $20
    ld hl, $e72c
    inc h
    ld b, c
    inc [hl]
    add c
    ld bc, $ff45
    rlca
    rst $38
    add hl, sp
    rst $38
    add hl, bc
    ld b, c
    add d
    cp a
    dec sp
    ldh a, [$39]
    ldh a, [$29]
    add c
    dec l
    add b
    add c
    ret nc

    ld h, b
    db $dd
    ld h, b
    call $ce70
    nop
    ld [hl], c
    rst $00
    ld a, b
    ld hl, sp+$47
    cp e
    ld b, h
    or h
    nop
    ld c, e
    rst $38
    nop
    ld c, $f1
    cp h
    ld b, e
    rra
    nop
    ldh [$c1], a
    ld a, $1b
    db $e4
    ld b, c
    cp [hl]
    ld a, [hl]
    inc de
    add c
    and [hl]
    ld a, h
    ld h, c
    ld h, $fc
    ld hl, $0225
    and h
    ld a, h
    inc h
    db $fc
    ld a, a
    jr nz, @-$5d

    rst $38
    add h
    pop bc
    ld hl, sp+$0f
    add sp, $1f
    ld bc, $830c
    add d
    add d
    ld h, c
    pop bc
    add e
    inc bc
    pop bc
    ld b, c
    add c
    nop
    ld bc, $8000
    ld a, b
    ldh a, [$0b]
    add d
    ld [$0121], sp
    ld a, [$4300]
    add b
    ret nz

    ret nz

    rlca
    jr nc, jr_033_6482

jr_033_6482:
    nop
    jr nz, @-$3e

    inc bc
    inc l
    add hl, bc
    jr nz, @+$2b

    ld bc, $e900
    nop
    ld [$7f00], sp
    ld b, b
    ld h, c
    nop
    ld a, c
    ld a, [hl]
    ld h, a
    ld a, a
    add hl, sp
    ld h, a
    dec a
    ld h, e
    ld [$237d], sp
    rst $38
    nop
    and c
    di
    db $fc
    rst $38
    nop
    rst $38
    pop af
    rst $38
    db $e4
    ei
    ld a, a
    cp $fc
    ld c, c
    inc bc
    or c
    rst $20
    ld hl, sp+$71
    cp h
    rst $20
    ld hl, $ac25
    rst $30
    and c
    and h
    rst $38
    ld hl, $0101
    rrca
    inc d
    ccf
    rst $20
    dec a
    ld b, c
    inc a
    ld b, c
    inc l
    rst $30
    add b
    ld h, c
    add hl, bc
    rst $38

jr_033_64ce:
    ret


    rst $38
    dec e
    rst $38
    ld [hl], c
    ld [bc], a
    rst $38
    ld de, $0dff
    rst $38
    ld sp, $3d5f
    jr z, jr_033_64ce

    dec [hl]
    ld b, c
    dec d
    ld b, c
    ld de, $13f0
    inc b
    ldh a, [rNR31]
    ldh a, [$bf]
    ld b, b
    ld hl, $5ea1
    ld [bc], a
    cp e
    ld b, h
    or b
    ld c, a
    rst $38
    ld b, b
    ld hl, $00ef
    ld d, b
    add [hl]
    ld a, c
    xor $11
    ld l, a
    sub b
    ei
    nop
    inc b
    dec sp
    call nz, $3fc0
    rst $30
    ld [$14e1], sp
    ld e, $a4
    ld a, h
    and c
    or l
    add c
    dec [hl]
    db $fc
    inc h
    rst $38
    jr nz, @+$03

    ld c, $c8
    ccf
    ld bc, $600e
    pop bc
    db $10
    ld bc, $20e0
    add c
    jr nc, @-$1e

    nop
    ldh a, [rP1]
    db $10
    ldh a, [$c0]
    rst $38
    jr nc, jr_033_653c

    ld [hl-], a
    rst $00
    ld a, [bc]
    ld [hli], a
    rra
    ld [bc], a
    inc bc
    ld hl, $2300

jr_033_6537:
    ld bc, $ff22
    add b
    pop hl

jr_033_653c:
    cp a
    ret nz

    ld a, a
    inc a
    ld b, b
    jr nz, @+$12

    ldh a, [rNR42]
    jr jr_033_6537

    ld [$09f8], sp
    add b
    ld b, c
    dec bc
    ld hl, sp+$0f
    ld hl, sp-$3f
    ld bc, $04ff
    ld sp, hl
    di
    rrca
    rst $38
    nop
    ld h, c
    sbc a
    ldh [$08], a
    rst $38
    rst $38
    ld a, a
    ld b, b
    ld h, c
    rst $38
    ld b, b
    sbc a
    ld [de], a
    ld h, b
    rst $38
    jr nz, jr_033_65cb

    and h
    rst $38
    ld bc, $010e
    xor b
    ld bc, $240f
    ld bc, $810f
    sub l
    ld h, c
    rst $38
    ld hl, $ff09
    dec l
    rst $38
    ld [hl], c
    ld c, c
    dec de
    ldh a, [$61]
    ld b, h
    dec sp
    ld b, c
    ccf
    ldh a, [$2f]
    ld b, c
    pop bc
    ld a, [hl]
    ld [bc], a
    or $49

jr_033_658f:
    cp $41
    rst $38
    ld b, b
    ld hl, $10dd
    ld h, d
    rst JumpTable
    ld h, b
    ld hl, $00ff
    ld [bc], a
    db $fd
    jr nz, jr_033_658f

    db $10
    ld hl, $01fe
    ld c, $f1
    or b
    dec b
    ld c, a
    cp l
    ld b, d

jr_033_65ab:
    or l
    ld a, h
    ld h, c
    or h
    ld b, c
    add hl, bc
    or [hl]
    ld a, h
    ld [hl], $fc
    inc hl
    cp a
    jr nz, @+$03

    ld c, $30
    adc b
    ld a, a
    ld bc, $000e
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    xor e
    xor h
    xor l
    inc b
    xor [hl]
    xor a

jr_033_65cb:
    set 1, e
    inc bc
    nop
    inc de
    sbc e
    sbc h
    nop
    sbc l
    sbc [hl]
    sbc a
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    jr nz, jr_033_65ab

    adc $1f
    inc d
    add b
    add c
    add d
    add e
    add h
    ld bc, $8685
    add a
    adc b
    adc c
    adc d
    adc d
    rra
    inc d
    nop
    sub b
    sub c
    sub d

jr_033_65f3:
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld [$9998], sp
    sbc d
    sbc d
    rra
    inc d
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
    xor d
    rra
    inc d
    or b
    or c
    or d
    or e
    or h
    or l
    ld [bc], a
    or [hl]
    or a
    cp b
    cp c
    cp d
    call z, $141f
    ret nz

    nop
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    jr nz, jr_033_65f3

    jp z, $151f

    ret nc

    pop de
    jp nc, $d4d3

    ld bc, $d6d5
    rst AddAToHL
    ret c

    reti


    call $1fcf
    inc [hl]
    ld d, h
    inc bc
    jr nz, @+$04

    ld b, b
    ld bc, $2140
    dec c
    cp $00  ; and a / or a
    inc de
    rra
    ld [hli], a
    ld a, d
    add b
    rra
    dec d
    dec e
    add hl, bc
    rra
    ld h, d
    ld bc, $1fb8
    inc [hl]
    ld b, c
    nop
    dec bc
    rra
    inc d
    ld d, b
    nop
    nop
    inc de
    ld bc, $0722
    ld bc, $050e
    inc b
    dec sp
    dec e
    ld h, e
    dec l
    ld d, e
    rra
    inc d
    nop
    ld hl, sp+$00
    ld hl, sp+$77
    rst $38
    ld b, $ff
    ld hl, sp-$01
    ld e, a
    jr nc, @+$01

    ld [$151f], a
    ld h, b
    ldh [$e0], a
    sub b
    ldh [rBCPS], a
    ldh a, [rNR42]
    add hl, de
    inc de
    ld bc, $0c01
    rlca
    jr c, @+$20

    nop
    pop hl
    ld h, b
    sbc a
    dec c
    ld a, [c]
    ld d, e
    xor h
    dec l
    nop
    jp nc, $a05f

    ld [hli], a
    db $dd
    ld b, d
    cp l
    ld c, d
    inc b
    or l
    ld a, [de]
    push hl
    xor d
    ld d, l
    ld hl, $5da2
    ret nz

    ld hl, $6125
    sbc [hl]
    ld a, a
    rst $08
    ld a, a
    jp nc, $7f00

    add sp, $7f
    push de
    ld a, a
    rst $38
    ld b, e
    db $fd
    nop
    ld hl, sp+$47
    rst $38
    ld e, b
    rst $38
    ld e, a
    rst $28
    ld d, [hl]
    nop
    ld [c], a
    rst JumpTable
    ldh a, [$df]
    ld hl, sp-$49
    ret nz

    cp a
    nop
    ldh [$9f], a
    ld hl, sp+$74
    call nz, $fc3a
    ei
    db $10
    cp $27
    cp $23
    cpl
    cp $d5
    ld c, $00
    di
    ld [c], a
    rra
    ld [hl], e
    adc $7b
    cp $79
    ld bc, $25b7
    ei
    dec b
    rst $38
    dec c
    rst $30
    ld hl, $0058
    nop
    db $10
    add b
    ld bc, $000f
    ld a, [de]
    ld bc, $0700
    jr nz, @+$03

    ld c, $1d
    add hl, de
    inc a
    ld e, $ed
    ld a, a
    rst $38
    jr nc, jr_033_6787

    adc a
    rra
    add hl, de
    ld b, b
    add b
    ld b, b
    ldh [$d0], a
    and h
    jr jr_033_6728

    ld bc, $0c01
    ld bc, $0102
    inc c
    ld a, $ff
    nop
    ei
    rst $20
    cp [hl]
    rst $28
    cp c

jr_033_6722:
    rst $28
    cp b
    rst $28
    ld l, [hl]
    cp d
    ld b, e

jr_033_6728:
    daa
    cp h
    adc c
    ld h, l
    ld hl, $29bf
    rst $28
    or a
    add hl, hl
    rst $20
    ld bc, $ac0e
    rst $30
    and c
    ld a, [hli]
    and h
    rst $38
    pop hl
    or h
    ld bc, $bc09

Jump_033_6740:
    ld b, c
    ld [$f701], sp
    inc hl
    call c, $a05f
    ccf
    ret nz

    inc hl
    ld [$40bf], sp
    rst $38
    nop
    and c
    rst $30
    ld [$000f], sp
    ldh a, [$d3]
    inc l
    ld hl, sp+$07
    cp $01
    adc b
    jr nz, jr_033_67d6

    nop
    jr nz, jr_033_6722

    ret nc

    jr z, @+$7a

    add a
    ret nz

    ei
    cp a
    ld e, a
    and b
    cp a
    ld [hl], b
    dec e
    cp $80
    ld a, [hli]
    ld a, [hl]
    add c
    nop
    rlca
    inc bc
    inc c
    ld b, $00
    add hl, de
    nop
    rra
    ld [$c1ff], sp
    ccf
    db $f4
    ld b, d
    dec bc
    dec sp
    ld a, e
    add h
    pop af

jr_033_6787:
    ld c, $25
    sbc l
    nop
    ld h, d
    ld l, d
    sub l
    add a
    ld a, b
    dec hl
    rst $38
    ld e, a
    add d
    ld a, [hli]
    add b
    add b
    ld b, b
    nop
    ldh [rNR42], a
    cp b
    nop
    ld hl, sp-$04
    db $fc
    ld a, [hl]
    cp $bf
    ld b, b
    di
    nop
    inc c
    jp hl


    ld d, $a1
    ld e, [hl]
    or $09
    xor c
    dec b
    ld d, [hl]
    jp nc, $7f2f

    rst $38
    jr nz, jr_033_67b6

jr_033_67b6:
    nop
    ld c, $00
    ret nz

    add b
    ld [hl], b
    ld b, b
    cp h
    ld d, h
    xor [hl]
    ld a, [de]

jr_033_67c1:
    nop
    cp $4e
    rst $38
    db $fd
    rst $38
    rst JumpTable
    rst $38
    cp $40
    rst $38
    ld e, c
    add hl, hl
    ret nz

    jr z, @+$42

    db $eb
    add hl, hl
    inc bc
    nop
    ld a, [bc]

jr_033_67d6:
    sub l
    rra
    ld [c], a
    call z, $40ca
    call $cd7f
    ld l, c
    ld b, l

jr_033_67e1:
    call z, $101f
    set 1, [hl]
    jp c, $dd20

    ld a, a
    ld c, b
    db $dd
    ld c, b
    adc $cb
    rra
    ld c, $ca
    jp z, $2adf

    db $db
    ret


    jr nz, jr_033_67c1

    ld a, a
    ret z

    ld c, b
    db $db
    ld d, l
    rst JumpTable
    ld sp, $1fca
    dec bc
    jp c, $dd20

    rra

jr_033_6807:
    inc c
    ld e, c
    db $dd
    ld d, b
    jp c, $0b1f

    ld a, e
    call z, $ffcd
    jr c, jr_033_67e1

    call z, Call_033_4023
    rra
    rrca
    set 3, e
    reti


    ld b, d
    ret c

    ld a, a
    ret c

    reti


    db $db
    rr a
    ld d, $29
    ld [hl], l
    add hl, hl
    ld a, a
    dec h
    rra
    ld [de], a
    reti


    jr nz, jr_033_6807

    rra
    inc c
    ld d, a
    ret c

    ld d, b
    reti


    rra

jr_033_6836:
    dec bc
    ld l, l
    ld b, b
    rra
    inc c
    ld l, a
    ld h, b
    ld l, l
    rra
    ld c, e
    ld c, l
    ld a, [bc]
    ret nz

    ld a, [hli]
    ld a, [hli]
    ld h, e
    ret nz

    dec c
    nop
    ld a, [bc]
    rst $28
    rra
    ld [c], a
    and a
    ld a, a
    dec l
    add b
    rra
    ld l, $e0
    rra
    ld a, [bc]
    db $fd
    ld b, b
    rra
    ld [hl], c
    dec sp
    ld a, a
    inc hl
    rra
    ld [hl-], a
    inc c
    ld b, b
    cp b
    rra
    inc c
    inc l
    ld h, b
    rra
    ld c, e
    jr z, jr_033_6836

    jp z, $cdc0

    add hl, hl
    rst JumpTable
    sra b
    add h
    ld b, b
    adc [hl]
    adc a
    jr z, @+$05

    nop
    ld a, [bc]
    set 1, [hl]
    ld c, d
    jp c, $cf80

    bit 1, c
    db $dd
    ld a, a
    sbc [hl]
    ld b, h
    sbc a
    rra
    dec c
    db $db
    call nz, $40c5
    call nz, $a7db
    ccf
    db $db
    dec sp
    sbc h
    sbc h
    inc hl
    ld b, b
    rra
    dec c
    ld [bc], a
    add $a0
    and c
    and d
    and e
    add $bf
    adc c
    ld b, d
    adc d
    rra
    inc de
    or b
    or c
    or d
    or e
    rst JumpTable
    sbc c
    ld b, d
    sbc d
    rra
    inc de
    ldh [$e1], a
    ld [c], a
    db $e3
    rst JumpTable
    adc [hl]
    ld c, b
    adc a
    inc hl
    sbc h
    sbc h
    rra
    rrca
    ldh a, [$f1]
    ld a, [c]
    ld c, c
    di

jr_033_68c1:
    rst JumpTable
    sbc [hl]
    sbc a
    inc hl

jr_033_68c5:
    adc c
    adc d
    rra
    ld c, $2c
    call nc, Call_033_40d5
    call nc, Call_033_60bf
    sbc c
    sbc d
    sub [hl]
    rra
    dec c
    sbc $ca
    add b
    rst JumpTable
    ccf
    ld l, c
    call $3f92
    adc [hl]
    adc a
    rra
    inc c
    call c, $20da
    rst $08
    ld d, h
    adc $44
    db $dd
    adc c
    srl a
    sbc [hl]
    sbc a
    sub b

jr_033_68f0:
    rra
    inc c
    ret z

    ret


    jr nz, jr_033_68c1

    db $db
    ld l, d
    ld l, d
    inc a
    ret


    ret z

    xor c
    ccf
    ld b, b
    rra
    ld de, $7a7a
    dec c
    reti


    ret c

    ret c

    reti


    jr nz, @-$3f

    sbc h
    rra
    ld de, $2969
    ret nz

    cp a
    adc c
    rra
    dec bc
    ret c

    reti


    jr nz, jr_033_68c5

    rra
    db $10
    sbc c
    rra
    dec bc
    ld l, l
    ld b, b
    rra
    db $10
    adc [hl]
    rra
    rra
    ld e, b
    sbc [hl]
    rra
    rra
    jr z, jr_033_6949

    ld c, e
    ld e, l
    dec c
    nop
    inc c
    dec l
    dec c
    dec c
    nop
    ld c, $1b
    add hl, de
    rrca
    ld h, b
    ccf
    cpl
    dec l
    sbc a
    add h
    rra
    dec de

Jump_033_693f:
    nop
    inc d
    rra
    jr nc, @+$0a

    add hl, bc
    db $fd
    rra
    rla
    nop

jr_033_6949:
    db $10
    rra
    jr nz, @-$3e

    rra
    jr nz, jr_033_68f0

    dec l
    db $10
    ld de, $40fd
    add [hl]
    jp hl


    rra
    inc hl
    add $1f
    dec bc
    ld a, [bc]
    ret nz

    call c, $0b18
    rra
    daa
    inc c
    ld b, b
    rra
    sbc h
    db $10
    add l
    ld b, h
    jr z, jr_033_69ac

    ld b, [hl]
    ld b, a
    set 3, [hl]
    ld [$cbde], sp
    ld b, a
    ld b, [hl]
    ld l, e
    ld b, h
    add l
    inc bc
    and b
    nop
    dec bc
    sub l
    sbc a
    ld d, [hl]
    ld d, a
    call c, $dada
    inc d
    call c, Call_033_5657
    sbc a
    sub l
    rra
    inc c
    and l
    ld h, a
    nop
    add sp, -$18
    inc [hl]
    dec [hl]
    dec [hl]
    ld [hl], $37
    call z, $cc14
    scf
    ld [hl], $27
    inc [hl]
    dec l
    ld h, a
    and l
    add b
    rra
    inc c
    db $76
    ld [hl], a
    ld hl, sp-$08
    ld b, h
    jr z, jr_033_69d1

    ld [bc], a
    ld b, [hl]
    ld b, a

jr_033_69ac:
    set 1, e
    ld b, a
    ld b, [hl]
    daa
    ld b, h
    adc b
    dec l
    ld [hl], a
    db $76
    jr z, jr_033_69d7

    dec bc
    add [hl]
    add a
    adc b
    ld b, b
    adc b
    ld e, a
    ld d, [hl]
    ld d, a
    call c, $57dc
    ld d, [hl]
    ret z

    ld e, a
    dec l
    add a
    add [hl]
    rra
    inc c
    sub [hl]
    sub a
    sbc b
    inc d
    sbc b

jr_033_69d1:
    ld d, h
    ld d, l
    nop
    add hl, bc
    ld d, h
    dec l

jr_033_69d7:
    sub a
    sub [hl]
    add c
    rra
    inc c
    and [hl]
    and a
    xor b
    xor b
    ld h, h
    ld h, l
    nop
    add hl, bc
    ld c, d
    ld h, h
    dec l
    and a
    and [hl]
    rra
    inc c
    jr z, jr_033_6a2d

    adc c
    ld e, [hl]
    adc d
    ld hl, $40a9
    ld h, a
    ld l, a
    rra
    db $10
    sbc c
    ld e, h
    sbc d
    ld hl, $40b9
    ld h, a
    rra
    inc d
    adc [hl]
    adc a
    pop hl
    ld hl, $0c07
    rra
    ld c, $cd
    call $9f9e
    ld hl, $76f3
    ld h, a
    dec l
    rra
    db $10
    set 3, e
    ld a, e
    ldh [$c9], a
    adc l
    rra
    dec de
    db $db
    rr a
    ld [hl], e
    sbc h
    sbc h
    cp h
    adc $47
    rra
    dec d
    adc c
    adc d
    cp a
    ld b, a
    rra
    dec d
    sbc c

jr_033_6a2d:
    ld a, b
    sbc d
    cp a
    ld b, a
    rra
    db $10
    ld e, a
    dec c
    nop
    add hl, bc
    dec l
    nop
    add hl, bc
    inc de
    ld a, [bc]
    nop
    inc c
    rra
    ld h, $67
    cp $1f
    cpl
    rst $08
    rst JumpTable
    ld h, e
    rra
    ld c, e
    sub e
    ld b, b
    ld a, [hli]
    rra
    ld a, [hli]
    ld a, [bc]
    ld a, [bc]
    rla
    inc c
    rra
    ld c, e
    add a
    rst $38
    xor l
    rst $38
    rra
    inc c
    ld h, e
    jr nz, @+$01

    nop
    db $10
    rra
    db $10
    ld l, a
    rra
    ld [hl], d
    rst $38
    ld [hli], a
    sbc a
    xor e
    rra
    ld [de], a
    ld b, d
    sbc a
    rst $08
    rra
    inc l
    inc h
    ld d, [hl]
    ld d, a
    ld hl, $cccc
    inc hl
    dec d
    ld d, $5c
    rla
    ld bc, $830a
    nop
    ld a, [bc]
    dec sp
    jr nz, @+$48

    ld b, a
    bit 4, e
    ld hl, $5756
    and e
    ld b, [hl]
    rra
    rrca
    inc sp
    ld hl, sp+$63
    db $fd
    ld c, c
    rra
    dec bc
    ld e, h
    inc c
    nop
    inc d
    dec c
    nop
    ld a, [bc]
    rra
    ld b, b
    dec bc
    cp $ff
    rrca
    ld e, $60
    add c
    ld b, b
    adc b
    and c
    ld h, b
    add e
    nop
    ld a, [bc]
    ld a, [c]
    di
    ldh a, [$f1]
    inc hl
    inc bc
    inc b
    inc b
    ld c, $0d
    add c
    ld c, $25
    ld l, e
    jp nz, $1f43

    dec bc
    or $f7
    db $f4
    push af
    inc hl
    inc d
    rlca
    inc d
    ld c, $81
    dec c
    ld c, $25
    ld l, e
    ld b, e
    ret nz

    rra
    dec bc
    rla
    inc c
    inc c
    ld c, l
    add b
    dec c
    ld b, b
    xor c
    call z, $c0a1
    ld a, [bc]
    add b
    inc c
    inc c
    dec l
    dec l
    dec hl
    sbc $25
    xor l
    ld a, [bc]
    rra
    inc d
    ld c, e
    rra
    inc d
    inc b
    rlca
    inc de
    ld c, $0d
    add c
    ld hl, $f80e
    db $10
    ld sp, hl
    ld a, [$a3f8]
    ei
    pop af
    ld a, [c]
    add e
    ldh [rP1], a
    ld a, [bc]
    ld e, a
    ld e, [hl]
    dec c
    ld c, $fc
    db $fd
    cp $46
    rst $38
    and e
    db $f4
    push af
    or $1f
    ld c, $5e
    add c
    ld bc, $f00e
    pop af
    ld a, [c]
    di
    rrca
    ld e, $40
    inc c
    rrca
    ld hl, sp-$07
    ld a, [$0b1f]
    inc b
    inc c
    ld [$2d2d], sp
    dec c
    ld hl, $0b0d
    rra
    dec bc
    ld a, [bc]
    dec hl

jr_033_6b2c:
    jp $2e20


    nop
    add hl, bc
    ld e, a
    push hl
    and a
    nop
    add hl, bc
    rra
    ld de, $0d2d
    ld hl, $550d
    sbc h
    or [hl]
    dec l
    dec bc
    jr nz, jr_033_6b62

    dec bc
    ld c, b
    ld bc, $0340
    inc bc
    ld h, l
    ld b, $06
    inc b
    jr nz, @+$08

    nop
    ld hl, $0905
    inc c
    ld bc, $000c
    ld de, $031a
    jr jr_033_6b7e

    dec [hl]
    ld b, $31
    nop
    ld b, h
    ld h, e

jr_033_6b62:
    inc c
    inc a
    ld bc, $7c7f
    inc bc
    nop
    ld b, a
    jr c, jr_033_6bdd

    ld c, $7c
    add e
    rst $38
    nop
    add b
    ld bc, $3f0c
    ret nz

    rra
    ldh [$03], a
    db $fc
    nop
    inc b
    nop
    add b

jr_033_6b7e:
    add b
    ld b, b
    ret nz

    ld [hli], a
    ldh [rNR41], a
    inc bc
    nop
    ldh [$80], a
    ld h, b
    ret nz

    jr nz, jr_033_6bad

    add hl, hl
    ld d, a
    ret nz

    inc sp
    ld b, b
    ld d, h
    ld b, b
    ld h, $41
    nop
    dec bc
    ld b, e
    jr nz, jr_033_6bdd

    add b
    add b
    sub b
    sub b
    ld [hli], a
    rla
    ld c, $84
    nop
    inc c
    ld c, b
    ld c, b
    ld [$2448], sp
    nop
    jr z, jr_033_6b2c

    db $10

jr_033_6bad:
    add hl, bc
    inc de
    nop
    scf
    ld bc, $036e
    ld e, h
    nop
    inc bc
    inc e

jr_033_6bb8:
    inc b
    dec sp
    nop
    ld a, a
    nop
    ld a, h
    ld [$7800], sp
    nop
    ldh a, [rSTAT]
    ldh [rP1], a
    ret nz

    call nz, $20df
    ld bc, $0700
    dec a
    rrca
    jr nc, jr_033_6bd1

jr_033_6bd1:
    ld e, $e1
    ccf
    ret nz

    ld a, c
    add [hl]
    ld h, c
    sbc [hl]
    nop
    jp $833c


jr_033_6bdd:
    ld a, h
    add [hl]
    ld a, c
    inc b
    db $eb
    ld [bc], a
    nop
    rst $08
    nop
    adc [hl]
    nop
    inc e
    ld e, a
    jp hl


    nop
    nop
    rst $38
    adc h
    ld [hl], e
    jr c, jr_033_6bb8

    ld [hl], b
    adc a
    nop
    ldh [$1f], a
    jp nz, $863c

    ld a, b
    add h
    ld a, e
    nop
    inc c
    ld a, [c]
    ld [$18b4], sp
    inc h
    ld [$0c34], sp
    nop
    jr c, jr_033_6c0a

jr_033_6c0a:
    db $10
    ld e, a
    ld b, b
    ld bc, $4001
    inc bc
    ld b, b
    ld b, $06
    dec c
    dec c
    jr jr_033_6c31

    nop
    ld a, [bc]
    dec bc
    dec b
    rlca
    rrca
    rrca
    rra
    rra
    nop
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld b, h
    ld l, e
    nop
    ret z

    rst AddAToHL
    ret nz

    rst JumpTable
    xor b
    cp a

jr_033_6c31:
    ld e, b
    ld a, a
    add b
    ld hl, $ff3c
    ld c, $ff
    jp $f0ff


    ld [hl-], a
    rst $38
    db $fc
    ld [hl], $00
    add hl, bc
    ld bc, $21fe
    ld [bc], a
    inc c
    db $fd
    inc bc
    db $fd
    nop
    dec h
    ld b, c
    inc c
    db $fc
    ld b, b
    ld hl, sp+$40
    jr nc, @-$0e

    db $10
    ldh a, [$80]
    ldh [rSCX], a
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    inc hl
    jr nz, @-$5e

    add hl, hl
    ldh [rLCDC], a
    sub b
    sub b
    inc hl
    jr nz, jr_033_6c70

    jr jr_033_6c6c

jr_033_6c6c:
    rlca
    nop
    ld h, e
    nop

jr_033_6c70:
    ld d, $01
    ld bc, $0003
    inc bc
    inc b
    rlca
    jr @+$21

    ld [hl], b
    ld a, a
    add c
    ld b, $ff
    rlca

jr_033_6c80:
    rst $38
    ccf
    rst $38
    jr nz, @+$1d

    ld a, [bc]
    ld b, b
    ld h, $40
    ret nz

    ld b, b
    ld h, b
    ldh [$61], a
    jr nz, jr_033_6c80

    and [hl]
    ld b, b
    ld hl, sp+$40
    db $f4
    db $f4
    and e
    ld sp, $2080
    add b
    nop
    nop
    dec de
    ld bc, $0301
    inc bc
    rlca
    ld a, $07
    rrca
    ld b, b
    dec h
    add hl, hl
    dec l
    rst $30
    ccf
    nop
    ccf
    ld a, $3f
    ld a, h
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$35
    add c
    daa
    cp $ff

jr_033_6cba:
    ldh [$7f], a
    ld b, b
    dec a
    stop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [rP1], a
    jr nc, jr_033_6cba

    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    nop
    add d
    cp $c1
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ld [hl], b
    ldh a, [rSTAT]
    ccf
    nop
    ld d, $02
    ld [bc], a
    ld b, $06
    ld [$0f0f], sp
    rra
    rra
    dec e
    ld d, $01
    ld bc, $4c07
    rlca
    ld a, l
    ccf
    ccf
    inc hl
    daa
    ld c, $0f
    inc e
    inc b
    rlca
    inc c
    ld h, $40
    ld [hl], c
    ld a, a
    ld a, a
    ld b, b
    rst $38
    nop
    dec bc
    ld hl, sp-$01
    sbc b
    rst $38
    jr nc, @+$01

    jr jr_033_6d6b

    rst $38
    cp $14
    inc c
    add b
    cp $fe
    ld hl, sp-$60
    ld b, b
    nop
    ret nz

    jr c, @+$46

    jr c, jr_033_6d62

    ld a, h
    db $10
    ld b, e
    inc e
    inc hl
    ld hl, $211e
    ld a, $21
    add l
    cpl
    ld e, $1f
    inc e
    rra
    ld [hl], a
    rst $38
    add b
    nop
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    ld bc, $e001
    ld [hl], c

jr_033_6d39:
    nop
    ld c, $3b
    cp $fe
    db $fc
    db $fc
    ld hl, sp+$01
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$80], a
    add b
    rra
    ld [de], a
    ld d, h
    ccf
    ld b, b
    rra
    ret nz

    rrca
    ret nz

    rlca
    rlca
    inc c
    ld bc, $0601
    ld b, $23
    ld a, a
    add b
    ldh [rP1], a
    ldh [$fc], a
    ld a, [c]
    db $fd

jr_033_6d62:
    ldh a, [rIE]
    pop af
    cp $48
    pop hl
    ld b, c
    db $e3
    db $fc

jr_033_6d6b:
    ld hl, $fcc3
    rst $00
    nop
    ld hl, sp-$79
    ld hl, sp+$07
    jr c, jr_033_6d39

    call z, $0832
    inc sp
    inc bc
    rrca
    nop
    add b
    add b
    ld b, b
    ldh a, [rSB]
    nop
    ld hl, sp+$04
    ld hl, sp+$06
    ldh a, [$0c]
    ld hl, $e024
    inc e
    ld hl, $38c7
    ld hl, $7888
    scf
    ld b, b
    ret nz

    cp l
    nop
    dec c
    ld bc, $4221
    pop hl
    ld h, c
    ld b, $1f
    ld de, $6020
    add b
    nop
    and b
    ld h, a
    ld b, $20
    ld bc, $8181

jr_033_6dac:
    ld bc, $131f
    ld e, c
    jr nc, @+$03

    ld [$0438], sp
    inc c
    add d
    ld b, $80
    ld a, [hli]
    ld e, e
    inc bc
    ld b, b
    rlca
    add b
    daa
    ld bc, $0f80
    add hl, bc
    call z, $2c41
    nop
    nop
    ld sp, $762b
    db $76
    ld de, $3636
    inc l
    add b
    ld [$000c], sp
    ld h, c
    inc de
    ld c, $00
    ld b, $41
    rlca
    nop
    ld e, a
    nop
    jr jr_033_6de2

    ld b, b

jr_033_6de2:
    ld b, b
    ld h, b
    ld h, b
    ccf
    ccf
    rlca
    nop
    add hl, bc
    ld b, b
    rrca
    add b
    rra
    rra
    ld e, $1e
    ld a, $3e
    nop
    ld a, h
    ld a, h
    ld a, c
    ld a, c
    ei
    ei
    or $f6
    ld [$cccc], sp
    rrca
    ld l, a
    ld bc, $0e0e
    ld l, [hl]
    ld [$4804], sp
    db $10
    ret nc

    jr nz, jr_033_6dac

    ld hl, $4040
    ld b, b
    nop
    ld b, b
    ld b, a
    or a
    ld h, e
    sbc e
    ld h, c
    sbc l
    nop
    ld bc, $401d
    add $12
    di
    dec b
    dec a
    ld bc, $0e00
    inc bc
    inc b
    ld bc, $0102
    ld d, a
    inc d
    ld [bc], a
    ld [bc], a
    inc bc
    add b
    rst $38
    nop
    add hl, bc
    ld a, a
    ld a, a
    db $10
    ld a, [hl]
    ld a, [hl]
    inc a
    ld b, b
    sbc h
    inc e
    sbc [hl]
    ld e, [hl]
    nop
    adc $0e
    ld c, $6e
    rlca
    ld h, a
    rlca
    scf
    and b
    ld hl, $0000
    rla
    ld bc, $0701
    rlca
    adc a
    db $10
    ld c, a
    rst $00
    daa
    nop
    ret nc

    rst JumpTable
    ret z

    rst $08
    adc h
    adc a
    inc b
    rlca
    add b
    ld h, c
    inc c
    rrca
    ld [$310b], sp
    rst $38
    and $00
    rst $38
    adc $ff
    sub c
    rst $38
    pop hl
    rst $38
    jp nz, $ff00

    call c, $bde7
    rst $00
    inc bc
    inc bc
    rlca
    nop
    rlca
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    jr @-$5f

    rst $38
    rrca
    ld b, c
    nop
    inc de
    ld a, a
    rst $08
    ccf
    nop
    and c
    ccf
    ldh a, [$1f]
    ret nc

    rra
    ld hl, sp+$0f
    ld b, b
    add sp, -$0d
    cp a
    ld a, a
    rst JumpTable
    ccf
    ld l, a
    sbc a
    ld bc, $8f77
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, d
    ret nz

    ret


    add hl, hl
    dec l
    ld [$610f], sp
    db $10
    ld e, $21
    nop
    ld sp, $213f
    cpl
    ld h, c
    ld a, a
    adc d
    adc e
    nop
    sub d
    sub e
    or [hl]
    and a
    call nz, $88c7
    adc a
    nop
    jr c, jr_033_6ee3

    ldh a, [rIE]
    ldh [rIE], a
    cpl
    rst JumpTable
    ld a, [bc]
    ld e, a
    xor a
    ccf
    rst $08
    ld hl, $2337
    rst $00
    add b
    ld h, c
    rrca
    ld hl, sp+$07
    db $f4
    inc bc
    ld a, [$0c01]
    rst $38
    nop
    cp $00  ; and a / or a
    inc hl
    ld b, c

jr_033_6ee3:
    ld a, a
    add a
    nop
    ld a, e
    add a
    ld a, l
    add e
    ld a, $c1
    rra
    ldh [rSB], a
    adc a
    ldh a, [rBGP]
    ld a, b
    ld hl, $ff3e
    ret nz

    ld h, b
    ld a, a
    ld b, c
    ld h, h
    pop bc
    rst JumpTable
    pop bc
    rst $38
    add c
    inc d
    cp l
    add e
    rst $38
    ld hl, $6103
    ei
    ret nz

    ld b, b
    rst $38
    ld bc, $e00c
    rst $38
    rra
    rst $20
    dec de
    rst $20
    inc h
    rra
    db $e3
    ld hl, $f30f
    ld h, c
    rlca
    ei
    jr nz, jr_033_6f1e

jr_033_6f1e:
    rst $38
    ld bc, $7f0d
    rra
    ret c

    rra
    ld hl, sp+$0a
    rrca
    add sp, $07
    db $f4
    add c
    db $fc
    ld hl, $15bf
    ld a, a
    rst $38
    ccf
    ld hl, $265f
    sbc a
    ld hl, $3f24
    rst JumpTable
    ld hl, $ff07
    ld b, c
    rst $30
    rrca
    nop
    ei
    rrca
    jp hl


    rra
    pop af
    rra
    ret nc

    ccf
    inc d
    ldh a, [$e0]
    rst $38
    and c
    ldh a, [$81]
    cp b
    ld a, a
    ld [bc], a
    rlca
    ei
    dec b
    ei
    rlca
    ld sp, hl
    ld hl, $0403
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld hl, $ff80
    add b
    and c
    ld b, b
    ld a, a
    ret nz

    rst JumpTable
    and b
    cp a
    ldh a, [rNR14]
    rst $38
    rlca
    db $fc
    ld b, c
    db $f4
    ld hl, $f80f
    add d
    ld b, c
    db $eb
    ld e, $fe
    rst $38
    rra
    pop bc
    ccf
    nop
    pop af
    pop af
    add c
    add c
    inc bc
    inc bc
    rlca
    jr c, jr_033_6f8a

jr_033_6f8a:
    ld e, a
    ld h, b
    ccf
    ret nz

    cp [hl]
    pop bc
    rst $08
    cp a
    nop
    ldh a, [rIE]
    nop
    rst $38
    rrca
    ldh a, [$f6]
    cpl
    nop
    db $ed
    inc sp
    rst JumpTable
    jr nc, jr_033_7010

    ldh a, [$e7]
    ld hl, sp+$64
    rlca
    ld b, c
    ld [hl-], a
    ld bc, $21fe
    add c
    cp $00  ; and a / or a
    ld h, c
    cp $90
    ld a, a
    adc b
    ld a, a
    add h
    ld a, a
    ld a, [bc]
    add [hl]
    ld a, a
    rst $38
    rst $38
    ld h, d
    cp a
    inc h
    ccf
    jp z, $4144

    nop
    rst $38
    ld bc, $011c
    ld b, e
    inc bc
    nop
    rst $38
    ccf
    cp $7f
    ld [c], a
    ld a, a
    ld a, [c]
    rst $38
    ld b, b
    db $f4
    ld h, c
    ldh [rIE], a
    and b
    cp a
    jr nz, jr_033_700a

    nop
    ld [hl], b
    ld a, a
    ld [hl], b
    ld [hl], a
    ld hl, sp-$01
    ld hl, sp-$05
    nop
    db $fc
    rst $38
    rra
    db $e4
    rra
    and $0f
    ld a, [c]
    inc c
    rlca
    ld sp, hl
    nop
    rst $38
    and c

jr_033_6ff3:
    jr nc, jr_033_6ff3

    ld e, $81
    ld h, c
    call c, $1c3c
    db $fc
    jr @-$06

    ld hl, $4848
    nop
    rrca
    ld [hl], b
    ld a, a
    ld hl, $3f30
    stop

jr_033_700a:
    rra
    ld [$1c0f], sp
    rra
    inc sp

jr_033_7010:
    inc sp
    ld h, d
    ld bc, $3f62
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld bc, $200e
    cp $01
    ld hl, $03fc
    ld hl, sp+$07
    ldh [rOBP0], a
    rra
    inc l
    rst $38
    ld [bc], a
    ld b, c
    inc b
    rst $38
    ld b, $00
    db $fd
    dec c
    ld sp, hl
    add hl, de
    ldh a, [rNR10]
    ldh [rNR41], a
    add hl, bc
    ld e, a
    cp a
    ccf
    rst JumpTable
    ld hl, $ff1f
    inc hl
    db $10
    sbc a
    rst $38
    cp a
    dec a
    rst $38
    ld bc, $03ff
    and [hl]
    ld b, c
    rlca
    ld b, c
    rrca
    rst $38
    dec [hl]
    ld hl, $b3fc
    ret nz

    cp $80
    ccf
    db $fc
    db $fd
    inc h
    daa
    ld b, b
    ld a, a
    ld b, b
    ld l, a
    ld l, a
    daa
    daa
    jr nc, @+$32

jr_033_7064:
    jr nz, jr_033_7066

jr_033_7066:
    rst $38
    add c
    ld a, a
    add b
    cp a
    ret nz

    rst JumpTable
    ld [bc], a
    ldh [$ef], a
    jr nc, @+$39

    jr nc, jr_033_7064

    ld hl, $0060
    ldh [rSTAT], a
    pop bc
    jp $82c3


    add d
    add h
    nop
    add h
    sbc c
    sbc c
    ld c, b
    ld c, b
    db $db
    db $db
    sbc [hl]
    nop
    sbc [hl]
    cp h
    cp h
    inc a
    inc a
    ld a, h
    ld a, h
    ld hl, sp-$78
    ld b, b
    call nz, $04c4
    ld b, b
    inc c
    inc c
    rra
    nop
    rra
    ccf
    ld sp, $607f
    rst $38
    ret nz

    ldh a, [rOBP1]
    rrca
    ld hl, $07f8
    ld hl, $03fc
    ld h, c
    sub b
    daa
    rst $38
    nop

jr_033_70b0:
    add c
    ld bc, $02fe
    db $fc
    nop
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ret nz

    ld b, b
    ret nz

    ld d, c
    add b
    jr nz, jr_033_70c2

jr_033_70c2:
    nop
    add hl, bc
    rst $38
    rst $38
    ld a, a
    add b
    ld e, h
    ccf
    ld b, b
    rrca
    ld b, b
    jr nc, jr_033_70b0

    rlca
    rst $38
    inc h
    add sp, -$08
    jr nz, @+$21

    ldh [$ef], a
    add b
    rst $38
    ld [$3f7c], sp
    rlca
    inc bc
    jr z, jr_033_715f

    add c
    ld e, $00
    pop hl
    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $02
    ld b, $ff
    jp $fcff


    inc bc
    rst $38
    and c
    ldh [$27], a
    ldh [$f0], a
    ld b, b
    ld hl, sp-$08
    ld h, l
    jr nz, jr_033_712b

    ld [$07f8], sp
    ldh a, [rIF]
    ld h, c
    pop hl
    rra
    pop bc
    nop
    ccf
    add c
    ld a, a
    inc bc
    rst $38
    ldh a, [$30]
    ld hl, sp+$02
    ld a, b
    db $fc
    db $fc
    cp $fe
    rst $38
    ret nz

    nop
    and b
    nop
    add hl, bc
    add b
    ld b, b
    ret nz

    ret nz

    rlca
    rlca
    inc bc
    inc d
    inc bc
    ld bc, $1501
    ld a, [bc]
    ld sp, hl
    ld b, b

jr_033_712b:
    ei
    ei
    ld b, b
    di
    and b
    inc sp
    ld hl, sp+$18
    rst $28
    ldh [$3f], a
    ld bc, $033f
    inc bc
    rlca
    rlca
    dec bc
    dec bc
    inc hl
    nop
    set 1, e
    rst $38
    ld a, a
    ld a, a
    ld [hl], c
    rrca
    ld [$8f10], sp
    adc h
    sbc a
    nop
    add hl, bc
    add b
    rst $38
    ld h, b

jr_033_7151:
    rst $38
    dec h
    inc e
    rst $38
    dec h
    ld hl, sp-$01
    and b
    rlca
    add c
    jr jr_033_716c

    rst $38
    ccf

jr_033_715f:
    rst $08
    and b
    cp $fe
    ld hl, sp+$02
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$c0], a
    ld b, b

jr_033_716c:
    add b
    inc hl
    add b
    nop
    nop
    dec d
    ld bc, $0701
    ld b, b
    dec d
    db $10
    jr nz, @+$01

    nop
    ld bc, $8e60
    ld a, a
    add [hl]
    ld a, a
    add h
    add b
    ld bc, $8d18
    ld a, e
    dec c
    ei
    rrca
    ld sp, hl
    rst $38
    jr jr_033_7151

    rst $38
    add b
    ld bc, $2128
    jr nz, @+$01

    ld a, a
    rst $38
    nop
    cp a
    ld a, a
    rst $38
    ccf
    rst JumpTable
    ccf
    rst $38
    rra
    dec b
    rst $38
    rra
    di
    inc e
    rst $38
    nop

jr_033_71a7:
    jr c, jr_033_71a7

    inc b
    db $10
    add d
    rra
    ld [$fef9], sp
    pop af
    cp $e0
    ld l, $18
    ret nz

    jr nz, @+$01

    dec e
    inc d
    ld [$7fbf], sp
    rst JumpTable
    ccf
    rst $28
    nop
    rra
    ld [hl], a
    adc a
    ld [hl], a
    adc a
    ld a, e
    add a
    add sp, $43
    rra

jr_033_71cb:
    dec l
    jr nc, jr_033_71cb

    cp $ec
    di
    inc hl
    stop
    jr nz, jr_033_71d6

jr_033_71d6:
    ld bc, $feff
    ld bc, $c03f
    rra
    ldh [$2f], a
    rra
    ldh [rVBK], a
    ld b, b
    ld a, a
    ld [bc], a
    db $10

jr_033_71e6:
    inc b
    ld [$6800], sp
    add e
    ld [$fe00], sp
    ld bc, $01fe
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    ld hl, sp+$07
    ldh a, [rIF]
    rra
    ld a, [$f21f]
    nop
    dec sp
    or $3f
    db $e4

jr_033_7203:
    ld [hl], a
    db $ec
    ld a, a
    ret z

    nop
    rst $38
    ret z

    rst $38
    sbc b
    rst AddAToHL
    jr c, jr_033_71e6

    jr c, jr_033_7211

jr_033_7211:
    rst $38
    jr nc, jr_033_7203

    jr nc, @-$3f

    ld h, b
    cp a
    ld h, b
    inc bc
    rst JumpTable
    ld h, b
    ld e, a
    ldh [$f3], a
    rrca
    ld sp, $2b10
    db $10
    adc $2d
    db $10
    ld h, b

jr_033_7228:
    db $10
    ret nz

    ccf
    ld a, [c]
    ld l, b
    ld bc, $8358
    db $10
    rra
    nop
    ldh [$3f], a
    ret nz

    ld a, $c1
    ld a, [hl]
    add c
    ld a, a
    ld e, b
    add c
    sbc b
    ld [$847f], sp
    ld l, b
    inc h
    ld [$07f8], sp
    ldh [rP1], a
    rra
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    nop
    ld a, a
    pop hl
    rra
    ld bc, $03ff
    rst $38
    rlca
    nop
    cp $07
    db $fc
    rrca
    db $fc
    rra
    ld sp, hl
    rra
    nop
    ld a, [c]
    rst JumpTable
    or b
    rst $38
    jr nz, jr_033_7228

    ld h, b
    rst $38
    ld [hl], b
    ld b, b
    ld sp, $b149
    jr jr_033_72bb

    ld [$fd01], sp
    inc bc
    cp $01
    inc bc
    rst JumpTable
    ldh [$8f], a
    ldh a, [$83]
    db $fc
    ld a, [de]
    ld b, b
    sub e
    dec de
    db $10
    ldh [$1f], a
    ld a, a
    ld b, b
    add b
    ld a, a
    sub l
    sub b
    ldh a, [$08]
    add b
    ld bc, $0318
    db $fc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ei
    rlca
    ei
    rlca
    rst $38
    ld bc, $f708
    ld e, [hl]
    rrca
    inc e
    ld h, c
    rst $28
    dec l
    jr nz, @+$03

    ld [$0824], sp
    ld bc, $6718
    nop
    cp $c7
    db $fc
    adc a
    ld hl, sp-$61
    ldh a, [rIE]
    ldh a, [$f8]

jr_033_72bb:
    ld [$1091], sp
    xor b
    ld [$08aa], sp
    add sp, $1f
    ldh a, [$1f]
    nop
    ldh a, [$3f]
    and b
    ld a, a
    ldh [$7f], a
    ld [$a7ff], sp
    ld bc, $1830
    ld bc, $3d08
    rst $38
    ld d, [hl]
    add hl, bc
    ld bc, $2e18
    add hl, bc
    add b
    ld bc, $e708
    ld hl, sp+$0f
    rrca
    rrca
    rra
    rrca
    nop
    rra
    rra
    rra
    rrca
    ccf
    ccf
    cpl
    scf
    nop
    ld l, a
    ld e, a
    ld [hl], a

jr_033_72f4:
    rst $20
    rst $38
    db $e3
    db $eb
    ldh a, [$03]
    cp $f0
    rst $30
    ld hl, sp-$05
    db $fc
    pop af
    ld hl, $1800
    inc bc
    ccf
    cp a
    rrca
    rst $28
    nop
    cp $cf
    jr jr_033_7321

    ld b, b
    jr jr_033_7350

    nop
    ld hl, sp+$0f
    ld d, b
    nop
    db $10
    rrca
    rst $28
    rlca
    ld [bc], a
    rst $38
    add a
    ld a, a
    add a
    ld a, a
    add e

jr_033_7321:
    ld bc, $c308
    inc b
    ccf
    jp $e33f


    rra
    or b
    db $10
    ld a, a
    add b
    inc c
    rst JumpTable
    ldh [$ef], a
    ldh a, [$50]
    jr z, jr_033_72f4

    db $10
    inc bc
    or $03
    rrca
    db $ec
    rra
    ret c

    ccf
    ld [hl], b
    or d
    ld [$18b4], sp
    ret nc

    ld bc, $e7a8
    stop
    nop
    ld [$1f1f], sp
    ld h, d
    ld h, e

jr_033_7350:
    inc b
    ret nz

    call $bf80
    nop
    dec sp
    add hl, bc
    ld a, a
    ld a, a
    nop
    ld sp, hl
    ld a, [$d8c7]
    rrca
    ldh a, [$0e]
    pop af
    nop
    rrca
    pop af
    dec e
    db $e3
    ccf
    jp $70e0


    nop
    ldh [rSVBK], a
    ld b, c
    pop af
    pop bc
    pop af
    add e
    di
    nop
    add e
    db $e3
    inc bc
    db $e3
    rlca
    rst $20
    ld c, a
    rst $30
    nop
    rst $00
    rst AddAToHL
    rst $20
    xor a
    di
    rra
    ei
    rrca
    ld [bc], a
    rst $30
    rlca
    ld a, a
    add a
    rst JumpTable
    rst $20
    cp l
    ld a, [hl-]
    cp $00  ; and a / or a
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [$ef], a
    rst $38
    rst $38
    ld c, $fc
    db $fd
    ldh a, [$f7]
    ld c, e
    ld [$318f], sp
    ld [hl], e
    ld l, b
    inc bc
    ld a, b
    ei
    rrca

jr_033_73a9:
    ld h, b
    cp a
    jr nz, @+$0e

    ld a, [bc]
    cp l
    ld a, [bc]
    rrca
    ldh a, [$87]
    ld de, $e378
    rra
    ld a, b
    ld [$f90f], sp
    rlca
    db $eb
    add hl, bc
    ld [$089c], a
    db $10
    ld e, c
    db $d3
    ld a, [de]
    add b
    db $d3
    jr jr_033_73a9

    ld bc, $f008
    add c
    ld bc, $f808
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0110
    ld b, $07
    inc b
    dec b
    ld [$180b], sp
    add hl, bc
    ld a, [hl-]
    add b
    db $eb
    ld de, $f807
    inc e
    ld [c], a
    ld a, [hl-]
    add $7c
    nop
    add h
    ld [hl], h
    adc h
    add sp, $18
    ldh a, [rNR10]
    and b
    nop
    ld h, b
    ret nz

    ret nz

    add b
    add b
    rlca
    rst $00
    dec c
    nop
    rr a
    sbc c
    rra
    sub c
    dec e
    sub e
    dec a
    nop
    inc hl

jr_033_7408:
    ccf
    inc hl
    ld a, a
    ld h, e
    rst $38
    rst $20
    rst $28
    jr nz, jr_033_7408

jr_033_7411:
    rst $30
    rst $30
    add hl, bc
    ld l, a
    rst $38
    rra
    ld l, a
    ld l, $1d
    ld e, $7e
    sbc $e6
    add hl, hl
    ld b, l
    sbc d
    ld bc, $fd08
    ccf
    ld h, c
    nop
    ld [bc], a
    cp $c3
    inc a
    pop hl
    ld e, $71
    adc [hl]
    nop
    inc a

jr_033_7431:
    jp $e11e


    rrca
    ldh a, [rTAC]
    ld hl, sp+$30
    ld bc, $1cfe
    jr nc, jr_033_7411

    db $10
    rst JumpTable
    jr nz, jr_033_7431

    db $10
    jr nz, @+$01

    ld a, a
    db $ed
    inc sp
    rst $28
    rra
    rst $30
    rrca
    rst $30
    rla
    rrca
    ld hl, sp-$01
    and [hl]
    ld hl, $07fd
    ld [$1001], sp
    cp c
    ld c, d
    inc c
    rst $38
    ld b, e
    rst $38
    daa
    adc a
    add hl, de
    nop
    db $10
    ld bc, $0001
    ld b, $06
    jr @+$1d

    jr nz, jr_033_749b

    db $10
    rla
    nop
    jr nc, jr_033_74b0

    jr nz, jr_033_74a2

    pop bc
    rst JumpTable
    add b
    cp [hl]
    add b
    dec h
    jr nz, @+$40

    add $64
    sub h
    ld c, b
    xor b
    ldh a, [$a6]
    nop
    ld [$cf60], sp
    ld [$c0c0], sp
    dec [hl]
    ld a, [bc]
    ld bc, $fd10
    nop
    ld bc, $01fd
    ei
    inc bc
    ld a, [$f403]
    jr nc, @+$7f

    ld b, e
    ret nz

jr_033_749b:
    jr jr_033_7513

    add hl, sp
    sbc h
    db $fc
    db $fc
    inc e

jr_033_74a2:
    nop
    ld hl, sp+$18
    add sp, $18
    ld hl, sp+$08
    db $f4
    inc c
    add hl, bc
    ld a, [$fe06]
    ld [bc], a

jr_033_74b0:
    cp a
    ld c, b
    cp a
    ld b, b
    ld h, [hl]
    dec bc
    add b
    call $0650
    or $38
    ld hl, sp+$04
    rst $38
    ld [$fb00], sp
    db $10
    rst $30
    jr nc, @-$3f

    ldh [$ef], a
    and b
    nop
    cp a
    ld b, b
    ld a, [hl]
    add e
    ei
    ld b, $ff
    ld b, $00
    rst $30
    ld a, [bc]
    ei
    ld [de], a
    di
    ld [hli], a
    ld [c], a
    ld a, a
    ld bc, $c1ff
    rst JumpTable
    ld bc, $f37f
    inc c
    xor c
    ld de, $e9ff
    db $10
    cp a
    add hl, hl
    ld c, c
    inc de
    ld d, e
    inc de
    ld e, [hl]
    dec bc
    di
    db $10
    push de
    jr nz, @+$03

    jr nz, jr_033_7557

    cp $af
    add hl, bc
    db $e4
    inc c
    cp [hl]
    rrca
    sbc [hl]
    rrca
    adc h
    adc [hl]
    ld bc, $c818
    rst $38
    ld hl, sp+$5d
    ld a, c
    jp c, $3e13

    ld [$0102], sp
    ld a, [$fc04]
    inc b

jr_033_7513:
    db $f4
    ld [$baf8], sp
    jr c, jr_033_7529

    cp $00  ; and a / or a
    db $fc
    rst $38
    ld a, [bc]
    ldh a, [rTAC]
    db $e4
    rrca
    nop

jr_033_7523:
    ret z

    rrca
    sbc b
    rra
    db $10
    rra

jr_033_7529:
    jr nc, jr_033_756a

    nop
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ret nz

    rst $38
    nop
    rst $28
    nop
    ld [hl], b
    rst AddAToHL
    ld a, b
    ret


    ld e, [hl]
    and $6f
    ld [hl], c
    nop
    di
    ld a, c
    ld sp, hl
    rst $38
    rst $38
    jp nz, $c43e

    ld [$c83c], sp
    jr c, jr_033_7523

    ld bc, $b808
    ld hl, sp-$04
    sbc h
    nop
    ld [$bf80], sp
    ld l, [hl]
    dec [hl]

jr_033_7557:
    ld bc, $8718
    ld a, [bc]
    ld bc, $00fd
    rlca
    rst $30
    ld c, $ee
    ld de, $23d1
    db $e3
    nop
    ld h, $a6
    ld [hl], l

jr_033_756a:
    push af
    ld [hl], b
    ldh a, [$89]
    ld sp, hl
    nop
    jp hl


    ld sp, hl
    dec d
    dec e
    db $ec
    db $ec
    ldh a, [$f0]
    nop
    ret c

    ret c

    ld hl, sp-$08
    adc [hl]
    rst $38
    add hl, sp
    rst $38
    ld [$cece], sp
    jr @+$1a

    ld [hl], c
    ld de, $0101
    inc bc
    ld [hli], a
    inc bc
    ld a, a
    ld a, $09
    nop
    rst $38
    inc a
    and c
    add hl, bc
    ei
    rlca
    ei
    db $ed
    db $ed
    db $fc
    db $fc
    call $d914
    ld de, $13d3
    add b
    di
    db $10
    ld b, b
    ret nz

    ret nz

    ld b, b
    and b
    ld h, b
    and b
    nop
    ld h, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [$30]
    ret nc

    rlca

jr_033_75b6:
    jr nc, jr_033_75d6

    rra
    inc bc
    inc bc
    or e
    ld sp, $1800
    ld [hl], l
    ld [$e000], sp
    rst $38
    jr c, jr_033_7605

    ld c, $0f
    inc bc
    inc bc
    nop
    ld bc, $0201
    ld [bc], a
    db $10
    ldh a, [$30]
    ldh a, [$38]
    jr nz, jr_033_75b6

jr_033_75d6:
    dec [hl]
    ld [$0a7b], sp
    rra
    jr @-$1d

    ld bc, $0bc3
    inc bc
    add a
    rlca
    rrca
    add hl, bc
    ld [$3fe0], sp
    add hl, de
    xor $20
    ldh a, [$f7]
    ld hl, $2aee
    cpl
    dec d
    adc a
    ld [$073f], sp
    rst $38
    ccf
    add sp, $23
    inc a
    ld b, l
    ld a, [bc]
    nop
    jr jr_033_7640

    rst $38
    ld [hl-], a
    xor $f1
    rst $30

jr_033_7605:
    nop
    ld sp, hl
    ei
    db $fd
    db $fd
    ld [hl], c
    db $fd
    pop af
    db $fd
    nop
    ld sp, hl
    db $fd
    ld hl, sp-$03
    ld hl, sp-$02
    ld a, [c]
    db $fd
    nop
    rst $30
    ld hl, sp-$0a
    ld hl, sp-$07
    cp $f9
    cp $00  ; and a / or a
    ld l, c
    ld l, [hl]
    add hl, de
    ld e, $f3
    db $fc
    ld h, c
    db $fc
    inc b
    push af
    inc c
    ld a, c
    ld [$6181], sp
    dec c

jr_033_7631:
    pop af
    rrca
    jr z, jr_033_7631

    inc bc
    ld l, [hl]
    ld sp, $007c
    ld [$34b4], sp
    add h
    nop
    add l

jr_033_7640:
    ld a, b
    rst $38
    sub $39
    rst $38
    nop
    pop bc
    nop
    nop
    ret nc

    jr nc, jr_033_769c

    or b
    ld e, b
    cp b
    ld a, [hl]
    nop
    sbc [hl]
    ld a, c
    sbc c
    ld a, $de
    ccf
    rst JumpTable
    ld sp, $d140
    add $30
    ret nz

    ret nz

    jr nc, jr_033_7691

    call z, $28cc
    pop af
    pop af
    ld e, a
    dec bc
    ld [bc], a
    pop hl
    jr nz, jr_033_7673

    rlca
    dec sp
    db $10
    inc a
    rst $08
    ldh a, [$09]

jr_033_7673:
    db $10
    add b
    add b
    ld hl, sp-$08
    ld c, $ff
    rst $38
    scf
    rst $08
    and e
    inc de
    push de
    dec hl
    inc b
    inc l
    ei
    ld [$00fc], sp
    rst $38
    rrca
    cp a
    db $10

jr_033_768b:
    cp $fd
    cp $00  ; and a / or a
    sbc e
    ld a, h

jr_033_7691:
    rst JumpTable
    jr c, jr_033_768b

    jr c, @+$01

    rst $38
    nop
    rst JumpTable
    cp a
    sbc e
    ld [hl], a

jr_033_769c:
    or e
    ld l, a
    or e
    ld l, a
    ld bc, $45ff
    ld a, c
    rst $00
    db $fd
    adc e
    db $f4
    and e
    ld [$f701], sp
    ld hl, sp-$0d
    db $fc
    ei
    db $fc
    ld sp, hl
    ld sp, $000c
    db $fc
    rst $38
    dec sp
    inc c
    rra

jr_033_76ba:
    inc c
    di
    inc c
    ld h, $f7
    ld [$1046], sp
    scf
    call z, $0847
    ld a, [de]
    ld c, d
    rst $20
    inc c
    rra
    ld hl, sp-$01
    add b
    and e
    ld [$26b1], sp
    ret c

    rst $20
    add sp, $14
    db $10
    ld [hl], d
    add hl, bc
    ld bc, $3108
    ld bc, $1308
    ldh a, [$32]
    nop
    ldh a, [$37]
    pop af
    rra
    ccf
    rrca
    adc [hl]
    ccf
    inc c
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    cp b
    inc de
    ld bc, $3f08
    ret nz

    jr c, jr_033_76ba

    inc a
    ld e, a
    ld [hl], h
    adc l
    inc hl

Jump_033_76fc:
    rst $00
    ld hl, $79a7
    ld [c], a
    ld [bc], a
    ld a, $dd
    ccf
    ld hl, sp+$1f
    jp hl


    ld bc, $fb08
    nop
    rrca
    db $f4
    rrca
    rst $28
    pop af
    ld e, l
    ld h, e
    db $db
    nop
    and $8f
    db $f4
    add a
    db $fc
    add hl, bc
    cp $10
    nop
    rst $38
    ld de, $ffff
    dec de
    rst $38
    inc de
    ld sp, hl
    nop
    dec h
    cp a
    ld h, l
    ld [hl], a
    call $8bff
    rst $28
    nop
    sbc e
    dec de
    rst $30
    ld a, [$f9fa]
    ld sp, hl
    ld hl, sp-$80
    xor a
    dec c
    ldh a, [$fe]
    pop hl
    rst $28
    pop bc
    db $dd
    pop bc
    ld l, h
    db $fd
    inc bc
    ld [de], a
    pop hl
    ld de, $c7f0
    dec hl
    ld a, [bc]
    jr nc, jr_033_775d

    nop
    rst $38
    ld bc, $830a
    ld b, e
    ld bc, $ff00
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38

jr_033_775d:
    ccf
    ld b, b
    rst $38

jr_033_7760:
    jr nz, jr_033_7760

    rst $38
    inc sp
    pop af
    daa
    pop hl
    add l
    ld hl, $e163
    ld b, a
    pop bc
    ld hl, $4143
    add hl, hl
    add b
    rst $38
    and c
    nop
    pop bc
    inc bc
    db $fc
    ld hl, $0130
    cp $21
    rst $28
    db $f4
    rrca
    db $fc
    dec b
    add hl, bc
    ld a, [$fa03]
    rlca
    ld hl, $03fe
    ld h, c
    ld b, $03
    rst $38
    ld [bc], a
    rst $38
    inc b
    db $db
    ld h, c
    ccf
    nop
    rst $20
    scf
    rst $28
    ld a, a
    rst $08
    adc a
    rst $38
    rra
    adc e
    add hl, hl
    rst $38
    ld a, a
    rst $38
    nop
    ld a, [bc]
    cp $20
    inc hl
    nop
    db $e3
    cp $82
    add e
    cp a
    inc bc
    ld a, a
    inc bc
    nop
    ld a, d
    inc bc
    ld a, [$fe07]
    rlca
    rst $30
    rrca
    nop
    ld sp, hl
    rrca
    add sp, -$39
    rst $38
    rst $20
    rra
    di
    nop
    rrca
    ei
    rlca
    ld sp, hl
    rlca
    ld a, h
    add e
    cp h
    nop
    jp $c1fe


    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$a0]
    ld b, b
    ldh [rLCDC], a
    ret nz

    ret nz

    add b
    add b
    add [hl]
    nop
    add a
    inc b
    dec b
    inc b
    rlca
    ld [$080b], sp
    inc b
    rrca
    db $10
    rla
    db $10
    rra
    ld hl, $ff00
    xor b
    ld h, c
    ld bc, $0281
    ld hl, $83fe
    pop bc
    and b
    ld b, c
    add c
    jr nz, @+$05

    add c
    ld bc, $0301
    or e
    ld [hli], a
    ld bc, $c1bf
    ld a, a
    add b
    dec c
    inc c
    ld b, c
    add hl, bc
    ld b, b
    rst JumpTable
    ld a, [hl]
    add e
    ld h, c
    ld a, $c3
    and c
    jr z, @+$20

    db $e3
    inc sp
    ld bc, $0341
    rst $38
    rlca
    add c
    ld hl, $0ff7
    rst $38
    rrca
    rst $28
    rst $38
    nop
    dec c
    nop
    cp $fe
    add d
    cp $9c
    ld [c], a
    rst $38
    pop bc
    nop
    rst JumpTable
    pop hl
    sbc $e1
    cp a
    and b
    ccf
    jr nz, jr_033_783a

jr_033_783a:
    cpl
    jr nc, @+$12

    rra
    ld de, $031e
    inc e
    nop
    inc hl
    inc a
    and e
    cp h
    jp $c7fc


    ld a, b
    ld bc, $38c7
    ld l, $f1
    rla
    ld hl, sp-$61
    daa
    nop
    inc a
    push hl
    ld e, $e3
    ld e, $f2
    rrca
    pop af
    ld bc, $a00f
    rst JumpTable
    cp [hl]
    pop bc
    cp a
    ret nz

    ld h, c
    nop
    sbc [hl]
    pop hl
    db $dd
    db $e3
    db $db
    rst $20
    jr nc, jr_033_78ae

    ld [bc], a
    jr nz, jr_033_78a1

    jr nz, jr_033_78b3

    ld h, b
    ld a, a
    ld hl, $10e1
    rst $38
    db $e3
    ccf
    ld hl, $fe04
    inc b
    db $fc
    ld c, b
    ld [$f821], sp
    db $10
    ld hl, $20f0
    ldh a, [$08]
    ld h, b
    ldh [rIE], a
    add b
    ld h, c
    cp a
    ret nz

    ld a, a
    add b
    ld b, c
    ld e, a
    ldh [$3f], a
    ldh [$30], a
    rst $38
    db $10
    ld [hli], a
    rst JumpTable
    db $10
    inc hl
    rst $30

jr_033_78a1:
    jr @+$01

    ld hl, $0008
    rst $28
    ld [$1cfb], sp
    pop hl
    dec e
    db $e3
    rra

jr_033_78ae:
    ld c, b
    pop hl
    ld hl, $f10e

jr_033_78b3:
    ld hl, $f00f
    rlca
    db $10
    ld hl, sp+$1f
    rst JumpTable
    ld b, c
    ld a, a
    rst $38
    rst $38
    add e
    ld h, $83
    add b
    ld b, b
    ret nz

    ret nz

    add hl, hl
    and b
    cp $00  ; and a / or a
    cp $f8
    ld hl, sp+$30

jr_033_78ce:
    jr nc, jr_033_78e8

    jr jr_033_78ce

    ld c, d
    db $fc
    daa
    ldh [$e0], a
    add hl, sp
    nop
    ret nz

    rra
    ld b, b
    db $10
    ld hl, $1817
    rra
    jr @+$0d

    inc c
    add hl, bc
    add hl, bc
    ld c, $0c

jr_033_78e8:
    rrca
    ld hl, $38c7
    ld hl, $ef08
    db $10
    rst $38
    nop
    and c
    ccf
    ret nz

    db $fd
    nop
    inc bc
    ld_long a, $ff0d
    rra
    cp $11
    ei
    ld b, h
    inc e
    dec h
    jp hl


    rra
    db $f4
    ccf
    ld b, h
    rst $28
    ld bc, $fea9
    ei
    ld a, b
    rst $38
    rst $20
    rra
    dec sp
    nop
    di
    db $fc
    rst $38
    rst $38
    ld a, [c]
    di
    ld d, $f7
    nop
    inc c
    rst $38
    ld a, b
    adc a
    or h
    bit 7, h
    db $e3
    ld [bc], a
    cp $21
    rst JumpTable
    ldh [rP1], a
    rst $38
    ld bc, $0f0a
    ret nz

    ld a, $45

jr_033_7930:
    ld bc, $03ff
    rst $38
    inc c
    cp $00  ; and a / or a
    jr @-$06

    ldh [$f0], a
    add b
    ret nz

    nop
    add b
    nop
    ccf
    ldh [$1f], a
    or b
    rrca
    call c, $f703
    rrca
    nop
    ld sp, hl
    nop
    cp $3b
    ld hl, $213a
    db $10
    db $fd
    ld c, $ff
    ld hl, $3fce
    ld a, [hl]
    inc bc
    inc b
    add l
    ld bc, $07f1
    ld hl, sp+$21
    inc bc
    db $fc
    sbc b
    ld hl, $fe01
    ld hl, $407f
    ret nz

    ret nz

    ld bc, $a040
    jr nz, jr_033_7930

    ld a, a
    ldh [rNR41], a
    ld hl, $df00
    rra
    ret nc

    ccf
    ld [$0408], sp
    inc b
    nop
    ld b, $06
    ld [c], a
    ld [c], a
    dec sp
    dec sp
    dec c
    dec c
    inc b
    jp $f1c3


    pop af
    nop
    nop
    add hl, bc
    add b
    add b
    inc h
    add c
    add c
    ld sp, $0f0e
    ld h, b
    rlca
    rlca
    inc b
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    ld b, b
    rra
    ldh [rNR51], a
    rrca
    ldh a, [rNR42]
    sbc a
    ldh [rNR42], a
    rst JumpTable
    ld b, c
    add b
    dec h
    ei
    rlca
    rst $38
    rlca
    db $ed
    ld e, $b7
    nop
    ld a, b
    ld a, e
    rst $00
    rst $28
    ld e, a
    or h
    ld a, a
    add a
    nop
    ld a, a
    pop bc
    rst $38
    and [hl]
    rst JumpTable
    ld hl, sp+$3f
    db $ed
    nop
    cp $e7

jr_033_79ca:
    cp $bf
    ld a, [c]
    adc l
    ld a, e
    rrc b
    db $fd
    rst $08
    ldh a, [rIF]
    ld b, c

jr_033_79d6:
    adc a
    ld [hl], b
    rst $38
    ld b, d
    nop
    add c
    add b
    rst $38
    rst $38
    cp $41
    db $fc
    nop
    cp $fc
    db $fc
    ld hl, sp-$04
    ldh a, [$f8]
    ldh [$2d], a
    ldh a, [rSB]
    ld b, b
    nop
    ld hl, $0900
    rst $38
    ld h, c
    ld c, b
    add b
    add c
    ld b, b
    ld a, a
    ld hl, $5060
    cp a
    nop
    ld [hl], b
    sbc a
    jr nz, jr_033_79ca

    jr z, @-$1f

    jr c, jr_033_79d6

    nop
    inc de
    db $e4
    inc de
    add sp, $0f
    db $f4
    ld a, b
    ld a, b
    nop
    ld a, h
    ld a, h
    ld a, [hl]
    cp $3f
    cp a
    ccf
    rst $38
    add b
    ld hl, $5f9f
    rst JumpTable
    ccf
    jp Jump_033_63c3


    nop
    ld h, e
    inc hl
    inc hl
    ld sp, $9131
    sub c
    reti


    jr z, @-$25

    ld c, b
    ld b, b
    rst $38
    ret nz

    cp $ff
    db $fc
    add l
    ld b, c
    ld hl, sp-$01
    cp a
    ret nz

    ld hl, $413f
    jr nz, jr_033_7a5e

    ldh [rNR42], a
    rrca
    ldh a, [rTAC]
    ld hl, sp-$3f
    ld [bc], a
    ccf
    pop af
    rrca
    rst $38
    ld bc, $41fe
    rst $38
    ld b, b
    nop
    add c
    db $fd
    add d
    rst $38
    add b
    rst $38
    ld a, h
    ld b, d
    add e
    call $bf00
    ret nz

jr_033_7a5e:
    ccf
    ld b, c
    ld a, a
    ldh [$32], a
    rst $08
    nop
    add b
    add b
    add b
    add c
    add d
    add e
    add h
    add l
    dec b
    add [hl]
    add a
    adc b
    adc c
    adc d
    nop
    ld [$0083], sp
    ld [$c540], sp
    nop
    ld c, b
    add b
    add b
    adc e
    adc h
    add b
    adc l
    ld [bc], a
    add b
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    rra
    sbc b
    sub e
    nop
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sub b
    sbc d
    db $10
    sbc e
    adc d
    sbc h
    rra
    sub b
    sbc l
    sbc [hl]
    add b
    sbc a
    nop
    sub b
    sub b
    sub b
    and b
    and c
    and d
    adc d
    and e
    db $10
    and h
    and l
    and [hl]
    rra
    ld a, b
    and a
    xor b
    xor c
    xor d
    nop
    sub b
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    inc b
    or d
    sub b
    or e
    add h
    add l
    rra
    ld h, b
    or h
    or l
    nop
    or [hl]
    or a
    sub b
    sub b
    cp b
    cp c
    cp d
    cp e
    nop
    cp h
    cp l
    sub b
    sub b
    cp [hl]
    cp a
    adc d
    adc e
    ld b, b
    adc h
    rra
    ld e, b
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    nop
    add $c7
    ret z

    ret


    jp z, $90cb

    call z, $cd30
    adc $a6
    ld [$581f], sp
    sub b
    rst $08
    ret nc

    pop de
    nop
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    inc c
    jp c, $dcdb

    db $dd
    xor e
    ld [$601f], sp
    sub b
    sbc $00
    rst JumpTable
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $06
    rst $20
    add sp, -$17
    ld [$0deb], a
    ld de, $601f

jr_033_7b1c:
    sub b
    nop
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    adc d
    ld b, $8a
    di
    db $f4
    push af
    or $26
    add hl, bc
    rra
    ld [hl], b
    rst $30
    nop
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    adc d
    adc d
    ld bc, $fffe
    nop
    ld bc, $8e8d
    adc a
    rra
    ld [hl], b
    nop
    ld [bc], a
    inc bc
    sub b
    inc b
    dec b
    ld b, $07
    adc d
    ld b, $08
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld l, $09
    rra
    ld l, b
    dec c
    nop
    ld c, $0f
    db $10
    sub b
    ld de, $8a12
    inc de
    nop
    inc d
    dec d
    ld d, $17
    jr @-$65

    sbc d
    sbc e
    ld b, b
    sbc h
    rra
    ld h, b
    add hl, de
    sub b
    ld a, [de]
    dec de
    sub b
    inc e
    nop
    dec e
    ld e, $1f
    jr nz, jr_033_7b9b

    ld [hli], a
    inc hl
    inc h
    ld [$a6a5], sp
    and a
    xor b
    rra
    ld d, b
    dec h
    ld h, $aa
    nop
    sub b
    daa
    jr z, jr_033_7b1c

    add hl, hl
    ld a, [hli]
    dec hl
    inc l
    dec b
    dec l
    ld l, $2f
    jr nc, jr_033_7bc7

    ld b, h
    add hl, bc
    or e
    rra
    ld d, b

jr_033_7b9b:
    ld b, b
    ld [hl-], a
    add b
    ld [$3390], sp
    inc [hl]
    sub b
    dec [hl]
    ld [hl], $03
    scf
    jr c, jr_033_7be2

    ld a, [hl-]
    dec sp
    inc a
    ld c, b
    ld de, $501f
    ld b, b
    sbc l
    nop
    ld [$9f9e], sp
    and b
    sbc l
    and c
    and d
    inc hl
    and e
    and h
    ld l, e
    ld de, $838e
    cp b
    ld e, $50
    rra
    jr jr_033_7bcb

jr_033_7bc7:
    xor c
    xor d
    xor e
    xor h

jr_033_7bcb:
    sbc l
    and b
    add hl, bc
    cp l
    cp [hl]
    ld [hl], b
    cp a
    ld l, [hl]
    ld hl, $4800
    ld d, l
    ld a, [bc]
    nop
    dec bc
    add hl, bc
    ld b, b
    ld bc, $0040
    nop
    dec bc
    sub a

jr_033_7be2:
    rra
    dec hl
    add hl, bc
    rrca
    rra
    dec e
    dec bc
    ccf
    ld b, b
    rra
    rla
    inc hl
    add hl, bc
    add hl, bc
    cp [hl]
    rrca
    rlca
    ld b, $1f
    inc d
    ld a, $af
    ccf
    dec bc
    rst JumpTable
    ld b, $1f
    ld [de], a
    ld a, [hl]
    ld [hli], a
    cp a
    ld e, d
    rlca
    rra
    ld [de], a
    inc c
    ld e, [hl]
    rst JumpTable
    dec c
    ccf
    rlca
    and $1f
    ld de, $5f3a
    dec bc
    ld a, [bc]
    inc a
    ld b, b
    rlca
    ld l, c
    dec b
    ld hl, $101f
    ld a, [bc]
    sbc a
    dec bc
    add hl, bc
    sbc a
    dec l
    ld b, $06
    rra
    ld de, $3f0c
    add b
    rrca
    rra
    rla
    sbc d
    cp $0f
    ld c, $22
    rra
    dec de
    ld c, $20
    dec c
    ld [hl], e
    rrca
    ld a, $20
    rra
    rrca
    inc c
    inc c
    cp $40
    cp l

jr_033_7c3f:
    dec a
    rlca
    rra
    rrca
    ld a, $20
    rra
    dec bc
    rlca
    jr nz, jr_033_7c3f

    rra
    dec c
    ld a, [hl]
    inc h
    ld e, a
    add hl, bc
    rra
    dec d
    inc b
    add b
    ld c, e
    ld bc, $0740
    ld b, $60
    ld h, $27
    rra
    ld [de], a
    db $d3
    ld a, [hl]
    ld d, a
    rlca
    inc hl
    ld b, $06
    ld b, [hl]
    rra
    inc c
    rst $38
    rst $38
    rst $38
    ld bc, $c754
    rst $38
    adc a
    rst $30
    adc a
    rst $30
    adc a
    cp a
    cp a
    cp e
    ei
    db $db
    rst $20
    rst AddAToHL
    rst $38
    rst $38
    db $fd
    rst $28
    dec b
    ld d, l
    rst $38
    db $fd
    cp $f5
    cp $e2
    pop hl
    ret nz

    ret nz

    ldh [$f0], a
    ld d, h
    ld a, [bc]
    nop
    add sp, -$10
    rst $38
    cp a
    ret nz

    ld a, e
    db $fc
    rlca
    rst $38
    rst $38
    rst $38
    dec a
    ld b, d
    nop
    ccf
    ld a, a
    ld hl, sp-$01
    db $fc
    rst $38
    inc bc
    rst $38
    rst $38
    ret nz

    adc l
    rst $38
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    rra
    ldh [rP1], a
    ret nc

    daa
    rst $38
    rra
    nop
    nop
    nop
    nop
    db $fc
    nop
    nop
    db $fc
    ldh a, [rNR44]
    rst $38
    db $10
    rrca
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [$f4]
    dec hl
    rst $38
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    dec hl
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rNR44]
    rst $38
    nop
    ldh a, [rP1]
    nop
    ld bc, $0000
    ldh a, [rIF]
    ldh a, [$87]
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$07
    xor e
    ldh a, [$9c]
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    dec c
    ld b, d
    nop
    rst $38
    rst $38
    ret nz

    cp $47
    rst $38
    rlca
    rst $38
    ldh [$f8], a
    ld bc, $0a15
    nop
    db $e3
    db $fc
    ld bc, $ff07
    rst $30
    rrca
    ld hl, sp-$01
    cp $7d
    ld d, h
    nop
    db $e3
    rst JumpTable
    db $dd
    db $dd
    rst JumpTable
    pop hl
    adc $f1
    rst $28
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp+$55
    ld e, a
    rst $38
    ld hl, sp-$09
    ld sp, hl
    db $fc
    db $fc
    cp $5d
    ld d, l
    rst $38
    nop
    nop
    rra
    ld a, [bc]
    dec b
    add b
    ret nz

    ld d, a
    push de
    rst $38
    nop
    nop
    ldh [$57], a
    cp a
    ld e, a
    ld d, l
    rst $38
    rst $38
    nop
    nop
    nop
    cp $55
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld d, l
    rst $38
    rst $38
    rlca
    ld e, a
    inc bc
    rra
    db $fd
    rst $38
    rst $38
    cp a
    push de
    rst $38
    rst $38
    db $fc
    cp $c8
    ld d, l
    rst $38
    rst $38
    and b
    nop
    add b
    nop
    ld d, c
    rst $38
    rst $38
    nop
    nop
    nop
    cp $0b
    inc bc
    rst $38
    rst $38
    nop
    add sp, $00
    ret nc

    nop
    and h
    ld bc, $ff55
    nop
    ld bc, $8000
    ld bc, $fe7f
    db $fd
    cp $fa
    ret nc

    dec c
    ld d, l
    rst $38
    nop
    ld a, [hl]
    nop
    cp a
    and b
    ld b, b
    nop
    ld bc, $fd03
    ld a, a
    rst $38
    rst $28
    rst $28
    rst $38
    db $fd
    rst $38
    db $fd
    rrca
    ldh a, [rSCY]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    or $ff
    rst $38
    rst $30
    rst $30
    sbc e
    rst $38
    rst $38
    db $fd
    ei

jr_033_7db7:
    db $fd
    rst $30
    rst $38
    rst $38
    ei
    rst $38
    ld l, a
    rst $38
    db $fd
    db $fd
    rst $38
    ld l, a
    rst $38
    ei
    rst $30
    ret nz

    nop
    ldh a, [rBCPS]
    add sp, $32
    ld a, [c]
    jr z, jr_033_7db7

    ld [de], a
    ld a, [c]
    nop
    ret nz

    ld [$02a8], sp
    jp nz, $0005

    inc bc
    push af
    ld a, [bc]
    cp d
    dec b
    sbc h
    sub h
    ld a, [hl-]
    pop bc
    db $76
    adc c
    ld l, b
    sub a
    nop
    rst $38
    ld b, b
    ld b, h
    ld a, a
    adc a
    rst $08
    ccf
    xor a
    ld e, a
    rst JumpTable
    ccf
    xor a
    ld e, a
    cp a
    sbc a
    xor a
    ld a, [hl]
    rst $30
    ld l, [hl]
    rst $38
    cp a
    ei
    ei
    rst $28
    rst JumpTable
    rst $38
    rst $38
    cp $ff
    push hl
    rst $38
    ei
    ei
    rst $30
    rst $38
    rst $30
    rst $38
    db $fd
    db $fd
    cp a
    rst $38
    db $fd
    db $fd
    ld d, l
    nop
    ret nz

    nop
    nop
    nop
    ld b, b
    sub b
    sub b
    xor b
    xor b
    ret nc

    ret nc

    ldh [$e0], a
    inc b
    ld b, b
    cpl
    ei
    inc b
    xor e
    ld d, l
    ret nc

    ld h, d
    sbc a
    push de
    add d
    ld a, a
    rst $08
    ccf
    cp a
    ld a, a
    dec b
    ld b, a
    rst $38
    ld a, $fb
    ld a, e
    db $ed
    cp a
    ld e, a
    cp a
    ld [hl], a
    db $fd
    rst JumpTable

Jump_033_7e3f:
    db $fd
    rst $30
    rst $38
    cp $df
    ld [hl], b
    ld a, b
    rst $38
    rst $30
    rst JumpTable
    db $fd
    cp $f5
    db $fd
    ei
    ld sp, hl
    rst JumpTable
    rst JumpTable
    rst $20
    rst $38
    rst $30
    rst $30
    rst $30
    ld [hl], l
    ld d, l
    rst $38
    xor a
    ld e, a
    cpl
    cp a
    ld a, a
    xor a
    ld e, a
    sbc $fe
    rst $38
    cp $fd
    rst $30
    dec b
    ld d, l
    rst $38
    ld a, [$ad3f]
    ld a, a
    ld h, a
    add e
    inc bc
    inc bc
    inc bc
    rlca
    inc d
    ccf
    rst $38
    sub a
    ld a, a
    rst $30
    cp a
    rst JumpTable
    ei
    ei
    rst JumpTable
    pop af
    rst $38
    rst $38
    db $fd
    rst JumpTable
    cp a
    rst JumpTable
    rst $38
    rst $38
    rst $28
    rst $30
    ld d, h
    rst $38
    cp $dc
    cp $ec
    jp hl


    cp $15
    nop
    rst $30
    ei
    rst $28
    ld l, c
    ld c, e
    adc c
    inc sp
    rst $08
    ld l, e
    sub a
    push de
    cpl
    ld h, l
    sbc a
    scf
    ld d, l
    rst $38
    rst $30
    rst $28
    rst $30
    set 2, a
    or e
    call nz, $0455
    rst $38
    cpl
    ld e, a
    dec l
    dec bc
    add b
    ld a, a
    ld b, d
    cp a
    nop
    inc b
    ei
    adc a
    ld [hli], a
    rst $38
    rst $30
    rst JumpTable
    rst $30
    cp a
    rst $28
    or a
    ld e, a
    or a
    cp a
    db $db
    ld l, a
    rst $38
    rst $28
    rst $28
    db $fd
    rst $30
    ld d, l
    ld e, a
    rst $38
    rra
    rst $28
    rra
    ccf
    ld a, a
    ld a, a
    ld d, b
    ld b, h
    cp $e9
    pop af
    db $f4
    rst $38
    ldh [rIE], a
    pop af
    ld [$f9fd], a
    db $d3
    db $fc
    nop
    ld d, c
    rlca
    db $e3
    rra
    push de
    cpl
    and e
    ld e, a
    pop de
    cpl
    ei
    db $fd
    di
    ld c, $fb
    ld [bc], a
    ld [$a2c7], sp
    rst $38
    pop bc
    cp $8d
    ld a, [c]
    ld hl, sp-$31
    ldh a, [$d7]
    add sp, -$08
    rra
    ldh [rP1], a
    ld a, [bc]
    nop
    ld a, [bc]
    push af
    ld l, $d1
    scf
    ret z

    rrca
    ldh a, [rTMA]
    ld sp, hl
    ld bc, $fffe
    rst $38
    inc d
    inc b
    ld a, a
    rrca
    rst $38
    adc a
    adc l
    srl a
    or b
    ld c, a
    ld d, d
    xor a
    add b
    ret nz

    ccf
    rst $38
    ld d, l
    rst $38
    cp a
    cp a
    ld e, a
    cp a
    ld de, $fc41
    db $e3
    cp $f7
    push de
    ld a, [$f3e3]
    rst $20
    ld hl, sp-$09
    ld hl, sp-$0d
    nop

jr_033_7f3d:
    nop
    sub d
    rst $28
    ld d, b
    xor a
    ld [hl], h
    adc e
    ldh [rTAC], a
    nop
    adc a
    ld h, h
    sbc e
    inc c
    di
    inc d
    db $eb
    ld [bc], a
    xor d
    rst $38
    rla
    add sp, $3f
    ret nz

    ld e, a
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$80f7], sp
    ld a, a
    ld c, d
    or l
    and h
    ld e, e
    ld c, [hl]
    or c
    or h
    ld c, e
    ld a, [hli]
    push de
    jr nc, jr_033_7f3d

    ld d, l
    ld d, l
    rst $38
    dec d
    inc bc
    rla
    dec bc
    cp a
    ccf
    ld e, a
    cpl
    rst $38
    db $db
    rst $38
    rst $28
    rst $28
    ld b, b
    ld b, h
    db $fc
    db $db
    and d
    db $fd
    ret nz

jr_033_7f85:
    rst $38
    adc c
    cp $c3
    add a
    ld hl, sp-$2d
    and a
    ld hl, sp+$00
    ld de, $0ec0
    pop af
    inc b
    ei
    ld d, [hl]
    xor c
    dec e
    ld [c], a
    or c
    ld b, b
    inc sp
    ld b, h
    and b
    jr nc, jr_033_7fa0

jr_033_7fa0:
    ld de, $200f
    rst JumpTable
    sub b
    ld l, a
    sbc b
    ld h, a
    ld [hl], h
    adc e
    ld a, b
    add a
    ldh a, [$f8]
    rlca
    ld [hl], b
    nop
    nop
    db $10
    rst $28
    jr nc, jr_033_7f85

    sub h
    db $eb
    adc b
    rst $30
    ld [hl], h
    res 3, b
    rst $20
    dec a
    jp nz, $e09f

    ld d, l
    ld d, h
    rst $38
    ld e, a
    rra
    cpl
    rrca
    dec b
    dec bc
    rrca
    ld c, a
    cp a
    db $fd
    ret nc

    rst $38
    rst $30
    cp a
    rst $28
    cp a
    rst JumpTable
    rst $28
    nop
    ld d, l
    rst $38
    rst $00
    ld hl, sp-$7b
    ld a, [$fcd3]
    pop hl
    cp $d8
    db $f4
    ld hl, sp-$02
    jr z, jr_033_7fe8

jr_033_7fe8:
    ld a, [hl-]
    ld a, h
    add b
    ret nz

    call nz, $e816
    dec de
    db $e4
    rla
    add sp, $13
    db $ec
    dec b
    ld a, [$1001]
    rla
    cp b
    ld b, a
    jr c, @+$09

    ld [hl], h
    dec bc

; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03b", ROMX

    rst $38
    ld sp, hl
    nop
    ldh [$03], a
    or $02
    sub $33
    jr nz, jr_03b_4041

    jr nz, jr_03b_403e

    jr nz, @+$35

    db $10
    inc [hl]
    db $10
    inc sp
    jr nz, jr_03b_404b

    jr nz, jr_03b_4048

    jr nz, jr_03b_4048

    db $10
    ld sp, $3310
    jr nz, jr_03b_4055

    jr nz, @+$3f

    db $10
    dec sp
    db $10
    ld [hl], $10
    inc sp
    db $10
    ld [hl], $20
    inc [hl]
    db $10
    inc sp
    db $10
    ld sp, $3420
    db $10
    ld [hl], $10
    jr c, jr_03b_4056

    ccf
    jr nz, @+$3f

    jr nz, jr_03b_4075

    db $10
    jr c, jr_03b_404e

jr_03b_403e:
    ld [hl], $20
    dec a

jr_03b_4041:
    jr nz, jr_03b_407e

    jr @+$62

    ld [$103b], sp

jr_03b_4048:
    ld a, [hl-]
    db $10
    ld sp, hl

jr_03b_404b:
    nop
    ldh [rP1], a

jr_03b_404e:
    jr c, @+$06

    ld h, b
    inc b
    db $d3
    jr c, jr_03b_4059

jr_03b_4055:
    ld h, b

jr_03b_4056:
    inc b
    sub $31

jr_03b_4059:
    inc b
    ld h, b
    inc b
    db $d3
    ld sp, $6004
    inc b
    sub $3d
    inc b
    ld h, b
    inc b
    db $d3
    dec a
    inc b
    ld h, b
    inc b
    sub $31
    inc b
    ld h, b
    inc b
    db $d3
    ld sp, $6004
    inc b

jr_03b_4075:
    sub $38
    inc b
    ld h, b
    inc b
    db $d3
    jr c, jr_03b_4081

    ld h, b

jr_03b_407e:
    inc b
    sub $31

jr_03b_4081:
    inc b
    ld h, b
    inc b
    db $d3
    ld sp, $6004
    inc b
    sub $3d
    inc b
    ld h, b
    inc b
    db $d3
    dec a
    inc b
    ld h, b
    inc b
    sub $31
    inc b
    ld h, b
    inc b
    db $d3
    ld sp, $6004
    inc b
    sub $36
    ld [$0838], sp
    ld [hl], $08
    jr c, jr_03b_40ae

    ld [hl], $08
    ld h, b
    inc b
    db $d3
    ld [hl], $08
    ld h, b

jr_03b_40ae:
    inc b
    sub $3a
    inc b
    dec a
    inc b
    ld b, d
    inc b
    ld h, b
    inc b
    db $d3
    ld a, [hl-]
    inc b
    dec a
    inc b
    ld b, d
    inc b
    ld h, b
    inc b
    pop de
    ld a, [hl-]
    inc b
    dec a
    inc b
    ld b, d
    inc b
    ld h, b
    inc e
    ld sp, hl
    nop
    ldh [$03], a
    cp $07
    ld b, b
    rst $38
    ld sp, hl
    nop
    ldh [$03], a
    or $02
    sub $23
    db $10
    ld a, [hl+]
    db $10
    inc hl
    db $10
    ld a, [hl+]
    db $10
    ld [hl+], a
    db $10
    ld a, [hl+]
    db $10
    ld e, $10
    ld a, [hl+]
    db $10
    inc hl
    db $10
    ld a, [hl+]
    db $10
    inc hl
    db $10
    ld a, [hl+]
    db $10
    ld [hl+], a
    db $10
    ld e, $10
    jr nz, jr_03b_4107

    ld [hl+], a
    db $10
    inc hl
    db $10
    ld a, [hl+]
    db $10
    inc hl
    db $10
    ld [hl+], a
    db $10
    jr nz, jr_03b_4113

    daa
    db $10
    jr nz, jr_03b_4117

jr_03b_4107:
    daa
    db $10
    dec h
    db $10
    inc l
    db $10
    dec h
    db $10
    inc l
    db $10
    ld e, $10

jr_03b_4113:
    jr nz, jr_03b_4125

    ld [hl+], a
    db $10

jr_03b_4117:
    inc hl
    db $10
    dec h
    db $10
    jr z, jr_03b_412d

    dec h
    db $10
    inc hl
    db $10
    ld [hl+], a
    db $10
    dec h
    db $10

jr_03b_4125:
    ld e, $10
    dec h
    db $10
    dec de
    db $10
    inc e
    db $10

jr_03b_412d:
    ld e, $10
    ld [hl+], a
    db $10
    jr nz, jr_03b_4143

    ld [hl+], a
    db $10
    inc hl
    db $10
    daa
    db $10
    jr z, @+$22

    daa
    jr nz, jr_03b_4163

    jr nz, jr_03b_4163

    jr nz, jr_03b_4164

    db $10

jr_03b_4143:
    ld a, [hl+]
    db $10
    inc hl
    db $10
    ld a, [hl+]
    db $10
    inc h
    db $10
    ld a, [hl+]
    db $10
    dec h
    db $10
    ld a, [hl+]
    db $10
    cp $d8
    ld b, b
    rst $38
    or $0c
    inc sp
    ld c, $33
    jr nz, jr_03b_4192

    jr nz, jr_03b_418f

    jr nz, @+$35

    db $10
    inc [hl]
    db $10

jr_03b_4163:
    inc sp

jr_03b_4164:
    jr nz, @+$38

    jr nz, jr_03b_4199

    jr nz, jr_03b_4199

    db $10
    ld sp, $3310
    jr nz, @+$38

    jr nz, jr_03b_41af

    db $10
    dec sp
    db $10
    ld [hl], $10
    inc sp
    db $10
    ld [hl], $20
    inc [hl]
    db $10
    inc sp
    db $10
    ld sp, $3420
    db $10
    ld [hl], $10
    jr c, @+$22

    ccf
    jr nz, @+$3f

    jr nz, @+$3c

    db $10
    jr c, @+$12

jr_03b_418f:
    ld [hl], $20
    dec a

jr_03b_4192:
    jr nz, jr_03b_41cf

    jr jr_03b_41f6

    ld [$103b], sp

jr_03b_4199:
    ld a, [hl-]
    db $10
    jr c, @+$12

    ld sp, $3d10
    db $10
    ld sp, $3810
    db $10
    ld sp, $3d10
    db $10
    ld sp, $3610
    ld [$0838], sp

jr_03b_41af:
    ld [hl], $08
    jr c, jr_03b_41bb

    ld [hl], $10
    ld h, b
    ld [$043a], sp
    dec a
    inc b

jr_03b_41bb:
    ld b, d
    inc b
    ld h, b
    ld l, $fe
    ld d, a
    ld b, c
    rst $38
    or $02
    jp c, $00f9

    ldh [rSB], a
    ld d, $0c
    ld [hl+], a
    inc c
    ld h, b

jr_03b_41cf:
    inc c
    ld [hl+], a
    inc c
    ldh [rSC], a
    ld d, $0c
    ldh [rSB], a
    ld [hl+], a
    inc c
    ld h, b
    inc c
    ld [hl+], a
    inc c
    inc d
    inc c
    ldh [rSB], a
    jr nz, jr_03b_41f0

    ld h, b
    inc c
    jr nz, jr_03b_41f4

    inc d
    inc c
    ldh [rSB], a
    jr nz, jr_03b_41fa

    ld h, b
    inc c

jr_03b_41f0:
    jr nz, jr_03b_41fe

    ld [de], a
    inc c

jr_03b_41f4:
    ldh [rSB], a

jr_03b_41f6:
    ld e, $0c
    ld h, b
    inc c

jr_03b_41fa:
    ld e, $0c
    ld [de], a
    inc c

jr_03b_41fe:
    ldh [rSB], a
    ld e, $0c
    ld h, b
    inc c
    ld e, $0c
    add hl, de
    inc c
    ldh [rSB], a
    dec h
    inc c
    ld h, b
    inc c
    dec h
    inc c
    add hl, de
    inc c
    ldh [rSB], a
    dec h
    inc c
    ld h, b
    inc c
    dec h
    inc c
    rla
    inc c
    ldh [rSB], a
    inc hl
    inc c
    ld h, b
    inc c
    inc hl
    inc c
    rla
    inc c
    ldh [rSB], a
    inc hl
    inc c
    ld h, b
    inc c
    inc hl
    inc c
    ld d, $0c
    ldh [rSB], a
    ld [hl+], a
    inc c
    ld h, b
    inc c
    ld [hl+], a
    inc c
    ld d, $0c
    ldh [rSB], a
    ld [hl+], a
    inc c
    ld h, b
    inc c
    ld [hl+], a
    inc c
    jr jr_03b_4250

    inc h
    inc c
    ld h, b
    inc c
    inc h
    inc c
    jr jr_03b_4258

    inc h
    inc c
    ld l, $0c

jr_03b_4250:
    inc h
    inc c
    ld sp, hl
    nop
    ldh [$03], a
    dec e
    inc c

jr_03b_4258:
    ret c

    ldh [rP1], a
    ld l, $03
    ldh [rSB], a
    call nc, $032e
    ret c

    ldh [rP1], a
    ld l, $03
    ldh [rSB], a
    call nc, $032e
    jp c, $00e0

    ld l, $03
    ldh [rSB], a
    call nc, $032e
    ldh [rP1], a
    jp nc, $062e

    ret c

    ldh [rP1], a
    ld l, $03
    ldh [rSB], a
    call nc, $032e
    jp c, $00e0

    ld l, $03
    ldh [rSB], a
    call nc, $032e
    ldh [rP1], a
    ret c

    ld l, $08
    call nc, $042e
    ret c

    ldh [rP1], a
    jr @+$05

    ldh [rSB], a
    call nc, $0318
    ret c

    ldh [rP1], a
    jr @+$05

    ldh [rSB], a
    call nc, $0318
    jp c, $00e0

    jr @+$05

    ldh [rSB], a
    call nc, $0318
    ldh [rP1], a
    jp nc, $0618

    ret c

    ldh [rP1], a
    jr @+$05

    ldh [rSB], a
    call nc, $0318
    jp c, $00e0

    jr @+$05

    ldh [rSB], a
    call nc, $0318
    ldh [rP1], a
    ret c

    dec e
    ld [$1dd4], sp
    inc b
    ret c

    ldh [rP1], a
    dec l
    inc bc
    ldh [rSB], a
    call nc, $032d
    ret c

    ldh [rP1], a
    dec l
    inc bc
    ldh [rSB], a
    call nc, $032d
    jp c, $00e0

    dec l
    inc bc
    ldh [rSB], a
    call nc, $032d
    ldh [rP1], a
    jp nc, $062d

    ret c

    ldh [rP1], a
    dec l
    inc bc
    ldh [rSB], a
    call nc, $032d
    jp c, $00e0

    dec l
    inc bc
    ldh [rSB], a
    call nc, $032d
    ldh [rP1], a
    ret c

    dec l
    ld [$2dd4], sp
    inc b
    jp c, $01e0

    ld de, $da06
    ld de, $da06
    ld de, $da06
    ld [de], a
    dec b
    pop de
    ld [de], a
    ld bc, $13da
    dec b
    pop de
    inc de
    ld bc, $15da
    dec b
    pop de
    dec d
    ld bc, $c3fe
    ld b, c
    rst $38
    or $02
    ret nc

    jr nz, jr_03b_43a7

    ld sp, hl
    nop
    ldh [rP1], a
    sub $3a
    ld b, $60
    ld b, $3a
    inc bc
    ld h, b
    inc bc
    inc a
    inc bc
    ld h, b
    inc bc
    ld a, $03
    ld h, b
    inc bc
    ccf
    inc bc
    ld h, b
    inc bc
    ld sp, hl
    nop

jr_03b_4356:
    ldh [rTAC], a
    ld b, c
    jr nc, jr_03b_43bb

    jr jr_03b_4356

    nop
    ldh [rP1], a
    dec a
    inc bc
    ld h, b
    inc bc
    ld b, d
    inc bc
    ld h, b
    inc bc
    ld b, h
    inc bc
    ld h, b
    inc bc
    ld b, [hl]
    inc bc
    ld h, b
    inc bc
    ld sp, hl
    nop
    ldh [rTAC], a
    ld c, c
    jr nc, @+$62

    inc h
    ld sp, hl
    nop
    ldh [rP1], a
    dec a
    inc bc
    ld h, b
    inc bc
    ccf
    inc bc
    ld h, b
    inc bc
    ld b, c
    ld b, $60
    ld b, $3d
    ld b, $60
    ld b, $f9
    nop
    ldh [rTAC], a
    jr c, jr_03b_43aa

    ld h, b
    inc h
    ld sp, hl
    nop
    ldh [rP1], a
    ccf
    ld [bc], a
    ld h, b
    inc b
    ld b, c
    ld [bc], a
    ld h, b
    inc b
    ld b, d
    ld [bc], a
    ld h, b
    ld a, [bc]
    ccf
    ld [bc], a
    ld h, b

jr_03b_43a7:
    inc b
    ld b, c
    ld [bc], a

jr_03b_43aa:
    ld h, b
    inc b
    ld sp, hl
    nop
    ldh [rDIV], a
    ld b, d
    jr jr_03b_4413

    inc h
    ld sp, hl
    nop
    ldh [rP1], a
    dec a
    ld [bc], a
    ld h, b

jr_03b_43bb:
    inc b
    ccf
    ld [bc], a
    ld h, b
    inc b
    ld b, c
    ld [bc], a
    ld h, b
    ld a, [bc]
    dec a
    ld [bc], a
    ld h, b
    inc b
    ccf
    ld [bc], a
    ld h, b
    inc b
    ld sp, hl
    nop
    ldh [rDIV], a
    ld b, c
    jr jr_03b_4433

    inc h
    ld sp, hl
    nop
    ldh [rP1], a
    inc a
    ld [bc], a
    ld h, b
    inc b
    ld a, $02
    ld h, b
    inc b
    ld b, b
    ld [bc], a
    ld h, b
    ld a, [bc]
    ld b, b
    ld [bc], a
    ld h, b
    inc b
    ld b, c
    ld [bc], a
    ld h, b
    inc b
    ld b, e
    ld [bc], a
    ld h, b
    inc b
    ld b, l
    ld [bc], a
    ld h, b
    inc b
    ld b, [hl]
    ld [bc], a
    ld h, b
    inc b
    ld c, b
    ld [bc], a
    ld h, b
    inc b
    ld b, l
    ld b, $60
    ld b, $d8
    daa
    inc bc
    jp nc, $0327

    ret c

    daa
    inc bc
    jp nc, $0327

    jp c, $0327

    jp nc, $0327

    pop de

jr_03b_4413:
    daa
    ld b, $d8
    daa
    inc bc
    jp nc, $0327

    ret c

    daa
    inc bc
    jp nc, $0327

    jp c, $0827

    db $d3
    daa
    ld a, [bc]
    pop de
    daa
    ld a, [bc]
    ld h, b
    jr nz, @-$26

    daa
    inc bc
    jp nc, $0327

    ret c

jr_03b_4433:
    daa
    inc bc
    jp nc, $0327

    jp c, $0327

    jp nc, $0327

    pop de
    daa
    ld b, $d8
    daa
    inc bc
    jp nc, $0327

    ret c

    daa
    inc bc
    jp nc, $0327

    jp c, $0827

    db $d3
    daa
    ld a, [bc]
    pop de
    daa
    ld a, [bc]
    ld h, b
    inc d
    cp $36
    ld b, e
    rst $38
    or $01
    ld l, $06
    ld h, b
    ld [de], a
    add hl, hl
    ld e, $60
    inc c
    ld l, $04
    ld h, b
    ld [bc], a
    ld l, $06
    jr nc, jr_03b_4471

    ld h, b
    inc bc
    ld [hl-], a

jr_03b_4471:
    inc bc
    ld h, b
    inc bc
    inc sp
    inc bc
    ld h, b
    inc bc
    dec [hl]
    ld a, [hl+]
    ld h, b
    ld [de], a
    dec [hl]
    add hl, bc
    ld h, b
    inc bc
    dec [hl]
    inc c
    ld [hl], $03
    ld h, b
    inc bc
    jr c, jr_03b_448b

    ld h, b
    inc bc
    ld a, [hl-]

jr_03b_448b:
    ld a, [hl+]
    ld h, b
    ld [de], a
    ld a, [hl-]
    add hl, bc
    ld h, b
    inc bc
    ld a, [hl-]
    inc c
    jr c, @+$05

    ld h, b
    inc bc
    ld [hl], $03
    ld h, b
    inc bc
    jr c, jr_03b_44a4

    ld h, b
    inc c
    ld [hl], $06
    dec [hl]
    inc h

jr_03b_44a4:
    ld h, b
    inc c
    dec [hl]
    jr jr_03b_44dc

    inc c
    ld h, b
    ld b, $35
    ld b, $36
    inc h
    ld h, b
    inc c
    dec [hl]
    inc c
    inc sp
    inc c
    ld sp, $600c
    ld b, $33
    ld b, $35
    inc h
    ld h, b
    inc c
    inc sp
    inc c
    ld sp, $300c
    inc c
    ld h, b
    ld b, $32
    ld b, $34
    inc h
    ld h, b
    inc c
    scf
    jr jr_03b_4506

    ld [$b860], sp
    cp $5c
    ld b, h
    rst $38
    ld sp, hl
    nop
    or $02

jr_03b_44dc:
    ldh [rP1], a
    push de
    ld l, $07
    db $d3
    ld l, $07
    ld h, b
    ld c, $e0
    nop
    push de
    add hl, hl
    dec d
    db $d3
    add hl, hl
    dec d
    ldh [rSC], a

jr_03b_44f0:
    push de
    ld l, $07
    ld h, b
    rlca
    ld sp, hl
    nop
    ldh [rSC], a
    ld l, $07
    jr nc, @+$09

    ld [hl-], a
    rlca
    inc sp
    rlca
    ld sp, hl
    nop
    ldh [rP1], a
    dec [hl]

jr_03b_4506:
    inc e
    db $d3
    dec [hl]
    ld c, $d2
    dec [hl]
    ld c, $60
    jr c, jr_03b_44f0

    nop
    push de
    ld a, [hl-]
    rlca
    db $d3
    ld a, [hl-]
    rlca
    ld h, b
    ld c, $e0
    nop
    push de
    dec [hl]
    dec d
    db $d3

jr_03b_451f:
    dec [hl]
    dec d
    ldh [rSC], a
    push de
    ld a, [hl-]
    rlca
    ld h, b
    rlca
    ldh [rSC], a
    ld a, [hl-]
    rlca
    inc a
    rlca
    ld a, $07
    ccf
    rlca
    ldh [rP1], a
    ld b, c
    inc e
    db $d3
    ld b, c
    ld c, $d2
    ld b, c
    ld c, $60
    jr c, jr_03b_451f

    nop
    push de
    ld l, $07
    db $d3
    ld l, $07
    ld h, b
    ld c, $e0
    nop
    push de
    add hl, hl
    dec d
    db $d3
    add hl, hl
    dec d

jr_03b_4550:
    ldh [rSC], a
    push de
    ld l, $07
    ld h, b
    rlca
    ldh [rSC], a
    ld l, $07
    jr nc, @+$09

    ld [hl-], a
    rlca
    inc sp
    rlca
    ld sp, hl
    nop
    ldh [rP1], a
    dec [hl]
    inc e
    db $d3
    dec [hl]
    ld c, $d2
    dec [hl]
    ld c, $60
    jr c, jr_03b_4550

    nop
    push de
    ld a, [hl-]
    rlca
    db $d3
    ld a, [hl-]
    rlca
    ld h, b
    ld c, $e0
    nop
    push de
    dec [hl]
    dec d
    db $d3
    dec [hl]
    dec d
    ldh [rSC], a
    push de
    ld a, [hl-]
    rlca
    ld h, b
    rlca
    ldh [rSC], a
    ld a, [hl-]
    rlca
    inc a
    rlca
    ld a, $07
    ccf
    rlca
    ld sp, hl
    nop
    ldh [$08], a
    ld b, c
    inc e
    db $d3
    ld b, c
    ld c, $d2
    ld b, c
    ld c, $60

jr_03b_459f:
    jr c, jr_03b_459f

    ld a, $45
    rst $38
    ret nc

    jr nz, jr_03b_4617

    ld sp, hl
    nop
    ldh [rP1], a
    or $02
    ret c

    jr nz, jr_03b_45b7

    call nc, $0720
    ld h, b
    ld c, $d8
    dec de

jr_03b_45b7:
    dec d
    db $d3
    dec de
    dec d
    ret c

    ldh [rSB], a
    jr nz, jr_03b_45c7

    ld h, b
    rlca
    ldh [rP1], a
    ret c

    jr nz, jr_03b_45cb

jr_03b_45c7:
    jp nc, $0320

    ret c

jr_03b_45cb:
    ld [hl+], a
    inc b
    jp nc, $0322

    ret c

    inc h
    inc b
    jp nc, $0324

    ret c

    daa
    inc b
    jp nc, $0327

    ret c

    ret c

    ld a, [hl+]
    inc b
    jp nc, $032a

    ld h, b
    add l
    ldh [rP1], a
    ret c

    inc l
    rlca
    call nc, $072c
    ld h, b
    ld c, $d8
    daa
    ld c, $d3
    daa
    ld c, $e0
    nop
    ret c

    inc l
    inc b
    jp nc, $032c

    ret c

    daa
    inc b
    jp nc, $0327

    ret c

    inc h
    inc b
    jp nc, $0324

    ret c

    jr nz, jr_03b_4610

    jp nc, $0320

    ret c

jr_03b_4610:
    ld [hl+], a
    inc b
    jp nc, $0322

    ld h, b
    ld l, c

jr_03b_4617:
    ldh [rP1], a
    ret c

    jr nz, jr_03b_4623

    call nc, $0720
    ld h, b
    ld c, $d8
    dec de

jr_03b_4623:
    dec d
    db $d3
    dec de
    dec d
    ret c

    ldh [rSB], a
    jr nz, jr_03b_4633

    ld h, b
    rlca
    ldh [rP1], a
    ret c

    jr nz, jr_03b_4637

jr_03b_4633:
    jp nc, $0320

    ret c

jr_03b_4637:
    ld [hl+], a
    inc b
    jp nc, $0322

    ret c

    inc h
    inc b
    jp nc, $0324

    ret c

    daa
    inc b
    jp nc, $0327

    ret c

    ld a, [hl+]
    inc b
    jp nc, $032a

    ld h, b
    add l
    ldh [rP1], a
    ret c

    inc l
    rlca
    call nc, $072c
    ld h, b
    ld c, $d8
    daa
    ld c, $d3
    daa
    ld c, $e0
    nop
    ret c

    inc l
    inc b
    jp nc, $032c

    ret c

    daa
    inc b
    jp nc, $0327

    ret c

    inc h
    inc b
    jp nc, $0324

    ret c

    jr nz, @+$06

    jp nc, $0320

    cp $0f
    ld b, [hl]
    rst $38
    or $0a
    ld d, $03
    or $0d
    ld d, $05
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld d, $03
    or $0d
    ld d, $05
    ld h, b
    inc d
    or $0a
    ld d, $03
    or $0d
    ld d, $05
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld d, $03
    or $0d
    ld d, $05
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld d, $03
    or $0d
    ld d, $05
    ld h, b
    inc d
    or $0a
    ld d, $03
    or $0d
    ld d, $05
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    inc d
    or $0a
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    inc d
    or $0a
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld [de], a
    inc bc
    or $0d
    ld [de], a
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld [de], a
    inc bc
    or $0d
    ld [de], a
    dec b
    ld h, b
    inc d
    or $0a
    ld [de], a
    inc bc
    or $0d
    ld [de], a
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld [de], a
    inc bc
    or $0d
    ld [de], a
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld [de], a
    inc bc
    or $0d
    ld [de], a
    dec b
    ld h, b
    inc d
    or $0a
    ld [de], a
    inc bc
    or $0d
    ld [de], a
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    inc d
    or $0a
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    inc d
    or $0a
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld d, $03
    or $0d
    ld d, $05
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld d, $03
    or $0d
    ld d, $05
    ld h, b
    inc d
    or $0a
    ld d, $03
    or $0d
    ld d, $05
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld d, $03
    or $0d
    ld d, $05
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld d, $03
    or $0d
    ld d, $05
    ld h, b
    inc d
    or $0a
    ld d, $03
    or $0d
    ld d, $05
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    inc d
    or $0a
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    inc d
    or $0a
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld [de], a
    inc bc
    or $0d
    ld [de], a
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld [de], a
    inc bc
    or $0d
    ld [de], a
    dec b
    ld h, b
    inc d
    or $0a
    ld [de], a
    inc bc
    or $0d
    ld [de], a
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld [de], a
    inc bc
    or $0d
    ld [de], a
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    ld [de], a
    inc bc
    or $0d
    ld [de], a
    dec b
    ld h, b
    inc d
    or $0a
    ld [de], a
    inc bc
    or $0d
    ld [de], a
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    inc d
    or $0a
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $f6
    ld a, [bc]
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    inc d
    or $0a
    inc d
    inc bc
    or $0d
    inc d
    dec b
    ld h, b
    ld b, $fe
    ld l, [hl]
    ld b, a
    rst $38
    push de
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, $2a
    rlca
    ld a, [hl+]
    rlca
    cp $c3
    ld c, b
    rst $38
    ld sp, hl
    nop
    ldh [rSC], a
    or $02
    sub $23
    inc c
    dec h
    inc c
    jr z, jr_03b_4940

    dec hl
    inc c
    cpl
    inc c
    ld sp, $340c
    inc c
    scf
    inc c
    dec sp
    inc c

jr_03b_4940:
    dec a
    inc c
    ld b, b
    inc c
    ld b, e
    inc c
    ld b, a
    inc c
    ld c, c
    inc c
    ld c, h
    inc c
    ld c, a
    inc c
    ld [hl+], a
    inc c
    inc h
    inc c
    daa
    inc c
    ld a, [hl+]
    inc c
    ld l, $0c
    jr nc, jr_03b_4966

    inc sp
    inc c
    ld [hl], $0c
    ld a, [hl-]
    inc c
    inc a
    inc c
    ccf
    inc c
    ld b, d
    inc c

jr_03b_4966:
    ld b, [hl]
    inc c
    ld c, b
    inc c
    ld c, e
    inc c
    ld c, [hl]
    inc c
    cp $2d
    ld c, c
    rst $38
    pop de
    inc hl
    ld b, $f9
    nop
    ldh [rSC], a
    or $02
    sub $23
    inc c
    dec h
    inc c
    jr z, jr_03b_498e

    dec hl
    inc c
    cpl
    inc c
    ld sp, $340c
    inc c
    scf
    inc c
    dec sp
    inc c

jr_03b_498e:
    dec a
    inc c
    ld b, b
    inc c
    ld b, e
    inc c
    ld b, a
    inc c
    ld c, c
    inc c
    ld c, h
    inc c
    ld c, a
    inc c
    ld [hl+], a
    inc c
    inc h
    inc c
    daa
    inc c
    ld a, [hl+]
    inc c
    ld l, $0c
    jr nc, jr_03b_49b4

    inc sp
    inc c
    ld [hl], $0c
    ld a, [hl-]
    inc c
    inc a
    inc c
    ccf
    inc c
    ld b, d
    inc c

jr_03b_49b4:
    ld b, [hl]
    inc c
    ld c, b
    inc c
    ld c, e
    inc c
    ld c, [hl]
    inc c
    cp $7b
    ld c, c
    rst $38
    or $0f
    ld h, b
    add hl, bc
    inc hl
    inc c
    dec h
    inc c
    jr z, jr_03b_49d6

    dec hl
    inc c
    cpl
    inc c
    ld sp, $340c
    inc c
    scf
    inc c
    dec sp
    inc c

jr_03b_49d6:
    dec a
    inc c
    ld b, b
    inc c
    ld b, e
    inc c
    ld b, a
    inc c
    ld c, c
    inc c
    ld c, h
    inc c
    ld c, a
    inc c
    ld [hl+], a
    inc c
    inc h
    inc c
    daa
    inc c
    ld a, [hl+]
    inc c
    ld l, $0c
    jr nc, jr_03b_49fc

    inc sp
    inc c

jr_03b_49f2:
    ld [hl], $0c
    ld a, [hl-]
    inc c
    inc a
    inc c
    ccf
    inc c
    ld b, d
    inc c

jr_03b_49fc:
    ld b, [hl]
    inc c

jr_03b_49fe:
    ld c, b
    inc c
    ld c, e
    inc c
    ld c, [hl]
    inc c
    cp $c4
    ld c, c
    rst $38
    ld sp, hl
    nop
    or $02
    sub $e0
    inc b
    dec hl
    jr jr_03b_49f2

    ld [bc], a
    dec hl
    ld [$0826], sp
    dec hl
    ld [$04e0], sp
    add hl, hl
    jr jr_03b_49fe

    ld [bc], a
    add hl, hl
    ld [$082b], sp
    dec l
    ld [$04e0], sp
    ld l, $18
    ldh [rSC], a
    ld l, $08
    dec hl
    ld [$082e], sp
    ldh [rDIV], a
    dec l
    jr @-$1e

    ld [bc], a
    dec l
    ld [$082e], sp
    jr nc, jr_03b_4a45

    ld sp, hl
    pop hl
    ldh [rP1], a
    ld [hl-], a
    inc a
    ld h, b
    inc c

jr_03b_4a45:
    ld sp, hl
    nop
    ldh [rSC], a
    jr nc, jr_03b_4a53

    jr nc, jr_03b_4a55

    jr nc, jr_03b_4a57

    ld sp, hl

jr_03b_4a50:
    pop hl
    ldh [rP1], a

jr_03b_4a53:
    ld [hl-], a
    inc a

jr_03b_4a55:
    ld h, b
    inc c

jr_03b_4a57:
    ld sp, hl
    nop
    ldh [rP1], a
    jr nc, jr_03b_4a61

    ld h, b
    inc b
    cpl
    inc b

jr_03b_4a61:
    ld h, b

jr_03b_4a62:
    inc b
    dec l
    inc b
    ld h, b
    inc b
    ld sp, hl
    nop
    ldh [rTIMA], a
    dec hl
    jr jr_03b_4a94

    jr jr_03b_4a50

    inc b
    ld h, b

jr_03b_4a72:
    ld [de], a
    dec hl
    ld b, $2b
    ld b, $2d
    ld b, $2f
    ld b, $30
    ld b, $e0
    dec b
    ld [hl-], a
    jr nc, jr_03b_4a62

    inc b
    ld h, b
    db $10
    ld [hl-], a
    ld [$0832], sp
    inc sp
    ld [$0835], sp
    ldh [rTIMA], a
    scf
    jr nc, jr_03b_4a72

    inc b
    ld h, b

jr_03b_4a94:
    db $10
    scf
    ld [$0837], sp
    dec [hl]
    ld [$0833], sp
    ld sp, hl
    nop
    ldh [rP1], a
    dec [hl]

jr_03b_4aa2:
    ld [$0860], sp
    inc sp
    ld [$00f9], sp
    ldh [rTIMA], a
    ld [hl-], a
    jr @-$1e

    inc b
    ld h, b
    jr @+$34

    ld [$0833], sp
    ld [hl-], a
    ld [$0c30], sp
    jr nc, @+$08

    ld [hl-], a
    ld b, $e0
    dec b
    inc sp
    jr jr_03b_4aa2

    inc b
    ld h, b
    jr jr_03b_4af8

    inc c
    jr nc, jr_03b_4ad5

    ld l, $0c
    ld l, $06
    jr nc, jr_03b_4ad5

    ldh [rTIMA], a
    ld [hl-], a
    jr @-$1e

    inc b

jr_03b_4ad5:
    ld h, b
    jr @+$32

    inc c
    ld l, $0c
    dec l
    inc c
    dec l
    ld b, $2f
    ld b, $e0
    dec b

jr_03b_4ae3:
    ld sp, $e018
    inc b
    ld h, b
    jr jr_03b_4b1e

    jr jr_03b_4b1e

    inc c
    ld sp, hl
    nop
    ldh [rSB], a
    or $00
    ret c

    ld h, $04
    ld h, $04

jr_03b_4af8:
    ld h, $04

jr_03b_4afa:
    ld sp, hl
    nop
    sub $e0
    ld [bc], a
    jr z, jr_03b_4b09

    jr z, jr_03b_4b0b

    jr z, jr_03b_4b0d

    ld sp, hl
    nop
    ldh [rP1], a

jr_03b_4b09:
    rst $10
    ld a, [hl+]

jr_03b_4b0b:
    jr jr_03b_4ae3

jr_03b_4b0d:
    ld h, b
    jr jr_03b_4b09

    nop
    ldh [rTIMA], a
    or $02
    dec hl
    jr jr_03b_4b3e

    jr jr_03b_4afa

    inc b
    ld h, b

jr_03b_4b1c:
    ld [de], a
    dec hl

jr_03b_4b1e:
    ld b, $2b
    ld b, $2d
    ld b, $2f
    ld b, $30
    ld b, $e0
    dec b
    ld [hl-], a
    jr nc, @-$1e

    inc b
    ld h, b
    db $10
    ld [hl-], a
    ld [$0832], sp
    inc sp
    ld [$0835], sp
    ldh [rTIMA], a
    scf
    jr nc, jr_03b_4b1c

    inc b
    ld h, b

jr_03b_4b3e:
    db $10
    scf
    ld [$0837], sp
    dec [hl]
    ld [$0833], sp
    ld sp, hl
    nop
    ldh [rP1], a
    dec [hl]

jr_03b_4b4c:
    ld [$0860], sp
    inc sp
    ld [$00f9], sp
    ldh [rDIV], a
    ld [hl-], a
    jr @-$1e

    inc bc
    ld h, b
    jr jr_03b_4b8e

    ld [$0833], sp
    ld [hl-], a
    ld [$0c30], sp
    jr nc, @+$08

    ld [hl-], a
    ld b, $e0
    dec b
    inc sp
    jr jr_03b_4b4c

    inc b
    ld h, b
    jr jr_03b_4ba2

    inc c
    jr nc, @+$0e

    sub $2e
    ld [$082d], sp
    ld l, $08
    jr nc, jr_03b_4b84

    ld l, $08
    jr nc, jr_03b_4b88

    ld sp, hl
    nop
    ldh [rP1], a

jr_03b_4b84:
    ld [hl-], a
    ld [$0860], sp

jr_03b_4b88:
    ld [hl-], a
    ld [$0832], sp
    jr nc, jr_03b_4b96

jr_03b_4b8e:
    ld l, $08
    ld sp, hl
    pop hl
    ldh [rP1], a
    sub $32

jr_03b_4b96:
    jr nc, jr_03b_4bd6

    jr nc, @-$29

    scf
    inc a
    ld h, b
    inc c
    ld sp, hl
    nop
    ldh [rP1], a

jr_03b_4ba2:
    sub $f6
    ld bc, $0432
    ld h, b
    inc b
    inc sp
    inc b
    ld h, b
    inc b
    dec [hl]
    inc b
    ld h, b
    inc b
    ld sp, hl
    pop hl
    ldh [rP1], a
    scf
    ld [de], a
    ld h, b
    ld b, $32
    jr jr_03b_4c1c

    ld [de], a
    ld sp, hl
    nop
    ldh [rP1], a
    scf
    inc bc
    ld h, b
    inc bc
    scf
    inc bc
    ld h, b
    inc bc
    add hl, sp
    inc bc
    ld h, b
    inc bc
    ld a, [hl-]
    inc bc
    ld h, b
    inc bc
    inc a
    inc bc
    ld h, b
    inc bc
    add hl, sp

jr_03b_4bd6:
    dec b
    ld h, b
    dec bc
    dec [hl]
    dec b
    ld h, b
    inc bc
    ld sp, hl
    pop af
    jr nc, jr_03b_4bf9

    ld h, b
    inc c
    ld sp, hl
    nop
    ldh [rP1], a
    jr nc, jr_03b_4bec

    ld h, b
    inc bc
    ld [hl-], a

jr_03b_4bec:
    inc bc
    ld h, b
    inc bc
    dec [hl]
    inc bc
    ld h, b
    inc bc
    inc sp
    inc bc
    ld h, b
    inc bc
    ld [hl-], a
    inc bc

jr_03b_4bf9:
    ld h, b
    inc bc
    jr nc, jr_03b_4c00

    ld h, b
    inc bc
    ld [hl-], a

jr_03b_4c00:
    dec b
    ld h, b
    dec bc
    dec hl
    inc b
    ld h, b
    inc b
    ld sp, hl
    pop hl
    ldh [rP1], a
    dec hl
    jr jr_03b_4c6e

    inc c
    ld sp, hl
    nop
    ldh [rP1], a
    dec hl
    inc bc
    ld h, b
    inc bc
    ld a, [hl+]
    inc bc
    ld h, b
    inc bc
    dec hl

jr_03b_4c1c:
    inc bc
    ld h, b
    inc bc
    dec l
    inc bc
    ld h, b
    inc bc
    ld l, $03
    ld h, b
    inc bc
    jr nc, jr_03b_4c2c

    ld h, b
    inc bc
    ld sp, hl

jr_03b_4c2c:
    pop hl
    ldh [rP1], a
    ld [hl-], a
    inc h
    ld h, b
    inc h
    ld sp, hl
    nop
    ldh [rP1], a
    ld [hl-], a
    inc b
    ld h, b
    inc b
    jr nc, jr_03b_4c41

    ld h, b
    inc b
    ld [hl-], a
    inc b

jr_03b_4c41:
    ld h, b
    inc b
    ld a, [hl-]
    dec b
    ld h, b
    dec bc
    add hl, sp
    dec b
    ld h, b
    inc bc
    scf
    jr jr_03b_4cae

    ld [$0432], sp
    ld h, b
    inc b
    ld [hl-], a
    inc b
    ld h, b
    inc b
    ld [hl-], a
    inc b
    ld h, b
    inc b
    ld l, $04
    ld h, b
    inc b
    scf
    inc b
    ld h, b
    inc b
    jr c, jr_03b_4c6a

    ld h, b
    dec bc
    ld a, [hl-]
    dec b
    ld h, b

jr_03b_4c6a:
    inc bc
    inc a
    jr @+$62

jr_03b_4c6e:
    ld [$043c], sp
    ld h, b
    inc b
    ld a, $04
    ld h, b
    inc b
    ccf
    inc b
    ld h, b
    inc b
    ld b, c
    inc b
    ld h, b
    inc b
    ccf
    inc b
    ld h, b
    inc b
    ld sp, hl
    pop hl
    ldh [rP1], a
    ld a, $3c
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld a, $0c
    jp nc, $0c3e

    ld h, b
    jr @-$05

    nop
    ldh [rSB], a
    or $02
    sub $32
    inc b
    ld [hl-], a
    inc b
    ld [hl-], a
    inc b
    ld sp, hl
    nop

jr_03b_4ca4:
    ldh [rSC], a
    inc [hl]
    ld [$0834], sp
    inc [hl]
    ld [$04e0], sp

jr_03b_4cae:
    ld [hl], $18
    ld h, b
    jr @-$05

    nop
    ldh [rSC], a
    cp $67
    ld c, d
    rst $38

jr_03b_4cba:
    ld sp, hl
    nop
    or $02
    sub $e0
    inc b
    inc hl
    jr jr_03b_4ca4

    ld [bc], a
    inc hl

jr_03b_4cc6:
    ld [$0823], sp
    inc hl
    ld [$04e0], sp
    ld hl, $2118
    ld [$0823], sp
    inc h
    ld [$04e0], sp
    daa
    jr jr_03b_4cba

    ld [bc], a
    daa
    ld [$0827], sp
    daa
    ld [$04e0], sp
    add hl, hl
    jr jr_03b_4cc6

    ld [bc], a
    add hl, hl
    ld [$0829], sp
    add hl, hl
    ld [$e1f9], sp
    ldh [rP1], a
    dec hl
    ld a, [hl+]
    ld sp, hl
    ld bc, $00e0
    call nc, $0c2b
    jp nc, $0c2b

    ld h, b
    ld b, $f9
    nop
    ldh [rSC], a
    sub $29
    ld [$0829], sp
    add hl, hl
    ld [$e1f9], sp
    ldh [rP1], a
    dec hl
    ld a, [hl+]
    ld sp, hl
    ld bc, $00e0
    jp nc, $0c2b

    pop de
    dec hl
    inc c
    ld h, b
    ld e, $f9
    nop
    ldh [$03], a
    sub $23
    jr jr_03b_4d48

    ld [$0823], sp
    ld hl, $2308
    ld [de], a
    inc hl
    ld b, $23
    ld b, $24
    ld b, $26
    ld b, $28
    ld b, $29
    ld [de], a
    dec hl
    ld b, $2b
    ld b, $2d
    ld b, $2f
    ld b, $30
    ld b, $32
    jr jr_03b_4d6d

    ld [$082b], sp
    dec l

jr_03b_4d48:
    ld [$102e], sp
    daa
    ld [$0627], sp
    add hl, hl
    ld b, $2b
    ld b, $2d
    ld b, $2e
    ld b, $60
    ld a, [bc]
    ld l, $08
    ld l, $08
    dec l
    ld [$082b], sp
    ld l, $06
    ld h, b
    ld a, [bc]
    add hl, hl
    ld [$0829], sp
    add hl, hl

jr_03b_4d6a:
    ld [$0827], sp

jr_03b_4d6d:
    add hl, hl
    ld [$0860], sp
    add hl, hl
    ld [$0829], sp
    daa
    ld [$0829], sp
    daa
    inc c
    daa
    ld b, $26
    ld b, $27

jr_03b_4d80:
    inc c
    daa
    ld b, $29
    ld b, $e0
    dec b
    dec hl
    jr jr_03b_4d6a

    inc bc
    add hl, hl
    inc c
    daa
    inc c
    ld h, $0c
    ld h, $06
    inc h
    ld b, $26
    inc c
    ld h, $06
    daa
    ld b, $e0
    dec b
    add hl, hl
    jr jr_03b_4d80

    inc bc
    daa
    inc c
    ld h, $0c
    dec h
    jr @+$27

    inc c
    dec h
    ld b, $26
    ld b, $28
    inc c
    jr z, @+$08

    add hl, hl
    ld b, $2b
    ld b, $2d
    ld b, $2f
    ld b, $30
    ld b, $f9
    nop

jr_03b_4dbd:
    ldh [rTIMA], a
    or $01
    dec l
    jr jr_03b_4dbd

    nop
    ldh [$03], a
    inc h
    ld [$0824], sp
    inc h
    ld [$26d7], sp
    jr @-$28

    ld h, b
    jr @-$08

    ld [bc], a
    inc hl
    jr jr_03b_4dfc

    ld [$0823], sp
    ld hl, $2308
    ld [de], a
    inc hl
    ld b, $23
    ld b, $24
    ld b, $26
    ld b, $28
    ld b, $29
    ld [de], a
    dec hl
    ld b, $2b
    ld b, $2d
    ld b, $2f
    ld b, $30
    ld b, $32
    jr jr_03b_4e21

    ld [$082b], sp
    dec l

jr_03b_4dfc:
    ld [$102e], sp
    daa
    ld [$0627], sp
    add hl, hl
    ld b, $2b
    ld b, $2d
    ld b, $2e
    ld b, $60
    ld a, [bc]
    ld l, $08
    ld l, $08
    dec l
    ld [$082b], sp
    ld l, $06
    ld h, b
    ld a, [bc]
    add hl, hl
    ld [$0829], sp
    add hl, hl

jr_03b_4e1e:
    ld [$0827], sp

jr_03b_4e21:
    add hl, hl
    ld [$0860], sp
    add hl, hl
    ld [$0829], sp
    daa
    ld [$0829], sp
    daa
    inc c
    daa
    ld b, $26
    ld b, $27
    inc c
    daa
    ld b, $29
    ld b, $e0
    dec b
    dec hl
    jr jr_03b_4e1e

    inc bc
    add hl, hl
    inc c
    daa
    inc c
    ld sp, hl
    ldh [$e2], a
    nop
    call nc, $181f
    ld e, $18
    dec e
    jr nc, @-$29

    inc e
    jr @-$29

    jr jr_03b_4e6c

    ld a, [de]
    ld [de], a
    ld h, b
    ld b, $f9
    nop
    ldh [rP1], a
    sub $1a
    inc b
    pop de
    ld a, [de]
    inc b
    sub $26
    inc b
    pop de
    ld h, $04
    sub $24
    inc b
    pop de

jr_03b_4e6c:
    inc h
    inc b
    sub $22
    inc b
    pop de
    ld [hl+], a
    inc b
    sub $21
    inc b
    pop de
    ld hl, $d604
    rra
    inc b
    pop de
    rra
    inc b
    sub $21
    inc b
    pop de
    ld hl, $6004

jr_03b_4e87:
    db $10
    sub $1f
    inc b
    pop de
    rra
    inc b
    ld h, b
    jr z, jr_03b_4e87

    ld bc, $2ed6
    db $10
    ld h, b
    ld [$182b], sp
    ld h, b
    ld [de], a
    ld l, $03
    ld h, b
    inc bc
    ld l, $03
    ld h, b
    inc bc
    jr nc, jr_03b_4ea8

    ld h, b
    inc bc
    ld [hl-], a

jr_03b_4ea8:
    inc bc
    ld h, b
    inc bc
    inc sp
    inc bc
    ld h, b
    inc bc
    jr nc, jr_03b_4eb6

    ld h, b
    dec bc
    ld l, $05
    ld h, b

jr_03b_4eb6:
    inc bc
    dec l
    jr jr_03b_4f1a

    jr jr_03b_4ee5

    inc d
    ld h, b
    inc b
    dec hl
    dec b
    ld h, b
    dec bc
    ld h, $05

jr_03b_4ec5:
    ld h, b
    inc bc
    ld h, $14
    ld h, b
    inc b
    inc h
    inc d
    ld h, b
    inc b
    jr z, jr_03b_4ee5

    ld h, b
    inc b
    dec hl
    inc bc
    ld h, b
    add hl, bc
    dec hl
    inc bc
    ld h, b
    inc bc
    ld a, [hl+]
    inc bc
    ld h, b
    inc bc
    dec hl

jr_03b_4ee0:
    inc bc
    ld h, b
    inc bc
    dec l
    inc bc

jr_03b_4ee5:
    ld h, b
    inc bc
    ld l, $03
    ld h, b
    inc bc
    jr nc, jr_03b_4ef0

    ld h, b
    inc bc
    ld [hl-], a

jr_03b_4ef0:
    jr jr_03b_4ec5

    ld [hl-], a
    inc c
    ld h, b
    inc c
    sub $32
    dec b
    ld h, b
    dec bc
    jr nc, jr_03b_4f02

    ld h, b
    inc bc
    ld l, $18
    db $d3

jr_03b_4f02:
    ld l, $0c
    pop de
    ld l, $0c
    ld h, b
    jr jr_03b_4ee0

    jr nc, jr_03b_4f11

    ld h, b
    dec bc
    inc sp
    dec b
    ld h, b

jr_03b_4f11:
    inc bc
    jr c, jr_03b_4f2c

    db $d3
    jr c, @+$0e

    pop de
    jr c, jr_03b_4f26

jr_03b_4f1a:
    ld h, b
    jr nc, @-$05

    nop
    ldh [rSC], a
    or $02
    sub $2b
    inc b
    ld h, b

jr_03b_4f26:
    inc b
    dec hl
    inc b
    ld h, b
    inc b
    dec hl

jr_03b_4f2c:
    inc b
    ld h, b
    inc b
    ldh [rDIV], a
    dec hl
    inc c
    ldh [rSC], a
    ld h, b
    inc a
    jr nc, jr_03b_4f3d

    ld h, b
    inc b
    jr nc, jr_03b_4f41

jr_03b_4f3d:
    ld h, b
    inc b
    jr nc, jr_03b_4f45

jr_03b_4f41:
    ld h, b
    inc b
    ldh [rDIV], a

jr_03b_4f45:
    ld [hl-], a
    inc c
    ldh [rSC], a
    ld h, b
    inc h
    cp $1c
    ld c, l
    rst $38
    or $0e
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld de, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    dec e
    inc b
    or $0f
    dec e
    inc bc
    ld h, b
    ld de, $0ef6
    dec e
    inc b
    or $0f
    dec e
    inc bc
    ld h, b
    ld bc, $0ef6
    dec e
    inc b
    or $0f
    dec e
    inc bc
    ld h, b
    ld bc, $0ef6
    dec e
    inc b
    or $0f
    dec e
    inc bc
    ld h, b
    ld bc, $0ef6
    dec de
    inc b
    or $0f
    dec de
    inc bc
    ld h, b
    ld de, $0ef6
    dec de
    inc b
    or $0f
    dec de
    inc bc
    ld h, b
    ld bc, $0ef6
    dec de
    inc b
    or $0f
    dec de
    inc bc
    ld h, b
    ld bc, $0ef6
    dec de
    inc b
    or $0f
    dec de
    inc bc
    ld h, b
    ld bc, $0ef6
    dec e
    inc b
    or $0f
    dec e
    inc bc
    ld h, b
    ld bc, $0ef6
    dec e
    inc b
    or $0f
    dec e
    inc bc
    ld h, b
    ld bc, $0ef6
    dec e
    inc b
    or $0f
    dec e
    inc bc
    ld h, b
    ld bc, $0ef6
    dec e
    inc b
    or $0f
    dec e
    inc bc
    ld h, b
    ld bc, $0ef6
    dec de
    inc b
    or $0f
    dec de
    inc bc
    ld h, b
    ld bc, $0ef6
    dec e
    inc b
    or $0f
    dec e
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld de, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld de, $0ef6
    ld a, [de]
    inc b
    or $0f
    ld a, [de]
    inc bc
    ld h, b
    ld bc, $0ef6
    ld a, [de]
    inc b
    or $0f
    ld a, [de]
    inc bc
    ld h, b
    ld bc, $0ef6
    ld a, [de]
    inc b
    or $0f
    ld a, [de]
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld de, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld de, $0ef6
    ld a, [de]
    inc b
    or $0f
    ld a, [de]
    inc bc
    ld h, b
    ld bc, $0ef6
    ld a, [de]
    inc b
    or $0f
    ld a, [de]
    inc bc
    ld h, b
    ld bc, $0ef6
    ld a, [de]
    inc b
    or $0f
    ld a, [de]
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld de, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld de, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld de, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld de, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld bc, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld bc, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld de, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld de, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld de, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    ld c, $04
    or $0f
    ld c, $03
    ld h, b
    ld bc, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld de, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld de, $0ef6
    ld d, $04
    or $0f
    ld d, $03
    ld h, b
    ld de, $0ef6
    ld d, $04
    or $0f
    ld d, $03
    ld h, b
    ld bc, $0ef6
    ld d, $04
    or $0f
    ld d, $03
    ld h, b
    ld bc, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld bc, $0ef6
    ld d, $04
    or $0f
    ld d, $03
    ld h, b
    ld de, $0ef6
    ld d, $04
    or $0f
    ld d, $03
    ld h, b
    ld de, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld de, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld bc, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld de, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld bc, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld bc, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld de, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld de, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    dec d
    inc b
    or $0f
    dec d
    inc bc
    ld h, b
    ld de, $0ef6
    dec d
    inc b
    or $0f
    dec d
    inc bc
    ld h, b
    ld bc, $0ef6
    dec d
    inc b
    or $0f
    dec d
    inc bc
    ld h, b
    ld bc, $0ef6
    dec d
    inc b
    or $0f
    dec d
    inc bc
    ld h, b
    ld bc, $0ef6
    dec d
    inc b
    or $0f
    dec d
    inc bc
    ld h, b
    ld de, $0ef6
    dec d
    inc b
    or $0f
    dec d
    inc bc
    ld h, b
    ld bc, $0ef6
    dec d
    inc b
    or $0f
    dec d
    inc bc
    ld h, b
    ld bc, $0ef6
    dec d
    inc b
    or $0f
    dec d
    inc bc
    ld h, b
    ld bc, $0ef6
    ld a, [de]
    inc b
    or $0f
    ld a, [de]
    inc bc
    ld h, b
    ld de, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    ld hl, $f618
    ld c, $1c
    inc b
    or $0f
    inc e
    inc b
    ld h, b
    inc b
    or $0e
    ld e, $04
    or $0f
    ld e, $04
    ld h, b
    inc b
    or $0e
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld de, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld de, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld de, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld de, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld bc, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld bc, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld de, $0ef6
    ld de, $f604
    rrca
    ld de, $6003
    ld de, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld de, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    ld c, $04
    or $0f
    ld c, $03
    ld h, b
    ld bc, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld de, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld de, $0ef6
    ld d, $04
    or $0f
    ld d, $03
    ld h, b
    ld de, $0ef6
    ld d, $04
    or $0f
    ld d, $03
    ld h, b
    ld bc, $0ef6
    ld d, $04
    or $0f
    ld d, $03
    ld h, b
    ld bc, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld bc, $0ef6
    ld d, $04
    or $0f
    ld d, $03
    ld h, b
    ld de, $0ef6
    ld d, $04
    or $0f
    ld d, $03
    ld h, b
    ld de, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld de, $0ef6
    jr nz, jr_03b_53c5

    or $0f
    jr nz, @+$05

jr_03b_53c5:
    ld h, b
    ld bc, $0ef6
    jr nz, jr_03b_53cf

    or $0f
    jr nz, @+$05

jr_03b_53cf:
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    jr nz, jr_03b_53e3

    or $0f
    jr nz, @+$05

jr_03b_53e3:
    ld h, b
    ld de, $0ef6
    jr nz, jr_03b_53ed

    or $0f
    jr nz, @+$05

jr_03b_53ed:
    ld h, b
    ld bc, $0ef6
    jr nz, jr_03b_53f7

    or $0f
    jr nz, @+$05

jr_03b_53f7:
    ld h, b
    ld bc, $0ef6
    jr nz, jr_03b_5401

    or $0f
    jr nz, @+$05

jr_03b_5401:
    ld h, b
    ld bc, $14f6
    ret c

    ld h, $08
    dec h
    ld [$0826], sp
    ld a, [hl+]
    ld [$082b], sp
    dec l
    ld [$082e], sp
    ld h, b
    ld [$082e], sp
    ld l, $08
    dec l
    ld [$082b], sp
    or $15
    ld [hl-], a
    inc c
    ld h, b
    inc b
    ld l, $0c
    ld h, b
    inc b
    dec hl
    db $10
    ld a, [hl+]
    db $10
    or $14
    ld h, b
    ld [$082a], sp
    jr z, @+$0a

    reti


    ld a, [hl+]
    ld [$082b], sp
    dec l
    ld [$082e], sp
    jr nc, @+$0a

    ld l, $08
    dec l
    ld [$182e], sp
    ld h, b
    jr @-$08

    ld c, $0f
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld de, $0ef6
    dec de
    inc b
    or $0f
    dec de
    inc bc
    ld h, b
    ld bc, $0ef6
    rra
    inc b
    or $0f
    rra
    inc bc
    ld h, b
    ld bc, $0ef6
    ld [hl+], a
    inc b
    or $0f
    ld [hl+], a
    inc bc
    ld h, b
    ld bc, $0ef6
    daa
    inc b
    or $0f
    daa
    inc bc
    ld h, b
    ld de, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    ld c, $04
    or $0f
    ld c, $03
    ld h, b
    ld de, $0ef6
    ld a, [de]
    inc b
    or $0f
    ld a, [de]
    inc bc
    ld h, b
    ld bc, $0ef6
    dec e
    inc b
    or $0f
    dec e
    inc bc
    ld h, b
    ld bc, $0ef6
    ld hl, $f604
    rrca
    ld hl, $6003
    ld bc, $0ef6
    ld h, $04
    or $0f
    ld h, $03
    ld h, b
    ld de, $0ef6
    ld a, [de]
    inc b
    or $0f
    ld a, [de]
    inc bc
    ld h, b
    ld bc, $0ef6
    ld a, [de]
    inc b
    or $0f
    ld a, [de]
    inc bc
    ld h, b
    ld bc, $0ef6
    ld a, [de]
    inc b
    or $0f
    ld a, [de]
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld de, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld de, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld de, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    add hl, bc
    or $0e
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    add hl, bc
    or $0e
    ld de, $f604
    rrca
    ld de, $6003
    add hl, bc
    or $0e
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld de, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    inc de
    inc b
    or $0f
    inc de
    inc bc
    ld h, b
    ld bc, $0ef6
    ld d, $04
    or $0f
    ld d, $03
    ld h, b
    ld bc, $0ef6
    dec de
    inc b
    or $0f
    dec de
    inc bc
    ld h, b
    ld de, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    rrca
    inc b
    or $0f
    rrca
    inc bc
    ld h, b
    ld bc, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld de, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld bc, $0ef6
    jr jr_03b_55e9

    or $0f
    jr @+$05

jr_03b_55e9:
    ld h, b
    ld bc, $0ef6
    dec de
    inc b
    or $0f
    dec de
    inc bc
    ld h, b
    ld bc, $0ef6
    jr nz, jr_03b_55fd

    or $0f
    jr nz, @+$05

jr_03b_55fd:
    ld h, b
    ld de, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld bc, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld bc, $0ef6
    inc d
    inc b
    or $0f
    inc d
    inc bc
    ld h, b
    ld bc, $0ef6
    ld c, $04
    or $0f
    ld c, $03
    ld h, b
    ld de, $0ef6
    inc h
    inc b
    or $0f
    inc h
    inc bc
    ld h, b
    ld bc, $0ef6
    inc h
    inc b
    or $0f
    inc h
    inc bc
    ld h, b
    ld bc, $0ef6
    inc h
    inc b
    or $0f
    inc h
    inc bc
    ld h, b
    ld bc, $0ef6
    inc h
    inc b
    or $0f
    inc h
    inc bc
    ld h, b
    ld de, $0ef6
    ld c, $04
    or $0f
    ld c, $03
    ld h, b
    ld bc, $0ef6
    ld c, $04
    or $0f
    ld c, $03
    ld h, b
    ld bc, $0ef6
    ld c, $04
    or $0f
    ld c, $03
    ld h, b
    ld bc, $0ef6
    ld c, $04
    or $0f
    ld c, $03
    ld h, b
    ld de, $0ef6
    dec hl
    inc b
    or $0f
    dec hl
    inc bc
    ld h, b
    ld bc, $0ef6
    dec hl
    inc b
    or $0f
    dec hl
    inc bc
    ld h, b
    ld bc, $0ef6
    dec hl
    inc b
    or $0f
    dec hl
    inc bc
    ld h, b
    ld bc, $0ef6
    dec l
    inc b
    or $0f
    dec l
    inc bc
    ld h, b
    ld bc, $0ef6
    dec de
    inc b
    or $0f
    dec de
    inc bc
    ld h, b
    ld bc, $0ef6
    ld a, [de]
    inc b
    or $0f
    ld a, [de]
    inc bc
    ld h, b
    ld bc, $0ef6
    jr jr_03b_56bb

    or $0f
    jr @+$05

jr_03b_56bb:
    ld h, b
    ld bc, $0ef6
    ld d, $04
    or $0f
    ld d, $03
    ld h, b
    ld bc, $0ef6
    dec d
    inc b
    or $0f
    dec d
    inc bc
    ld h, b
    ld bc, $a3fe
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld [hl-], a
    ldh [rP1], a
    or $01
    rst $10
    dec hl
    dec d
    ld sp, hl
    nop
    ldh [rP1], a
    jr nc, jr_03b_56ee

    inc [hl]
    rlca
    ld h, b
    inc bc
    db $d3
    inc [hl]
    inc b

jr_03b_56ee:
    rst $10
    scf
    rlca
    ld h, b
    inc bc
    db $d3
    scf
    inc b
    ld sp, hl
    ld [hl-], a
    ldh [rP1], a
    rst $10
    ld [hl], $1c
    ld sp, hl
    nop
    ldh [rP1], a
    scf
    rlca
    ld h, b
    inc bc
    db $d3
    scf
    rlca
    ld h, b
    inc b
    pop de
    scf
    rlca
    ld sp, hl
    ld [hl-], a
    ldh [rP1], a
    rst $10
    ld a, [hl-]
    dec d
    ld sp, hl
    nop
    ldh [rP1], a
    add hl, sp
    rlca
    jr c, jr_03b_5723

    ld h, b
    inc bc
    db $d3
    jr c, jr_03b_5725

    rst $10
    scf

jr_03b_5723:
    rlca
    ld h, b

jr_03b_5725:
    inc bc
    db $d3
    scf
    inc b
    ld sp, hl
    ld [hl-], a
    ldh [rP1], a
    rst $10
    ld [hl], $1c
    ld sp, hl
    nop
    ldh [rP1], a
    scf
    rlca
    ld h, b
    inc bc
    db $d3
    scf
    rlca
    ld h, b
    inc b
    pop de
    scf
    rlca
    ld h, b
    ld c, $f9
    nop
    ldh [rSC], a
    rst $10
    add hl, sp
    rlca
    jr c, jr_03b_5752

    scf
    ld c, $36
    ld c, $35
    ld c, $34

jr_03b_5752:
    ld c, $33
    ld c, $32
    ld c, $31
    ld c, $30
    ld c, $2f
    ld c, $2d
    ld c, $2b
    inc e
    ld h, b
    inc e
    ld sp, hl
    nop
    ldh [rP1], a
    sub $1e
    rlca
    ret c

    rra
    rlca
    rst $10
    ld e, $07
    ret c

    rra
    rlca
    rst $10
    ld [hl+], a
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl+], a
    inc b
    rst $10
    ld [hl+], a
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl+], a
    inc b
    ret c

    rra
    inc hl
    call nc, $151f
    ret c

    ld e, $07
    rst $10
    rra
    rlca
    push de
    ld e, $07
    rst $10
    rra
    rlca
    rst $10
    ld h, $07
    ld h, b
    inc bc
    db $d3
    ld h, $04
    reti


    ld h, $07
    ld h, b
    inc bc
    call nc, $0426
    ret c

    rra
    inc e
    ld h, b
    ld a, [hl+]
    ld sp, hl
    nop
    ldh [$03], a
    rst $10
    dec [hl]
    rlca
    inc [hl]
    rlca
    inc sp
    ld c, $32
    ld c, $31
    ld c, $30
    ld c, $2f
    ld c, $2e
    ld c, $2d
    inc e
    inc l
    inc e
    dec hl
    inc e
    ld h, b
    inc e
    ld sp, hl
    add c
    ldh [rP1], a
    inc [hl]
    dec d
    jr nc, jr_03b_57d6

    dec hl
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b

jr_03b_57d6:
    rst $10
    dec hl
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    rst $10
    dec [hl]
    dec d
    ld sp, $2c07
    rlca
    ld h, b
    inc bc
    db $d3
    inc l
    inc b
    rst $10
    inc l
    rlca
    ld h, b
    inc bc
    db $d3
    inc l
    inc b
    rst $10
    inc [hl]
    dec d
    jr nc, jr_03b_57fe

    dec hl
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b

jr_03b_57fe:
    rst $10
    dec hl
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    rst $10
    ld [hl-], a
    dec d
    ld l, $07
    add hl, hl
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, hl
    inc b
    rst $10
    add hl, hl
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, hl
    inc b
    ld sp, hl
    nop
    ldh [rSC], a
    rst $10
    dec hl
    rlca
    ld h, b
    rlca
    scf
    rlca
    ld [hl], $07
    dec [hl]
    ld c, $34
    ld c, $33
    ld c, $32
    ld c, $31
    ld c, $30
    ld c, $2f
    inc e
    ld l, $1c
    dec l
    inc e
    dec hl
    dec de
    ld h, b

jr_03b_583c:
    ld bc, $32f9
    ldh [rP1], a
    cp $de
    ld d, [hl]
    rst $38
    ld sp, hl
    nop
    ldh [rSC], a
    or $01
    ret nc

    jr nz, jr_03b_583c

    jp c, $0736

    dec [hl]
    rlca
    inc [hl]
    ld c, $33
    ld c, $32
    ld c, $31
    ld c, $30
    ld c, $2f
    ld c, $2e
    ld c, $2d
    ld c, $2b
    rlca
    ld a, [hl+]
    rlca
    add hl, hl
    rlca
    jr z, @+$09

    ld h, $07
    inc h
    rlca
    inc hl
    rlca
    ld hl, $db07
    rra
    ld c, $60
    db $fc
    rst $10
    dec l
    rlca
    inc l
    rlca
    dec hl
    ld c, $2a
    ld c, $29
    ld c, $28
    ld c, $27
    ld c, $26
    ld c, $25
    inc e
    inc h
    inc e
    inc hl
    inc e
    ld h, b
    inc e
    ld sp, hl
    add c
    ldh [rP1], a
    dec hl
    inc e
    jr z, @+$10

    inc h
    ld c, $2c
    inc e
    add hl, hl
    ld c, $25
    ld c, $2b
    inc e
    jr z, @+$10

    inc h
    ld c, $29
    inc e
    ld h, $0e
    ld [hl+], a
    ld c, $f9
    nop
    ldh [rSC], a
    inc hl
    ld c, $32
    rlca
    ld sp, $3007
    ld c, $2f
    ld c, $2e
    ld c, $2d
    ld c, $2c
    ld c, $2b
    ld c, $2a
    inc e
    add hl, hl
    inc e
    jr z, jr_03b_58e5

    daa
    inc e
    cp $4b
    ld e, b
    rst $38
    or $0e
    db $db
    jr jr_03b_58f0

    rra
    rlca
    ld h, b
    rlca
    rra
    rlca
    ld h, b
    rlca
    dec de
    inc e
    inc e
    rlca
    ld h, b
    dec d
    jr jr_03b_5900

    rra

jr_03b_58e5:
    rlca
    ld h, b
    rlca
    rra
    rlca
    ld h, b
    rlca
    jr nz, jr_03b_590a

    rra
    rlca

jr_03b_58f0:
    ld h, b
    dec d
    jr jr_03b_5902

    ld h, b
    xor $dc
    inc de
    rlca
    ld h, b
    rlca
    inc de
    rlca
    ld h, b
    rlca
    db $dd

jr_03b_5900:
    inc de
    inc e

jr_03b_5902:
    add hl, de
    inc bc
    ld a, [de]
    rlca
    ld h, b
    ld l, $13
    rlca

jr_03b_590a:
    ld h, b
    rlca
    db $db
    inc de
    rlca
    ld h, b
    rlca
    db $db
    inc de
    inc e
    call c, $031e
    rra
    rlca
    ld h, b
    rst $08
    db $db
    inc de
    rlca
    db $db
    ld [de], a
    rlca
    inc de
    rlca
    ld [de], a
    rlca
    inc de
    rlca
    jr jr_03b_5945

    ld e, $07
    rra
    rlca
    ld e, $07
    rra
    rlca
    add hl, de
    inc e
    rra
    rlca
    jr nz, @+$09

    rra
    rlca
    jr nz, @+$09

    jr jr_03b_5959

    ld e, $07
    rra
    rlca
    ld e, $07
    rra
    rlca

jr_03b_5945:
    ld d, $1c
    inc e
    rlca
    dec e
    rlca
    inc e
    rlca
    dec e
    rlca
    inc de
    rlca
    ld h, b
    rlca
    cpl
    rlca
    ld l, $07
    dec l
    rlca

jr_03b_5959:
    ld h, b
    rlca
    inc l
    rlca
    ld h, b
    rlca
    dec hl
    rlca
    ld h, b
    rlca
    ld a, [hl+]
    rlca
    ld h, b
    rlca
    add hl, hl
    rlca
    ld h, b
    rlca
    jr z, @+$09

    ld h, b
    rlca
    daa
    rlca
    ld h, b
    dec d
    ld h, $07
    ld h, b
    dec d
    dec h
    rlca
    ld h, b
    ld de, $0412
    inc de
    rlca
    ld h, b
    dec d
    cp $d1
    ld e, b
    rst $38
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    sub $2b
    inc e
    jr nc, jr_03b_5997

    ld h, b
    inc bc
    db $d3
    jr nc, jr_03b_5999

    sub $2b

jr_03b_5997:
    rlca
    ld h, b

jr_03b_5999:
    inc bc
    db $d3
    dec hl
    inc b
    sub $2a
    inc e
    cpl
    rlca
    ld h, b
    inc bc
    db $d3
    cpl
    rlca
    ld h, b
    inc b
    pop de
    cpl
    rlca
    sub $2b
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b
    sub $2b
    ld c, $30
    ld c, $2b
    ld c, $2a
    ld c, $31
    inc b
    ld h, b
    ld b, $d3
    ld sp, $d604
    ld l, $04
    ld h, b
    ld b, $d3
    ld l, $04
    sub $2a
    inc b
    ld h, b
    ld b, $d3
    ld a, [hl+]
    inc b
    sub $34
    inc b
    dec [hl]
    dec b
    ld [hl], $05
    scf
    inc b
    ld h, b
    inc bc
    call nc, $0237
    ld h, b
    ld [bc], a
    db $d3
    scf
    inc bc
    ld h, b
    inc e
    sub $47
    inc b
    ld b, l
    dec b
    ld b, e
    dec b
    ccf
    inc b
    ld h, b
    inc bc
    call nc, $023f
    ld h, b
    ld [bc], a
    jp nc, $033f

    ld h, b
    inc e
    sub $2b
    inc e
    jr nc, jr_03b_5a0a

    ld h, b
    inc bc
    db $d3
    jr nc, jr_03b_5a0c

    sub $2b

jr_03b_5a0a:
    rlca
    ld h, b

jr_03b_5a0c:
    inc bc
    db $d3
    dec hl
    inc b
    sub $2a
    ld c, $31
    ld c, $2e
    ld c, $d3
    ld l, $0e
    sub $2b
    rlca
    ld h, b
    inc bc
    db $d3
    dec hl
    inc b

jr_03b_5a22:
    sub $2b
    ld c, $30
    ld c, $34
    ld c, $36
    ld c, $33
    ld c, $60
    inc bc
    db $d3
    inc sp
    rlca
    ld h, b

jr_03b_5a33:
    inc b
    sub $39
    ld c, $60
    jr c, jr_03b_5a33

    nop
    ldh [rSC], a
    or $00
    sub $35
    ld c, $d6
    cpl
    ld c, $2f
    ld c, $35
    ld c, $60
    jr c, jr_03b_5a22

    inc [hl]
    ld c, $60
    ld a, [hl+]
    ld sp, hl
    pop hl
    ldh [rP1], a
    or $02
    cp $8b
    ld e, c
    rst $38
    ld sp, hl
    nop
    ldh [$03], a
    or $02
    sub $18
    ld c, $60
    ld c, $1c
    ld c, $60
    ld c, $13
    ld c, $60
    ld c, $1c
    ld c, $60
    ld c, $18
    ld c, $60
    ld c, $1c
    ld c, $60
    ld c, $13
    ld c, $60
    ld c, $1c
    ld c, $60
    ld a, [hl+]
    ld sp, hl
    nop
    ldh [rP1], a
    sub $10
    inc b
    ld de, $1205
    dec b
    inc de
    inc b
    ld h, b
    inc bc
    push de
    inc de
    ld [bc], a
    ld h, b
    ld [bc], a
    db $d3
    inc de
    inc bc
    ld h, b
    inc e
    sub $17
    inc b
    dec d
    dec b
    inc de
    dec b
    rrca
    inc b
    ld h, b
    inc bc
    call nc, $020f
    ld h, b
    dec b
    ld sp, hl
    nop
    ldh [$03], a
    sub $18
    ld c, $60
    ld c, $d6
    inc e
    ld c, $60
    ld c, $13
    ld c, $60
    ld c, $1c
    ld c, $60
    ld c, $18
    ld c, $60
    ld c, $1c
    ld c, $60
    ld c, $13
    ld c, $60
    ld c, $1c
    ld c, $60
    ld b, [hl]
    ld sp, hl
    nop
    ldh [rSC], a
    or $00
    sub $31
    ld c, $2b
    ld c, $2b
    ld c, $31
    ld c, $60
    jr c, jr_03b_5b12

    ld c, $60
    ld a, [hl+]
    ld sp, hl
    nop
    ldh [$03], a
    or $02
    cp $60
    ld e, d
    rst $38
    ld h, b
    rst $38
    ld h, b
    ld e, a
    or $17
    dec hl
    rlca
    ld h, b
    rlca
    scf
    rlca
    ld h, b
    inc hl
    dec hl
    rlca
    ld h, b
    rlca
    scf
    rlca
    ld h, b
    inc hl
    dec hl
    rlca
    ld h, b
    rlca
    scf
    rlca
    ld h, b
    inc hl
    dec hl
    rlca
    ld h, b
    rlca
    scf

jr_03b_5b12:
    rlca
    ld h, b
    dec d
    or $10
    ld [de], a
    inc bc
    inc de
    ld l, l
    ld h, b
    inc e
    inc de
    rlca
    inc d
    rlca
    dec d
    rlca
    rla
    dec b
    rla
    ld [bc], a
    jr @+$09

    ld h, b
    rlca
    inc de
    rlca
    ld h, b
    dec b
    ld d, $02
    inc d
    ld c, $13
    rlca
    ld h, b
    rlca
    cp $ef
    ld e, d
    rst $38
    ld sp, hl
    nop
    ldh [$03], a
    or $02
    sub $15
    add hl, bc
    sub $1c
    add hl, bc
    rra
    add hl, bc
    inc h
    add hl, bc
    inc hl
    add hl, bc
    ld h, $09
    dec hl
    add hl, bc
    jr nc, jr_03b_5b5c

    cpl
    add hl, bc
    dec hl
    add hl, bc
    ld h, $09
    inc h
    add hl, bc
    inc hl

jr_03b_5b5c:
    add hl, bc
    rra
    add hl, bc
    ld a, [de]
    add hl, bc
    jr jr_03b_5b6c

    rla
    add hl, bc
    ld e, $09
    rra
    add hl, bc
    ld h, $09
    inc hl

jr_03b_5b6c:
    add hl, bc
    ld a, [hl+]
    add hl, bc
    dec hl
    add hl, bc
    ld [hl-], a
    add hl, bc
    ld sp, $2b09
    add hl, bc
    ld a, [hl+]
    add hl, bc
    ld h, $09
    dec h
    add hl, bc
    rra
    add hl, bc
    ld e, $09
    add hl, de
    add hl, bc
    jr jr_03b_5b8e

    rra
    add hl, bc
    ld [hl+], a
    add hl, bc
    daa
    add hl, bc
    inc h
    add hl, bc
    dec hl

jr_03b_5b8e:
    add hl, bc
    ld l, $09
    inc sp
    add hl, bc
    ld [hl-], a
    add hl, bc
    ld l, $09
    add hl, hl
    add hl, bc
    daa
    add hl, bc
    ld h, $09
    ld [hl+], a
    add hl, bc
    dec e
    add hl, bc
    dec de
    add hl, bc
    ld a, [de]
    add hl, bc
    rra
    add hl, bc
    ld hl, $2409
    add hl, bc
    ld h, $09
    dec hl
    add hl, bc
    jr nc, jr_03b_5bba

    dec [hl]
    add hl, bc
    inc [hl]
    add hl, bc
    jr nc, jr_03b_5bc0

    dec hl
    add hl, bc
    add hl, hl

jr_03b_5bba:
    add hl, bc
    jr z, jr_03b_5bc6

    inc h
    add hl, bc
    rra

jr_03b_5bc0:
    add hl, bc
    inc e
    add hl, bc
    cp $41
    ld e, e

jr_03b_5bc6:
    rst $38
    ld sp, hl
    nop
    ldh [$03], a
    or $02
    pop de
    dec d
    add hl, bc
    inc e
    inc b
    call nc, $0915
    call nc, $091c
    rra
    add hl, bc
    inc h
    add hl, bc
    inc hl
    add hl, bc
    ld h, $09
    dec hl
    add hl, bc
    jr nc, jr_03b_5bed

    cpl
    add hl, bc
    dec hl
    add hl, bc
    ld h, $09
    inc h
    add hl, bc
    inc hl

jr_03b_5bed:
    add hl, bc
    rra
    add hl, bc
    ld a, [de]
    add hl, bc
    jr jr_03b_5bfd

    rla
    add hl, bc
    ld e, $09
    rra
    add hl, bc
    ld h, $09
    inc hl

jr_03b_5bfd:
    add hl, bc
    ld a, [hl+]
    add hl, bc
    dec hl
    add hl, bc
    ld [hl-], a
    add hl, bc
    ld sp, $2b09
    add hl, bc
    ld a, [hl+]
    add hl, bc
    ld h, $09
    dec h
    add hl, bc
    rra
    add hl, bc
    ld e, $09
    add hl, de
    add hl, bc
    jr jr_03b_5c1f

    rra
    add hl, bc
    ld [hl+], a
    add hl, bc
    daa
    add hl, bc
    inc h
    add hl, bc
    dec hl

jr_03b_5c1f:
    add hl, bc
    ld l, $09
    inc sp
    add hl, bc
    ld [hl-], a
    add hl, bc
    ld l, $09
    add hl, hl
    add hl, bc
    daa
    add hl, bc
    ld h, $09
    ld [hl+], a
    add hl, bc
    dec e
    add hl, bc
    dec de
    add hl, bc
    ld a, [de]
    add hl, bc
    rra
    add hl, bc
    ld hl, $2409
    add hl, bc
    ld h, $09
    dec hl
    add hl, bc
    jr nc, jr_03b_5c4b

    dec [hl]
    add hl, bc
    inc [hl]
    add hl, bc
    jr nc, jr_03b_5c51

    dec hl
    add hl, bc
    add hl, hl

jr_03b_5c4b:
    add hl, bc
    jr z, jr_03b_5c57

    inc h
    add hl, bc
    rra

jr_03b_5c51:
    add hl, bc
    inc e
    add hl, bc
    cp $d2
    ld e, e

jr_03b_5c57:
    rst $38
    or $08
    dec d
    add hl, bc
    inc e
    add hl, bc
    rra
    add hl, bc
    dec d
    add hl, bc
    inc e
    add hl, bc
    rra
    add hl, bc
    inc h
    add hl, bc
    inc hl
    add hl, bc
    ld h, $09
    dec hl
    add hl, bc
    jr nc, jr_03b_5c79

    cpl
    add hl, bc
    dec hl
    add hl, bc
    ld h, $09
    inc h
    add hl, bc
    inc hl

jr_03b_5c79:
    add hl, bc
    rra
    add hl, bc
    ld a, [de]
    add hl, bc
    jr jr_03b_5c89

    rla
    add hl, bc
    ld e, $09
    rra
    add hl, bc
    ld h, $09
    inc hl

jr_03b_5c89:
    add hl, bc
    ld a, [hl+]
    add hl, bc
    dec hl
    add hl, bc
    ld [hl-], a
    add hl, bc
    ld sp, $2b09
    add hl, bc
    ld a, [hl+]
    add hl, bc
    ld h, $09
    dec h
    add hl, bc
    rra
    add hl, bc
    ld e, $09
    add hl, de
    add hl, bc
    jr jr_03b_5cab

    rra
    add hl, bc
    ld [hl+], a
    add hl, bc
    daa
    add hl, bc
    inc h
    add hl, bc
    dec hl

jr_03b_5cab:
    add hl, bc
    ld l, $09
    inc sp
    add hl, bc
    ld [hl-], a
    add hl, bc
    ld l, $09
    add hl, hl
    add hl, bc
    daa
    add hl, bc
    ld h, $09
    ld [hl+], a
    add hl, bc
    dec e
    add hl, bc
    dec de
    add hl, bc
    ld a, [de]
    add hl, bc
    rra
    add hl, bc
    ld hl, $2409
    add hl, bc
    ld h, $09
    dec hl
    add hl, bc
    jr nc, jr_03b_5cd7

    dec [hl]
    add hl, bc
    inc [hl]
    add hl, bc
    jr nc, jr_03b_5cdd

    dec hl
    add hl, bc
    add hl, hl

jr_03b_5cd7:
    add hl, bc
    jr z, jr_03b_5ce3

    inc h
    add hl, bc
    rra

jr_03b_5cdd:
    add hl, bc
    inc e
    add hl, bc
    cp $60
    ld e, h

jr_03b_5ce3:
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    sub $21
    ld [de], a
    ld h, $12
    dec hl
    ld [de], a
    jr z, jr_03b_5d03

    dec l
    ld [de], a
    ld h, $12
    dec hl
    ld [de], a
    ld a, [hl+]
    ld [de], a
    jr z, jr_03b_5d0d

    cpl
    ld [de], a
    dec l
    ld [de], a
    ld h, $12
    dec hl
    ld [de], a

jr_03b_5d03:
    jr z, jr_03b_5d17

    ld a, [hl+]
    ld [de], a
    dec hl
    ld [de], a
    ld sp, hl
    nop
    ldh [rDIV], a

jr_03b_5d0d:
    dec l
    ld [de], a
    cpl
    ld [de], a
    jr nc, jr_03b_5d25

    scf
    add hl, bc
    ld h, b
    ld d, c

jr_03b_5d17:
    dec l
    ld [de], a
    cpl
    ld [de], a
    jr nc, jr_03b_5d2f

    ld [hl], $09
    ld h, b
    ld d, c
    ld sp, hl
    nop
    ldh [rP1], a

jr_03b_5d25:
    cpl
    ld [de], a
    dec hl
    ld [de], a
    jr z, jr_03b_5d3d

    dec l
    ld [de], a
    dec hl
    ld [de], a

jr_03b_5d2f:
    ld h, $12
    jr z, jr_03b_5d45

    dec l
    ld [de], a
    ld a, [hl+]
    ld [de], a
    dec hl
    ld [de], a
    ld [hl-], a
    ld [de], a
    cpl
    ld [de], a

jr_03b_5d3d:
    ld sp, $2d12
    ld [de], a
    dec hl
    ld [de], a
    cpl
    ld [de], a

jr_03b_5d45:
    ld sp, hl
    nop
    ldh [rDIV], a
    ld [hl], $12
    scf
    ld [de], a
    add hl, sp
    ld [de], a
    dec sp
    add hl, bc
    ld h, b
    ld d, c
    inc [hl]
    ld [de], a
    ld [hl], $12
    scf
    ld [de], a
    add hl, sp
    add hl, bc
    ld h, b
    ld d, c
    ld sp, hl
    nop
    ldh [rP1], a
    cp $e8
    ld e, h
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    pop de
    ld hl, $d40b
    ld hl, $2612
    ld [de], a
    dec hl
    ld [de], a
    jr z, @+$14

    call nc, $122d
    ld h, $12
    dec hl
    ld [de], a
    ld a, [hl+]
    ld [de], a
    jr z, jr_03b_5d92

    cpl
    ld [de], a
    dec l
    ld [de], a
    ld h, $12
    call nc, $122b
    jr z, jr_03b_5d9d

    ld a, [hl+]
    ld [de], a
    dec hl
    ld [de], a
    ld h, b
    rra
    ld sp, hl

jr_03b_5d92:
    nop
    ldh [rDIV], a
    call nc, $122f
    jr nc, jr_03b_5dac

    scf
    add hl, bc
    ld h, b

jr_03b_5d9d:
    ld d, c
    dec l
    ld [de], a
    cpl
    ld [de], a
    jr nc, jr_03b_5db6

    ld [hl], $09
    ld h, b
    ld b, h
    ld sp, hl
    nop
    ldh [rP1], a

jr_03b_5dac:
    call nc, $122f
    dec hl
    ld [de], a
    jr z, jr_03b_5dc5

    dec l
    ld [de], a
    dec hl

jr_03b_5db6:
    ld [de], a
    ld h, $12
    jr z, jr_03b_5dcd

    dec l
    ld [de], a
    ld a, [hl+]
    ld [de], a
    dec hl
    ld [de], a
    ld [hl-], a
    ld [de], a
    cpl
    ld [de], a

jr_03b_5dc5:
    ld sp, $2d12
    ld [de], a
    dec hl
    ld [de], a
    cpl
    ld [de], a

jr_03b_5dcd:
    ld h, b
    rra
    ld sp, hl
    nop
    ldh [rDIV], a
    call nc, $1237
    add hl, sp
    ld [de], a
    dec sp
    add hl, bc
    ld h, b
    ld d, c
    inc [hl]
    ld [de], a
    ld [hl], $12
    scf
    ld [de], a
    add hl, sp
    add hl, bc
    ld h, b
    add hl, sp
    ld sp, hl
    nop
    ldh [rP1], a
    cp $69
    ld e, l
    rst $38
    or $0e
    dec d
    inc h
    inc e
    inc h
    ld a, [de]
    ld [hl], $f6
    rrca
    ld a, [de]
    ld [de], a
    or $0e
    dec d
    ld [de], a
    inc e
    ld [de], a
    rra
    ld [de], a
    inc e
    ld [de], a
    ld e, $24
    inc e
    ld [de], a
    ld a, [de]
    ld [de], a
    or $0e
    dec d
    inc h
    or $0f
    dec d
    ld [de], a
    or $0c
    dec d
    ld [de], a
    or $0e
    dec d
    add hl, bc
    or $0f
    dec d
    add hl, bc
    or $0e
    dec d
    add hl, bc
    or $0f
    dec d
    add hl, bc
    ld h, b
    inc h
    or $0e
    dec d
    inc h
    or $0f
    dec d
    ld [de], a
    or $0c
    dec d
    ld [de], a
    or $0e
    dec d
    add hl, bc
    or $0f
    dec d
    add hl, bc
    or $0e
    dec d
    add hl, bc
    or $0f
    dec d
    add hl, bc
    ld h, b
    inc h
    or $0e
    dec d
    inc h
    inc e
    inc h
    ld a, [de]
    dec l
    or $0f
    ld a, [de]
    dec de
    or $0e
    dec d
    ld [de], a
    inc e
    ld [de], a
    inc hl
    ld [de], a
    ld hl, $2812
    ld [de], a
    dec h
    ld [de], a
    inc hl
    ld [de], a
    rra
    ld [de], a
    or $0e
    dec d
    inc h
    or $0f
    dec d
    ld [de], a
    or $0c
    dec d
    ld [de], a
    or $0e
    dec d
    add hl, bc
    or $0f
    dec d
    add hl, bc
    or $0e
    dec d
    add hl, bc
    or $0f
    dec d
    add hl, bc
    ld h, b
    inc h
    or $0e
    dec d
    inc h
    or $0f
    dec d
    ld [de], a
    or $0c
    dec d
    ld [de], a
    or $0e
    dec d
    add hl, bc
    or $0f
    dec d
    add hl, bc
    or $0e
    dec d
    add hl, bc
    or $0f
    dec d
    add hl, bc
    ld h, b
    inc h
    cp $ee
    ld e, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    pop af
    ldh [rP1], a
    or $01
    sub $29
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, hl
    rlca
    ld h, b
    inc b
    sub $24
    rlca
    add hl, hl
    ld a, [hl+]
    ld sp, hl
    ld bc, $00e0
    db $d3
    add hl, hl
    ld c, $f9
    pop af
    ldh [rP1], a
    sub $2b
    ld c, $2c
    rlca
    ld l, $07
    jr nc, jr_03b_5eda

    ld h, b
    inc bc
    db $d3
    jr nc, jr_03b_5edf

    ld h, b
    inc b

jr_03b_5eda:
    sub $27
    rlca
    jr nc, @+$33

jr_03b_5edf:
    ld sp, hl
    ld bc, $00e0
    db $d3
    jr nc, @+$09

    ld sp, hl
    pop af
    ldh [rP1], a
    sub $31
    ld c, $33
    rlca
    ld sp, $3007
    rlca
    ld h, b
    inc bc
    db $d3
    jr nc, jr_03b_5eff

    ld h, b
    inc b
    sub $27
    rlca
    jr nc, jr_03b_5f30

jr_03b_5eff:
    ld sp, hl
    ld bc, $00e0
    db $d3
    jr nc, @+$09

    ld sp, hl
    pop af
    ldh [rP1], a
    sub $2e
    ld c, $2c
    rlca
    ld l, $07
    jr nc, jr_03b_5f52

    ld sp, hl
    ld bc, $00e0
    db $d3
    jr nc, @+$17

    ld sp, hl
    pop af
    ldh [rP1], a
    sub $30
    inc e
    ld sp, $600e
    inc bc
    db $d3
    ld sp, $d604
    ld l, $15
    add hl, hl
    ld c, $28
    ld c, $2b

jr_03b_5f30:
    ld c, $31
    ld c, $2e
    ld c, $30
    ld a, [hl+]
    ld l, $0e
    inc l
    ld c, $60
    inc bc
    db $d3
    inc l
    rlca
    ld h, b
    dec bc
    sub $30
    rlca
    dec [hl]
    rlca
    scf
    rlca
    jr c, jr_03b_5f52

    scf
    rlca
    dec [hl]
    dec d
    db $d3
    dec [hl]
    rlca

jr_03b_5f52:
    sub $38
    rlca
    scf
    rlca
    dec [hl]
    dec d
    db $d3
    dec [hl]
    rlca
    sub $38
    rlca
    add hl, sp
    rlca
    ld a, [hl-]
    rlca
    dec sp
    rlca
    inc a
    ld a, [hl+]
    scf
    ld c, $30
    rlca
    ld h, b
    inc bc
    db $d3
    jr nc, @+$09

    ld h, b
    dec bc
    sub $30
    inc e
    ld sp, $6007
    inc bc
    db $d3
    ld sp, $6007
    inc b
    sub $29
    rlca
    ld sp, $2e31
    rlca
    inc sp
    rlca
    ld sp, $3007
    rlca
    ld l, $03
    db $d3
    ld l, $04
    sub $2e
    rlca
    ld h, b
    inc bc
    db $d3
    ld l, $07
    ld h, b
    inc b
    sub $30
    inc bc
    db $d3
    jr nc, @+$06

    sub $30
    ld sp, $01f9
    ldh [rP1], a
    db $d3
    jr nc, jr_03b_5fb1

    ld sp, hl
    pop af
    ldh [rP1], a
    sub $30
    dec d

jr_03b_5fb1:
    ld sp, hl
    ld bc, $00e0
    db $d3
    jr nc, jr_03b_5fbf

    ld sp, hl
    pop af
    ldh [rP1], a
    sub $2e
    rlca

jr_03b_5fbf:
    ld h, b
    inc bc
    db $d3
    ld l, $07
    ld h, b
    inc b
    sub $26
    rlca
    ld l, $2a
    ld sp, hl
    ld bc, $00e0
    db $d3
    ld l, $07
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $28
    rlca
    jr nc, jr_03b_5fe2

    ld l, $07
    inc l
    rlca
    dec hl
    inc bc
    db $d3

jr_03b_5fe2:
    dec hl
    inc b
    sub $2b
    inc e
    ld sp, hl
    ld bc, $00e0
    db $d3
    dec hl
    rlca
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $29
    inc bc
    db $d3
    add hl, hl
    inc b
    sub $29
    rlca
    dec hl
    rlca
    inc l
    ld c, $d3
    inc l
    ld c, $d6
    ld l, $0e
    jr nc, @+$10

    ld sp, $6007
    inc bc
    db $d3
    ld sp, $6007
    inc b
    sub $29
    rlca
    ld sp, $f92a
    ld bc, $00e0
    db $d3
    ld sp, $f907
    pop af
    ldh [rP1], a
    sub $2e
    rlca
    inc sp
    rlca
    dec [hl]
    rlca
    inc sp
    rlca
    ld sp, $3007
    ld a, [hl+]
    ld [hl-], a
    ld c, $34
    dec d
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc [hl]
    rlca
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $35
    ld c, $37
    ld c, $38
    rlca
    ld h, b
    inc bc
    db $d3
    jr c, jr_03b_604f

    ld h, b
    inc b
    sub $2f
    rlca
    jr c, jr_03b_6079

jr_03b_604f:
    ld sp, hl
    ld bc, $00e0
    db $d3
    jr c, jr_03b_605d

    ld sp, hl
    pop af
    ldh [rP1], a
    sub $37
    rlca

jr_03b_605d:
    jr c, jr_03b_6066

    add hl, sp
    rlca
    ld a, [hl-]
    rlca
    dec sp
    rlca
    inc a

jr_03b_6066:
    rlca
    ld h, b
    inc bc
    db $d3
    inc a
    rlca
    ld h, b
    inc b
    sub $37
    rlca
    inc a
    ccf
    ld sp, hl
    ld bc, $00e0
    db $d3
    inc a

jr_03b_6079:
    ld c, $60
    rlca
    ld sp, hl
    pop af
    ldh [rP1], a
    cp $b0
    ld e, [hl]
    rst $38
    ld sp, hl
    pop af
    ldh [rP1], a
    or $02
    sub $20
    rlca
    ld h, b
    inc bc
    db $d3
    jr nz, jr_03b_6096

    sub $20
    rlca
    dec e

jr_03b_6096:
    rlca
    jr nz, jr_03b_60a0

    ld h, b
    inc bc
    db $d3
    jr nz, jr_03b_60a2

    sub $20

jr_03b_60a0:
    rlca
    dec e

jr_03b_60a2:
    rlca
    jr nz, jr_03b_60ac

    ld h, b
    inc bc
    db $d3
    jr nz, jr_03b_60ae

    sub $20

jr_03b_60ac:
    rlca
    dec e

jr_03b_60ae:
    rlca
    ld [hl+], a
    rlca
    dec de
    rlca
    dec e
    rlca
    rra
    rlca
    jr nz, jr_03b_60c0

    ld h, b
    inc bc
    db $d3
    jr nz, jr_03b_60c2

    sub $20

jr_03b_60c0:
    inc bc
    db $d3

jr_03b_60c2:
    jr nz, jr_03b_60c8

    sub $20
    inc bc
    db $d3

jr_03b_60c8:
    jr nz, jr_03b_60ce

    sub $20
    rlca
    ld h, b

jr_03b_60ce:
    inc bc
    db $d3
    jr nz, @+$06

    sub $1b
    rlca
    jr nz, jr_03b_60de

    inc h
    rlca
    ld h, b
    inc bc
    db $d3
    inc h
    inc b

jr_03b_60de:
    sub $24
    rlca
    jr nz, jr_03b_60ea

    ld [hl+], a
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl+], a
    inc b

jr_03b_60ea:
    sub $22
    rlca
    rra
    rlca
    inc h
    rlca
    ld h, b
    inc bc
    db $d3
    inc h
    inc b
    sub $24
    rlca
    jr nz, jr_03b_6102

    inc h
    rlca
    ld h, b
    inc bc
    db $d3
    inc h
    inc b

jr_03b_6102:
    sub $24
    rlca
    jr nz, jr_03b_610e

    inc h
    rlca
    ld h, b
    inc bc
    db $d3
    inc h
    inc b

jr_03b_610e:
    sub $24
    rlca
    jr nz, @+$09

    rra
    ld c, $1d
    rlca
    rra
    rlca
    jr nz, jr_03b_6122

    ld h, b
    inc bc
    db $d3
    jr nz, jr_03b_6124

    sub $1b

jr_03b_6122:
    inc bc
    db $d3

jr_03b_6124:
    dec de
    inc b
    sub $1b
    inc bc
    db $d3
    dec de
    inc b
    sub $20
    rlca
    ld h, b
    inc bc
    db $d3
    jr nz, jr_03b_6138

    sub $1b
    inc bc
    db $d3

jr_03b_6138:
    dec de
    inc b
    sub $1b
    inc bc
    db $d3
    dec de
    inc b
    sub $24
    rlca
    ld h, b
    inc bc
    db $d3
    inc h
    inc b
    sub $1b
    inc bc
    db $d3
    dec de
    inc b
    sub $1b
    inc bc
    db $d3
    dec de
    inc b
    sub $22
    rlca
    jr nz, @+$09

    ld [hl+], a
    rlca
    jr nz, @+$05

    ld h, b
    inc b
    jr nz, jr_03b_6168

    ld h, b
    inc bc
    db $d3
    jr nz, jr_03b_616a

    sub $1f

jr_03b_6168:
    inc bc
    db $d3

jr_03b_616a:
    rra
    inc b
    sub $1f
    inc bc
    db $d3
    rra
    inc b
    sub $1d
    rlca
    ld h, b
    inc bc
    db $d3
    dec e
    inc b
    sub $1f
    rlca
    dec e
    rlca
    ld [hl+], a
    rlca
    ld h, b
    inc bc
    db $d3
    ld [hl+], a
    inc b
    sub $24
    rlca
    ld [hl+], a
    rlca
    rra
    rlca
    ld h, b
    inc bc
    db $d3
    rra
    inc b
    sub $1f
    rlca
    ld [hl+], a
    rlca
    jr nz, jr_03b_61a0

    ld h, b
    inc bc
    db $d3
    jr nz, jr_03b_61a2

    sub $24

jr_03b_61a0:
    rlca
    dec h

jr_03b_61a2:
    rlca
    ld h, $07
    ld h, b
    inc bc
    db $d3
    ld h, $04
    sub $27
    inc bc
    ld h, b
    inc b
    daa
    rlca
    ld h, $07
    ld h, b
    inc bc
    db $d3
    ld h, $04
    sub $27
    rlca
    ld h, $07
    dec h
    rlca
    ld h, b
    inc bc
    db $d3
    dec h
    inc b
    sub $25
    rlca
    inc h
    rlca
    inc hl
    rlca
    ld h, b
    inc bc
    db $d3
    inc hl
    inc b
    sub $23
    rlca
    rra
    rlca
    dec e
    ld c, $1f
    inc bc
    ld h, b
    inc b
    rra
    rlca
    inc hl
    ld c, $1f
    inc bc
    ld h, b
    inc b
    rra
    rlca
    ld h, $0e
    inc hl
    inc bc
    ld h, b
    inc b
    inc hl
    rlca
    inc h
    rlca
    ld h, b
    inc bc
    db $d3
    inc h
    inc b
    sub $24
    inc bc
    ld h, b
    inc b
    inc h
    rlca
    dec h
    add hl, bc
    daa
    add hl, bc
    dec h
    ld a, [bc]
    inc h
    rlca
    ld h, b
    inc bc
    db $d3
    inc h
    inc b
    sub $24
    rlca
    rra
    rlca
    inc e
    rlca
    rra
    rlca
    inc h
    rlca
    jr z, jr_03b_621c

    ld h, b
    inc hl
    sub $1d
    rlca
    ld [hl+], a
    rlca

jr_03b_621c:
    jr nz, @+$09

    rra
    jr c, jr_03b_6241

    inc hl
    dec de
    rlca
    jr nz, jr_03b_622d

    ld [hl+], a
    rlca
    inc h
    rlca
    jr nz, jr_03b_6233

    inc h

jr_03b_622d:
    rlca
    daa
    rlca
    inc l
    rlca
    daa

jr_03b_6233:
    rlca
    inc h
    rlca
    jr nz, jr_03b_623f

    rra
    inc hl
    ld sp, hl
    ld bc, $00e0
    db $d3

jr_03b_623f:
    rra
    rlca

jr_03b_6241:
    ld sp, hl
    pop af
    ldh [rP1], a
    sub $1d
    inc b
    rra
    dec b
    dec e
    dec b
    inc e
    ld c, $1f
    rlca
    inc h
    rlca
    dec h
    ld c, $24
    ld c, $60
    rlca
    jr jr_03b_6261

    rra
    rlca
    inc e
    rlca
    dec e
    rlca
    rra

jr_03b_6261:
    rlca
    jr nz, jr_03b_626b

    ld [hl+], a
    rlca
    inc hl
    rlca
    inc h
    rlca
    dec h

jr_03b_626b:
    rlca
    ld h, $07
    dec hl
    ld c, $2c
    ld c, $2e
    rlca
    ld h, b
    inc bc
    db $d3
    ld l, $07
    ld h, b
    ld [de], a
    sub $22
    inc bc
    ld h, b
    inc b
    ld [hl+], a
    rlca
    jr nz, @+$09

    rra
    inc e
    dec h
    inc e
    ld h, b
    rlca
    jr nz, jr_03b_6293

    dec h
    rlca
    inc hl
    rlca
    inc h
    rlca
    dec h

jr_03b_6293:
    rlca
    inc hl
    rlca
    inc h
    rlca
    dec h
    rlca
    ld h, $07
    inc h
    rlca
    dec h
    rlca
    ld h, $0e
    jr z, jr_03b_62b2

    add hl, hl
    rlca
    ld h, b
    inc bc
    db $d3
    add hl, hl
    rlca
    ld h, b
    inc b
    sub $1f
    rlca
    add hl, hl
    inc e

jr_03b_62b2:
    jr z, jr_03b_62d0

    daa
    inc e
    dec h
    rlca
    inc h
    rlca
    ld [hl+], a
    rlca
    rra
    rlca
    dec e
    rlca
    inc e
    rlca
    rra
    rlca
    inc h
    rlca
    jr z, jr_03b_62cf

    rra
    rlca
    inc h
    rlca
    jr z, jr_03b_62d5

    dec hl

jr_03b_62cf:
    rlca

jr_03b_62d0:
    inc h
    rlca
    jr z, @+$09

    dec hl

jr_03b_62d5:
    rlca
    cp $8a
    ld h, b
    rst $38
    or $11
    ld de, $f607
    rrca
    ld de, $6007
    ld c, $f6
    ld de, $0711
    or $0f
    ld de, $6007
    ld a, [hl+]
    or $11
    rrca
    inc e
    or $11
    inc d
    rlca
    or $0f
    inc d
    rlca
    ld h, b
    ld c, $f6
    ld de, $0714
    or $0f
    inc d
    rlca
    ld h, b
    ld a, [hl+]
    or $11
    ld d, $1c
    or $11
    inc d
    rlca
    or $0f
    inc d
    rlca
    ld h, b
    ld c, $f6
    ld de, $0714
    or $0f
    inc d
    rlca
    ld h, b
    ld a, [hl+]
    or $11
    rrca
    inc e
    or $11
    inc d
    rlca
    or $0f
    inc d
    rlca
    ld h, b
    ld c, $f6
    ld de, $0714
    or $0f
    inc d
    rlca
    ld h, b
    ld a, [hl+]
    or $11
    inc d
    inc e
    or $11
    inc de
    rlca
    or $0f
    inc de
    rlca
    ld h, b
    ld c, $f6
    ld de, $0713
    or $0f
    inc de
    rlca
    ld h, b
    ld a, [hl+]
    or $11
    inc c
    inc e
    or $11
    ld de, $f607
    rrca
    ld de, $6007
    ld c, $f6
    ld de, $0711
    or $0f
    ld de, $6007
    ld a, [hl+]
    or $11
    ld de, $f61c
    ld de, $0713
    or $0f
    inc de
    rlca
    ld h, b
    ld c, $f6
    ld de, $0713
    or $0f
    inc de
    rlca
    ld h, b
    ld a, [hl+]
    or $11
    inc de
    inc e
    or $11
    inc c
    rlca
    or $0f
    inc c
    rlca
    ld h, b
    ld c, $f6
    ld de, $070c
    or $0f
    inc c
    rlca
    ld h, b
    ld a, [hl+]
    or $11
    inc c
    inc e
    or $11
    ld d, $07
    or $0f
    ld d, $05
    ld h, b
    ld [bc], a
    or $11
    ld d, $07
    or $0f
    ld d, $05
    ld h, b
    db $10
    or $11
    ld d, $0e
    rrca
    rlca
    or $0f
    rrca
    dec b
    ld h, b
    ld [bc], a
    or $11
    rrca
    rlca
    or $0f
    rrca
    dec b
    ld h, b
    db $10
    or $11
    inc de
    ld c, $f6
    ld de, $0714
    or $0f
    inc d
    dec b
    ld h, b
    ld [bc], a
    or $11
    inc d
    rlca
    or $0f
    inc d
    dec b
    ld h, b
    db $10
    or $11
    rrca
    ld c, $14
    rlca
    or $0f
    inc d
    dec b
    ld h, b
    ld [bc], a
    or $11
    inc d
    rlca
    or $0f
    inc d
    dec b
    ld h, b
    db $10
    or $11
    inc d
    ld c, $f6
    ld de, $0713
    or $0f
    inc de
    dec b
    ld h, b
    ld [bc], a
    or $11
    inc de
    rlca
    or $0f
    inc de
    dec b
    ld h, b
    db $10
    or $11
    inc de
    ld c, $0c
    rlca
    or $0f
    inc c
    dec b
    ld h, b
    ld [bc], a
    or $11
    inc c
    rlca
    or $0f
    inc c
    dec b
    ld h, b
    db $10
    or $11
    db $10
    ld c, $f6
    ld de, $0711
    or $0f
    ld de, $6005
    ld [bc], a
    or $11
    ld de, $f60e
    rrca
    ld de, $6005
    add hl, bc
    or $11
    ld de, $f607
    rrca
    ld de, $6005
    ld [bc], a
    or $11
    ld de, $f607
    rrca
    ld de, $6005
    ld [bc], a
    or $11
    ld de, $130e
    ld c, $14
    ld c, $f6
    ld de, $0716
    or $0f
    ld d, $05
    ld h, b
    ld [bc], a
    or $11
    ld d, $07
    or $0f
    ld d, $05
    ld h, b
    db $10
    or $11
    ld d, $0e
    rrca
    rlca
    or $0f
    rrca
    dec b
    ld h, b
    ld [bc], a
    or $11
    rrca
    rlca
    or $0f
    rrca
    dec b
    ld h, b
    db $10
    or $11
    rrca
    ld c, $f6
    ld de, $0711
    or $0f
    ld de, $6005
    ld [bc], a
    or $11
    ld de, $f60e
    rrca
    ld de, $6005
    add hl, bc
    or $11
    ld de, $0f0e
    rlca
    or $0f
    rrca
    dec b
    ld h, b
    ld [bc], a
    or $11
    rrca
    ld c, $f6
    rrca
    rrca
    dec b
    ld h, b
    add hl, bc
    or $11
    rrca
    ld c, $f6
    ld de, $070e
    or $0f
    ld c, $05
    ld h, b
    ld [bc], a
    or $11
    ld c, $07
    or $0f
    ld c, $05
    ld h, b
    db $10
    or $11
    ld c, $0e
    inc de
    rlca
    or $0f
    inc de
    dec b
    ld h, b
    ld [bc], a
    or $11
    inc de
    rlca
    or $0f
    inc de
    dec b
    ld h, b
    db $10
    or $11
    inc de
    ld c, $f6
    ld de, $0e0c
    or $0f
    inc c
    dec b
    ld h, b
    add hl, bc
    or $11
    inc c
    inc e
    ld c, $1c
    db $10
    inc e
    cp $da
    ld h, d
    rst $38
    push de
    ld h, $0e
    db $d3
    ld h, $03
    jp nc, $0426

    jp nc, $0326

    pop de
    ld h, $04
    push de
    ld h, $0e
    db $d3
    ld h, $03
    jp nc, $0426

    jp nc, $0326

    jp nc, $0426

    push de
    ld h, $0e
    db $d3
    ld h, $03
    jp nc, $0426

    jp nc, $0326

    jp nc, $0426

    push de
    ld h, $03
    call nc, $0426
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    db $d3
    ld h, $03
    db $d3
    ld h, $04
    jp nc, $0326

    db $d3
    ld h, $04
    cp $f4
    ld h, h
    rst $38
    ret nc

    jr nz, @+$01

    ret nc

    jr nz, jr_03b_6544

    ld sp, hl

jr_03b_6544:
    nop
    ldh [rP1], a
    or $02
    sub $37
    jr nc, @-$2b

    scf
    db $10
    sub $36
    jr nz, @+$39

    db $10
    ld [hl], $10
    inc [hl]
    db $10
    ld h, b
    ld [$34d3], sp
    ld [$2dd6], sp
    db $10
    ld h, b
    ld [$2dd3], sp
    ld [$2dd6], sp
    db $10
    ld h, b
    ld [$2dd3], sp

jr_03b_656c:
    ld [$2dd6], sp
    inc c
    ld h, b
    inc b
    dec l
    ld [$082f], sp
    jr nc, jr_03b_65b0

    db $d3
    jr nc, jr_03b_6583

    sub $2f
    jr nz, jr_03b_65b1

jr_03b_657f:
    jr nz, jr_03b_65b1

    jr nz, jr_03b_65b2

jr_03b_6583:
    db $10
    dec l
    db $10
    cpl
    db $10
    ld h, b
    ld [$2fd3], sp
    ld [$2bd6], sp
    db $10
    ld h, b
    ld [$2bd3], sp
    ld [$2dd6], sp
    jr nc, jr_03b_656c

    dec l
    jr nz, @-$2d

    dec l
    db $10
    sub $2d
    db $10
    inc [hl]
    ld [$0460], sp
    db $d3
    inc [hl]
    inc b
    sub $34
    jr nc, jr_03b_657f

    inc [hl]
    jr nz, @-$2d

    inc [hl]

jr_03b_65b0:
    db $10

jr_03b_65b1:
    ld h, b

jr_03b_65b2:
    db $10
    sub $34
    ld [$0839], sp
    inc [hl]
    jr nz, @-$2b

    inc [hl]
    db $10
    sub $34
    ld [$0839], sp
    inc [hl]
    jr nz, @-$2b

    inc [hl]
    db $10
    sub $34
    ld [$0839], sp
    inc [hl]
    ld b, b
    db $d3
    inc [hl]
    jr nz, @-$2d

    inc [hl]
    jr nz, @-$28

    inc a
    ld [$0460], sp
    db $d3
    inc a
    ld [$0460], sp
    pop de
    inc a
    ld [$3bd6], sp
    ld [$0460], sp
    db $d3
    dec sp
    ld [$0460], sp
    pop de
    dec sp
    ld [$39d6], sp
    ld [$0460], sp
    db $d3
    add hl, sp
    ld [$0460], sp
    pop de
    add hl, sp
    ld [$37d6], sp
    ld [$0460], sp
    db $d3
    scf
    ld [$0460], sp
    pop de
    scf
    ld [$36d6], sp
    ld c, b
    ld h, b
    ld [$1037], sp
    add hl, sp
    db $10
    dec sp
    db $10
    inc a
    ld [$0460], sp
    db $d3
    inc a
    ld [$0460], sp
    pop de
    inc a
    ld [$3bd6], sp
    ld [$0460], sp
    db $d3
    dec sp
    ld [$0460], sp

jr_03b_6629:
    pop de
    dec sp
    ld [$39d6], sp
    ld [$0460], sp
    db $d3
    add hl, sp
    ld [$0460], sp
    pop de
    add hl, sp
    ld [$37d6], sp

jr_03b_663b:
    ld [$0460], sp
    db $d3
    scf
    ld [$0460], sp
    pop de
    scf
    ld [$36d6], sp
    ld b, b
    db $d3
    ld [hl], $10
    sub $36
    db $10
    scf
    db $10
    add hl, sp
    db $10
    dec sp
    jr nc, jr_03b_6629

    dec sp
    db $10
    sub $40
    jr nc, @-$2b

    ld b, b
    db $10
    sub $3e
    jr @-$2b

    ld a, $08
    sub $39
    jr jr_03b_663b

    add hl, sp
    ld [$35d6], sp
    jr @-$2b

    dec [hl]
    ld [$32d6], sp
    jr @-$2b

    ld [hl-], a
    ld [$3060], sp
    sub $2f
    dec b
    inc [hl]
    dec b
    dec l
    ld b, $2f
    ld a, [hl+]
    ld h, b
    ld b, $2f
    inc b
    inc [hl]
    inc b
    ld [hl], $04
    add hl, sp
    inc b
    dec sp
    jr nc, jr_03b_66c7

    dec b
    dec sp
    dec b
    add hl, sp
    ld b, $35
    jr nz, jr_03b_66ca

    db $10
    ld [hl-], a
    db $10
    cp $49
    ld h, l
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    or $02
    sub $21
    ld [$0860], sp
    inc hl
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$21d6], sp
    ld [$28d3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp

jr_03b_66c7:
    ld [$23d3], sp

jr_03b_66ca:
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$21d6], sp
    ld [$28d3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$21d6], sp
    ld [$28d3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$21d6], sp
    ld [$28d3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$21d6], sp
    ld [$28d3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$21d6], sp
    ld [$28d3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$21d6], sp
    ld [$28d3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$21d6], sp
    ld [$28d3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$21d6], sp
    ld [$28d3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$21d6], sp
    ld [$28d3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$21d6], sp
    ld [$28d3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$1dd6], sp
    ld [$28d3], sp
    ld [$21d6], sp
    ld [$1dd3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$29d6], sp
    ld [$26d3], sp
    ld [$2dd6], sp
    ld [$29d3], sp
    ld [$2fd6], sp
    ld [$2dd3], sp
    ld [$32d6], sp
    ld [$2fd3], sp
    ld [$1dd6], sp
    ld [$32d3], sp
    ld [$21d6], sp
    ld [$1dd3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$29d6], sp
    ld [$26d3], sp
    ld [$2dd6], sp
    ld [$29d3], sp
    ld [$2fd6], sp
    ld [$2dd3], sp
    ld [$32d6], sp
    ld [$2fd3], sp
    ld [$1cd6], sp
    ld [$32d3], sp
    ld [$21d6], sp
    ld [$1cd3], sp
    ld [$23d6], sp
    ld [$21d3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$2dd6], sp
    ld [$28d3], sp
    ld [$2fd6], sp
    ld [$2dd3], sp
    ld [$32d6], sp
    ld [$2fd3], sp
    ld [$1cd6], sp
    ld [$32d3], sp
    ld [$1fd6], sp
    ld [$1cd3], sp
    ld [$23d6], sp
    ld [$1fd3], sp
    ld [$26d6], sp
    ld [$23d3], sp
    ld [$28d6], sp
    ld [$26d3], sp
    ld [$2dd6], sp
    ld [$28d3], sp
    ld [$2fd6], sp
    ld [$2dd3], sp
    ld [$32d6], sp
    ld [$2fd3], sp
    ld [$1bd6], sp
    inc b
    ld h, b
    inc b
    ld e, $04
    db $d3
    dec de
    inc b
    sub $21
    inc b
    db $d3
    ld e, $04
    sub $24
    inc b
    db $d3
    ld hl, $d604
    dec de
    inc b
    db $d3
    inc h
    inc b
    sub $1e
    inc b
    db $d3
    dec de
    inc b
    sub $21
    inc b
    db $d3
    ld e, $04
    sub $24
    inc b
    db $d3
    ld hl, $d604
    dec de
    inc b
    db $d3
    inc h
    inc b
    sub $1e
    inc b
    db $d3
    dec de
    inc b
    sub $21
    inc b
    db $d3
    ld e, $04
    sub $24
    inc b
    db $d3
    ld hl, $d604
    dec de
    inc b
    db $d3
    inc h
    inc b
    sub $1e
    inc b
    db $d3
    dec de
    inc b
    sub $21
    inc b
    db $d3
    ld e, $04
    sub $24
    inc b
    db $d3
    ld hl, $d604
    dec de
    inc b
    db $d3
    inc h
    inc b
    sub $1e
    inc b
    db $d3
    dec de
    inc b
    sub $21
    inc b
    db $d3
    ld e, $04
    sub $24
    inc b
    db $d3
    ld hl, $d604
    ld e, $04
    db $d3
    inc h
    inc b
    sub $21
    inc b
    db $d3
    ld e, $04
    sub $24
    inc b
    db $d3
    ld hl, $d604
    daa
    inc b
    db $d3
    inc h
    inc b
    sub $21
    inc b
    db $d3
    daa
    inc b
    sub $24
    inc b
    db $d3
    ld hl, $d604
    daa
    inc b
    db $d3
    inc h
    inc b
    sub $2a
    inc b
    db $d3
    daa
    inc b
    sub $27
    inc b
    db $d3
    ld a, [hl+]
    inc b
    sub $2a
    inc b
    db $d3
    daa
    inc b
    sub $2d
    inc b
    db $d3
    ld a, [hl+]
    inc b
    sub $30
    inc b
    db $d3
    dec l
    inc b
    sub $1b
    inc b
    db $d3
    jr nc, jr_03b_6949

    sub $1e
    inc b
    db $d3

jr_03b_6949:
    dec de
    inc b
    sub $21
    inc b
    db $d3
    ld e, $04
    sub $24
    inc b
    db $d3
    ld hl, $d604
    dec de
    inc b
    db $d3
    inc h
    inc b
    sub $1e
    inc b
    db $d3
    dec de
    inc b
    sub $21
    inc b
    db $d3
    ld e, $04
    sub $24
    inc b
    db $d3
    ld hl, $d604
    dec de
    inc b
    db $d3
    inc h
    inc b
    sub $1e
    inc b
    db $d3
    dec de
    inc b
    sub $21
    inc b
    db $d3
    ld e, $04
    sub $24
    inc b
    db $d3
    ld hl, $d604
    dec de
    inc b
    db $d3
    inc h
    inc b
    sub $1e
    inc b
    db $d3
    dec de
    inc b
    sub $21
    inc b
    db $d3
    ld e, $04
    sub $24
    inc b
    db $d3
    ld hl, $d604
    dec de
    inc b
    db $d3
    inc h
    inc b
    sub $1e
    inc b
    db $d3
    dec de
    inc b
    sub $21
    inc b
    db $d3
    ld e, $04
    sub $24
    inc b
    db $d3
    ld hl, $d604
    ld e, $04
    db $d3
    inc h
    inc b
    sub $21
    inc b
    db $d3
    ld e, $04
    sub $24
    inc b
    db $d3
    ld hl, $d604
    daa
    inc b
    db $d3
    inc h
    inc b
    sub $21
    inc b
    db $d3
    daa
    inc b
    sub $24
    inc b
    db $d3
    ld hl, $d604
    daa
    inc b
    db $d3
    inc h
    inc b
    sub $2a
    inc b
    db $d3
    daa
    inc b
    sub $27
    inc b
    db $d3
    ld a, [hl+]
    inc b
    sub $2a
    inc b
    db $d3
    daa
    inc b
    sub $2d
    inc b
    db $d3
    ld a, [hl+]
    inc b
    sub $30
    inc b
    db $d3
    dec l
    inc b
    sub $1f
    ld [$0860], sp
    inc hl
    ld [$1fd3], sp
    ld [$28d6], sp
    ld [$23d3], sp
    ld [$2bd6], sp
    ld [$28d3], sp
    ld [$1fd6], sp
    ld [$2bd3], sp
    ld [$23d6], sp
    ld [$1fd3], sp
    ld [$28d6], sp
    ld [$23d3], sp
    ld [$2bd6], sp
    ld [$28d3], sp
    ld [$1dd6], sp
    ld [$2bd3], sp
    ld [$21d6], sp
    ld [$1dd3], sp
    ld [$24d6], sp
    ld [$21d3], sp
    ld [$29d6], sp
    ld [$24d3], sp
    ld [$1dd6], sp
    ld [$29d3], sp
    ld [$21d6], sp
    ld [$1dd3], sp
    ld [$24d6], sp
    ld [$21d3], sp
    ld [$29d6], sp
    ld [$24d3], sp
    ld [$18d6], sp
    ld [$29d3], sp
    ld [$1cd6], sp
    ld [$18d3], sp
    ld [$1fd6], sp
    ld [$1cd3], sp
    ld [$23d6], sp
    ld [$1fd3], sp
    ld [$18d6], sp
    ld [$23d3], sp
    ld [$1cd6], sp
    ld [$18d3], sp
    ld [$1fd6], sp
    ld [$1cd3], sp
    ld [$23d6], sp
    ld [$1fd3], sp
    ld [$17d6], sp
    ld [$23d3], sp
    ld [$1ad6], sp
    ld [$17d3], sp
    ld [$1ed6], sp
    ld [$1ad3], sp
    ld [$21d6], sp
    ld [$1ed3], sp
    ld [$16d6], sp
    ld [$21d3], sp
    ld [$1ad6], sp
    ld [$16d3], sp
    ld [$1cd6], sp
    ld [$1ad3], sp
    ld [$1fd6], sp
    ld [$1cd3], sp
    ld [$01fe], sp
    ld h, a
    rst $38
    or $08
    ld h, b
    rst $38
    ld h, b
    dec h
    scf
    jr nc, jr_03b_6b2a

    db $10
    ld [hl], $20
    scf
    db $10
    ld [hl], $10
    inc [hl]
    db $10
    ld h, b
    db $10
    dec l
    db $10
    ld h, b
    db $10
    dec l
    db $10
    ld h, b
    db $10
    dec l
    inc c
    ld h, b
    inc b
    dec l
    ld [$082f], sp
    jr nc, jr_03b_6b1f

    ld h, b
    ld [$202f], sp
    ld [hl-], a
    jr nz, @+$32

    jr nz, jr_03b_6b1f

    db $10
    dec l
    db $10
    cpl
    db $10
    ld h, b
    db $10
    dec hl
    db $10
    ld h, b
    db $10
    dec l
    ld h, b
    ld h, b
    db $10
    inc [hl]
    ld [$0860], sp
    inc [hl]
    ld h, b
    ld h, b
    db $10
    inc [hl]
    ld [$0839], sp
    inc [hl]
    jr nc, jr_03b_6b42

    ld [$0839], sp
    inc [hl]
    jr nc, jr_03b_6b48

    ld [$0839], sp
    inc [hl]
    jr nc, jr_03b_6b7a

    rst $38
    ld h, b
    rst $38
    or $08

jr_03b_6b1f:
    ld h, b
    ld [hl-], a
    scf
    db $10
    add hl, sp
    db $10
    dec sp
    jr nc, jr_03b_6b88

    db $10
    ld b, b

jr_03b_6b2a:
    jr nc, jr_03b_6b6c

    db $10
    ld a, $18
    ld h, b
    ld [$1839], sp
    ld h, b
    ld [$1835], sp
    ld h, b
    ld [$1832], sp
    ld h, b
    jr c, @+$31

    dec b
    inc [hl]
    dec b
    dec l

jr_03b_6b42:
    ld b, $2f
    ld a, [hl+]
    ld h, b
    ld b, $2f

jr_03b_6b48:
    inc b
    inc [hl]
    inc b
    ld [hl], $04
    add hl, sp
    inc b
    dec sp
    jr nc, @+$3b

    dec b
    dec sp
    dec b
    add hl, sp
    ld b, $35
    jr nz, jr_03b_6b8e

    db $10
    ld [hl-], a
    db $10
    cp $c7
    ld l, d
    rst $38
    ld sp, hl
    nop
    ldh [$03], a
    or $02
    sub $2b
    ld c, $f9
    nop

jr_03b_6b6c:
    ldh [rDIV], a
    jr z, jr_03b_6b8c

    ld sp, hl
    nop
    ldh [$03], a
    dec hl
    ld c, $27
    ld c, $f9
    nop

jr_03b_6b7a:
    ldh [rDIV], a
    cpl
    inc e
    ld sp, hl
    nop
    ldh [$03], a
    dec l
    ld c, $2b
    ld c, $f9
    nop

jr_03b_6b88:
    ldh [rDIV], a
    jr z, @+$1e

jr_03b_6b8c:
    ld sp, hl
    nop

jr_03b_6b8e:
    ldh [$03], a
    inc h
    ld c, $23
    ld c, $27
    rlca
    ld a, [hl+]
    rlca
    cpl
    ld c, $2d
    ld c, $f9
    nop
    ldh [rDIV], a
    dec hl
    inc e
    ld sp, hl
    nop
    ldh [$03], a
    dec l
    ld c, $2f
    ld c, $30
    ld c, $32
    ld c, $34
    ld c, $35
    ld c, $f9
    nop
    ldh [rDIV], a
    scf
    inc e
    ld sp, hl
    nop
    ldh [$03], a
    dec [hl]
    ld c, $31
    ld c, $f9
    nop
    ldh [rDIV], a
    inc [hl]
    inc e
    ld [hl-], a
    inc e
    ld sp, hl
    nop
    ldh [$03], a
    add hl, sp
    ld c, $f9
    nop
    ldh [rDIV], a
    dec [hl]
    inc e
    ld sp, hl
    nop
    ldh [$03], a
    inc [hl]
    ld c, $33
    ld c, $3b
    rlca
    inc a
    rlca
    dec sp
    ld c, $39
    ld c, $37
    ld c, $f9
    nop
    ldh [rDIV], a
    inc [hl]
    inc e
    ld sp, hl
    nop
    ldh [$03], a
    scf
    ld c, $31
    ld c, $39
    rlca
    ld a, [hl-]
    rlca
    add hl, sp
    ld c, $37
    ld c, $37
    ld c, $35
    ld c, $34
    ld c, $35
    ld c, $37
    ld c, $35
    ld c, $39
    ld c, $3c
    ld c, $40
    ld c, $3e
    ld c, $3c
    ld c, $40
    ld c, $f9
    nop
    ldh [rDIV], a
    ld a, $1c
    ld h, b
    inc e
    ld sp, hl
    nop
    ldh [$03], a
    cp $67
    ld l, e
    rst $38
    ld sp, hl
    nop
    ldh [$03], a
    or $02
    sub $18
    ld c, $1c
    ld c, $13
    ld c, $1c
    ld c, $17
    ld c, $1b
    ld c, $12
    ld c, $1b
    ld c, $18
    ld c, $1c
    ld c, $13
    ld c, $1c
    ld c, $17
    ld c, $1b
    ld c, $12
    ld c, $1b
    ld c, $18
    ld c, $1c
    ld c, $13
    ld c, $1c
    ld c, $15
    ld c, $1c
    ld c, $18
    ld c, $1c
    ld c, $1a
    ld c, $1d
    ld c, $15
    ld c, $1d
    ld c, $13
    ld c, $15
    ld c, $17
    ld c, $13
    ld c, $1d
    ld c, $21
    ld c, $18
    ld c, $21
    ld c, $17
    ld c, $1e
    ld c, $1b
    ld c, $1e
    ld c, $1c
    ld c, $1f
    ld c, $17
    ld c, $1f
    ld c, $15
    ld c, $1c
    ld c, $19
    ld c, $1c
    ld c, $1a
    ld c, $1d
    ld c, $15
    ld c, $1d
    ld c, $1a
    ld c, $1d
    ld c, $15
    ld c, $14
    ld c, $13
    ld c, $1a
    ld c, $0e
    ld c, $1a
    ld c, $13
    ld c, $13
    ld c, $15
    ld c, $17
    ld c, $fe
    ld a, [hl+]
    ld l, h
    rst $38
    or $0c
    db $d3
    dec hl
    ld c, $28
    inc e
    dec hl
    ld c, $27
    ld c, $2f
    inc e
    dec l
    ld c, $2b
    ld c, $28
    inc e
    inc h
    ld c, $23
    ld c, $27
    rlca
    ld a, [hl+]
    rlca
    cpl
    ld c, $2d
    ld c, $2b
    inc e
    dec l
    ld c, $2f
    ld c, $30
    ld c, $32
    ld c, $34
    ld c, $35
    ld c, $37
    inc e
    dec [hl]
    ld c, $31
    ld c, $34
    inc e
    ld [hl-], a
    inc e
    add hl, sp
    ld c, $35
    inc e
    inc [hl]
    ld c, $33
    ld c, $3b
    rlca
    inc a
    rlca
    dec sp
    ld c, $39
    ld c, $37
    ld c, $34
    inc e
    scf
    ld c, $31
    ld c, $39
    rlca
    ld a, [hl-]
    rlca
    add hl, sp
    ld c, $37
    ld c, $37
    ld c, $35
    ld c, $34
    ld c, $35
    ld c, $37
    ld c, $35
    ld c, $39
    ld c, $3c
    ld c, $40
    ld c, $3e
    ld c, $3c
    ld c, $40
    ld c, $3e
    inc e
    ld h, b
    inc e
    cp $b1
    ld l, h
    rst $38
    nop
    ld l, d
    ld l, [hl]
    ld bc, $6d33
    inc b
    call $066f
    ld [bc], a
    ld [hl], a
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $01
    sub $24

jr_03b_6d3c:
    ld b, $60
    inc bc
    db $d3
    inc h
    ld b, $60
    inc bc
    sub $2b
    ld b, $2a
    ld c, b
    add hl, hl
    ld c, b
    daa
    inc c
    add hl, hl
    ld b, $27
    ld b, $24
    ld b, $60
    inc bc
    db $d3
    inc h
    ld b, $60
    inc bc
    pop de
    inc h
    ld b, $d6
    ld e, $30
    db $d3
    ld e, $30
    ld h, b
    jr nc, jr_03b_6d3c

    ld e, $06
    rra
    ld b, $24
    ld b, $27
    ld b, $2b
    ld b, $60
    inc bc
    db $d3
    dec hl
    ld b, $60
    inc bc
    sub $30
    ld b, $2f
    jr nc, @+$2d

    ld b, $60
    inc bc
    db $d3
    dec hl
    ld b, $60
    inc bc
    sub $2f
    ld b, $2e
    jr @+$2d

    ld b, $60
    inc bc
    db $d3

jr_03b_6d8f:
    dec hl
    ld b, $60
    inc bc
    sub $2e
    ld b, $2d
    jr jr_03b_6dc2

    ld b, $60
    inc bc
    db $d3
    add hl, hl
    ld b, $60
    inc bc
    sub $2c
    ld b, $2b
    inc c
    daa
    ld b, $24
    ld b, $1f
    ld b, $60
    inc bc
    db $d3
    rra
    ld b, $60
    inc bc
    pop de
    rra
    ld b, $60
    jr nc, jr_03b_6d8f

    dec hl
    inc c
    daa
    ld b, $24
    ld b, $1f
    ld b, $60

jr_03b_6dc2:
    inc bc
    db $d3
    rra
    ld b, $60
    inc bc
    pop de
    rra
    ld b, $60
    jr @-$28

    ld h, $06
    daa
    ld b, $2b
    ld b, $2f
    ld b, $32
    ld b, $60
    inc bc
    db $d3
    ld [hl-], a
    ld b, $60
    inc bc
    sub $35
    ld b, $33
    jr nc, jr_03b_6e14

    ld b, $60
    inc bc
    db $d3
    cpl
    ld b, $60
    inc bc
    rst $10
    ld [hl-], a
    ld b, $30
    jr @+$2d

    ld b, $60
    inc bc
    db $d3
    dec hl
    ld b, $60
    inc bc
    rst $10
    ld l, $06
    dec l
    jr jr_03b_6e2a

    ld b, $60
    inc bc
    db $d3
    add hl, hl
    ld b, $60
    inc bc
    rst $10
    inc l
    ld b, $2b
    ld b, $60
    inc bc
    db $d3
    dec hl
    ld b, $60

jr_03b_6e14:
    inc bc
    pop de
    dec hl
    ld b, $d7
    inc h
    ld c, b
    db $d3
    inc h
    jr jr_03b_6e7f

    ld c, b
    sub $29
    ld b, $60
    inc bc
    db $d3
    add hl, hl
    ld b, $60
    inc bc

jr_03b_6e2a:
    sub $2c
    ld b, $31
    jr jr_03b_6e60

    jr jr_03b_6e61

    ld b, $60
    inc bc
    db $d3
    cpl
    ld b, $60
    inc bc
    sub $32
    ld b, $37
    inc h
    db $d3
    scf
    inc c
    sub $38
    ld b, $60
    inc bc
    db $d3
    jr c, jr_03b_6e50

    ld h, b
    inc bc
    sub $35
    ld b, $3d

jr_03b_6e50:
    inc c
    inc a
    inc c
    dec sp
    inc c
    ld a, [hl-]
    inc c
    add hl, sp
    ld b, $60
    inc bc
    db $d3
    add hl, sp
    ld b, $60
    inc bc

jr_03b_6e60:
    pop de

jr_03b_6e61:
    add hl, sp
    ld b, $d6
    cpl
    ld c, b
    cp $3a
    ld l, l
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    ld a, [c]
    or $02
    sub $1f
    ld b, $60
    inc bc
    db $d3
    rra
    ld b, $60
    inc bc
    sub $27
    ld b, $26

jr_03b_6e7f:
    ld c, b
    dec h
    ld c, b
    inc h
    inc c
    dec h
    ld b, $24
    ld b, $1f
    ld b, $60
    inc bc
    db $d3
    rra
    ld b, $60
    inc bc
    pop de
    rra
    ld b, $60
    jr @-$28

    jr nc, jr_03b_6e9f

    ld h, b
    inc bc
    db $d3
    jr nc, @+$08

    ld h, b

jr_03b_6e9f:
    inc bc
    pop de
    jr nc, jr_03b_6ea9

    sub $2a
    ld b, $60
    inc bc
    db $d3

jr_03b_6ea9:
    ld a, [hl+]
    ld b, $60
    inc bc
    pop de
    ld a, [hl+]
    ld b, $d6
    inc a
    ld b, $60
    inc bc
    db $d3
    inc a
    ld b, $60
    inc bc
    pop de
    inc a
    ld b, $d6
    ld [hl], $06
    ld h, b
    inc bc
    db $d3
    ld [hl], $06
    ld h, b
    inc bc
    pop de
    ld [hl], $06

jr_03b_6eca:
    sub $3f
    ld b, $60
    inc bc
    db $d3
    ccf
    ld b, $60
    inc bc
    pop de
    ccf
    ld b, $d6
    inc a
    ld b, $60
    inc bc
    db $d3
    inc a
    inc bc
    call nc, $061e
    rra
    ld b, $24
    ld b, $27
    ld b, $2b
    ld [$0460], sp
    sub $27
    ld c, b
    ld h, $30
    dec h
    jr nc, jr_03b_6eca

    daa
    inc c
    inc h
    ld b, $1f
    ld b, $1b
    ld b, $60
    inc bc
    db $d3
    dec de
    ld b, $60
    inc bc
    pop de
    dec de
    ld b, $60
    ld b, b
    db $d3
    dec hl
    inc c
    daa
    ld b, $24
    ld b, $1f
    ld b, $60
    ld [bc], a
    sub $43
    inc c
    ccf
    ld b, $3c
    ld b, $37
    ld b, $24
    ld b, $27
    ld b, $2b
    ld b, $2f
    ld b, $60
    inc bc
    db $d3
    cpl
    ld b, $60
    inc bc
    pop de
    cpl
    ld b, $d6
    jr nc, jr_03b_6f61

    add hl, hl
    jr @+$29

    jr nc, jr_03b_6f5c

    jr jr_03b_6f5d

    jr jr_03b_6f5e

    ld b, $60
    inc bc
    db $d3
    inc h
    ld b, $60
    inc bc
    pop de
    inc h
    ld b, $d6
    rra
    ld c, b
    scf
    ld b, $60
    inc bc
    db $d3
    scf
    ld b, $60
    inc bc
    pop de
    scf
    ld b, $d6
    jr nc, jr_03b_6f5d

    ld h, b
    inc bc
    db $d3
    jr nc, @+$08

jr_03b_6f5c:
    ld h, b

jr_03b_6f5d:
    inc bc

jr_03b_6f5e:
    pop de
    jr nc, jr_03b_6f67

jr_03b_6f61:
    sub $43
    ld b, $60
    inc bc
    db $d3

jr_03b_6f67:
    ld b, e
    ld b, $60
    inc bc
    pop de
    ld b, e
    ld b, $d6
    inc a
    ld b, $60
    inc bc
    db $d3
    inc a
    ld b, $60
    inc bc
    pop de
    inc a
    ld b, $d3

jr_03b_6f7c:
    dec h
    ld b, $60
    inc bc
    pop de
    dec h
    ld b, $60
    inc bc
    sub $29
    ld b, $2c
    ld [de], a
    db $d3
    inc l
    ld b, $d6
    add hl, hl
    ld [de], a
    db $d3
    add hl, hl
    ld b, $d6
    ld h, $06
    ld h, b
    inc bc
    db $d3
    ld h, $06
    ld h, b
    inc bc
    sub $2b
    ld b, $2f
    jr @-$2b

    cpl
    jr jr_03b_6f7c

    dec [hl]
    ld b, $60
    inc bc
    db $d3
    dec [hl]
    ld b, $60
    inc bc
    sub $31
    ld b, $3a
    inc c
    add hl, sp
    inc c
    jr c, jr_03b_6fc4

    scf
    inc c
    dec [hl]
    ld b, $60
    inc bc
    db $d3
    dec [hl]
    ld b, $60
    inc bc
    pop de

jr_03b_6fc4:
    dec [hl]
    ld b, $d6
    inc l
    ld c, b
    cp $71
    ld l, [hl]
    rst $38
    ld a, [c]
    or $12
    jr jr_03b_6fd6

    or $17
    jr jr_03b_6fd8

jr_03b_6fd6:
    or $12

jr_03b_6fd8:
    dec de
    inc b
    or $17
    jr jr_03b_6fe0

    or $12

jr_03b_6fe0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_6ff6

    or $17
    ld e, $02

jr_03b_6ff6:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7000

    or $12

jr_03b_7000:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7016

    or $17
    ld e, $02

jr_03b_7016:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7020

    or $12

jr_03b_7020:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7036

    or $17
    ld e, $02

jr_03b_7036:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7040

    or $12

jr_03b_7040:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7056

    or $17
    jr jr_03b_7058

jr_03b_7056:
    or $12

jr_03b_7058:
    dec de
    inc b
    or $17
    jr jr_03b_7060

    or $12

jr_03b_7060:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7076

    or $17
    ld e, $02

jr_03b_7076:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7080

    or $12

jr_03b_7080:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7096

    or $17
    ld e, $02

jr_03b_7096:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_70a0

    or $12

jr_03b_70a0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_70b6

    or $17
    ld e, $02

jr_03b_70b6:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_70c0

    or $12

jr_03b_70c0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_70d6

    or $17
    jr jr_03b_70d8

jr_03b_70d6:
    or $12

jr_03b_70d8:
    dec de
    inc b
    or $17
    jr jr_03b_70e0

    or $12

jr_03b_70e0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_70f6

    or $17
    ld e, $02

jr_03b_70f6:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7100

    or $12

jr_03b_7100:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7116

    or $17
    ld e, $02

jr_03b_7116:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7120

    or $12

jr_03b_7120:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7136

    or $17
    ld e, $02

jr_03b_7136:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7140

    or $12

jr_03b_7140:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7156

    or $17
    jr jr_03b_7158

jr_03b_7156:
    or $12

jr_03b_7158:
    dec de
    inc b
    or $17
    jr jr_03b_7160

    or $12

jr_03b_7160:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7176

    or $17
    ld e, $02

jr_03b_7176:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7180

    or $12

jr_03b_7180:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7196

    or $17
    ld e, $02

jr_03b_7196:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_71a0

    or $12

jr_03b_71a0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_71b6

    or $17
    ld e, $02

jr_03b_71b6:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_71c0

    or $12

jr_03b_71c0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_71d6

    or $17
    jr jr_03b_71d8

jr_03b_71d6:
    or $12

jr_03b_71d8:
    dec de
    inc b
    or $17
    jr jr_03b_71e0

    or $12

jr_03b_71e0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_71f6

    or $17
    ld e, $02

jr_03b_71f6:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7200

    or $12

jr_03b_7200:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7216

    or $17
    ld e, $02

jr_03b_7216:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7220

    or $12

jr_03b_7220:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7236

    or $17
    ld e, $02

jr_03b_7236:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7240

    or $12

jr_03b_7240:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7256

    or $17
    jr jr_03b_7258

jr_03b_7256:
    or $12

jr_03b_7258:
    dec de
    inc b
    or $17
    jr jr_03b_7260

    or $12

jr_03b_7260:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7276

    or $17
    ld e, $02

jr_03b_7276:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7280

    or $12

jr_03b_7280:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7296

    or $17
    ld e, $02

jr_03b_7296:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_72a0

    or $12

jr_03b_72a0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_72b6

    or $17
    ld e, $02

jr_03b_72b6:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_72c0

    or $12

jr_03b_72c0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_72d6

    or $17
    jr jr_03b_72d8

jr_03b_72d6:
    or $12

jr_03b_72d8:
    dec de
    inc b
    or $17
    jr jr_03b_72e0

    or $12

jr_03b_72e0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_72f6

    or $17
    ld e, $02

jr_03b_72f6:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7300

    or $12

jr_03b_7300:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7316

    or $17
    ld e, $02

jr_03b_7316:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7320

    or $12

jr_03b_7320:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7336

    or $17
    ld e, $02

jr_03b_7336:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7340

    or $12

jr_03b_7340:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7356

    or $17
    jr jr_03b_7358

jr_03b_7356:
    or $12

jr_03b_7358:
    dec de
    inc b
    or $17
    jr jr_03b_7360

    or $12

jr_03b_7360:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7376

    or $17
    ld e, $02

jr_03b_7376:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7380

    or $12

jr_03b_7380:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7396

    or $17
    ld e, $02

jr_03b_7396:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_73a0

    or $12

jr_03b_73a0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_73b6

    or $17
    ld e, $02

jr_03b_73b6:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_73c0

    or $12

jr_03b_73c0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_73d6

    or $17
    jr jr_03b_73d8

jr_03b_73d6:
    or $12

jr_03b_73d8:
    dec de
    inc b
    or $17
    jr jr_03b_73e0

    or $12

jr_03b_73e0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_73f6

    or $17
    ld e, $02

jr_03b_73f6:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7400

    or $12

jr_03b_7400:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7416

    or $17
    ld e, $02

jr_03b_7416:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7420

    or $12

jr_03b_7420:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7436

    or $17
    ld e, $02

jr_03b_7436:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7440

    or $12

jr_03b_7440:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7456

    or $17
    jr jr_03b_7458

jr_03b_7456:
    or $12

jr_03b_7458:
    dec de
    inc b
    or $17
    jr jr_03b_7460

    or $12

jr_03b_7460:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7476

    or $17
    ld e, $02

jr_03b_7476:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7480

    or $12

jr_03b_7480:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7496

    or $17
    ld e, $02

jr_03b_7496:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_74a0

    or $12

jr_03b_74a0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_74b6

    or $17
    ld e, $02

jr_03b_74b6:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_74c0

    or $12

jr_03b_74c0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_74d6

    or $17
    jr jr_03b_74d8

jr_03b_74d6:
    or $12

jr_03b_74d8:
    dec de
    inc b
    or $17
    jr jr_03b_74e0

    or $12

jr_03b_74e0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_74f6

    or $17
    ld e, $02

jr_03b_74f6:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7500

    or $12

jr_03b_7500:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7516

    or $17
    ld e, $02

jr_03b_7516:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7520

    or $12

jr_03b_7520:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7536

    or $17
    ld e, $02

jr_03b_7536:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7540

    or $12

jr_03b_7540:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7556

    or $17
    jr jr_03b_7558

jr_03b_7556:
    or $12

jr_03b_7558:
    dec de
    inc b
    or $17
    jr jr_03b_7560

    or $12

jr_03b_7560:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7576

    or $17
    ld e, $02

jr_03b_7576:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_7580

    or $12

jr_03b_7580:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_7596

    or $17
    ld e, $02

jr_03b_7596:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_75a0

    or $12

jr_03b_75a0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    jr jr_03b_75b6

    or $17
    ld e, $02

jr_03b_75b6:
    or $12
    dec de
    inc b
    or $17
    jr jr_03b_75c0

    or $12

jr_03b_75c0:
    rra
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    ld e, $04
    or $17
    rra
    ld [bc], a
    or $12
    add hl, de
    inc b
    or $17
    ld e, $02
    or $12
    dec e
    inc b
    or $17
    add hl, de
    ld [bc], a
    or $12
    rra
    inc b
    or $17
    dec e
    ld [bc], a
    or $12
    jr nz, jr_03b_75ee

    or $17
    rra
    ld [bc], a

jr_03b_75ee:
    or $12
    add hl, de
    inc b
    or $17
    jr nz, jr_03b_75f8

    or $12

jr_03b_75f8:
    dec e
    inc b
    or $17
    add hl, de
    ld [bc], a
    or $12
    rra
    inc b
    or $17
    dec e
    ld [bc], a
    or $12
    jr nz, jr_03b_760e

    or $17
    rra
    ld [bc], a

jr_03b_760e:
    or $12
    add hl, de
    inc b
    or $17
    jr nz, jr_03b_7618

    or $12

jr_03b_7618:
    dec e
    inc b
    or $17
    add hl, de
    ld [bc], a
    or $12
    rra
    inc b
    or $17
    dec e
    ld [bc], a
    or $12
    jr nz, jr_03b_762e

    or $17
    rra
    ld [bc], a

jr_03b_762e:
    or $12
    inc de
    inc b
    or $17
    jr nz, jr_03b_7638

    or $12

jr_03b_7638:
    rla
    inc b
    or $17
    inc de
    ld [bc], a
    or $12
    jr jr_03b_7646

    or $17
    rla
    ld [bc], a

jr_03b_7646:
    or $12
    ld a, [de]
    inc b
    or $17
    jr jr_03b_7650

    or $12

jr_03b_7650:
    dec de
    inc b
    or $17
    rla
    ld [bc], a
    or $12
    inc e
    inc b
    or $17
    dec de
    ld [bc], a
    or $12
    dec e
    inc b
    or $17
    inc e
    ld [bc], a
    or $12
    ld e, $04
    or $17
    dec e
    ld [bc], a
    or $12
    rra
    inc b
    or $17
    ld e, $02
    or $12
    jr nz, jr_03b_767e

    or $17
    rra
    ld [bc], a

jr_03b_767e:
    or $12
    ld hl, $f604
    rla
    jr nz, jr_03b_7688

    or $12

jr_03b_7688:
    ld [hl+], a
    inc b
    or $17
    ld hl, $f602
    ld [de], a
    add hl, de
    inc b
    or $17
    ld [hl+], a
    ld [bc], a
    or $12
    dec e
    inc b
    or $17
    add hl, de
    ld [bc], a
    or $12
    rra
    inc b
    or $17
    dec e
    ld [bc], a
    or $12
    jr nz, jr_03b_76ae

    or $17
    rra
    ld [bc], a

jr_03b_76ae:
    or $12
    add hl, de
    inc b
    or $17
    jr nz, jr_03b_76b8

    or $12

jr_03b_76b8:
    dec e
    inc b
    or $17
    add hl, de
    ld [bc], a
    or $12
    rra
    inc b
    or $17
    dec e
    ld [bc], a
    or $12
    jr nz, jr_03b_76ce

    or $17
    rra
    ld [bc], a

jr_03b_76ce:
    or $12
    add hl, de
    inc b
    or $17
    dec e
    ld [bc], a
    or $12
    dec e
    inc b
    or $17
    add hl, de
    ld [bc], a
    or $12
    rra
    inc b
    or $17
    dec e
    ld [bc], a
    or $12
    jr nz, jr_03b_76ee

    or $17
    rra
    ld [bc], a

jr_03b_76ee:
    or $12
    ld [hl+], a
    inc b
    or $17
    jr nz, jr_03b_76f8

    or $17

jr_03b_76f8:
    ld [hl+], a
    ld [de], a
    or $12
    inc de
    ld c, b
    cp $ce
    ld l, a
    rst $38
    ld a, [c]
    sub $24
    ld [de], a
    inc h
    ld b, $db
    jr z, jr_03b_770c

    db $d3

jr_03b_770c:
    daa
    ld de, $28db
    ld bc, $27d3
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_771b

    db $d3

jr_03b_771b:
    daa
    dec bc
    inc h
    ld b, $db
    jr z, jr_03b_7723

    db $d3

jr_03b_7723:
    daa
    dec bc
    db $db
    jr z, jr_03b_7729

    db $d3

jr_03b_7729:
    daa
    dec b
    db $db
    jr z, jr_03b_772f

    db $d3

jr_03b_772f:
    daa
    dec b
    sub $24
    ld [de], a
    inc h
    ld b, $db
    jr z, jr_03b_773a

    db $d3

jr_03b_773a:
    daa
    ld de, $28db
    ld bc, $27d3
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_7749

    db $d3

jr_03b_7749:
    daa
    dec bc
    inc h
    ld b, $db
    jr z, jr_03b_7751

    db $d3

jr_03b_7751:
    daa
    dec bc
    db $db
    jr z, jr_03b_7757

    db $d3

jr_03b_7757:
    daa
    dec b
    db $db
    jr z, jr_03b_775d

    db $d3

jr_03b_775d:
    daa
    dec b
    sub $24
    ld [de], a
    inc h
    ld b, $db
    jr z, jr_03b_7768

    db $d3

jr_03b_7768:
    daa
    ld de, $28db
    ld bc, $27d3
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_7777

    db $d3

jr_03b_7777:
    daa
    dec bc
    inc h
    ld b, $db
    jr z, jr_03b_777f

    db $d3

jr_03b_777f:
    daa
    dec bc
    db $db
    jr z, jr_03b_7785

    db $d3

jr_03b_7785:
    daa
    dec b
    db $db
    jr z, jr_03b_778b

    db $d3

jr_03b_778b:
    daa
    dec b
    sub $24
    ld [de], a
    inc h
    ld b, $db
    jr z, jr_03b_7796

    db $d3

jr_03b_7796:
    daa
    ld de, $28db
    ld bc, $27d3
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_77a5

    db $d3

jr_03b_77a5:
    daa
    dec bc
    inc h
    ld b, $db
    jr z, jr_03b_77ad

    db $d3

jr_03b_77ad:
    daa
    dec bc
    db $db
    jr z, jr_03b_77b3

    db $d3

jr_03b_77b3:
    daa
    dec b
    db $db
    jr z, jr_03b_77b9

    db $d3

jr_03b_77b9:
    daa
    dec b
    sub $24
    ld [de], a
    inc h
    ld b, $db
    jr z, jr_03b_77c4

    db $d3

jr_03b_77c4:
    daa
    ld de, $28db
    ld bc, $27d3
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_77d3

    db $d3

jr_03b_77d3:
    daa
    dec bc
    inc h
    ld b, $db
    jr z, jr_03b_77db

    db $d3

jr_03b_77db:
    daa
    dec bc
    db $db
    jr z, jr_03b_77e1

    db $d3

jr_03b_77e1:
    daa
    dec b
    db $db
    jr z, jr_03b_77e7

    db $d3

jr_03b_77e7:
    daa
    dec b
    sub $24
    ld [de], a
    inc h
    ld b, $db
    jr z, jr_03b_77f2

    db $d3

jr_03b_77f2:
    daa
    ld de, $28db
    ld bc, $27d3
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_7801

    db $d3

jr_03b_7801:
    daa
    dec bc
    inc h
    ld b, $db
    jr z, jr_03b_7809

    db $d3

jr_03b_7809:
    daa
    dec bc
    db $db
    jr z, jr_03b_780f

    db $d3

jr_03b_780f:
    daa
    dec b
    db $db
    jr z, jr_03b_7815

    db $d3

jr_03b_7815:
    daa
    dec b
    sub $24
    ld [de], a
    inc h
    ld b, $db
    jr z, jr_03b_7820

    db $d3

jr_03b_7820:
    daa
    ld de, $28db
    ld bc, $27d3
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_782f

    db $d3

jr_03b_782f:
    daa
    dec bc
    inc h
    ld b, $db
    jr z, jr_03b_7837

    db $d3

jr_03b_7837:
    daa
    dec bc
    db $db
    jr z, jr_03b_783d

    db $d3

jr_03b_783d:
    daa
    dec b
    db $db
    jr z, jr_03b_7843

    db $d3

jr_03b_7843:
    daa
    dec b
    sub $24
    ld [de], a
    inc h
    ld b, $db
    jr z, jr_03b_784e

    db $d3

jr_03b_784e:
    daa
    ld de, $28db
    ld bc, $27d3
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_785d

    db $d3

jr_03b_785d:
    daa
    dec bc
    inc h
    ld b, $db
    jr z, jr_03b_7865

    db $d3

jr_03b_7865:
    daa
    dec bc
    db $db
    jr z, jr_03b_786b

    db $d3

jr_03b_786b:
    daa
    dec b
    db $db
    jr z, jr_03b_7871

    db $d3

jr_03b_7871:
    daa
    dec b
    sub $24
    ld [de], a
    inc h
    ld b, $db
    jr z, jr_03b_787c

    db $d3

jr_03b_787c:
    daa
    ld de, $28db
    ld bc, $27d3
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_788b

    db $d3

jr_03b_788b:
    daa
    dec bc
    inc h
    ld b, $db
    jr z, jr_03b_7893

    db $d3

jr_03b_7893:
    daa
    dec bc
    db $db
    jr z, jr_03b_7899

    db $d3

jr_03b_7899:
    daa
    dec b
    db $db
    jr z, jr_03b_789f

    db $d3

jr_03b_789f:
    daa
    dec b
    sub $24
    ld [de], a
    inc h
    ld b, $db
    jr z, jr_03b_78aa

    db $d3

jr_03b_78aa:
    daa
    ld de, $28db
    ld bc, $27d3
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_78b9

    db $d3

jr_03b_78b9:
    daa
    dec bc
    inc h
    ld b, $db
    jr z, jr_03b_78c1

    db $d3

jr_03b_78c1:
    daa
    dec bc
    db $db
    jr z, jr_03b_78c7

    db $d3

jr_03b_78c7:
    daa
    dec b
    db $db
    jr z, jr_03b_78cd

    db $d3

jr_03b_78cd:
    daa
    dec b
    sub $24
    ld [de], a
    inc h
    ld b, $db
    jr z, jr_03b_78d8

    db $d3

jr_03b_78d8:
    daa
    ld de, $28db
    ld bc, $27d3
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_78e7

    db $d3

jr_03b_78e7:
    daa
    dec bc
    inc h
    ld b, $db
    jr z, jr_03b_78ef

    db $d3

jr_03b_78ef:
    daa
    dec bc
    db $db
    jr z, jr_03b_78f5

    db $d3

jr_03b_78f5:
    daa
    dec b
    db $db
    jr z, jr_03b_78fb

    db $d3

jr_03b_78fb:
    daa
    dec b
    sub $24
    ld [de], a
    inc h
    ld b, $db
    jr z, jr_03b_7906

    db $d3

jr_03b_7906:
    daa
    ld de, $28db
    ld bc, $27d3
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_7915

    db $d3

jr_03b_7915:
    daa
    dec bc
    inc h
    ld b, $db
    jr z, jr_03b_791d

    db $d3

jr_03b_791d:
    daa
    dec bc
    db $db
    jr z, jr_03b_7923

    db $d3

jr_03b_7923:
    daa
    dec b
    db $db
    jr z, jr_03b_7929

    db $d3

jr_03b_7929:
    daa
    dec b
    sub $24
    ld b, $db
    jr z, jr_03b_7932

    db $d3

jr_03b_7932:
    daa
    dec bc
    db $db
    jr z, jr_03b_7938

    db $d3

jr_03b_7938:
    daa
    dec b
    db $db
    jr z, jr_03b_793e

    db $d3

jr_03b_793e:
    daa
    dec b
    inc h
    inc c
    db $db
    jr z, jr_03b_7946

    db $d3

jr_03b_7946:
    daa
    dec b
    db $db
    jr z, jr_03b_794c

    db $d3

jr_03b_794c:
    daa
    dec b
    inc h
    ld b, $db
    jr z, jr_03b_7954

    db $d3

jr_03b_7954:
    daa
    dec b
    db $db
    jr z, jr_03b_795a

    db $d3

jr_03b_795a:
    daa
    dec b
    db $db
    jr z, jr_03b_7960

    db $d3

jr_03b_7960:
    daa
    dec b
    db $db
    jr z, jr_03b_7966

    db $d3

jr_03b_7966:
    daa
    dec b
    db $db
    jr z, jr_03b_796c

    db $d3

jr_03b_796c:
    daa
    dec b
    db $db
    jr z, jr_03b_7972

    db $d3

jr_03b_7972:
    daa
    dec b
    db $db
    jr z, jr_03b_7978

    db $d3

jr_03b_7978:
    daa
    dec b
    db $db
    jr z, jr_03b_797e

    db $d3

jr_03b_797e:
    daa
    dec b
    db $db
    jr z, jr_03b_7984

    db $d3

jr_03b_7984:
    daa
    dec b
    db $db
    jr z, jr_03b_798a

    db $d3

jr_03b_798a:
    daa
    dec b
    db $db
    jr z, jr_03b_7990

    db $d3

jr_03b_7990:
    daa
    dec b
    db $db
    jr z, jr_03b_7996

    db $d3

jr_03b_7996:
    daa
    dec b
    db $db
    jr z, jr_03b_799c

    db $d3

jr_03b_799c:
    daa
    dec b
    db $db
    jr z, jr_03b_79a2

    db $d3

jr_03b_79a2:
    daa
    dec b
    inc h
    ld b, $db
    jr z, jr_03b_79aa

    db $d3

jr_03b_79aa:
    daa
    dec bc
    db $db
    jr z, jr_03b_79b0

    db $d3

jr_03b_79b0:
    daa
    dec b
    db $db
    jr z, jr_03b_79b6

    db $d3

jr_03b_79b6:
    daa
    dec b
    inc h
    ld b, $db
    jr z, jr_03b_79be

    db $d3

jr_03b_79be:
    daa
    dec b
    db $db
    jr z, jr_03b_79c4

    db $d3

jr_03b_79c4:
    daa
    dec b
    db $db
    jr z, jr_03b_79ca

    db $d3

jr_03b_79ca:
    daa
    dec b
    db $db
    jr z, jr_03b_79d0

    db $d3

jr_03b_79d0:
    daa
    dec b
    inc h
    ld b, $db
    jr z, jr_03b_79d8

    db $d3

jr_03b_79d8:
    daa
    dec b
    db $db
    jr z, jr_03b_79de

    db $d3

jr_03b_79de:
    daa
    dec bc
    db $db
    jr z, jr_03b_79e4

    db $d3

jr_03b_79e4:
    daa
    dec b
    db $db
    jr z, jr_03b_79ea

    db $d3

jr_03b_79ea:
    daa
    dec b
    db $db
    jr z, jr_03b_79f0

    db $d3

jr_03b_79f0:
    daa
    dec b
    db $db
    jr z, jr_03b_79f6

    db $d3

jr_03b_79f6:
    daa
    dec b
    db $db
    jr z, jr_03b_79fc

    db $d3

jr_03b_79fc:
    daa
    dec b
    db $db
    jr z, jr_03b_7a02

    db $d3

jr_03b_7a02:
    daa
    dec b
    db $db
    jr z, jr_03b_7a08

    db $d3

jr_03b_7a08:
    daa
    dec b
    db $db
    jr z, jr_03b_7a0e

    db $d3

jr_03b_7a0e:
    daa
    dec b
    db $db
    jr z, jr_03b_7a14

    db $d3

jr_03b_7a14:
    daa
    dec b
    db $db
    jr z, jr_03b_7a1a

    db $d3

jr_03b_7a1a:
    daa
    dec b
    db $db
    jr z, jr_03b_7a20

    db $d3

jr_03b_7a20:
    daa
    dec b
    db $db
    jr z, jr_03b_7a26

    db $d3

jr_03b_7a26:
    daa
    dec b
    db $db
    jr z, jr_03b_7a2c

    db $d3

jr_03b_7a2c:
    daa
    dec b
    db $db
    jr z, jr_03b_7a32

    db $d3

jr_03b_7a32:
    daa
    dec b
    cp $03
    ld [hl], a
    rst $38
    ld sp, hl
    nop
    ldh [rP1], a
    or $02
    sub $40
    ld [$083e], sp
    ld a, [hl-]
    ld [$0839], sp
    ldh [$03], a
    dec [hl]
    db $10
    ldh [rP1], a
    sub $34
    ld [$35d3], sp
    ld [$35d6], sp
    ld [$34d3], sp
    ld [$39d6], sp
    ld [$35d3], sp
    ld [$3ad6], sp
    ld [$39d3], sp
    ld [$3ad6], sp
    ld [$083e], sp
    ld b, b
    ld [$083e], sp
    ld a, [hl-]
    ld [$0839], sp
    ldh [$03], a
    dec [hl]
    db $10
    ldh [rP1], a
    sub $34
    ld [$35d3], sp
    ld [$35d6], sp
    ld [$34d3], sp
    ld [$39d6], sp
    ld [$35d3], sp
    ld [$3ad6], sp
    ld [$39d3], sp
    ld [$3ad6], sp
    ld [$083e], sp
    ld b, b
    ld [$083a], sp
    add hl, sp
    ld [$0835], sp
    ldh [$03], a
    inc [hl]
    db $10
    ldh [rP1], a
    sub $32
    ld [$34d3], sp
    ld [$34d6], sp
    ld [$32d3], sp
    ld [$39d6], sp
    ld [$34d3], sp
    ld [$3ad6], sp
    ld [$39d3], sp
    ld [$3ad6], sp
    ld [$083e], sp
    sub $40
    ld [$083a], sp
    add hl, sp
    ld [$0835], sp
    ldh [$03], a
    inc [hl]
    db $10
    ldh [rP1], a
    sub $32
    ld [$34d3], sp
    ld [$34d6], sp
    ld [$32d3], sp
    ld [$39d6], sp
    ld [$34d3], sp
    ld [$3ad6], sp
    ld [$39d3], sp
    ld [$3ad6], sp
    ld [$083e], sp
    sub $40
    ld [$083e], sp
    ld a, [hl-]
    ld [$0839], sp
    ldh [$03], a
    dec [hl]
    db $10
    ldh [rP1], a
    sub $34
    ld [$35d3], sp
    ld [$35d6], sp
    ld [$34d3], sp
    ld [$39d6], sp
    ld [$35d3], sp
    ld [$3ad6], sp
    ld [$39d3], sp
    ld [$3ad6], sp
    ld [$083e], sp
    ld b, b
    ld [$083e], sp
    ld a, [hl-]
    ld [$0839], sp
    ldh [$03], a
    dec [hl]
    db $10
    ldh [rP1], a
    sub $34
    ld [$35d3], sp
    ld [$35d6], sp
    ld [$34d3], sp
    ld [$39d6], sp
    ld [$35d3], sp
    ld [$3ad6], sp
    ld [$0839], sp
    ld a, [hl-]
    ld [$083e], sp
    ld b, b
    ld [$083a], sp
    add hl, sp
    ld [$0835], sp
    ldh [$03], a
    inc [hl]
    db $10
    ldh [rP1], a
    sub $32
    ld [$34d3], sp
    ld [$34d6], sp
    ld [$32d3], sp
    ld [$39d6], sp
    ld [$34d3], sp
    ld [$3ad6], sp
    ld [$0839], sp
    ld a, [hl-]
    ld [$083e], sp
    sub $40
    ld [$083a], sp
    add hl, sp
    ld [$0835], sp
    ldh [$03], a
    inc [hl]
    db $10
    ldh [rP1], a
    sub $32
    ld [$34d3], sp
    ld [$34d6], sp
    ld [$32d3], sp
    ld [$39d6], sp
    ld [$34d3], sp
    ld [$3ad6], sp
    ld [$0839], sp
    ld a, [hl-]
    ld [$083e], sp
    sub $3e
    ld [$0839], sp
    scf
    ld [$0834], sp
    ldh [$03], a
    ld [hl-], a
    db $10
    ldh [rP1], a
    sub $30
    ld [$32d3], sp
    ld [$32d6], sp
    ld [$30d3], sp
    ld [$37d6], sp
    ld [$32d3], sp
    ld [$39d6], sp
    ld [$0837], sp
    add hl, sp
    ld [$083c], sp
    sub $3e
    ld [$0839], sp
    scf
    ld [$0834], sp
    ldh [$03], a
    ld [hl-], a
    db $10
    ldh [rP1], a
    sub $30
    ld [$32d3], sp
    ld [$32d6], sp
    ld [$30d3], sp
    ld [$37d6], sp
    ld [$32d3], sp
    ld [$39d6], sp
    ld [$0837], sp
    add hl, sp
    ld [$083c], sp
    sub $3c
    ld [$0837], sp
    ld [hl], $08
    ld [hl-], a
    ld [$03e0], sp
    jr nc, jr_03b_7c05

    ldh [rP1], a
    sub $2e
    ld [$30d3], sp
    ld [$30d6], sp
    ld [$2ed3], sp
    ld [$36d6], sp

jr_03b_7c05:
    ld [$30d3], sp
    ld [$37d6], sp
    ld [$0835], sp
    scf
    ld [$083a], sp
    sub $3a
    ld [$0835], sp
    inc sp
    ld [$082f], sp
    ldh [$03], a
    ld l, $10
    ldh [rP1], a
    sub $2c
    ld [$2ed3], sp
    ld [$2fd6], sp
    ld [$2cd3], sp
    ld [$33d6], sp
    ld [$2fd3], sp
    ld [$35d6], sp
    ld [$0833], sp
    dec [hl]
    ld [$0838], sp
    sub $37
    db $10
    ld [hl-], a
    db $10
    cpl
    db $10
    dec hl
    db $10
    cpl
    db $10
    ld [hl-], a
    db $10
    ld a, [hl-]
    db $10
    dec [hl]
    db $10
    ld [hl-], a
    db $10
    ld l, $10
    ld [hl-], a
    db $10
    dec [hl]
    db $10
    dec a
    db $10
    jr c, jr_03b_7c69

    dec [hl]
    db $10
    ld sp, $3510
    db $10
    jr c, jr_03b_7c71

    ld b, b
    db $10
    dec sp
    db $10
    jr c, jr_03b_7c77

    inc [hl]
    db $10

jr_03b_7c69:
    jr c, jr_03b_7c7b

    dec sp
    db $10
    ld sp, hl
    nop
    ldh [$03], a

jr_03b_7c71:
    call nc, $083b
    jr c, jr_03b_7c7e

    ld a, [hl-]

jr_03b_7c77:
    ld [$0837], sp
    add hl, sp

jr_03b_7c7b:
    ld [$0836], sp

jr_03b_7c7e:
    jr c, jr_03b_7c88

    dec [hl]
    ld [$0837], sp
    inc [hl]
    ld [$0836], sp

jr_03b_7c88:
    inc sp
    ld [$0835], sp
    ld [hl-], a
    ld [$0834], sp
    ld sp, $3308
    ld [$0830], sp
    ld [hl-], a
    ld [$082f], sp
    ld sp, $2e08
    ld [$0830], sp
    dec l
    ld [$082f], sp
    inc l
    ld [$082e], sp
    ldh [rDIV], a
    dec hl
    ld c, b
    ld sp, hl
    nop
    ldh [rP1], a
    cp $3e
    ld a, d
    rst $38
    or $0c
    ld h, b
    inc c
    jp nc, $0840

    dec sp
    ld [$0839], sp
    dec [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    dec [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    dec [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    dec [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    dec [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    dec [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    dec [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    dec [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$34d0], sp
    ld bc, $40d2
    ld [$083b], sp
    add hl, sp
    ld [$0835], sp
    ld b, b
    ld [$083b], sp
    add hl, sp
    ld [$0835], sp
    ld b, b
    ld [$083b], sp
    add hl, sp
    ld [$0835], sp
    ld b, b
    ld [$083b], sp
    add hl, sp
    ld [$0835], sp
    ld b, b
    ld [$083b], sp
    add hl, sp
    ld [$0835], sp
    ld b, b
    ld [$083b], sp
    add hl, sp
    ld [$0835], sp
    ld b, b
    ld [$083b], sp
    add hl, sp
    ld [$0835], sp
    ld b, b
    ld [$083b], sp
    add hl, sp
    rlca
    dec [hl]
    ld bc, $39d0
    rlca
    jp nc, $0840

    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$0840], sp
    dec sp
    ld [$0839], sp
    inc [hl]
    ld [$3ed2], sp
    ld [$0839], sp
    scf
    ld [$0832], sp
    ld a, $08
    add hl, sp
    ld [$0837], sp
    ld [hl-], a
    ld [$083e], sp
    add hl, sp
    ld [$0837], sp
    ld [hl-], a
    ld [$083e], sp
    add hl, sp
    ld [$0837], sp
    ld [hl-], a
    ld [$083e], sp
    add hl, sp
    ld [$0837], sp
    ld [hl-], a
    ld [$083e], sp
    add hl, sp
    ld [$0837], sp
    ld [hl-], a
    ld [$083e], sp
    add hl, sp
    ld [$0837], sp
    ld [hl-], a
    ld [$083e], sp
    add hl, sp
    ld [$0837], sp
    ld [hl-], a
    ld [$3cd2], sp
    ld [$0837], sp
    ld [hl], $08
    jr nc, @+$0a

    jp nc, $083c

    scf
    ld [$0836], sp
    jr nc, jr_03b_7e1c

    inc a
    ld [$0837], sp
    ld [hl], $08
    jr nc, jr_03b_7e24

jr_03b_7e1c:
    inc a
    ld [$0837], sp
    ld [hl], $08
    jr nc, jr_03b_7e2c

jr_03b_7e24:
    ld a, [hl-]
    ld [$35d2], sp
    ld [$0833], sp
    cpl

jr_03b_7e2c:
    ld [$082e], sp
    jp nc, $083a

    jp nc, $0835

    inc sp
    ld [$082f], sp
    ld l, $08
    jp nc, $083a

    jp nc, $0835

    inc sp
    ld [$082f], sp
    ld l, $08
    call nc, $0838
    ld sp, hl
    nop
    scf
    db $10
    ld [hl-], a
    db $10
    cpl
    db $10
    dec hl
    db $10
    cpl
    db $10
    ld [hl-], a
    db $10
    ld a, [hl-]
    db $10
    dec [hl]
    db $10
    ld [hl-], a
    db $10
    ld l, $10
    ld [hl-], a
    db $10
    dec [hl]
    db $10
    call nc, $103d
    jr c, jr_03b_7e79

    dec [hl]
    db $10
    ld sp, $3510
    db $10
    jr c, @+$12

    ld b, b
    db $10
    dec sp
    db $10
    jr c, jr_03b_7e87

    inc [hl]

jr_03b_7e78:
    db $10

jr_03b_7e79:
    jr c, jr_03b_7e8b

    dec sp
    inc b
    or $0d
    inc e
    jr nz, jr_03b_7e78

    inc c
    inc e
    jr nz, @+$62

    cp a

jr_03b_7e87:
    ld h, b
    ld hl, $b4fe

jr_03b_7e8b:
    ld a, h
    rst $38
    or $02
    ret c

    ldh [rTAC], a
    db $10
    jr nc, jr_03b_7ea3

    jr nc, jr_03b_7ea7

    jr nz, jr_03b_7ea7

    jr nc, jr_03b_7eab

    jr nc, jr_03b_7eab

    jr nz, jr_03b_7eaf

    jr nc, jr_03b_7eaf

    jr nc, jr_03b_7eb3

jr_03b_7ea3:
    jr nz, jr_03b_7eb3

    jr nc, jr_03b_7eb7

jr_03b_7ea7:
    jr nc, jr_03b_7eb7

    jr nz, jr_03b_7ebb

jr_03b_7eab:
    jr nc, jr_03b_7ebb

    jr nc, jr_03b_7ebf

jr_03b_7eaf:
    jr nz, jr_03b_7ebf

    jr nc, jr_03b_7ec3

jr_03b_7eb3:
    jr nc, jr_03b_7ec3

    jr nz, jr_03b_7ec7

jr_03b_7eb7:
    jr nc, jr_03b_7ec7

    jr nc, jr_03b_7ecb

jr_03b_7ebb:
    jr nz, jr_03b_7ecb

    jr nc, jr_03b_7ecf

jr_03b_7ebf:
    jr nc, jr_03b_7ecf

    jr nz, jr_03b_7ed1

jr_03b_7ec3:
    jr nc, jr_03b_7ed1

    jr nc, @+$15

jr_03b_7ec7:
    jr nz, jr_03b_7ee1

    jr nc, jr_03b_7ee1

jr_03b_7ecb:
    jr nc, @+$1f

    jr nz, jr_03b_7ee5

jr_03b_7ecf:
    jr nc, jr_03b_7ee5

jr_03b_7ed1:
    jr nc, @+$1d

    jr nz, jr_03b_7ee9

    jr nc, jr_03b_7ee9

    jr nc, @+$1b

    jr nz, jr_03b_7ebb

    nop
    sub $13
    ld h, b
    ld d, $60

jr_03b_7ee1:
    add hl, de
    ld h, b
    inc e
    ld h, b

jr_03b_7ee5:
    call nc, $03e0
    dec hl

jr_03b_7ee9:
    ld [$082e], sp
    ld a, [hl+]
    ld [$082d], sp
    add hl, hl
    ld [$082c], sp
    jr z, jr_03b_7efe

    dec hl
    ld [$0827], sp
    ld a, [hl+]
    ld [$0826], sp

jr_03b_7efe:
    add hl, hl
    ld [$0825], sp
    jr z, jr_03b_7f0c

    inc h
    ld [$0827], sp
    inc hl
    ld [$0826], sp

jr_03b_7f0c:
    ld [hl+], a
    ld [$0825], sp
    ld hl, $2408
    ld [$0820], sp
    inc hl
    ld [$081f], sp
    ld [hl+], a
    ld [$081e], sp
    ldh [rDIV], a
    ld hl, $fe48
    adc l
    ld a, [hl]
    rst $38
    or $02
    pop hl
    nop
    db $d3
    ld hl, sp+$30
    ld a, [hl+]
    ld b, $ff
    or $02
    pop hl
    nop
    db $dd
    ld [hl], $05
    ret nc

    ld h, b
    ld bc, $3bdd
    dec b
    ret nc

    ld h, b
    ld bc, $40dd
    dec b
    rst $38
    or $02
    jp c, $02e0

    ld b, d
    ld b, $44
    ld b, $46
    ld b, $47
    ld b, $e0
    inc b
    ld c, c
    ld e, $ff
    or $02
    call c, $28f8
    inc sp
    ld [bc], a
    ld hl, sp+$00
    inc sp
    ld bc, $02f6
    sub $f9
    ld bc, $02e0
    inc sp
    inc c
    rst $38
    ldh a, [$b1]
    dec h
    ld bc, $41f0
    inc d
    ld a, [bc]
    rst $38
    or $02
    push de
    ld a, $01
    ld c, d
    inc b
    rst $38
    or $02
    call c, $e8f8
    ld l, $05
    ld hl, sp+$00
    ret nc

    ld h, b
    inc c
    call c, $01e0
    ld hl, sp-$1a
    ld a, [hl+]
    ld [$00f8], sp
    call c, $01e0
    ld hl, sp-$12
    ld a, [hl+]
    ld b, $f8
    nop
    ret nc

    ld h, b
    inc bc
    db $dd
    ldh [rSB], a
    ld hl, sp-$22
    inc hl
    rrca
    ld hl, sp+$00
    ret nc

    ld h, b
    dec bc
    db $dd
    ldh [rSB], a
    ld hl, sp-$22
    inc hl
    rrca
    rst $38
    or $02
    db $db
    ldh [rSC], a
    ld hl, sp+$0f
    inc h
    inc de
    rst $38
    or $02
    db $db
    jr nc, @+$04

    jp c, $0232

    reti


    inc [hl]
    ld [bc], a
    ret c

    ld [hl], $02
    scf
    ld [bc], a
    rst $10
    ld a, [hl-]
    ld [bc], a
    rst $10
    jr nc, jr_03b_7fd3

    sub $36

jr_03b_7fd3:
    ld [bc], a
    jr c, jr_03b_7fd8

    ld a, [hl-]
    ld [bc], a

jr_03b_7fd8:
    push de
    jr nc, jr_03b_7fdd

    ld [hl], $02

jr_03b_7fdd:
    jr c, @+$04

    call nc, $023a
    jr nc, @+$04

    db $d3
    ld [hl], $02
    jr c, @+$04

    jp nc, $023a

    jr nc, @+$04

    pop de
    ld [hl], $02
    jr c, jr_03b_7ff5

    ld a, [hl-]
    ld [bc], a

jr_03b_7ff5:
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

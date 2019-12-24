; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX

    ld [bc], a
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld [bc], a
    ld [$0200], sp
    jr nz, jr_012_4017

    ld [$2000], sp
    ld [bc], a
    ld [$0000], sp
    ld b, b

jr_012_4017:
    ld [$0208], sp
    ld b, b
    ld [bc], a
    ld [$0200], sp
    ld h, b
    ld [$0008], sp
    ld h, b
    ld [bc], a
    ld [$0000], sp
    nop
    ld [$0008], sp
    jr nz, @+$04

    ld [$0000], sp
    ld b, b
    ld [$0008], sp
    ld h, b
    ld bc, $0408
    nop
    nop
    ld bc, $0408
    nop
    ld b, b
    ld [bc], a
    dec b
    nop
    nop
    nop
    dec b
    ld [$0002], sp
    ld [bc], a
    ld [$0203], sp
    jr nz, jr_012_4057

    dec bc
    nop
    jr nz, jr_012_4055

    dec bc
    nop

jr_012_4055:
    nop
    nop

jr_012_4057:
    dec bc
    ld [$0002], sp
    ld [bc], a
    ld [$00fd], sp
    nop
    ld [$0205], sp
    nop
    ld [bc], a
    ld a, [bc]
    nop
    nop
    nop
    ld a, [bc]
    ld [$2000], sp
    ld [bc], a
    ld [$02fc], sp
    jr nz, jr_012_407b

    inc b
    nop
    jr nz, jr_012_4079

    rlca
    nop

jr_012_4079:
    nop
    nop

jr_012_407b:
    rlca
    ld [$2000], sp
    ld [bc], a
    ld [$0004], sp
    nop
    ld [$020c], sp
    nop
    ld [bc], a
    inc c
    nop
    nop
    nop
    inc c
    ld [$0002], sp
    ld [bc], a
    inc c
    nop
    ld [bc], a
    jr nz, jr_012_40a3

    ld [$2000], sp
    ld [bc], a
    inc c
    nop
    nop
    nop
    inc c
    ld [$2000], sp

jr_012_40a3:
    ld [de], a
    ld hl, sp-$10
    nop
    dec b
    ld hl, sp-$08
    ld [bc], a
    dec b
    ld hl, sp+$00
    inc b
    dec b
    ld [$06f0], sp
    dec b
    ld [$08f8], sp
    dec b
    ld [$0a00], sp
    dec b
    ld hl, sp+$18
    nop
    dec h
    ld hl, sp+$10

jr_012_40c2:
    ld [bc], a
    dec h
    ld hl, sp+$08
    inc b
    dec h
    ld [$0618], sp
    dec h
    ld [$0810], sp
    dec h
    jr jr_012_40c2

    nop
    ld b, l
    jr @-$06

    ld [bc], a
    ld b, l
    jr jr_012_40da

jr_012_40da:
    inc b
    ld b, l
    jr @+$1a

    nop
    ld h, l
    jr @+$12

    ld [bc], a
    ld h, l
    jr jr_012_40ee

    inc b
    ld h, l
    ld [$0a08], sp
    dec b
    ld c, $f8

jr_012_40ee:
    ld hl, sp+$0c
    dec b
    ld hl, sp+$00
    ld c, $05
    ld [$10f0], sp
    dec b
    ld [$12f8], sp
    dec b
    ld [$0a00], sp
    dec b
    ld hl, sp+$10
    inc c
    dec h
    ld hl, sp+$08
    ld c, $25
    ld [$1018], sp
    dec h
    ld [$1210], sp
    dec h
    ld [$0a08], sp
    dec h
    jr @-$06

    inc c
    ld b, l
    jr jr_012_411b

jr_012_411b:
    ld c, $45
    jr jr_012_412f

    inc c
    ld h, l
    jr jr_012_412b

    ld c, $65
    ld bc, $0408
    nop
    jr nz, jr_012_412c

jr_012_412b:
    inc b

jr_012_412c:
    inc b
    nop
    nop

jr_012_412f:
    ld bc, $0400
    nop
    nop
    ld bc, $0400
    nop
    jr nz, @+$03

    ld [$0003], sp
    nop
    ld bc, $0508
    nop
    jr nz, jr_012_4146

    add hl, bc
    nop

jr_012_4146:
    ld [bc], a
    jr nz, jr_012_4152

    ld [$2000], sp
    ld [bc], a
    add hl, bc
    nop
    nop
    nop
    add hl, bc

jr_012_4152:
    ld [$0002], sp
    ld [bc], a
    ld b, $00
    ld [bc], a
    jr nz, jr_012_4161

    ld [$2000], sp
    ld [bc], a
    ld b, $00

jr_012_4161:
    nop
    nop
    ld b, $08
    ld [bc], a
    nop
    ld [bc], a
    ld [$00ff], sp
    nop
    ld [$0207], sp
    nop
    ld [bc], a
    inc b
    nop
    nop
    nop
    inc b
    ld [$0002], sp
    ld [bc], a
    cp $00  ; and a / or a
    nop
    nop
    cp $08
    ld [bc], a
    nop
    ld [bc], a
    rst $38
    nop
    nop
    nop
    rst $38
    ld [$0002], sp
    ld [bc], a
    inc b
    nop
    ld [bc], a
    jr nz, jr_012_4195

    ld [$2000], sp
    ld [bc], a

jr_012_4195:
    inc bc
    nop
    ld [bc], a
    jr nz, jr_012_419d

    ld [$2000], sp

jr_012_419d:
    ld [bc], a
    inc bc
    nop
    nop
    nop
    inc bc
    ld [$0002], sp
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [$0002], sp
    ld [bc], a
    ld a, [bc]
    nop
    nop
    nop
    ld a, [bc]
    ld [$0002], sp
    ld [bc], a
    dec b
    nop
    nop
    nop
    dec b
    ld [$0002], sp
    ld [bc], a
    inc c
    ld bc, $0000
    inc c
    add hl, bc
    ld [bc], a
    nop
    ld [bc], a
    inc c
    rst $38
    ld [bc], a
    jr nz, jr_012_41dc

    rlca
    nop
    jr nz, @+$03

    ld [$0000], sp
    nop
    ld bc, $0808
    nop

jr_012_41dc:
    jr nz, jr_012_41e0

    nop
    inc b

jr_012_41e0:
    nop
    nop
    db $10
    inc b
    ld [bc], a
    nop
    inc bc
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld [$04fc], sp
    ld [bc], a
    inc bc
    ld [$0200], sp
    jr nz, jr_012_4201

    ld [$2000], sp
    ld [$040c], sp
    ld [hli], a
    inc b

jr_012_4201:
    nop
    nop
    ld [$0002], sp
    ld [$020a], sp
    stop
    nop
    ld [bc], a
    db $10
    ld [$0202], sp
    inc b
    nop
    nop
    ld a, [bc]
    ld [hli], a
    nop
    ld [$2208], sp
    stop
    ld [bc], a
    ld [hli], a
    db $10
    ld [$2200], sp
    inc b
    ld [bc], a
    nop
    ld a, [bc]
    ld [hli], a
    ld [bc], a
    ld [$2208], sp
    ld [de], a
    nop
    nop
    ld [bc], a
    ld [de], a
    ld [$0202], sp
    inc b
    inc bc
    nop
    ld a, [bc]
    ld [hli], a
    inc bc
    ld [$2208], sp
    inc de
    nop
    nop
    ld [bc], a
    inc de
    ld [$0202], sp
    inc b
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [$0202], sp
    stop
    inc b
    ld [bc], a
    db $10
    ld [$0206], sp
    inc b
    nop
    ld bc, $0200
    nop
    add hl, bc
    ld [bc], a
    ld [bc], a
    db $10
    cp $04
    ld [bc], a
    db $10
    ld b, $06
    ld [bc], a
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    ld [$0206], sp
    stop
    nop
    ld [bc], a
    db $10
    ld [$0202], sp
    inc b
    nop
    nop
    ld b, $22
    nop
    ld [$2204], sp
    stop
    ld [bc], a
    ld [hli], a
    db $10
    ld [$2200], sp
    inc b
    inc b
    nop
    ld b, $22
    inc b
    ld [$2204], sp
    inc d
    nop
    nop
    ld [bc], a
    inc d
    ld [$0202], sp
    inc b
    inc bc
    nop
    ld b, $22
    inc bc
    ld [$2204], sp
    inc de
    nop
    nop
    ld [bc], a
    inc de
    ld [$0202], sp
    inc b
    inc b
    ld [$0206], sp
    inc b
    nop
    inc b
    ld [bc], a
    inc d
    ld [$2200], sp
    inc d
    nop
    ld [bc], a
    ld [hli], a
    inc b
    inc bc
    ld [$0206], sp
    inc bc
    nop
    inc b
    ld [bc], a
    inc de
    ld [$2200], sp
    inc de
    nop
    ld [bc], a
    ld [hli], a
    dec b
    ld [$00fc], sp
    ld [bc], a
    ld [$0204], sp
    ld [bc], a
    rlca
    inc c
    inc b
    ld [bc], a
    jr @+$05

    ld b, $02
    jr jr_012_42ea

    ld [$0502], sp
    ld a, [bc]
    db $fc
    nop
    ld [bc], a
    ld a, [bc]
    inc b
    ld [bc], a
    ld [bc], a

jr_012_42ea:
    add hl, bc
    inc c
    inc b
    ld [bc], a
    jr jr_012_42f2

    ld b, $02

jr_012_42f2:
    jr @+$0c

    ld [$0502], sp
    dec d
    inc bc
    ld b, $02
    dec d
    dec bc
    ld [$0802], sp
    db $fc
    nop
    ld [bc], a
    ld [$0204], sp
    ld [bc], a
    rlca
    inc c
    inc b
    ld [bc], a
    dec b
    ld [$000c], sp
    ld [hli], a
    ld [$0204], sp
    ld [hli], a
    rlca
    db $fc
    inc b
    ld [hli], a
    jr @+$07

    ld b, $22
    jr @-$01

    ld [$0522], sp
    ld a, [bc]
    inc c
    nop
    ld [hli], a
    ld a, [bc]
    inc b
    ld [bc], a
    ld [hli], a
    add hl, bc
    db $fc
    inc b
    ld [hli], a
    jr @+$08

    ld b, $22

jr_012_4331:
    jr jr_012_4331

    ld [$0522], sp
    dec d
    dec b
    ld b, $22
    dec d
    db $fd
    ld [$0822], sp
    inc c
    nop
    ld [hli], a
    ld [$0204], sp
    ld [hli], a
    rlca
    db $fc
    inc b
    ld [hli], a
    inc b
    ld a, [$0001]
    ld [bc], a
    ld a, [$0209]
    ld [bc], a
    ld a, [bc]
    nop
    inc b
    ld [bc], a
    ld a, [bc]
    ld [$0206], sp
    inc b
    ld a, [$0201]
    ld [hli], a
    ld a, [$0009]
    ld [hli], a
    ld a, [bc]
    nop
    inc b
    ld [bc], a
    ld a, [bc]
    ld [$0206], sp
    dec b
    ld a, [$0000]
    ld [bc], a
    ld a, [$0208]
    ld [bc], a
    ld a, [bc]
    ld hl, sp+$06
    ld [bc], a
    ld a, [bc]
    nop
    ld [$0a02], sp
    ld [$020a], sp
    dec b
    ld sp, hl
    nop
    nop
    ld [bc], a
    ld sp, hl
    ld [$0204], sp
    add hl, bc
    ld hl, sp+$06
    ld [bc], a
    add hl, bc
    nop
    ld [$0902], sp
    ld [$020a], sp
    dec b
    ld a, [$0008]
    ld [hli], a
    ld a, [$0200]
    ld [hli], a
    ld a, [bc]
    db $10
    ld b, $22
    ld a, [bc]
    ld [$2208], sp
    ld a, [bc]
    nop
    ld a, [bc]
    ld [hli], a
    dec b
    ld sp, hl
    ld [$2200], sp
    ld sp, hl
    nop
    inc b
    ld [hli], a
    add hl, bc
    db $10
    ld b, $22
    add hl, bc
    ld [$2208], sp
    add hl, bc
    nop
    ld a, [bc]
    ld [hli], a
    dec b
    ld a, [$0600]
    ld [bc], a
    ld a, [$0808]
    ld [bc], a
    ld a, [bc]
    nop
    nop
    ld [bc], a
    ld a, [bc]
    ld [$0202], sp
    ld a, [bc]
    db $10
    inc b
    ld [bc], a
    ld b, $f9
    db $fc
    nop
    ld [bc], a
    ld sp, hl
    inc b
    ld [bc], a
    ld [bc], a
    ld sp, hl
    inc c
    inc b
    ld [bc], a
    add hl, bc
    cp $06
    ld [bc], a
    add hl, bc
    ld b, $08
    ld [bc], a
    add hl, bc
    ld c, $0a
    ld [bc], a
    dec b
    ld [$04fc], sp
    ld [bc], a
    ld [$0604], sp
    ld [bc], a
    rlca
    inc c
    ld [$fd02], sp
    di
    nop
    ld [bc], a
    db $fd
    ei
    ld [bc], a
    ld [bc], a
    dec b
    ld a, [bc]
    db $fc
    inc b
    ld [bc], a
    ld a, [bc]
    inc b
    ld b, $02
    add hl, bc
    inc c
    ld [$0502], sp
    or $00
    ld [bc], a
    dec b
    cp $02
    ld [bc], a
    dec b
    ld [$04fc], sp
    ld [bc], a
    ld [$0604], sp
    ld [bc], a
    rlca
    inc c
    ld [$0502], sp
    db $f4
    nop
    ld [bc], a
    dec b
    db $fc
    ld [bc], a
    ld [bc], a
    dec b
    ld [$040c], sp
    ld [hli], a
    ld [$0604], sp
    ld [hli], a
    rlca
    db $fc
    ld [$fd22], sp
    dec d
    nop
    ld [hli], a
    db $fd
    dec c
    ld [bc], a
    ld [hli], a
    dec b
    ld a, [bc]
    inc c
    inc b
    ld [hli], a
    ld a, [bc]
    inc b
    ld b, $22
    add hl, bc
    db $fc
    ld [$0522], sp
    ld [de], a
    nop
    ld [hli], a
    dec b
    ld a, [bc]
    ld [bc], a
    ld [hli], a
    dec b
    ld [$040c], sp
    ld [hli], a
    ld [$0604], sp
    ld [hli], a
    rlca
    db $fc
    ld [$0522], sp
    inc d
    nop
    ld [hli], a
    dec b
    inc c
    ld [bc], a
    ld [hli], a
    inc b
    ld a, [$0000]
    ld [bc], a
    ld a, [$0208]
    ld [bc], a
    ld a, [bc]
    nop
    inc b
    ld bc, $080a
    inc b
    ld hl, $fa04
    nop
    ld [bc], a
    ld [hli], a
    ld a, [$0008]
    ld [hli], a
    ld a, [bc]
    nop
    inc b
    ld bc, $080a
    inc b
    ld hl, $f804
    nop
    nop
    ld [bc], a
    ld hl, sp+$08
    ld [bc], a
    ld [bc], a
    ld [$0800], sp
    ld bc, $0808
    ld [$0421], sp
    ld hl, sp+$00
    ld [bc], a
    ld [hli], a
    ld hl, sp+$08
    nop
    ld [hli], a
    ld [$0800], sp
    ld bc, $0808
    ld [$0421], sp
    ld a, [$0200]
    ld [hli], a
    ld a, [$0008]
    ld [hli], a
    ld a, [bc]
    nop
    inc b
    ld bc, $080a
    ld b, $01
    inc b
    ld sp, hl
    nop
    ld [bc], a
    ld [hli], a
    ld sp, hl
    ld [$2200], sp
    add hl, bc
    nop
    inc b
    ld bc, $0809
    ld b, $01
    inc b
    ld a, [$0208]
    ld [bc], a
    ld a, [$0000]
    ld [bc], a
    ld a, [bc]
    ld [$2104], sp
    ld a, [bc]
    nop
    ld b, $21
    inc b
    ld sp, hl
    ld [$0202], sp
    ld sp, hl
    nop
    nop
    ld [bc], a
    add hl, bc
    ld [$2104], sp
    add hl, bc
    nop
    ld b, $21
    dec b
    ld a, [$0000]
    ld [bc], a
    ld a, [$0208]
    ld [bc], a
    ld a, [bc]
    nop
    inc b
    ld bc, $080a
    inc b
    ld hl, $0418
    ld b, $03
    dec b
    ld a, [$0000]
    ld [bc], a
    ld a, [$0208]
    ld [bc], a
    ld a, [bc]
    nop
    inc b
    ld bc, $080a
    inc b
    ld hl, $0418
    ld [$0503], sp
    ld a, [$0000]
    ld [bc], a
    ld a, [$0208]
    ld [bc], a
    ld a, [bc]
    nop
    inc b
    ld bc, $080a
    inc b
    ld hl, $0418
    ld a, [bc]
    inc bc
    inc b
    ld a, [bc]
    nop
    inc b
    ld bc, $080a
    ld b, $01
    ld [bc], a
    ld [$0200], sp
    ld bc, $0210
    ld [bc], a
    inc b
    ld bc, $00ff
    ld [bc], a
    ld bc, $0207
    ld [bc], a
    ld a, [bc]
    nop
    inc b
    ld bc, $080a
    ld b, $01
    inc b
    ld a, [bc]
    ld [$2104], sp
    ld a, [bc]
    nop
    ld b, $21
    ld [bc], a
    nop
    nop
    ld [hli], a
    ld bc, $02f8
    ld [hli], a
    inc b
    ld bc, $0009
    ld [hli], a
    ld bc, $0201
    ld [hli], a
    ld a, [bc]
    ld [$2104], sp
    ld a, [bc]
    nop
    ld b, $21
    inc b
    cp $09
    nop
    ld [hli], a
    cp $01
    ld [bc], a
    ld [hli], a
    rlca
    ld [$2104], sp
    rlca
    nop
    ld b, $21
    nop
    ld bc, $0408
    nop
    nop
    ld [bc], a
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    inc bc
    ld b, $fd
    nop
    nop
    ld b, $05
    ld [bc], a
    nop
    ld b, $0d
    inc b
    nop
    inc bc
    ld b, $fd
    inc b
    jr nz, jr_012_45b0

    dec b
    ld [bc], a
    jr nz, jr_012_45b4

    dec c
    nop

jr_012_45b0:
    jr nz, jr_012_45b5

    ld b, $fd

jr_012_45b4:
    nop

jr_012_45b5:
    ld [bc], a
    ld b, $05
    ld [bc], a
    ld [bc], a
    ld b, $0d
    nop
    ld [hli], a
    dec b
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    ld [$04fc], sp
    nop
    ld [$0604], sp
    nop
    ld [$040c], sp
    jr nz, jr_012_45da

    ld hl, sp-$04
    nop
    nop
    ld hl, sp+$04

jr_012_45da:
    ld [bc], a
    nop
    ld hl, sp+$0c
    inc b
    nop
    ld [$06fc], sp
    nop
    ld [$0804], sp
    nop
    ld [$060c], sp
    jr nz, jr_012_45f3

    ld hl, sp-$04
    nop
    nop
    ld hl, sp+$04

jr_012_45f3:
    ld [bc], a
    nop
    ld hl, sp+$0c
    nop
    jr nz, @+$0a

    db $fc
    inc b
    nop
    ld [$0604], sp
    nop
    ld [$040c], sp
    jr nz, jr_012_460c

    nop
    db $fc
    nop
    nop
    nop
    inc b

jr_012_460c:
    ld [bc], a
    nop
    nop
    inc c
    inc b
    nop
    db $10
    db $fc
    ld b, $00
    db $10
    inc b
    ld [$1000], sp
    inc c
    ld a, [bc]
    nop
    ld b, $00
    db $fc
    inc b
    jr nz, jr_012_4624

jr_012_4624:
    inc b
    ld [bc], a
    jr nz, jr_012_4628

jr_012_4628:
    inc c
    nop
    jr nz, jr_012_463c

    db $fc
    ld a, [bc]
    jr nz, jr_012_4640

    inc b
    ld [$1020], sp
    inc c
    ld b, $20
    ld b, $f8
    db $fc
    nop
    nop

jr_012_463c:
    ld hl, sp+$04
    ld [bc], a
    nop

jr_012_4640:
    ld hl, sp+$0c
    inc b
    nop
    ld [$06fc], sp
    nop
    ld [$0804], sp
    nop
    ld [$0a0c], sp
    nop
    ld b, $f8

jr_012_4652:
    inc c
    nop
    jr nz, @-$06

    inc b
    ld [bc], a
    jr nz, jr_012_4652

    db $fc
    inc b
    jr nz, jr_012_4666

    inc c
    ld b, $20
    ld [$0804], sp
    jr nz, jr_012_466e

jr_012_4666:
    db $fc
    ld a, [bc]
    jr nz, jr_012_4670

    ld hl, sp+$02
    nop
    nop

jr_012_466e:
    ld hl, sp+$0a

jr_012_4670:
    ld [bc], a
    nop
    ld [$04fc], sp
    nop
    ld [$0604], sp
    nop
    ld [$080c], sp
    nop
    ld hl, sp-$06
    ld a, [bc]
    nop
    ld b, $f8
    ld c, $0a
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp+$04
    ld [bc], a
    nop
    ld [$04fc], sp
    nop
    ld [$0604], sp
    nop
    ld [$080c], sp
    nop
    ld b, $f8
    db $fc
    nop
    nop
    ld hl, sp+$04
    ld [bc], a
    nop
    ld hl, sp+$0c
    inc b
    nop
    ld [$06fc], sp
    nop
    ld [$0804], sp
    nop
    ld [$0a0c], sp
    nop
    ld b, $f8

jr_012_46b6:
    inc c
    nop
    jr nz, @-$06

    inc b
    ld [bc], a
    jr nz, jr_012_46b6

    db $fc
    inc b
    jr nz, jr_012_46ca

    inc c
    ld b, $20
    ld [$0804], sp
    jr nz, jr_012_46d2

jr_012_46ca:
    db $fc
    ld a, [bc]
    jr nz, jr_012_46d4

    ld hl, sp-$04
    nop
    nop

jr_012_46d2:
    ld hl, sp+$04

jr_012_46d4:
    ld [bc], a
    nop
    ld hl, sp+$0c
    inc b
    nop
    ld [$06fc], sp
    nop
    ld [$0804], sp
    nop
    ld [$0a0c], sp
    nop
    ld b, $f8

jr_012_46e8:
    inc c
    nop
    jr nz, @-$06

    inc b
    ld [bc], a
    jr nz, jr_012_46e8

    db $fc
    inc b
    jr nz, jr_012_46fc

    inc c
    ld b, $20
    ld [$0804], sp
    jr nz, jr_012_4704

jr_012_46fc:
    db $fc
    ld a, [bc]
    jr nz, jr_012_4707

    ldh a, [$f8]
    nop
    nop

jr_012_4704:
    ld hl, sp+$00
    ld [bc], a

jr_012_4707:
    nop
    nop
    ld [$0004], sp
    nop
    ld hl, sp+$06
    nop
    ld [$0800], sp
    nop
    db $10
    ld [$000a], sp
    ld [$0c10], sp
    nop
    rlca
    ldh a, [rNR10]
    nop
    jr nz, @-$06

    ld [$2002], sp
    nop
    nop
    inc b
    jr nz, jr_012_472a

jr_012_472a:
    db $10
    ld b, $20
    ld [$0808], sp
    jr nz, jr_012_4742

    nop
    ld a, [bc]
    jr nz, jr_012_473e

    ld hl, sp+$0c
    jr nz, jr_012_4741

    ldh a, [$fa]
    nop
    nop

jr_012_473e:
    ld hl, sp+$02
    ld [bc], a

jr_012_4741:
    nop

jr_012_4742:
    nop
    ld a, [bc]
    inc b
    nop
    nop
    ld a, [$0006]
    db $10
    ld a, [bc]
    ld [$0800], sp
    ld [de], a
    ld a, [bc]
    nop
    ld [$0c02], sp
    nop
    rlca
    ldh a, [$f8]
    nop
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    nop
    ld [$0004], sp
    nop
    ld hl, sp+$06
    nop
    db $10
    ld [$0008], sp
    ld [$0a10], sp
    nop
    ld [$0c00], sp
    nop
    rlca
    ld hl, sp-$05
    nop
    nop
    ld hl, sp+$03
    ld [bc], a
    nop
    ld [$04fb], sp
    nop
    ld [$0603], sp
    nop
    db $fc
    di
    ld [$0800], sp
    dec bc
    ld a, [bc]
    nop
    ld [$0c13], sp
    nop
    rlca
    ldh a, [$0e]
    nop
    jr nz, @-$06

    ld b, $02
    jr nz, jr_012_479a

jr_012_479a:
    cp $04
    jr nz, jr_012_479e

jr_012_479e:
    ld c, $06
    jr nz, @+$12

    cp $08
    jr nz, jr_012_47ae

    or $0a
    jr nz, @+$0a

    ld b, $0c
    jr nz, @+$09

jr_012_47ae:
    ldh a, [rNR10]
    nop
    jr nz, @-$06

    ld [$2002], sp
    nop
    nop
    inc b
    jr nz, jr_012_47bb

jr_012_47bb:
    db $10
    ld b, $20
    stop
    ld [$0820], sp
    ld hl, sp+$0a
    jr nz, @+$0a

    ld [$200c], sp
    rlca
    ld hl, sp+$0d
    nop
    jr nz, @-$06

    dec b
    ld [bc], a
    jr nz, jr_012_47dc

    dec c
    inc b
    jr nz, jr_012_47e0

    dec b
    ld b, $20
    db $fc

jr_012_47dc:
    dec d
    ld [$0820], sp

jr_012_47e0:
    db $fd
    ld a, [bc]
    jr nz, jr_012_47ec

    push af
    inc c
    jr nz, jr_012_47ef

    ld a, [c]
    db $fd
    ld a, [bc]
    nop

jr_012_47ec:
    ld hl, sp+$02
    nop

jr_012_47ef:
    nop
    ld hl, sp+$0a
    ld [bc], a
    nop
    ld [$04fc], sp
    nop
    ld [$0604], sp
    nop
    ld [$080c], sp
    nop
    inc bc
    ei

jr_012_4802:
    ld a, [bc]
    nop
    rlca
    ld hl, sp-$08
    inc c
    jr nz, jr_012_4802

    ld [$2000], sp
    ld hl, sp+$00
    ld [bc], a
    jr nz, @+$0a

    db $10
    inc b
    jr nz, jr_012_481e

    ld [$2006], sp
    ld [$0800], sp
    jr nz, jr_012_4826

jr_012_481e:
    ld hl, sp+$0a
    jr nz, jr_012_4829

    ld a, [c]
    dec bc
    ld a, [bc]
    nop

jr_012_4826:
    ld hl, sp-$04
    nop

jr_012_4829:
    nop
    ld hl, sp+$04
    ld [bc], a
    nop
    ld [$04fc], sp
    nop
    ld [$0604], sp
    nop
    ld [$080c], sp
    nop
    db $fd
    ld c, $0a
    nop
    rlca
    ld hl, sp+$10
    inc c
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    ld [$04f8], sp
    nop
    ld [$0600], sp
    nop
    ld [$0808], sp
    nop
    ld [$0a10], sp
    nop
    rlca
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld [bc], a
    nop
    nop
    ld [$0004], sp
    ld [$06f8], sp
    nop
    ld [$0800], sp
    nop
    db $10
    ld [$000a], sp
    ld [$0c10], sp
    nop
    rlca
    ld hl, sp+$10
    nop
    jr nz, @-$06

    ld [$2002], sp
    nop
    nop
    inc b
    jr nz, jr_012_488e

    db $10
    ld b, $20
    ld [$0808], sp
    jr nz, jr_012_489e

jr_012_488e:
    nop
    ld a, [bc]
    jr nz, jr_012_489a

    ld hl, sp+$0c
    jr nz, jr_012_489e

    ei
    db $fc
    inc c
    nop

jr_012_489a:
    nop
    ld hl, sp+$0a
    nop

jr_012_489e:
    ld hl, sp+$02
    nop
    nop
    ld hl, sp+$0a
    ld [bc], a
    nop
    ld [$04fc], sp
    nop
    ld [$0604], sp
    nop
    ld [$080c], sp
    nop
    nop
    nop

jr_012_48b4:
    ld a, [bc]
    nop
    ld [$f9f2], sp
    inc c
    jr nz, jr_012_48b4

    ld [$2000], sp
    ld hl, sp+$00
    ld [bc], a
    jr nz, @+$0a

    db $10
    inc b
    jr nz, jr_012_48d0

    ld [$2006], sp
    ld [$0800], sp
    jr nz, jr_012_48d8

jr_012_48d0:
    ld hl, sp+$0a

jr_012_48d2:
    jr nz, jr_012_48d2

    rst $30
    inc c
    jr nz, jr_012_48e0

jr_012_48d8:
    db $fc
    inc c
    inc c
    nop
    nop
    db $10
    ld a, [bc]
    nop

jr_012_48e0:
    ld hl, sp-$04
    nop
    nop
    ld hl, sp+$04
    ld [bc], a
    nop
    ld [$04fc], sp
    nop
    ld [$0604], sp
    nop
    ld [$080c], sp
    nop
    nop
    ld [$000a], sp
    ld [$0ff2], sp
    inc c
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    ld [$04f8], sp
    nop
    ld [$0600], sp
    nop
    ld [$0808], sp
    nop
    ld [$0a10], sp
    nop
    cp $11
    inc c
    nop
    add hl, bc
    ei

jr_012_491b:
    ld hl, sp+$0e
    jr nz, jr_012_491f

jr_012_491f:
    db $f4
    inc c
    jr nz, jr_012_491b

    ld [$2000], sp
    ld hl, sp+$00
    ld [bc], a
    jr nz, @+$0a

    db $10
    inc b
    jr nz, jr_012_4937

    ld [$2006], sp
    ld [$0800], sp
    jr nz, jr_012_493f

jr_012_4937:
    ld hl, sp+$0a
    jr nz, jr_012_493b

jr_012_493b:
    db $fc
    inc c
    jr nz, @+$0b

jr_012_493f:
    ei
    db $10
    ld c, $00
    nop
    inc d
    inc c
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$08
    ld [bc], a
    nop
    ld [$04f8], sp
    nop
    ld [$0600], sp
    nop
    ld [$0808], sp
    nop
    ld [$0a10], sp
    nop
    ldh a, [$0c]
    inc c
    nop
    inc b
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$07
    nop
    jr nz, jr_012_4975

    nop
    ld [bc], a
    nop
    ld [$0408], sp
    nop
    inc b

jr_012_4975:
    ld hl, sp+$08
    nop
    jr nz, @-$06

    ld bc, $0000
    ld [$0208], sp
    jr nz, jr_012_498a

    nop
    inc b
    jr nz, jr_012_498a

    ld [$00f8], sp
    nop

jr_012_498a:
    ld [$0200], sp
    nop
    ld [$0408], sp
    nop
    ld [$0610], sp
    nop
    dec b
    ld hl, sp-$04
    inc b
    nop
    ld [$00f8], sp
    nop
    ld [$0200], sp
    nop
    ld [$0608], sp
    nop
    ld [$0810], sp
    nop
    dec b
    ld hl, sp-$04
    nop
    nop
    ld [$02f8], sp
    nop
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    ld [$0810], sp
    nop
    inc b
    ld [$0010], sp
    jr nz, jr_012_49ce

    ld [$2002], sp
    ld [$0400], sp
    jr nz, @+$0a

jr_012_49ce:
    ld hl, sp+$06
    jr nz, jr_012_49d7

    ld hl, sp+$0c
    inc b
    jr nz, @+$0a

jr_012_49d7:
    stop
    jr nz, jr_012_49e3

    ld [$2002], sp
    ld [$0600], sp
    jr nz, @+$0a

jr_012_49e3:
    ld hl, sp+$08
    jr nz, jr_012_49ec

    ld hl, sp+$0c
    nop
    jr nz, @+$0a

jr_012_49ec:
    db $10
    ld [bc], a
    jr nz, jr_012_49f8

    ld [$2004], sp
    ld [$0600], sp
    jr nz, jr_012_4a00

jr_012_49f8:
    ld hl, sp+$08
    jr nz, @+$04

    ld [$0000], sp
    nop

jr_012_4a00:
    ld [$0007], sp
    jr nz, jr_012_4a08

    ld [$00fc], sp

jr_012_4a08:
    nop
    ld [$0204], sp
    nop
    ld [$040c], sp
    nop
    inc bc
    ld [$000c], sp
    jr nz, jr_012_4a1f

    inc b
    ld [bc], a
    jr nz, jr_012_4a23

    db $fc
    inc b
    jr nz, jr_012_4a23

jr_012_4a1f:
    ld hl, sp+$00
    ld [bc], a
    nop

jr_012_4a23:
    ld [$0000], sp
    nop
    ld hl, sp+$07
    ld [bc], a
    jr nz, jr_012_4a34

    rlca
    nop
    jr nz, jr_012_4a34

    ld hl, sp+$00
    nop
    nop

jr_012_4a34:
    ld [$0200], sp
    nop
    ld hl, sp+$07
    nop
    jr nz, jr_012_4a45

    rlca
    ld [bc], a
    jr nz, jr_012_4a45

    ld [$00f8], sp
    nop

jr_012_4a45:
    ld [$0200], sp
    nop
    ld [$0408], sp
    nop
    ld [$0610], sp
    nop
    ld [bc], a
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld bc, $0408
    nop
    nop
    ld b, $00
    ld sp, hl
    ld [$f800], sp
    ld bc, $000a
    db $10
    ld sp, hl
    inc c
    nop
    ld [$0e01], sp
    nop
    ld [$0408], sp
    nop
    ld [$0610], sp
    nop
    inc b
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld hl, sp+$00
    inc b
    nop
    ld hl, sp+$07
    inc b
    jr nz, jr_012_4a8e

    ld hl, sp+$00
    nop
    nop

jr_012_4a8e:
    ld [$0200], sp
    nop
    ld [$0408], sp
    nop
    ld hl, sp+$07
    nop
    jr nz, @+$06

    ld [$0008], sp
    jr nz, @+$0a

    nop
    ld [bc], a
    jr nz, @-$06

    ld [$2004], sp
    ld hl, sp+$01
    inc b
    nop
    inc b
    ld hl, sp+$08
    nop
    jr nz, jr_012_4ab9

jr_012_4ab1:
    ld [$2002], sp
    ld [$0400], sp
    jr nz, jr_012_4ab1

jr_012_4ab9:
    ld bc, $0000
    ld b, $00
    db $fc
    nop
    nop
    ld hl, sp+$04
    ld [bc], a
    nop
    nop
    inc c
    inc b
    nop
    db $10
    db $fc
    ld b, $00
    ld [$0804], sp
    nop
    db $10
    inc c
    ld a, [bc]
    nop
    ld b, $f8
    inc b
    ld [bc], a
    nop
    nop
    inc c
    inc b
    nop
    db $10
    db $fc
    ld b, $00
    ld [$0804], sp
    nop
    db $10
    inc c
    ld a, [bc]
    nop
    nop
    db $fc
    inc c
    nop
    ld b, $00
    db $fc
    nop
    nop
    ld hl, sp+$04
    ld [bc], a
    nop
    db $10
    db $fc
    inc b
    nop
    ld [$0604], sp
    nop
    nop
    inc c
    nop
    jr nz, jr_012_4b14

    inc c
    inc b
    jr nz, jr_012_4b0e

    ld [$00f8], sp
    nop
    nop
    nop

jr_012_4b0e:
    ld [bc], a
    nop
    ld hl, sp+$08
    inc b
    nop

jr_012_4b14:
    stop
    ld b, $00
    ld [$0808], sp
    nop
    ld [$0a10], sp
    nop
    ld b, $08
    stop
    jr nz, jr_012_4b26

jr_012_4b26:
    ld [$2002], sp
    ld hl, sp+$00
    inc b
    jr nz, jr_012_4b3e

    ld [$2006], sp
    ld [$0800], sp
    jr nz, jr_012_4b3e

    ld hl, sp+$0a
    jr nz, jr_012_4b40

    db $fc
    db $fc
    nop
    nop

jr_012_4b3e:
    db $f4
    inc b

jr_012_4b40:
    ld [bc], a
    nop
    inc c
    db $fc
    inc b
    nop
    inc b
    inc b
    ld b, $00
    db $fc
    inc c
    nop
    jr nz, jr_012_4b5b

    inc c
    inc b
    jr nz, jr_012_4b59

    di
    inc b
    ld [bc], a
    nop
    dec bc
    db $fc

jr_012_4b59:
    inc b
    nop

jr_012_4b5b:
    inc bc
    inc b
    ld b, $00

jr_012_4b5f:
    dec bc
    inc c
    inc b
    jr nz, jr_012_4b5f

    db $fc
    ld [$fb00], sp
    inc c
    ld [$0520], sp
    db $fc
    ld sp, hl
    nop
    nop
    db $f4
    ld bc, $0002
    db $fc
    add hl, bc
    inc b
    nop
    inc b
    ld bc, $0006
    inc c
    add hl, bc
    ld [$0500], sp
    ei
    ld sp, hl
    nop
    nop
    di
    ld bc, $0002
    inc bc
    ld bc, $0006
    dec bc
    add hl, bc

jr_012_4b8f:
    ld [$fb00], sp
    add hl, bc
    ld a, [bc]
    nop
    dec b
    db $fc
    rrca
    nop
    jr nz, jr_012_4b8f

jr_012_4b9b:
    rlca
    ld [bc], a
    jr nz, jr_012_4b9b

    rst $38
    inc b
    jr nz, jr_012_4ba7

jr_012_4ba3:
    rlca
    ld b, $20
    inc c

jr_012_4ba7:
    rst $38
    ld [$0520], sp
    ei
    rrca
    nop
    jr nz, jr_012_4ba3

    rlca
    ld [bc], a
    jr nz, jr_012_4bb7

    rlca
    ld b, $20

jr_012_4bb7:
    dec bc
    rst $38
    ld [$fb20], sp
    rst $38
    ld a, [bc]
    jr nz, jr_012_4bc6

    di
    inc b
    ld [bc], a
    nop
    dec bc
    db $fc

jr_012_4bc6:
    inc b
    nop
    inc bc
    inc b
    ld b, $00

jr_012_4bcc:
    dec bc
    inc c
    inc b
    jr nz, jr_012_4bcc

    db $fc
    ld [$fb00], sp
    inc c
    ld [$0520], sp
    db $fc
    add hl, bc
    inc b
    nop
    db $fc
    ld sp, hl
    nop
    nop
    db $f4
    ld bc, $0002
    inc b
    ld bc, $0006
    inc c
    add hl, bc
    ld [$0500], sp
    ei
    add hl, bc
    ld a, [bc]
    nop
    ei
    ld sp, hl
    nop
    nop
    di
    ld bc, $0002
    inc bc
    ld bc, $0006
    dec bc
    add hl, bc

jr_012_4c00:
    ld [$0500], sp
    db $fc

jr_012_4c04:
    rst $38
    inc b
    jr nz, jr_012_4c04

    rrca
    nop
    jr nz, jr_012_4c00

    rlca
    ld [bc], a
    jr nz, jr_012_4c14

    rlca
    ld b, $20
    inc c

jr_012_4c14:
    rst $38
    ld [$0520], sp

jr_012_4c18:
    ei
    rst $38
    ld a, [bc]
    jr nz, jr_012_4c18

    rrca
    nop
    jr nz, jr_012_4c14

    rlca
    ld [bc], a
    jr nz, jr_012_4c28

    rlca
    ld b, $20

jr_012_4c28:
    dec bc
    rst $38
    ld [$0320], sp
    dec bc
    db $fc
    nop
    nop
    dec bc
    inc b
    ld [bc], a
    nop
    dec bc
    inc c
    nop
    jr nz, jr_012_4c3d

    dec bc
    db $fc
    nop

jr_012_4c3d:
    nop
    dec bc
    inc b
    inc b
    nop
    dec bc
    inc c
    nop
    jr nz, @+$04

    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld bc, $0408
    nop
    nop
    ld b, $00
    db $fc
    nop
    nop
    nop
    inc b
    ld [bc], a
    nop
    nop
    inc c
    inc b
    nop
    db $10
    db $fc
    ld b, $00
    db $10
    inc b
    ld [$1000], sp
    inc c
    ld a, [bc]
    nop
    ld b, $00
    dec bc
    nop
    jr nz, jr_012_4c73

jr_012_4c73:
    inc bc
    ld [bc], a
    jr nz, jr_012_4c77

jr_012_4c77:
    ei
    inc b
    jr nz, jr_012_4c8b

    dec bc
    ld b, $20
    db $10
    inc bc
    ld [$1020], sp
    ei
    ld a, [bc]
    jr nz, jr_012_4c8d

    nop
    db $fc
    nop
    nop

jr_012_4c8b:
    nop
    inc b

jr_012_4c8d:
    ld [bc], a
    nop
    nop
    inc c
    inc b
    nop
    db $10
    db $fc
    ld b, $00
    db $10
    inc b
    ld [$1000], sp
    inc c
    ld a, [bc]
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld [$0002], sp
    ld [$04f8], sp
    nop
    stop
    ld b, $00
    db $10
    ld [$0008], sp
    ld [$0a10], sp
    nop
    ld b, $00
    ld [$2000], sp
    nop
    nop
    ld [bc], a
    jr nz, @+$0a

    db $10
    inc b
    jr nz, jr_012_4cd6

    ld [$2006], sp
    stop
    ld [$0820], sp
    ld hl, sp+$0a
    jr nz, jr_012_4cd5

    ld a, [bc]
    db $fd
    nop

jr_012_4cd5:
    nop

jr_012_4cd6:
    ld a, [bc]
    dec b
    ld [bc], a
    nop
    ld a, [bc]
    dec c
    nop
    jr nz, jr_012_4ce5

    ld a, [$04fc]
    nop
    ld a, [bc]
    db $fc

jr_012_4ce5:
    ld b, $00
    ld [bc], a
    inc b
    ld [$1200], sp
    inc b
    ld a, [bc]
    nop
    ld a, [$040c]
    jr nz, jr_012_4cfe

    inc c
    ld b, $20
    ld [$fcfa], sp
    inc b
    nop
    ld a, [bc]
    db $fc

jr_012_4cfe:
    ld b, $00
    ld [bc], a
    inc b
    ld [$1200], sp
    inc b
    ld a, [bc]
    nop
    ld a, [$040c]
    jr nz, @+$0c

    inc c
    ld b, $20
    stop
    nop
    inc b
    db $10
    ld [$2400], sp
    ld a, [bc]
    ld a, [$04fc]
    nop
    ld a, [bc]
    db $fc
    ld b, $00
    ld [bc], a
    inc b
    ld [$1200], sp
    inc b
    ld a, [bc]
    nop
    ld a, [$040c]
    jr nz, jr_012_4d38

    inc c
    ld b, $20
    db $10
    ld hl, sp+$00
    inc b
    stop
    ld [bc], a

jr_012_4d38:
    inc b
    db $10
    stop
    inc h
    db $10
    ld [$2402], sp
    ld a, [bc]
    ld a, [$04fc]
    nop
    ld a, [bc]
    db $fc
    ld b, $00
    ld [bc], a
    inc b
    ld [$1200], sp
    inc b
    ld a, [bc]
    nop
    ld a, [$040c]
    jr nz, jr_012_4d61

    inc c
    ld b, $20
    db $10
    ld hl, sp+$00
    inc b
    stop
    ld [bc], a

jr_012_4d61:
    inc b
    db $10
    stop
    inc h
    db $10
    ld [$2402], sp
    ld b, $fb
    db $fc
    inc b
    nop
    dec bc
    db $fc
    ld b, $00
    inc bc
    inc b
    ld [$1300], sp
    inc b
    ld a, [bc]
    nop
    ei
    inc c
    inc b
    jr nz, @+$0d

    inc c
    ld b, $20
    ld [$fcfb], sp
    inc b
    nop
    dec bc
    db $fc
    ld b, $00
    inc bc
    inc b
    ld [$1300], sp
    inc b
    ld a, [bc]
    nop
    ei
    inc c
    inc b
    jr nz, jr_012_4da4

    inc c
    ld b, $20
    stop
    nop
    inc b
    db $10
    ld [$2400], sp

jr_012_4da4:
    ld a, [bc]
    ei
    db $fc
    inc b
    nop
    dec bc
    db $fc
    ld b, $00
    inc bc
    inc b
    ld [$1300], sp
    inc b
    ld a, [bc]
    nop
    ei
    inc c
    inc b
    jr nz, jr_012_4dc5

    inc c
    ld b, $20
    db $10
    ld hl, sp+$00
    inc b
    stop
    ld [bc], a
    inc b

jr_012_4dc5:
    db $10
    stop
    inc h
    db $10
    ld [$2402], sp
    ld a, [bc]
    ei
    db $fc
    inc b
    nop
    dec bc
    db $fc
    ld b, $00
    inc bc
    inc b
    ld [$1300], sp
    inc b
    ld a, [bc]
    nop
    ei
    inc c
    inc b
    jr nz, jr_012_4dee

    inc c
    ld b, $20
    db $10
    ld hl, sp+$00
    inc b
    stop
    ld [bc], a
    inc b

jr_012_4dee:
    db $10
    stop
    inc h
    db $10
    ld [$2402], sp
    ld b, $fa
    db $fc
    inc b
    nop
    ld a, [bc]
    db $fc
    ld b, $00
    ld [bc], a
    inc b
    ld [$1200], sp
    inc b
    ld a, [bc]
    nop
    ld a, [$0c0c]
    nop
    ld a, [bc]
    inc c
    ld c, $00
    ld [$fcfa], sp
    inc b
    nop
    ld a, [bc]
    db $fc
    ld b, $00
    ld [bc], a
    inc b
    ld [$1200], sp
    inc b
    ld a, [bc]
    nop
    ld a, [$0c0c]
    nop
    ld a, [bc]
    inc c
    ld c, $00
    stop
    nop
    inc b
    db $10
    ld [$2400], sp
    ld a, [bc]
    ld a, [$04fc]
    nop
    ld a, [bc]
    db $fc
    ld b, $00
    ld [bc], a
    inc b
    ld [$1200], sp
    inc b
    ld a, [bc]
    nop
    ld a, [$0c0c]
    nop
    ld a, [bc]
    inc c
    ld c, $00
    db $10
    ld hl, sp+$00
    inc b
    stop
    ld [bc], a
    inc b
    db $10
    stop
    inc h
    db $10
    ld [$2402], sp
    ld a, [bc]
    ld a, [$04fc]
    nop
    ld a, [bc]
    db $fc
    ld b, $00
    ld [bc], a
    inc b
    ld [$1200], sp
    inc b
    ld a, [bc]
    nop
    ld a, [$0c0c]
    nop
    ld a, [bc]
    inc c
    ld c, $00
    db $10
    ld hl, sp+$00
    inc b
    stop
    ld [bc], a
    inc b
    db $10
    stop
    inc h
    db $10
    ld [$2402], sp
    ld b, $fa
    inc c
    inc b
    jr nz, jr_012_4e92

    inc c
    ld b, $20
    ld [bc], a
    inc b
    ld [$1220], sp
    inc b
    ld a, [bc]

jr_012_4e92:
    jr nz, @-$04

    db $fc
    inc c
    jr nz, jr_012_4ea2

    db $fc
    ld c, $20
    ld [$0cfa], sp
    inc b
    jr nz, jr_012_4eab

    inc c

jr_012_4ea2:
    ld b, $20
    ld [bc], a
    inc b
    ld [$1220], sp
    inc b
    ld a, [bc]

jr_012_4eab:
    jr nz, @-$04

    db $fc
    inc c
    jr nz, @+$0c

    db $fc
    ld c, $20
    stop
    nop
    inc b
    db $10
    ld [$2400], sp
    ld a, [bc]
    ld a, [$040c]
    jr nz, jr_012_4ecc

    inc c
    ld b, $20
    ld [bc], a
    inc b
    ld [$1220], sp
    inc b
    ld a, [bc]

jr_012_4ecc:
    jr nz, @-$04

    db $fc
    inc c
    jr nz, jr_012_4edc

    db $fc
    ld c, $20
    db $10
    ld hl, sp+$00
    inc b
    stop
    ld [bc], a

jr_012_4edc:
    inc b
    db $10
    stop
    inc h
    db $10
    ld [$2402], sp
    ld a, [bc]
    ld a, [$040c]
    jr nz, jr_012_4ef5

    inc c
    ld b, $20
    ld [bc], a
    inc b
    ld [$1220], sp
    inc b
    ld a, [bc]

jr_012_4ef5:
    jr nz, @-$04

    db $fc
    inc c
    jr nz, jr_012_4f05

    db $fc
    ld c, $20
    db $10
    ld hl, sp+$00
    inc b
    stop
    ld [bc], a

jr_012_4f05:
    inc b
    db $10
    stop
    inc h
    db $10
    ld [$2402], sp
    ld b, $00
    inc c
    nop
    jr nz, @-$06

    inc b
    ld [bc], a
    jr nz, jr_012_4f18

jr_012_4f18:
    db $fc
    inc b
    jr nz, @+$12

    inc c
    ld b, $20
    ld [$0804], sp
    jr nz, jr_012_4f34

    db $fc
    ld a, [bc]
    jr nz, jr_012_4f2e

    ld hl, sp+$04
    ld [bc], a
    jr nz, jr_012_4f2d

jr_012_4f2d:
    db $fc

jr_012_4f2e:
    inc b
    jr nz, jr_012_4f41

    inc c
    ld b, $20

jr_012_4f34:
    ld [$0804], sp
    jr nz, jr_012_4f49

    db $fc
    ld a, [bc]
    jr nz, jr_012_4f3d

jr_012_4f3d:
    inc c
    inc c
    jr nz, jr_012_4f41

jr_012_4f41:
    ld bc, $0408
    nop
    nop
    ld bc, $0408

jr_012_4f49:
    nop
    ld bc, $0801
    inc b
    nop
    jr nz, jr_012_4f52

    dec d

jr_012_4f52:
    rlca
    nop
    nop
    ld bc, $00fc
    ld [bc], a
    nop
    ld bc, $0408
    ld [bc], a
    nop
    ld bc, $0408
    ld [bc], a
    jr nz, @+$03

    ld [$0204], sp
    ld b, b
    ld bc, $0408
    inc b
    nop
    ld bc, $0408
    inc b
    ld b, b
    ld bc, $f90c
    inc b
    nop
    ld bc, $0f0c
    inc b
    jr nz, jr_012_4f7f

    inc c

jr_012_4f7f:
    ei
    ld b, $00
    ld bc, $0d0c
    ld b, $20
    ld [bc], a
    ld [$0000], sp
    nop
    ld [$0008], sp
    jr nz, @+$04

    ld [$0000], sp
    ld b, b
    ld [$0008], sp
    ld h, b
    ld [bc], a
    ld [$0200], sp
    nop
    ld [$0208], sp
    jr nz, @+$04

    ld [$0200], sp
    ld b, b
    ld [$0208], sp
    ld h, b
    ld [bc], a
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld [bc], a
    ld [$0200], sp
    jr nz, jr_012_4fc2

    ld [$2000], sp
    ld [bc], a
    ld [$0400], sp
    nop

jr_012_4fc2:
    ld [$0408], sp
    jr nz, @+$04

    ld [$0400], sp
    rlca
    ld [$0408], sp
    daa
    ld [bc], a
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    ld [bc], a
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    ld [bc], a
    ld [$0600], sp
    jr nz, @+$0a

    ld [$2004], sp
    ld [bc], a
    ld [$0a00], sp
    jr nz, jr_012_4ff8

    ld [$2008], sp
    ld [bc], a
    ld [$0600], sp
    nop

jr_012_4ff8:
    ld [$0808], sp
    nop
    ld [bc], a
    ld [$0800], sp
    jr nz, jr_012_500a

    ld [$2006], sp
    ld [bc], a
    ld [$0600], sp
    ld b, b

jr_012_500a:
    ld [$0808], sp
    ld b, b
    ld [bc], a
    ld [$0800], sp
    ld h, b
    ld [$0608], sp
    ld h, b
    ld [bc], a
    ld [$0c00], sp
    nop
    ld [$0c08], sp
    jr nz, @+$04

    ld [$0c00], sp
    rlca
    ld [$0c08], sp
    daa
    ld [bc], a
    inc b
    rlca
    inc b
    jr nz, jr_012_5033

    ld bc, $2008
    ld [bc], a

jr_012_5033:
    inc b
    nop
    ld [$0420], sp
    ld [$2006], sp
    ld [bc], a
    inc b
    ld bc, $0004
    inc b
    rlca
    ld [$0200], sp
    inc b
    nop
    ld b, $00
    inc b
    ld [$0008], sp
    ld [bc], a
    inc c
    rlca
    inc b
    ld h, b
    inc c
    ld bc, $6008
    ld [bc], a
    inc c
    nop
    ld [$0c60], sp
    ld [$6006], sp
    ld [bc], a
    inc c
    ld bc, $4004
    inc c
    rlca
    ld [$0240], sp
    inc c
    nop
    ld b, $40
    inc c
    ld [$4008], sp
    ld [bc], a
    ld [$0008], sp
    jr nz, jr_012_507f

    ld [bc], a
    nop
    jr nz, @+$04

    ld [$0000], sp
    nop

jr_012_507f:
    ld [$0006], sp
    nop
    ld [bc], a
    ld [$0400], sp
    nop
    ld [$0408], sp
    ld h, b
    ld [bc], a
    ei
    inc b
    ld a, [bc]
    nop
    dec bc
    inc b
    inc c
    nop
    ld [bc], a
    ld [$0608], sp
    jr nz, jr_012_50a3

    nop
    ld [$0220], sp
    ld [$0608], sp
    ld h, b

jr_012_50a3:
    ld [$0800], sp
    ld h, b
    ld [bc], a
    dec d
    inc b
    ld a, [bc]
    ld b, b
    dec b
    inc b
    inc c
    ld b, b
    ld [bc], a
    ld [$0600], sp
    ld b, b
    ld [$0808], sp
    ld b, b
    ld [bc], a
    ld [$0600], sp
    nop
    ld [$0808], sp
    nop
    ld [bc], a
    ld hl, sp-$03
    nop
    ld b, b
    ld hl, sp+$05
    nop
    ld h, b
    ld [bc], a
    ld a, [$02fd]
    ld b, b
    ld a, [$0204]
    ld h, b
    ld [bc], a
    jr jr_012_50e2

    nop
    jr nz, @+$1a

    inc bc
    nop
    nop
    ld [bc], a
    ld d, $03
    ld [bc], a
    nop

jr_012_50e2:
    ld d, $0a
    ld [bc], a
    jr nz, @+$04

    ld [$0414], sp
    jr nz, jr_012_50f4

    inc c
    ld b, $20
    ld [bc], a
    ld [$04f4], sp
    nop

jr_012_50f4:
    ld [$06fc], sp
    nop
    ld [bc], a
    ld a, [bc]
    nop
    nop
    nop
    ld a, [bc]
    ld [$2000], sp
    ld [bc], a
    cp $00  ; and a / or a
    nop
    nop
    cp $08
    nop
    jr nz, jr_012_510d

    cp $ff

jr_012_510d:
    nop
    nop
    cp $09
    nop
    jr nz, jr_012_5116

    nop
    db $fc

jr_012_5116:
    nop
    nop
    nop
    inc c
    nop
    jr nz, jr_012_5120

    inc b
    dec c
    nop

jr_012_5120:
    jr nz, jr_012_5126

    dec b
    ld [bc], a
    jr nz, jr_012_512a

jr_012_5126:
    db $fd
    inc b
    jr nz, jr_012_512d

jr_012_512a:
    inc b
    ei
    nop

jr_012_512d:
    nop
    inc b
    inc bc
    ld [bc], a
    nop
    inc b
    dec bc
    inc b
    nop
    ld [$fa02], sp
    inc c
    nop
    ld [bc], a
    ld [bc], a
    inc c
    jr nz, jr_012_5142

    ld b, $0c

jr_012_5142:
    nop
    ld [bc], a
    ld c, $0c
    jr nz, jr_012_5152

    ld a, [$000c]
    ld a, [bc]
    ld [bc], a
    inc c
    jr nz, @+$0c

    ld b, $0c

jr_012_5152:
    nop
    ld a, [bc]
    ld c, $0c
    jr nz, jr_012_5160

    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    nop

jr_012_5160:
    nop
    ld [$2002], sp
    nop
    stop
    jr nz, @+$12

    ld hl, sp+$00
    ld b, b
    stop
    ld [bc], a
    ld b, b
    db $10
    ld [$6002], sp
    db $10
    stop
    ld h, b
    ld [$f800], sp
    ld c, $00
    nop
    nop
    ld c, $20
    nop
    ld [$000e], sp
    nop
    db $10
    ld c, $20
    db $10
    ld hl, sp+$0e
    nop
    stop
    ld c, $20
    db $10
    ld [$000e], sp
    db $10
    db $10
    ld c, $20
    ld bc, $00fa
    nop
    dec b
    ld [bc], a
    nop
    ld c, $02
    dec b
    nop
    ld d, $04
    dec b
    ld [bc], a
    db $10
    ld c, $06
    dec b
    ld [$0816], sp
    dec b
    ld [bc], a
    inc de
    ld c, $02
    ld b, l
    inc de
    ld d, $04
    ld b, l
    ld bc, $0716
    nop
    ld h, l
    ld [bc], a
    inc de
    db $fd
    ld [bc], a
    ld h, l
    inc de
    push af
    inc b
    ld h, l
    ld [bc], a
    db $10
    ld a, [$2506]
    ld [$08f2], sp
    dec h
    ld [bc], a
    ld a, [$02fd]
    dec h
    ld a, [$04f5]
    dec h
    nop
    ld bc, $0408
    nop
    nop
    ld bc, $0408
    ld [bc], a
    nop
    ld bc, $0408
    inc b
    nop
    ld bc, $0408
    jr nz, jr_012_51ee

jr_012_51ee:
    ld bc, $040c
    nop
    nop
    ld bc, $0408
    nop
    ld b, b
    ld bc, $0408
    nop
    jr nz, @+$03

    ld [$0005], sp
    nop
    ld bc, $0206
    nop
    nop
    ld bc, $060a
    nop
    nop
    ld bc, $0606
    nop
    nop
    ld bc, $020a
    nop
    nop
    ld bc, $0408
    inc b
    ld b, b
    ld bc, $0408
    ld [$0100], sp
    ld [$0804], sp
    jr nz, @+$03

    ld [$0a04], sp
    nop
    ld bc, $0408
    inc c
    nop
    ld bc, $0407
    nop
    ld b, b
    ld bc, $0407
    nop
    ld h, b
    ld bc, $0408
    ld e, $03
    ld bc, $0408
    ld a, $03
    ld bc, $0408
    nop
    nop
    ld bc, $0408
    sbc d
    ld b, $01
    ld [$3804], sp
    nop
    ld bc, $0408
    sbc h
    ld b, $01
    ld [$8a04], sp
    nop
    ld bc, $0408
    sbc [hl]
    ld b, $02
    ld [$0600], sp
    nop
    ld [$0808], sp
    nop
    ld [bc], a
    ld [$0800], sp
    jr nz, jr_012_5278

    ld [$2006], sp
    ld [bc], a
    ld [$0a00], sp
    nop

jr_012_5278:
    ld [$0c08], sp
    nop
    ld [bc], a
    ld [$0c00], sp
    jr nz, jr_012_528a

    ld [$200a], sp
    ld [bc], a
    ld [$0e00], sp
    nop

jr_012_528a:
    ld [$1008], sp
    nop
    ld [bc], a
    ld [$1000], sp
    jr nz, jr_012_529c

    ld [$200e], sp
    ld [bc], a
    ld [$0000], sp
    nop

jr_012_529c:
    ld [$0008], sp
    ld h, b
    ld [bc], a
    ld [$0000], sp
    ld b, b
    ld [$0008], sp
    jr nz, @+$04

    ld [$0200], sp
    nop
    ld [$0208], sp
    jr nz, @+$04

    ld [$0400], sp
    nop
    ld [$0408], sp
    jr nz, @+$04

    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    ld [bc], a
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    ld [bc], a
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    ld [bc], a
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    ld [bc], a
    ld [$0200], sp
    jr nz, @+$0a

    ld [$2000], sp
    ld [bc], a
    ld [$0600], sp
    jr nz, @+$0a

    ld [$2004], sp
    ld [bc], a
    ld [$0a00], sp
    jr nz, @+$0a

    ld [$2008], sp
    ld [bc], a
    ld [$0e00], sp
    jr nz, jr_012_5308

    ld [$200c], sp
    ld [bc], a
    ld [$0000], sp
    nop

jr_012_5308:
    ld [$0008], sp
    jr nz, @+$04

    ld [$0200], sp
    nop
    ld [$0208], sp
    jr nz, @+$04

    ld [$0400], sp
    nop
    ld [$0408], sp
    jr nz, @+$04

    ld [$0600], sp
    nop
    ld [$0608], sp
    jr nz, @+$04

    ld [$0000], sp
    ld b, b
    ld [$0008], sp
    ld h, b
    ld [bc], a
    ld [$0200], sp
    ld b, b
    ld [$0208], sp
    ld h, b
    ld [bc], a
    ld [$0000], sp
    nop
    ld [$0008], sp
    jr nz, @+$04

    ld [$0200], sp
    nop
    ld [$0208], sp
    jr nz, @+$04

    ld [$0000], sp
    ld b, b
    ld [$0008], sp
    ld h, b
    ld [bc], a
    ld [$0200], sp
    ld b, b
    ld [$0208], sp
    ld h, b
    ld [bc], a
    ld [$0000], sp
    nop
    ld [$0408], sp
    nop
    ld [bc], a
    ld [$0400], sp
    jr nz, jr_012_5374

    ld [$2000], sp
    ld [bc], a
    ld [$0000], sp
    dec b

jr_012_5374:
    ld [$0008], sp
    dec h
    ld [bc], a
    ld [$0400], sp
    jr nz, @+$0a

    ld [$2002], sp
    ld [bc], a
    ld [$0400], sp
    jr nz, jr_012_538f

    ld [$2006], sp
    ld [bc], a
    ld [$0c00], sp
    nop

jr_012_538f:
    ld [$0c08], sp
    jr nz, @+$04

    ld [$0600], sp
    nop
    ld [$0408], sp
    nop
    ld [bc], a
    ld [$0200], sp
    nop
    ld [$0408], sp
    nop
    ld [bc], a
    ld [$0600], sp
    nop
    ld [$0808], sp
    nop
    ld [bc], a
    ld [$0800], sp
    jr nz, jr_012_53bc

    ld [$2006], sp
    ld [bc], a
    ld [$0a00], sp
    nop

jr_012_53bc:
    ld [$0a08], sp
    jr nz, @+$04

    ld [$1000], sp
    nop
    ld [$1208], sp
    nop
    ld [bc], a
    ld [$1200], sp
    jr nz, jr_012_53d7

    ld [$2010], sp
    ld [bc], a
    ld [$1400], sp
    nop

jr_012_53d7:
    ld [$1608], sp
    nop
    ld [bc], a
    ld [$0601], sp
    jr nz, @+$0a

    add hl, bc
    inc b
    jr nz, @+$04

    ld [$0a01], sp
    jr nz, jr_012_53f2

    add hl, bc
    ld [$0220], sp
    ld [$0c00], sp
    nop

jr_012_53f2:
    ld [$0a08], sp
    nop
    ld [bc], a
    ld [$0a01], sp
    jr nz, jr_012_5404

    add hl, bc
    inc c
    jr nz, @+$04

    ld [$0e00], sp
    nop

jr_012_5404:
    ld [$0e08], sp
    jr nz, @+$04

    ld [$1000], sp
    nop
    ld [$1008], sp
    jr nz, @+$04

    ld [$0000], sp
    ld bc, $0808
    nop
    ld hl, $0802
    nop
    nop
    rlca
    ld [$0008], sp
    daa
    ld [bc], a
    ld [$0000], sp
    ld b, c
    ld [$0008], sp
    ld h, c
    ld [bc], a
    ld [$0000], sp
    ld b, a
    ld [$0008], sp
    ld h, a
    ld [bc], a
    ld [$02ff], sp
    nop
    ld [$0207], sp
    jr nz, @+$04

    ld [$0201], sp
    nop
    ld [$0209], sp
    jr nz, @+$04

    ld [$1800], sp
    nop
    ld [$1a08], sp
    nop
    ld [bc], a
    ld [$1e00], sp
    jr nz, @+$0a

    ld [$201c], sp
    ld [bc], a
    ld [$1600], sp
    jr nz, jr_012_5467

    ld [$2014], sp
    ld [bc], a
    ld [$0800], sp
    nop

jr_012_5467:
    ld [$0808], sp
    jr nz, @+$04

    ld [$1400], sp
    nop
    ld [$0a08], sp
    nop
    ld [bc], a
    ld [$0a00], sp
    jr nz, jr_012_5482

    ld [$2014], sp
    ld [bc], a
    ld [$1600], sp
    nop

jr_012_5482:
    ld [$1608], sp
    jr nz, @+$04

    ld [$1800], sp
    inc bc
    ld [$1808], sp
    jr nz, @+$04

    ld [$0200], sp
    ld b, b
    ld [$0208], sp
    ld h, b
    ld [bc], a
    ld [$0a00], sp
    ld h, b
    ld [$0808], sp
    ld h, b
    ld [bc], a
    ld [$0800], sp
    ld b, b
    ld [$0a08], sp
    ld b, b
    ld [bc], a
    ld [$0400], sp
    ld b, b
    ld [$0608], sp
    ld b, b
    ld [bc], a
    ld [$0800], sp
    ld b, b
    ld [$0a08], sp
    ld b, b
    ld [bc], a
    ld [$0200], sp
    ld b, b
    ld [$0208], sp
    ld h, b
    ld [bc], a
    ld [$0600], sp
    ld h, b
    ld [$0408], sp
    ld h, b
    ld [bc], a
    ld [$0a00], sp
    ld h, b
    ld [$0808], sp
    ld h, b
    ld [bc], a
    ld [$0800], sp
    ld h, b
    ld [$0608], sp
    ld h, b
    ld [bc], a
    ld [$0600], sp
    ld b, b
    ld [$0808], sp
    ld b, b
    ld [bc], a
    ld [$0200], sp
    nop
    ld [$0208], sp
    jr nz, @+$04

    ld [$0000], sp
    dec b
    ld [$0008], sp
    ld h, l
    ld [bc], a
    ld [$0000], sp
    ld b, l
    ld [$0008], sp
    dec h
    ld [bc], a
    dec b
    nop
    ld [bc], a
    nop
    dec b
    ld [$0004], sp
    ld [bc], a
    dec b
    nop
    ld b, $00
    dec b
    ld [$0008], sp
    ld [bc], a
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    ld [$000c], sp
    ld [bc], a
    dec b
    nop
    ld c, $00
    dec b
    ld [$200e], sp
    ld [bc], a
    ld [$2000], sp
    nop
    ld [$2208], sp
    nop
    ld [bc], a
    ld [$2400], sp
    nop
    ld [$2608], sp
    nop
    ld [bc], a
    ld [$2800], sp
    nop
    ld [$2a08], sp
    nop
    ld [bc], a
    ld [$2600], sp
    ld h, b
    ld [$2408], sp
    ld h, b
    ld [bc], a
    ld [$2c00], sp
    nop
    ld [$2e08], sp
    nop
    ld [bc], a
    ld [$2a00], sp
    jr nz, jr_012_5563

    ld [$2028], sp
    ld [bc], a
    ld [$2a00], sp
    ld h, b

jr_012_5563:
    ld [$2808], sp
    ld h, b
    ld [bc], a
    ld [$2200], sp
    ld h, b
    ld [$2008], sp
    ld h, b
    ld [bc], a
    ld [$4c00], sp
    nop
    ld [$4c08], sp
    jr nz, @+$04

    ld [$5e00], sp
    nop
    ld [$5e08], sp
    jr nz, @+$04

    ld [$1200], sp
    inc b
    ld [$1408], sp
    inc b
    ld [bc], a
    ld [$0e00], sp
    inc b
    ld [$1008], sp
    inc b
    ld [bc], a
    ld [$1400], sp
    inc h
    ld [$1208], sp
    inc h
    ld [bc], a
    ld [$1000], sp
    inc h
    ld [$0e08], sp
    inc h
    ld [bc], a
    ld [$1c00], sp
    inc h
    ld [$1a08], sp
    inc h
    ld [bc], a
    ld [$1800], sp
    inc h
    ld [$1608], sp
    inc h
    ld [bc], a
    ld [$1a00], sp
    inc b
    ld [$1c08], sp
    inc b
    ld [bc], a
    ld [$1600], sp
    inc b
    ld [$1808], sp
    inc b
    inc bc
    ld [$0cfc], sp
    jr nz, jr_012_55d8

    inc b
    ld a, [bc]
    jr nz, @+$0a

    inc c
    ld [$0320], sp

jr_012_55d8:
    ld [$12fc], sp
    jr nz, jr_012_55e5

    inc b
    db $10
    jr nz, jr_012_55e9

    inc c
    ld c, $20
    inc bc

jr_012_55e5:
    ld [$08fc], sp
    nop

jr_012_55e9:
    ld [$0a04], sp
    nop
    ld [$0c0c], sp
    nop
    inc bc
    ld [$0efc], sp
    nop
    ld [$1004], sp
    nop
    ld [$120c], sp
    nop
    inc bc
    ld [$18fc], sp
    jr nz, jr_012_560c

    inc b
    ld d, $20
    ld [$140c], sp
    jr nz, jr_012_560f

jr_012_560c:
    ld [$14fc], sp

jr_012_560f:
    nop
    ld [$1604], sp
    nop
    ld [$180c], sp
    nop
    inc bc
    ld [$1200], sp
    nop
    ld [$1408], sp
    nop
    ld hl, sp+$04
    ld d, $05
    inc bc
    ld [$1400], sp
    jr nz, jr_012_5633

    ld [$2012], sp
    ld hl, sp+$04
    ld d, $25
    inc bc

jr_012_5633:
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    nop
    ld [$0014], sp
    inc bc
    ld [$0600], sp
    jr nz, jr_012_564d

    ld [$2004], sp
    cp $08
    inc d
    nop
    inc bc

jr_012_564d:
    rrca
    nop
    inc d
    ld b, b
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    inc bc
    ld de, $1400
    ld b, b
    ld [$0200], sp
    jr nz, jr_012_566b

    ld [$2000], sp
    inc bc
    ld [$10fc], sp
    nop

jr_012_566b:
    ld [$1204], sp
    nop
    ld [$140c], sp
    nop
    inc bc
    ld [$10fc], sp
    ld b, b
    ld [$1204], sp
    ld b, b
    ld [$140c], sp
    ld b, b
    inc bc
    ld [bc], a
    ld [$011c], sp
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    inc bc
    ld b, $07
    inc e
    ld bc, $0008
    stop
    ld [$1208], sp
    nop
    inc bc
    ld bc, $1c07
    ld bc, $0008
    inc d
    nop
    ld [$1608], sp
    nop
    inc bc
    nop
    ld b, $1c
    ld bc, $0008
    jr jr_012_56b0

jr_012_56b0:
    ld [$1a08], sp
    nop
    inc bc
    ld [bc], a
    nop
    inc e
    ld hl, $0008
    ld c, $20
    ld [$0c08], sp
    jr nz, jr_012_56c5

    ld b, $01
    inc e

jr_012_56c5:
    ld hl, $0008
    ld [de], a
    jr nz, @+$0a

    ld [$2010], sp
    inc bc
    ld bc, $1c01
    ld hl, $0008
    ld d, $20
    ld [$1408], sp
    jr nz, jr_012_56df

    nop
    ld [bc], a
    inc e

jr_012_56df:
    ld hl, $0008
    ld a, [de]
    jr nz, jr_012_56ed

    ld [$2018], sp
    inc bc
    ld [$00fc], sp
    nop

jr_012_56ed:
    ld [$0204], sp
    nop
    ld [$000c], sp
    jr nz, jr_012_56f9

    ld [$04fc], sp

jr_012_56f9:
    nop
    ld [$0604], sp
    nop
    ld [$040c], sp
    jr nz, jr_012_5706

    ld [$08fc], sp

jr_012_5706:
    nop
    ld [$0a04], sp
    nop
    ld [$080c], sp
    jr nz, jr_012_5713

    ld [$2000], sp

jr_012_5713:
    nop
    ld [$2208], sp
    nop
    ld c, $0a
    db $10
    rlca
    inc bc
    ld [$2400], sp
    nop
    ld [$2608], sp
    nop
    rrca
    ld a, [bc]
    ld [de], a
    rlca
    inc bc
    db $10
    ld bc, $0710
    ld [$0008], sp
    jr nz, jr_012_573b

    nop
    ld [bc], a
    jr nz, @+$05

    db $10
    ld bc, $0712

jr_012_573b:
    ld [$0408], sp
    jr nz, jr_012_5748

    nop
    ld b, $20
    inc bc
    rrca
    db $fd
    db $10
    rlca

jr_012_5748:
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    inc bc
    db $10
    db $fd
    ld [de], a
    rlca
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    inc bc
    ld c, $fd
    ld [de], a
    rlca
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    inc bc
    db $10
    db $fd
    db $10
    rlca
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    inc bc
    db $10
    ld bc, $0710
    ld [$3008], sp
    jr nz, jr_012_5789

    nop
    ld [hl-], a
    jr nz, jr_012_5788

    db $10
    ld [bc], a
    ld [de], a

jr_012_5788:
    rlca

jr_012_5789:
    ld [$3408], sp
    jr nz, jr_012_5796

    nop
    ld [hl], $20
    inc bc
    ld de, $1002
    rlca

jr_012_5796:
    ld [$3808], sp
    jr nz, jr_012_57a3

    nop
    ld a, [hl-]
    jr nz, @+$05

    db $10
    ld bc, $0712

jr_012_57a3:
    ld [$3c07], sp
    jr nz, jr_012_57b0

    rst $38
    ld a, $20
    inc bc
    dec c
    db $fd
    db $10
    rlca

jr_012_57b0:
    ld [$3000], sp
    nop
    ld [$3208], sp
    nop
    inc bc
    ld [$3400], sp
    nop
    ld [$3608], sp
    nop
    ld c, $02
    ld [de], a
    rlca
    inc bc
    ld [$3800], sp
    nop
    ld [$3a08], sp
    nop
    rrca
    ld [bc], a
    db $10
    rlca
    inc bc
    ld [$3c01], sp
    nop
    ld [$3e09], sp
    nop
    ld c, $03
    ld [de], a
    rlca
    inc bc
    ld [$2800], sp
    nop
    ld [$2a08], sp
    nop
    nop
    ld a, [bc]
    jr @+$04

    inc bc
    ld [$2c00], sp
    nop
    ld [$2e08], sp
    nop
    ld bc, $180a
    ld [bc], a
    inc bc
    ld de, $18fe
    ld b, d
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    inc bc
    ld [de], a
    cp $18
    ld b, d
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    inc b
    db $fc
    nop
    inc [hl]
    dec b
    db $fc
    ld [$0536], sp
    rlca
    nop
    ld [hl], b
    dec b
    rlca
    ld [$2570], sp
    inc b
    ld [bc], a
    nop
    ld c, b
    nop
    ld [bc], a
    ld [$004a], sp
    ld [de], a
    nop
    ld c, h
    nop
    ld [de], a
    ld [$004e], sp
    inc b
    ld [bc], a
    nop
    ld c, d
    jr nz, @+$04

    ld [$2048], sp
    ld [de], a
    nop
    ld c, [hl]
    jr nz, @+$14

    ld [$204c], sp
    inc b
    ld [bc], a
    nop
    ld [hli], a
    jr nz, @+$04

    ld [$2020], sp
    ld [de], a
    nop
    inc h
    jr nz, jr_012_5865

    ld b, $38
    jr nz, jr_012_585c

    ld [bc], a
    nop
    jr z, jr_012_587c

jr_012_585c:
    ld [bc], a
    ld [$2026], sp
    ld [de], a
    nop
    ld a, [hli]
    jr nz, jr_012_5876

jr_012_5865:
    ld b, $38
    jr nz, jr_012_586d

    ld [bc], a
    nop
    ld b, b
    nop

jr_012_586d:
    ld [bc], a
    ld [$0042], sp
    ld [de], a
    nop
    ld b, h
    nop
    ld [de], a

jr_012_5876:
    ld [$0046], sp
    inc b
    ld [bc], a
    nop

jr_012_587c:
    ld b, d
    jr nz, @+$04

    ld [$2040], sp
    ld [de], a
    nop
    ld b, [hl]
    jr nz, @+$14

    ld [$2044], sp
    inc b
    ld [bc], a
    nop
    jr nz, jr_012_588f

jr_012_588f:
    ld [bc], a
    ld [$0022], sp
    ld de, $3802
    nop
    ld [de], a
    ld [$0024], sp
    inc b
    ld [bc], a
    nop
    ld h, $00
    ld [bc], a
    ld [$0028], sp
    ld de, $3802
    nop
    ld [de], a
    ld [$002a], sp
    inc b
    ld [bc], a
    nop
    ld l, $20
    ld [bc], a
    ld [$202c], sp
    ld [de], a
    nop
    ld [hl-], a
    jr nz, @+$14

    ld [$2030], sp
    inc b
    ld [bc], a
    nop
    ld [hl], $20
    ld [bc], a
    ld [$2034], sp
    ld [de], a
    nop
    ld a, [hl-]
    jr nz, @+$14

    ld [$2038], sp
    inc b
    ld [bc], a
    nop
    ld a, $20
    ld [bc], a
    ld [$203c], sp
    ld [de], a
    nop
    ld a, [hl-]
    jr nz, @+$14

    ld [$2038], sp
    inc b
    ld [bc], a
    nop
    inc l
    nop
    ld [bc], a
    ld [$002e], sp
    ld [de], a
    nop
    jr nc, jr_012_58ec

jr_012_58ec:
    ld [de], a
    ld [$0032], sp
    inc b
    ld [bc], a
    nop
    inc [hl]
    nop
    ld [bc], a
    ld [$0036], sp
    ld [de], a
    nop
    jr c, jr_012_58fd

jr_012_58fd:
    ld [de], a
    ld [$003a], sp
    inc b
    ld [bc], a
    nop
    inc a
    nop
    ld [bc], a
    ld [$003e], sp
    ld [de], a
    nop
    jr c, jr_012_590e

jr_012_590e:
    ld [de], a
    ld [$003a], sp
    inc b
    ld [bc], a
    nop
    ld l, h
    nop
    ld [bc], a
    ld [$006e], sp
    ld [de], a
    nop
    ld c, h
    nop
    ld [de], a
    ld [$004e], sp
    inc b
    ld [bc], a
    nop
    ld l, [hl]
    jr nz, @+$04

    ld [$206c], sp
    ld [de], a
    nop
    ld c, [hl]
    jr nz, @+$14

    ld [$204c], sp
    inc b
    ld [bc], a
    nop
    ld h, d
    jr nz, @+$04

    ld [$2060], sp
    ld [de], a
    nop
    inc h
    jr nz, jr_012_5953

    ld b, $38
    jr nz, @+$06

    ld [bc], a
    nop
    ld h, [hl]
    jr nz, @+$04

    ld [$2064], sp
    ld [de], a
    nop
    ld a, [hli]
    jr nz, jr_012_5964

jr_012_5953:
    ld b, $38
    jr nz, jr_012_595b

    ld [bc], a
    nop
    ld l, b
    nop

jr_012_595b:
    ld [bc], a
    ld [$006a], sp
    ld [de], a
    nop
    ld b, h
    nop
    ld [de], a

jr_012_5964:
    ld [$0046], sp
    inc b
    ld [bc], a
    nop
    ld l, d
    jr nz, @+$04

    ld [$2068], sp
    ld [de], a
    nop
    ld b, [hl]
    jr nz, @+$14

    ld [$2044], sp
    inc b
    ld [bc], a
    nop
    ld h, b
    nop
    ld [bc], a
    ld [$0062], sp
    ld de, $3802
    nop
    ld [de], a
    ld [$0024], sp
    inc b
    ld [bc], a
    nop
    ld h, h
    nop
    ld [bc], a
    ld [$0066], sp
    ld de, $3802
    nop
    ld [de], a
    ld [$002a], sp
    inc b
    ld [$12fc], sp
    nop
    ld [$1404], sp
    nop
    ld [$160c], sp
    nop
    jr jr_012_59b5

    jr jr_012_59ab

jr_012_59ab:
    inc b
    ld [$16fc], sp
    jr nz, jr_012_59b9

    inc b
    inc d
    jr nz, jr_012_59bd

jr_012_59b5:
    inc c
    ld [de], a
    jr nz, jr_012_59d1

jr_012_59b9:
    db $fc
    jr @+$22

    inc b

jr_012_59bd:
    nop
    nop
    nop
    nop
    nop
    ld [$2000], sp
    stop
    inc b
    nop
    db $10
    ld [$2004], sp
    inc b
    nop
    nop
    ld [bc], a

jr_012_59d1:
    nop
    nop
    ld [$2002], sp
    stop
    ld b, $00
    db $10
    ld [$2006], sp
    inc b
    ld [$04f8], sp
    nop
    ld [$0600], sp
    nop
    ld [$0608], sp
    jr nz, @+$0a

    db $10
    inc b
    jr nz, @+$06

    ld [$1208], sp
    jr nz, jr_012_59fd

    db $10
    db $10
    jr nz, jr_012_5a01

    nop
    ld a, [bc]
    jr nz, @+$0a

jr_012_59fd:
    ld [$2008], sp
    inc b

jr_012_5a01:
    ld [$120a], sp
    jr nz, @+$0a

    ld [de], a
    db $10
    jr nz, jr_012_5a12

    nop
    ld c, $20
    ld [$0c08], sp
    jr nz, jr_012_5a16

jr_012_5a12:
    ld [$0800], sp
    nop

jr_012_5a16:
    ld [$0a08], sp
    nop
    ld [$10f8], sp
    nop
    ld [$1200], sp
    nop
    inc b
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    ld [$10f6], sp
    nop
    ld [$12fe], sp
    nop
    inc b
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    ld [$1006], sp
    inc b
    ld [$100c], sp
    inc h
    inc b
    ld [$0600], sp
    jr nz, @+$0a

    ld [$2004], sp
    ld [$1005], sp
    inc b
    ld [$100d], sp
    inc h
    inc b
    ld a, [bc]
    dec b
    db $10
    inc b
    ld a, [bc]
    dec c
    db $10
    inc h
    ld [$0a00], sp
    jr nz, jr_012_5a6b

    ld [$2008], sp
    inc b
    ld a, [bc]
    inc b
    db $10
    inc b

jr_012_5a6b:
    ld a, [bc]
    inc c
    db $10
    inc h
    ld [$0e00], sp
    jr nz, jr_012_5a7c

    ld [$200c], sp
    inc b
    dec bc
    ld hl, sp+$10
    inc b

jr_012_5a7c:
    dec bc
    nop
    db $10
    inc h
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    inc b
    dec bc
    ld a, [$0410]
    dec bc
    ld [bc], a
    db $10
    inc h
    ld [$0200], sp
    jr nz, jr_012_5a9e

    ld [$2000], sp
    inc b
    ld [$0800], sp
    nop

jr_012_5a9e:
    ld [$0a08], sp
    nop
    ld a, [bc]
    ld sp, hl
    db $10
    inc b
    ld a, [bc]
    ld bc, $2410
    inc b
    ld [$0c00], sp
    nop
    ld [$0e08], sp
    nop
    ld a, [bc]
    ld a, [$0410]
    ld a, [bc]
    ld [bc], a
    db $10
    inc h
    inc b
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    rst $38
    rlca
    db $10
    inc b
    rst $38
    rrca
    db $10
    inc h
    inc b
    ld [bc], a
    ei
    db $10
    inc b
    ld [bc], a
    inc bc
    db $10
    inc h
    ld [$0a00], sp
    jr nz, jr_012_5ae2

    ld [$2008], sp
    inc b
    nop
    ld a, [$0410]

jr_012_5ae2:
    nop
    ld [bc], a
    db $10
    inc h
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    inc b
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    cp $05
    db $10
    inc b
    cp $0d
    db $10
    inc h
    inc b
    inc b
    nop
    ld d, $00
    inc b
    ld [$0018], sp
    inc d
    nop
    ld a, [de]
    nop
    inc d
    ld [$201a], sp
    inc b
    inc b
    nop
    ld d, $00
    inc b
    ld [$0018], sp
    inc d
    nop
    inc e
    nop
    inc d
    ld [$201c], sp
    inc b
    inc b
    nop
    jr nz, jr_012_5b26

jr_012_5b26:
    inc b
    ld [$0022], sp
    inc d
    nop
    ld e, $00
    inc d
    ld [$201e], sp
    inc b
    dec b
    inc d
    inc d
    ld [hli], a
    dec b
    inc c
    ld d, $22
    ld [$0008], sp
    jr nz, jr_012_5b48

    nop
    ld [bc], a
    jr nz, jr_012_5b48

    ld b, $14
    inc d
    ld [hli], a

jr_012_5b48:
    ld b, $0c
    ld d, $22
    ld [$0408], sp
    jr nz, jr_012_5b59

    nop
    ld b, $20
    inc b
    dec b
    db $f4
    inc d
    ld [bc], a

jr_012_5b59:
    dec b
    db $fc
    ld d, $02
    ld [$0000], sp
    nop
    ld [$0208], sp
    nop
    inc b
    ld b, $f4
    inc d
    ld [bc], a
    ld b, $fc
    ld d, $02
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    inc b
    inc b
    inc d
    inc d
    ld [hli], a
    inc b
    inc c
    ld d, $22
    ld [$3008], sp
    jr nz, @+$0a

    nop
    ld [hl-], a
    jr nz, @+$06

    ld [$3408], sp
    jr nz, jr_012_5b95

    nop
    ld [hl], $20
    dec b
    ld [de], a
    inc d
    ld [hli], a
    dec b

jr_012_5b95:
    ld a, [bc]
    ld d, $22
    inc b
    ld [$3808], sp
    jr nz, jr_012_5ba6

    nop
    ld a, [hl-]
    jr nz, @+$07

    ld c, $14
    ld [hli], a
    dec b

jr_012_5ba6:
    ld b, $16
    ld [hli], a
    inc b
    ld [$3c07], sp
    jr nz, @+$0a

    rst $38
    ld a, $20
    ld b, $0e
    inc d
    ld [hli], a
    ld b, $06
    ld d, $22
    inc b
    inc b
    db $f4
    inc d
    ld [bc], a
    inc b
    db $fc
    ld d, $02
    ld [$3000], sp
    nop
    ld [$3208], sp
    nop
    inc b
    ld [$3400], sp
    nop
    ld [$3608], sp
    nop
    dec b
    or $14
    ld [bc], a
    dec b
    cp $16
    ld [bc], a
    inc b
    ld [$3800], sp
    nop
    ld [$3a08], sp
    nop
    dec b
    ld a, [$0214]
    dec b
    ld [bc], a
    ld d, $02
    inc b
    ld [$3c01], sp
    nop
    ld [$3e09], sp
    nop
    ld b, $fa
    inc d
    ld [bc], a
    ld b, $02
    ld d, $02
    dec b
    ld [$24f4], sp
    nop
    ld [$26fc], sp
    nop
    ld [$2804], sp
    nop
    ld [$2a0c], sp
    nop
    ld [$2414], sp
    jr nz, @+$07

    ld [$24f4], sp
    nop
    ld [$2afc], sp
    jr nz, jr_012_5c25

    inc b
    jr z, jr_012_5c40

    ld [$260c], sp
    jr nz, jr_012_5c2d

jr_012_5c25:
    inc d
    inc h
    jr nz, jr_012_5c2e

    nop
    db $fc
    ld a, [de]
    nop

jr_012_5c2d:
    nop

jr_012_5c2e:
    inc b
    inc e
    nop
    nop
    inc c
    ld e, $00
    db $10
    db $fc
    jr nz, jr_012_5c39

jr_012_5c39:
    db $10
    inc b
    ld [hli], a
    nop
    dec b
    nop
    db $fc

jr_012_5c40:
    ld e, $20
    nop
    inc b
    inc e
    jr nz, jr_012_5c47

jr_012_5c47:
    inc c
    ld a, [de]
    jr nz, jr_012_5c5b

    inc b
    ld [hli], a
    jr nz, jr_012_5c5f

    inc c
    jr nz, @+$22

    dec b
    inc bc
    nop
    nop
    nop
    inc bc
    ld [$2000], sp

jr_012_5c5b:
    ld a, [bc]
    nop
    ld [bc], a
    nop

jr_012_5c5f:
    ld a, [bc]
    ld [$2002], sp
    rrca
    inc b
    inc b
    nop
    dec b
    db $fc

jr_012_5c69:
    nop
    inc d
    jr nz, jr_012_5c69

    ld [$2012], sp
    inc c
    ld hl, sp+$1a
    jr nz, jr_012_5c81

    nop
    jr @+$22

    inc c
    ld [$2016], sp
    dec b
    db $fc
    nop
    ld e, $20

jr_012_5c81:
    db $fc
    ld [$201c], sp
    inc c
    ld hl, sp+$1a
    jr nz, @+$0e

    nop
    inc h
    jr nz, jr_012_5c9a

    ld [$2016], sp
    dec b
    db $fc

jr_012_5c93:
    nop
    ld [hli], a
    jr nz, jr_012_5c93

    ld [$2020], sp

jr_012_5c9a:
    inc c
    ld hl, sp+$1a
    jr nz, @+$0e

    nop
    ld h, $20
    inc c
    ld [$2016], sp
    dec b
    db $fc

jr_012_5ca8:
    nop
    ld a, [hli]
    jr nz, jr_012_5ca8

    ld [$2028], sp
    inc c
    ld hl, sp+$30
    jr nz, jr_012_5cc0

    nop
    ld l, $20
    inc c
    ld [$202c], sp
    dec b
    db $fc
    nop
    ld [de], a
    nop

jr_012_5cc0:
    db $fc
    ld [$0014], sp
    inc c
    nop
    ld d, $00
    inc c
    ld [$0018], sp
    inc c
    db $10
    ld a, [de]
    nop
    dec b
    db $fc
    nop
    inc e
    nop
    db $fc
    ld [$001e], sp
    inc c
    nop
    ld d, $00
    inc c
    ld [$0024], sp
    inc c
    db $10
    ld a, [de]
    nop
    dec b
    db $fc
    nop
    jr nz, jr_012_5cea

jr_012_5cea:
    db $fc
    ld [$0022], sp
    inc c
    nop
    ld d, $00
    inc c
    ld [$0026], sp
    inc c
    db $10
    ld a, [de]
    nop
    dec b
    db $fc
    nop
    jr z, jr_012_5cff

jr_012_5cff:
    db $fc
    ld [$002a], sp
    inc c
    nop
    inc l
    nop
    inc c
    ld [$002e], sp
    inc c
    db $10
    jr nc, jr_012_5d0f

jr_012_5d0f:
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [$2000], sp
    db $10
    db $fc
    ld [bc], a
    nop
    db $10
    inc b
    inc b
    nop
    db $10
    inc c
    ld [bc], a
    jr nz, jr_012_5d2a

    ld bc, $0000
    nop
    nop

jr_012_5d2a:
    ld [$2006], sp
    stop
    ld [$1000], sp
    ld [$000a], sp
    jr jr_012_5d47

    inc c
    nop
    dec b
    nop
    nop
    ld b, $00
    ld bc, $0008
    jr nz, @+$1a

    ld hl, sp+$0c
    jr nz, @+$12

jr_012_5d47:
    nop
    ld a, [bc]
    jr nz, @+$12

    ld [$2008], sp
    ld b, $00
    db $fc
    ld d, h
    jr nz, jr_012_5d54

jr_012_5d54:
    inc b
    ld d, d
    jr nz, jr_012_5d58

jr_012_5d58:
    inc c
    ld d, b
    jr nz, @+$12

    db $fc
    ld e, d
    jr nz, @+$12

    inc b
    ld e, b
    jr nz, @+$12

    inc c
    ld d, [hl]
    jr nz, jr_012_5d6e

    nop
    db $fc
    ld d, h
    jr nz, jr_012_5d6d

jr_012_5d6d:
    inc b

jr_012_5d6e:
    ld e, h
    jr nz, jr_012_5d71

jr_012_5d71:
    inc c
    ld d, b
    jr nz, jr_012_5d85

    db $fc
    ld e, d
    jr nz, jr_012_5d89

    inc b
    ld e, b
    jr nz, jr_012_5d8d

    inc c
    ld d, [hl]
    jr nz, jr_012_5d87

    nop
    db $fc
    ld d, b
    nop

jr_012_5d85:
    nop
    inc b

jr_012_5d87:
    ld d, d
    nop

jr_012_5d89:
    nop
    inc c
    ld d, h
    nop

jr_012_5d8d:
    db $10
    db $fc
    ld d, [hl]
    nop
    db $10
    inc b
    ld e, b
    nop
    db $10
    inc c
    ld e, d
    nop
    ld b, $00
    db $fc
    ld d, b
    nop
    nop
    inc b
    ld e, h
    nop
    nop
    inc c
    ld d, h
    nop
    db $10
    db $fc
    ld d, [hl]
    nop
    db $10
    inc b
    ld e, b
    nop
    db $10
    inc c
    ld e, d
    nop
    ld b, $f8
    nop
    nop
    nop
    ld hl, sp+$08
    nop
    jr nz, jr_012_5dc4

    nop
    inc b
    nop
    ld [$0408], sp
    jr nz, @+$1a

jr_012_5dc4:
    nop
    inc b
    nop
    jr @+$0a

    inc b
    jr nz, jr_012_5dd2

    ld hl, sp+$00
    ld [bc], a
    nop
    ld hl, sp+$08

jr_012_5dd2:
    ld [bc], a
    jr nz, jr_012_5ddd

    nop
    ld b, $00
    ld [$0608], sp
    jr nz, @+$1a

jr_012_5ddd:
    nop
    ld b, $00
    jr @+$0a

    ld b, $20
    ld b, $f8
    nop
    inc b
    nop
    ld hl, sp+$08
    inc b
    jr nz, jr_012_5df6

    nop
    inc b
    nop
    ld [$0408], sp
    jr nz, @+$1a

jr_012_5df6:
    nop
    inc b
    nop
    jr @+$0a

    inc b
    jr nz, jr_012_5e04

    ld hl, sp+$00
    ld b, $00
    ld hl, sp+$08

jr_012_5e04:
    ld b, $20
    ld [$0600], sp
    nop
    ld [$0608], sp
    jr nz, jr_012_5e27

    nop
    ld b, $00
    jr jr_012_5e1c

    ld b, $20
    ld b, $02
    nop
    nop
    nop
    ld [bc], a

jr_012_5e1c:
    ld [$2000], sp
    add hl, bc
    nop
    ld [bc], a
    nop
    add hl, bc
    ld [$2002], sp

jr_012_5e27:
    ld c, $04
    inc b
    nop
    ld de, $0404
    nop
    ld b, $ff
    nop
    nop
    nop
    rst $38
    ld [$2000], sp
    ld [$0200], sp
    nop
    ld [$0208], sp
    jr nz, @+$11

    inc b
    inc b
    nop
    inc d
    inc b
    inc b
    nop
    ld b, $fd
    nop
    nop
    nop
    db $fd
    ld [$2000], sp
    ld [$0200], sp
    nop
    ld [$0208], sp
    jr nz, @+$12

    inc b
    inc b
    nop
    ld d, $04
    inc b
    nop
    ld b, $fd
    ld bc, $0000
    db $fd
    add hl, bc
    nop
    jr nz, jr_012_5e73

    rst $38
    ld [bc], a
    nop
    ld [$0207], sp
    jr nz, @+$12

jr_012_5e73:
    dec b
    inc b
    nop
    ld d, $04
    inc b
    nop
    ld b, $fd
    rst $38
    nop
    nop
    db $fd
    rlca
    nop
    jr nz, jr_012_5e8c

    ld bc, $0002
    ld [$0209], sp
    jr nz, jr_012_5e9c

jr_012_5e8c:
    inc bc
    inc b
    nop
    ld d, $04
    inc b
    nop
    ld b, $f8
    ld a, [$0000]
    ld hl, sp+$02
    ld [bc], a
    nop

jr_012_5e9c:
    ld hl, sp+$0a
    inc b
    nop
    ld [$06fa], sp
    nop
    ld [$0802], sp
    nop
    ld [$0a0a], sp
    nop
    ld b, $f8
    ld a, [$0000]
    ld hl, sp+$02
    ld [bc], a
    nop
    ld hl, sp+$0a
    inc b
    nop
    ld [$0cfa], sp
    nop
    ld [$0802], sp
    nop
    ld [$0e0a], sp
    nop
    ld b, $06
    db $fd
    inc c
    nop
    dec b
    dec b
    ld c, $00
    rlca
    dec c
    stop
    ld d, $fd
    ld [de], a
    nop
    dec d
    dec b
    inc d
    nop
    rla
    dec c
    ld d, $00
    ld b, $fc
    db $fc
    ld b, d
    nop
    db $fc
    inc b
    ld b, h
    nop
    db $fc
    inc c
    ld b, d
    jr nz, jr_012_5ef8

    db $fc
    ld b, [hl]
    nop
    inc c
    inc b
    ld c, b
    nop
    inc c
    inc c
    ld b, [hl]
    jr nz, jr_012_5efe

jr_012_5ef8:
    inc b
    db $fc
    ld [$fc00], sp
    inc b

jr_012_5efe:
    ld [bc], a
    nop
    inc b
    inc c
    ld [$1420], sp
    db $fc
    inc b
    nop
    inc c
    inc b
    ld b, $00
    inc d
    inc c
    inc b
    jr nz, jr_012_5f17

    db $fc
    db $fc
    inc c
    nop
    db $fc
    inc b

jr_012_5f17:
    ld c, $00
    db $fc
    inc c
    inc c
    jr nz, jr_012_5f2a

    db $fc
    stop
    inc c
    inc b
    ld b, $00
    inc c
    inc c
    db $10
    jr nz, jr_012_5f30

jr_012_5f2a:
    inc b
    db $fc
    ld a, [bc]
    nop
    db $fc
    inc b

jr_012_5f30:
    ld [bc], a
    nop
    inc b
    inc c
    ld a, [bc]
    jr nz, jr_012_5f4b

    db $fc
    inc b
    nop
    inc c
    inc b
    ld b, $00
    inc d
    inc c
    inc b
    jr nz, jr_012_5f49

    inc b
    db $fc
    nop
    nop
    db $fc
    inc b

jr_012_5f49:
    ld [bc], a
    nop

jr_012_5f4b:
    inc b
    inc c
    nop
    jr nz, jr_012_5f64

    db $fc
    inc b
    nop
    inc c
    inc b
    ld b, $00
    inc d
    inc c
    inc b
    jr nz, jr_012_5f62

    nop
    db $fc
    nop
    nop
    nop
    inc b

jr_012_5f62:
    ld [bc], a
    nop

jr_012_5f64:
    nop
    inc c
    inc b
    nop
    db $10
    db $fc
    ld b, $00
    db $10
    inc b
    ld [$1000], sp
    inc c
    ld a, [bc]
    nop
    ld b, $00
    db $fc
    inc b
    jr nz, jr_012_5f7a

jr_012_5f7a:
    inc b
    ld [bc], a
    jr nz, jr_012_5f7e

jr_012_5f7e:
    inc c
    nop
    jr nz, jr_012_5f92

    db $fc
    ld a, [bc]
    jr nz, jr_012_5f96

    inc b
    ld [$1020], sp
    inc c
    ld b, $20
    ld b, $00
    db $fc
    ld b, b
    ld b, b

jr_012_5f92:
    nop
    inc b
    ld b, d
    ld b, b

jr_012_5f96:
    nop
    inc c
    ld b, b
    ld h, b
    db $10
    db $fc
    jr nz, jr_012_5fde

    db $10
    inc b
    ld [hli], a
    ld b, b
    db $10
    inc c
    jr nz, jr_012_6006

    ld b, $00
    db $fc
    ld b, h
    ld b, b
    nop
    inc b
    ld b, [hl]
    ld b, b
    nop
    inc c
    ld b, h
    ld h, b
    db $10
    db $fc
    inc h
    ld b, b
    db $10
    inc b
    ld h, $40
    db $10
    inc c
    inc h
    ld h, b
    ld b, $00
    db $fc
    ld c, b
    ld b, b
    nop
    inc b
    ld c, d
    ld b, b
    nop
    inc c
    ld c, b
    ld h, b
    db $10
    db $fc
    jr z, jr_012_6010

    db $10
    inc b
    ld a, [hli]
    ld b, b
    db $10
    inc c
    jr z, jr_012_6038

    ld b, $00
    db $fc
    ld c, h
    ld b, b
    nop

jr_012_5fde:
    inc b
    ld c, [hl]
    ld b, b
    nop
    inc c
    ld c, h
    ld h, b
    db $10
    db $fc
    inc l
    ld b, b
    db $10
    inc b
    ld l, $40
    db $10
    inc c
    inc l
    ld h, b
    ld b, $00
    db $fc
    jr nz, jr_012_5ff6

jr_012_5ff6:
    nop
    inc b
    ld [hli], a
    nop
    nop
    inc c
    jr nz, jr_012_601e

    db $10
    db $fc
    ld b, b
    nop
    db $10
    inc b
    ld b, d
    nop

jr_012_6006:
    db $10
    inc c
    ld b, b
    jr nz, jr_012_6011

    nop
    db $fc
    inc h
    nop
    nop

jr_012_6010:
    inc b

jr_012_6011:
    ld h, $00
    nop
    inc c
    inc h
    jr nz, jr_012_6028

    db $fc
    ld b, h
    nop
    db $10
    inc b
    ld b, [hl]

jr_012_601e:
    nop
    db $10
    inc c
    ld b, h
    jr nz, jr_012_602a

    nop
    db $fc
    jr z, jr_012_6028

jr_012_6028:
    nop
    inc b

jr_012_602a:
    ld a, [hli]
    nop
    nop
    inc c
    jr z, jr_012_6050

    db $10
    db $fc
    ld c, b
    nop
    db $10
    inc b
    ld c, d
    nop

jr_012_6038:
    db $10
    inc c
    ld c, b
    jr nz, jr_012_6043

    nop
    db $fc
    inc l
    nop
    nop
    inc b

jr_012_6043:
    ld l, $00
    nop
    inc c
    inc l
    jr nz, jr_012_605a

    db $fc
    ld c, h
    nop
    db $10
    inc b
    ld c, [hl]

jr_012_6050:
    nop
    db $10
    inc c
    ld c, h
    jr nz, @+$08

    rst $38
    nop
    nop
    nop

jr_012_605a:
    rst $38
    ld [$0002], sp
    dec bc
    ld hl, sp+$04
    nop
    rrca
    nop
    ld b, $00
    rrca
    ld [$0008], sp
    dec bc
    db $10
    inc b
    jr nz, @+$08

    rst $38
    nop
    ld a, [bc]
    nop
    rst $38
    ld [$000c], sp
    dec bc
    ld hl, sp+$0e
    nop
    rrca
    nop
    stop
    rrca
    ld [$0012], sp
    dec bc
    db $10
    ld c, $20
    ld b, $ff
    nop
    inc d
    nop
    rst $38
    ld [$0016], sp
    dec bc
    ld hl, sp+$18
    nop
    rrca
    nop
    ld a, [de]
    nop
    rrca
    ld [$001c], sp
    dec bc
    db $10
    jr jr_012_60c0

    ld b, $ff
    nop
    ld e, $00
    rst $38
    ld [$0020], sp
    dec bc
    ld hl, sp+$22
    nop
    rrca
    nop
    inc h
    nop
    rrca
    ld [$0026], sp
    dec bc
    db $10
    ld [hli], a
    jr nz, jr_012_60c0

    nop
    db $fc
    ld h, h
    nop
    nop
    inc b

jr_012_60c0:
    ld h, [hl]
    nop
    db $10
    db $fc
    ld l, b
    nop
    db $10
    inc b
    ld l, d
    nop
    db $10
    inc c
    ld l, h
    nop
    nop
    dec bc
    ld h, h
    jr nz, jr_012_60d9

    nop
    inc c
    ld h, h
    jr nz, jr_012_60d8

jr_012_60d8:
    inc b

jr_012_60d9:
    ld h, [hl]
    jr nz, @+$12

    inc c
    ld l, b
    jr nz, jr_012_60f0

    inc b
    ld l, d
    jr nz, jr_012_60f4

    db $fc
    ld l, h
    jr nz, jr_012_60e8

jr_012_60e8:
    db $fd
    ld h, h
    nop
    ld b, $00
    db $fc
    jr jr_012_60f0

jr_012_60f0:
    nop
    inc b
    ld a, [de]
    nop

jr_012_60f4:
    db $10
    db $fc
    inc e
    nop
    db $10
    inc b
    ld e, $00
    nop
    dec bc
    jr jr_012_6120

    db $10
    dec bc
    inc e
    jr nz, jr_012_610b

    nop
    db $fc
    ld a, [hl]
    nop
    nop
    inc b

jr_012_610b:
    add b
    nop
    db $10
    db $fc
    add d
    nop
    db $10
    inc b
    add h
    nop
    db $10
    inc c
    add [hl]
    nop
    nop
    dec bc
    ld a, [hl]
    jr nz, jr_012_6124

    nop
    inc c

jr_012_6120:
    ld a, [hl]
    jr nz, jr_012_6123

jr_012_6123:
    inc b

jr_012_6124:
    add b
    jr nz, @+$12

    inc c
    add d
    jr nz, jr_012_613b

    inc b
    add h
    jr nz, jr_012_613f

    db $fc
    add [hl]
    jr nz, jr_012_6133

jr_012_6133:
    db $fd
    ld a, [hl]
    nop
    ld b, $00
    db $fc
    sbc b
    nop

jr_012_613b:
    nop
    inc b
    sbc d
    nop

jr_012_613f:
    db $10
    db $fc
    sbc h
    nop
    db $10
    inc b
    sbc [hl]
    nop
    nop
    inc c
    sbc b
    jr nz, jr_012_615c

    inc c
    sbc h
    jr nz, jr_012_6156

    db $fc
    db $fc
    nop
    nop
    inc c
    db $fc

jr_012_6156:
    ld [bc], a
    nop
    inc b
    inc b
    inc b
    nop

jr_012_615c:
    inc d
    inc b
    ld b, $00
    db $fc
    dec bc
    nop
    jr nz, jr_012_6171

    dec bc
    ld [bc], a
    jr nz, jr_012_616f

    nop
    db $fc
    ld l, $00
    nop
    inc b

jr_012_616f:
    jr nc, jr_012_6171

jr_012_6171:
    nop
    inc c
    ld [hl-], a
    nop
    rrca
    db $fc
    ld l, $40
    rrca
    inc b
    jr nc, jr_012_61bd

    rrca
    inc c
    ld [hl-], a
    ld b, b
    ld b, $00
    db $fc
    inc [hl]
    nop
    nop
    inc b
    ld [hl], $00
    nop
    inc c
    jr c, jr_012_618e

jr_012_618e:
    rrca
    db $fc
    inc [hl]
    ld b, b
    rrca
    inc b
    ld [hl], $40
    rrca
    inc c
    jr c, jr_012_61da

    ld b, $04
    db $fc
    ld [bc], a
    ld b, b
    inc d
    db $fc
    nop
    ld b, b
    db $fc
    inc b
    ld b, $40
    inc c
    inc b
    inc b
    ld b, b
    inc b
    dec bc
    ld [bc], a
    ld h, b
    inc d
    dec bc
    nop
    ld h, b
    ld b, $00
    db $fc
    ld [hl-], a
    jr nz, jr_012_61b9

jr_012_61b9:
    inc b
    jr nc, @+$22

    nop

jr_012_61bd:
    inc c
    ld l, $20
    rrca
    db $fc
    ld [hl-], a
    ld h, b
    rrca
    inc b
    jr nc, jr_012_6228

    rrca
    inc c
    ld l, $60
    ld b, $00
    db $fc
    jr c, @+$22

    nop
    inc b
    ld [hl], $20
    nop
    inc c
    inc [hl]
    jr nz, jr_012_61e9

jr_012_61da:
    db $fc
    jr c, jr_012_623d

    rrca
    inc b
    ld [hl], $60
    rrca
    inc c
    inc [hl]
    ld h, b
    ld b, $00
    nop
    inc a

jr_012_61e9:
    nop
    db $10
    ld hl, sp+$3a
    nop
    stop
    ld a, $00   ; xor a
    nop
    rlca
    inc a
    jr nz, jr_012_6207

    rlca
    ld a, $20
    db $10
    rrca
    ld a, [hl-]
    jr nz, @+$08

    ld [$0af0], sp
    ld b, b
    ld [$0ef8], sp
    ld h, b

jr_012_6207:
    ld [$0408], sp
    ld h, b
    ld [$0600], sp
    ld h, b
    ld [$0c10], sp
    ld h, b
    ld [$0a18], sp
    ld h, b
    ld b, $08
    ldh a, [rP1]
    nop
    ld [$02f8], sp
    nop
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop

jr_012_6228:
    ld [$0810], sp
    nop
    ld [$1018], sp
    jr nz, @+$08

    ld [$0af0], sp
    nop
    ld [$0cf8], sp
    nop
    ld [$0400], sp
    nop

jr_012_623d:
    ld [$0608], sp
    nop
    ld [$0e10], sp
    nop
    ld [$0a18], sp
    jr nz, @+$08

    ld [$10f0], sp
    nop
    ld [$12f8], sp
    nop
    ld [$0400], sp
    nop
    ld [$0608], sp
    nop
    ld [$1410], sp
    nop
    ld [$0018], sp
    jr nz, @+$08

    ld [$0af0], sp
    nop
    ld [$0cf8], sp
    nop
    ld [$1600], sp
    nop
    ld [$1808], sp
    nop
    ld [$0e10], sp
    nop
    ld [$0a18], sp
    jr nz, @+$08

    ld [$00f0], sp
    nop
    ld [$02f8], sp
    nop
    ld [$1a00], sp
    nop
    ld [$1c08], sp
    nop
    ld [$0810], sp
    nop
    ld [$1018], sp
    jr nz, @+$08

    ld [$0af0], sp
    nop
    ld [$0cf8], sp
    nop
    ld [$1a00], sp
    nop
    ld [$1c08], sp
    nop
    ld [$0e10], sp
    nop
    ld [$0a18], sp
    jr nz, @+$08

    ld [$10f0], sp
    nop
    ld [$12f8], sp
    nop
    ld [$1a00], sp
    nop
    ld [$1c08], sp
    nop
    ld [$1410], sp
    nop
    ld [$0018], sp
    jr nz, @+$08

    ld [$30f0], sp
    nop
    ld [$32f8], sp
    nop
    inc bc
    nop
    inc [hl]
    nop
    dec b
    ld [$0036], sp
    ld b, $10
    jr c, jr_012_62db

jr_012_62db:
    ld [$3a18], sp
    nop
    ld b, $08
    ldh a, [rLCDC]
    nop
    ld [$42f8], sp
    nop
    ld a, [bc]
    nop
    ld a, [de]
    nop
    ld [$4408], sp
    nop
    ld [$4610], sp
    nop
    ld [$4018], sp
    jr nz, jr_012_62ff

    inc b
    db $fc
    ld b, h
    nop
    db $fc
    inc b

jr_012_62ff:
    ld b, [hl]
    nop
    inc b
    inc c
    ld b, h
    jr nz, jr_012_631a

    db $fc
    ld c, b
    nop
    inc c
    inc b
    ld c, d
    nop
    inc d
    inc c
    ld c, b
    jr nz, jr_012_6318

    inc b
    db $fc
    nop
    nop
    db $fc
    inc b

jr_012_6318:
    ld [bc], a
    nop

jr_012_631a:
    inc b
    dec bc
    nop
    jr nz, jr_012_6333

    db $fc
    inc b
    nop
    inc c
    inc b
    ld b, $00
    inc d
    dec bc
    inc b
    jr nz, jr_012_6332

    ld [bc], a
    db $f4
    stop
    ld [bc], a
    db $fc
    ld [de], a

jr_012_6332:
    nop

jr_012_6333:
    ld [bc], a
    inc b
    inc d
    nop
    ld [bc], a
    inc c
    ld d, $00
    ld [de], a
    db $fc
    jr jr_012_633f

jr_012_633f:
    ld [de], a
    inc b
    ld a, [de]
    nop
    ld [de], a
    inc c
    inc e
    nop
    rlca
    cp $fc
    jr jr_012_638c

    cp $04
    ld a, [de]
    ld b, b
    cp $0c
    inc e
    ld b, b
    ld c, $f4
    db $10
    ld b, b
    ld c, $fc
    ld [de], a
    ld b, b
    ld c, $04
    inc d
    ld b, b
    ld c, $0c
    ld d, $40
    rlca
    cp $fc
    inc e
    ld h, b
    cp $04
    ld a, [de]
    ld h, b
    cp $0c
    jr @+$62

    ld c, $fc
    ld d, $60
    ld c, $04
    inc d
    ld h, b
    ld c, $0c
    ld [de], a
    ld h, b
    ld c, $14
    db $10
    ld h, b
    rlca
    ld [bc], a
    db $fc
    ld d, $20
    ld [bc], a
    inc b
    inc d
    jr nz, jr_012_638d

    inc c

jr_012_638c:
    ld [de], a

jr_012_638d:
    jr nz, jr_012_6391

    inc d
    db $10

jr_012_6391:
    jr nz, @+$14

    db $fc
    inc e
    jr nz, jr_012_63a9

    inc b
    ld a, [de]
    jr nz, jr_012_63ad

    inc c
    jr @+$22

    rlca
    ei
    inc c
    ld e, $00
    ld [$48f0], sp
    nop
    ld b, $f8

jr_012_63a9:
    ld c, d
    nop
    ld [bc], a
    nop

jr_012_63ad:
    ld c, h
    nop
    ld [bc], a
    ld [$204c], sp
    ld b, $10
    ld c, d
    jr nz, jr_012_63c0

    jr jr_012_6402

    jr nz, jr_012_63c4

    nop
    ld hl, sp+$68
    dec b

jr_012_63c0:
    nop
    nop
    ld l, d
    dec b

jr_012_63c4:
    nop
    db $10
    ld l, b
    dec h
    nop
    ld [$256a], sp
    db $10
    ld hl, sp+$68
    ld b, l
    stop
    ld l, d
    ld b, l
    db $10
    db $10
    ld l, b
    ld h, l
    db $10
    ld [$656a], sp
    ld [$f800], sp
    ld h, h
    dec b
    nop
    nop
    ld h, [hl]
    dec b
    nop
    db $10
    ld h, h
    dec h
    nop
    ld [$2566], sp
    db $10
    ld hl, sp+$64
    ld b, l
    stop
    ld h, [hl]
    ld b, l
    db $10
    db $10
    ld h, h
    ld h, l
    db $10
    ld [$6566], sp
    ld [$f800], sp
    nop
    ld [bc], a

jr_012_6402:
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [HeaderLogo], sp
    nop
    db $10
    ld b, $01
    db $10
    ld hl, sp+$08
    ld [bc], a
    stop
    ld a, [bc]
    ld [bc], a
    db $10
    ld [$010c], sp
    db $10
    db $10
    ld c, $01
    ld [$f800], sp
    jr nz, jr_012_6423

jr_012_6423:
    nop
    nop
    ld [hli], a
    nop
    nop
    ld [$0024], sp
    nop
    db $10
    ld h, $00
    db $10
    ld hl, sp+$40
    nop
    stop
    ld b, d
    nop
    db $10
    ld [$0044], sp
    db $10
    db $10
    ld b, [hl]
    nop
    ld [$0000], sp
    inc h
    jr nz, jr_012_6445

jr_012_6445:
    ld hl, sp+$26
    jr nz, jr_012_6459

    nop
    ld b, h
    jr nz, jr_012_645d

    ld hl, sp+$46
    jr nz, jr_012_6451

jr_012_6451:
    db $10
    jr z, jr_012_6474

    nop
    ld [$202a], sp
    db $10

jr_012_6459:
    db $10
    ld c, b
    jr nz, jr_012_646d

jr_012_645d:
    ld [$204a], sp
    ld [$f800], sp
    db $10
    ld [bc], a
    nop
    nop
    ld [de], a
    ld [bc], a
    nop
    ld [$0114], sp

jr_012_646d:
    nop
    db $10
    ld d, $01
    db $10
    ld hl, sp+$18

jr_012_6474:
    ld [bc], a
    stop
    ld a, [de]
    ld [bc], a
    db $10
    ld [$011c], sp
    db $10
    db $10
    ld e, $01
    ld [$f804], sp
    ld [hl], b
    ld [bc], a
    inc b
    nop
    ld [hl], d
    ld [bc], a
    inc b
    ld [$0174], sp
    inc b
    db $10
    db $76
    ld bc, $f814
    ld a, b
    ld [bc], a
    inc d
    nop
    ld a, d
    ld [bc], a
    inc d
    ld [$017c], sp
    inc d
    db $10
    ld a, [hl]
    ld bc, $0008
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    nop
    db $10
    ld hl, sp+$04
    nop
    stop
    ld b, $00
    nop
    ld [$2002], sp
    nop
    stop
    jr nz, jr_012_64cc

    ld [$2006], sp
    db $10
    db $10
    inc b
    jr nz, jr_012_64cc

    nop
    ld hl, sp+$00
    nop
    nop
    nop
    inc b
    nop

jr_012_64cc:
    nop
    ld [$2004], sp
    nop
    stop
    jr nz, jr_012_64e5

    ld hl, sp+$10
    nop
    stop
    inc d
    nop
    db $10
    ld [$2014], sp
    db $10
    db $10
    db $10
    jr nz, jr_012_64ed

jr_012_64e5:
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld c, $00

jr_012_64ed:
    nop
    ld [$2006], sp
    nop
    stop
    jr nz, jr_012_6506

    ld hl, sp+$10
    nop
    stop
    inc d
    nop
    db $10
    ld [$2014], sp
    db $10
    db $10
    db $10
    jr nz, jr_012_650e

jr_012_6506:
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld c, $00

jr_012_650e:
    nop
    ld [$2008], sp
    nop
    stop
    jr nz, jr_012_6527

    ld hl, sp+$10
    nop
    stop
    inc d
    nop
    db $10
    ld [$2014], sp
    db $10
    db $10
    db $10
    jr nz, jr_012_652f

jr_012_6527:
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld c, $00

jr_012_652f:
    nop
    ld [$200a], sp
    nop
    stop
    jr nz, jr_012_6548

    ld hl, sp+$10
    nop
    stop
    inc d
    nop
    db $10
    ld [$2016], sp
    db $10
    db $10
    db $10
    jr nz, jr_012_6550

jr_012_6548:
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    inc c
    nop

jr_012_6550:
    nop
    ld [$200c], sp
    nop
    stop
    jr nz, jr_012_6569

    ld hl, sp+$10
    nop
    stop
    jr jr_012_6560

jr_012_6560:
    db $10
    ld [$2018], sp
    db $10
    db $10
    db $10
    jr nz, jr_012_6571

jr_012_6569:
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld a, [bc]
    nop

jr_012_6571:
    nop
    ld [$200e], sp
    nop
    stop
    jr nz, jr_012_658a

    ld hl, sp+$10
    nop
    stop
    ld d, $00
    db $10
    ld [$2014], sp
    db $10
    db $10
    db $10
    jr nz, @+$0a

jr_012_658a:
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld [$0000], sp
    ld [$200e], sp
    nop
    stop
    jr nz, jr_012_65ab

    ld hl, sp+$10
    nop
    stop
    inc d
    nop
    db $10
    ld [$2014], sp
    db $10
    db $10
    db $10
    jr nz, jr_012_65b3

jr_012_65ab:
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld b, $00

jr_012_65b3:
    nop
    ld [$200e], sp
    nop
    stop
    jr nz, jr_012_65cc

    ld hl, sp+$10
    nop
    stop
    inc d
    nop
    db $10
    ld [$2014], sp
    db $10
    db $10
    db $10
    jr nz, jr_012_65d4

jr_012_65cc:
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    nop

jr_012_65d4:
    nop
    ld [$2002], sp
    nop
    stop
    jr nz, jr_012_65ed

    ld hl, sp+$10
    nop
    stop
    ld [de], a
    nop
    db $10
    ld [$2012], sp
    db $10
    db $10
    db $10
    jr nz, jr_012_65f5

jr_012_65ed:
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld [bc], a
    nop

jr_012_65f5:
    ld hl, sp+$08
    inc b
    nop
    ld hl, sp+$10
    ld b, $00
    ld [$08f8], sp
    nop
    ld [$0a00], sp
    nop
    ld [$0c08], sp
    nop
    ld [$0e10], sp
    nop
    ld [$f8f8], sp
    stop
    ld hl, sp+$00
    ld [de], a
    nop
    ld hl, sp+$08
    inc d
    nop
    ld hl, sp+$10
    ld d, $00
    ld [$18f8], sp
    nop
    ld [$1a00], sp
    nop
    ld [$1c08], sp
    nop
    ld [$1e10], sp
    nop
    ld [$f8f8], sp
    ld b, $20
    ld hl, sp+$00
    inc b
    jr nz, @-$06

    ld [$2002], sp
    ld hl, sp+$10
    nop
    jr nz, jr_012_6648

    ld hl, sp+$0e
    jr nz, @+$0a

    nop
    inc c
    jr nz, jr_012_6650

jr_012_6648:
    ld [$200a], sp
    ld [$0810], sp
    jr nz, @+$0a

jr_012_6650:
    ld hl, sp-$08
    ld d, $20
    ld hl, sp+$00
    inc d
    jr nz, @-$06

    ld [$2012], sp
    ld hl, sp+$10
    db $10
    jr nz, jr_012_6669

    ld hl, sp+$1e
    jr nz, @+$0a

    nop
    inc e
    jr nz, jr_012_6671

jr_012_6669:
    ld [$201a], sp
    ld [$1810], sp
    jr nz, jr_012_6679

jr_012_6671:
    inc b
    ld sp, hl
    jr jr_012_6675

jr_012_6675:
    inc b
    ld bc, $001a

jr_012_6679:
    inc b
    add hl, bc
    inc e
    nop
    inc b
    ld de, $001e
    inc d
    ld sp, hl
    jr nz, jr_012_6685

jr_012_6685:
    inc d
    ld bc, $0022
    inc d
    add hl, bc
    inc h
    nop
    inc d
    ld de, $0026
    ld [$f800], sp
    ld [$0000], sp
    nop
    ld a, [bc]
    nop
    nop
    db $10
    ld [$0020], sp
    ld [$200a], sp
    db $10
    db $10
    ld [$1060], sp
    ld [$600a], sp
    db $10
    ld hl, sp+$08
    ld b, b
    stop
    ld a, [bc]
    ld b, b
    ld [$f800], sp
    inc b
    nop
    nop
    nop
    ld b, $00
    nop
    db $10
    inc b
    jr nz, jr_012_66c0

jr_012_66c0:
    ld [$2006], sp
    db $10
    ld hl, sp+$04
    ld b, b
    stop
    ld b, $40
    db $10
    db $10
    inc b
    ld h, b
    db $10
    ld [$6006], sp
    ld [$f000], sp
    nop
    nop
    nop
    ld hl, sp+$02
    nop
    nop
    db $10
    ld [bc], a
    jr nz, jr_012_66e1

jr_012_66e1:
    jr jr_012_66e3

jr_012_66e3:
    jr nz, jr_012_66f5

    ld hl, sp+$0c
    nop
    stop
    ld c, $00
    db $10
    ld [$200e], sp
    db $10
    db $10
    inc c
    jr nz, jr_012_66fd

jr_012_66f5:
    nop
    ldh a, [rDIV]
    nop
    nop
    ld hl, sp+$06
    nop

jr_012_66fd:
    nop
    db $10
    ld b, $20
    nop
    jr jr_012_6708

    jr nz, jr_012_6716

    ld hl, sp+$0c

jr_012_6708:
    nop
    stop
    ld c, $00
    db $10
    ld [$200e], sp
    db $10
    db $10
    inc c
    jr nz, jr_012_671e

jr_012_6716:
    nop
    ldh a, [$08]
    nop
    nop
    ld hl, sp+$0a
    nop

jr_012_671e:
    nop
    db $10
    ld a, [bc]
    jr nz, jr_012_6723

jr_012_6723:
    jr @+$0a

    jr nz, jr_012_6737

    ld hl, sp+$0c
    nop
    stop
    ld c, $00
    db $10
    ld [$200e], sp
    db $10
    db $10
    inc c
    jr nz, jr_012_673f

jr_012_6737:
    nop
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$02
    nop

jr_012_673f:
    nop
    db $10
    ld [bc], a
    jr nz, jr_012_6744

jr_012_6744:
    jr jr_012_6746

jr_012_6746:
    jr nz, jr_012_6758

    ld hl, sp+$10
    nop
    stop
    ld [de], a
    nop
    db $10
    ld [$2012], sp
    db $10
    db $10
    db $10
    jr nz, jr_012_6760

jr_012_6758:
    nop
    ldh a, [rDIV]
    nop
    nop
    ld hl, sp+$06
    nop

jr_012_6760:
    nop
    db $10
    ld b, $20
    nop
    jr jr_012_676b

    jr nz, jr_012_6779

    ld hl, sp+$10

jr_012_676b:
    nop
    stop
    ld [de], a
    nop
    db $10
    ld [$2012], sp
    db $10
    db $10
    db $10
    jr nz, jr_012_6781

jr_012_6779:
    nop
    ldh a, [$08]
    nop
    nop
    ld hl, sp+$0a
    nop

jr_012_6781:
    nop
    db $10
    ld a, [bc]
    jr nz, jr_012_6786

jr_012_6786:
    jr jr_012_6790

    jr nz, jr_012_679a

    ld hl, sp+$10
    nop
    stop
    ld [de], a

jr_012_6790:
    nop
    db $10
    ld [$2012], sp
    db $10
    db $10
    db $10
    jr nz, jr_012_67a2

jr_012_679a:
    nop
    ldh a, [$08]
    nop
    nop
    ld hl, sp+$0a
    nop

jr_012_67a2:
    nop
    db $10
    ld a, [bc]
    jr nz, jr_012_67a7

jr_012_67a7:
    jr @+$0a

    jr nz, jr_012_67bb

    ld hl, sp+$14
    nop
    stop
    ld d, $00
    db $10
    ld [$2016], sp
    db $10
    db $10
    inc d
    jr nz, jr_012_67c3

jr_012_67bb:
    nop
    ldh a, [rDIV]
    nop
    nop
    ld hl, sp+$06
    nop

jr_012_67c3:
    nop
    db $10
    ld b, $20
    nop
    jr @+$06

    jr nz, @+$12

    ld sp, hl
    jr jr_012_67cf

jr_012_67cf:
    db $10
    ld bc, $001a
    db $10
    rlca
    ld a, [de]
    jr nz, @+$12

    rrca
    jr @+$22

    ld [$f000], sp
    nop
    nop
    nop
    ld hl, sp+$02
    nop
    nop
    db $10
    ld [bc], a
    jr nz, jr_012_67e9

jr_012_67e9:
    jr jr_012_67eb

jr_012_67eb:
    jr nz, @+$12

    ld hl, sp+$18
    nop
    stop
    ld a, [de]
    nop
    db $10
    ld [$201a], sp
    db $10
    db $10
    jr jr_012_681c

    ld [$f000], sp
    inc b
    nop
    nop
    ld hl, sp+$06
    nop
    nop
    db $10
    ld b, $20
    nop
    jr jr_012_6810

    jr nz, @+$14

    ld hl, sp+$1c

jr_012_6810:
    nop
    ld [de], a
    nop
    ld e, $00
    ld [de], a
    ld [$201e], sp
    ld [de], a
    db $10
    inc e

jr_012_681c:
    jr nz, jr_012_6826

    nop
    ldh a, [$08]
    nop
    nop
    ld hl, sp+$0a
    nop

jr_012_6826:
    nop
    db $10
    ld a, [bc]
    jr nz, jr_012_682b

jr_012_682b:
    jr @+$0a

    jr nz, jr_012_683f

    ld a, [$001c]
    db $10
    ld [bc], a
    ld e, $00
    db $10
    ld b, $1e
    jr nz, jr_012_684b

    ld c, $1c
    jr nz, jr_012_6847

jr_012_683f:
    db $fc
    ld hl, sp+$32
    nop
    db $fc
    nop
    inc [hl]
    nop

jr_012_6847:
    db $fc
    ld [$2034], sp

jr_012_684b:
    db $fc
    db $10
    ld [hl-], a
    jr nz, jr_012_685c

    ld hl, sp+$36
    nop
    inc c
    nop
    jr c, jr_012_6857

jr_012_6857:
    inc c
    ld [$2038], sp
    inc c

jr_012_685c:
    db $10
    ld [hl], $20
    ld [$f8fc], sp
    ld a, [hl-]
    nop
    db $fc
    nop
    inc a
    nop
    db $fc
    ld [$203c], sp
    db $fc
    db $10
    ld a, [hl-]
    jr nz, jr_012_687d

    ld hl, sp+$36
    nop
    inc c
    nop
    jr c, jr_012_6878

jr_012_6878:
    inc c
    ld [$2038], sp
    inc c

jr_012_687d:
    db $10
    ld [hl], $20
    ld [$f8fc], sp
    ld a, $00   ; xor a
    db $fc
    nop
    ld b, b
    nop
    db $fc
    ld [$2040], sp
    db $fc
    db $10
    ld a, $20
    inc c
    ld hl, sp+$36
    nop
    inc c
    nop
    jr c, jr_012_6899

jr_012_6899:
    inc c
    ld [$2038], sp
    inc c
    db $10
    ld [hl], $20
    ld [$f800], sp
    jr nc, jr_012_68a6

jr_012_68a6:
    nop
    nop
    ld [hl-], a
    nop
    nop
    ld [$0034], sp
    nop
    db $10
    ld [hl], $00
    db $10
    ld hl, sp+$50
    nop
    stop
    ld d, d
    nop
    db $10
    ld [$0054], sp
    db $10
    db $10
    ld d, [hl]
    nop
    ld [$f800], sp
    jr c, jr_012_68c7

jr_012_68c7:
    nop
    nop
    ld a, [hl-]
    nop
    nop
    ld [$003c], sp
    nop
    db $10
    ld a, $00   ; xor a
    db $10
    ld hl, sp+$58
    nop
    stop
    ld e, d
    nop
    db $10
    ld [$005c], sp
    db $10
    db $10
    ld e, [hl]
    nop
    ld [$f800], sp
    ld d, [hl]
    ld h, b
    nop
    nop
    ld d, h
    ld h, b
    nop
    ld [$6052], sp
    nop
    db $10
    ld d, b
    ld h, b
    db $10
    ld hl, sp+$36
    ld h, b
    stop
    inc [hl]
    ld h, b
    db $10
    ld [$6032], sp
    db $10
    db $10
    jr nc, jr_012_6964

    ld [$f800], sp
    ld e, [hl]
    ld h, b
    nop
    nop
    ld e, h
    ld h, b
    nop
    ld [$605a], sp
    nop
    db $10
    ld e, b
    ld h, b
    db $10
    ld hl, sp+$3e
    ld h, b
    stop
    inc a
    ld h, b
    db $10
    ld [$603a], sp
    db $10
    db $10
    jr c, jr_012_6985

    ld [$f800], sp
    ld l, [hl]
    nop
    nop
    nop
    ld [hl], b
    nop
    db $10
    ld hl, sp+$72
    nop
    stop
    ld [hl], h
    nop
    nop
    rrca
    ld l, [hl]
    jr nz, jr_012_693b

jr_012_693b:
    rlca
    ld [hl], b
    jr nz, jr_012_694f

    rrca
    ld [hl], d
    jr nz, jr_012_6953

    rlca
    ld [hl], h
    jr nz, jr_012_694f

    nop
    ld hl, sp+$76
    nop
    nop
    nop
    ld a, b
    nop

jr_012_694f:
    db $10
    ld hl, sp+$7a
    nop

jr_012_6953:
    stop
    ld a, h
    nop
    nop
    rrca
    db $76
    jr nz, jr_012_695c

jr_012_695c:
    rlca
    ld a, b
    jr nz, jr_012_6970

    rrca
    ld a, d
    jr nz, jr_012_6974

jr_012_6964:
    rlca
    ld a, h
    jr nz, jr_012_6970

    nop
    ld hl, sp-$70
    nop
    nop
    nop
    sub d
    nop

jr_012_6970:
    db $10
    ld hl, sp-$6c
    nop

jr_012_6974:
    stop
    sub [hl]
    nop
    nop
    rrca
    sub b
    jr nz, jr_012_697d

jr_012_697d:
    rlca
    sub d
    jr nz, jr_012_6991

    rrca
    sub h
    jr nz, jr_012_6995

jr_012_6985:
    rlca
    sub [hl]
    jr nz, jr_012_6991

    nop
    ld hl, sp-$78
    nop
    nop
    nop
    adc d
    nop

jr_012_6991:
    db $10
    ld hl, sp-$74
    nop

jr_012_6995:
    stop
    adc [hl]
    nop
    nop
    rrca
    adc b
    jr nz, jr_012_699e

jr_012_699e:
    rlca
    adc d
    jr nz, jr_012_69b2

    rrca
    adc h
    jr nz, jr_012_69b6

    rlca
    adc [hl]
    jr nz, jr_012_69b2

    db $fc
    ld hl, sp+$08
    nop
    inc c
    ld hl, sp+$0a
    nop

jr_012_69b2:
    inc b
    nop
    inc c
    nop

jr_012_69b6:
    inc d
    nop
    ld c, $00
    inc b
    rlca
    inc c
    jr nz, jr_012_69d3

    rlca
    ld c, $20
    db $fc
    rrca
    ld [$0c20], sp
    rrca
    ld a, [bc]
    jr nz, jr_012_69d3

    ld [bc], a
    db $f4
    ld e, $00
    ld [bc], a
    db $fc
    jr nz, jr_012_69d3

jr_012_69d3:
    ld [bc], a
    inc b
    ld [hli], a
    nop
    ld [bc], a
    inc c
    inc h
    nop
    ld [de], a
    db $f4
    ld h, $00
    ld [de], a
    db $fc
    jr z, jr_012_69e3

jr_012_69e3:
    ld [de], a
    inc b
    ld a, [hli]
    nop
    ld [de], a
    inc c
    inc l
    nop
    ld [$f4fe], sp
    ld h, $40
    cp $fc
    jr z, jr_012_6a34

    cp $04
    ld a, [hli]
    ld b, b
    cp $0c
    inc l
    ld b, b
    ld c, $f4
    ld e, $40
    ld c, $fc
    jr nz, jr_012_6a44

    ld c, $04
    ld [hli], a
    ld b, b
    ld c, $0c
    inc h
    ld b, b
    ld [$f804], sp
    ld a, [bc]
    ld b, b
    inc d
    ld hl, sp+$08
    ld b, b
    db $fc
    nop
    ld c, $40
    inc c
    nop
    inc c
    ld b, b
    db $fc
    rlca
    ld c, $60
    inc c
    rlca
    inc c
    ld h, b
    inc b
    rrca
    ld a, [bc]
    ld h, b
    inc d
    rrca
    ld [$0860], sp
    cp $fc
    inc l
    ld h, b
    cp $04

jr_012_6a34:
    ld a, [hli]
    ld h, b
    cp $0c
    jr z, jr_012_6a9a

    cp $14
    ld h, $60
    ld c, $fc
    inc h
    ld h, b
    ld c, $04

jr_012_6a44:
    ld [hli], a
    ld h, b
    ld c, $0c
    jr nz, jr_012_6aaa

    ld c, $14
    ld e, $60
    ld [$fc02], sp
    inc h
    jr nz, jr_012_6a56

    inc b
    ld [hli], a

jr_012_6a56:
    jr nz, @+$04

    inc c
    jr nz, jr_012_6a7b

    ld [bc], a
    inc d
    ld e, $20
    ld [de], a
    db $fc
    inc l
    jr nz, jr_012_6a76

    inc b
    ld a, [hli]
    jr nz, jr_012_6a7a

    inc c
    jr z, @+$22

    ld [de], a
    inc d
    ld h, $20
    ld [$fcf0], sp
    jr nz, jr_012_6a74

jr_012_6a74:
    ldh a, [$0c]

jr_012_6a76:
    jr nz, @+$22

    nop
    db $fc

jr_012_6a7a:
    ld [hli], a

jr_012_6a7b:
    nop
    nop
    inc b
    inc h
    nop
    nop
    inc c
    ld [hli], a
    jr nz, jr_012_6a95

    db $fc
    ld h, $00
    db $10
    inc b
    jr z, jr_012_6a8c

jr_012_6a8c:
    db $10
    inc c
    ld h, $20
    ld [$fcf0], sp
    jr nz, jr_012_6a95

jr_012_6a95:
    ldh a, [$0c]
    jr nz, jr_012_6ab9

    nop

jr_012_6a9a:
    db $fc
    ld a, [hli]
    nop
    nop
    inc b
    inc l
    nop
    nop
    inc c
    ld a, [hli]
    jr nz, @+$12

    db $fc
    ld l, $00
    db $10

jr_012_6aaa:
    inc b
    jr nc, jr_012_6aad

jr_012_6aad:
    db $10
    inc c
    ld l, $20
    ld [$f800], sp
    nop
    ld b, $00
    nop
    ld [bc], a

jr_012_6ab9:
    ld b, $10
    ld hl, sp+$04
    ld b, $10
    nop
    ld b, $06
    nop
    stop
    ld h, $00
    ld [$2602], sp
    db $10
    db $10
    inc b
    ld h, $10
    ld [$2606], sp
    ld [$f800], sp
    ld [$0006], sp
    nop
    ld a, [bc]
    ld b, $10
    ld hl, sp+$0c
    ld b, $10
    nop
    ld c, $06
    nop
    db $10
    ld [$0026], sp
    ld [$260a], sp
    db $10
    db $10
    inc c
    ld h, $10
    ld [$260e], sp
    ld [$f800], sp
    db $10
    ld b, $00
    nop
    ld [de], a
    ld b, $10
    ld hl, sp+$14
    ld b, $10
    nop
    ld d, $06
    nop
    db $10
    db $10
    ld h, $00
    ld [$2612], sp
    db $10
    db $10
    inc d
    ld h, $10
    ld [$2616], sp
    ld [$f800], sp
    jr @+$08

    nop
    nop
    ld a, [de]
    ld b, $10
    ld hl, sp+$1c
    ld b, $10
    nop
    ld e, $06
    nop
    db $10
    jr jr_012_6b4f

    nop
    ld [$261a], sp
    db $10
    db $10
    inc e
    ld h, $10
    ld [$261e], sp
    ld [$f800], sp
    jr nz, jr_012_6b3d

    nop
    nop
    ld [hli], a

jr_012_6b3d:
    inc bc
    db $10
    ld hl, sp+$24
    inc bc
    stop
    ld h, $03
    nop
    db $10
    jr nz, jr_012_6b6d

    nop
    ld [$2322], sp
    db $10

jr_012_6b4f:
    db $10
    inc h
    inc hl
    db $10
    ld [$2326], sp
    add hl, bc
    db $fd
    ld c, $34
    jr nz, @-$01

    ld b, $36
    jr nz, @-$01

    cp $38
    jr nz, jr_012_6b71

    ld b, $3a
    jr nz, jr_012_6b75

    cp $3c
    jr nz, jr_012_6b89

    inc bc

jr_012_6b6d:
    ld a, $20
    cp $17

jr_012_6b71:
    ld c, h

jr_012_6b72:
    jr nz, jr_012_6b72

    rrca

jr_012_6b75:
    ld c, [hl]
    jr nz, @+$10

    rla
    ld d, b
    jr nz, jr_012_6b85

    db $fd
    ld c, $34
    jr nz, @-$01

    ld b, $36
    jr nz, @-$01

jr_012_6b85:
    cp $38
    jr nz, jr_012_6b96

jr_012_6b89:
    ld b, $3a
    jr nz, jr_012_6b9a

    cp $3c
    jr nz, jr_012_6bae

    inc bc
    ld a, $20
    cp $17

jr_012_6b96:
    ld c, h
    dec h
    cp $0f

jr_012_6b9a:
    ld c, [hl]
    dec h
    ld c, $17
    ld d, b
    dec h
    add hl, bc
    db $f4
    ld bc, $0558
    db $f4
    add hl, bc
    ld e, d
    dec b
    inc b
    db $fc
    ld e, h
    dec b
    inc b

jr_012_6bae:
    inc b
    ld e, [hl]
    dec b
    inc b
    inc c
    ld e, h
    dec h
    inc d
    ld hl, sp+$60
    dec b
    inc d
    nop
    ld h, d
    dec b
    inc d
    db $10
    ld h, b
    dec h
    inc d
    ld [$2562], sp
    add hl, bc
    db $f4
    nop
    ld b, b
    dec b
    db $f4
    ld [$0542], sp
    inc b
    db $fc
    ld b, h
    dec b
    inc b
    inc b
    ld b, [hl]
    dec b
    inc b
    inc c
    ld b, h
    dec h
    inc d
    ei
    ld c, b
    dec b
    inc d
    inc bc
    ld c, d
    dec b
    inc d
    ld c, $48
    dec h
    inc d
    ld b, $4a
    dec h
    add hl, bc
    nop
    db $f4
    inc b
    nop
    nop
    db $fc
    ld b, $00
    nop
    inc b
    ld [$0000], sp
    inc c
    ld a, [bc]
    nop
    nop
    inc d
    inc c
    nop
    db $10
    rst $30
    ld c, $00
    db $10
    rst $38
    stop
    db $10
    rlca
    ld [de], a
    nop
    db $10
    rrca
    inc d
    nop
    add hl, bc
    nop
    db $f4
    ld d, $00
    nop
    db $fc
    jr jr_012_6c18

jr_012_6c18:
    nop
    inc b
    ld a, [de]
    nop
    nop
    inc c
    inc e
    nop
    nop
    inc d
    ld e, $00
    db $10
    ld sp, hl
    inc d
    jr nz, jr_012_6c39

    ld bc, $2012
    db $10
    add hl, bc
    db $10
    jr nz, jr_012_6c41

    ld de, $200e
    add hl, bc
    nop
    db $f4
    ld [hli], a
    nop

jr_012_6c39:
    nop
    db $fc
    inc h
    nop
    nop
    inc b
    ld h, $00

jr_012_6c41:
    nop
    inc c
    jr z, jr_012_6c45

jr_012_6c45:
    nop
    inc d
    ld a, [hli]
    nop
    db $10
    rst $30
    inc l
    nop
    db $10
    rst $38
    ld l, $00
    db $10
    rlca
    jr nc, jr_012_6c55

jr_012_6c55:
    db $10
    rrca
    ld [hl-], a
    nop
    add hl, bc
    nop
    db $f4
    ld a, [hli]
    jr nz, jr_012_6c5f

jr_012_6c5f:
    db $fc
    jr z, @+$22

    nop
    inc b
    ld h, $20
    nop
    inc c
    inc h
    jr nz, jr_012_6c6b

jr_012_6c6b:
    inc d
    ld [hli], a
    jr nz, jr_012_6c7f

    ld sp, hl
    ld [hl-], a
    jr nz, jr_012_6c83

    ld bc, $2030
    db $10
    add hl, bc
    ld l, $20
    db $10
    ld de, $202c
    add hl, bc

jr_012_6c7f:
    nop
    rst $30
    stop

jr_012_6c83:
    nop
    rst $38
    ld [de], a
    nop
    nop
    rlca
    inc d
    nop
    nop
    rrca
    ld d, $00
    db $10
    rst $30
    jr jr_012_6c93

jr_012_6c93:
    db $10
    rst $38
    ld a, [de]
    nop
    db $10
    rlca
    inc e
    nop
    db $10
    rrca
    ld e, $00
    ld sp, hl
    inc b
    ld b, d
    dec b
    add hl, bc
    nop
    ld sp, hl
    ld d, $20
    nop
    ld bc, $2014
    nop
    add hl, bc
    ld [de], a
    jr nz, jr_012_6cb1

jr_012_6cb1:
    ld de, $2010
    db $10
    ld sp, hl
    ld e, $20
    db $10
    ld bc, $201c
    db $10
    add hl, bc
    ld a, [de]
    jr nz, jr_012_6cd1

    ld de, $2018
    ld sp, hl
    inc b
    ld b, d
    dec h
    add hl, bc
    ld hl, sp+$08
    ld a, $25
    db $10
    db $10
    inc a
    dec h

jr_012_6cd1:
    nop
    db $fc
    inc h
    jr nz, jr_012_6cd6

jr_012_6cd6:
    inc b
    ld [hli], a
    jr nz, jr_012_6cda

jr_012_6cda:
    inc c
    jr nz, @+$22

    db $10
    db $f4
    inc l
    jr nz, jr_012_6cf2

    db $fc
    ld a, [hli]
    jr nz, jr_012_6cf6

    inc b
    jr z, @+$22

    db $10
    inc c
    ld h, $20
    add hl, bc
    ld sp, hl
    ld [$253e], sp

jr_012_6cf2:
    ld [de], a
    db $10
    inc a
    dec h

jr_012_6cf6:
    nop
    db $fc
    ld [hl-], a
    jr nz, jr_012_6cfb

jr_012_6cfb:
    inc b
    jr nc, @+$22

    nop
    inc c
    ld l, $20
    db $10
    db $f4
    ld a, [hl-]
    jr nz, jr_012_6d17

    db $fc
    jr c, @+$22

    db $10
    inc b
    ld [hl], $20
    db $10
    inc c
    inc [hl]
    jr nz, jr_012_6d1c

    ld hl, sp+$00
    ld a, $05

jr_012_6d17:
    db $10
    ld hl, sp+$3c
    dec b
    nop

jr_012_6d1c:
    db $fc
    jr nz, jr_012_6d1f

jr_012_6d1f:
    nop
    inc b
    ld [hli], a
    nop
    nop
    inc c
    inc h
    nop
    db $10
    db $fc
    ld h, $00
    db $10
    inc b
    jr z, jr_012_6d2f

jr_012_6d2f:
    db $10
    inc c
    ld a, [hli]
    nop
    db $10
    inc d
    inc l
    nop
    add hl, bc
    ld sp, hl
    nop
    ld a, $05
    ld [de], a
    ld hl, sp+$3c
    dec b
    nop
    db $fc
    ld l, $00
    nop
    inc b
    jr nc, jr_012_6d48

jr_012_6d48:
    nop
    inc c
    ld [hl-], a
    nop
    db $10
    db $fc
    inc [hl]
    nop
    db $10
    inc b
    ld [hl], $00
    db $10
    inc c
    jr c, jr_012_6d58

jr_012_6d58:
    db $10
    inc d
    ld a, [hl-]
    nop
    add hl, bc
    ld a, [$4204]
    dec b
    nop
    ld hl, sp+$60
    nop
    nop
    nop
    ld h, d
    nop
    nop
    ld [$2062], sp
    nop
    db $10
    ld h, b
    jr nz, jr_012_6d82

    ld hl, sp+$64
    nop
    stop
    ld h, [hl]
    nop
    db $10
    ld [$2066], sp
    db $10
    db $10
    ld h, h
    jr nz, jr_012_6d8b

jr_012_6d82:
    ld a, [$4204]
    dec b
    nop
    ld hl, sp+$60
    nop
    nop

jr_012_6d8b:
    nop
    ld h, d
    nop
    nop
    ld [$2062], sp
    nop
    db $10
    ld h, b
    jr nz, jr_012_6da7

    ld hl, sp+$68
    nop
    stop
    ld l, d
    nop
    db $10
    ld [$206a], sp
    db $10
    db $10
    ld l, b
    jr nz, @+$0b

jr_012_6da7:
    db $fd
    dec c
    ld e, $00
    ld [$4ef0], sp
    nop
    ld [$50f8], sp
    nop
    nop
    nop
    ld d, d
    nop
    stop
    ld d, h
    nop
    nop
    ld [$2052], sp
    db $10
    ld [$2054], sp
    ld [$5010], sp
    jr nz, jr_012_6dd0

    jr @+$50

    jr nz, @+$0b

    db $fd
    dec c
    ld e, $00

jr_012_6dd0:
    ld [$4ef0], sp
    nop
    ld [$50f8], sp
    nop
    nop
    nop
    ld d, d
    nop
    stop
    ld d, [hl]
    nop
    nop
    ld [$2052], sp
    db $10
    ld [$2056], sp
    ld [$5010], sp
    jr nz, jr_012_6df5

    jr jr_012_6e3d

    jr nz, @+$0b

    ldh a, [$fc]
    jr nz, jr_012_6df5

jr_012_6df5:
    ldh a, [rDIV]
    ld [hli], a
    nop
    ldh a, [$0c]
    jr nz, @+$22

    nop
    db $fc
    inc h
    nop
    nop
    inc b
    ld h, $00
    nop
    inc c
    inc h
    jr nz, jr_012_6e1a

    db $fc
    jr z, jr_012_6e0d

jr_012_6e0d:
    db $10
    inc b
    ld a, [hli]
    nop
    db $10
    inc c
    jr z, jr_012_6e35

    ld a, [bc]
    db $fd
    ld a, [$0034]

jr_012_6e1a:
    db $fd
    ld [bc], a
    ld [hl], $00
    db $fd
    ld a, [bc]
    jr c, jr_012_6e22

jr_012_6e22:
    dec c
    ld [bc], a
    ld a, [hl-]
    nop
    dec c
    ld a, [bc]
    inc a
    nop
    dec e
    dec b
    ld a, $00   ; xor a
    db $fc
    ldh a, [$2c]
    nop
    db $fc
    ld hl, sp+$2e

jr_012_6e35:
    nop
    inc c
    ldh a, [$30]
    nop
    inc c
    ld hl, sp+$32

jr_012_6e3d:
    nop
    ld a, [bc]
    db $fd
    ld a, [$0034]
    db $fd
    ld [bc], a
    ld [hl], $00
    db $fd
    ld a, [bc]
    jr c, jr_012_6e4b

jr_012_6e4b:
    dec c
    ld [bc], a
    ld a, [hl-]
    nop
    dec c
    ld a, [bc]
    inc a
    nop
    dec e
    dec b
    ld a, $00   ; xor a
    db $fc
    ldh a, [$2c]
    rlca
    db $fc
    ld hl, sp+$2e
    rlca
    inc c
    ldh a, [$30]
    rlca
    inc c
    ld hl, sp+$32
    rlca
    ld a, [bc]
    di
    rst $38
    adc d
    nop
    di
    rlca
    adc h
    nop
    inc bc
    rst $38
    adc [hl]
    nop
    inc bc
    rlca
    sub b
    nop
    inc de
    inc b
    sub d
    nop
    di
    di
    add b
    nop
    di
    ei
    add d
    nop
    di
    inc bc
    add h
    nop
    inc bc
    di
    add [hl]
    nop
    inc bc
    ei
    adc b
    nop
    ld a, [bc]
    di
    rst $38
    adc d
    nop
    di
    rlca
    adc h
    nop
    inc bc
    rst $38
    adc [hl]
    nop
    inc bc
    rlca
    sub b
    nop
    inc de
    inc b
    sub d
    nop
    di
    di
    add b
    rlca
    di
    ei
    add d
    rlca
    di
    inc bc
    add h
    rlca
    inc bc

jr_012_6eb2:
    di
    add [hl]
    rlca
    inc bc
    ei
    adc b
    rlca
    ld a, [bc]
    di
    add hl, bc
    adc d
    jr nz, jr_012_6eb2

    ld bc, $208c

jr_012_6ec2:
    inc bc
    add hl, bc
    adc [hl]
    jr nz, jr_012_6eca

    ld bc, $2090

jr_012_6eca:
    inc de
    inc b
    sub d
    jr nz, jr_012_6ec2

    inc d
    sub h
    jr nz, @-$0b

    inc c
    sub [hl]
    jr nz, jr_012_6eca

    inc b
    sbc b
    jr nz, @+$05

    inc d
    sbc d
    jr nz, @+$05

    inc c
    sbc h
    jr nz, jr_012_6eed

    nop
    ldh a, [rNR41]
    inc bc
    nop
    ld hl, sp+$22
    inc bc
    nop
    nop

jr_012_6eed:
    inc h
    inc bc
    nop
    ld [$0026], sp
    nop
    db $10
    jr z, jr_012_6ef7

jr_012_6ef7:
    nop
    jr jr_012_6f24

    nop
    db $10
    ld hl, sp+$2c
    inc bc
    stop
    ld l, $03
    db $10
    ld [$0030], sp
    db $10
    db $10
    ld [hl-], a
    nop
    ld a, [bc]
    db $f4
    nop
    inc [hl]
    dec b
    db $f4
    ld [$0536], sp
    inc b
    ld hl, sp+$38
    dec b
    inc b
    nop
    ld a, [hl-]
    dec b
    inc b
    db $10
    jr c, jr_012_6f45

    inc b
    ld [$253a], sp

jr_012_6f24:
    inc d
    ei
    inc a
    dec b
    inc d
    inc bc
    ld a, $05
    inc d
    ld c, $3c
    dec h
    inc d
    ld b, $3e
    dec h
    ld a, [bc]
    db $f4
    nop
    ld c, h
    dec b
    db $f4
    ld [$054e], sp
    inc b
    ld hl, sp+$50
    dec b
    inc b
    nop
    ld d, d
    dec b

jr_012_6f45:
    inc b
    db $10
    ld d, b
    dec h
    inc b
    ld [$2552], sp
    inc d
    ld hl, sp+$54
    dec b
    inc d
    nop
    ld d, [hl]
    dec b
    inc d
    db $10
    ld d, h
    dec h
    inc d
    ld [$2556], sp
    ld a, [bc]
    ldh a, [rP1]
    nop
    nop
    ldh a, [$08]
    nop
    jr nz, jr_012_6f67

jr_012_6f67:
    ld hl, sp+$02
    nop
    nop
    nop
    inc b
    nop
    nop
    ld [$201a], sp
    nop
    db $10
    jr jr_012_6f96

    db $10
    ld hl, sp+$0c
    nop
    stop
    ld c, $00
    db $10
    ld [$2008], sp
    db $10
    db $10
    ld b, $20
    ld a, [bc]
    ldh a, [rP1]
    nop
    nop
    ldh a, [$08]
    nop
    jr nz, jr_012_6f90

jr_012_6f90:
    ld hl, sp+$18
    nop
    nop
    nop
    ld a, [de]

jr_012_6f96:
    nop
    nop
    ld [$2004], sp
    nop
    db $10
    ld [bc], a
    jr nz, jr_012_6fb0

    ld hl, sp+$06
    nop
    stop
    ld [$1000], sp
    ld [$200e], sp
    db $10
    db $10
    inc c
    jr nz, @+$0c

jr_012_6fb0:
    ldh a, [rP1]
    nop
    nop
    ldh a, [$08]
    nop
    jr nz, jr_012_6fb9

jr_012_6fb9:
    ld hl, sp+$02
    nop
    nop
    nop
    inc b
    nop
    nop
    ld [$2004], sp
    nop
    db $10
    ld [bc], a
    jr nz, jr_012_6fd9

    ld hl, sp+$06
    nop
    stop
    ld [$1000], sp
    ld [$2008], sp
    db $10
    db $10
    ld b, $20
    ld a, [bc]

jr_012_6fd9:
    nop
    ld hl, sp+$20
    nop
    ld hl, sp+$00
    inc h
    nop
    ld hl, sp+$08
    ld h, $00
    nop
    db $10
    jr nc, jr_012_6fe9

jr_012_6fe9:
    db $10
    ld hl, sp+$22
    nop
    ld [$2800], sp
    nop
    ld [$2a08], sp
    nop
    db $10
    db $10
    ld [hl-], a
    nop
    jr jr_012_6ffb

jr_012_6ffb:
    inc l
    nop
    jr jr_012_7007

    ld l, $00
    ld a, [bc]
    ld a, [c]
    nop
    nop
    nop
    ld a, [c]

jr_012_7007:
    ld [$2000], sp
    ld [bc], a
    ld hl, sp+$02
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [bc], a
    ld [$2004], sp
    ld [bc], a
    db $10
    ld [bc], a
    jr nz, jr_012_702d

    ld hl, sp+$0c
    nop
    ld [de], a
    nop
    ld c, $00
    ld [de], a
    ld [$200e], sp
    ld [de], a
    db $10
    inc c
    jr nz, jr_012_7035

    ld sp, hl
    inc bc

jr_012_702d:
    ld b, d
    dec b
    db $10
    ld [bc], a
    ld b, b
    dec b
    nop
    rst $30

jr_012_7035:
    nop
    nop
    nop
    rst $38
    ld [bc], a
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    ld b, $00
    db $10
    rst $30
    ld [$1000], sp
    rst $38
    ld a, [bc]
    nop
    db $10
    rlca
    inc c
    nop
    db $10
    rrca
    ld c, $00
    ld a, [bc]
    ld sp, hl
    dec b
    ld b, d
    dec h
    db $10
    ld b, $40
    dec h
    nop
    ld sp, hl
    ld b, $20
    nop
    ld bc, $2004
    nop
    add hl, bc
    ld [bc], a
    jr nz, jr_012_7069

jr_012_7069:
    ld de, $2000
    db $10
    ld sp, hl
    ld c, $20
    db $10
    ld bc, $200c
    db $10
    add hl, bc
    ld a, [bc]
    jr nz, jr_012_7089

    ld de, $2008
    ld a, [bc]
    ld sp, hl
    inc b
    ld b, d
    dec b
    db $10
    inc b
    ld b, b
    dec b
    nop
    ld hl, sp+$6c
    nop

jr_012_7089:
    nop
    nop
    ld l, [hl]
    nop
    nop
    ld [$206e], sp
    nop
    db $10
    ld l, h
    jr nz, jr_012_70a6

    ld hl, sp+$70
    nop
    stop
    ld [hl], d
    nop
    db $10
    ld [$2072], sp
    db $10
    db $10
    ld [hl], b
    jr nz, jr_012_70b0

jr_012_70a6:
    db $fc
    ldh a, [$3c]
    nop
    db $fc
    ld hl, sp+$3e
    nop
    db $fc
    nop

jr_012_70b0:
    ld b, b
    nop
    db $fc
    ld [$0042], sp
    db $fc
    db $10
    ld b, h
    nop
    inc c
    ldh a, [rDMA]
    nop
    inc c
    ld hl, sp+$48
    nop
    inc c
    nop
    ld c, d
    nop
    inc c
    ld [$004c], sp
    inc c
    db $10
    ld c, [hl]
    nop
    ld a, [bc]
    db $fc
    db $f4
    ld d, b
    nop
    db $fc
    db $fc
    ld d, d
    nop
    db $fc
    inc b
    ld d, h
    nop
    db $fc
    inc c
    ld d, [hl]
    nop
    db $fc
    inc d
    ld e, b
    nop
    inc c
    db $f4
    ld e, d
    nop
    inc c
    db $fc
    ld e, h
    nop
    inc c
    inc b
    ld e, [hl]
    nop
    inc c
    inc c
    ld h, b
    nop
    inc c
    inc d
    ld h, d
    nop
    ld a, [bc]
    db $fc

jr_012_70f9:
    jr jr_012_7137

    jr nz, jr_012_70f9

    db $10
    ld a, $20
    db $fc
    ld [$2040], sp
    db $fc

jr_012_7105:
    nop
    ld b, d
    jr nz, jr_012_7105

    ld hl, sp+$44
    jr nz, jr_012_7119

    jr jr_012_7155

    jr nz, jr_012_711d

    db $10
    ld c, b
    jr nz, jr_012_7121

    ld [$204a], sp
    inc c

jr_012_7119:
    nop
    ld c, h
    jr nz, @+$0e

jr_012_711d:
    ld hl, sp+$4e
    jr nz, jr_012_712b

jr_012_7121:
    db $fc

jr_012_7122:
    inc d
    ld d, b
    jr nz, jr_012_7122

jr_012_7126:
    inc c
    ld d, d
    jr nz, jr_012_7126

jr_012_712a:
    inc b

jr_012_712b:
    ld d, h
    jr nz, jr_012_712a

jr_012_712e:
    db $fc
    ld d, [hl]
    jr nz, jr_012_712e

    db $f4
    ld e, b
    jr nz, jr_012_7142

    inc d

jr_012_7137:
    ld e, d
    jr nz, jr_012_7146

    inc c
    ld e, h
    jr nz, jr_012_714a

    inc b
    ld e, [hl]
    jr nz, jr_012_714e

jr_012_7142:
    db $fc
    ld h, b
    jr nz, jr_012_7152

jr_012_7146:
    db $f4
    ld h, d
    jr nz, @+$0c

jr_012_714a:
    db $ec
    db $fd
    jr nz, jr_012_714e

jr_012_714e:
    db $ec
    dec bc
    jr nz, jr_012_7172

jr_012_7152:
    db $fc
    ld hl, sp+$32

jr_012_7155:
    nop
    db $fc
    nop
    inc [hl]
    nop
    db $fc
    ld [$2034], sp
    db $fc
    db $10
    ld [hl-], a
    jr nz, jr_012_717f

    ld hl, sp+$36
    nop
    inc d
    nop
    jr c, jr_012_716a

jr_012_716a:
    inc d
    ld [$2038], sp
    inc e
    db $10
    ld [hl], $20

jr_012_7172:
    ld a, [bc]
    ld [$20fd], a

jr_012_7176:
    nop
    ld [$200b], a
    jr nz, jr_012_7176

    ld hl, sp+$32
    nop

jr_012_717f:
    ld a, [$3400]

jr_012_7182:
    nop
    ld a, [$3408]
    jr nz, jr_012_7182

    db $10
    ld [hl-], a
    jr nz, jr_012_71a8

    ld hl, sp+$36
    nop
    inc d
    nop
    jr c, jr_012_7193

jr_012_7193:
    inc d
    ld [$2038], sp
    inc e
    db $10
    ld [hl], $20
    ld a, [bc]
    db $ec
    db $fd
    jr nz, jr_012_71a0

jr_012_71a0:
    db $ec
    dec bc
    jr nz, @+$22

    db $fc
    ld hl, sp+$32
    nop

jr_012_71a8:
    db $fc
    nop
    inc [hl]
    nop
    db $fc
    ld [$2034], sp
    db $fc
    db $10
    ld [hl-], a
    jr nz, jr_012_71d1

    ld hl, sp+$3a
    nop
    inc d
    nop
    inc a
    nop
    inc d
    ld [$203c], sp
    inc e
    db $10
    ld a, [hl-]
    jr nz, @+$0c

    db $ec
    rst $38
    jr nz, jr_012_71c9

jr_012_71c9:
    db $ec
    dec c
    jr nz, @+$22

    db $fc
    ld a, [$0032]

jr_012_71d1:
    db $fc
    ld [bc], a
    inc [hl]
    nop
    db $fc

jr_012_71d6:
    ld a, [bc]
    inc [hl]
    jr nz, jr_012_71d6

    ld [de], a
    ld [hl-], a
    jr nz, jr_012_71fa

    ld a, [$003a]
    inc d
    ld [bc], a
    inc a
    nop
    inc d
    ld a, [bc]
    inc a
    jr nz, @+$1e

    ld [de], a
    ld a, [hl-]
    jr nz, @+$0c

    db $ec
    ei
    jr nz, jr_012_71f2

jr_012_71f2:
    db $ec
    add hl, bc
    jr nz, @+$22

    db $fc
    or $32
    nop

jr_012_71fa:
    db $fc
    cp $34
    nop
    db $fc

jr_012_71ff:
    ld b, $34
    jr nz, jr_012_71ff

    ld c, $32
    jr nz, jr_012_7223

    or $3a
    nop
    inc d
    cp $3c
    nop
    inc d
    ld b, $3c
    jr nz, jr_012_722f

    ld c, $3a
    jr nz, jr_012_7222

    di
    ei
    ld e, d
    nop
    di
    inc bc
    ld e, h
    nop
    di
    dec bc
    ld e, [hl]

jr_012_7222:
    nop

jr_012_7223:
    inc bc
    nop
    ld d, d
    nop
    inc bc
    ld [$0054], sp
    inc de
    ld [bc], a
    ld d, [hl]
    nop

jr_012_722f:
    inc de
    ld a, [bc]
    ld e, b
    nop
    ld sp, hl
    db $f4
    ld a, d
    nop
    ld sp, hl
    db $fc
    ld a, h
    nop
    add hl, bc
    db $f4
    ld a, [hl]
    nop
    add hl, bc
    db $fc
    sbc [hl]
    nop
    dec bc
    di
    ei
    ld e, d
    nop
    di
    inc bc
    ld e, h
    nop
    di
    dec bc
    ld e, [hl]
    nop
    inc bc
    nop
    ld d, d
    nop
    inc bc
    ld [$0054], sp
    inc de
    ld [bc], a
    ld d, [hl]
    nop
    inc de
    ld a, [bc]
    ld e, b
    nop
    ld sp, hl
    db $f4
    ld a, d
    rlca
    ld sp, hl
    db $fc
    ld a, h
    rlca
    add hl, bc

jr_012_7269:
    db $f4
    ld a, [hl]
    rlca
    add hl, bc

jr_012_726d:
    db $fc
    sbc [hl]
    rlca
    dec bc
    di
    dec c
    ld e, d
    jr nz, jr_012_7269

    dec b
    ld e, h
    jr nz, jr_012_726d

    db $fd
    ld e, [hl]
    jr nz, jr_012_7281

    ld [$2052], sp

jr_012_7281:
    inc bc
    nop
    ld d, h
    jr nz, @+$15

    ld b, $56
    jr nz, @+$15

    cp $58
    jr nz, jr_012_7281

    dec d
    ld [hl], d
    jr nz, @-$0b

    dec c
    ld [hl], h
    jr nz, @+$05

jr_012_7296:
    dec d
    db $76
    jr nz, @+$05

jr_012_729a:
    dec c
    ld a, b
    jr nz, jr_012_72a9

    di
    dec c
    ld e, d
    jr nz, jr_012_7296

    dec b
    ld e, h
    jr nz, jr_012_729a

    db $fd
    ld e, [hl]

jr_012_72a9:
    jr nz, jr_012_72ae

    ld [$2052], sp

jr_012_72ae:
    inc bc
    nop
    ld d, h
    jr nz, jr_012_72c6

    ld b, $56
    jr nz, jr_012_72ca

    cp $58
    jr nz, jr_012_72ae

    dec d
    ld [hl], d
    dec h
    di
    dec c
    ld [hl], h
    dec h
    inc bc
    dec d
    db $76
    dec h

jr_012_72c6:
    inc bc
    dec c
    ld a, b
    dec h

jr_012_72ca:
    dec bc
    ldh a, [rP1]
    nop
    nop
    ldh a, [$08]
    inc d
    nop
    ldh a, [rNR10]
    ld d, $00
    nop
    ld hl, sp+$02
    nop
    nop
    nop
    inc b
    nop
    nop
    ld [$001c], sp
    nop
    db $10
    ld e, $00
    db $10
    ld hl, sp+$0c
    nop
    stop
    ld c, $00
    db $10
    ld [$2008], sp
    db $10
    db $10
    ld a, [bc]
    nop
    dec bc
    ldh a, [rSB]
    nop
    nop
    ldh a, [$09]
    inc d
    nop
    ldh a, [rNR11]
    ld d, $00
    nop
    ld sp, hl
    jr jr_012_7308

jr_012_7308:
    nop
    ld bc, $001a
    nop
    add hl, bc
    inc e
    nop
    nop
    ld de, $001e
    db $10
    ld sp, hl
    ld b, $00
    db $10
    ld bc, $0008
    db $10
    add hl, bc
    stop
    db $10
    ld de, $0012
    dec bc
    nop
    ld hl, sp+$40
    nop
    db $10
    ld hl, sp+$42
    nop
    ld hl, sp+$00
    ld b, h
    nop
    ld [$4600], sp
    nop
    jr jr_012_7337

jr_012_7337:
    ld c, b
    nop
    ldh a, [$08]
    ld c, d
    nop
    nop
    ld [$004c], sp
    db $10
    ld [$004e], sp
    xor $10
    ld d, b
    nop
    cp $10
    ld d, d
    nop
    ld c, $10
    ld d, h
    nop
    inc c
    db $fc
    ldh a, [rP1]
    nop
    db $fc
    ld hl, sp+$02
    nop
    db $fc
    nop
    inc b
    nop
    inc b
    ld [$0006], sp
    inc b
    db $10
    ld [$0400], sp
    jr jr_012_7373

    nop
    inc c
    ldh a, [$0c]
    nop
    inc c
    ld hl, sp+$0e
    nop
    inc c

jr_012_7373:
    nop
    stop
    inc d
    ld [$0012], sp
    inc d
    db $10
    inc d
    nop
    inc d
    jr jr_012_7397

    nop
    inc c
    inc b
    ld [$0020], sp
    inc b
    db $10
    ld [hli], a
    nop
    inc c
    ldh a, [rNR50]
    nop
    inc c
    ld hl, sp+$26
    nop
    inc c
    nop
    jr z, jr_012_7397

jr_012_7397:
    inc d
    ld [$002a], sp
    inc d
    db $10
    inc l
    nop
    db $fd
    ldh a, [rP1]
    nop
    db $fd
    ld hl, sp+$02
    nop
    db $fd
    nop
    inc b
    nop
    dec b
    jr jr_012_73b8

    nop
    dec d
    jr jr_012_73c8

    nop
    inc c
    db $fc
    ldh a, [rP1]
    nop

jr_012_73b8:
    db $fc
    ld hl, sp+$02
    nop
    db $fc
    nop
    inc b
    nop
    inc c
    ldh a, [$0c]
    nop
    inc c
    ld hl, sp+$0e
    nop

jr_012_73c8:
    inc c
    nop
    stop
    db $fc
    ld [$0036], sp
    inc c
    ld [$0038], sp
    inc c
    db $10
    ld a, [hl-]
    nop
    db $fc
    db $10
    ld l, $00
    db $fc
    jr @+$32

    nop
    inc c
    jr jr_012_7417

    nop
    inc c
    db $fc

jr_012_73e6:
    jr jr_012_73e8

jr_012_73e8:
    jr nz, jr_012_73e6

jr_012_73ea:
    db $10
    ld [bc], a
    jr nz, jr_012_73ea

    ld [$2004], sp
    inc b
    nop
    ld b, $20
    inc b
    ld hl, sp+$08
    jr nz, jr_012_73fe

    ldh a, [$0a]
    jr nz, jr_012_740a

jr_012_73fe:
    jr jr_012_740c

    jr nz, jr_012_740e

    db $10
    ld c, $20
    inc c
    ld [$2010], sp
    inc d

jr_012_740a:
    nop
    ld [de], a

jr_012_740c:
    jr nz, @+$16

jr_012_740e:
    ld hl, sp+$14
    jr nz, jr_012_7426

    ldh a, [rNR21]
    jr nz, @+$0e

    inc b

jr_012_7417:
    nop
    jr nz, @+$22

    inc b
    ld hl, sp+$22
    jr nz, jr_012_742b

    jr jr_012_7445

    jr nz, jr_012_742f

    db $10
    ld h, $20

jr_012_7426:
    inc c
    ld [$2028], sp
    inc d

jr_012_742b:
    nop
    ld a, [hli]
    jr nz, jr_012_7443

jr_012_742f:
    ld hl, sp+$2c
    jr nz, @-$01

    jr jr_012_7435

jr_012_7435:
    jr nz, @-$01

    db $10

jr_012_7438:
    ld [bc], a
    jr nz, jr_012_7438

    ld [$2004], sp
    dec b
    ldh a, [$0a]
    jr nz, jr_012_7458

jr_012_7443:
    ldh a, [rNR21]

jr_012_7445:
    jr nz, jr_012_7453

    db $fc

jr_012_7448:
    jr jr_012_744a

jr_012_744a:
    jr nz, jr_012_7448

jr_012_744c:
    db $10
    ld [bc], a
    jr nz, jr_012_744c

    ld [$2004], sp

jr_012_7453:
    inc c
    jr @+$0e

    jr nz, jr_012_7464

jr_012_7458:
    db $10
    ld c, $20
    inc c
    ld [$2010], sp
    db $fc
    nop
    ld [hl], $20
    inc c

jr_012_7464:
    nop
    jr c, @+$22

    inc c

jr_012_7468:
    ld hl, sp+$3a
    jr nz, jr_012_7468

jr_012_746c:
    ld hl, sp+$2e
    jr nz, jr_012_746c

    ldh a, [$30]
    jr nz, jr_012_7480

    ldh a, [$34]
    jr nz, jr_012_7484

    nop
    ldh a, [$08]
    nop
    nop
    ld hl, sp+$0a
    nop

jr_012_7480:
    nop
    nop
    inc c
    nop

jr_012_7484:
    nop
    ld [$200c], sp
    nop
    db $10
    ld a, [bc]
    jr nz, jr_012_748d

jr_012_748d:
    jr jr_012_7497

    jr nz, jr_012_74a1

    ldh a, [$0e]
    nop
    db $10
    ld hl, sp+$10

jr_012_7497:
    nop
    stop
    ld [de], a
    nop
    db $10
    ld [$2012], sp
    db $10

jr_012_74a1:
    db $10
    db $10
    jr nz, jr_012_74b5

    jr jr_012_74b5

    jr nz, jr_012_74b5

    nop
    ldh a, [rNR14]
    nop
    nop
    ld hl, sp+$16
    nop
    nop
    nop
    jr jr_012_74b5

jr_012_74b5:
    nop
    ld [$2018], sp
    nop
    db $10
    ld d, $20
    nop
    jr jr_012_74d4

    jr nz, jr_012_74d2

    ldh a, [rNR30]
    nop
    db $10
    ld hl, sp+$1c
    nop
    stop
    ld e, $00
    db $10
    ld [$201e], sp
    db $10

jr_012_74d2:
    db $10
    inc e

jr_012_74d4:
    jr nz, jr_012_74e6

    jr jr_012_74f2

    jr nz, jr_012_74e6

    ldh a, [$f8]
    inc l
    nop
    ldh a, [rP1]
    ld l, $00
    ldh a, [$08]
    ld l, $20

jr_012_74e6:
    ldh a, [rNR10]
    inc l
    jr nz, jr_012_74eb

jr_012_74eb:
    ld hl, sp+$30
    nop
    nop
    nop
    ld [hl-], a
    nop

jr_012_74f2:
    nop
    ld [$2032], sp
    nop
    db $10
    jr nc, @+$22

    db $10
    ld hl, sp+$34
    nop
    stop
    ld [hl], $00
    db $10
    ld [$2036], sp
    db $10
    db $10
    inc [hl]
    jr nz, jr_012_7517

    nop
    ldh a, [$38]
    nop
    nop
    ld hl, sp+$3a
    nop
    nop
    nop
    inc a
    nop

jr_012_7517:
    nop
    ld [$203c], sp
    nop
    db $10
    ld a, [hl-]
    jr nz, jr_012_7520

jr_012_7520:
    jr jr_012_755a

    jr nz, jr_012_7534

    ldh a, [$3e]
    nop
    db $10
    ld hl, sp+$40
    nop
    stop
    ld b, d
    nop
    db $10
    ld [$2042], sp
    db $10

jr_012_7534:
    db $10
    ld b, b
    jr nz, @+$12

    jr jr_012_7578

    jr nz, @+$0e

    ld hl, sp-$08
    jr z, @+$08

    ld hl, sp+$00
    ld a, [hli]
    ld b, $08
    ld hl, sp+$2c
    ld b, $08
    nop
    ld l, $06
    db $10
    ld hl, sp+$30
    ld b, $10
    nop
    ld [hl-], a
    ld b, $f8
    db $10
    jr z, jr_012_757e

    ld hl, sp+$08

jr_012_755a:
    ld a, [hli]
    ld h, $08
    db $10
    inc l
    ld h, $08
    ld [$262e], sp
    db $10
    db $10
    jr nc, @+$28

    db $10
    ld [$2632], sp
    inc c
    ld hl, sp-$08
    inc [hl]
    ld b, $f8
    nop
    ld [hl], $06
    ld [$38f8], sp

jr_012_7578:
    ld b, $08
    nop
    ld a, [hl-]
    ld b, $10

jr_012_757e:
    ld hl, sp+$3c
    ld b, $10
    nop
    ld a, $06
    ld hl, sp+$10
    inc [hl]
    ld h, $f8
    ld [$2636], sp
    ld [$3810], sp
    ld h, $08
    ld [$263a], sp
    db $10
    db $10
    inc a
    ld h, $10
    ld [$263e], sp
    inc c
    ld hl, sp-$08
    ld b, b
    ld b, $f8
    nop
    ld b, d
    ld b, $08
    ld hl, sp+$44
    ld b, $08
    nop
    ld b, [hl]
    ld b, $10
    ld hl, sp+$48
    ld b, $10
    nop
    ld c, d
    ld b, $f8
    db $10
    ld b, b
    ld h, $f8
    ld [$2642], sp
    ld [$4410], sp
    ld h, $08
    ld [$2646], sp
    db $10
    db $10
    ld c, b
    ld h, $10
    ld [$264a], sp
    inc c
    ld hl, sp-$08
    ld c, h
    inc bc
    ld hl, sp+$00
    ld c, [hl]
    inc bc
    ld [$50f8], sp
    inc bc
    ld [$5200], sp
    inc bc
    db $10
    ld hl, sp+$54
    inc bc
    stop
    ld d, [hl]
    inc bc
    ld hl, sp+$10
    ld c, h
    inc hl
    ld hl, sp+$08
    ld c, [hl]
    inc hl
    ld [$5010], sp
    inc hl
    ld [$5208], sp
    inc hl
    db $10
    db $10
    ld d, h
    inc hl
    db $10
    ld [$2356], sp
    dec c
    ldh a, [$f4]
    ld [bc], a
    nop
    ldh a, [$fc]
    inc b
    nop
    ldh a, [rDIV]
    jr nz, jr_012_760c

jr_012_760c:
    nop
    db $f4
    inc c
    nop
    nop
    db $fc
    ld c, $00
    nop
    inc b
    ld [hli], a
    nop
    nop
    inc c
    inc h
    nop
    nop
    inc d
    ld h, $00
    db $10
    db $f4
    jr z, jr_012_7624

jr_012_7624:
    db $10
    db $fc
    ld a, [hli]
    nop
    db $10
    inc b
    inc l
    nop
    db $10
    inc c
    ld l, $00
    db $10
    inc d
    jr nc, jr_012_7634

jr_012_7634:
    dec c
    pop af
    ld hl, sp+$02
    nop
    pop af
    nop
    inc b
    nop
    pop af
    ld [$0020], sp
    nop
    ld hl, sp+$32
    nop
    nop
    nop
    inc [hl]
    nop
    nop
    ld [$0036], sp
    nop
    inc c
    inc h
    nop
    nop
    inc d
    ld h, $00
    db $10
    db $f4
    jr z, jr_012_7659

jr_012_7659:
    db $10
    db $fc
    ld a, [hli]
    nop
    db $10
    inc b
    inc l
    nop
    db $10
    inc c
    ld l, $00
    db $10
    inc d
    jr nc, jr_012_7669

jr_012_7669:
    dec c
    ldh a, [$f0]
    ld a, [hl-]
    nop
    ldh a, [$f8]
    inc a
    nop
    ldh a, [rP1]
    ld a, $00   ; xor a
    nop
    db $f4
    ld b, b
    nop
    nop
    db $fc
    ld b, d
    nop
    nop
    inc b
    ld b, h
    nop
    nop
    inc c
    inc h
    nop
    nop
    inc d
    ld h, $00
    db $10
    db $f4
    jr z, jr_012_768e

jr_012_768e:
    db $10
    db $fc
    ld a, [hli]
    nop
    db $10
    inc b
    inc l
    nop
    db $10
    inc c
    ld l, $00
    db $10
    inc d
    jr nc, jr_012_769e

jr_012_769e:
    ld c, $f8
    inc b
    ld b, d
    dec b
    db $10

jr_012_76a4:
    inc b
    ld b, b
    dec b
    ldh a, [$f8]
    ld [hl], h
    nop
    ldh a, [rP1]
    halt
    ldh a, [$08]
    db $76
    jr nz, jr_012_76a4

    db $10
    ld [hl], h
    jr nz, jr_012_76b8

jr_012_76b8:
    ld hl, sp+$78
    nop
    nop
    nop
    ld a, d
    nop
    nop
    ld [$207a], sp
    nop
    db $10
    ld a, b
    jr nz, jr_012_76d8

    ld hl, sp+$7c
    nop
    stop
    ld a, [hl]
    nop
    db $10
    ld [$207e], sp
    db $10
    db $10
    ld a, h
    jr nz, jr_012_76e7

jr_012_76d8:
    ldh a, [$f4]
    ld c, [hl]
    ld b, $f0
    db $fc
    ld d, b
    ld b, $f0
    inc b
    ld d, d
    ld b, $f0
    inc c
    ld d, b

jr_012_76e7:
    ld h, $f0
    inc d
    ld c, [hl]
    ld h, $00
    db $f4
    ld d, h
    ld b, $00
    db $fc
    ld d, [hl]
    ld b, $00
    inc b
    ld e, b
    ld b, $00
    inc c
    ld d, [hl]
    ld h, $00
    inc d
    ld d, h
    ld h, $10
    db $f4
    ld e, d
    ld b, $10
    db $fc
    ld e, h
    ld b, $10
    inc b
    ld e, [hl]
    ld b, $10
    inc c
    ld e, h
    ld h, $10
    inc d
    ld e, d
    ld h, $0f
    pop af
    db $f4
    ld [bc], a
    nop
    pop af
    db $fc
    inc b
    nop
    pop af
    inc b
    ld b, $00
    ld sp, hl
    inc c
    ld [$f900], sp
    inc d
    ld a, [bc]
    nop
    ld bc, $0cf4
    nop
    ld bc, $0efc
    nop
    ld bc, $1004
    nop
    add hl, bc
    inc c
    ld [de], a
    nop
    add hl, bc
    inc d
    inc d
    nop
    ld de, $16f4
    nop
    ld de, $18fc
    nop
    ld de, $1a04
    nop
    add hl, de
    inc c
    inc e
    nop
    add hl, de
    inc d
    ld e, $00
    db $10
    db $fc
    ld a, [$0040]
    db $fc
    ld [bc], a
    ld b, d
    nop
    db $fc
    ld a, [bc]
    ld b, h
    nop
    db $fc
    ld [de], a
    ld b, [hl]
    nop
    db $f4
    ld a, [de]
    ld c, b
    nop
    db $f4
    ld [hli], a
    ld c, d
    nop
    inc c
    db $f4
    ld c, h
    nop
    inc c
    db $fc
    ld c, [hl]
    nop
    inc c
    inc b
    ld d, b
    nop
    inc c
    inc c
    ld d, d
    nop
    inc c
    inc d
    ld d, h
    nop
    inc e
    di
    ld d, [hl]
    nop
    inc e
    ei
    ld e, b
    nop
    inc e
    inc bc
    ld e, d
    nop
    inc e
    dec bc
    ld e, h
    nop
    inc e
    inc de
    ld e, [hl]
    nop
    db $10
    db $fc

jr_012_7794:
    ld c, $40
    jr nz, jr_012_7794

jr_012_7798:
    ld b, $42
    jr nz, jr_012_7798

jr_012_779c:
    cp $44
    jr nz, jr_012_779c

    or $46
    jr nz, jr_012_7798

    xor $48
    jr nz, jr_012_779c

    and $4a
    jr nz, jr_012_77b8

    inc d
    ld c, h
    jr nz, jr_012_77bc

    inc c
    ld c, [hl]
    jr nz, jr_012_77c0

    inc b
    ld d, b
    jr nz, jr_012_77c4

jr_012_77b8:
    db $fc
    ld d, d
    jr nz, jr_012_77c8

jr_012_77bc:
    db $f4
    ld d, h
    jr nz, jr_012_77dc

jr_012_77c0:
    dec d
    ld d, [hl]
    jr nz, jr_012_77e0

jr_012_77c4:
    dec c
    ld e, b
    jr nz, jr_012_77e4

jr_012_77c8:
    dec b
    ld e, d
    jr nz, jr_012_77e8

    db $fd
    ld e, h
    jr nz, jr_012_77ec

    push af
    ld e, [hl]
    jr nz, jr_012_77e4

    ldh [$f6], a
    ld l, d
    nop
    ldh [$fe], a
    inc b
    nop

jr_012_77dc:
    ldh [rTMA], a
    jr nz, jr_012_77e0

jr_012_77e0:
    ldh a, [$f6]
    ld l, h
    nop

jr_012_77e4:
    ldh a, [$fe]
    ld l, [hl]
    nop

jr_012_77e8:
    ldh a, [rTMA]
    ld [hl], b
    nop

jr_012_77ec:
    ldh a, [$0e]
    ld [hl], d
    nop
    ldh a, [rNR21]
    ld [hl], h
    nop
    nop
    pop af
    ld e, d
    nop
    nop
    ld sp, hl
    ld e, h
    nop
    nop
    ld bc, $005e
    nop
    add hl, bc
    ld h, b
    nop
    nop
    ld de, $0062
    db $10
    ld bc, $0064
    db $10
    add hl, bc
    ld h, [hl]
    nop
    db $10
    ld de, $0068
    db $10
    ldh a, [$08]
    halt
    ldh a, [rNR10]
    ld a, b
    nop
    ldh a, [rNR23]
    ld a, d
    nop
    nop
    db $ec
    ld a, h
    nop
    nop
    db $f4
    ld a, [hl]
    nop
    nop
    db $fc
    add b
    nop
    nop
    inc b
    add d
    nop
    nop
    inc c
    add h
    nop
    nop
    inc d
    add [hl]
    nop
    nop
    inc e
    adc b
    nop
    db $10
    db $f4
    adc h
    nop
    db $10
    db $fc
    adc [hl]
    nop
    db $10
    inc b
    sub b
    nop
    db $10
    inc c
    sub d
    nop
    db $10
    inc d
    sub h
    nop
    db $10
    inc e
    sub [hl]
    nop
    ld de, $11f4
    ld a, [hli]
    nop
    db $f4
    add hl, de
    inc l
    nop
    db $f4
    ld [$004a], sp
    db $f4
    db $10
    ld c, h
    nop
    inc b
    ld hl, sp+$4e
    nop
    inc b
    nop
    ld d, b
    nop
    inc b
    ld [$0052], sp
    inc b
    db $10
    ld d, h
    nop
    inc d
    ld hl, sp+$5a
    nop
    inc d
    nop
    ld e, h
    nop
    inc d
    ld [$005e], sp
    inc d
    db $10
    jr nz, jr_012_7886

jr_012_7886:
    inc d
    jr jr_012_78ab

    nop
    inc d
    jr nz, @+$26

    nop
    db $f4
    ld hl, sp+$26
    nop
    db $f4
    nop
    jr z, jr_012_7896

jr_012_7896:
    inc b
    jr jr_012_78c7

    nop
    ld [de], a
    ld hl, sp-$0c
    nop
    rlca
    ld hl, sp-$04
    ld [bc], a
    rlca
    ld hl, sp+$04
    inc b
    rlca
    ld hl, sp+$13
    nop
    daa

jr_012_78ab:
    ld hl, sp+$0b
    ld [bc], a
    daa
    ld [$06ec], sp
    rlca
    ld [$08f4], sp
    rlca
    ld [$0afc], sp
    rlca
    ld [$0c04], sp
    rlca
    ld [$0e0b], sp
    rlca
    ld [$1013], sp
    rlca

jr_012_78c7:
    ld a, [bc]
    dec de
    ld [de], a
    rlca
    jr @-$12

    inc d
    rlca
    jr @-$0a

jr_012_78d1:
    ld d, $07
    jr jr_012_78d1

    jr jr_012_78de

    jr jr_012_78dd

    ld a, [de]
    rlca
    jr jr_012_78e8

jr_012_78dd:
    inc e

jr_012_78de:
    rlca
    jr @+$15

    ld e, $07
    ld [de], a
    ld hl, sp-$0c
    nop
    nop

jr_012_78e8:
    ld hl, sp-$04
    ld [bc], a
    nop
    ld hl, sp+$04
    inc b
    nop
    ld hl, sp+$13
    nop
    jr nz, @-$06

    dec bc
    ld [bc], a
    jr nz, @+$0a

    db $ec
    ld b, $00
    ld [$08f4], sp
    nop
    ld [$0afc], sp
    nop
    ld [$0c04], sp
    nop
    ld [$0e0c], sp
    nop
    ld [$1014], sp
    nop
    ld a, [bc]
    inc e
    ld [de], a
    nop
    jr @-$12

    inc d
    nop
    jr @-$0a

jr_012_791a:
    ld d, $00
    jr jr_012_791a

    jr jr_012_7920

jr_012_7920:
    jr jr_012_7926

    ld a, [de]
    nop
    jr jr_012_7932

jr_012_7926:
    inc e
    nop
    jr @+$16

jr_012_792a:
    ld e, $00
    ld [de], a
    ld hl, sp+$14
    nop
    jr nz, jr_012_792a

jr_012_7932:
    inc c
    ld [bc], a
    jr nz, @-$06

    inc b
    inc b
    jr nz, jr_012_7932

    push af
    nop
    nop
    ld hl, sp-$03
    ld [bc], a
    nop
    ld [$061c], sp
    jr nz, jr_012_794e

    inc d
    ld [$0820], sp
    inc c
    ld a, [bc]
    jr nz, @+$0a

jr_012_794e:
    inc b
    inc c
    jr nz, jr_012_795a

    db $fc
    ld c, $20
    ld [$10f4], sp
    jr nz, @+$0c

jr_012_795a:
    db $ec
    ld [de], a
    jr nz, jr_012_7976

    inc e
    inc d
    jr nz, jr_012_797a

    inc d
    ld d, $20
    jr jr_012_7973

    jr jr_012_7989

    jr jr_012_796f

    ld a, [de]
    jr nz, @+$1a

    db $fc

jr_012_796f:
    inc e
    jr nz, @+$1a

    db $f4

jr_012_7973:
    ld e, $20
    ld [de], a

jr_012_7976:
    ld hl, sp-$0c
    ld [hl], d
    nop

jr_012_797a:
    ld hl, sp-$04
    ld [hl], h
    nop
    ld hl, sp+$04
    halt
    ld hl, sp+$13
    ld [hl], d
    jr nz, @-$06

    dec bc
    ld [hl], h

jr_012_7989:
    jr nz, @+$0a

    db $ec
    ld a, b
    nop
    ld [$7af4], sp
    nop
    ld [$7cfc], sp
    nop
    ld [$7e04], sp
    nop
    ld [$781b], sp
    jr nz, jr_012_79a7

    inc de
    ld a, d
    jr nz, @+$0a

    dec bc

jr_012_79a4:
    ld a, h
    jr nz, jr_012_79bf

jr_012_79a7:
    ldh a, [$80]
    nop
    jr jr_012_79a4

    add d
    nop
    jr jr_012_79b0

jr_012_79b0:
    add h
    nop
    jr jr_012_79cb

    add b
    jr nz, @+$1a

    rrca
    add d
    jr nz, @+$1a

    rlca
    add h
    jr nz, jr_012_79d1

jr_012_79bf:
    ld hl, sp-$10
    ld b, b
    nop
    ld hl, sp-$08
    ld b, d
    nop
    ld hl, sp+$00
    ld b, h
    nop

jr_012_79cb:
    ld hl, sp+$17
    ld b, b
    jr nz, @-$06

    rrca

jr_012_79d1:
    ld b, d
    jr nz, @-$06

    rlca
    ld b, h
    jr nz, @+$0a

    ldh a, [rDMA]
    nop
    ld [$48f8], sp
    nop
    ld [$4a00], sp
    nop
    ld [$4617], sp
    jr nz, jr_012_79f0

    rrca
    ld c, b
    jr nz, @+$0a

    rlca

jr_012_79ed:
    ld c, d
    jr nz, jr_012_7a08

jr_012_79f0:
    ldh a, [$4c]
    nop
    jr jr_012_79ed

    ld c, [hl]
    nop
    jr jr_012_79f9

jr_012_79f9:
    ld d, b
    nop
    jr jr_012_7a14

    ld c, h
    jr nz, jr_012_7a18

    rrca
    ld c, [hl]
    jr nz, jr_012_7a1c

    rlca
    ld d, b
    jr nz, @+$14

jr_012_7a08:
    pop hl
    or $46
    nop
    pop hl
    cp $48
    nop
    pop hl
    ld b, $4a
    nop

jr_012_7a14:
    pop hl
    ld c, $4c
    nop

jr_012_7a18:
    pop hl
    ld d, $4e
    nop

jr_012_7a1c:
    pop af
    or $50
    nop
    pop af
    cp $52
    nop
    pop af
    ld b, $54
    nop
    pop af
    ld c, $56
    nop
    pop af
    ld d, $58
    nop
    ld bc, $5af1
    nop
    ld bc, $5cf9
    nop
    ld bc, $5e01
    nop
    ld bc, $6009
    nop
    ld bc, $6211
    nop
    ld de, $6401
    nop
    ld de, $6609
    nop
    ld de, $6811
    nop
    inc de
    db $e4
    pop af
    ld b, b
    nop
    db $e4
    ld sp, hl
    ld b, d
    nop
    db $e4
    ld bc, $0044
    db $f4
    ld hl, sp+$46
    nop
    db $f4
    nop
    ld c, b
    nop
    db $f4
    ld [$004a], sp
    db $f4
    db $10
    ld c, h
    nop
    inc b
    ld hl, sp+$4e
    nop
    inc b
    nop
    ld d, b
    nop
    inc b
    ld [$0052], sp
    inc b
    db $10
    ld d, h
    nop
    inc b
    jr jr_012_7ad6

    nop
    inc b
    jr nz, jr_012_7adc

    nop
    inc d
    ld hl, sp+$5a
    nop
    inc d
    nop
    ld e, h
    nop
    inc d
    ld [$005e], sp
    inc d
    db $10
    jr nz, jr_012_7a95

jr_012_7a95:
    inc d
    jr jr_012_7aba

    nop
    inc d
    jr nz, @+$26

    nop
    inc de
    db $f4
    ldh a, [rLCDC]
    nop
    db $f4
    ld hl, sp+$42
    nop
    ld sp, hl
    nop
    ld b, h
    nop
    ld sp, hl
    ld [$0046], sp
    inc b
    ldh a, [rOBP0]
    nop
    inc b
    ld hl, sp+$4a
    nop
    add hl, bc
    nop
    ld c, h
    nop

jr_012_7aba:
    add hl, bc
    ld [$004e], sp
    inc d
    ldh a, [$50]
    nop
    inc d
    ld hl, sp+$52
    nop
    add hl, de
    nop
    ld d, h
    nop
    add hl, de
    ld [$0056], sp
    add hl, hl
    nop
    ld e, b
    nop
    add hl, hl
    ld [$005a], sp

jr_012_7ad6:
    db $fc
    db $10

jr_012_7ad8:
    ld e, h
    nop
    inc c
    db $10

jr_012_7adc:
    ld e, [hl]
    nop
    inc e
    db $10
    jr c, jr_012_7ae2

jr_012_7ae2:
    inc b
    jr @+$3c

    nop
    inc d
    jr @+$3e

    nop
    inc de
    db $e4

jr_012_7aec:
    rla
    ld b, b
    jr nz, @-$1a

jr_012_7af0:
    rrca
    ld b, d
    jr nz, jr_012_7ad8

    rlca
    ld b, h
    jr nz, jr_012_7aec

jr_012_7af8:
    db $10
    ld b, [hl]
    jr nz, jr_012_7af0

    ld [$2048], sp
    db $f4
    nop
    ld c, d
    jr nz, jr_012_7af8

    ld hl, sp+$4c
    jr nz, jr_012_7b0c

    db $10
    ld c, [hl]
    jr nz, jr_012_7b10

jr_012_7b0c:
    ld [$2050], sp
    inc b

jr_012_7b10:
    nop
    ld d, d
    jr nz, jr_012_7b18

    ld hl, sp+$54
    jr nz, jr_012_7b1c

jr_012_7b18:
    ldh a, [rRP]
    jr nz, jr_012_7b20

jr_012_7b1c:
    add sp, $58
    jr nz, jr_012_7b34

jr_012_7b20:
    db $10
    ld e, d
    jr nz, jr_012_7b38

    ld [$205c], sp
    inc d
    nop
    ld e, [hl]
    jr nz, @+$16

    ld hl, sp+$20
    jr nz, jr_012_7b44

    ldh a, [rNR43]
    jr nz, @+$16

jr_012_7b34:
    add sp, $24
    jr nz, jr_012_7b4b

jr_012_7b38:
    db $f4
    jr jr_012_7b7b

    jr nz, @-$0a

    db $10
    ld b, d
    jr nz, @-$05

    ld [$2044], sp

jr_012_7b44:
    ld sp, hl
    nop
    ld b, [hl]
    jr nz, jr_012_7b4d

    jr jr_012_7b93

jr_012_7b4b:
    jr nz, jr_012_7b51

jr_012_7b4d:
    db $10
    ld c, d
    jr nz, @+$0b

jr_012_7b51:
    ld [$204c], sp
    add hl, bc
    nop
    ld c, [hl]
    jr nz, jr_012_7b6d

    jr @+$52

    jr nz, jr_012_7b71

    db $10
    ld d, d
    jr nz, @+$1b

    ld [$2054], sp
    add hl, de
    nop
    ld d, [hl]
    jr nz, @+$2b

    ld [$2058], sp
    add hl, hl

jr_012_7b6d:
    nop
    ld e, d
    jr nz, jr_012_7b6d

jr_012_7b71:
    ld hl, sp+$5c
    jr nz, jr_012_7b81

    ld hl, sp+$5e
    jr nz, jr_012_7b95

    ld hl, sp+$38

jr_012_7b7b:
    jr nz, jr_012_7b81

    ldh a, [$3a]
    jr nz, jr_012_7b95

jr_012_7b81:
    ldh a, [$3c]
    jr nz, jr_012_7b99

    ldh a, [$fa]
    ld b, b
    nop
    ld hl, sp+$02
    ld b, d
    nop
    ld hl, sp+$0a
    ld b, h
    nop
    ld hl, sp+$12

jr_012_7b93:
    ld b, [hl]
    nop

jr_012_7b95:
    nop
    ld [$0048], a

jr_012_7b99:
    nop
    ld a, [c]
    ld c, d
    nop
    nop
    ld a, [$004c]
    ld [$4e02], sp
    nop
    ld [$500a], sp
    nop
    ld [$5212], sp
    nop
    inc bc
    ld a, [de]
    ld d, h
    nop
    db $10
    ld [$0056], a
    db $10
    ld a, [c]
    ld e, b
    nop
    db $10
    ld a, [$005a]
    jr jr_012_7bc1

    ld e, h
    nop

jr_012_7bc1:
    jr jr_012_7bcd

    ld e, [hl]
    nop
    jr jr_012_7bd9

    jr nc, jr_012_7bc9

jr_012_7bc9:
    inc de
    ld a, [de]
    ld [hl-], a
    nop

jr_012_7bcd:
    jr nz, jr_012_7bc1

    inc [hl]
    nop
    jr nz, jr_012_7bcd

    ld [hl], $00
    dec d
    ld hl, sp-$14
    add [hl]

jr_012_7bd9:
    nop
    ld hl, sp-$0c
    adc b
    nop
    ld hl, sp-$04
    adc d
    nop
    ld hl, sp+$04
    adc h
    nop
    ld hl, sp+$1b
    add [hl]
    jr nz, @-$06

    inc de
    adc b
    jr nz, @-$06

    dec bc
    adc d
    jr nz, @+$0a

    db $ec
    adc [hl]
    nop
    ld [$90f4], sp
    nop
    ld [$92fc], sp
    nop
    ld [$9404], sp
    nop
    ld [$8e1b], sp
    jr nz, jr_012_7c0f

    inc de

jr_012_7c08:
    sub b
    jr nz, @+$0a

    dec bc
    sub d
    jr nz, jr_012_7c27

jr_012_7c0f:
    db $ec
    sub [hl]
    nop
    jr jr_012_7c08

jr_012_7c14:
    sbc b
    nop
    jr jr_012_7c14

    sbc d
    nop
    jr jr_012_7c20

    sbc h
    nop
    jr jr_012_7c3b

jr_012_7c20:
    sub [hl]
    jr nz, jr_012_7c3b

    inc de
    sbc b
    jr nz, @+$1a

jr_012_7c27:
    dec bc
    sbc d
    jr nz, jr_012_7c40

    ld hl, sp-$14
    ld b, b
    nop
    ld hl, sp-$0c
    ld b, d
    nop
    ld hl, sp-$04
    ld b, h
    nop
    ld hl, sp+$04
    ld b, [hl]
    nop

jr_012_7c3b:
    ld hl, sp+$1b
    ld b, b
    jr nz, @-$06

jr_012_7c40:
    inc de
    ld b, d
    jr nz, @-$06

    dec bc
    ld b, h
    jr nz, @+$0a

    db $ec
    ld c, b
    nop
    ld [$4af4], sp
    nop
    ld [$4cfc], sp
    nop
    ld [$4e04], sp
    nop
    ld [$481b], sp
    jr nz, jr_012_7c64

    inc de

jr_012_7c5d:
    ld c, d
    jr nz, @+$0a

    dec bc
    ld c, h
    jr nz, jr_012_7c7c

jr_012_7c64:
    db $ec
    ld d, b
    nop
    jr jr_012_7c5d

jr_012_7c69:
    ld d, d
    nop
    jr jr_012_7c69

    ld d, h
    nop
    jr jr_012_7c75

    ld d, [hl]
    nop
    jr jr_012_7c90

jr_012_7c75:
    ld d, b
    jr nz, jr_012_7c90

    inc de
    ld d, d
    jr nz, jr_012_7c94

jr_012_7c7c:
    dec bc
    ld d, h
    jr nz, jr_012_7c92

    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a

jr_012_7c90:
    ld [de], a
    ld [de], a

jr_012_7c92:
    ld [de], a
    ld [de], a

jr_012_7c94:
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a

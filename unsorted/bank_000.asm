; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

INCLUDE "charmap.asm"

SECTION "ROM Bank $000", ROM0
VBlankInterrupt::
    push af
    push bc
    push de
    push hl
    jp Jump_000_09d4

    nop

LCDCInterrupt::
    push af
    push hl
    jp Jump_000_0b22

    nop
    nop
    nop

TimerOverflowInterrupt::
    ei
    push af
    push bc
    push de
    push hl
    jp Jump_000_0ce3

SerialTransferCompleteInterrupt::
    push af
    jp Jump_000_0c19


    nop
    nop
    nop
    nop

JoypadTransitionInterrupt::
    reti


    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_000_0068:
    add e
    ld e, a
    ret nc

    inc d
    ret


Call_000_006d:
    add c
    ld c, a
    ret nc

    inc b
    ret


    push hl
    add a
    ld l, a
    ld a, $00
    adc a
    ld h, a
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ret


    push hl
    add a
    ld l, a
    ld a, $00
    adc a
    ld h, a
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ret


Call_000_008a:
Jump_000_008a:
    ld_long a, $ff97
    push af
    ld a, e
    ld_long $ff97, a
    ld [$2222], a
    call Call_000_00a0
    pop af
    ld_long $ff97, a
    ld [$2222], a
    ret


Call_000_00a0:
    jp hl

SecretsKeyboard::   ;000:00a1?
    db "BDFGHJLM"   ;BDFGHJLM
    db "♠♥♦♣#"      ;♠♥♦♣#
    db "NQRSTWY!"   ;NQRSTWY!
    db "●▲■+-"      ;●▲■+-
    db "bdfghjm"    ;bdfghj m
    db "$*/:~"      ;$*/:~
    db "nqrstwy?"   ;nqrstwy?
    db "%&(=)"      ;%&(=)
    db "23456789"   ;23456789
    db "↑↓←→@"      ;↑↓←→@

    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0402
    ld [$2010], sp
    ld b, b
    add b

Boot::
    nop
    jp Start


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "ZELDA DIN", $00, $00

HeaderManufacturerCode::
    db "AZ7E"

HeaderCGBFlag::
    db $c0

HeaderNewLicenseeCode::
    db $30, $31

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $1b

HeaderROMSize::
    db $05

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $ee

HeaderGlobalChecksum::
    db $fe, $8f

Start:
    nop
    di
    cp $11
    ld a, $00
    jr nz, jr_000_015f

    inc a
    bit 0, b
    jr z, jr_000_015f

    ld a, $ff
jr_000_015f:
    ldh [hFF96], a
    ld a, $37
    ldh [hFF94], a
    ld a, $0d
    ldh [hFF95], a
Jump_000_0169:
    ld sp, wStackBottom
    ld a, $03
    ldh [hFF97], a
    ld [rROMB0], a
    jp $4000


    ld b, $00

jr_000_0178:
    add a
    jr nc, jr_000_017c

    inc b

jr_000_017c:
    or a
    jr nz, jr_000_0178

    ld a, b
    ret


    ld a, [hl]
    add c
    daa
    ld [hl+], a
    ld a, [hl]
    adc b
    daa
    ld [hl-], a
    ret nc

    ld a, $63
    ld [hl+], a
    ld [hl-], a
    ret


Jump_000_018f:
    ld a, [hl]
    sub c
    daa
    ld [hl+], a
    ld a, [hl]
    sbc b
    daa
    ld [hl-], a
    ret nc

    xor a
    ld [hl+], a
    ld [hl-], a
    scf
    ret


Call_000_019d:
    ld e, $08
    ld b, $00
    ld l, b
    ld h, b

jr_000_01a3:
    add hl, hl
    add a
    jr nc, jr_000_01a8

    add hl, bc

jr_000_01a8:
    dec e
    jr nz, jr_000_01a3

    ret


Call_000_01ac:
    swap a
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    ld b, a
    ret


Call_000_01b7:
    swap a
    rrca
    ld b, a
    and $f8
    ld c, a
    ld a, b
    and $07
    ld b, a
    ret


    ld b, $00
    add a
    rl b
    add a
    rl b
    ld c, a
    ret


    ld b, $ff
    bit 7, a
    jr nz, jr_000_01d4

    inc b

jr_000_01d4:
    ld c, a
    ret


Call_000_01d6:
    ld a, h
    cp b
    jr c, jr_000_01e4

    jr nz, jr_000_01e7

    ld a, l
    cp c
    jr c, jr_000_01e4

    jr nz, jr_000_01e7

    xor a
    ret


jr_000_01e4:
    ld a, $ff
    ret


jr_000_01e7:
    ld a, $01
    ret


    or a
    ret z

    push bc
    ld c, $ff

jr_000_01ef:
    inc c
    srl a
    jr nz, jr_000_01ef

    ld a, c
    pop bc
    scf
    ret


    or a
    ret z

    push bc
    ld c, $08

jr_000_01fd:
    dec c
    add a
    jr nz, jr_000_01fd

    ld a, c
    pop bc
    scf
    ret


Jump_000_0205:
    push hl
    push bc
    call Call_000_0223
    and [hl]
    pop bc
    pop hl
    ret


Jump_000_020e:
    push hl
    push bc
    call Call_000_0223
    or [hl]
    ld [hl], a
    pop bc
    pop hl
    ret


Jump_000_0218:
    push hl
    push bc
    call Call_000_0223
    cpl
    and [hl]
    ld [hl], a
    pop bc
    pop hl
    ret


Call_000_0223:
    ld b, a
    and $f8
    rlca
    swap a
    ld c, a
    ld a, b
    ld b, $00
    add hl, bc
    and $07
    ld bc, $00f8
    add c
    ld c, a
    ld a, [bc]
    ret


Call_000_0237:
    inc hl
    ld a, [hl-]
    or [hl]
    ret z

    ld a, [hl]
    sub $01
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl-], a
    or [hl]
    ret


Call_000_0245:
    inc [hl]
    ret nz

    ld [hl], $ff
    ret


Call_000_024a:
    inc [hl]
    ret nz

    inc hl
    inc [hl]
    jr z, jr_000_0252

    dec hl
    ret


jr_000_0252:
    push af
    ld a, $ff
    ld [hl-], a
    ld [hl], a
    pop af
    ret


    ld bc, $0000

jr_000_025c:
    cp $64
    jr c, jr_000_0265

    sub $64
    inc b
    jr jr_000_025c

jr_000_0265:
    cp $0a
    ret c

    sub $0a
    inc c
    jr jr_000_0265

Call_000_026d:
    ld c, $00
    ld a, $20
    ld [c], a
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld b, a
    ld a, $10
    ld [c], a
    ld a, b
    and $0f
    swap a
    ld b, a
    ld hl, $c481
    ld a, [hl-]
    ld [hl+], a
    cpl
    ld [hl], a
    ld a, [c]
    ld a, [c]
    and $0f
    or b
    cpl
    ld b, [hl]
    ld [hl+], a
    and b
    ld [hl], a
    ld a, $30
    ld [c], a
    ret


    push hl
    push bc
    ld a, [$c481]
    and $f0
    ld b, a
    ld hl, $c483
    ld a, [hl]
    and b
    ld a, b
    ld [hl+], a
    jr z, jr_000_02b9

    inc [hl]
    ld a, [hl]
    cp $28
    jr c, jr_000_02bb

    and $1f
    or $80
    ld [hl], a
    and $03
    jr nz, jr_000_02bb

    ld a, [$c481]
    jr jr_000_02be

jr_000_02b9:
    xor a
    ld [hl], a

jr_000_02bb:
    ld a, [$c482]

jr_000_02be:
    pop bc
    pop hl
    ret


Call_000_02c1:
    ldh a, [rLCDC]
    rlca
    ret nc

    push bc
    ldh a, [rIE]
    ld b, a
    and $fe
    ldh [rIE], a

jr_000_02cd:
    ldh a, [rLY]
    cp $91
    jr c, jr_000_02cd

    ld a, $03
    ldh [$9b], a
    xor a
    ld [$c497], a
    ld [$c48b], a
    ld [$c485], a
    ldh [rLCDC], a
    ldh [rIF], a
    ld a, b
    ldh [rIE], a
    pop bc
    ret


    ld l, a
    add a
    add l
    add a
    ld hl, $0306
    rst JumpTable
    ld b, $0c
    ld de, $c485

jr_000_02f7:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_02f7

    ld a, [$c485]
    ld [$c497], a
    ldh [rLCDC], a
    ret


    jp RST_00


    rst $00
    rst $00
    rst $00
    jp RST_00


    rst $00
    rst $00
    rst $00
    rst $00
    nop
    nop
    rst $00
    rst $00
    rst $00
    nop
    nop
    nop
    rst $00
    rst $00
    rst $00
    rst $28
    ldh a, [rP1]
    adc a
    adc a
    rrca
    rst $20
    nop
    nop
    rst $00
    rst $00
    rst $00
    rst $28
    ldh a, [rP1]
    db $10
    rst $00
    rrca
    rst $30
    ldh a, [rP1]
    db $10
    rst $00
    ld [hl], l
    rst $00
    nop
    nop
    rst $00
    rst $00
    rst $00
    nop
    nop
    nop
    rst $00
    rst $00
    rst $00
    rst $08
    nop
    nop
    rst $00
    rst $00
    rst $00
    nop
    nop
    nop
    rst $00
    rst $00
    rst $00
    and a
    nop
    or b
    rst $00
    rst $00
    rra
    adc a

jr_000_0355:
    nop
    nop
    rst $00
    rst $00
    rst $00
    rst $00
    nop
    nop
    rst $00
    rst $00
    rst $00
    nop
    nop
    nop
    rst $00
    rst $00
    rst $00
    and a
    nop
    nop
    sub b
    rlca
    nop
    and a

jr_000_036d:
    ld b, b
    nop
    sub b
    rlca
    rst $00
    rst $00
    ld [hl], b
    nop
    rst $00
    rst $00
    rst $00
    rst $00
    nop
    nop
    rst $00
    rst $00
    rst $00
    rst $08
    ld [hl], b
    nop
    rst $00
    rst $00
    rst $00
    rst $08
    nop
    nop
    rst $00
    rst $00
    rst $00
    rst $08
    nop
    jr nz, jr_000_0355

    rst $00
    rst $00
    rst $08
    nop
    nop
    rst $00
    rst $00
    rst $00
    and a
    nop
    nop
    ld a, b
    rlca
    daa
    xor a
    ldh a, [rP1]
    ld a, b
    rlca
    rst $00
    rst $00
    db $10
    jr nc, jr_000_036d

    rst $00
    rst $00
    rst $00
    nop
    nop
    rst $00
    rst $00
    rst $00
    rst $20
    ld bc, $4c00
    ld c, h
    rst $00
    rst $00

jr_000_03b5:
    nop
    nop
    rst $00
    rst $00
    rst $00
    xor a

jr_000_03bb:
    ldh a, [rP1]
    db $10
    rlca
    rla
    rst $30
    ldh a, [rP1]
    db $10
    rst $00
    ld d, a
    or a
    ldh a, [rP1]
    db $10
    rlca
    rra
    rst $30
    ldh a, [rP1]
    db $10
    rst $00
    ld b, a
    rst $28
    ldh a, [rP1]
    adc a
    adc a
    rrca
    rst $20
    nop
    nop
    ld b, b
    ld d, a
    rst $00
    rst $28
    ldh a, [rP1]
    adc a
    adc a
    rrca
    rst $20
    nop
    nop
    sub b
    ld b, a
    rst $00
    rst $20
    nop
    jr z, jr_000_03b5

    rst $00
    rst $00
    rst $20
    nop
    jr z, jr_000_03bb

    rst $00
    rst $00
    rst $28
    ldh a, [rP1]
    adc a
    adc a
    nop
    rst $20
    nop
    nop
    rst $00
    rst $00
    rst $00
    rst $20
    nop
    nop
    rst $00
    rst $00
    rst $00
    rst $20
    nop
    nop
    rst $00
    rst $00
    rst $00
    rst $38
    jr nc, jr_000_0411

jr_000_0411:
    ld h, b
    rlca
    jr @+$01

    jr nc, jr_000_0417

jr_000_0417:
    ld h, b
    rlca
    rst $00

Call_000_041a:
    push hl
    push bc
    ldh a, [$94]
    ld l, a
    ld c, a
    ldh a, [$95]
    ld h, a
    ld b, a
    add hl, hl
    add hl, bc
    ld a, h
    ldh [$95], a
    add c
    ldh [$94], a
    pop bc
    pop hl
    ret


Call_000_042f:
    ldh a, [$94]
    ld l, a
    ld c, a
    ldh a, [$95]
    ld h, a
    ld b, a
    add hl, hl
    add hl, bc
    ld a, h
    ldh [$95], a
    add c
    ldh [$94], a
    ret


    ld b, $00
    call Call_000_041a

jr_000_0445:
    sub [hl]
    ret c

    inc hl
    inc b
    jr jr_000_0445

Call_000_044b:
Jump_000_044b:
    xor a

jr_000_044c:
    ld [hl+], a
    dec b
    jr nz, jr_000_044c

    ret


Call_000_0451:
Jump_000_0451:
jr_000_0451:
    xor a

Call_000_0452:
    ld e, a

jr_000_0453:
    ld a, e
    ld [hl+], a
    dec bc

Call_000_0456:
    ld a, c
    or b
    jr nz, jr_000_0453

    ret


Call_000_045b:
jr_000_045b:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_045b

    ret


Call_000_0462:
jr_000_0462:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_0462

    ret


jr_000_0469:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_0469

    ret


jr_000_0472:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_0472

    ret


Call_000_047b:
    xor a
    ldh [$9d], a
    ld h, $cb
    ld b, $e0

jr_000_0482:
    ld l, a
    ld [hl], b
    add $04
    cp $a0
    jr c, jr_000_0482

    ret


    call Call_000_02c1
    call Call_000_047b
    ld a, $01
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $2000
    call Call_000_0451
    xor a
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $2000
    jr jr_000_0451

    call Call_000_04c9
    call Call_000_02c1
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0400
    ld a, $80
    call Call_000_0452
    xor a
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0400
    jr jr_000_0451

Call_000_04c9:
    call Call_000_02c1
    ld a, $01
    ldh [rVBK], a
    ld hl, $9c00
    ld bc, $0400
    ld a, $80
    call Call_000_0452
    xor a
    ldh [rVBK], a
    ld hl, $9c00
    ld bc, $0400
    jp Jump_000_0451


Call_000_04e7:
    push de
    ld l, a
    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld a, $02
    ldh [rSVBK], a
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    ld a, l
    ld hl, $6290
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_0503:
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    ld a, [hl]
    and $07
    inc a
    ld b, a
    ld a, [hl]
    rlca
    swap a
    and $07
    ld de, $00f8
    add e
    ld e, a
    ld a, [de]
    ld c, a
    xor a

jr_000_051d:
    or c
    dec b
    jr z, jr_000_0524

    rlca
    jr jr_000_051d

jr_000_0524:
    ld b, a
    ld c, $a4
    bit 6, [hl]
    jr z, jr_000_052d

    ld c, $a5

jr_000_052d:
    ld a, [c]
    or b
    ld [c], a
    ld a, [hl]
    and $78
    add $80
    ld e, a
    ld d, $de
    ld a, [hl]
    and $07
    inc a
    ld b, a
    ld a, [hl+]
    rlca
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    push hl
    ld l, c
    ld h, a
    ld a, $16
    ldh [$97], a
    ld [$2222], a

jr_000_054c:
    ld c, $08

jr_000_054e:
    ld a, [hl+]
    ld [de], a
    inc e
    dec c
    jr nz, jr_000_054e

    dec b
    jr nz, jr_000_054c

    pop hl
    jr c, jr_000_0503

    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    pop de
    ret


Call_000_0566:
Jump_000_0566:
    ldh a, [rLCDC]
    rlca
    jr nc, jr_000_058b

    push de
    push hl
    ld h, $c4
    ldh a, [$a3]
    ld l, a
    ld a, [$0a69]
    ld [hl+], a
    ld a, c
    ld [hl+], a
    pop de
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    pop de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, l
    ldh [$a3], a
    scf
    ret


jr_000_058b:
    ldh a, [$97]
    push af
    ldh a, [rSVBK]
    push af
    push de
    push hl
    ld a, c
    ldh [rSVBK], a
    ldh [$97], a
    ld [$2222], a
    pop de
    ld hl, $ff51
    ld [hl], d
    inc l
    ld [hl], e
    inc l
    pop de
    ld a, e
    ldh [rVBK], a
    ld [hl], d
    inc l
    ld [hl+], a
    ld [hl], b
    pop af
    ldh [rSVBK], a
    pop af
    ldh [$97], a
    ld [$2222], a
    xor a
    ret


Call_000_05b6:
Jump_000_05b6:
    ld e, a
    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    ld a, e
    ld hl, $66d0
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_05cd:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    push de
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    and $7f
    ld b, a
    ld a, l
    ldh [$90], a
    ld a, h
    ldh [$91], a
    pop hl
    call Call_000_0566
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    ldh a, [$90]
    ld l, a
    ldh a, [$91]
    ld h, a
    ld a, [hl+]
    add a
    jr c, jr_000_05cd

    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    ret


Call_000_0602:
    ld e, a
    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    ld a, e
    ld hl, $6926
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_0619:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    push de
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    and $7f
    ld b, a
    ld a, l
    ldh [$90], a
    ld a, h
    ldh [$91], a
    pop hl
    call Call_000_064e
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    ldh a, [$90]
    ld l, a
    ldh a, [$91]
    ld h, a
    ld a, [hl+]
    add a
    jr c, jr_000_0619

    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    ret


Call_000_064e:
    ld a, e
    and $0f
    ldh [rVBK], a
    ldh [rSVBK], a
    xor e
    ld e, a
    ld a, c
    and $3f
    ldh [$97], a
    ld [$2222], a
    inc b
    ld a, c
    and $c0
    jp z, Jump_000_06bc

    cp $c0
    jr z, jr_000_06ca

    cp $40
    jr z, jr_000_06ce

    ld a, b

jr_000_066f:
    push af
    call Call_000_0678
    pop af
    dec a
    jr nz, jr_000_066f

    ret


Call_000_0678:
    call Call_000_0764
    ld c, a
    call Call_000_0764
    ldh [$8a], a
    or c
    jr nz, jr_000_068f

    ld b, $10

jr_000_0686:
    call Call_000_0764
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_0686

    ret


jr_000_068f:
    call Call_000_0764
    ldh [$8b], a
    ld b, $08

jr_000_0696:
    rl c
    jr c, jr_000_069f

    call Call_000_0764
    jr jr_000_06a1

jr_000_069f:
    ldh a, [$8b]

jr_000_06a1:
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_0696

    ldh a, [$8a]
    ld c, a
    ld b, $08

jr_000_06ab:
    rl c
    jr c, jr_000_06b4

    call Call_000_0764
    jr jr_000_06b6

jr_000_06b4:
    ldh a, [$8b]

jr_000_06b6:
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_06ab

    ret


Jump_000_06bc:
jr_000_06bc:
    ld c, $10

jr_000_06be:
    call Call_000_0764
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_06be

    dec b
    jr nz, jr_000_06bc

    ret


jr_000_06ca:
    ld a, $ff
    jr jr_000_06d1

jr_000_06ce:
    xor a
    ldh [$93], a

jr_000_06d1:
    ldh [$8e], a
    swap b
    ld a, b
    and $f0
    ld c, a
    xor b
    ld b, a
    ld a, $01
    ldh [$8b], a

jr_000_06df:
    ldh a, [$8b]
    dec a
    ldh [$8b], a
    jr nz, jr_000_06f0

    ld a, $08
    ldh [$8b], a
    ld a, [hl+]
    ldh [$8a], a
    call Call_000_0752

jr_000_06f0:
    ldh a, [$8a]
    add a
    ldh [$8a], a
    jr c, jr_000_06fd

    call Call_000_074e
    jr nz, jr_000_06df

    ret


jr_000_06fd:
    ldh a, [$8e]
    or a
    jr nz, jr_000_0710

    ld a, [hl]
    and $1f
    ldh [$92], a
    xor [hl]
    jr z, jr_000_0725

    swap a
    rrca
    inc a
    jr jr_000_072a

jr_000_0710:
    ld a, [hl+]
    ldh [$92], a
    call Call_000_0752
    ld a, [hl]
    and $07
    ldh [$93], a
    xor [hl]
    jr z, jr_000_0725

    rrca
    rrca
    rrca
    add $02
    jr jr_000_072a

jr_000_0725:
    inc hl
    call Call_000_0752
    ld a, [hl]

jr_000_072a:
    ldh [$8f], a
    inc hl
    call Call_000_0752
    push hl
    ldh a, [$92]
    cpl
    ld l, a
    ldh a, [$93]
    cpl
    ld h, a
    add hl, de

jr_000_073a:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr z, jr_000_074c

    ldh a, [$8f]
    dec a
    ldh [$8f], a
    jr nz, jr_000_073a

    pop hl
    jr jr_000_06df

jr_000_074c:
    pop hl
    ret


Call_000_074e:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc

Call_000_0752:
    ld a, h
    cp $80
    jr nz, jr_000_0761

    ld h, $40
    ldh a, [$97]
    inc a
    ldh [$97], a
    ld [$2222], a

jr_000_0761:
    ld a, b
    or c
    ret


Call_000_0764:
    ld a, [hl+]
    bit 7, h
    ret z

    push af
    ld h, $40
    ldh a, [$97]
    inc a
    ldh [$97], a
    ld [$2222], a
    pop af
    ret


Call_000_0775:
    ld e, a
    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    ld a, e
    ld hl, $7964
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_078c:
    ld a, [hl+]
    push hl
    ld hl, $794e
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ldh [$8f], a
    ld a, [hl+]
    ldh [$91], a
    ld a, [hl+]
    ldh [$90], a
    pop hl
    ld a, [hl+]
    ldh [$8e], a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    push de
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    and $7f
    ldh [$8d], a
    ld a, [hl-]
    ldh [$8c], a
    ld a, h
    ldh [$93], a
    ld a, l
    ldh [$92], a
    pop hl
    call Call_000_07da
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    ldh a, [$93]
    ld h, a
    ldh a, [$92]
    ld l, a
    ld a, [hl+]
    inc hl
    add a
    jr c, jr_000_078c

    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    ret


Call_000_07da:
    ld a, e
    and $0f
    ldh [rVBK], a
    ldh [rSVBK], a
    xor e
    ld e, a

jr_000_07e3:
    ldh a, [$8e]
    ldh [$97], a
    ld [$2222], a
    ld a, [hl+]
    ldh [$8b], a
    ld b, $08

jr_000_07ef:
    ldh a, [$8e]
    ldh [$97], a
    ld [$2222], a
    ldh a, [$8b]
    rrca
    ldh [$8b], a
    jr c, jr_000_0809

    ld a, [hl+]
    ld [de], a
    inc de
    call Call_000_0854
    ret z

    dec b
    jr nz, jr_000_07ef

    jr jr_000_07e3

jr_000_0809:
    push bc
    ldh a, [$8f]
    bit 7, a
    jr nz, jr_000_0824

    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ldh [$8a], a
    and $0f
    ld b, a
    ldh a, [$8a]
    swap a
    and $0f
    add $03
    ldh [$8a], a
    jr jr_000_082b

jr_000_0824:
    ld a, [hl+]
    ldh [$8a], a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a

jr_000_082b:
    push hl
    ld hl, $ff90
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ldh a, [$8a]
    ld b, a
    ldh a, [$8f]
    and $3f
    ldh [$97], a
    ld [$2222], a

jr_000_083f:
    ld a, [hl+]
    ld [de], a
    inc de
    call Call_000_0854
    jr z, jr_000_0851

    dec b
    jr nz, jr_000_083f

    pop hl
    pop bc
    dec b
    jr nz, jr_000_07ef

    jr jr_000_07e3

jr_000_0851:
    pop hl
    pop bc
    ret


Call_000_0854:
    push hl
    ld hl, $ff8c
    call Call_000_0237
    pop hl
    ret


    ldh a, [$b7]
    bit 7, a
    ret nz

    ld a, $01
    ldh [$b7], a
    ret


    push hl
    ld l, a
    ld h, $c2
    set 7, [hl]
    pop hl
    ret


    push hl
    ld l, a
    ld h, $c2
    res 7, [hl]
    pop hl
    ret


Jump_000_0877:
    push hl
    ld l, a
    ld h, $c2
    ld [hl], $00
    pop hl
    ret


Jump_000_087f:
    push hl
    push de
    push bc
    ld e, a
    add $04
    ld c, a
    ld d, $00
    ld hl, $08a8
    add hl, de
    ld d, $c2
    ld b, $08

jr_000_0890:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_0890

    ld l, c
    ld h, d
    pop bc
    ld [hl], c
    inc l
    ld [hl], b
    pop de
    pop hl
    ret


    push bc
    ldh a, [$9c]
    ld e, a
    add $04
    ld c, a
    ld d, $00
    ld hl, $08a8
    add hl, de
    ld d, $c2
    ld b, $08

jr_000_08b0:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_08b0

    ld l, c
    ld h, d
    pop bc
    ld [hl], c
    inc l
    ld [hl], b
    jr jr_000_08f3

Jump_000_08be:
    ldh a, [$9c]
    ld l, a
    ld h, $c2
    ld [hl], $00
    jr jr_000_08f3

    ld a, $01
    push bc
    ld b, a
    ldh a, [$97]
    ld c, a
    ld a, b
    call Call_000_08dc
    ld a, c
    ldh [$97], a
    ld [$2222], a
    pop bc
    ret


Call_000_08da:
    ld a, $01

Call_000_08dc:
    push hl
    push de
    push bc
    ld b, a
    ldh a, [$9c]
    ld l, a
    ld h, $c2
    ld a, $01
    ld [hl+], a
    ld [hl], b
    inc l
    ld [$ff92], sp
    ldh a, [$92]
    ld [hl+], a
    ldh a, [$93]
    ld [hl], a

jr_000_08f3:
    ld sp, $c110
    ld h, $c2
    ld a, $01
    ldh [rSVBK], a
    jr jr_000_0931

    ld sp, $c110
    ld hl, $0988
    ld de, $c2e0
    ld b, $20

jr_000_0909:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_0909

jr_000_090f:
    call Call_000_026d
    ldh a, [$b7]
    add a
    jr z, jr_000_091f

    ld a, [$c481]
    sub $0f
    jp z, Jump_000_0169

jr_000_091f:
    ld a, $10
    ldh [$9d], a
    ld h, $c2
    ld a, $e0
    ldh [$9c], a

jr_000_0929:
    ld l, a
    ld a, [hl]
    dec a
    jr z, jr_000_0967

    dec a
    jr z, jr_000_0978

jr_000_0931:
    ldh a, [$9c]
    add $08
    ldh [$9c], a
    cp $00
    jr nz, jr_000_0929

    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $4016
    xor a
    ldh [rSVBK], a
    ld hl, $c49e
    inc [hl]
    ld hl, $c485
    ld de, $c497
    ld b, $06

jr_000_0954:
    ld a, [hl+]
    ld [de], a

jr_000_0956:
    inc e
    dec b
    jr nz, jr_000_0954

    ld hl, $c49d
    ld [hl], $ff

jr_000_095f:
    halt
    bit 7, [hl]
    jr nz, jr_000_095f

    jr jr_000_090f

jr_000_0967:
    inc l
    dec [hl]
    jr nz, jr_000_0931

    dec l
    ld a, $03
    ld [hl+], a
    inc l
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld sp, hl
    pop bc
    pop de
    pop hl
    ret


jr_000_0978:
    ld a, $03
    ld [hl+], a
    inc l
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld l, e
    ld h, d
    ld sp, hl
    push bc
    ret


    ld [bc], a
    nop
    add b
    pop bc
    ld c, [hl]
    inc l
    nop
    nop
    ld [bc], a
    nop
    jr nz, jr_000_0956

    cp [hl]
    ld [$0000], sp
    ld [bc], a
    nop
    ld [hl], b
    jp nz, Jump_000_08be

    nop
    nop
    ld [bc], a
    nop
    ret nz

    jp nz, Jump_000_322b

    nop
    nop
    rst $00
    ret z

    ret z

    ret z

    ret


    jp z, $cac9

    ld c, $00
    jr jr_000_09be

    ld c, $01
    jr jr_000_09be

    ld c, $02
    jr jr_000_09be

    ld c, $03

jr_000_09be:
    ldh a, [$97]
    push af
    ld a, $07
    ldh [$97], a
    ld [$2222], a
    call $4000
    ld c, a
    pop af
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ret


Jump_000_09d4:
    ldh a, [$9b]
    ldh [$99], a
    xor a
    ldh [$9a], a
    ld hl, $ffb5
    set 7, [hl]
    ld hl, $c497
    ld a, [hl+]
    ldh [rLCDC], a
    ld a, [hl+]
    ldh [rSCY], a
    ld a, [hl+]
    ldh [rSCX], a
    ld a, [hl+]
    ldh [rWY], a
    ld a, [hl+]
    ldh [rWX], a
    ld a, [hl+]
    ldh [rLYC], a
    inc [hl]
    jr nz, jr_000_0a38

    ld de, $c48b
    ld l, $91
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    ldh a, [rVBK]
    ld b, a
    ldh a, [rSVBK]
    ld c, a
    push bc
    ldh a, [$a3]
    or a
    call nz, Call_000_0a4d
    call Call_000_0ae3
    di
    call $ff80
    pop bc
    ld a, c
    ldh [rSVBK], a
    ld a, b
    ldh [rVBK], a
    ld hl, $c49f
    ld a, [hl+]
    ld [$c4a5], a
    ld a, [hl+]
    ld [$c4a6], a
    ld a, [hl+]
    ld [$c4a7], a

jr_000_0a38:
    ld hl, $ffb5
    res 7, [hl]
    ldh a, [$97]
    bit 0, [hl]
    jr z, jr_000_0a45

    ldh a, [$d8]

jr_000_0a45:
    ld [$2222], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Call_000_0a4d:
    ld hl, $c400

jr_000_0a50:
    ld a, [hl+]
    push hl
    ld c, a
    ld b, $00
    ld hl, $0a6a
    add hl, bc
    jp hl


Jump_000_0a5a:
jr_000_0a5a:
    ldh a, [$a3]
    cp l
    jr nz, jr_000_0a50

    xor a
    ldh [$a3], a
    ret


    nop
    ld [de], a
    add hl, hl
    ld c, e
    ld c, e
    ld a, [de]
    ld e, l
    pop hl
    ld a, [hl+]
    ldh [rVBK], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a

jr_000_0a74:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_0a74

    jr jr_000_0a5a

    ld a, $04
    ld [$2222], a
    jp $45c0


    pop hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    push hl
    ld l, c
    ld h, a
    ld bc, $0a90
    push bc
    jp hl


    pop hl
    jr jr_000_0a5a

    pop hl
    ld de, $0a5a
    push de
    xor a
    ldh [rVBK], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld c, e
    call Call_000_0aa8
    ld e, c
    ld a, $01
    ldh [rVBK], a

Call_000_0aa8:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


    pop hl
    ld a, [hl+]
    ldh [rVBK], a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld b, a

jr_000_0abf:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_0abf

    jr jr_000_0a5a

    pop hl
    ld a, [hl+]
    ldh [rSVBK], a
    ld [$2222], a
    ld a, [hl+]
    ldh [rHDMA1], a
    ld a, [hl+]
    ldh [rHDMA2], a
    ld a, [hl+]
    ldh [rVBK], a
    ld a, [hl+]
    ldh [rHDMA3], a
    ld a, [hl+]
    ldh [rHDMA4], a
    ld a, [hl+]
    ldh [rHDMA5], a
    jp Jump_000_0a5a


Call_000_0ae3:
    ld a, $02
    ldh [rSVBK], a
    ldh a, [$a4]
    ld d, a
    xor a
    ldh [$a4], a
    ld c, $68
    ld hl, $df00
    call Call_000_0aff
    ldh a, [$a5]
    ld d, a
    xor a
    ldh [$a5], a
    ld c, $6a
    ld l, $40

Call_000_0aff:
jr_000_0aff:
    srl d
    jr nc, jr_000_0b1b

    ld a, l
    or $80
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    dec c
    jr jr_000_0aff

jr_000_0b1b:
    ret z

    ld a, l
    add $08
    ld l, a
    jr jr_000_0aff

Jump_000_0b22:
    ldh a, [$99]
    cp $02
    jr nc, jr_000_0b41

    or a
    ldh a, [rLY]
    ld l, a
    ld h, $c3
    ld a, [hl+]
    jr nz, jr_000_0b35

    ldh [rSCX], a
    jr jr_000_0b37

jr_000_0b35:
    ldh [rSCY], a

jr_000_0b37:
    ld a, l
    cp $90
    jr nc, jr_000_0b3e

    ldh [rLYC], a

jr_000_0b3e:
    pop hl
    pop af
    reti


jr_000_0b41:
    push bc
    ld c, $03
    ldh a, [$9a]
    or a
    jr nz, jr_000_0b72

    ld hl, $c491

jr_000_0b4c:
    ldh a, [rSTAT]
    and c
    jr nz, jr_000_0b4c

    ld a, [hl+]
    ldh [rLCDC], a
    ld a, [hl+]
    ldh [rSCY], a
    ld a, [hl+]
    ldh [rSCX], a
    ld a, [hl+]
    ldh [rWY], a
    ld a, [hl+]
    ldh [rWX], a
    ld a, [hl+]
    ldh [rLYC], a
    ldh a, [$99]
    cp $02
    jr nz, jr_000_0b6c

    xor a
    ldh [$99], a

jr_000_0b6c:
    ld a, $01
    ldh [$9a], a
    jr jr_000_0bc2

jr_000_0b72:
    ldh a, [$99]
    cp $07
    jr nc, jr_000_0bbe

    rst $00
    cp [hl]
    dec bc
    cp [hl]
    dec bc
    cp [hl]
    dec bc
    add a
    dec bc
    cp b
    dec bc
    sub d
    dec bc
    add $0b

jr_000_0b87:
    ldh a, [rSTAT]
    and c
    jr nz, jr_000_0b87

    ld a, $a7
    ldh [rLCDC], a
    jr jr_000_0bbe

jr_000_0b92:
    ldh a, [rSTAT]
    and c
    jr nz, jr_000_0b92

    ldh [rSCX], a
    ld a, $87
    ldh [rLCDC], a
    ldh a, [$9a]
    dec a
    jr nz, jr_000_0bb2

    ld a, [$cbd3]
    or a
    jr z, jr_000_0bac

    ld a, $87
    ldh [rLYC], a

jr_000_0bac:
    ld a, $02
    ldh [$9a], a
    jr jr_000_0bc2

jr_000_0bb2:
    ld a, $80
    ldh [rSCY], a
    jr jr_000_0bb8

jr_000_0bb8:
    ld a, $c7
    ldh [rWY], a
    ldh [rWX], a

jr_000_0bbe:
    ld a, $c7
    ldh [rLYC], a

jr_000_0bc2:
    pop bc
    pop hl
    pop af
    reti


jr_000_0bc6:
    ldh a, [rSTAT]
    and c
    jr nz, jr_000_0bc6

    ld hl, $c4a5
    ld a, [hl+]
    ldh [rLCDC], a
    ld a, [hl+]
    ldh [rSCY], a
    ld a, [hl+]
    ldh [rSCX], a
    jr jr_000_0bbe

    nop
    ld b, b
    ld l, $40
    ld e, h
    ld b, b
    adc d
    ld b, b
    cp b
    ld b, b
    and $40
    inc d
    ld b, c
    ld b, d
    ld b, c
    ld [hl], b
    ld b, c
    sbc [hl]
    ld b, c
    call z, $fa41
    ld b, c
    jr z, @+$44

    ld d, [hl]
    ld b, d
    add h
    ld b, d
    or d
    ld b, d
    ldh [rSCY], a
    ld c, $43
    inc a
    ld b, e
    ld l, d
    ld b, e
    sbc b
    ld b, e
    add $43
    db $f4
    ld b, e
    ld [hl+], a
    ld b, h
    ld d, b
    ld b, h
    ld a, [hl]
    ld b, h
    xor h
    ld b, h
    jp c, $0844

    ld b, l
    ld [hl], $45
    ld h, h
    ld b, l
    sub d
    ld b, l

Jump_000_0c19:
    ldh a, [$b8]
    or a
    jr z, jr_000_0c2a

    ldh a, [rSB]
    ldh [$ba], a
    xor a
    ldh [rSB], a
    inc a
    ldh [$b9], a
    pop af
    reti


jr_000_0c2a:
    ldh a, [rSB]
    cp $e1
    jr z, jr_000_0c34

    cp $e0
    jr nz, jr_000_0c3b

jr_000_0c34:
    ldh [$b8], a
    xor a
    ldh [rSB], a
    pop af
    reti


jr_000_0c3b:
    ld a, $e1
    ldh [rSB], a
    ld a, $80
    call Call_000_0c46
    pop af
    reti


Call_000_0c46:
jr_000_0c46:
    push af
    and $01
    ldh [rSC], a
    pop af
    ldh [rSC], a
    ret


    xor a
    ldh [$bb], a
    ld a, $e0
    ldh [rSB], a
    ld a, $81
    jr jr_000_0c46

    xor a
    ldh [$b8], a
    ldh [rSB], a
    jr jr_000_0c46

    ld hl, $44ac
    ld e, $15
    jp Jump_000_008a


    push de
    ld hl, $4000
    ld e, $15
    call Call_000_008a
    pop de
    ret


Call_000_0c74:
Jump_000_0c74:
    or a
    ret z

    ld h, a
    ldh a, [$b5]
    bit 3, a
    ret nz

    ldh a, [$b3]
    ld l, a
    ld a, h
    ld h, $c0
    ld [hl+], a
    ld a, l
    and $af
    ldh [$b3], a
    ret


    or $80
    ldh [$b4], a
    ret


Call_000_0c8e:
    ld bc, $4009
    jr jr_000_0c96

    ld bc, $4000

jr_000_0c96:
    push de
    ldh a, [$97]
    push af
    call Call_000_0cb9
    ld a, $39
    ldh [$d9], a
    ldh [$d8], a
    ldh [$97], a
    ld [$2222], a
    call Call_000_0cb6
    call Call_000_0cc2
    pop af
    ldh [$97], a
    ld [$2222], a
    pop de
    ret


Call_000_0cb6:
    ld l, c
    ld h, b
    jp hl


Call_000_0cb9:
    ld hl, $ffb5
    set 0, [hl]
    xor a
    ldh [rTAC], a
    ret


Call_000_0cc2:
    xor a
    ldh [rTAC], a
    ld a, $a0
    ldh [$b3], a
    ldh [$b2], a
    ldh a, [rKEY1]
    rlca
    ld a, $77
    jr c, jr_000_0cd4

    ld a, $bb

jr_000_0cd4:
    ld hl, $ff05
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl], a
    set 2, [hl]
    ld hl, $ffb5
    res 0, [hl]
    ret


Jump_000_0ce3:
    ld hl, $ffb5
    bit 7, [hl]
    jr nz, jr_000_0d35

    bit 0, [hl]
    jr nz, jr_000_0d35

    set 0, [hl]
    inc l
    dec [hl]
    jr nz, jr_000_0cfb

    ld [hl], $07
    ldh a, [rTMA]
    dec a
    ldh [rTIMA], a

jr_000_0cfb:
    ld a, $39
    ld [$2222], a
    ldh a, [$b4]
    bit 7, a
    jr z, jr_000_0d0d

    and $03
    ldh [$b4], a
    call $4010

jr_000_0d0d:
    ldh a, [$b3]
    ld b, a
    ldh a, [$b2]
    cp b
    jr z, jr_000_0d28

    ld h, $c0

jr_000_0d17:
    ld l, a
    ld a, [hl+]
    push bc
    push hl
    call $4006
    pop hl
    pop bc
    ld a, l
    and $af
    cp b
    jr nz, jr_000_0d17

    ldh [$b2], a

jr_000_0d28:
    call $4003
    ld hl, $ffb5
    res 0, [hl]
    ldh a, [$97]
    ld [$2222], a

jr_000_0d35:
    pop hl
    pop de
    pop bc
    pop af
    reti


    ld bc, $0000

Call_000_0d3d:
    ldh a, [$9d]
    cp $a0
    ret nc

    ld e, a
    ld d, $cb
    ld a, [hl+]
    or a
    ret z

jr_000_0d48:
    ldh [$8b], a
    ld a, [hl+]
    add b
    cp $a0
    jr nc, jr_000_0d6e

    ld [de], a
    ld a, [hl+]
    add c
    cp $a8
    jr nc, jr_000_0d6f

    inc e
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, e
    cp $a0
    jr nc, jr_000_0d6b

jr_000_0d65:
    ldh a, [$8b]
    dec a
    jr nz, jr_000_0d48

    ld a, e

jr_000_0d6b:
    ldh [$9d], a
    ret


jr_000_0d6e:
    inc hl

jr_000_0d6f:
    inc hl
    inc hl
    ld a, $e0
    ld [de], a
    jr jr_000_0d65

Call_000_0d76:
    ld hl, $c4b6
    bit 0, [hl]
    ret nz

    ld [hl], $ff
    ldh a, [$97]
    push af
    call Call_000_1046
    ld de, $d000
    ld b, $0b
    ld a, [$cbae]
    and $04
    jr z, jr_000_0d95

    call Call_000_1076
    jr jr_000_0d9e

jr_000_0d95:
    call Call_000_1076
    inc d
    ld a, d
    cp $d6
    jr c, jr_000_0d95

jr_000_0d9e:
    ld a, $13
    ldh [$97], a
    ld [$2222], a
    ld a, [$cc00]
    add a
    swap a
    and $03
    ld hl, $405f
    rst JumpTable
    ld a, [hl+]
    ld [$c4ba], a
    ld a, [hl+]
    ld [$c4bb], a
    ld hl, $c4b7
    ld a, $c3
    ld [hl+], a
    ld a, $50
    ld [hl+], a
    ld [hl], $0f
    ld a, [$cd00]
    cp $08
    jr nz, jr_000_0df5

    ld a, $0f
    ld [hl-], a
    ld [hl], $8f
    xor a
    ld b, a
    inc a
    ldh [$8a], a
    ld a, [$cc4a]
    or a
    jr z, jr_000_0ddd

    ld a, $04

jr_000_0ddd:
    ld c, a
    ld a, [$cd02]
    add c
    add a
    add a
    ld c, a
    ld hl, $1026
    add hl, bc
    ld a, [hl+]
    ldh [$90], a
    ld a, [hl+]
    ldh [$91], a
    ld a, [hl+]
    ldh [$92], a
    ld a, [hl+]
    ldh [$93], a

jr_000_0df5:
    ld hl, $c500

jr_000_0df8:
    ld a, [hl]
    or a
    call nz, Call_000_0e3b
    inc l
    inc l
    bit 7, l
    jr z, jr_000_0df8

    ld hl, $c4c0
    ldh a, [$9e]
    rrca
    srl a
    ld b, a
    jr z, jr_000_0e22

jr_000_0e0e:
    push bc
    ld a, [hl+]
    ldh [$8c], a
    ld a, [hl+]
    ldh [$8d], a
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    call Call_000_0ea4
    pop hl
    inc l
    pop bc
    dec b
    jr nz, jr_000_0e0e

jr_000_0e22:
    ldh a, [$9d]
    cp $a0
    jr nc, jr_000_0e34

    ld h, $cb
    ld b, $e0

jr_000_0e2c:
    ld l, a
    ld [hl], b
    add $04
    cp $a0
    jr c, jr_000_0e2c

jr_000_0e34:
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_0e3b:
    push hl
    inc l
    ld h, [hl]
    ld l, a
    call $c4b7
    jr nc, jr_000_0e98

    ld a, [hl+]
    ldh [$8f], a
    ld a, [hl+]
    ldh [$8e], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    and $c0
    rlca
    rlca
    add $12
    ldh [$97], a
    ld [$2222], a
    set 6, h
    res 7, h
    ld a, [hl+]
    or a
    jr z, jr_000_0e98

    ld c, a
    ldh a, [$9d]
    ld e, a
    ld a, $a0
    sub e
    jr z, jr_000_0e98

    rrca
    rrca
    ld b, a
    ld d, $cb

jr_000_0e6f:
    ldh a, [$8c]
    add [hl]
    inc hl
    cp $a0
    jr nc, jr_000_0e9c

    ld [de], a
    ldh a, [$8d]
    add [hl]
    cp $a8
    jr nc, jr_000_0e9c

    inc e
    ld [de], a
    inc hl
    inc e
    ldh a, [$8e]
    add [hl]
    ld [de], a
    inc hl
    inc e
    ldh a, [$8f]
    xor [hl]
    ld [de], a
    inc hl
    inc e
    dec b
    jr z, jr_000_0e95

    dec c
    jr nz, jr_000_0e6f

jr_000_0e95:
    ld a, e
    ldh [$9d], a

jr_000_0e98:
    pop hl
    ld [hl], $00
    ret


jr_000_0e9c:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_000_0e6f

    jr jr_000_0e95

Call_000_0ea4:
    ld a, $13
    ldh [$97], a
    ld [$2222], a
    ldh a, [$9d]
    ld e, a
    ld a, [hl+]
    ld c, a
    add a
    add a
    add e
    cp $a1
    jr nc, jr_000_0ed1

    ld d, $cb

jr_000_0eb9:
    ldh a, [$8c]
    add [hl]
    ld [de], a
    inc hl
    inc e
    ldh a, [$8d]
    add [hl]
    ld [de], a
    inc hl
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    dec c
    jr nz, jr_000_0eb9

    ld a, e
    ldh [$9d], a

jr_000_0ed1:
    ret


Call_000_0ed2:
    ld a, [$cc50]
    and $20
    ret nz

    ld a, b
    cp $97
    ret nc

    bit 7, e
    jr z, jr_000_0f01

    ld a, [$cc00]
    xor h
    rrca
    ret nc

    push hl
    ldh a, [$9e]
    add $c0
    ld l, a
    ld h, $c4
    ldh a, [$8c]
    ld [hl+], a
    ldh a, [$8d]
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $40
    ld [hl+], a
    ld a, l
    sub $c0
    ldh [$9e], a
    pop hl
    ret


jr_000_0f01:
    ld a, [$cd00]
    cp $08
    ret z

    push hl
    ld a, l
    and $c0
    add $0b
    ld l, a
    ld a, [hl+]
    ld b, a
    add $05
    and $f0
    ld c, a
    inc l
    ld l, [hl]
    ld a, l
    xor b
    ld h, a
    ld a, l
    and $f0
    swap a
    or c
    ld c, a
    ld b, $cf
    ld a, [bc]
    cp $f8
    jr c, jr_000_0f4e

    cp $fd
    jr nc, jr_000_0f4e

    cp $fa
    jr c, jr_000_0f39

    inc e
    ld hl, $c4ba
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_000_0f49

jr_000_0f39:
    bit 2, h
    ld a, [$cc52]
    jr z, jr_000_0f42

    add $24

jr_000_0f42:
    ld c, a
    ld b, $00
    ld hl, $4005
    add hl, bc

jr_000_0f49:
    push de
    call Call_000_0ea4
    pop de

jr_000_0f4e:
    pop hl
    ret


    ldh a, [$aa]
    ld c, a
    ldh a, [$a8]
    ld b, a
    ld a, [hl+]
    sub b
    add $10
    ldh [$8c], a
    ld d, a
    inc l
    ld a, [hl+]
    sub c

jr_000_0f60:
    ldh [$8d], a
    inc l
    ld e, [hl]
    ld a, l
    and $c0
    add $1a
    ld l, a
    ld a, [hl]
    rlca
    ret nc

    rlca
    call c, Call_000_0ed2
    ld a, d
    add e
    ldh [$8c], a
    ld a, l
    and $c0
    add $1c
    ld l, a
    scf
    ret


jr_000_0f7d:
    ldh a, [$aa]
    ld c, a
    ldh a, [$a8]
    ld b, a
    ld a, [hl+]
    sub b
    add $10
    ldh [$8c], a
    ld d, a
    inc l
    ld a, [hl+]
    sub c
    jr jr_000_0f60

    ld d, h
    ld a, l
    and $c0
    ld e, a
    ld a, [de]
    and $03
    cp $03
    jr z, jr_000_0f7d

    ld d, $00
    ld a, [hl+]
    add $10
    ld c, a
    ld a, d
    adc a
    ld b, a
    inc l
    ld a, [hl+]
    ld e, a
    push hl
    ld a, l
    and $c0
    ld l, a
    ldh a, [$8a]
    and [hl]
    jr z, jr_000_0fc0

    ld hl, $ff90
    ld a, [hl+]
    add c
    ld c, a
    ld a, [hl+]
    adc b
    ld b, a
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl+]
    adc d
    ld d, a

jr_000_0fc0:
    ld hl, $ffa8
    ld a, c
    sub [hl]
    ld c, a
    inc l
    ld a, b
    sbc [hl]
    ld b, a
    jr z, jr_000_0fd6

    inc a
    jr nz, jr_000_1016

    ld a, c
    cp $e0
    jr c, jr_000_1016

    jr jr_000_0fdb

jr_000_0fd6:
    ld a, c
    cp $b0
    jr nc, jr_000_1016

jr_000_0fdb:
    ldh [$8c], a
    ld b, a
    inc l
    ld a, e
    sub [hl]
    ld e, a
    inc l
    ld a, d
    sbc [hl]
    ld d, a
    jr z, jr_000_0ff2

    inc a
    jr nz, jr_000_1016

    ld a, e
    cp $e8
    jr c, jr_000_1016

    jr jr_000_0ff7

jr_000_0ff2:
    ld a, e
    cp $b8
    jr nc, jr_000_1016

jr_000_0ff7:
    ldh [$8d], a
    ld d, b
    pop hl
    inc l
    ld e, [hl]
    ld a, l
    and $c0
    add $1a
    ld l, a
    ld a, [hl]
    rlca
    ret nc

    rlca
    call c, Call_000_0ed2
    ld a, d
    add e
    ldh [$8c], a
    ld a, l
    and $c0
    add $1c
    ld l, a
    scf
    ret


jr_000_1016:
    pop hl
    ld a, l
    and $c0
    ld l, a
    bit 1, [hl]
    jr z, jr_000_1024

    or $1a
    ld l, a
    ld [hl], $00

jr_000_1024:
    xor a
    ret


    add b
    rst $38
    nop
    nop
    nop
    nop
    and b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld h, b
    rst $38
    ld d, b
    rst $38
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    or b
    nop
    nop
    nop
    nop
    nop
    db $10
    rst $38

Call_000_1046:
    ld hl, $ff9e
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $d600
    ld b, $0b
    call Call_000_106c
    ld de, $d080
    ld b, $8b
    call Call_000_106c
    ld de, $d0c0
    ld b, $cb
    call Call_000_106c
    ld de, $d040
    ld b, $4b

Call_000_106c:
jr_000_106c:
    call Call_000_1076
    inc d
    ld a, d
    cp $e0
    jr c, jr_000_106c

    ret


Call_000_1076:
    ld a, [de]
    or a
    ret z

    ld a, e
    or $1a
    ld l, a
    ld h, d
    ld a, [hl]
    bit 7, a
    ret z

    and $03
    ld h, a
    add $9f
    ld c, a
    ld a, [c]
    cp $10
    ret nc

    inc a
    ld [c], a
    dec a
    swap h
    add h
    add a
    ld l, a
    ld h, $c5
    ld a, b
    ld [hl+], a
    ld [hl], d
    ret


    ldh a, [$97]
    push af
    ld a, $15
    ldh [$97], a
    ld [$2222], a
    ld a, [$cc49]
    ld hl, $4f6c
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc4c]
    ld b, a

jr_000_10b2:
    ld a, [hl+]
    ld e, a
    inc a
    jr z, jr_000_10c4

    ld a, [hl+]
    cp b
    jr z, jr_000_10bf

    inc hl
    inc hl
    jr jr_000_10b2

jr_000_10bf:
    ld b, [hl]
    inc hl
    ld c, [hl]
    jr jr_000_10c7

jr_000_10c4:
    ld bc, $2800

jr_000_10c7:
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld hl, $c62b
    ld a, [$cc49]
    ld [hl+], a
    ld a, [$cc4c]
    ld [hl+], a
    ld a, [$cc4e]
    ld [hl+], a
    ld a, [$d008]
    ld [hl+], a
    ld a, [$d00b]
    ld [hl+], a
    ld a, [$d00d]
    ld [hl+], a
    ld a, [$cc40]
    ld [hl+], a
    ld a, [$cc41]
    ld [hl+], a
    ld a, [$cc42]
    ld [hl+], a
    ld a, [$cc48]

jr_000_10f8:
    ld [hl+], a
    inc l
    ld a, [$cc43]
    ld [hl+], a
    ld a, [$cc44]
    ld [hl+], a
    ret


    xor a
    ld [$c632], a
    ret


    ld a, [$cc48]
    ld h, a
    ld l, $08
    ld a, [hl]
    ld [$cc3f], a
    ld l, $0b
    ld a, [hl]
    ld [$cc3d], a
    ld l, $0d
    ld a, [hl]
    ld [$cc3e], a
    ret


    push af
    ld hl, $1187
    call Call_000_1ddd
    call c, Call_000_17fa
    pop af
    ld hl, $1152
    call Call_000_1ddd
    ret nc

    bit 7, a
    jp nz, Jump_000_11ba

    bit 6, a
    jp nz, Jump_000_11fc

    and $0f
    ld bc, $00f8
    add c
    ld c, a
    ld a, [$cc49]
    ld hl, $09a8
    rst $10
    ld h, [hl]
    ld a, [$cc4c]
    ld l, a
    ld a, [bc]
    or [hl]
    ld [hl], a
    ret


    ld e, [hl]
    ld de, $1166
    ld l, h
    ld de, $116d
    db $76
    ld de, $1186
    add $07
    pop bc
    rlca
    jp nz, $e307

    rlca
    ld [c], a
    rlca
    rlc a
    push bc
    rlca
    nop
    jr nc, jr_000_116f

jr_000_116f:
    ld sp, $3244
    ld [bc], a
    inc sp
    ld c, h
    nop
    jr nc, jr_000_10f8

    ld sp, $3284
    adc b
    inc sp
    adc h
    jr c, @-$7e

    add hl, sp
    add h
    ld a, [hl-]
    adc b
    dec sp
    adc h
    nop
    sub e
    ld de, $1199
    sbc a
    ld de, $11a0
    xor c
    ld de, $11b9
    add $32
    jp nz, $e332

    ld [hl-], a
    ld [c], a
    ld [hl-], a
    rr [hl]
    push bc
    ld e, $00
    jr nc, jr_000_1206

    ld sp, $3264
    ld h, h
    inc sp
    ld h, h
    nop
    jr nc, @+$34

    ld sp, $3232
    ld [hl-], a
    inc sp
    ld [hl-], a
    jr c, jr_000_1217

    add hl, sp
    ld h, h
    ld a, [hl-]
    ld h, h
    dec sp
    ld h, h
    nop

Jump_000_11ba:
    and $0f
    ld de, $11ec
    call Call_000_0068
    ld a, [$cc55]
    cp $ff
    jr z, jr_000_11e5

    call Call_000_2d65
    call Call_000_11da
    inc de
    ld a, [$cc56]
    ld l, a
    ld a, [de]
    add l
    call Call_000_2d68
    inc de

Call_000_11da:
    ld c, a
    ld a, [$cc59]
    ld b, a
    ld a, [de]
    ld l, a
    ld a, [bc]
    or l
    ld [bc], a
    ret


jr_000_11e5:
    call Call_000_1956
    ld a, [de]
    or [hl]
    ld [hl], a
    ret


    ld bc, $04f8
    nop
    ld [bc], a
    ld bc, $0008
    inc b
    ld [$0001], sp
    ld [$02ff], sp
    nop

Jump_000_11fc:
    and $0f
    ld hl, $11ec
    rst $10
    ld a, [$cc4c]
    ld c, a

jr_000_1206:
    ld b, $c8
    ld a, [bc]
    or [hl]
    ld [bc], a
    inc hl
    ld a, [hl+]
    add c
    ld c, a
    ld a, [bc]
    or [hl]
    ld [bc], a
    ret


    ld a, [$ccb9]
    or a

jr_000_1217:
    jr nz, jr_000_122b

    ld a, [$ccb4]
    cp $f1
    ret nz

    ld a, [$ccb3]
    ld [$ccb9], a
    ld l, a
    ld h, $ce
    ld [hl], $00
    ret


jr_000_122b:
    ld c, a
    ld a, [$ccb3]
    cp c
    ret z

    ld b, $cf
    ld a, [bc]
    call Call_000_155c
    dec b
    ld [bc], a
    xor a
    ld [$ccb9], a
    ret


    ldh a, [$97]
    push af
    ld a, $06
    ldh [$97], a
    ld [$2222], a
    call $4000
    rl c
    pop af
    ldh [$97], a
    ld [$2222], a
    srl c
    ret


    ldh a, [$97]
    push af
    ld a, $06
    ldh [$97], a
    ld [$2222], a
    ld a, $09
    call $42e6
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_126c:
    ld a, [$cd00]
    and $05
    ret z

    ldh a, [$97]
    push af
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $41bf
    call $4289
    call $423b
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $4214
    call $4289
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$ad]
    ld [$cd17], a
    ldh a, [$ac]
    ld [$cd16], a
    ret


    ld a, [$cc48]
    ld [$cd17], a
    ld a, $00
    ld [$cd16], a
    ret


    ldh a, [$97]
    push af
    xor a
    ld [$cd08], a
    ld [$cd09], a
    ld a, $10
    call Call_000_05b6
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $40f5
    call $4289
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    xor a
    ld [$cd08], a
    ld [$cd09], a
    ldh a, [$97]
    push af
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $4027
    call $40f5
    call Call_000_3836
    call Call_000_1569
    call Call_000_3a06
    ld a, $10
    call Call_000_05b6
    ld a, [$cd22]
    ld [$cd29], a
    ld a, [$cd20]
    ld [$cd28], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld a, [$cd2b]
    ld b, a
    ld a, [$cd25]
    cp b
    ret z

    ld [$cd2b], a
    jp Jump_000_3600


    push de
    ld [$cc4c], a
    ld a, b
    ld [$cd02], a
    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld a, $08
    ld [$cd00], a
    ld a, $03
    ld [$cd04], a
    xor a
    ld [$cd05], a
    ld [$cd06], a
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $4956
    call $4964
    call Call_000_328a
    call Call_000_381a
    ld a, [$cc4c]
    ld [$cc4b], a
    call Call_000_3836
    call Call_000_1569
    call Call_000_3a06
    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    pop de
    ret


    ldh [$93], a
    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    ldh a, [$93]
    ld c, a
    call $474f
    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    ret


    ldh [$93], a
    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    ldh a, [$93]
    ld b, a
    call $47ab
    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    ret


    ldh a, [$97]
    push af
    ld a, $02
    ldh [rSVBK], a
    push de
    push bc
    ld de, $da00
    call Call_000_13d7
    pop hl
    ld de, $db00
    call Call_000_13d7
    pop de
    pop af
    ldh [$97], a
    ld [$2222], a
    xor a
    ldh [rSVBK], a
    jp Jump_000_3217


Call_000_13d7:
    ldh a, [$97]
    push af
    ld a, $16
    ldh [$97], a
    ld [$2222], a
    ld b, $30

jr_000_13e3:
    ld c, [hl]
    inc hl
    ld a, [hl]
    sla c
    rla
    rl c
    rla
    rl c
    rla
    and $1f
    ld [de], a
    inc e
    ld a, [hl-]
    rra
    rra
    and $1f
    ld [de], a
    inc e
    ld a, [hl+]
    and $1f
    ld [de], a
    inc e
    inc hl
    dec b
    jr nz, jr_000_13e3

    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_140a:
    ld b, $cf
    ld [bc], a
    call Call_000_155c
    ld b, $ce
    ld [bc], a
    ret


    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld a, b
    ld b, $df
    ld [bc], a
    pop af
    ldh [rSVBK], a
    ret


Call_000_1423:
    ldh a, [$ac]
    or $0b
    ld l, a
    ld h, d
    ld a, [hl+]
    add b
    ld b, a
    inc l
    ld a, [hl+]
    add c
    ld c, a
    jr jr_000_1435

Call_000_1432:
    call Call_000_2048

Call_000_1435:
jr_000_1435:
    ld a, c
    and $f0
    swap a
    ld l, a
    ld a, b
    and $f0
    or l
    ld l, a
    ld h, $cf
    ld a, [hl]
    ret


    ldh [$8b], a
    call Call_000_2054
    ld e, a
    ld h, $cf
    ld a, $f0
    call Call_000_146f
    ld a, $00
    ret z

    ld a, $01
    call Call_000_146f
    ld a, $01
    ret z

    ld a, $10
    call Call_000_146f
    ld a, $02
    ret z

    ld a, $ff
    call Call_000_146f
    ld a, $03
    ret z

    ld a, $ff
    ret


Call_000_146f:
    add e
    ld l, a
    ldh a, [$8b]
    cp [hl]
    ret


    ldh a, [$ac]
    or $0b
    ld l, a
    ld h, d
    ld b, [hl]
    inc l
    inc l
    ld c, [hl]
    ld a, b
    and $f0
    ld l, a
    ld a, c
    swap a
    and $0f
    or l
    ld l, a
    ld h, $ce
    ld a, [hl]
    bit 3, b
    jr nz, jr_000_1493

    rrca
    rrca

jr_000_1493:
    bit 3, c
    jr nz, jr_000_1498

    rrca

jr_000_1498:
    and $01
    ret


Call_000_149b:
    ldh a, [$ac]
    or $0b
    ld l, a
    ld h, d
    ld b, [hl]
    inc l
    inc l
    ld c, [hl]
    ld a, b
    and $f0
    ld l, a
    ld a, c
    swap a
    and $0f
    or l
    ld l, a
    ld h, $ce
    ld a, [hl]
    or a
    ret


    ldh a, [$ac]
    or $0b
    ld l, a
    ld h, d
    ld b, [hl]
    inc l
    inc l
    ld c, [hl]

Call_000_14bf:
    ld a, b
    and $f0
    ld l, a
    ld a, c
    swap a
    and $0f
    or l
    ld l, a
    ld h, $ce
    ld a, [hl]
    cp $10
    jr c, jr_000_1533

    ld hl, $14d6
    jr jr_000_1540

    nop
    jp $c003


    nop
    jp $00c3


    nop
    jp $c003


    ret nz

    pop bc
    rst $38
    nop
    ldh a, [$ac]
    or $0b
    ld l, a
    ld h, d
    ld b, [hl]
    inc l
    inc l
    ld c, [hl]
    ld a, b
    and $f0
    ld l, a
    ld a, c
    swap a
    and $0f
    or l
    ld l, a
    ld h, $ce
    ld a, [hl]
    cp $10
    jr c, jr_000_1533

    ld hl, $1507
    jr jr_000_1540

    rst $38
    jp $c003


    nop
    jp $00c3


    nop
    jp $c003


    pop bc
    pop bc
    rst $38
    rst $38
    ld h, $ce
    ld a, [hl]
    cp $10
    jr c, jr_000_1533

    ld hl, $1523
    jr jr_000_1540

    nop
    rst $38
    inc bc
    ret nz

    jp $c3c3


    nop
    nop
    rst $38
    inc bc
    ret nz

    pop bc
    pop bc
    rst $38
    nop

jr_000_1533:
    bit 3, b
    jr nz, jr_000_1539

    rrca
    rrca

jr_000_1539:
    bit 3, c
    jr nz, jr_000_153e

    rrca

jr_000_153e:
    rrca
    ret


jr_000_1540:
    push de
    and $0f
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    cp $08
    ld a, b
    jr nc, jr_000_154e

    ld a, c

jr_000_154e:
    rrca
    and $07
    ld hl, $00f8
    add l
    ld l, a
    ld a, [hl]
    and e
    pop de
    ret z

    scf
    ret


Call_000_155c:
    ld h, $db
    ld l, a
    ld a, $03
    ldh [rSVBK], a
    ld l, [hl]
    xor a
    ldh [rSVBK], a
    ld a, l
    ret


Call_000_1569:
    ld a, $03
    ldh [rSVBK], a
    ld d, $db
    ld hl, $cf00
    ld b, $b0

jr_000_1574:
    ld a, [hl]
    ld e, a
    ld a, [de]
    dec h
    ld [hl+], a
    inc h
    dec b
    jr nz, jr_000_1574

    call Call_000_1584
    xor a
    ldh [rSVBK], a
    ret


Call_000_1584:
    ld hl, $cef0
    call Call_000_15a4
    ld hl, $ce0f
    call Call_000_15ad
    ld a, [$cc49]
    cp $04
    jr c, jr_000_159b

    ld l, $b0
    jr jr_000_15a4

jr_000_159b:
    ld l, $80
    call Call_000_15a4
    ld l, $0a
    jr jr_000_15ad

Call_000_15a4:
jr_000_15a4:
    ld a, $ff
    ld b, $10

jr_000_15a8:
    ld [hl+], a
    dec b
    jr nz, jr_000_15a8

    ret


Call_000_15ad:
jr_000_15ad:
    ld b, $0b
    ld c, $ff

jr_000_15b1:
    ld [hl], c
    ld a, l
    add $10
    ld l, a
    dec b
    jr nz, jr_000_15b1

    ret


    ld h, $cf
    ld l, $bf

jr_000_15be:
    cp [hl]
    ret z

    dec l
    jr nz, jr_000_15be

    cp [hl]
    ret


    ld c, a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld b, $df
    ld a, [bc]
    ld e, a
    ld a, $03
    ldh [rSVBK], a
    ld l, e
    ld h, $db
    ld b, [hl]
    pop af
    ldh [rSVBK], a
    ld a, b
    cp $10
    jr nc, jr_000_15e7

    or a
    jr z, jr_000_15e7

    scf
    ld a, e
    ret


jr_000_15e7:
    ld a, e
    ret


    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $4404
    ld c, a
    pop af
    ldh [$97], a
    ld [$2222], a
    ld a, c
    jp Jump_000_25cb


    ld a, [$cc17]
    or a
    ret z

Call_000_1606:
    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $4154
    xor a
    ld [$cc17], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $4125
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $41ec
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld e, a
    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $41f5
    pop af
    ldh [$97], a

Call_000_1657:
    ld [$2222], a
    ret


    ld e, a
    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $445b
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld d, b
    ld e, $00
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld l, [hl]
    and $7f
    ld h, a
    push de
    ld a, [$cc06]
    xor $ff
    ld [$cc06], a
    ld de, $dc04
    jr nz, jr_000_168b

    ld de, $de04

jr_000_168b:
    push de
    ld b, $1f
    call Call_000_064e
    pop hl
    pop de
    ld c, $04
    ld a, $01
    ldh [rSVBK], a
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    ld b, $1f
    jp Jump_000_0566


    ld l, a
    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $46fe
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld c, a
    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $4757
    pop af
    ldh [$97], a
    ld [$2222], a
    ld a, c
    cp $ff
    ret


    ld c, a
    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    ld a, c
    call $4795
    pop af
    ldh [$97], a
    ld [$2222], a
    ld a, c
    cp $ff
    ret


Call_000_16eb:
    ld b, a
    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $44c8
    pop af
    ldh [$97], a
    ld [$2222], a
    ld a, b
    or a
    ret


    ld b, a
    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $44a1
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_1717:
    push hl
    ld l, a
    or a
    jr z, jr_000_1732

    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $446d
    pop af
    ldh [$97], a
    ld [$2222], a
    ld a, l
    srl h

jr_000_1732:
    pop hl
    ret


    ld hl, $c6a7
    jr jr_000_173c

    ld hl, $c6a5

jr_000_173c:
    call Call_000_175a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_01d6
    inc a
    jr nz, jr_000_174a

    inc a
    ret


jr_000_174a:
    xor a
    ret


    ld hl, $c6a7
    jr jr_000_1754

    ld hl, $c6a5

jr_000_1754:
    call Call_000_175a
    jp Jump_000_018f


Call_000_175a:
    push hl
    cp $14
    jr c, jr_000_1761

    ld a, $14

jr_000_1761:
    ld hl, $176a
    rst JumpTable
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    ret


    nop
    nop
    ld bc, $0200
    nop
    dec b
    nop
    stop
    jr nz, jr_000_1776

jr_000_1776:
    ld b, b
    nop
    jr nc, jr_000_177a

jr_000_177a:
    ld h, b
    nop
    ld [hl], b
    nop
    dec h
    nop
    ld d, b
    nop
    nop
    ld bc, $0200
    nop
    inc b
    ld d, b
    ld bc, $0300
    nop
    dec b
    nop
    add hl, bc
    add b
    nop
    sbc c
    add hl, bc
    and $07
    ld hl, $c6b5
    rst $10
    jr jr_000_17a4

    ld hl, $c6ad
    jr jr_000_17a4

    ld hl, $c6aa

jr_000_17a4:
    ld a, [hl]
    or a
    ret z

    call Call_000_17b1
    ld a, [hl]
    sub $01
    daa
    ld [hl], a
    or h
    ret


Call_000_17b1:
    push hl
    ld hl, $cbea
    set 1, [hl]
    pop hl
    ret


    ldh a, [$97]
    push af
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    ld b, $01
    ld a, c
    cp $04
    jr z, jr_000_17cc

    ld b, $07

jr_000_17cc:
    ld hl, $47b1
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_041a
    and b
    ld c, a
    ld b, $00
    add hl, bc
    ld c, [hl]
    pop af
    ldh [$97], a
    ld [$2222], a
    ld a, $2d
    ret


    ld e, $20

jr_000_17e7:
    ld a, e
    call Call_000_1717
    jr nc, jr_000_17f3

    ld a, e
    ld c, $99
    call Call_000_16eb

jr_000_17f3:
    inc e
    ld a, e
    cp $25
    jr c, jr_000_17e7

    ret


Call_000_17fa:
    push hl
    ld hl, $c65c
    add [hl]
    ld [hl+], a
    jr nc, jr_000_1809

    inc [hl]
    jr nz, jr_000_1809

    ld a, $ff
    ld [hl-], a
    ld [hl], a

jr_000_1809:
    pop hl
    ret


    ldh a, [$97]
    push af
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $489d
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld hl, $ccfd
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_000_1826:
    xor a
    ld [$cba0], a
    ld [$cbae], a
    ld a, $f0
    jp Jump_000_0877


Call_000_1832:
    ld a, [$cba0]
    or a
    ret z

    pop af
    ret


    ld a, [$cbae]
    set 0, a
    ld [$cbae], a
    ld l, $00
    ld e, $02
    jr jr_000_184f

    ld l, $02
    jr jr_000_184d

    ld l, $00

jr_000_184d:
    ld e, $00

jr_000_184f:
    ld a, [$cbae]
    or l
    ld [$cbae], a
    ld a, b
    add $04
    ld b, a
    ld hl, $cba1
    ld [hl], e
    inc l
    ld [hl], c
    inc l
    ld a, b
    ld [hl+], a
    ld [hl+], a
    ld [hl], $ff
    inc l
    ld [hl], $02
    inc l
    ld [hl], $98
    ld a, $01
    ld [$cba0], a
    ld bc, $1879
    ld a, $f0
    jp Jump_000_087f


    ld a, [$cd00]
    or a
    jr z, jr_000_188d

    and $01
    jr nz, jr_000_188d

    xor a
    ld [$cba0], a
    ld [$cbae], a
    jp Jump_000_08be


jr_000_188d:
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $4b26

jr_000_1897:
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    call $4b4e
    call Call_000_08da
    jr jr_000_1897

    push hl
    push de
    push bc
    call Call_000_01ac
    ld a, [$d0d2]
    ld hl, $18d0
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    pop bc
    ld a, $1c
    ldh [$97], a
    ld [$2222], a
    call Call_000_18d6
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    xor a
    ld [$d0d2], a
    pop de
    pop hl
    ret


    jr nz, jr_000_1919

    nop
    ld b, b
    nop
    ld b, [hl]

Call_000_18d6:
    ld e, $10
    ld a, h
    cp $48
    jr nz, jr_000_18e2

    ld a, l
    cp $60
    jr z, jr_000_190c

jr_000_18e2:
    ld a, [$cba6]
    and $0f
    or a
    jr z, jr_000_1903

    dec a
    jr z, jr_000_190c

    dec a
    jr z, jr_000_1917

    ld e, $20

jr_000_18f2:
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_000_18f2

    ld a, [$cba6]
    and $f0
    swap a
    ld [$cba6], a
    ret


jr_000_1903:
    ld a, [hl+]
    ld [bc], a
    inc c
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_000_1903

    ret


jr_000_190c:
    ld a, $ff
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_000_190c

    ret


jr_000_1917:
    ld a, [hl+]
    ld [bc], a

jr_000_1919:
    inc c
    ld a, $ff
    ld [bc], a
    inc bc
    dec e
    jr nz, jr_000_1917

    ret

GetCharacter::
    push bc
    ld a, [$d0d4]
    ldh [$97], a
    ld [$2222], a
    ld b, [hl]
    ld a, $3f
    ldh [$97], a
    ld [$2222], a
    ld a, b
    pop bc
    ret


    ldh a, [$97]
    push af
    ld a, [$d0f2]
    bit 7, h
    jr z, jr_000_1945

    res 7, h
    set 6, h
    inc a

jr_000_1945:
    ldh [$97], a
    ld [$2222], a
    ld a, [hl+]
    ldh [$8b], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ldh a, [$8b]
    ret


Call_000_1956:
    ld a, [$cc4c]
    push bc
    ld b, a
    ld a, [$cc49]
    call Call_000_1963
    pop bc
    ret


Call_000_1963:
    ld hl, $09a8
    rst $10
    ld h, [hl]
    ld l, b
    ld a, [hl]
    ret


    ld a, [$cc01]
    or a
    ret


    push de
    ld de, $cc63
    ld b, $05
    call Call_000_0462
    pop de
    ret


    ld a, $08
    ld [$cc85], a
    ld a, $01
    ld [$cd00], a
    ret


    push de
    call Call_000_2b57
    call Call_000_2b8a
    xor a
    ld [$ccf1], a
    ld de, $d600

jr_000_1994:
    ld h, d
    ld l, e
    ld b, $40
    call Call_000_044b
    inc d
    ld a, d
    cp $e0
    jr c, jr_000_1994

    pop de
    jp Jump_000_29d3


    push hl
    push bc
    ld hl, $4000
    bit 0, c
    jr nz, jr_000_19b7

    ld hl, $4720
    cp $0e
    jr nc, jr_000_19b7

    ld a, $20

jr_000_19b7:
    call Call_000_01ac
    add hl, bc
    ldh a, [$97]
    push af
    ld a, $1c
    ldh [$97], a
    ld [$2222], a
    ld a, [$cbba]
    ld c, a
    ld b, $10

jr_000_19cb:
    ld a, [hl+]
    xor c
    ld [de], a
    inc de
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_19cb

    pop af
    ldh [$97], a
    ld [$2222], a
    pop bc
    pop hl
    ret


    ld hl, $cbb3
    ld b, $10
    call Call_000_044b

jr_000_19e5:
    ld a, $02
    ldh [$97], a
    ld [$2222], a
    call $40ee
    call Call_000_08da
    jr jr_000_19e5

    ldh a, [$97]
    push af
    ld a, $03
    ldh [$97], a
    ld [$2222], a
    call $4836
    pop af
    ldh [$97], a
    ld [$2222], a
    ld a, b
    or a
    ret


    ld [$cca2], a
    ld a, $01
    ld [$cca3], a
    ld a, $06
    jp Jump_000_1a76


    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld a, $02
    ldh [$97], a
    ld [$2222], a
    call $4f90
    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    ld a, [$cbcb]
    or a
    ret


Call_000_1a37:
    ld hl, $cbea
    ld a, [hl]
    or a
    ret z

    ld [hl], $00
    rrca
    ld a, $02
    jr c, jr_000_1a46

    ld a, $03

jr_000_1a46:
    jp Jump_000_05b6


    ldh a, [$97]
    push af
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld b, $20
    call Call_000_0462
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld h, $00
    jr jr_000_1a80

    ld h, $01
    jr jr_000_1a80

    ld h, $02
    jr jr_000_1a80

    ld h, $03
    jr jr_000_1a80

    ld h, $04
    jr jr_000_1a80

    ld h, $05
    jr jr_000_1a80

Jump_000_1a76:
    ld h, $06
    jr jr_000_1a80

    ld h, $07
    jr jr_000_1a80

    ld h, $08

jr_000_1a80:
    ld l, a
    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld a, $02
    ldh [$97], a
    ld [$2222], a
    call $4ed8
    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    ret


    ldh a, [$97]
    push af
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    ld a, [$cc49]
    and $01
    ld hl, $4d3d
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    rst $10
    ld b, [hl]
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $1c
    ldh [$97], a
    ld [$2222], a
    ld de, $cec0
    ld b, $08
    call Call_000_0462
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld hl, $cbb3
    ld b, $10
    call Call_000_044b
    ld a, $01
    ld [$cbb4], a

jr_000_1ae3:
    ld a, $02
    ldh [$97], a
    ld [$2222], a
    call $72b1
    call Call_000_08da
    jr jr_000_1ae3

    xor a
    ld [de], a
    ld hl, $ccca

jr_000_1af7:
    ld a, [hl+]
    or [hl]
    jr z, jr_000_1b02

    inc l
    ld a, l
    cp $ea
    jr c, jr_000_1af7

    ret


jr_000_1b02:
    ld a, e
    ld [hl-], a
    ld [hl], d
    scf
    ret


Call_000_1b07:
Jump_000_1b07:
    push de
    ld a, e
    and $c0
    ld e, a
    ld hl, $ccca

jr_000_1b0f:
    ld a, [hl+]
    cp d
    jr nz, jr_000_1b1b

    ld a, [hl]
    and $c0
    sub e
    jr nz, jr_000_1b1b

    ld [hl-], a
    ld [hl+], a

jr_000_1b1b:
    inc l
    ld a, l
    cp $ea
    jr c, jr_000_1b0f

    pop de
    ret


    ld a, [$cc46]
    and $01
    ret z

    ld a, [$ccea]
    or a
    jr nz, jr_000_1b34

    ld a, [$cc75]
    or a
    ret nz

jr_000_1b34:
    push de
    ld e, $08
    ld a, [de]
    ld hl, $1b99
    rst JumpTable
    ld e, $0b
    ld a, [de]
    add [hl]
    ldh [$8d], a
    inc hl
    ld e, $0d
    ld a, [de]
    add [hl]
    ldh [$8c], a
    ld de, $ccca

jr_000_1b4c:
    ld a, [de]
    ld h, a
    inc e
    ld a, [de]
    ld l, a
    or h
    jr z, jr_000_1b65

    push hl
    ldh a, [$8d]
    ld b, a
    ldh a, [$8c]
    ld c, a
    call Call_000_1baa
    pop hl
    jr nc, jr_000_1b65

    bit 0, [hl]
    jr z, jr_000_1b6d

jr_000_1b65:
    inc e
    ld a, e
    cp $ea
    jr c, jr_000_1b4c

    pop de
    ret


jr_000_1b6d:
    set 0, [hl]
    ld hl, $d02b
    ld a, [hl]
    or a
    ld a, $fc
    jr z, jr_000_1b86

    bit 7, [hl]
    jr nz, jr_000_1b83

    ld a, $04
    cp [hl]
    jr c, jr_000_1b87

    jr jr_000_1b86

jr_000_1b83:
    cp [hl]
    jr nc, jr_000_1b87

jr_000_1b86:
    ld [hl], a

jr_000_1b87:
    ld a, $08
    ld [$cc71], a
    ld a, $80
    ld [$cc81], a
    ld hl, $cc7b
    set 7, [hl]
    scf
    pop de
    ret


    or $00
    nop
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    or $62
    ldh a, [$ac]
    ld l, a
    jr jr_000_1baa

    ld h, d
    ld l, $40

Call_000_1baa:
jr_000_1baa:
    ld a, l
    and $c0
    add $0b
    ld l, a
    ld a, [hl+]
    sub b
    jr nc, jr_000_1bb6

    cpl
    inc a

jr_000_1bb6:
    ld b, a
    inc l
    ld a, [hl]
    sub c
    jr nc, jr_000_1bbe

    cpl
    inc a

jr_000_1bbe:
    ld c, a
    ld a, l
    add $19
    ld l, a
    ld a, b
    sub [hl]
    ret nc

    inc l
    ld a, c
    sub [hl]
    ret


Jump_000_1bca:
jr_000_1bca:
    ld a, b
    ldh [$8d], a
    ld a, c
    ldh [$8c], a
    ld a, [de]
    add [hl]
    ld b, a
    ldh a, [$8f]
    ld c, a
    ldh a, [$8d]
    sub c
    add b
    sla b
    cp b
    ret nc

    inc e
    inc hl
    ld a, [de]
    add [hl]
    ld b, a
    ldh a, [$8e]
    ld c, a
    ldh a, [$8c]
    sub c
    add b
    sla b
    cp b
    ret


    ld a, [$cc75]
    and $be
    ret nz

jr_000_1bf4:
    ld a, [$cc34]
    or a
    ret nz

    jr jr_000_1c07

    ld a, [$cc77]
    or a
    ret nz

    ld a, [$d00f]
    or a
    ret nz

    jr jr_000_1bf4

jr_000_1c07:
    ldh a, [$ac]
    add $0f
    ld l, a
    ld h, d

Call_000_1c0d:
    ld a, [$cc48]
    ld b, a
    ld c, $0f
    ld a, [bc]
    sub [hl]
    add $07
    cp $0e
    ret nc

    dec l
    dec l

jr_000_1c1c:
    ld a, [hl-]
    ldh [$8e], a
    dec l
    ld a, [hl]
    ldh [$8f], a
    ld a, l
    add $1b
    ld e, a
    ld a, [$cc48]
    ld h, a
    ld l, $0b
    ld b, [hl]
    ld l, $0d
    ld c, [hl]
    ld l, $26
    jr jr_000_1bca

    ldh a, [$ac]
    add $0d
    ld l, a
    ld h, d
    jr jr_000_1c1c

    push de
    ld d, h
    ld a, l
    and $c0
    add $0f
    ld l, a
    call Call_000_1c0d
    pop de
    ret


    ld a, [$dc00]
    or a
    ret nz

    push de
    push hl
    call Call_000_1c99
    pop hl
    ld a, l
    and $c0
    call $1cbe
    pop de
    ret


    ld a, [$dc00]
    or a
    ret nz

    push de
    call Call_000_1c99
    ld hl, $cc8e

jr_000_1c69:
    inc l
    bit 7, [hl]
    jr z, jr_000_1c78

    push hl
    dec l
    ld a, [hl+]
    ld h, [hl]
    call $1cbe
    jr c, jr_000_1c81

    pop hl

jr_000_1c78:
    inc l
    ld a, l
    cp $9e
    jr c, jr_000_1c69

    pop de
    xor a
    ret


jr_000_1c81:
    pop af
    ld e, $19
    ld a, h
    ld [de], a
    dec e
    ld a, l
    and $c0
    ld [de], a
    ld l, a
    set 1, [hl]
    add $04
    ld l, a
    ld [hl], $02
    inc l
    ld [hl], $00
    pop de
    scf
    ret


Call_000_1c99:
    ld a, [$d008]
    ld hl, $1cb6
    rst JumpTable
    ld de, $d00b
    ld a, [de]
    add [hl]
    ldh [$8f], a
    inc hl
    ld e, $0d
    ld a, [de]
    add [hl]
    ldh [$8e], a
    ld e, $0f
    ld a, [de]
    sub $03
    ldh [$91], a
    ret


    ld a, [$0000]
    dec b
    dec b
    nop
    nop
    ld a, [$2ac6]
    ld l, a
    bit 7, [hl]
    ret nz

    sub $1b
    ld l, a
    ldh a, [$91]
    sub [hl]
    add $07
    cp $0e
    ret nc

    dec l
    dec l
    ld a, [hl-]
    dec l
    ld b, [hl]
    ld c, a
    ld a, l
    add $1b
    ld l, a
    ld e, $26
    jp Jump_000_1bca


    ld a, [$d001]
    or a
    jr z, jr_000_1ce6

    xor a
    ret


jr_000_1ce6:
    ld hl, $d02a
    ld a, [hl+]
    or [hl]
    ld l, $2d
    or [hl]
    jr nz, jr_000_1d16

    ld a, [$d024]
    rlca
    jr nc, jr_000_1d16

    ld a, [$cc34]
    or a
    jr nz, jr_000_1d16

    ld a, [$cbca]
    or a
    jr nz, jr_000_1d16

    ld a, [$cc02]
    or a
    jr nz, jr_000_1d16

    ld a, [$ccaf]
    rlca
    jr c, jr_000_1d16

    ld a, [$cc77]
    rlca
    jr c, jr_000_1d16

    scf
    ret


jr_000_1d16:
    xor a
    ret


Call_000_1d18:
    ld a, l
    and $c0
    ld l, a
    push hl
    ld h, d
    ldh a, [$ac]
    add $0b
    ld l, a
    ld a, [hl+]
    ldh [$8f], a
    inc l
    ld a, [hl]
    ldh [$8e], a
    ld a, l
    add $19
    ld e, a
    pop hl
    ld a, l
    add $0b
    ld l, a
    ld b, [hl]
    inc l
    inc l
    ld c, [hl]
    add $1b
    ld l, a
    jp Jump_000_1bca


Call_000_1d3d:
    ld a, l
    and $c0
    ldh [$8b], a
    call Call_000_1d18
    ret nc

    call Call_000_1d69
    jr nc, jr_000_1d52

    ld b, $0b
    ldh a, [$8d]
    ld c, a
    jr jr_000_1d59

jr_000_1d52:
    ld b, $0d
    ldh a, [$8c]
    ld c, a
    jr jr_000_1d59

jr_000_1d59:
    call Call_000_1d9c
    ld a, [de]
    sub [hl]
    ld a, c
    jr c, jr_000_1d63

    cpl
    inc a

jr_000_1d63:
    ld b, a
    ld a, [de]
    add b
    ld [hl], a
    scf
    ret


Call_000_1d69:
    ld b, $0b
    call Call_000_1d9c
    ld a, [de]
    sub [hl]
    jr nc, jr_000_1d74

    cpl
    inc a

jr_000_1d74:
    ld c, a
    ld b, $26
    call Call_000_1d9c
    ld a, [de]
    add [hl]
    ldh [$8d], a
    sub c
    ldh [$8f], a
    ld b, $0d
    call Call_000_1d9c
    ld a, [de]
    sub [hl]
    jr nc, jr_000_1d8c

    cpl
    inc a

jr_000_1d8c:
    ld c, a
    ld b, $27
    call Call_000_1d9c
    ld a, [de]
    add [hl]
    ldh [$8c], a
    sub c
    ld b, a
    ldh a, [$8f]
    cp b
    ret


Call_000_1d9c:
    ldh a, [$ac]
    or b
    ld e, a
    ldh a, [$8b]
    or b
    ld l, a
    ret


    call Call_000_1832
    ldh a, [$97]
    push af
    ld a, $07
    ldh [$97], a
    ld [$2222], a
    call $41b9
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld e, a
    ld a, [$cc49]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_1dc4:
    ld a, [hl+]
    or a
    ret z

    cp e
    ld a, [hl+]
    jr nz, jr_000_1dc4

    scf
    ret


    ld e, a
    ld a, [$cc49]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_1dd5:
    ld a, [hl+]
    or a
    ret z

    cp e
    jr nz, jr_000_1dd5

    scf
    ret


Call_000_1ddd:
Jump_000_1ddd:
    ld e, a
    ld a, [$cc4f]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_000_1dc4

    ld e, a
    ld a, [$cc4f]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_000_1dd5

    ldh a, [$ac]
    add $1a
    ld e, a
    ld a, $c0
    ld [de], a
    ret


    ldh a, [$ac]
    add $1a
    ld e, a
    ld a, $c1
    ld [de], a
    ret


    ldh a, [$ac]
    add $1a
    ld e, a
    ld a, $c2
    ld [de], a
    ret


    ldh a, [$ac]
    add $1a
    ld e, a
    ld a, $c3
    ld [de], a
    ret


    ldh a, [$ac]
    add $1a
    ld e, a
    ld a, $80
    ld [de], a
    ret


    ldh a, [$ac]
    add $1a
    ld e, a
    ld a, $81
    ld [de], a
    ret


    ldh a, [$ac]
    add $1a
    ld e, a
    ld a, $82
    ld [de], a
    ret


    ldh a, [$ac]
    add $1a
    ld e, a
    ld a, $83
    ld [de], a
    ret


    ldh a, [$ac]
    add $1a
    ld l, a
    ld h, d
    res 7, [hl]
    ret


    ldh a, [$ac]
    add $1a
    ld l, a
    ld h, d
    set 7, [hl]
    ret


    ldh a, [$ac]
    ld l, a
    ld h, d
    set 1, [hl]
    ret


Call_000_1e52:
    ldh a, [$ae]
    ld b, a
    ldh a, [$af]
    ld c, a
    jr jr_000_1e62

    ld a, [$d00b]
    ld b, a
    ld a, [$d00d]
    ld c, a

jr_000_1e62:
    ldh a, [$ac]
    or $0b
    ld e, a
    ld a, [de]
    ldh [$8f], a
    inc e
    inc e
    ld a, [de]
    ldh [$8e], a
    ld e, $08
    ld a, b
    add e
    ld b, a
    ld a, c
    add e
    ld c, a
    ld e, $00
    ldh a, [$8f]
    add $08
    sub b
    jr nc, jr_000_1e84

    cpl
    inc a
    ld e, $04

jr_000_1e84:
    ld h, a
    ldh a, [$8e]
    add $08
    sub c
    jr nc, jr_000_1e90

    cpl
    inc a
    inc e
    inc e

jr_000_1e90:
    cp h
    jr nc, jr_000_1e97

    inc e
    ld l, a
    ld a, h
    ld h, l

jr_000_1e97:
    ld c, e
    ld b, $00
    srl a
    srl a
    srl a
    add a
    ld l, a
    cp h
    jr nc, jr_000_1eb5

    inc b
    add l
    cp h
    jr nc, jr_000_1eb5

    inc b
    add l
    cp h
    jr nc, jr_000_1eb5

    inc b
    add l
    cp h
    jr nc, jr_000_1eb5

    inc b

jr_000_1eb5:
    ld a, c
    add a
    add a
    add a
    add b
    ld c, a
    ld b, $00
    ld hl, $1ec3
    add hl, bc
    ld a, [hl]
    ret


    jr @+$1b

    ld a, [de]
    dec de
    inc e
    nop
    nop
    nop
    nop
    rra
    ld e, $1d
    inc e
    nop
    nop
    nop
    ld [$0607], sp
    dec b
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    nop
    nop
    nop
    jr jr_000_1efc

    ld d, $15
    inc d
    nop
    nop
    nop
    db $10
    ld de, $1312
    inc d
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    db $10

jr_000_1efc:
    rrca
    ld c, $0d
    inc c
    nop
    nop
    nop
    ld c, a

Call_000_1f04:
    ldh a, [$ac]
    add $0e
    ld e, a
    add $06
    ld l, a
    ld h, d
    call Call_000_2362
    bit 7, a
    jr z, jr_000_1f1e

    dec l
    ld a, c
    add [hl]
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    or d
    ret


jr_000_1f1e:
    xor a
    ld [de], a
    dec e
    ld [de], a
    xor a
    ret


    ld b, $06
    ldh [$8b], a
    ldh a, [$ac]
    add $15
    ld l, a
    ld h, d
    bit 7, [hl]
    jr nz, jr_000_1f49

    add $f6
    ld l, a
    ld a, [hl+]
    add b
    ld b, a
    inc l
    ld a, [hl]
    sub $04
    ld c, a
    call Call_000_14bf
    ret c

    ld a, c
    add $07
    ld c, a
    call Call_000_14bf
    ret c

jr_000_1f49:
    ldh a, [$ac]
    add $0a
    ld e, a
    add $0a
    ld l, a
    ld h, d
    call Call_000_2362
    dec l
    ldh a, [$8b]
    add [hl]
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    or d
    ret


Call_000_1f60:
    ldh a, [$ac]
    add $0b
    ld l, a
    ld h, d
    ld e, $04
    ld a, [$d00b]
    sub [hl]
    jr nc, jr_000_1f72

    cpl
    inc a
    ld e, $00

jr_000_1f72:
    ld b, a
    ld a, c
    sub b
    ccf
    ret nc

    ld c, a
    inc l
    inc l
    set 5, e
    ld a, [$d00d]
    sub [hl]
    jr nc, jr_000_1f86

    cpl
    inc a
    set 6, e

jr_000_1f86:
    cp c
    ret nc

    cp b
    jr c, jr_000_1f8d

    swap e

jr_000_1f8d:
    ld a, e
    and $06
    scf
    ret


    ld c, a
    ldh a, [$ac]
    add $09
    ld e, a
    ld a, [de]
    ld b, a
    sub c
    jr z, jr_000_1fa7

    and $1f
    cp $10
    jr nc, jr_000_1fa6

    dec b
    jr jr_000_1fa7

jr_000_1fa6:
    inc b

jr_000_1fa7:
    ld a, b
    and $1f
    ld [de], a
    ret


Jump_000_1fac:
    ld c, b
    sla c
    inc c
    ld h, d
    ldh a, [$ac]
    add $0b
    ld l, a
    ld a, [$d00b]
    sub [hl]
    add b
    cp c
    ret c

    inc l
    inc l
    ld a, [$d00d]
    sub [hl]
    add b
    cp c
    ret


    ldh a, [$ac]
    add $0a
    ld l, a
    add $06
    ld e, a
    ld h, d
    call Call_000_1fd3
    inc e

Call_000_1fd3:
    ld a, [de]
    add [hl]
    ld [hl+], a
    inc e
    ld a, [de]
    adc [hl]
    ld [hl+], a
    ret


Call_000_1fdb:
    ld h, d
    ldh a, [$ac]
    add $09
    ld e, a
    ld l, a
    ld c, [hl]
    add $07
    ld l, a
    ld b, [hl]
    call Call_000_1fff
    ret z

    inc e
    ld a, [de]
    add [hl]
    ld [de], a
    inc e
    inc l
    ld a, [de]
    adc [hl]
    ld [de], a
    inc e
    inc l
    ld a, [de]
    add [hl]
    ld [de], a
    inc e
    inc l
    ld a, [de]
    adc [hl]
    ld [de], a
    ret


Call_000_1fff:
    bit 7, c
    jr nz, jr_000_203f

    swap b
    jr z, jr_000_203f

    ld a, b
    ld hl, $404b
    sla c
    ld b, $00
    add hl, bc
    ld b, a
    and $f0
    ld c, a
    ld a, b
    and $0f
    ld b, a
    add hl, bc
    ldh a, [$97]
    push af
    ld a, $03
    ldh [$97], a
    ld [$2222], a
    ld bc, $cec0
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, $0e
    rst $10
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl+]
    ld [bc], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ld hl, $cec0
    or h
    ret


jr_000_203f:
    ld hl, $cec3
    xor a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl], a
    ret


Call_000_2048:
    ldh a, [$ac]
    add $0b
    ld e, a
    ld a, [de]
    ld b, a
    inc e
    inc e
    ld a, [de]
    ld c, a
    ret


Call_000_2054:
    ldh a, [$ac]
    add $0b
    ld e, a
    ld a, [de]

jr_000_205a:
    and $f0
    ld b, a
    inc e
    inc e
    ld a, [de]
    swap a
    and $0f
    or b
    ret


    ld b, a
    ldh a, [$ac]
    add $0b
    ld e, a
    ld a, [de]
    add b
    jr jr_000_205a

    call Call_000_149b
    ld [hl], $0f
    ret


    ld c, a

Jump_000_2077:
jr_000_2077:
    push bc
    call Call_000_208a
    ld [hl], b
    inc l
    inc l
    ld [hl], c
    pop bc
    ret


    ld h, d
    ldh a, [$ac]
    add $0b
    ld l, a
    jr jr_000_2077

    ld c, a

Call_000_208a:
    ld a, c
    and $f0
    or $08
    ld b, a
    ld a, c
    swap a
    and $f0
    or $08
    ld c, a
    ret


    ldh a, [$ac]
    add $0a
    ld l, a
    ld h, d
    xor a
    ld [hl+], a
    ld a, [hl]
    and $f0
    or $08
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, [hl]
    and $f0
    or $08
    ld [hl], a
    ret


    ld hl, $d0c0
    jr jr_000_20b8

    ld hl, $d080

jr_000_20b8:
    call Call_000_20c2
    jr c, jr_000_20b8

    ret nz

    dec b
    jr nz, jr_000_20b8

    ret


Call_000_20c2:
    ld a, [hl]
    inc h
    or a
    ret z

    ld a, h
    cp $e0
    ret c

    or h
    ret


    push bc
    ld h, d
    ld l, e
    ld c, [hl]
    ld b, $28
    call Call_000_20e8
    pop bc
    ldh a, [$ac]
    add $0b
    ld e, a
    ld a, [$cec1]
    add b
    ld [de], a
    inc e
    inc e
    ld a, [$cec3]
    add c
    ld [de], a
    ret


Call_000_20e8:
    ldh [$8b], a
    call Call_000_1fff
    call Call_000_20f1
    inc l

Call_000_20f1:
    push hl
    ld a, [hl+]
    ld c, a
    ld b, [hl]
    ld e, $08
    ld hl, $0000
    ldh a, [$8b]

jr_000_20fc:
    add hl, hl
    rlca
    jr nc, jr_000_2101

    add hl, bc

jr_000_2101:
    dec e
    jr nz, jr_000_20fc

    ld a, l
    ld b, h
    pop hl
    ld [hl+], a
    ld [hl], b
    ret


    call Call_000_20e8
    ldh a, [$ac]
    or $13
    ld e, a
    ld a, [hl-]
    ld [de], a
    dec e
    ld a, [hl-]
    ld [de], a
    dec e
    ld a, [hl-]
    ld [de], a
    dec e
    ld a, [hl]
    ld [de], a
    ret


    ld l, $16
    jr jr_000_2124

    ld l, $18

jr_000_2124:
    ld h, a
    ldh a, [$ac]
    add l
    ld e, a
    ld a, [de]
    add h
    ld l, a
    inc e
    ld a, [de]
    ld h, a
    ret


    ldh a, [$ac]
    add $0b
    ld e, a
    ld a, [de]
    ld b, a
    ldh a, [$a8]
    sub b
    sub $08
    cp $80
    ret nc

    ld a, $80
    ret


    ldh a, [$a8]
    ld b, a
    ldh a, [$aa]
    ld c, a
    ldh a, [$ac]
    add $0b
    ld e, a
    ld a, [de]
    sub b
    add $07
    cp $8f
    ret nc

    inc e
    inc e
    ld a, [de]
    sub c
    add $07
    cp $af
    ret


    ldh a, [$ac]
    add $0b
    ld e, a
    ld hl, $cca0
    ld a, [de]
    cp [hl]
    ret nc

    inc e
    inc e
    inc l
    ld a, [de]
    cp [hl]
    ret


    ld h, d
    push bc
    ldh a, [$ac]
    ld l, a
    ld b, [hl]
    add $0b
    ld l, a
    ld c, [hl]
    push bc
    inc l
    inc l
    ld b, [hl]
    inc l
    inc l
    ld c, [hl]
    push bc
    call Call_000_219e
    pop bc
    ld h, d
    ldh a, [$ac]
    add $0f
    ld l, a
    ld [hl], c
    dec l
    dec l
    ld [hl], b
    pop bc
    dec l
    dec l
    ld [hl], c
    ldh a, [$ac]
    ld l, a
    ld a, b
    and $03
    ld [hl+], a
    pop bc
    ld [hl], b
    inc l
    ld [hl], c
    ret


Call_000_219e:
    ldh a, [$ac]
    ld e, a
    ld a, e
    and $c0
    ld e, a
    ld l, a
    ld h, d
    ld b, $10
    xor a

jr_000_21aa:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_000_21aa

    jp Jump_000_1b07


    ld a, [$cc48]
    ld d, a
    ldh [$ad], a
    xor a
    ldh [$ac], a
    ld e, $01
    ld a, [de]
    sub $0c
    ret z

    push bc
    push hl
    call Call_000_21d4

Call_000_21c8:
    pop hl
    pop bc
    ret


Call_000_21cb:
    ldh a, [$ac]
    add $0f
    ld e, a
    ld a, [de]
    and $80
    ret nz

Call_000_21d4:
    ld bc, $0500
    call Call_000_1423
    ld hl, $23c3
    jp Jump_000_1ddd


    call Call_000_21cb
    ret nc

    rrca
    jr c, jr_000_21f3

    rrca
    jr c, jr_000_21ee

    ld b, $04
    jr jr_000_21f5

jr_000_21ee:
    call Call_000_24bd
    jr jr_000_21f8

jr_000_21f3:
    ld b, $03

jr_000_21f5:
    call Call_000_24af

jr_000_21f8:
    call Call_000_219e
    scf
    ret


Call_000_21fd:
    ldh a, [$ac]
    add $0b
    ld e, a

Call_000_2202:
    ld a, l
    and $c0
    add $0b
    ld l, a
    ld a, [de]
    ld [hl+], a
    inc e
    inc e
    inc l
    ld a, [de]
    ld [hl+], a
    inc e
    inc e
    inc l
    ld a, [de]
    ld [hl+], a
    ret


Jump_000_2215:
    ldh a, [$ac]
    add $0b
    ld e, a
    ld a, l
    and $c0
    add $0b
    ld l, a
    ld a, [de]
    add b
    ld [hl+], a
    inc e
    inc e
    inc l
    ld a, [de]
    add c
    ld [hl+], a
    inc e
    inc e
    inc l
    ld a, [de]
    ld [hl+], a
    ret


    ld bc, $0000
    ldh a, [$ac]
    add $0b
    ld e, a
    ld a, l
    and $c0
    add $0b
    ld l, a
    ld a, [hl+]
    add b
    ld [de], a
    inc e
    inc e
    inc l
    ld a, [hl+]
    add c
    ld [de], a
    inc e
    inc e
    inc l
    ld a, [hl]
    ld [de], a
    ret


    push bc
    call Call_000_3a52
    pop bc
    ld a, $b3
    call Call_000_0c74
    call Call_000_3ac6
    ret nz

    ld [hl], $0f
    inc l
    ld [hl], $80
    ld l, $4b
    jp Jump_000_2077


    call Call_000_1432
    sub $fa
    cp $04
    ret


    call Call_000_1435
    sub $fa
    cp $04
    ret


    ld h, $d6

jr_000_2276:
    ld l, $01
    ld a, [hl]
    cp c
    ret z

    inc h
    ld a, h
    cp $e0
    jr c, jr_000_2276

    or h
    ret


    ldh a, [$ad]
    and $f0
    ld h, a
    ldh a, [$ac]
    inc a
    ld l, a

jr_000_228c:
    ld a, [hl]
    cp c
    ret z

    inc h
    ld a, h
    cp $e0
    jr c, jr_000_228c

    or h
    ret


    ld c, $80
    jr jr_000_229d

Jump_000_229b:
    ld c, $c0

jr_000_229d:
    call Call_000_22a9
    ldh a, [$ac]
    add $1a
    ld e, a
    ld a, c
    or b
    ld [de], a
    ret


Call_000_22a9:
    ldh a, [$ac]
    add $0f
    ld e, a
    ld a, [de]
    dec a
    ld b, $03
    cp $10
    ret c

    dec b
    ld a, e
    add $fc
    ld e, a
    ld a, [de]
    ld e, a
    ld a, [$cc48]
    ld h, a
    ld l, $0b
    ld a, [hl]
    add $0b
    cp e
    ret nc

    dec b
    ret


    ld a, [$cc48]
    ld h, a
    ld l, $00
    call Call_000_1d18
    ret nc

    call Call_000_1e52
    ld c, a
    ld b, $28
    ldh a, [$97]
    push af
    ld a, $05
    ldh [$97], a
    ld [$2222], a
    push de
    ld a, [$cc48]
    ld d, a
    ld e, $00
    call $5c90
    pop de
    pop af
    ldh [$97], a
    ld [$2222], a
    scf
    ret


    call Call_000_3a25
    ld h, d
    ldh a, [$ac]
    add $1b
    ld l, a
    ld a, $0e
    ld [hl+], a
    ld [hl+], a
    ld [hl], c
    ld a, b
    and $07
    swap a
    rrca
    ld bc, $de80
    call Call_000_006d
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    ld hl, $def0
    ld e, $08

jr_000_231c:
    ld a, [bc]
    ld [hl+], a
    inc c
    dec e
    jr nz, jr_000_231c

    ld hl, $ffa5
    set 6, [hl]
    pop af
    ldh [rSVBK], a
    ret


Call_000_232b:
    call Call_000_1f04
    ret nz

    ld h, d
    ldh a, [$ac]
    or $14
    ld l, a
    ld a, [hl+]
    cpl
    ld c, a
    ld a, [hl]
    cpl
    ld b, a
    inc bc
    sra b
    rr c
    ld hl, $ff80
    call Call_000_01d6
    inc a
    scf
    ret z

    ldh a, [$ac]
    or $14
    ld e, a
    ld a, c
    ld [de], a
    inc e
    ld a, b
    ld [de], a
    or c
    scf
    ret z

    xor a
    ret


    ldh a, [$ac]
    add $14
    ld l, a
    ld h, d
    ld [hl], c
    inc l
    ld [hl], b
    ret


Call_000_2362:
    ld a, [de]
    add [hl]
    ld [de], a
    inc e
    inc hl
    ld a, [de]
    adc [hl]
    ld [de], a
    ret


Call_000_236b:
    push hl
    ld hl, $c6c5
    cp [hl]
    pop hl
    ret


    push hl
    ld hl, $c6c5
    set 6, [hl]
    pop hl
    ret


    push hl
    ld hl, $c6c5
    ld a, [hl]
    cp $ff
    jr z, jr_000_2385

    res 6, [hl]

jr_000_2385:
    pop hl
    ret


    ld h, d
    ld l, $46
    dec [hl]
    ret


    ld h, d
    ld l, $47
    dec [hl]
    ret


    ld h, d
    ld l, $06
    dec [hl]
    ret


    ld h, d
    ld l, $07
    dec [hl]
    ret


    ld h, d
    ld l, $44
    inc [hl]
    ret


    ld h, d
    ld l, $45
    inc [hl]
    ret


    ld h, d
    ld l, $04
    inc [hl]
    ret


Call_000_23aa:
    ld h, d
    ld l, $05
    inc [hl]
    ret


    ld h, d
    ld l, $44
    cp [hl]
    ret


    ld h, d
    ld l, $45
    cp [hl]
    ret


    ld e, $44
    ld a, [de]
    or a
    ret


    ld e, $45
    ld a, [de]
    or a
    ret


    rst $08
    inc hl
    ld [$1823], a
    inc h
    add hl, de
    inc h
    add hl, de
    inc h
    ld a, [hl-]
    inc h
    di
    ld [bc], a
    db $fd
    ld bc, $01fe
    rst $38
    ld bc, $01d1
    jp nc, $d301

    ld bc, $01d4
    ld a, e
    inc b
    ld a, h
    inc b
    ld a, l
    inc b
    ld a, [hl]
    inc b
    ld a, a
    inc b
    nop
    di
    ld [bc], a
    db $f4
    ld [bc], a
    ld a, e
    inc b
    ld a, h
    inc b
    ld a, l
    inc b
    ld a, [hl]
    inc b
    ld a, a
    inc b
    ret nz

    inc b
    pop bc
    inc b
    jp nz, $c304

    inc b
    call nz, $c504
    inc b
    add $04
    rst $00
    inc b
    ret z

    inc b
    ret


    inc b
    jp z, $cb04

    inc b
    call z, $cd04
    inc b
    adc $04
    rst $08
    inc b
    nop
    di
    ld [bc], a
    db $f4
    ld [bc], a
    push af
    ld [bc], a
    or $02
    rst $30
    ld [bc], a
    ld c, b
    ld [bc], a
    ld c, c
    ld [bc], a
    ld c, d
    ld [bc], a
    ld c, e
    ld [bc], a
    ret nc

    ld b, d
    ld h, c
    inc b
    ld h, d
    inc b
    ld h, e
    inc b
    ld h, h
    inc b
    ld h, l
    inc b
    db $fd
    ld bc, $0c00
    inc b
    dec c
    inc b
    ld c, $04
    ld a, [de]
    ld bc, $011b
    inc e
    ld bc, $011d
    ld e, $01
    rra
    ld bc, $8000
    add b
    ld bc, $0202
    ld [bc], a
    inc bc
    inc h
    inc h
    inc h
    dec b
    ld b, $06
    ld b, $07
    ld c, b
    ld c, b
    ld c, b
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc e
    inc e
    inc e
    dec c
    ld c, $0e
    ld c, $0f
    add b
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    rlca
    nop
    nop
    push bc
    ld b, a
    ld c, a
    call Call_000_2495
    pop bc
    ret


Call_000_2495:
    ldh a, [$ac]
    add $26
    ld l, a
    ld h, d
    ld [hl], b
    inc l
    ld [hl], c
    ret


Jump_000_249f:
    ld hl, $cc30
    ld a, [hl]
    or a
    ret z

    dec [hl]
    ret


    ld hl, $cd18
    ld [hl+], a
    ld [hl], a
    ret


    ld b, $05

Call_000_24af:
Jump_000_24af:
    ld c, $00
    call Call_000_3ac6
    ret nz

    ld [hl], b
    inc l
    ld [hl], c
    call Call_000_21fd
    xor a
    ret


Call_000_24bd:
    call Call_000_3ac6
    ret nz

    ld [hl], $0f
    ld l, $46
    ldh a, [$ac]
    ld [hl+], a
    add $01
    ld e, a
    ld a, [de]
    ld [hl], a
    call Call_000_21fd
    xor a
    ret


Call_000_24d2:
    ldh a, [$97]
    push af
    ld a, $0b
    ldh [$97], a
    ld [$2222], a

jr_000_24dc:
    ld a, [hl]
    or a
    jr z, jr_000_24ed

    call $4000
    jr c, jr_000_24dc

    pop af
    ldh [$97], a
    ld [$2222], a
    xor a
    ret


jr_000_24ed:
    pop af
    ldh [$97], a
    ld [$2222], a
    scf
    ret


    ld e, $73
    ld [de], a
    ld e, $70
    set 7, a
    ld [de], a
    ret


    ld e, $58
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld h, d
    ld l, $46
    xor a
    ld [hl+], a
    ld [hl+], a
    ret


    ld a, [$cc34]
    or a
    ret nz

    ld a, [$cba0]
    add a
    jr c, jr_000_2518

    ret nz

jr_000_2518:
    ld h, d
    ld l, $46
    ld a, [hl]
    or a
    jr z, jr_000_2521

    dec [hl]
    ret nz

jr_000_2521:
    ld l, $47
    ld a, [hl]
    or a
    jr z, jr_000_252d

    dec [hl]
    call nz, Call_000_1fdb
    xor a
    ret


jr_000_252d:
    ld h, d
    ld l, $58
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_24d2
    jr c, jr_000_253d

    call Call_000_2542
    xor a
    ret


jr_000_253d:
    call Call_000_2542
    scf
    ret


Call_000_2542:
    ld e, $58
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    pop hl
    call Call_000_2577
    jr jr_000_2556

    pop hl
    call Call_000_2577
    ld a, [hl+]
    ld e, a

jr_000_2556:
    ldh a, [$97]
    push af
    ld a, d
    ldh [$97], a
    ld [$2222], a
    push hl
    ld hl, $256b
    push hl
    ldh a, [$ad]
    ld d, a
    ld h, b
    ld l, c
    ld a, e
    jp hl


    pop hl
    pop af
    ldh [$97], a
    ld [$2222], a
    ldh a, [$ad]
    ld d, a
    scf
    ret


Call_000_2577:
    inc hl
    ld d, $15
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ret


    scf
    jr jr_000_2583

    xor a

jr_000_2583:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$ad]
    ld d, a
    ret


    scf
    inc hl
    inc hl
    inc hl
    ret


    pop hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ldh a, [$97]
    push af
    ld a, e
    ldh [$97], a
    ld [$2222], a
    ld h, b
    ld l, c
    ld de, $c300
    ld b, $00
    call Call_000_0462
    pop af
    ldh [$97], a
    ld [$2222], a
    ldh a, [$ad]
    ld d, a
    ld hl, $c300
    scf
    ret


Call_000_25b8:
    ld h, d
    ld l, $60
    dec [hl]
    ret nz

    ldh a, [$97]
    push af
    ld a, $14
    ldh [$97], a
    ld [$2222], a
    ld l, $62
    jr jr_000_25e4

Call_000_25cb:
Jump_000_25cb:
    add a
    ld c, a
    ld b, $00
    ldh a, [$97]
    push af
    ld a, $14
    ldh [$97], a
    ld [$2222], a
    ld e, $41
    ld a, [de]
    ld hl, $5325
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc

jr_000_25e4:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    cp $ff
    jr nz, jr_000_25f0

    ld b, a
    ld c, [hl]
    add hl, bc
    ld a, [hl+]

jr_000_25f0:
    ld e, $60
    ld [de], a
    ld a, [hl+]
    ld c, a
    ld b, $00
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $41
    ld a, [de]
    ld hl, $54f5
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld e, $5e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    and $3f
    or $40
    ld [de], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_261d:
    ld a, [$cca6]
    or a
    ret nz

    ld l, a
    ld a, [$cc48]
    ld h, a
    call Call_000_1d3d
    push af
    ld hl, $d101
    ld a, [hl]
    cp $0c
    jr nz, jr_000_2644

    ld l, $04
    ld a, [hl]
    cp $02
    jr nz, jr_000_2644

    call Call_000_1d3d
    jr nc, jr_000_2644

    ld a, $01
    ld [$cc37], a

jr_000_2644:
    pop af
    ret


    ld e, $6c
    ld a, $01
    ld [de], a
    ld e, $6b
    ld a, [de]
    or a
    jr nz, jr_000_2674

    ld c, $28
    call Call_000_1f60
    jr c, jr_000_265d

    ld l, $6c
    dec [hl]
    ld a, $04

jr_000_265d:
    ld b, a
    add a
    add a
    ld h, d
    ld l, $49
    cp [hl]
    jr z, jr_000_2686

    ld [hl], a
    srl b
    call Call_000_2678
    ld a, b
    call Call_000_25cb
    ld e, $6b
    ld a, $1e

jr_000_2674:
    dec a
    ld [de], a
    jr jr_000_2686

Call_000_2678:
    ld e, $41
    ld a, [de]
    sub $24
    cp $24
    ret nc

    ld e, $77
    ld a, [de]
    add b
    ld b, a
    ret


jr_000_2686:
    call Call_000_25b8
    call Call_000_261d
    jp Jump_000_229b


    ld a, [$cd00]
    and $01
    ret nz

    pop hl
    ret


    ld e, $40
    ld a, [de]
    and $03
    cp $02
    ret nz

    pop hl
    jp Jump_000_3ad9


Call_000_26a3:
    ld a, [de]
    add $04
    add a
    swap a
    and $03
    ret


    ld h, d
    ld l, $40
    set 7, [hl]
    ret


    ld a, [$d001]
    or a
    ret nz

    ld a, [$cc47]
    cp $ff
    ret z

    ld a, [$cc45]
    and $03
    ret nz

    ld b, $04
    jp Jump_000_1fac


    ld e, $49
    ld a, [de]
    call Call_000_26a3
    jr jr_000_26d5

    ld e, $48
    ld a, [de]
    sra a

jr_000_26d5:
    ld hl, $26e3
    rst $10
    call Call_000_2054
    add [hl]
    ld h, $ce
    ld l, a
    ld a, [hl]
    or a
    ret


    ldh a, [rSB]
    db $10
    rst $38
    ldh a, [$97]
    push af
    ld a, $08
    ldh [$97], a
    ld [$2222], a
    call $50f6
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    call Call_000_2709
    ret nz

    push de
    ld de, $d00b
    call Call_000_2202
    pop de
    xor a
    ret


Call_000_2709:
    call Call_000_3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], $2d
    inc l
    ld [hl], c
    ld l, $78
    set 6, b
    ld [hl], b
    xor a
    ret


    call Call_000_3ac6
    ret nz

    ld [hl], $60
    inc l
    ld [hl], b
    inc l
    ld [hl], c
    xor a
    ret


    ldh [$8b], a
    ldh a, [$97]
    push af
    ld a, $0a
    ldh [$97], a
    ld [$2222], a
    ldh a, [$8b]
    call $4315
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Jump_000_273f:
    ldh [$8b], a
    ld a, $00
    jr jr_000_2749

    ldh [$8b], a
    ld a, $01

jr_000_2749:
    ldh [$8d], a
    ldh a, [$97]
    push af
    ld a, $0a
    ldh [$97], a
    ld [$2222], a
    call $432d
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld h, d
    ld l, $a0
    dec [hl]
    ret nz

    ldh a, [$97]
    push af
    ld a, $0c
    ldh [$97], a
    ld [$2222], a
    ld l, $a2
    jr jr_000_278b

    add a
    ld c, a
    ld b, $00
    ldh a, [$97]
    push af
    ld a, $0c
    ldh [$97], a
    ld [$2222], a
    ld e, $81
    ld a, [de]
    ld hl, $6df7
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc

jr_000_278b:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    cp $ff
    jr nz, jr_000_2797

    ld b, a
    ld c, [hl]
    add hl, bc
    ld a, [hl+]

jr_000_2797:
    ld e, $a0
    ld [de], a
    ld a, [hl+]
    ld c, a
    ld b, $00
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $81
    ld a, [de]
    ld hl, $6ef7
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld e, $9e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    and $3f
    ld [de], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld b, $80
    jr jr_000_27d0

    ld b, $81
    jr jr_000_27d0

    ld b, $00
    jr jr_000_27d0

    ld b, $01

jr_000_27d0:
    call Call_000_281a
    bit 0, b
    call nz, Call_000_30e3
    ld a, $00
    call Call_000_30c7
    jr nz, jr_000_27f3

    ld l, $20
    call Call_000_024a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $03e8
    call Call_000_01d6
    rlca
    ld a, $00
    call nc, Call_000_30cd

jr_000_27f3:
    ld hl, $c63e
    call Call_000_0245
    ld a, $3a
    call Call_000_236b
    ld a, $ff
    jr z, jr_000_2803

    xor a

jr_000_2803:
    ld l, $4c
    ld c, $10

jr_000_2807:
    rlca
    call c, Call_000_0245
    call Call_000_0245
    inc l
    dec c
    jr nz, jr_000_2807

    ld a, $03
    call Call_000_17fa
    jp Jump_000_2e28


Call_000_281a:
    ld e, $bf
    ld a, [de]
    rlca
    jp c, Jump_000_249f

    call Call_000_3ea7
    ret nz

    ld e, $80
    ld a, [de]
    and $03
    dec l
    ld [hl+], a
    ld [hl], $02
    inc l
    ld e, $81
    ld a, [de]
    ld [hl], a
    ld l, $ed
    ld e, $ad
    ld a, [de]
    ld [hl], a
    call Call_000_21fd
    ld l, $c7
    ld [hl], b
    ld a, $73
    jp Jump_000_0c74


Call_000_2844:
    ld h, d
    ld l, $84
    ld a, [hl]
    or a
    jr z, jr_000_2865

    ld l, $aa
    bit 7, [hl]
    jr nz, jr_000_2879

    ld e, $ad
    ld a, [de]
    and $7f
    jr nz, jr_000_287c

    dec l
    ld a, [hl]
    or a
    jr z, jr_000_2881

    inc e
    ld a, [de]
    or a
    jr nz, jr_000_288a

jr_000_2862:
    ld c, $00
    ret


jr_000_2865:
    ld hl, $4368
    ld e, $3f
    call Call_000_008a
    call Call_000_042f
    ld e, $bd
    ld [de], a
    inc e
    ld a, $01
    ld [de], a
    jr jr_000_2862

jr_000_2879:
    ld c, $04
    ret


jr_000_287c:
    ld l, e
    dec [hl]
    ld c, $05
    ret


jr_000_2881:
    ld l, $bf
    bit 1, [hl]
    jr nz, jr_000_2862

    ld c, $03
    ret


jr_000_288a:
    ld a, [$cc00]
    rrca
    jr nc, jr_000_28a0

    ld l, e
    dec [hl]
    ld a, [hl]
    cp $1e
    jr nc, jr_000_28a0

    rrca
    jr nc, jr_000_28a0

    ld l, $8d
    ld a, [hl]
    xor $01
    ld [hl], a

jr_000_28a0:
    ld l, $84
    ld a, [hl]
    cp $08
    jr c, jr_000_28b7

    ld l, $8f
    ld a, [hl]
    dec a
    cp $08
    jr c, jr_000_28b7

    ld c, $20
    call Call_000_232b
    jr nc, jr_000_28bc

    ld h, d

jr_000_28b7:
    ld l, $94
    xor a
    ld [hl+], a
    ld [hl], a

jr_000_28bc:
    ld c, $02
    ret


    ld h, d
    ld l, $e0
    dec [hl]
    ret nz

    ld a, $15
    ldh [$97], a
    ld [$2222], a
    ld l, $e2
    jr jr_000_28e5

    add a
    ld c, a
    ld b, $00
    ld a, $15
    ldh [$97], a
    ld [$2222], a
    ld e, $c1
    ld a, [de]
    ld hl, $718f
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc

jr_000_28e5:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    cp $ff
    jr nz, jr_000_28f1

    ld b, a
    ld c, [hl]
    add hl, bc
    ld a, [hl+]

jr_000_28f1:
    ld e, $e0
    ld [de], a
    ld a, [hl+]
    ld c, a
    ld b, $00
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $c1
    ld a, [de]
    ld hl, $7237
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld e, $de
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    and $3f
    or $40
    ld [de], a
    ld a, $10
    ldh [$97], a
    ld [$2222], a
    ret


    ld l, a
    ldh a, [$97]
    push af
    ld a, $10
    ldh [$97], a
    ld [$2222], a
    call $5e5a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld l, a
    ldh a, [$97]
    push af
    ld a, $10
    ldh [$97], a
    ld [$2222], a
    call $5e56
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld a, [$cc47]
    add a
    jr c, jr_000_295a

    add a
    swap a
    push hl
    ld hl, $295c
    rst $10
    ld a, [hl]
    pop hl
    ret


jr_000_295a:
    xor a
    ret


    ld b, b
    ld d, b
    db $10
    sub b
    add b
    and b
    jr nz, jr_000_29c4

    ld de, $cbc6
    ld [de], a
    inc e
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld e, $c5
    xor a
    ld [de], a
    dec e
    ld [de], a
    dec e
    inc a
    ld [de], a
    jp Jump_000_29cc


    ld a, [$c4ab]
    or a
    ret nz

    ld a, [$cbc3]
    rlca
    jr c, jr_000_29c1

    ld hl, $cbc4
    call Call_000_0237
    jr nz, jr_000_29c1

    ldh a, [$97]
    push af
    ld hl, $cbc6
    ld a, [hl+]
    ldh [$97], a
    ld [$2222], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$cbc4], a
    ld a, [hl+]
    ld [$cbc5], a
    bit 7, a
    jr z, jr_000_29af

    ld a, $ff
    ld [$cbc3], a
    jr jr_000_29b3

jr_000_29af:
    ld a, [hl+]
    ld [$cbc9], a

jr_000_29b3:
    pop af
    ldh [$97], a
    ld [$2222], a
    ld a, l
    ld [$cbc7], a
    ld a, h
    ld [$cbc8], a

jr_000_29c1:
    ld a, [$cbc9]

jr_000_29c4:
    ret


    ld h, d
    ld l, $04
    ld [hl+], a
    ld [hl], $00
    ret


Jump_000_29cc:
    ld hl, $cc86
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Jump_000_29d3:
    ld a, [$cc48]
    rrca
    ret c

    push de
    xor a
    ld [$cc77], a
    ld hl, $d014
    ld [hl+], a
    ld [hl+], a
    ld l, $0e
    ld [hl+], a
    ld [hl+], a
    ld l, $01
    ld a, [hl]
    or a
    jr nz, jr_000_29f2

    ld d, h
    ld a, $10
    call Call_000_2a51

jr_000_29f2:
    pop de
    ret


    xor a
    push hl
    ld hl, $cc6b
    ld [hl-], a
    ld [hl], $08
    pop hl
    ret


    push de
    ldh a, [$97]
    push af
    ld d, $d0
    ld a, $05
    ldh [$97], a
    ld [$2222], a
    call $422e
    pop af
    ldh [$97], a
    ld [$2222], a
    pop de
    ret


    or $80
    ld [$cc72], a
    ld hl, $d002
    jr jr_000_2a24

    ld hl, $d001
    ld [hl+], a

jr_000_2a24:
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


    ld a, $02
    ld [$cc6a], a
    ld a, $02
    ld [$cc6c], a
    or d
    ret


    ld h, d
    ld l, $20
    dec [hl]
    ret nz

    ldh a, [$97]
    push af
    ld a, $06
    ldh [$97], a
    ld [$2222], a
    ld l, $22
    call $4428
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_2a51:
Jump_000_2a51:
    ld e, $30
    ld [de], a
    add a
    ld c, a
    ld b, $00
    ldh a, [$97]
    push af
    ld a, $06
    ldh [$97], a
    ld [$2222], a
    call $441d
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_2a6c:
    ldh a, [$97]
    push af
    ld a, $06
    ldh [$97], a
    ld [$2222], a
    call $44bf
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    push hl
    ld a, [$d008]
    ld hl, $2a9c
    rst JumpTable
    ld a, [$d033]
    and [hl]
    cp [hl]
    jr nz, jr_000_2a99

    inc hl
    ld a, [$cc45]
    and [hl]
    jr z, jr_000_2a99

    pop hl
    scf
    ret


jr_000_2a99:
    pop hl
    xor a
    ret


    ret nz

    ld b, b
    inc bc
    db $10
    jr nc, @-$7e

    inc c
    jr nz, @-$39

    push hl
    ld hl, $d108
    jr jr_000_2ab0

    push bc
    push hl
    ld hl, $d008

jr_000_2ab0:
    ld b, [hl]
    ld a, [$cc47]
    cp $ff
    jr z, jr_000_2acd

    and $1c
    rrca
    rrca
    rra
    jr nc, jr_000_2ac7

    ld c, a
    sub b
    inc a
    and $02
    jr z, jr_000_2acd

    ld a, c

jr_000_2ac7:
    cp [hl]
    jr z, jr_000_2acd

    ld [hl], a
    ld b, a
    scf

jr_000_2acd:
    ld a, b
    pop hl
    pop bc
    ret


    ld h, d
    ld l, $08
    ld a, [$cc3f]
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ld [$ccfc], a
    ld l, $0b
    ld a, [$cc3d]
    ld [hl+], a
    inc l
    ld a, [$cc3e]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld l, $2d
    ld [hl], a
    ret


    ld hl, $d01b
    ld a, [hl+]
    ld [hl], a
    ld l, $24
    xor a
    ld [hl+], a
    ld [hl+], a
    ld l, $28
    ld [hl+], a
    inc l
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


    ld hl, $cc87
    res 7, [hl]
    dec l
    ld b, $00
    ld c, $07
    ld a, $11
    call Call_000_236b
    jr z, jr_000_2b21

    ld c, $0f
    call Call_000_0237
    ret z

    ld a, [hl]
    and c
    jr nz, jr_000_2b21

    ld b, $80

jr_000_2b21:
    call Call_000_0237
    ret z

    ld a, [hl+]
    and c
    jr nz, jr_000_2b2b

    ld b, $80

jr_000_2b2b:
    ld a, [hl]
    or b
    ld [hl-], a
    ret


    ld hl, $cc86
    ld a, [hl+]
    or [hl]
    ld a, [hl-]
    ret


    ld h, d
    ld l, $0b
    ld b, [hl]
    ld l, $0d
    ld c, [hl]
    ldh [$8f], a
    ldh a, [$97]
    push af
    ld a, $06
    ldh [$97], a
    ld [$2222], a
    call $4713
    rl e
    pop af
    ldh [$97], a
    ld [$2222], a
    rr e
    ret


Call_000_2b57:
    ld c, $00
    jr jr_000_2b61

    ld c, $01
    jr jr_000_2b61

    ld c, $02

jr_000_2b61:
    ldh a, [$97]
    push af
    ld a, $06
    ldh [$97], a
    ld [$2222], a
    call $4822
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld hl, $cc8e

jr_000_2b78:
    inc l
    bit 7, [hl]

Call_000_2b7b:
    jr z, jr_000_2b84

    inc l
    ld a, l
    cp $9e
    jr c, jr_000_2b78

    ret


jr_000_2b84:
    ld a, d
    ld [hl-], a
    ldh a, [$ac]
    ld [hl], a
    ret


Call_000_2b8a:
    ld a, [$ccea]
    or a
    jr nz, jr_000_2bb1

    ld a, [$cc75]
    and $07
    sub $02
    cp $02
    jr nc, jr_000_2bb1

    ld hl, $d018
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    ld a, [hl+]
    cp $02
    jr nz, jr_000_2bb1

    ld a, $03
    ld [hl], a
    ld a, l
    add $04
    ld l, a
    ld [hl], $ff

jr_000_2bb1:
    xor a
    ld [$cc75], a
    ld [$cc76], a
    ret


    ld hl, $d23f

jr_000_2bbc:
    ld [hl], $00
    inc h
    ld a, h
    cp $d6
    jr c, jr_000_2bbc

    ret


    ld b, $03
    ld a, [$cc78]
    bit 6, a
    jr z, jr_000_2bcf

    inc b

jr_000_2bcf:
    ld a, [$cc50]
    and $20
    jp z, Jump_000_24af

    call Call_000_3ac6
    ret nz

    ld [hl], b
    ld bc, $fd00
    jp Jump_000_2215


Call_000_2be2:
    xor a
    ld [$d036], a
    ld [$d010], a
    ld [$d03e], a
    ld [$d012], a
    dec a
    ld [$d009], a
    ret


    ld e, $05
    ld a, [de]
    rst $00
    cp $2b
    ld [hl], $2a
    dec d
    inc l
    call $4ded
    call Call_000_23aa
    xor a
    ld l, $24
    ld [hl], a
    call Call_000_2be2
    ld a, $80
    ld [$cc77], a
    ld a, $03
    jp Jump_000_2a51


    xor a
    ld [$cc77], a
    ld a, $05
    ld [$cc65], a
    ld e, $0b
    ld a, [de]
    add $04
    ld [de], a
    ld a, $0a
    jp $5471


    ld h, d
    ld l, $00
    ld b, $10
    xor a

jr_000_2c2f:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_000_2c2f

    ret


    ld h, d
    ld l, $08
    ld a, [hl+]
    swap a
    rrca
    ld [hl-], a
    ret


    ld hl, $d700

jr_000_2c43:
    ld a, [hl]
    or a
    ret z

    inc h
    ld a, h
    cp $dc
    jr c, jr_000_2c43

    or h
    ret


jr_000_2c4e:
    ld hl, $cbb7
    inc [hl]
    ld a, $03
    ldh [$97], a
    ld [$2222], a
    call $4cc9
    call Call_000_08da
    jr jr_000_2c4e

    ldh a, [$97]
    push af
    ld a, $03
    ldh [$97], a
    ld [$2222], a
    call $4e8e
    ld a, $05
    ldh [$97], a
    ld [$2222], a
    call $4000
    call Call_000_2a6c
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call $575e
    call Call_000_3445
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $03
    ldh [$97], a
    ld [$2222], a
    ld a, b
    ld hl, $54e0
    rst $10
    ld b, [hl]
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $03
    ldh [$97], a
    ld [$2222], a
    call $51e0
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $03
    ldh [$97], a
    ld [$2222], a
    call $51b4
    ld b, $01
    jr nz, jr_000_2ccc

    dec b

jr_000_2ccc:
    pop af
    ldh [$97], a
    ld [$2222], a
    ld a, b
    or a
    ret


    ldh a, [$97]
    push af
    ld a, $06
    ldh [$97], a
    ld [$2222], a
    call $69c9
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $06
    ldh [$97], a
    ld [$2222], a
    call $6dec
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld a, [$cc50]
    and $08
    ret z

    ldh a, [$97]
    push af
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $54c1
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    xor a
    ld [$cc31], a
    ld [$cc32], a
    ld [$cc33], a
    jp Jump_000_3060


    call Call_000_1956
    set 4, [hl]
    ret


    ldh a, [$97]
    push af
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    ld a, [$cc49]
    sub $04
    and $01
    ld hl, $4d3d
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc4c]
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$cc58], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_2d54:
    push bc
    push de
    ld a, [$cc57]
    ld c, $40
    call Call_000_019d
    ld bc, $dc00
    add hl, bc
    pop de
    pop bc
    ret


Call_000_2d65:
    ld a, [$cc56]

Call_000_2d68:
    ldh [$8b], a
    ld a, $02
    ldh [rSVBK], a
    call Call_000_2d54
    ldh a, [$8b]
    rst $10
    ld l, [hl]
    xor a
    ldh [rSVBK], a
    ld a, l
    ret


    ldh a, [$97]
    push af
    ld a, $0d
    ldh [$97], a
    ld [$2222], a
    call $798f
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $0d
    ldh [$97], a
    ld [$2222], a
    call $79ae
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld hl, $cbb3
    dec [hl]
    ret


    ld hl, $cbc1
    inc [hl]
    ret


    ld hl, $cbc2
    inc [hl]
    ret


    ldh a, [$97]
    push af
    ld a, $03
    ldh [$97], a
    ld [$2222], a
    call $54ec
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $11
    ldh [$97], a
    ld [$2222], a
    ld a, b
    ld hl, $5744
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $02
    ldh [$97], a
    ld [$2222], a
    call $4c97
    pop af
    ldh [$97], a
    ld [$2222], a
    xor a
    ldh [rSVBK], a
    ret


    ldh a, [$97]
    push af
    ld a, e
    ldh [$97], a
    ld [$2222], a
    call Call_000_0d3d
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    call Call_000_2e15
    ret nz

    ld a, [$cc30]
    inc a
    ld [$cc30], a
    xor a
    ret


Call_000_2e15:
    ld hl, $d080

jr_000_2e18:
    ld a, [hl]
    or a
    jr z, jr_000_2e24

    inc h
    ld a, h
    cp $e0
    jr c, jr_000_2e18

    or h
    ret


jr_000_2e24:
    inc a
    ld [hl+], a
    xor a
    ret


Call_000_2e28:
Jump_000_2e28:
    ld e, $80
    call Call_000_1b07
    ld l, e
    ld h, d
    ld b, $10
    xor a

jr_000_2e32:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_000_2e32

    ret


    ld h, d
    push bc
    ld l, $80
    ld b, [hl]
    ld l, $8b
    ld c, [hl]
    push bc
    ld l, $8d
    ld b, [hl]
    ld l, $8f
    ld c, [hl]
    push bc
    call Call_000_2e28
    pop bc
    ld l, $8f
    ld [hl], c
    ld l, $8d
    ld [hl], b
    pop bc
    ld l, $8b
    ld [hl], c
    ld l, $80
    ld a, b
    and $73
    ld [hl+], a
    pop bc
    ld [hl], b
    inc l
    ld [hl], c
    ret


jr_000_2e63:
    ld a, $80
    ldh [$ac], a
    ld d, $d0
    ld a, d

jr_000_2e6a:
    ldh [$ad], a
    ld h, d
    ld l, $80
    ld a, [hl]
    or a
    jr z, jr_000_2e7f

    ld l, $84
    ld a, [hl+]
    or [hl]
    call z, Call_000_2ee8
    ld e, $9b
    ld a, [de]
    inc e
    ld [de], a

jr_000_2e7f:
    inc d
    ld a, d
    cp $e0
    jr c, jr_000_2e6a

    ret


Call_000_2e86:
    ld a, [$cd00]
    and $0e
    jr nz, jr_000_2e63

    ld a, [$cba0]
    or a
    jr nz, jr_000_2e63

    ld a, [$cca4]
    and $84
    jr nz, jr_000_2e63

    ld a, [$c4ab]
    or a
    jr nz, jr_000_2e63

    ld a, $80
    ldh [$ac], a
    ld d, $d0
    ld a, d

jr_000_2ea7:
    ldh [$ad], a
    ld e, $80
    ld a, [de]
    or a
    jr z, jr_000_2ee1

    call Call_000_2ee8
    ld h, d
    ld l, $aa
    res 7, [hl]
    inc l
    ld a, [hl]
    or a
    jr z, jr_000_2edd

    rlca
    jr c, jr_000_2edc

    dec [hl]
    jr z, jr_000_2edd

    ld a, [$cc00]
    bit 2, a
    jr nz, jr_000_2edd

    ld b, $05
    ld l, $9b
    ld a, [hl+]
    and $07
    cp b
    jr nz, jr_000_2ed5

    ld b, $02

jr_000_2ed5:
    ld a, [hl]
    and $f8
    or b
    ld [hl], a
    jr jr_000_2ee1

jr_000_2edc:
    inc [hl]

jr_000_2edd:
    ld l, $9b
    ld a, [hl+]
    ld [hl], a

jr_000_2ee1:
    inc d
    ld a, d
    cp $e0
    jr c, jr_000_2ea7

    ret


Call_000_2ee8:
    call Call_000_2844
    ld e, $81
    ld a, [de]
    ld b, $0f
    cp $08
    jr c, jr_000_2eff

    dec b
    cp $70
    jr nc, jr_000_2eff

    dec b
    cp $30
    jr nc, jr_000_2eff

    dec b

jr_000_2eff:
    ld e, a
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, e
    add a
    add $16
    ld l, a
    ld a, $00
    adc $2f
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    or a
    jp hl


    inc [hl]
    ld e, b
    and d
    ld b, l
    dec [hl]
    ld e, b
    ld h, l
    ld c, d
    ld l, e
    ld d, b
    sbc e
    ld e, h
    push de
    ld h, [hl]
    ld d, h
    ld l, l
    rrca
    ld b, l
    xor e
    ld b, l
    and $46
    xor e
    ld b, a
    adc d
    ld c, c
    sub [hl]
    ld c, d
    cp l
    ld c, e
    inc e
    ld l, b
    ld a, [hl+]
    ld c, [hl]
    inc d
    ld l, d
    ld hl, $a250
    ld d, b
    di
    ld d, c
    ld d, h
    ld d, e
    cp d
    ld d, e
    ld e, h
    ld d, h
    ld e, d
    ld d, [hl]
    dec de
    ld d, c
    inc [hl]
    ld d, a
    ret


    ld d, a
    ld h, c
    ld l, h
    bit 3, b
    adc e
    ld e, d
    ld d, $30
    adc d
    ld c, c
    ld hl, $8a4a
    ld c, c
    inc d
    ld e, h
    cp b
    ld e, h
    ld l, d
    ld e, a
    ld d, $30
    and $5f
    add hl, sp
    ld h, c
    and h
    ld h, d
    sbc [hl]
    ld h, e
    cp l
    ld c, e
    rla

jr_000_2f6f:
    ld h, l
    and h
    ld h, l
    sbc c
    ld h, [hl]
    ld h, $67
    rrca
    ld b, l
    db $e4
    ld b, l
    dec sp
    ld b, a
    adc l
    ld c, b
    ld c, h
    ld c, c
    ld h, $4b
    jp $f84d


    ld c, a
    ld a, [hl+]
    ld d, b
    ld [hl], l
    ld d, c
    sbc h
    ld d, h
    bit 1, [hl]
    cp l
    ld l, e
    add [hl]
    ld d, l
    call Call_000_1657
    jr nc, jr_000_2f6f

    ld e, b
    ld e, d
    ld e, e
    ld d, $30
    ld l, d
    ld e, l
    ld d, $30
    add b
    ld e, [hl]
    adc d
    ld l, l
    and l
    ld l, a
    ld h, l
    ld d, [hl]
    add [hl]
    ld d, l
    add [hl]
    ld d, l
    ld [$5a60], sp
    ld e, e
    rst $08
    ld h, b
    inc b
    ld h, c
    ld l, h
    ld h, c
    jr nz, @+$65

    ret z

    ld h, e
    ld h, d
    ld h, l
    sbc l
    ld h, [hl]
    sbc c
    ld [hl], b
    jp hl


    ld [hl], e
    ld d, d
    ld [hl], l
    ld d, $30
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld l, b
    sbc d
    ld l, b
    ld e, $76
    ld b, d
    db $76
    dec e
    ld l, c
    rst $20
    ld l, c
    ld [hl], c
    db $76
    ld e, a
    ld l, d
    ld d, $30
    ld d, $30
    ld d, $30
    ld d, $30
    ld d, $30
    ld d, $30
    ld d, $30
    ld d, $30
    ld d, $30
    ld d, $30
    ld d, $30
    ld d, $30
    ld d, $30
    ld d, $30
    ld d, $30
    and d
    ld b, l
    inc [hl]
    ld c, b
    db $fd
    ld c, c
    ld h, [hl]
    ld c, l
    ld d, b
    ld d, c
    db $d3
    ld d, l
    db $eb
    ld e, e
    add h
    ld h, b
    ld c, [hl]
    ld h, e
    dec h
    ld h, a
    ld [hl], e
    ld l, d
    db $e3
    ld l, h
    inc l
    ld [hl], e
    xor c
    ld [hl], a
    ld l, a
    ld e, l
    ld b, c
    ld a, e
    ret


    call Call_000_1606
    ldh a, [$97]
    push af
    ld a, $10
    ldh [$97], a
    ld [$2222], a
    call $5ea0
    call $5ed0
    call $5f86
    ld a, $11
    ldh [$97], a
    ld [$2222], a
    call $58b5
    ld a, $15
    ldh [$97], a
    ld [$2222], a
    call $4e35
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $11
    ldh [$97], a
    ld [$2222], a
    push de
    ld d, h
    ld e, l
    call $58df
    pop de
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Jump_000_3060:
    ldh a, [$97]
    push af
    ld a, $15
    ldh [$97], a
    ld [$2222], a
    push de
    call $4ea4
    pop de
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld hl, $cd80
    ld b, $80
    jp Jump_000_044b


    ld hl, $cd80

jr_000_3081:
    ld a, [hl]
    or a
    ret z

    ld a, $08
    add l
    ld l, a
    jr nz, jr_000_3081

    or h
    ret


    ldh a, [$ac]
    add $16
    ld l, a
    ld h, d
    ld a, [hl+]
    ld h, [hl]
    ld e, l
    ld l, a
    or h
    ret z

    xor a
    ld [de], a
    dec e
    ld [de], a
    ld e, $08

jr_000_309e:
    ld [hl+], a
    dec e
    jr nz, jr_000_309e

    ret


    ld [hl], a
    ldh a, [$ac]
    add $16
    ld e, a
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ld a, [$cc4c]
    inc hl
    ld [hl+], a
    ldh a, [$ac]
    inc a
    ld e, a
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    ld a, e
    add $09
    ld e, a
    ld a, [de]
    ld [hl+], a
    inc e
    inc e
    ld a, [de]
    ld [hl+], a
    ret


Call_000_30c7:
    ld hl, $c6ca
    jp Jump_000_0205


Call_000_30cd:
    ld hl, $c6ca
    jp Jump_000_020e


    ld hl, $c6ca
    jp Jump_000_0218


    ld h, $00
    jp Jump_000_30f7


    ld h, $01
    jp Jump_000_30f7


Call_000_30e3:
    ld h, $02
    jp Jump_000_30f7


    ld h, $03
    jp Jump_000_30f7


    ld h, $04
    jp Jump_000_30f7


    ld h, $05
    jp Jump_000_30f7


Jump_000_30f7:
    ld l, a
    ldh a, [$97]
    push af
    ld a, $10
    ldh [$97], a
    ld [$2222], a
    call $5fbc
    rl c
    pop af
    ldh [$97], a
    ld [$2222], a
    srl c
    ret


    ld a, $ff
    ldh [$a4], a
    ldh [$a5], a
    xor a
    ld [$c4ab], a
    ld [$c2ff], a
    ldh [$a6], a
    ldh [$a7], a
    ld [$c4ad], a
    ld [$c4b5], a
    ld hl, $c4b1
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    call Call_000_3222
    ld a, $09
    ld [$c4ab], a
    ld a, $01
    jr jr_000_314b

    ld a, $01
    ld [$c4ab], a
    ld a, $03
    jr jr_000_314b

    ld a, $01
    ld [$c4ab], a
    ld a, $01

jr_000_314b:
    ld [$c4ac], a
    xor a
    ld [$c2ff], a

Jump_000_3152:
    ld a, $ff
    ld hl, $c4b1
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    call Call_000_3222
    ld a, $0a
    ld [$c4ab], a
    ld a, $01
    jr jr_000_3178

Call_000_3168:
    ld a, $02
    ld [$c4ab], a
    ld a, $03
    jr jr_000_3178

Call_000_3171:
    ld a, $02
    ld [$c4ab], a
    ld a, $01

jr_000_3178:
    ld [$c4ac], a
    ld a, $20
    ld [$c2ff], a
    jp Jump_000_3152


    call Call_000_3222
    ld a, $0b
    ld [$c4ab], a
    ld a, $01
    jr jr_000_319f

    ld a, $03
    ld [$c4ab], a
    ld a, $03
    jr jr_000_319f

    ld a, $03
    ld [$c4ab], a
    ld a, $01

jr_000_319f:
    ld [$c4ac], a
    xor a
    ld [$c2ff], a
    jp Jump_000_3152


    call Call_000_3222
    ld a, $0c
    ld [$c4ab], a
    ld a, $01
    jr jr_000_31c5

    ld a, $04
    ld [$c4ab], a
    ld a, $03
    jr jr_000_31c5

    ld a, $04
    ld [$c4ab], a
    ld a, $01

jr_000_31c5:
    ld [$c4ac], a
    ld a, $e0
    ld [$c2ff], a
    jp Jump_000_3152


    ld b, $f7
    jr jr_000_31d6

    ld b, $f0

jr_000_31d6:
    ld a, $05
    ld [$c4ab], a

jr_000_31db:
    ld a, [$c4ae]
    ld [$c2ff], a
    ld a, b
    ld [$c4ae], a
    ld a, $01
    ld [$c4ac], a
    ld a, $fc
    ld hl, $c4b1
    ld [hl+], a
    ld [hl], $00
    inc l
    ld [hl+], a
    ld [hl], $00
    ret


    ld b, $f7
    jr jr_000_31fd

    ld b, $00

jr_000_31fd:
    ld a, $06
    ld [$c4ab], a
    jr jr_000_31db

    call Call_000_3168
    ld a, $1e
    ld [$c2ff], a

jr_000_320c:
    ld a, $07
    ld [$c4ab], a
    ret


    call Call_000_3171
    jr jr_000_320c

Jump_000_3217:
    ld a, $08
    ld [$c4ab], a
    ld a, $20
    ld [$c2ff], a
    ret


Call_000_3222:
    ld [$c4b0], a
    ld a, $01
    ld [$c4af], a
    ret


Jump_000_322b:
jr_000_322b:
    ld a, $02
    ldh [rSVBK], a
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $554f
    call $5766
    ld a, [$c4ad]
    or a
    jr nz, jr_000_3243

    inc a

jr_000_3243:
    call Call_000_08dc
    jr jr_000_322b

    call Call_000_0c8e
    call Call_000_1826

jr_000_324e:
    ld hl, $c622
    inc [hl]
    ld a, [hl+]
    ld [$cc00], a
    jr nz, jr_000_3261

    inc [hl]
    jr nz, jr_000_3261

    inc l
    inc [hl]
    jr nz, jr_000_3261

    inc l
    inc [hl]

jr_000_3261:
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $57b1
    call Call_000_0d76
    call Call_000_1a37
    call Call_000_08da
    jr jr_000_324e

    ldh a, [$97]
    push af
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call $575e
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_328a:
    ldh a, [$97]
    push af
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    ld a, [$cc49]
    ld hl, $483c
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cc4c]
    rst $10
    ld a, [hl+]
    ld [$cc62], a
    ld a, [$cc49]
    or a
    jr nz, jr_000_32b7

    ld a, [$cc4c]
    ld hl, $473c
    rst $10
    ld a, [hl+]
    ld [$cc61], a

jr_000_32b7:
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call $45d0
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $578d
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_32dc:
    call Call_000_328a
    ld a, [$cc4c]
    ld [$cc4b], a
    ld a, [$cc49]
    or a
    ret nz

    ld a, [$cc61]
    ld [$cc4d], a
    ret


    ldh a, [$97]
    push af
    ld a, $05
    ldh [$97], a
    ld [$2222], a
    ld de, $d100
    ld a, e
    ldh [$ac], a
    ld a, d
    ldh [$ad], a
    call $45f5
    call $4641
    ld a, $38
    ld [$cc43], a
    ld a, $50
    ld [$cc44], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $0f
    ldh [$97], a
    ld [$2222], a
    call $6f75
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $0f
    ldh [$97], a
    ld [$2222], a
    call $704d
    call $7182
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $03
    ldh [$97], a
    ld [$2222], a
    call $6dfd
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $03
    ldh [$97], a
    ld [$2222], a
    call $6e05
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $03
    ldh [$97], a
    ld [$2222], a
    call $6e0d
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $05
    ldh [$97], a
    ld [$2222], a
    call $4000
    ld a, $07
    ldh [$97], a
    ld [$2222], a
    call $485a
    call Call_000_359c
    ld a, $00
    ldh [$97], a
    ld [$2222], a
    call Call_000_2e86
    ld a, $10
    ldh [$97], a
    ld [$2222], a
    call $61dc
    ld a, $00
    ldh [$97], a
    ld [$2222], a
    call Call_000_3b0a
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $4000
    ld a, $05
    ldh [$97], a
    ld [$2222], a
    ld a, [$cc48]
    rrca
    call c, $40f1
    ld a, $06
    ldh [$97], a
    ld [$2222], a
    ld a, [$cc75]
    rlca
    call c, $5429
    call Call_000_2a6c
    ld a, $07
    ldh [$97], a
    ld [$2222], a
    call $4902
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $48da
    ld a, $00
    ldh [$97], a
    ld [$2222], a
    call Call_000_126c
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call $6b25
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call $575e
    xor a
    ld [$c4b6], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $05
    ldh [$97], a
    ld [$2222], a
    call $4000
    ld a, $00
    ldh [$97], a
    ld [$2222], a
    call Call_000_3b0a
    call Call_000_2a6c
    xor a
    ld [$c4b6], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_3445:
    ldh a, [$97]
    push af
    ld a, $00
    ldh [$97], a
    ld [$2222], a
    call Call_000_3b0a
    call Call_000_0d76
    xor a
    ld [$c4b6], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $05
    ldh [$97], a
    ld [$2222], a
    call $4000
    ld a, $00
    ldh [$97], a
    ld [$2222], a
    call Call_000_2e86
    ld a, $00
    ldh [$97], a
    ld [$2222], a
    call Call_000_3b0a
    ld a, $00
    ldh [$97], a
    ld [$2222], a
    call Call_000_2a6c
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call $575e
    xor a
    ld [$c4b6], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $05
    ldh [$97], a
    ld [$2222], a
    call $4000
    ld a, $07
    ldh [$97], a
    ld [$2222], a
    call $485a
    ld a, $00
    ldh [$97], a
    ld [$2222], a
    call Call_000_2e86
    ld a, $10
    ldh [$97], a
    ld [$2222], a
    call $61dc
    ld a, $00
    ldh [$97], a
    ld [$2222], a
    call Call_000_3b0a
    ld a, $0f
    ldh [$97], a
    ld [$2222], a
    call $7159
    ld a, $06
    ldh [$97], a
    ld [$2222], a
    ld a, [$cc75]
    rlca
    call c, $5429
    call Call_000_2a6c
    ld a, $07
    ldh [$97], a
    ld [$2222], a
    call $4902
    ld a, $0f
    ldh [$97], a
    ld [$2222], a
    call $7182
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call $6b25
    xor a
    ld [$c4b6], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_3519:
    xor a
    ldh [rSVBK], a
    ld hl, $d000
    ld bc, $1000
    jp Jump_000_0451


    call Call_000_3519
    ld hl, $cd00
    ld b, $30
    call Call_000_044b
    ld a, $ff
    ld [$cd28], a
    ld [$cd2a], a
    ld [$cd2b], a
    ret


    ld hl, $d000
    ld b, $40
    jp Jump_000_044b


    ld hl, $d040
    ld b, $40
    call Call_000_044b
    ld hl, $d140
    ld b, $40
    jp Jump_000_044b


    ld de, $d240

jr_000_3557:
    ld h, d
    ld l, $40
    ld b, $40
    call Call_000_044b
    inc d
    ld a, d
    cp $e0
    jr c, jr_000_3557

    ret


    ld de, $d600

jr_000_3569:
    ld h, d
    ld l, $00
    ld b, $40
    call Call_000_044b
    inc d
    ld a, d
    cp $e0
    jr c, jr_000_3569

    ret


    ld de, $d080

jr_000_357b:
    ld h, d
    ld l, $80
    ld b, $40
    call Call_000_044b
    inc d
    ld a, d
    cp $e0
    jr c, jr_000_357b

    ret


    ld de, $d0c0

jr_000_358d:
    ld h, d
    ld l, $c0
    ld b, $40
    call Call_000_044b
    inc d
    ld a, d
    cp $e0
    jr c, jr_000_358d

    ret


Call_000_359c:
    ld a, [$cc48]
    ld h, a
    ld l, $0b
    ld a, [hl+]
    ldh [$ae], a
    inc l
    ld a, [hl]
    ldh [$af], a
    ld a, [$ccf0]
    or a
    ret nz

    ld l, $0b
    ld a, [hl+]
    ldh [$b0], a
    inc l
    ld a, [hl]
    ldh [$b1], a
    ret


    ldh a, [$97]
    push af
    ld a, $03
    ldh [$97], a
    ld [$2222], a
    call $72ff
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld a, $02
    ldh [rSVBK], a
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $5683
    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    ret


    ldh a, [$97]
    push af
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $565d
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Jump_000_3600:
    ld b, a
    ldh a, [$97]
    push af
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    ld a, b
    ld hl, $59b0
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$cd30], a
    push de
    ld de, $cd31
    call Call_000_363f
    ld de, $cd34
    call Call_000_363f
    ld de, $cd37
    call Call_000_363f
    ld de, $cd3a
    call Call_000_363f
    pop de
    pop af
    ldh [$97], a
    ld [$2222], a
    xor a
    ld [$ccfa], a
    ld [$ccfb], a
    ret


Call_000_363f:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ld a, h
    ld [de], a
    pop hl
    inc hl
    inc hl
    ret


    ldh a, [$97]
    push af
    ld a, $09
    ldh [$97], a
    ld [$2222], a
    call $53f0
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld c, a
    ldh a, [$97]
    push af
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    ld a, c
    call $66cc
    push af
    pop bc
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    nop
    sbc b
    ld b, b
    sbc b
    add b
    sbc b
    ret nz

    sbc b
    nop
    sbc c
    ld b, b
    sbc c
    add b
    sbc c
    ret nz

    sbc c
    nop
    sbc d
    ld b, b
    sbc d
    add b
    sbc d
    ret nz

    sbc d
    nop
    sbc e
    ld b, b
    sbc e
    add b
    sbc e
    ret nz

    sbc e
    and $03
    ld [$cc4e], a
    ld a, b
    ld [$cc49], a
    ld a, c
    ld [$cc4c], a
    call Call_000_32dc
    call Call_000_381a
    call Call_000_3737
    call Call_000_3836
    jp Jump_000_3a06


Call_000_36b7:
    ld a, [$cd23]
    call Call_000_0775
    ld a, $17
    ldh [$97], a
    ld [$2222], a
    ld a, $03
    ldh [rSVBK], a
    ld hl, $dc00
    ld de, $d000
    ld b, $00

jr_000_36d0:
    push bc
    call Call_000_36dc
    pop bc
    dec b
    jr nz, jr_000_36d0

    xor a
    ldh [rSVBK], a
    ret


Call_000_36dc:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    ld hl, $4004
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    swap a
    and $0f
    ld b, a
    push hl
    ld hl, $4000
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, $04
    call Call_000_0462
    pop hl
    ld a, [hl+]
    and $0f
    ld b, a
    ld c, [hl]
    ld hl, $4002
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, $04
    call Call_000_0462
    pop hl
    ret


    and $7f
    ld b, a
    ldh a, [$97]
    push af
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    ld a, b
    ld hl, $595e
    rst JumpTable
    ld a, [hl+]
    ld [$cd10], a
    ld a, [hl]
    ld [$cd11], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_3737:
    ldh a, [$97]
    push af
    ld a, [$cd21]
    call Call_000_0602
    ld a, [$cd22]
    call Call_000_04e7
    call Call_000_37b9
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call $574c
    ld a, [$cd20]
    ld [$cd28], a
    ld a, [$cd22]
    ld [$cd29], a
    ld a, [$cd25]
    ld [$cd2b], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ld a, [$cd20]
    or a
    ret z

    ld b, a
    ld a, [$cd28]
    cp b
    ret z

    ldh a, [$97]
    push af
    ld hl, $cd10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call Call_000_37d4
    ld c, a
    ld a, l
    ld [$cd10], a
    ld a, h
    ld [$cd11], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ld a, c
    add a
    ret


    ld b, a
    ldh a, [$97]
    push af
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    ld a, b
    ld hl, $595e
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_37d4
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_37b9:
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    ld a, [$cd20]
    and $7f
    ret z

    ld hl, $595e
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_37cd:
    call Call_000_37d4
    add a
    jr c, jr_000_37cd

    ret


Call_000_37d4:
    ld a, [hl+]
    or a
    jr z, jr_000_3810

    ld c, a
    ldh [$8c], a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    and $7f
    ldh [$8d], a
    push hl
    push de
    ld l, c
    ld h, b
    ld b, a
    ldh a, [$8c]
    ld c, a
    ld de, $d807
    call Call_000_064e
    pop de
    ld hl, $d800
    ld c, $07
    ldh a, [$8d]
    ld b, a
    call Call_000_0566
    pop hl
    ld a, $00
    ldh [rSVBK], a
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    ld a, [hl+]
    ret


jr_000_3810:
    push hl
    ld a, [hl]
    and $7f
    call Call_000_04e7
    pop hl
    ld a, [hl+]
    ret


Call_000_381a:
    ldh a, [$97]
    push af
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call $6c6d
    ld hl, $403e
    ld e, $02
    call Call_000_008a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_3836:
    ldh a, [$97]
    push af
    ld a, [$cd2a]
    ld b, a
    ld a, [$cd23]
    cp b
    ld [$cd2a], a
    call nz, Call_000_36b7
    call Call_000_3870
    call $3894
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call $5d94
    ld a, $03
    ldh [rSVBK], a
    ld hl, $df00
    ld de, $cf00
    ld b, $c0
    call Call_000_045b
    xor a
    ldh [rSVBK], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_3870:
    ld a, $15
    call Call_000_30c7
    ret z

    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call $6cff
    ret nc

    ld a, [$cc4e]
    ld hl, $3890
    rst $10
    ld a, [$cc4c]
    add [hl]
    ld [$cc4b], a
    ret


    cp h
    ret nz

    call nz, Call_000_21c8
    nop
    rst $08
    ld b, $c0
    call Call_000_044b
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    ld a, [$cd24]
    add a
    add a
    ld hl, $4c4c
    rst JumpTable
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ldh [$8d], a
    ld a, [hl+]
    ldh [$8e], a
    ld a, [hl+]
    ldh [$8f], a
    ld a, [hl+]
    ldh [$8c], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$8c]
    ldh [$97], a
    ld [$2222], a
    push hl
    ld a, b
    rst $00
    ldh [$38], a
    ld a, $39

Call_000_38cb:
    ld d, b
    ld a, b
    and $0f
    ld b, a
    ldh a, [$8f]
    ld h, a
    ldh a, [$8e]
    ld l, a
    add hl, bc
    ld a, d
    swap a
    and $0f
    add $03
    ld b, a
    ret


    ldh a, [$8f]
    ld h, a
    ldh a, [$8e]
    ld l, a
    ld bc, $1000
    add hl, bc
    ldh a, [$8d]
    ldh [$97], a
    ld [$2222], a
    ld a, [$cc4b]
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    add hl, bc
    ld bc, $fe00
    add hl, bc
    call Call_000_39df
    ld de, $cf00

jr_000_3904:
    ld a, [hl+]
    ld b, $08

jr_000_3907:
    rrca
    ldh [$8b], a
    jr c, jr_000_391a

    ld a, [hl+]
    ld [de], a
    inc e
    ld a, e
    cp $b0
    ret z

jr_000_3913:
    ldh a, [$8b]
    dec b
    jr nz, jr_000_3907

    jr jr_000_3904

jr_000_391a:
    push bc
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    call Call_000_38cb
    ld d, $cf
    ldh a, [$8d]
    ldh [$97], a
    ld [$2222], a

jr_000_392c:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, e
    cp $b0
    jr z, jr_000_393b

    dec b
    jr nz, jr_000_392c

    pop hl
    pop bc
    jr jr_000_3913

jr_000_393b:
    pop hl
    pop bc
    ret


    ldh a, [$8d]
    ldh [$97], a
    ld [$2222], a
    ldh a, [$8e]
    ld l, a
    ldh a, [$8f]
    ld h, a
    ld a, [$cc4b]
    rst JumpTable
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld e, a
    and $3f
    ld b, a
    pop hl
    add hl, bc
    call Call_000_39df
    bit 7, e
    jr nz, jr_000_3979

    bit 6, e
    jr nz, jr_000_399c

    ld de, $cf00
    ld bc, $0a08

jr_000_3969:
    push bc

jr_000_396a:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_396a

    ld a, e
    add $06
    ld e, a
    pop bc
    dec c
    jr nz, jr_000_3969

    ret


jr_000_3979:
    ld de, $cf00
    ld a, $05

jr_000_397e:
    push af
    call Call_000_3987
    pop af
    dec a
    jr nz, jr_000_397e

    ret


Call_000_3987:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ldh [$8a], a
    or c
    ld b, $10
    jr z, jr_000_39b6

    ld a, [hl+]
    ldh [$8b], a
    call Call_000_39cb
    ldh a, [$8a]
    ld c, a
    jr jr_000_39cb

jr_000_399c:
    ld de, $cf00
    ld a, $0a

jr_000_39a1:
    push af
    call Call_000_39aa
    pop af
    dec a
    jr nz, jr_000_39a1

    ret


Call_000_39aa:
    ld a, [hl+]
    ld c, a
    or a
    ld b, $08
    jr z, jr_000_39b6

    ld a, [hl+]
    ldh [$8b], a
    jr jr_000_39cb

jr_000_39b6:
    ld a, [hl+]
    ld [de], a
    inc e
    call Call_000_39c0
    dec b
    jr nz, jr_000_39b6

    ret


Call_000_39c0:
    ld a, e
    and $0f
    cp $0a
    ret c

    ld a, $06
    add e
    ld e, a
    ret


Call_000_39cb:
jr_000_39cb:
    ld b, $08

jr_000_39cd:
    srl c
    jr c, jr_000_39d4

    ld a, [hl+]
    jr jr_000_39d6

jr_000_39d4:
    ldh a, [$8b]

jr_000_39d6:
    ld [de], a
    inc e
    call Call_000_39c0
    dec b
    jr nz, jr_000_39cd

    ret


Call_000_39df:
    push de
    ldh a, [$8c]
    bit 7, h
    jr z, jr_000_39ef

    ld a, h
    xor $c0
    ld h, a
    ldh a, [$8c]
    inc a
    ldh [$8c], a

jr_000_39ef:
    ldh [$97], a
    ld [$2222], a
    ld b, $b0
    ld de, $ce00

jr_000_39f9:
    call Call_000_0764
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_39f9

    ld hl, $ce00
    pop de
    ret


Call_000_3a06:
Jump_000_3a06:
    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    call $6ae4
    call $66ef
    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    ret


Call_000_3a25:
    ld c, a
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld a, c
    call Call_000_3a4a
    push de
    ld de, $cec0
    ld b, $08

jr_000_3a37:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_3a37

    pop de
    ld a, [$cec4]
    ld b, a
    ld a, [$cec0]
    ld c, a
    pop af
    ldh [rSVBK], a
    ret


Call_000_3a4a:
    call Call_000_01b7
    ld hl, $d000
    add hl, bc
    ret


Call_000_3a52:
    ld b, a
    ld a, [$ccf6]
    inc a
    and $1f
    ld e, a
    ld a, [$ccf5]
    cp e
    ret z

    ld a, e
    ld [$ccf6], a
    ldh a, [rSVBK]
    push af
    ld a, $02
    ldh [rSVBK], a
    ld a, e
    add a
    ld hl, $dac0
    rst $10
    ld [hl], b
    inc l
    ld [hl], c
    ld a, b
    call Call_000_140a
    pop af
    ldh [rSVBK], a
    or h
    ret


Call_000_3a7c:
    push de
    ld e, a
    ldh a, [rSVBK]
    ld c, a
    ldh a, [$97]
    ld b, a
    push bc
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    ld a, e
    call $6ba6
    pop bc
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, c
    ldh [rSVBK], a
    pop de
    ret


    ld b, a
    ld a, [$cc49]
    or a
    ret nz

    ld a, [$cc4d]
    cp $f1
    ret nc

    ld a, b
    ld [$cc4e], a
    ld a, $02
    ld [$cc68], a
    ret


    ldh a, [$97]
    push af
    ld a, $01
    ldh [$97], a
    ld [$2222], a
    call $7e6e
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_3ac6:
    ld hl, $d240

jr_000_3ac9:
    ld a, [hl]
    or a
    jr z, jr_000_3ad5

    inc h
    ld a, h
    cp $e0
    jr c, jr_000_3ac9

    or h
    ret


jr_000_3ad5:
    inc [hl]
    inc l
    xor a
    ret


Jump_000_3ad9:
    ld h, d
    ld l, $40
    ld b, $10
    xor a

jr_000_3adf:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_000_3adf

    ret


jr_000_3ae7:
    ld a, $40
    ldh [$ac], a
    ld a, $d0

jr_000_3aed:
    ldh [$ad], a
    ld d, a
    ld e, $40
    ld a, [de]
    or a
    jr z, jr_000_3b02

    rlca
    jr c, jr_000_3aff

    ld e, $44
    ld a, [de]
    or a
    jr nz, jr_000_3b02

jr_000_3aff:
    call Call_000_3b36

jr_000_3b02:
    ldh a, [$ad]
    inc a
    cp $e0
    jr c, jr_000_3aed

    ret


Call_000_3b0a:
    ld a, [$cd00]
    cp $08
    jr z, jr_000_3ae7

    ld a, [$cca4]
    and $02
    jr nz, jr_000_3ae7

    ld a, [$cba0]
    or a
    jr nz, jr_000_3ae7

    ld a, $40
    ldh [$ac], a
    ld a, $d0

jr_000_3b24:
    ldh [$ad], a
    ld d, a
    ld e, $40
    ld a, [de]
    or a
    call nz, Call_000_3b36
    ldh a, [$ad]
    inc a
    cp $e0
    jr c, jr_000_3b24

    ret


Call_000_3b36:
    ld e, $41
    ld a, [de]
    ld b, $08
    cp $5e
    jr c, jr_000_3b51

    inc b
    cp $89
    jr c, jr_000_3b51

    inc b
    cp $c8
    jr c, jr_000_3b51

    ld b, $0f
    cp $d8
    jr c, jr_000_3b51

    ld b, $15

jr_000_3b51:
    ld a, b
    ldh [$97], a
    ld [$2222], a
    ld a, [de]
    ld hl, $3b60
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    and b
    ld b, b
    db $10
    ld b, c
    ld b, a
    ld b, c
    ld c, a
    ld b, c
    ld a, [hl]
    ld b, d
    pop hl
    ld b, d
    jr c, @+$53

    dec sp
    ld b, h
    db $e3
    ld b, h
    ld c, b
    ld b, l
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    reti


    ld a, [hl-]
    ld a, [hl]
    ld b, l
    and b
    ld b, l
    daa
    ld b, [hl]
    ld l, h
    ld d, c
    call nc, $c352
    ld d, e
    add sp, $54
    ld h, l
    ld d, [hl]
    or l
    ld d, [hl]
    ld c, $5a
    ld c, $5a
    db $fc
    ld e, d
    db $eb
    ld e, e
    or l
    ld d, [hl]
    sbc e
    ld e, h
    cpl
    ld e, [hl]
    or l
    ld d, [hl]
    or l
    ld d, [hl]
    sbc d
    ld e, [hl]
    or l
    ld d, [hl]
    adc b
    ld e, a
    call $1660
    ld h, e
    or l
    ld d, [hl]
    ld a, c
    ld h, e
    sub d
    ld h, e
    or l
    ld d, [hl]
    or l
    ld d, [hl]
    or l
    ld d, [hl]
    or l
    ld d, [hl]
    or l
    ld d, [hl]
    cp $66
    or l
    ld d, [hl]
    or l
    ld d, [hl]
    jr z, jr_000_3c46

    or l
    ld d, [hl]
    dec e
    ld l, e
    dec e
    ld l, e
    db $dd
    ld l, h
    jr @+$6f

    db $ec
    ld l, l
    or a
    ld l, [hl]
    or b
    ld b, a
    pop bc
    ld c, d
    ld e, c
    ld l, a
    ld [hl], l
    ld [hl], b
    ld e, d
    ld c, l
    bit 6, c
    add b
    ld [hl], d
    ld l, [hl]
    ld [hl], e
    jr jr_000_3c73

    jr nz, jr_000_3c77

    ld h, h
    ld c, a
    dec a
    ld a, d
    dec b
    ld a, e
    ld a, [hl+]
    ld a, e
    call c, Call_000_2b7b
    ld a, h
    dec d
    ld d, c
    ld [hl+], a
    ld a, l
    sbc a
    ld a, l
    ld c, e
    ld a, [hl]
    sub b
    ld a, [hl]
    dec h
    ld a, a
    ld l, [hl]
    ld a, a
    sbc e
    ld a, a
    adc $4b
    inc b
    ld c, l
    nop
    ld b, b
    reti


    ld a, [hl-]
    ld c, [hl]
    ld c, a
    add c
    ld d, b
    db $eb
    ld d, b
    ld h, b
    ld d, c
    ld l, h
    ld d, l
    call z, Call_000_0456
    ld e, b
    dec e
    ld e, c
    and $5b
    xor $60
    add l
    ld h, a
    adc l
    ld h, a
    ld [hl+], a
    ld l, e
    ld b, b
    ld b, e
    ld a, [hl-]
    ld l, h
    adc [hl]
    ld l, h
    adc h
    ld l, a

jr_000_3c46:
    ld e, a
    ld [hl], b
    push hl
    ld [hl], c
    sbc c
    ld [hl], d
    ld h, $73
    sbc b
    ld [hl], h
    ld d, $44
    ld a, b
    ld b, h
    jr z, @+$47

    ld a, [c]
    ld [hl], h
    ld a, [$bf75]
    ld b, [hl]
    ld h, l
    ld c, b
    xor l
    ld c, c
    db $eb
    db $76
    dec l
    ld [hl], a
    or d
    ld a, c
    cp d
    ld a, d
    ld h, c
    ld a, e
    rra
    ld a, h
    ld d, a
    ld a, h
    inc d
    ld a, l
    ld h, $7e
    nop

jr_000_3c73:
    ld b, b
    jp c, $da4b

jr_000_3c77:
    ld c, e
    ld l, d
    ld c, h
    jp c, $294b

    ld c, a
    ld e, b
    ld c, a
    sub c
    ld c, a
    rst $20
    ld b, c
    ccf
    ld d, d
    ld e, a
    ld d, d
    ld b, [hl]
    ld d, e
    ld hl, $c554
    ld d, l
    db $e4
    ld d, a
    xor b
    ld b, d
    ld d, b
    ld e, b
    adc e
    ld e, b
    ld [de], a
    ld e, e
    db $ec
    ld e, e
    ld l, $5d
    ld [c], a
    ld e, [hl]
    ldh a, [rSCY]
    dec a
    ld b, e
    ld [hl], l
    ld h, b
    add hl, hl
    ld h, c
    sub $61
    ld [$4063], a
    ld h, h
    dec e
    ld h, a
    ld l, a
    ld h, a
    rst $20
    ld h, a
    or l
    ld l, b
    ld b, e
    ld l, c
    ld l, a
    ld l, c
    and b
    ld b, e
    add hl, sp
    ld l, d
    di
    ld l, d
    ld e, d
    ld l, l
    di
    ld l, l
    ld l, h
    ld l, [hl]
    ld a, [hl]
    ld l, [hl]
    adc c
    ld l, a
    ld a, [hl+]
    ld [hl], b
    add hl, hl
    ld [hl], e
    sbc l
    ld b, [hl]
    inc h
    ld c, e
    and [hl]
    ld [hl], e
    inc a
    ld [hl], h
    add d
    ld [hl], l
    cp c
    ld [hl], l
    pop af
    ld [hl], a
    pop af
    ld [hl], a
    pop af
    ld [hl], a
    rlca
    ld a, c
    dec [hl]
    ld c, e
    ld h, d
    ld a, c
    sbc $79
    ei
    ld a, c
    ld [hl-], a
    ld a, d
    or h
    ld a, d
    ld d, c
    ld a, e
    adc c
    ld c, e
    add h
    ld a, b
    ld [$4578], a
    ld a, c
    cp l
    ld a, d
    dec e
    ld a, l
    rst $08
    ld a, l
    nop
    ld [hl], h
    rst $08
    ld [hl], l
    ld hl, sp+$75
    db $dd
    db $76
    rst $30
    db $76
    ld l, h
    ld [hl], a
    ld hl, $8978
    ld a, [hl]
    daa
    ld a, a
    sbc d
    ld a, a
    jp nc, $c465

    ld c, c
    xor h
    ld c, e
    cp $65
    ld l, c
    ld h, [hl]
    sub h
    ld l, d
    rst JumpTable
    ld l, d
    ld [$066c], a
    ld c, h
    call c, $5c6d
    ld c, h
    jr z, @+$70

    ld [$566e], a
    ld c, l
    ld e, [hl]
    ld l, a
    ld h, [hl]
    ld [hl], c
    ld a, [$cc00]
    and $3f
    ret nz

    ld b, $fa
    ld c, $fc
    jp Jump_000_273f


    ldh a, [$97]
    push af
    ld a, $0a
    ldh [$97], a
    ld [$2222], a
    call $7a7b
    push af
    pop bc
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_3d53:
    ld e, $58
    ld a, l
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ret


    ldh a, [$97]
    push af
    ld a, $14
    ldh [$97], a
    ld [$2222], a
    ld h, d
    ld l, $58
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_3d6b:
    ld a, [hl]
    or a
    jr z, jr_000_3d7f

    call Call_000_3d87
    jr c, jr_000_3d6b

    call Call_000_3d53
    pop af
    ldh [$97], a
    ld [$2222], a
    xor a
    ret


jr_000_3d7f:
    pop af
    ldh [$97], a
    ld [$2222], a
    scf
    ret


Call_000_3d87:
    ld a, [hl+]
    push hl
    rst $00
    sbc h
    dec a
    sbc [hl]
    dec a
    and l
    dec a
    xor l
    dec a
    cp b
    dec a
    jp z, $063d

    ld a, $e1
    dec a
    ld b, $3e
    pop hl
    ret


    pop hl
    ld a, [hl+]
    ld e, $46
    ld [de], a
    xor a
    ret


    pop hl
    ld a, [hl+]
    push hl
    call Call_000_0c74
    pop hl
    ret


    pop hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    push hl
    call Call_000_3a52
    pop hl
    scf
    ret


    pop hl
    ld a, [hl+]
    ldh [$8c], a
    ld a, [hl+]
    ldh [$8f], a
    ld a, [hl+]
    ldh [$8e], a
    ld a, [hl+]
    push hl
    call Call_000_3a7c
    pop hl
    scf
    ret


    pop hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ldh [$8b], a
    push hl

jr_000_3dd3:
    push bc
    ldh a, [$8b]
    call Call_000_3a52
    pop bc
    inc c
    dec b
    jr nz, jr_000_3dd3

    pop hl
    scf
    ret


    pop hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ldh [$8c], a
    ld a, [hl+]
    ldh [$8e], a
    ld a, [hl+]
    ldh [$8d], a
    push hl

jr_000_3dee:
    push bc
    ld b, $cf
    ldh a, [$8c]
    ld c, a
    ld a, [bc]
    ldh [$8f], a
    ldh a, [$8d]
    call Call_000_3a7c
    ld hl, $ff8c
    inc [hl]
    pop bc
    dec b
    jr nz, jr_000_3dee

    pop hl
    scf
    ret


    ldh a, [$97]
    push af
    ld a, $08
    ldh [$97], a
    ld [$2222], a
    call $57db
    ld c, $01
    jr c, jr_000_3e19

    dec c

jr_000_3e19:
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $09
    ldh [$97], a
    ld [$2222], a
    call $7d8b
    ld a, $15
    ldh [$97], a
    ld [$2222], a
    call $60fc
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $08
    ldh [$97], a
    ld [$2222], a
    call $5874
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    ldh a, [$97]
    push af
    ld a, $0a
    ldh [$97], a
    ld [$2222], a
    call $69d4
    ld a, $01
    call $69e7
    call $6a0a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


    push de
    ld l, $43
    ld e, [hl]
    ldh a, [$97]
    push af
    ld a, $14
    ldh [$97], a
    ld [$2222], a
    ld a, e
    ld hl, $4000
    rst JumpTable
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_0d3d
    pop af
    ldh [$97], a
    ld [$2222], a
    pop de
    ret


    ldh a, [$97]
    push af
    ld a, $04
    ldh [$97], a
    ld [$2222], a
    ld hl, $7655
    ld a, [hl]
    ld [$cc64], a
    pop af
    ldh [$97], a
    ld [$2222], a
    ret


Call_000_3ea7:
    ld hl, $d0c0

jr_000_3eaa:
    ld a, [hl]
    or a
    jr z, jr_000_3eb6

    inc h
    ld a, h
    cp $e0
    jr c, jr_000_3eaa

    or h
    ret


jr_000_3eb6:
    inc a
    ld [hl+], a
    xor a
    ret


    ld h, d
    ld l, $c0
    ld b, $10
    xor a

jr_000_3ec0:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec b
    jr nz, jr_000_3ec0

    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

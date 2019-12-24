; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX

    db $eb
    inc b
    db $ec
    inc b
    db $ed
    inc b
    xor $04
    rst $28
    inc b
    ldh a, [rDIV]
    pop af
    inc b
    ld a, [c]
    inc b
    ld [bc], a
    dec b
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld d, b
    ld [$0851], sp
    ld d, d
    ld [$0853], sp
    dec c
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    ldh a, [rP1]
    ld c, $00
    rrca
    nop
    or b
    ld [bc], a
    sbc d
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    sub $08
    rst AddAToHL
    ld [$08d8], sp
    reti


    ld [$08da], sp
    db $db
    ld [$08dc], sp
    db $dd
    ld [$07cd], sp
    adc $07
    add l
    nop
    add l
    nop
    add l
    nop
    jp nc, $f207

    ld [bc], a
    ld a, [c]
    ld [bc], a
    inc b
    nop
    ld a, l
    nop
    db $db
    nop
    add hl, hl
    ld bc, $012a
    dec de
    ld bc, $0080
    add c
    nop
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    db $db
    inc bc
    add l
    nop
    add l
    nop
    ld a, [$0604]
    ld [bc], a
    rlca
    ld [bc], a
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    sbc c
    dec b
    ld e, c
    ld [$085a], sp
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld h, e
    dec b
    ld h, h
    dec b
    ld h, l
    dec b
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld [c], a
    rlca
    db $e3
    rlca
    db $e4
    rlca
    push hl
    rlca
    and $07
    ld h, $04
    daa
    inc b
    dec sp
    dec b
    ld d, h
    ld [$0855], sp
    ld d, [hl]
    ld [$0085], sp
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    adc a
    rlca
    sub b
    rlca
    sub c
    rlca
    sub d
    rlca
    sub e
    rlca
    sub h
    rlca
    sub l
    rlca
    sub [hl]
    rlca
    adc d
    ld [$088b], sp
    adc h
    ld [$088d], sp
    adc [hl]
    ld [$088f], sp
    sub b
    ld [$0891], sp
    rst JumpTable
    ld b, $e0
    ld b, $e1
    ld b, $e2
    ld b, $e3
    ld b, $e4
    ld b, $e5
    ld b, $e6
    ld b, $85
    nop
    cp [hl]
    rlca
    cp a
    rlca
    ret nz

    rlca
    pop bc
    rlca
    jp nz, $c307

    rlca
    call nz, $1107
    ld [bc], a
    ld [de], a
    ld [bc], a
    inc de
    ld [bc], a
    inc d
    ld [bc], a
    dec d
    ld [bc], a
    ld d, $02
    rla
    ld [bc], a
    jr jr_019_4132

    inc d
    nop

jr_019_4132:
    ld bc, $1500
    nop
    dec d
    nop
    rst $28
    nop
    ldh a, [rP1]
    ld bc, $1700
    nop
    add l
    nop
    add l
    nop
    daa
    ld b, $28
    ld b, $29
    ld b, $85
    nop
    add l
    nop
    add l
    nop
    jr nz, jr_019_4152

jr_019_4152:
    jr nz, jr_019_4154

jr_019_4154:
    inc b
    nop
    inc b
    nop
    cp b
    nop
    cp c
    nop
    add hl, hl
    nop
    ld a, [hli]
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld h, [hl]
    ld [bc], a
    cp $00  ; and a / or a
    add b
    ld [bc], a
    jp $8000


    nop
    add c
    nop
    ld h, h
    ld [bc], a
    ld h, h
    ld [bc], a
    ld h, h
    ld [bc], a
    ld h, h
    ld [bc], a
    add l
    nop
    inc d
    nop
    inc d
    nop
    inc d
    nop
    ld b, b
    ld bc, $07dc
    db $dd
    rlca
    sbc $07
    dec de
    ld [$0085], sp
    rst $20
    dec b
    inc e
    ld [$080f], sp
    db $10
    ld [$0085], sp
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld e, e
    ld [$02ea], sp
    db $eb
    ld [bc], a
    db $ec
    ld [bc], a
    db $ed
    ld [bc], a
    ld d, c
    ld [bc], a
    xor $02
    ld d, e
    ld [bc], a
    call nz, $8502
    nop
    add l
    nop
    ld a, a
    inc bc
    add b
    inc bc
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add e
    inc b
    add l
    nop
    add d
    inc b
    ld [de], a
    ld [$0813], sp
    add l
    nop
    add l
    nop
    add l
    nop
    ld b, b
    ld bc, $07dc
    db $dd
    rlca
    sbc $07
    dec de
    ld [$0085], sp
    rst $20
    dec b
    add l
    nop
    add l
    nop
    add l
    nop
    db $eb
    nop
    add l
    nop
    add l
    nop
    db $ec
    nop
    add l
    nop
    add l
    nop
    ld bc, $0100
    nop
    ld bc, $8500
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    and b
    inc bc
    and c
    inc bc
    and d
    inc bc
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    dec sp
    dec b
    xor c
    dec b
    xor d
    dec b
    add l
    nop
    xor e
    dec b
    ret z

    inc b
    add $00
    sub c
    ld b, $8e
    inc b
    adc a
    inc b
    sub b
    inc b
    sub c
    inc b
    sub d
    inc b
    ld h, e
    inc b
    sub e
    inc b
    sbc [hl]
    ld b, $6e
    ld b, $7b
    inc bc
    ld l, a
    ld b, $70
    ld b, $55
    inc b
    ld d, [hl]
    inc b
    ld d, a
    inc b
    add l
    nop
    add l
    nop
    add l
    nop
    ld [de], a
    ld [$0813], sp
    inc d
    ld [$0085], sp
    add l
    nop
    jr nz, jr_019_4253

    or h

jr_019_4253:
    ld bc, $0085
    add l
    nop
    dec e
    ld [$081e], sp
    add l
    nop
    add l
    nop
    jr nz, jr_019_4262

jr_019_4262:
    ld hl, $2200
    nop
    inc hl
    nop
    add [hl]
    nop
    add a
    nop
    adc b
    nop
    adc c
    nop
    jr jr_019_4272

jr_019_4272:
    add hl, de
    nop
    ld a, [de]
    nop
    dec de
    nop
    inc e
    nop
    dec e
    nop
    ld e, $00
    rra
    nop
    ld sp, $3207
    rlca
    inc sp
    rlca
    inc [hl]
    rlca
    dec [hl]
    rlca
    db $f4
    inc bc
    ld [hl], $07
    scf
    rlca
    ld b, b
    rlca
    ld b, c
    rlca
    ld b, d
    rlca
    ld b, e
    rlca
    ld b, h
    rlca
    ld b, l
    rlca
    ld b, [hl]
    rlca
    ld b, a
    rlca
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    jp $8500


    nop
    ld [$7f05], sp
    inc b
    add l
    nop
    add l
    nop
    add l
    nop
    rst $30
    dec b
    ld hl, sp+$05
    ld sp, hl
    dec b
    ld a, [$fb05]
    dec b
    rst $28
    ld [bc], a
    ldh a, [rSC]
    pop af
    ld [bc], a
    ld a, [c]
    ld [bc], a
    di
    ld [bc], a
    db $f4
    ld [bc], a
    push af
    ld [bc], a
    or $02
    nop
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld h, c
    ld [bc], a
    nop
    nop
    ld bc, $b300
    nop
    or h
    nop
    or l
    nop
    ld bc, $0100
    nop
    inc b
    nop
    jp c, Jump_019_6a00

    nop
    ld l, e
    nop
    ld bc, $6c00
    nop
    ld l, h
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld [hl], b
    ld [$080e], sp
    add hl, de
    rlca
    add l
    nop
    add l
    nop
    add l
    nop
    ld [hl], c
    ld [$0872], sp
    and e
    ld [bc], a
    and h
    ld [bc], a
    and l
    ld [bc], a
    and [hl]
    ld [bc], a
    and a
    ld [bc], a
    xor b
    ld [bc], a
    xor c
    ld [bc], a
    xor d
    ld [bc], a
    adc d
    nop
    adc e
    nop
    adc h
    nop
    adc l
    nop
    rst JumpTable
    nop
    ldh [rP1], a
    pop hl
    nop
    ld [c], a
    nop
    add d
    nop
    add e
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    sub c
    inc bc
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld h, c
    ld b, $62
    ld b, $63
    ld b, $64
    ld b, $65
    ld b, $37
    inc b
    jr c, jr_019_4362

    add hl, sp
    inc b
    rlca
    inc bc

jr_019_4362:
    ld [$0903], sp
    inc bc
    ld a, [bc]
    inc bc
    dec bc
    inc bc
    inc c
    inc bc
    dec c
    inc bc
    ld c, $03
    sbc e
    nop
    sbc h
    nop
    sbc l
    nop
    cpl
    ld bc, $009f
    and b
    nop
    and c
    nop
    db $e3
    nop
    ld h, c
    nop
    ld h, d
    nop
    ld h, e
    nop
    ld h, h
    nop
    ld h, l
    nop
    ld h, [hl]
    nop
    ld h, a
    nop
    ld l, b
    nop
    ld d, a
    ld [bc], a
    ld e, b
    ld [bc], a
    ld e, c
    ld [bc], a
    ld e, d
    ld [bc], a
    ld e, e
    ld [bc], a
    ld e, h
    ld [bc], a
    ld e, l
    ld [bc], a
    ld e, [hl]
    ld [bc], a
    reti


    ld [bc], a
    jp c, $db02

    ld [bc], a
    call c, $dd02
    ld [bc], a
    add l
    nop
    add l
    nop
    add l
    nop
    and l
    inc b
    and l
    inc b
    and [hl]
    inc b
    db $ed
    dec b
    add l
    nop
    xor c
    inc b
    xor d
    inc b
    adc [hl]
    inc b
    di
    ld b, $f4
    ld b, $9f
    dec b
    and b
    dec b
    push af
    ld b, $f6
    ld b, $f7
    ld b, $85
    nop
    inc b
    nop
    xor h
    ld bc, $0129
    xor h
    ld bc, $011b
    xor l
    ld bc, $0080
    add c
    nop
    xor e
    nop
    dec sp
    nop
    inc a
    nop
    dec a
    nop
    ld a, $00   ; xor a
    ccf
    nop
    ld b, b
    nop
    ld b, c
    nop
    rla
    inc bc
    jr jr_019_43f7

    add hl, hl
    ld [bc], a
    add hl, de

jr_019_43f7:
    inc bc
    ld a, [de]
    inc bc
    dec de
    inc bc
    inc e
    inc bc
    dec e
    inc bc
    dec c
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    add l
    nop
    ld c, $00
    or a
    nop
    stop
    ld b, e
    inc bc
    ld b, h
    inc bc
    add l
    nop
    add l
    nop
    ld b, l
    inc bc
    ld b, [hl]
    inc bc
    ld b, a
    inc bc
    ld c, b
    inc bc
    dec h
    ld bc, $00ca
    rlc b
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add d
    nop
    add e
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld b, a
    dec b
    ld c, b
    dec b
    ld c, c
    dec b
    ld c, d
    dec b
    ld c, e
    dec b
    ld c, h
    dec b
    ld c, l
    dec b
    add l
    nop
    adc $08
    rst $08
    ld [$08d0], sp
    pop de
    ld [$08d2], sp
    db $d3
    ld [$08d4], sp
    push de
    ld [$03d6], sp
    rst AddAToHL
    inc bc
    sub a
    inc bc
    ret c

    inc bc
    sbc c
    inc bc
    adc c
    inc bc
    add l
    nop
    add l
    nop
    rrca
    ld bc, $0110
    ld de, $1201
    ld bc, $0113
    inc d
    ld bc, $0115
    ld d, $01
    adc d
    nop
    adc e
    nop
    adc h
    nop
    adc l
    nop
    sbc d
    ld bc, $019b
    sbc h
    ld bc, $019d
    db $eb
    ld bc, $01eb
    db $eb
    ld bc, $01eb
    db $eb
    ld bc, $0010
    stop
    stop
    call $ce04
    inc b
    rst $08
    inc b
    ret nc

    inc b
    add l
    nop
    add l
    nop
    add l
    nop
    pop de
    inc b
    add a
    rlca
    adc b
    rlca
    adc c
    rlca
    adc d
    rlca
    adc e
    rlca
    adc h
    rlca
    adc l
    rlca
    adc [hl]
    rlca
    di
    ld b, $f4
    ld b, $eb
    dec b
    db $ec
    dec b
    push af
    ld b, $f6
    ld b, $f7
    ld b, $85
    nop
    ccf
    ld [$0840], sp
    ld b, c
    ld [$0842], sp
    add l
    nop
    add l
    nop
    and l
    rlca
    and [hl]
    rlca
    sbc e
    nop
    sbc h
    nop
    sbc l
    nop
    sbc [hl]
    nop
    sbc a
    nop
    and b
    nop
    and c
    nop
    or l
    ld bc, $044a
    ld c, e
    inc b
    ld c, h
    inc b
    ld c, l
    inc b
    ld sp, $4f05
    inc b
    ld d, b
    inc b
    jr nc, jr_019_4500

jr_019_4500:
    ld bc, $0100
    nop
    or c
    nop
    ld bc, $0100
    nop
    or d
    nop
    ld bc, $0100
    nop
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    inc c
    ld [bc], a
    dec c
    ld [bc], a
    ld c, $02
    rrca
    ld [bc], a
    db $10
    ld [bc], a
    dec c
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    ld bc, $3000
    ld bc, $000f
    ld bc, $1400
    nop
    ld bc, $1500
    nop
    dec d
    nop
    dec d
    nop
    ld d, $00
    ld bc, $9500
    ld bc, $0590
    sub c
    dec b
    sub d
    dec b
    sub e
    dec b
    sub h
    dec b
    sub l
    dec b
    sub [hl]
    dec b
    sub a
    dec b
    xor c
    nop
    xor d
    nop
    xor e
    nop
    xor h
    nop
    xor l
    nop
    xor [hl]
    nop
    xor a
    nop
    or b
    nop
    ld a, [de]
    rlca
    db $f4
    inc bc
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    halt
    ld [hl], a
    nop
    ld a, b
    nop
    ld a, c
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld a, [$fb00]
    nop
    db $fc
    nop
    db $fd
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld c, [hl]
    inc bc
    ld c, a
    inc bc
    ld d, b
    inc bc
    ld d, c
    inc bc
    ld d, d
    inc bc
    ld d, e
    inc bc
    ld d, h
    inc bc
    ld d, l
    inc bc
    db $ec
    ld bc, $01ec
    db $ec
    ld bc, $01ec
    db $ed
    ld bc, $01ee
    rst $28
    ld bc, $01f0
    jp hl


    ld bc, $01ea
    or c
    ld [bc], a
    or d
    ld [bc], a
    add hl, bc
    nop
    ld a, [bc]
    nop
    or b
    ld [bc], a
    or b
    ld [bc], a
    dec c
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    ld bc, $0e00
    nop
    rrca
    nop
    ld bc, $c700
    ld bc, $00fb
    db $fc
    nop
    db $fd
    nop
    ret z

    ld bc, $01c9
    jp z, $cb01

    ld bc, $0899
    sbc c
    ld [$089a], sp
    sbc e
    ld [$089c], sp
    sbc l
    ld [$089e], sp
    sbc a
    ld [$061e], sp
    rra
    ld b, $20
    ld b, $21
    ld b, $85
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld a, d
    ld b, $7b
    ld b, $7c
    ld b, $7d
    ld b, $7e
    ld b, $7f
    ld b, $80
    ld b, $85
    nop
    and l
    inc b
    and l
    inc b
    and [hl]
    inc b
    ld l, e
    dec b
    ld l, h
    dec b
    xor c
    inc b
    xor d
    inc b
    adc [hl]
    inc b
    reti


    inc bc
    jp nc, $d304

    inc b
    call nc, $d504
    inc b
    sub $04
    reti


    inc bc
    reti


    inc bc
    xor c
    nop
    xor d
    nop
    inc d
    nop
    xor h
    nop
    ld h, b
    ld [bc], a
    xor [hl]
    nop
    xor a
    nop
    or b
    nop
    ld a, [c]
    nop
    di
    nop
    db $f4
    nop
    push af
    nop
    or $00
    rst $30
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    add l
    nop
    cp b
    dec b
    db $ec
    inc b
    cp c
    dec b
    cp d
    dec b
    ldh a, [rDIV]
    pop af
    inc b
    cp e
    dec b
    ld b, b
    ld bc, $07dc
    db $dd
    rlca
    sbc $07
    rst JumpTable
    rlca
    ldh [rTAC], a
    add l
    nop
    pop hl
    rlca
    cp h
    dec b
    cp l
    dec b
    db $dd
    inc b
    cp [hl]
    dec b
    or d
    ld bc, $05bf
    ret nz

    dec b
    add l
    nop
    jr c, jr_019_4689

    add hl, sp
    rlca
    ld a, [hl-]
    rlca
    dec sp
    rlca
    inc a

jr_019_4689:
    rlca
    dec a
    rlca
    ld a, $07
    ccf
    rlca
    jp $c400


    nop
    push bc
    nop
    add $00
    rst $00
    nop
    sub a
    nop
    ret z

    nop
    sbc c
    nop
    or e
    ld [bc], a
    or h
    ld [bc], a
    or l
    ld [bc], a
    or [hl]
    ld [bc], a
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    rst $38
    dec b
    nop
    ld b, $24
    ld b, $25
    ld b, $26
    ld b, $85
    nop
    add l
    nop
    dec b
    ld b, $85
    nop
    sbc a
    dec b
    and b
    dec b
    add e
    inc b
    and c
    dec b
    add l
    nop
    and d
    dec b
    and e
    dec b
    add d
    nop
    add e
    nop
    jr z, jr_019_46d8

    add hl, hl
    ld [bc], a

jr_019_46d8:
    ld a, [hli]
    ld [bc], a
    dec hl
    ld [bc], a
    inc l
    ld [bc], a
    dec l
    ld [bc], a
    sub a
    ld [bc], a
    sbc b
    ld [bc], a
    cp e
    ld bc, $0299
    sbc d
    ld [bc], a
    sbc e
    ld [bc], a
    sbc h
    ld [bc], a
    sbc l
    ld [bc], a
    sbc [hl]
    inc b
    sbc a
    inc b
    and b
    inc b
    and c
    inc b
    db $db
    inc bc
    and d
    inc b
    and e
    inc b
    and h
    inc b
    sbc [hl]
    inc b
    sbc a
    inc b
    and b
    inc b
    and c
    inc b
    db $db
    inc bc
    sbc b
    ld b, $a3
    inc b
    and h
    inc b
    add e
    inc b
    jr z, jr_019_471c

    add d
    inc b
    ld [de], a
    ld [$0813], sp
    add l
    nop

jr_019_471c:
    add l
    nop
    add l
    nop
    call c, $dd04
    inc b
    sbc $04
    rst JumpTable
    inc b
    ldh [rDIV], a
    pop hl
    inc b
    ld [c], a
    inc b
    db $e3
    inc b
    ld e, c
    nop
    ld e, d
    nop
    ld e, e
    nop
    ld e, h
    nop
    ld e, l
    nop
    ld e, [hl]
    nop
    ld e, a
    nop
    ld h, b
    nop
    ld c, a
    ld [bc], a
    ld d, b
    ld [bc], a
    ld d, c
    ld [bc], a
    ld d, d
    ld [bc], a
    ld d, e
    ld [bc], a
    ld d, h
    ld [bc], a
    ld d, l
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    db $db
    inc bc
    add l
    nop
    add l
    nop
    ret


    dec b
    add [hl]
    ld b, $87
    ld b, $88
    ld b, $89
    ld b, $8a
    ld b, $8b
    ld b, $8c
    ld b, $8d
    ld b, $00
    nop
    ld bc, $b300
    nop
    or h
    nop
    or l
    nop
    db $ed
    nop
    xor $00
    inc b
    nop
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    db $db
    inc bc
    add l
    nop
    add l
    nop
    rst $20
    dec b
    ld bc, $3b00
    nop
    inc a
    nop
    dec a
    nop
    ld a, $00   ; xor a
    ccf
    nop
    ld b, b
    nop
    ld b, c
    nop
    ld e, c
    dec b
    ld e, d
    dec b
    ld e, e
    dec b
    ld a, $05
    ld [bc], a
    dec b
    add l
    nop
    ld e, h
    dec b
    add l
    nop
    adc l
    inc b
    rlca
    rlca
    ld [$0907], sp
    rlca
    ld a, [bc]
    rlca
    sub d
    inc b
    ld h, e
    inc b
    sub e
    inc b
    di
    ld b, $f4
    ld b, $85
    nop
    add l
    nop
    push af
    ld b, $f6
    ld b, $f7
    ld b, $85
    nop
    inc b
    nop
    ld a, e
    nop
    ld [hl-], a
    nop
    ld a, h
    nop
    pop bc
    nop
    jp nz, $8000

    nop
    add c
    nop
    ret nz

    ld b, $c1
    ld b, $c2
    ld b, $c3
    ld b, $c4
    ld b, $c5
    ld b, $c6
    ld b, $85
    nop
    ld a, [bc]
    ld [$080b], sp
    inc c
    ld [$0085], sp
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld [hl], e
    ld [$0874], sp
    ld [hl], l
    ld [$0876], sp
    ld [hl], a
    ld [$0878], sp
    ld hl, $7501
    ld [$0574], sp
    ld [hl], l
    dec b
    add l
    nop
    db $76
    dec b
    jr jr_019_481e

    ld [hl], a
    dec b
    ld a, b
    dec b

jr_019_481e:
    ld a, c
    dec b
    sub l
    ld b, $85
    nop
    sbc h
    inc b
    sbc l
    inc b
    db $db
    inc bc
    add l
    nop
    ret z

    ld b, $c9
    ld b, $c6
    ld [$08c7], sp
    ret z

    ld [$08c9], sp
    jp z, $cb08

    ld [$08cc], sp
    call $2b08
    nop
    inc l
    nop
    dec l
    nop
    ld l, $00
    ld b, b
    ld bc, $00c6
    ld b, c
    ld bc, $0142
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    xor b
    inc bc
    xor c
    inc bc
    xor d
    inc bc
    xor e
    inc bc
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ei
    ld [bc], a
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    cp $02
    rst $38
    ld [bc], a
    nop
    inc bc
    ld bc, $7f03
    rlca
    add b
    rlca
    add c
    rlca
    add d
    rlca
    add e
    rlca
    add h
    rlca
    add l
    rlca
    add [hl]
    rlca
    ld a, d
    ld [bc], a
    ld a, e
    ld [bc], a
    ld a, e
    ld [bc], a
    ld a, h
    ld [bc], a
    ld h, l
    ld [bc], a
    add l
    nop
    add l
    nop
    add l
    nop
    sbc [hl]
    ld [bc], a
    sbc a
    ld [bc], a
    and b
    ld [bc], a
    add l
    nop
    add l
    nop
    add l
    nop
    and c
    ld [bc], a
    and d
    ld [bc], a
    db $fd
    ld b, $fe
    ld b, $3b
    dec b
    rst $38
    ld b, $00
    rlca
    ld bc, $0207
    rlca
    inc bc
    rlca
    ld h, a
    ld [bc], a
    ld l, b
    ld [bc], a
    ld c, e
    nop
    ld c, h
    nop
    ld c, l
    nop
    ld c, [hl]
    nop
    ld c, a
    nop
    ld d, b
    nop
    ld c, b
    ld [$0849], sp
    ld c, d
    ld [$0085], sp
    add l
    nop
    add l
    nop
    add l
    nop
    ld de, $0008
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    rst $20
    ld bc, $01e8
    ld b, d
    inc b
    ld b, e
    inc b
    ld b, h
    inc b
    ld b, l
    inc b
    ld b, [hl]
    inc b
    ld b, a
    inc b
    ld c, b
    inc b
    ld c, c
    inc b
    ld [c], a
    ld [bc], a
    db $e3
    ld [bc], a
    db $e4
    ld [bc], a
    push hl
    ld [bc], a
    and $02
    rst $20
    ld [bc], a
    add sp, $02
    jp hl


    ld [bc], a
    inc d
    inc b
    dec d
    inc b
    ld d, $04
    ldh a, [rTAC]
    pop af
    rlca
    ld a, [c]
    rlca
    di
    rlca
    db $f4
    rlca
    add e
    ld [$0339], sp
    add h
    ld [$0885], sp
    add [hl]
    ld [$0887], sp
    adc b
    ld [$0889], sp
    sub a
    inc b
    ld b, b
    ld bc, $0693
    push hl
    inc bc
    add l
    inc b
    sub [hl]
    inc bc
    sbc c
    inc b
    ccf
    ld bc, $00da
    ld l, d
    nop
    ld l, e
    nop
    ld bc, $bd00
    ld bc, $01bd
    cp [hl]
    ld bc, $01be
    add hl, sp
    ld bc, $013a
    dec sp
    ld bc, $013c
    dec a
    ld bc, $013e
    jp $2600


    nop
    add l
    nop
    add l
    nop
    adc l
    inc bc
    adc [hl]
    inc bc
    adc a
    inc bc
    sub b
    inc bc
    add l
    nop
    add l
    nop
    sub h
    inc b
    add [hl]
    inc b
    add [hl]
    inc b
    ld c, [hl]
    dec b
    ld c, c
    ld bc, $0464
    sub [hl]
    inc b
    ld h, b
    inc b
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc b
    nop
    db $e4
    nop
    push hl
    nop
    and $00
    rst $20
    nop
    add sp, $00
    jp nc, $d300

    nop
    add l
    nop
    inc d
    nop
    add l
    nop
    dec d
    nop
    dec d
    nop
    dec d
    nop
    ld d, $00
    add l
    nop
    ld h, l
    ld [bc], a
    pop af
    ld bc, $01f2
    di
    ld bc, $01f4
    push af
    ld bc, $01f6
    or $01
    or $01
    inc e
    inc b
    dec e
    inc b
    ld e, $04
    ld l, b
    ld bc, $041f
    jr nz, jr_019_49d0

    ld hl, $2204
    inc b

jr_019_49d0:
    sub a
    inc b
    ld b, b
    ld bc, $0693
    push hl
    inc bc
    add l
    inc b
    sub [hl]
    inc bc
    sbc c
    inc b
    sub h
    ld b, $05
    inc b
    ld b, $04
    rlca
    inc b
    ld [$0904], sp
    inc b
    ld a, [bc]
    inc b
    dec bc
    inc b
    add l
    nop
    rst $20
    ld b, $e8
    ld b, $e5
    dec b
    and $05
    jp hl


    ld b, $ea
    ld b, $eb
    ld b, $85
    nop
    db $ec
    inc bc
    db $ed
    inc bc
    inc sp
    ld b, $34
    ld b, $85
    nop
    dec [hl]
    ld b, $36
    ld b, $37
    ld b, $04
    nop
    ld a, e
    nop
    pop bc
    ld [bc], a
    ld a, l
    nop
    ld h, $02
    daa
    ld [bc], a
    add b
    nop
    add c
    nop
    dec hl
    nop
    inc l
    nop
    dec l
    nop
    ld l, $00
    cpl
    nop
    cp e
    ld bc, $00ba
    cp h
    ld bc, $0033
    inc [hl]
    nop
    dec [hl]
    nop
    ld [hl], $00
    cp h
    nop
    cp l
    nop
    cp [hl]
    nop
    cp a
    nop
    jr nz, jr_019_4a43

    or h

jr_019_4a43:
    ld bc, $0085
    adc d
    rlca
    adc e
    rlca
    ld [$0908], sp
    ld [$0085], sp
    jp z, $cb05

    dec b
    ld a, a
    ld bc, $05c1
    ld l, [hl]
    ld bc, $016f
    call z, $cd05
    dec b
    cp a
    inc bc
    ret nz

    inc bc
    pop bc
    inc bc
    jp nz, $c303

    inc bc
    add l
    nop
    add l
    nop
    add l
    nop
    jr nz, jr_019_4a72

jr_019_4a72:
    ld hl, $2200
    nop
    inc hl
    nop
    rst $30
    ld bc, $01f8
    ld sp, hl
    ld bc, $0026
    ld d, a
    ld b, $58
    ld b, $59
    ld b, $5a
    ld b, $5b
    ld b, $28
    inc b
    add hl, hl
    inc b
    ld a, [hli]
    inc b
    add d
    nop
    add e
    nop
    add h
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld c, [hl]
    ld b, $4f
    ld b, $50
    ld b, $51
    ld b, $52
    ld b, $19
    inc b
    ld a, [de]
    inc b
    dec de
    inc b
    adc $05
    rst $08
    dec b
    ret nc

    dec b
    pop de
    dec b
    jp nc, $d305

    dec b
    call nc, $8505
    nop
    ldh [rTIMA], a
    add l
    nop
    add l
    nop
    pop hl
    dec b
    ld [c], a
    dec b
    db $e3
    dec b
    db $e4
    dec b
    add l
    nop
    push bc
    rlca
    add $07
    rst $00
    rlca
    ret z

    rlca
    ret


    rlca
    jp z, $cb07

    rlca
    call z, $9407
    inc b
    add [hl]
    inc b
    add [hl]
    inc b
    sub l
    inc b
    ld c, c
    ld bc, $06c7
    sub [hl]
    inc b
    ld h, b
    inc b
    ld d, c
    nop
    ld d, d
    nop
    ld d, e
    nop
    ld d, h
    nop
    ld d, l
    nop
    ld d, [hl]
    nop
    ld d, a
    nop
    ld e, b
    nop
    xor c
    nop
    xor d
    nop
    xor e
    nop
    xor h
    nop
    xor l
    nop
    jp hl


    nop
    ld [$b000], a
    nop
    ld b, a
    ld [bc], a
    ld c, b
    ld [bc], a
    ld c, c
    ld [bc], a
    ld c, d
    ld [bc], a
    ld c, e
    ld [bc], a
    ld c, h
    ld [bc], a
    ld c, l
    ld [bc], a
    ld c, [hl]
    ld [bc], a
    add d
    nop
    add c
    ld [bc], a
    sbc a
    ld bc, $0282
    add e
    ld [bc], a
    ld a, [$0401]
    nop
    inc b
    nop
    ld b, d
    inc b
    ld h, [hl]
    ld b, $67
    ld b, $45
    inc b
    ld b, [hl]
    inc b
    ld b, a
    inc b
    ld c, b
    inc b
    ld c, c
    inc b
    dec b
    nop
    ld b, $00
    rlca
    nop
    ld [$0900], sp
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    inc c
    nop
    ld c, e
    ld bc, HeaderMaskROMVersion
    ld c, l
    ld bc, HeaderGlobalChecksum
    ld c, a
    ld bc, $0150
    ld d, c
    ld bc, $0152
    add d
    dec b
    add e
    dec b
    add h
    dec b
    add l
    dec b
    add [hl]
    dec b
    add a
    dec b
    adc b
    dec b
    adc c
    dec b
    sbc e
    nop
    sbc h
    nop
    sbc l
    nop
    sbc [hl]
    nop
    sbc a
    nop
    and b
    nop
    and c
    nop
    and d
    nop
    ld l, c
    ld bc, $05da
    db $db
    dec b
    call c, $dd05
    dec b
    sbc $05
    rst JumpTable
    dec b
    add l
    nop
    sbc b
    dec b
    sbc c
    dec b
    sbc d
    dec b
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    inc e
    inc b
    dec e
    inc b
    ld d, e
    ld b, $68
    ld bc, $041f
    ld d, h
    ld b, $55
    ld b, $56
    ld b, $85
    nop
    add l
    nop
    add l
    nop
    adc d
    rlca
    add l
    nop
    add l
    nop
    ld l, e
    ld [$086c], sp
    cp [hl]
    ld [$08bf], sp
    ret nz

    ld [$08c1], sp
    jp nz, $c308

    ld [$08c4], sp
    push bc
    ld [$0085], sp
    cp b
    dec b
    ld a, c
    ld bc, $017a
    push bc
    dec b
    ld a, h
    ld bc, $05c6
    rst $00
    dec b
    add l
    nop
    add l
    nop
    add l
    nop
    add d
    rlca
    add e
    rlca
    add h
    rlca
    add l
    rlca
    add [hl]
    rlca
    sbc e
    nop
    sbc h
    nop
    sbc l
    nop
    sbc [hl]
    nop
    sbc a
    nop
    and b
    nop
    and c
    nop
    db $e3
    nop
    sub b
    ld [bc], a
    sub c
    ld [bc], a
    sub d
    ld [bc], a
    sub e
    ld [bc], a
    sub h
    ld [bc], a
    sub l
    ld [bc], a
    sub [hl]
    ld [bc], a
    adc b
    ld [bc], a
    rrca
    ld [$0810], sp
    ld a, c
    ld [$0085], sp
    add l
    nop
    add l
    nop
    ld a, d
    ld [$087b], sp
    add l
    inc b
    add l
    inc b
    add l
    inc b
    add [hl]
    inc b
    sub [hl]
    inc bc
    sub [hl]
    inc bc
    sub [hl]
    inc bc
    sub [hl]
    inc bc
    ld [hl], a
    rlca
    ld a, b
    rlca
    ld a, c
    rlca
    ld a, d
    rlca
    ld a, e
    rlca
    ld a, h
    rlca
    ld a, l
    rlca
    ld a, [hl]
    rlca
    ld [hl-], a
    inc b
    inc sp
    inc b
    inc [hl]
    inc b
    ld [hl], $04
    dec [hl]
    inc b
    cp $07
    rst $38
    rlca
    nop
    ld [$0822], sp
    inc hl
    ld [$0824], sp
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld a, [hl-]
    inc b
    dec sp
    inc b
    inc a
    inc b
    dec a
    inc b
    ld a, $04
    ccf
    inc b
    ld b, b
    inc b
    ld b, c
    inc b
    ld l, l
    ld [$086e], sp
    ld l, a
    ld [$0085], sp
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld b, b
    ld bc, $07dc
    db $dd
    rlca
    sbc $07
    dec de
    ld [$0085], sp
    add l
    nop
    add d
    ld [$070b], sp
    inc c
    rlca
    adc b
    inc bc
    xor $06
    rst $28
    ld b, $f0
    ld b, $f1
    ld b, $f2
    ld b, $85
    nop
    ld h, a
    ld bc, $0168
    ld l, c
    ld bc, $016a
    ld l, e
    ld bc, $016c
    ld l, l
    ld bc, $0494
    add [hl]
    inc b
    add [hl]
    inc b
    sub l
    inc b
    ld c, c
    ld bc, $0464
    sub d
    ld b, $60
    inc b
    ld a, [hl-]
    inc b
    dec sp
    inc b
    inc a
    inc b
    dec a
    inc b
    ld a, $04
    ccf
    inc b
    ld b, b
    inc b
    sbc e
    ld b, $76
    nop
    ld [hl], a
    nop
    ld a, b
    nop
    ld a, c
    nop
    dec bc
    nop
    inc c
    nop
    ret nz

    ld [bc], a
    ld a, [$8501]
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld c, e
    ld [$084c], sp
    ld c, l
    ld [$0085], sp
    dec c
    ld [$080e], sp
    add l
    nop
    add l
    nop
    ld d, a
    ld [$0085], sp
    ld e, b
    ld [$0598], sp
    sbc $01
    rst JumpTable
    ld bc, $01e0
    pop hl
    ld bc, $01e2
    db $e3
    ld bc, $01e4
    push hl
    ld bc, $03df
    ldh [$03], a
    pop hl
    inc bc
    ld [c], a
    inc bc
    db $e3
    inc bc
    add b
    ld bc, $0181
    db $e4
    inc bc
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    jp c, $8504

    nop
    add l
    nop
    db $db
    inc b
    adc d
    ld bc, $0043
    ld b, h
    nop
    ld b, l
    nop
    ld b, [hl]
    nop
    ld b, a
    nop
    ld c, b
    nop
    ld c, c
    nop
    ld l, e
    ld bc, $016a
    ld bc, $7204
    ld bc, $016c
    ld [bc], a
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc sp
    dec b
    inc [hl]
    dec b
    dec [hl]
    dec b
    ld [hl], $05
    scf
    dec b
    jr c, jr_019_4d61

    add hl, sp
    dec b
    ld a, [hl-]
    dec b
    add l

jr_019_4d61:
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    push hl
    dec b
    and $05
    add d
    inc b
    add hl, hl
    rlca
    ld a, [hli]
    rlca
    dec hl
    rlca
    inc l
    rlca
    dec l
    rlca
    ld l, $07
    cpl
    rlca
    jr nc, jr_019_4d87

    adc d
    nop
    adc e
    nop
    adc h
    nop
    adc l

jr_019_4d87:
    nop
    ld l, $02
    cpl
    ld [bc], a
    jr nc, @+$04

    ld sp, $8502
    nop
    add e
    nop
    inc b
    nop
    jp nz, $c302

    ld [bc], a
    jr z, jr_019_4d9e

    add l
    nop

jr_019_4d9e:
    call nz, $c902
    nop
    jp z, $cb00

    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $1300
    nop
    inc de
    nop
    inc de
    nop
    inc de
    nop
    ld bc, $1400
    nop
    inc d
    nop
    inc d
    nop
    ld a, $06
    ccf
    ld b, $40
    ld b, $41
    ld b, $6c
    ld bc, $0642
    ld b, e
    ld b, $44
    ld b, $68
    ld [$0869], sp
    ld l, d
    ld [$0782], sp
    add e
    rlca
    add h
    rlca
    add l
    rlca
    add [hl]
    rlca
    db $ec
    ld b, $ed
    ld b, $88
    inc bc
    xor $06
    rst $28
    ld b, $f0
    ld b, $f1
    ld b, $f2
    ld b, $be
    inc b
    add hl, de
    dec b
    add $00
    ld a, [de]
    dec b
    dec de
    dec b
    inc e
    dec b
    dec e
    dec b
    call nz, $8500
    nop
    add l
    nop
    dec h
    dec b
    ld h, $05
    daa
    dec b
    jr z, jr_019_4e11

    add hl, hl
    dec b
    ld a, [hli]
    dec b
    di

jr_019_4e11:
    dec b
    db $f4
    dec b
    push af
    dec b
    or $05
    add l
    nop
    push hl
    dec b
    and $05
    add d
    inc b
    or a
    dec b
    rra
    dec b
    jr nz, jr_019_4e2b

    ld hl, $bb05
    nop
    inc hl

jr_019_4e2b:
    dec b
    ld h, a
    dec b
    add l
    nop
    nop
    nop
    ld bc, $b300
    nop
    or h
    nop
    or l
    nop
    sub e
    ld bc, $0194
    inc b
    nop
    dec sp
    inc bc
    inc a
    inc bc
    dec a
    inc bc
    ld a, $03
    ccf
    inc bc
    ld b, b
    inc bc
    ld b, c
    inc bc
    ld b, d
    inc bc
    xor e
    ld [bc], a
    xor h
    ld [bc], a
    xor l
    ld [bc], a
    add l
    nop
    add l
    nop
    dec sp
    nop
    xor [hl]
    ld [bc], a
    inc b
    nop
    dec sp
    dec b
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    cp b
    ld [$08b9], sp
    ld a, [$f907]
    rlca
    cp d
    ld [$08bb], sp
    cp h
    ld [$08bd], sp
    add l
    nop
    add l
    nop
    ld e, h
    ld [$0085], sp
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    db $db
    inc bc
    add l
    nop
    add l
    nop
    db $fc
    ld b, $3a
    inc b
    dec sp
    inc b
    inc a
    inc b
    jp z, $ca00

    ld b, $cb
    ld b, $cc
    ld b, $cd
    ld b, $0d
    ld [$080e], sp
    add l
    nop
    rra
    ld [$072b], sp
    jr nz, jr_019_4ec4

    add l
    nop
    ld hl, $8508
    nop
    add l
    nop

jr_019_4ec4:
    or c
    nop
    add l
    nop
    add l
    nop
    or d
    nop
    add l
    nop
    add l
    nop
    ld h, $01
    ld bc, $4b00
    nop
    ld c, h
    nop
    ld c, l
    nop
    ld c, [hl]
    nop
    ld c, a
    nop
    ld d, b
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    ld bc, $0e00
    nop
    or a
    nop
    ld bc, $cd00
    nop
    adc $00
    rst $08
    nop
    ret nc

    nop
    pop de
    nop
    jp nc, $d300

    nop
    ld bc, $f400
    ld [bc], a
    ld hl, sp+$02
    rst $30
    ld [bc], a
    sbc [hl]
    inc bc
    ld sp, hl
    ld [bc], a
    ld a, [$f902]
    ld [bc], a
    sbc a
    inc bc
    ld c, d
    nop
    ld bc, $4b00
    nop
    ld c, h
    nop
    ld c, l
    nop
    ld c, [hl]
    nop
    ld c, a
    nop
    ld d, b
    nop
    ld a, d
    dec b
    ld a, e
    dec b
    ld a, h
    dec b
    ld a, l
    dec b
    ld a, [hl]
    dec b
    ld a, a
    dec b
    add b
    dec b
    add c
    dec b
    and l
    ld bc, $01a6
    and a
    ld bc, $01a8
    xor c
    ld bc, $00a7
    xor b
    nop
    add l
    nop
    dec b
    inc b
    ld b, $04
    rlca
    inc b
    db $ec
    rlca
    db $ed
    rlca
    and h
    inc b
    xor $07
    rst $28
    rlca
    ld [hl], e
    ld b, $74
    ld b, $3f
    dec b
    ld [hl], l
    ld b, $76
    ld b, $77
    ld b, $78
    ld b, $79
    ld b, $d6
    ld b, $d7
    ld b, $d8
    ld b, $d9
    ld b, $85
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld h, e
    ld bc, $0164
    ld h, l
    ld bc, $0166
    ld d, [hl]
    ld bc, $0157
    ld e, b
    ld bc, $0159
    jr nc, jr_019_4f8a

    ld sp, $3208
    ld [$0782], sp
    add e
    rlca

jr_019_4f8a:
    add h
    rlca
    add l
    rlca
    add [hl]
    rlca
    ld a, [hl]
    inc b
    ld a, a
    inc b
    add b
    inc b
    add c
    inc b
    add d
    inc b
    add e
    inc b
    add h
    inc b
    add l
    nop
    rrca
    ld [$0810], sp
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld a, [c]
    ld [bc], a
    sub l
    inc bc
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    sub [hl]
    inc bc
    call nc, $d503
    inc bc
    ld l, a
    rlca
    ld [hl], b
    rlca
    ld [hl], c
    rlca
    ld [hl], d
    rlca
    ld [hl], e
    rlca
    ld [hl], h
    rlca
    ld [hl], l
    rlca
    db $76
    rlca
    sub d
    nop
    sub e
    nop
    sub h
    nop
    sub l
    nop
    sub [hl]
    nop
    sub a
    nop
    sbc b
    nop
    sbc c
    nop
    adc b
    ld [bc], a
    adc c
    ld [bc], a
    adc d
    ld [bc], a
    adc e
    ld [bc], a
    adc h
    ld [bc], a
    adc l
    ld [bc], a
    adc [hl]
    ld [bc], a
    adc a
    ld [bc], a
    add e
    inc bc
    add h
    inc bc
    add l
    inc bc
    add [hl]
    inc bc
    add a
    inc bc
    adc b
    inc bc
    adc c
    inc bc
    adc d
    inc bc
    rst $28
    ld [bc], a
    ldh a, [rSC]
    pop af
    ld [bc], a
    ld a, [c]
    ld [bc], a
    di
    ld [bc], a
    sbc e
    inc bc
    sbc h
    inc bc
    sbc l
    inc bc
    db $e4
    nop
    push hl
    nop
    and $00
    rst $20
    nop
    add sp, $00
    and a
    nop
    xor b
    nop
    ld bc, $f200
    ld [bc], a
    sub l
    inc bc
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    sub [hl]
    inc bc
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    push bc
    inc b
    xor h
    dec b
    xor l
    dec b
    xor [hl]
    dec b
    xor a
    dec b
    or b
    dec b
    add l
    nop
    or c
    dec b
    ret


    nop
    jp z, $cb00

    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld [hl-], a
    inc b
    inc sp
    inc b
    inc [hl]
    inc b
    dec [hl]
    inc b
    ld [hl], $04
    scf
    inc b
    jr c, jr_019_5062

    add hl, sp
    inc b
    ld c, $01

jr_019_5062:
    ld bc, $8b00
    ld bc, $018c
    adc l
    ld bc, $018e
    adc a
    ld bc, $0190
    and l
    inc b
    and l
    inc b
    and [hl]
    inc b
    and a
    inc b
    xor b
    inc b
    xor c
    inc b
    xor d
    inc b
    adc [hl]
    inc b
    inc b
    nop
    rlca
    ld bc, $0108
    ld [hl-], a
    nop
    add hl, bc
    ld bc, $007d
    add b
    nop
    add c
    nop
    adc d
    nop
    adc e
    nop
    adc h
    nop
    adc l
    nop
    jp nc, $d301

    ld bc, $01d4
    push de
    ld bc, $0423
    inc h
    inc b
    push af
    rlca
    or $07
    rst $30
    rlca
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld a, [$4a07]
    ld bc, $0085
    ld bc, $7600
    ld bc, $0177
    ld a, b
    ld bc, $0179
    ld a, d
    ld bc, $0085
    dec h
    dec b
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add d
    inc b
    di
    inc b
    db $f4
    inc b
    push af
    inc b
    or $04
    rst $30
    inc b
    ld hl, sp+$04
    ld sp, hl
    inc b
    add l
    nop
    add hl, bc
    dec b
    add l
    nop
    ld a, [bc]
    dec b
    dec bc
    dec b
    inc c
    dec b
    dec c
    dec b
    ld c, $05
    rrca
    dec b
    ld c, [hl]
    ld [$084f], sp
    add l
    nop
    add d
    rlca
    add e
    rlca
    add h
    rlca
    add l
    rlca
    add [hl]
    rlca
    sub $01
    rst AddAToHL
    ld bc, $01d8
    reti


    ld bc, $01da
    db $db
    ld bc, $01dc
    db $dd
    ld bc, $02d1
    jp nc, $d302

    ld [bc], a
    call nc, $d502
    ld [bc], a
    sub $02
    rst AddAToHL
    ld [bc], a
    ret c

    ld [bc], a
    inc b
    nop
    call z, $3201
    nop
    call $1b01
    ld bc, $01bc
    add b
    nop
    add c
    nop
    ld hl, $2207
    rlca
    inc hl
    rlca
    inc h
    rlca
    dec h
    rlca
    ld h, $07
    daa
    rlca
    jr z, jr_019_5147

    ld a, [hl-]
    ld [bc], a
    dec sp
    ld [bc], a
    inc a
    ld [bc], a
    dec a

jr_019_5147:
    ld [bc], a
    ld a, $02
    ccf
    ld [bc], a
    ld b, b
    ld [bc], a
    ld b, c
    ld [bc], a
    ei
    rlca
    db $fc
    rlca
    ld l, l
    ld bc, $042d
    db $fd
    rlca
    cpl
    inc b
    jr nc, jr_019_5162

    ld sp, $0004
    nop

jr_019_5162:
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    jp Jump_019_5600


    inc bc
    ld d, a
    inc bc
    ld e, b
    inc bc
    ld e, c
    inc bc
    ld e, d
    inc bc
    ld e, e
    inc bc
    add l
    nop
    ld e, h
    inc bc
    adc d
    dec b
    add l
    nop
    adc e
    dec b
    adc h
    dec b
    adc l
    dec b
    adc [hl]
    dec b
    add l
    nop
    adc a
    dec b
    add l
    nop
    add l
    nop
    push de
    nop
    add l
    nop
    add l
    nop
    adc c
    ld bc, $0085
    add l
    nop
    add l
    nop
    add l
    nop
    ld e, l
    dec b
    ld e, [hl]
    dec b
    ld e, a
    dec b
    ld h, b
    dec b
    ld h, c
    dec b
    ld h, d
    dec b
    or [hl]
    rlca
    or a
    rlca
    cp b
    rlca
    cp c
    rlca
    cp d
    rlca
    cp e
    rlca
    cp h
    rlca
    cp l
    rlca
    reti


    inc bc
    reti


    inc bc
    reti


    inc bc
    rst AddAToHL
    inc b
    ret c

    inc b
    reti


    inc b
    reti


    inc bc
    reti


    inc bc
    ld b, d
    nop
    ld b, e
    nop
    ld b, h
    nop
    ld b, l
    nop
    ld b, [hl]
    nop
    ld b, a
    nop
    ld c, b
    nop
    ld c, c
    nop
    inc sp
    inc bc
    inc [hl]
    inc bc
    dec [hl]
    inc bc
    ld [hl], $03
    scf
    inc bc
    jr c, jr_019_51ef

    add hl, sp
    inc bc
    ld a, [hl-]

jr_019_51ef:
    inc bc
    inc b
    nop
    ld a, e
    nop
    ld [hl-], a
    nop
    jp nz, $dc00

    nop
    cp $00  ; and a / or a
    add b
    nop
    add c
    nop
    add a
    inc b
    add a
    inc b
    adc [hl]
    ld b, $8e
    ld b, $71
    ld b, $8f
    ld b, $90
    ld b, $8a
    ld b, $17
    ld bc, $0127
    jr z, @+$03

    ld bc, $6c00
    nop
    ld l, h
    nop
    ld l, l
    nop
    ld l, l
    nop
    sbc [hl]
    ld bc, $00ca
    rlc b
    sbc a
    ld bc, $01a0
    and c
    ld bc, $01a2
    and e
    ld bc, $00c3
    add l
    nop
    ld [de], a
    dec b
    inc de
    dec b
    inc d
    dec b
    dec d
    dec b
    add l
    nop
    ld d, $05
    add l
    nop
    add l
    nop
    add l
    nop
    jp c, $db06

    ld b, $dc
    ld b, $dd
    ld b, $de
    ld b, $b0
    ld [$08b1], sp
    or d
    ld [$08b3], sp
    or h
    ld [$08b5], sp
    or [hl]
    ld [$08b7], sp
    ld b, l
    ld b, $46
    ld b, $47
    ld b, $48
    ld b, $49
    ld b, $0a
    inc b
    dec bc
    inc b
    add l
    nop
    and l
    inc b
    and l
    inc b
    and [hl]
    inc b
    inc c
    ld b, $85
    nop
    dec c
    ld b, $aa
    inc b
    adc [hl]
    inc b
    jr nz, jr_019_5282

jr_019_5282:
    jr nz, jr_019_5284

jr_019_5284:
    inc b
    nop
    inc b
    nop
    daa
    nop
    jr z, jr_019_528c

jr_019_528c:
    add hl, hl
    nop
    ld a, [hli]
    nop
    dec hl
    dec b
    inc l
    dec b
    dec l
    dec b
    ld l, $05
    cpl
    dec b
    jr nc, jr_019_52a1

    add l
    nop
    add l
    nop
    or b

jr_019_52a1:
    ld [bc], a
    or b
    ld [bc], a
    or b
    ld [bc], a
    or b
    ld [bc], a
    or b
    ld [bc], a
    or b
    ld [bc], a
    or b
    ld [bc], a
    or b
    ld [bc], a
    ld l, b
    ld b, $69
    ld b, $4c
    inc b
    ld l, d
    ld b, $6b
    ld b, $6c
    ld b, $6d
    ld b, $9d
    ld b, $4a
    inc b
    ld c, e
    inc b
    ld c, h
    inc b
    ld c, l
    inc b
    ld c, [hl]
    inc b
    ld c, a
    inc b
    ld d, b
    inc b
    jr nc, jr_019_52d0

jr_019_52d0:
    jr nz, jr_019_52d2

jr_019_52d2:
    ld hl, $2200
    nop
    inc hl
    nop
    inc h
    nop
    dec h
    nop
    inc b
    nop
    ld h, $00
    ld a, [c]
    ld [bc], a
    rst AddAToHL
    rlca
    ret c

    rlca
    reti


    rlca
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    jp c, $db07

    rlca
    add l
    nop
    add l
    nop
    add l
    nop
    inc sp
    ld [$078b], sp
    inc [hl]
    ld [$0835], sp
    ld [hl], $08
    add l
    nop
    pop de
    inc bc
    jp nc, $d303

    inc bc
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    nop
    nop
    ld bc, $b300
    nop
    or h
    nop
    or l
    nop
    or [hl]
    nop
    or [hl]
    nop
    inc b
    nop
    rst $20
    rlca
    rst $20
    rlca
    add l
    nop
    add sp, $07
    add l
    nop
    jp hl


    rlca
    ld [$eb07], a
    rlca
    ret nz

    nop
    ld bc, $4b00
    nop
    ld c, h
    nop
    ld c, l
    nop
    ld c, [hl]
    nop
    ld c, a
    nop
    ld d, b
    nop
    push de
    dec b
    sub $05
    ld a, c
    ld bc, $017a
    rst AddAToHL
    dec b
    ret c

    dec b
    push de
    dec b
    reti


    dec b
    adc l
    inc b
    adc [hl]
    inc b
    adc a
    inc b
    sub b
    inc b
    sub c
    inc b
    sub d
    inc b
    ld h, e
    inc b
    sub e
    inc b
    ld e, b
    rlca
    rla
    ld [bc], a
    ld e, c
    rlca
    ld e, d
    rlca
    ld e, e
    rlca
    ld e, h
    rlca
    ld e, l
    rlca
    ld e, [hl]
    rlca
    rrca
    ld [$0810], sp
    xor c
    rlca
    xor d
    rlca
    xor e
    rlca
    xor h
    rlca
    xor l
    rlca
    xor [hl]
    rlca
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld bc, $0100
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld l, l
    nop
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    db $db
    inc bc
    cp a
    inc b
    add l
    nop
    add l
    nop
    db $76
    inc b
    ld [hl], a
    inc b
    ld a, b
    inc b
    ld a, c
    inc b
    ld a, d
    inc b
    ld a, e
    inc b
    ld a, h
    inc b
    ld a, l
    inc b
    ld h, a
    rlca
    ld l, b
    rlca
    ld l, c
    rlca
    ld l, d
    rlca
    ld l, e
    rlca
    ld l, h
    rlca
    ld l, l
    rlca
    ld l, [hl]
    rlca
    adc d
    nop
    adc e
    nop
    adc h
    nop
    adc l
    nop
    adc [hl]
    nop
    adc a
    nop
    sub b
    nop
    sub c
    nop
    adc d
    nop
    adc e
    nop
    adc h
    nop
    adc l
    nop
    add h
    ld [bc], a
    add l
    ld [bc], a
    add [hl]
    ld [bc], a
    add a
    ld [bc], a
    cp d
    inc b
    add l
    nop
    dec bc
    ld b, $85
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld h, b
    ld [$0861], sp
    ld h, d
    ld [$0863], sp
    ld h, h
    ld [$0865], sp
    ld h, [hl]
    ld [$0867], sp
    cp $01
    rst $38
    ld bc, $0200
    ld bc, $0202
    ld [bc], a
    inc bc
    ld [bc], a
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    add l
    nop
    add l
    nop
    ld d, l
    dec b
    ld d, [hl]
    dec b
    ld c, $01
    ld d, a
    dec b
    or d
    ld bc, $0558
    ret


    ld [bc], a
    jp z, $cb02

    ld [bc], a
    call z, $cd02
    ld [bc], a
    adc $02
    rst $08
    ld [bc], a
    ret nc

    ld [bc], a
    call nz, $c503
    inc bc
    add $03
    rst $00
    inc bc
    ret z

    inc bc
    ret


    inc bc
    jp z, $cb03

    inc bc
    ld bc, $0100
    nop
    call nc, Boot
    nop
    ld bc, $d500
    nop
    ld bc, $0100
    nop
    add hl, de
    rlca
    ld a, [de]
    rlca
    dec de
    rlca
    inc e
    rlca
    dec e
    rlca
    ld e, $07
    rra
    rlca
    jr nz, jr_019_5477

    ld [hl-], a
    ld [bc], a
    inc sp
    ld [bc], a
    inc [hl]
    ld [bc], a
    dec [hl]

jr_019_5477:
    ld [bc], a
    ld [hl], $02
    scf
    ld [bc], a
    jr c, jr_019_5480

    add hl, sp
    ld [bc], a

jr_019_5480:
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    db $db
    inc bc
    add l
    nop
    add l
    nop
    add l
    nop
    ld l, c
    nop
    ld l, d
    nop
    ld l, e
    nop
    ld bc, $6c00
    nop
    ld l, h
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld c, c
    ld bc, $000d
    ld c, e
    nop
    ld c, h
    nop
    ld c, l
    nop
    ld c, [hl]
    nop
    ld c, a
    nop
    ld d, b
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add hl, sp
    inc bc
    add l
    nop
    add l
    nop
    add l
    nop
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    db $db
    inc bc
    add l
    nop
    add l
    nop
    or d
    dec b
    inc sp
    nop
    inc [hl]
    nop
    dec [hl]
    nop
    ld [hl], $00
    ld a, [bc]
    ld bc, $010b
    inc c
    ld bc, $010d
    sbc h
    ld b, $66
    ld b, $67
    ld b, $45
    inc b
    ld b, [hl]
    inc b
    ld b, a
    inc b
    ld c, b
    inc b
    ld c, c
    inc b
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    db $db
    inc bc
    sbc l
    dec b
    ld l, c
    dec b
    sbc [hl]
    dec b
    dec hl
    nop
    inc l
    nop
    dec l
    nop
    ld l, $00
    cpl
    nop
    jr nc, jr_019_550c

jr_019_550c:
    cp d
    nop
    cp e
    nop
    reti


    inc bc
    ld a, b
    ld bc, $03da
    db $db
    inc bc
    push hl
    inc bc
    ld a, [hli]
    ld b, $2b
    ld b, $2c
    ld b, $0d
    ld [$080e], sp
    add hl, de
    rlca
    sbc d
    rlca
    sbc e
    rlca
    sbc h
    rlca
    sbc l
    rlca
    sbc [hl]
    rlca
    dec hl
    inc bc
    inc l
    inc bc
    dec l
    inc bc
    ld l, $03
    cpl
    inc bc
    jr nc, jr_019_553f

    ld sp, $3203

jr_019_553f:
    inc bc
    add e
    ld bc, $0184
    add l
    ld bc, $0186
    add l
    nop
    and a
    nop
    xor b
    nop
    add a
    ld bc, $08a8
    xor c
    ld [$08aa], sp
    xor e
    ld [$08ac], sp
    xor l
    ld [$08ae], sp
    xor a
    ld [$01b6], sp
    or a
    ld bc, $01b8
    cp c
    ld bc, $01ba
    and a
    nop
    xor b
    nop
    ld bc, $ec00
    inc bc
    db $ed
    inc bc
    ld [hl], e
    ld bc, $0174
    ld [hl], l
    ld bc, $03ee
    rst $28
    inc bc
    ldh a, [$03]
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    ld de, $1200
    nop
    ld [hl], l
    inc bc
    db $76
    inc bc
    ld [hl], a
    inc bc
    ld a, b
    inc bc
    ld a, c
    inc bc
    ld a, d
    inc bc
    ld a, e
    inc bc
    ld a, h
    inc bc
    add l
    nop
    add l
    nop
    ld b, $06
    rlca
    ld b, $08
    ld b, $09
    ld b, $0a
    ld b, $3b
    dec b
    add l
    nop
    push hl
    inc bc
    and $03
    rst $20
    inc bc
    add sp, $03
    jp hl


    inc bc
    ld [$eb03], a
    inc bc
    ld sp, hl
    inc bc
    ld a, [$fb03]
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    cp $03
    rst $38
    inc bc
    nop
    inc b
    push bc
    inc b
    add $04
    rst $00
    inc b
    ret z

    inc b
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld a, [$fb00]
    nop
    db $fc
    nop
    db $fd
    nop
    ld a, l
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    add h
    nop
    ld a, a
    ld [bc], a

Jump_019_5600:
    adc e
    inc bc
    adc h
    inc bc
    adc l
    inc bc
    adc [hl]
    inc bc
    adc a
    inc bc
    sub b
    inc bc
    add l
    nop
    add l
    nop
    ld l, a
    inc b
    ld [hl], b
    inc b
    ld [hl], c
    inc b
    ld [hl], d
    inc b
    ld [hl], e
    inc b
    ld [hl], h
    inc b
    ld [hl], l
    inc b
    add l
    nop
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld e, h
    ld b, $5d
    ld b, $44
    ld [bc], a
    ld [hl], a
    ld bc, $042e
    ld e, [hl]
    ld b, $5f
    ld b, $60
    ld b, $b5
    ld b, $33
    ld b, $b6
    ld b, $b7
    ld b, $b8
    ld b, $b9
    ld b, $ba
    ld b, $85
    nop
    scf
    ld [$0085], sp
    jr c, jr_019_565e

    add hl, sp
    ld [$0085], sp
    add l
    nop
    add l
    nop

jr_019_565e:
    add l
    nop
    inc hl
    inc b
    inc h
    inc b
    dec h
    inc b
    ld h, $04
    daa
    inc b
    jr z, jr_019_5670

    add hl, hl
    inc b
    ld a, [hli]
    inc b

jr_019_5670:
    add l
    nop
    sbc $02
    rst JumpTable
    ld [bc], a
    ldh [rSC], a
    pop hl
    ld [bc], a
    add l
    nop
    add l
    nop
    add l
    nop
    ld e, a
    rlca
    ld h, b
    rlca
    ld h, c
    rlca
    ld h, d
    rlca
    ld h, e
    rlca
    ld h, h
    rlca
    ld h, l
    rlca
    ld h, [hl]
    rlca
    jr nz, jr_019_5692

jr_019_5692:
    jr nz, jr_019_5694

jr_019_5694:
    ld h, c
    ld [bc], a
    ld h, c
    ld [bc], a
    daa
    nop
    jr z, jr_019_569c

jr_019_569c:
    add hl, hl
    nop
    ld a, [hli]
    nop
    sbc e
    dec b
    add l
    nop
    sbc h
    dec b
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add d
    inc b
    ret


    inc b
    jp z, $cb04

    inc b
    call z, $3104
    ld bc, $0132
    inc sp
    ld bc, HeaderTitle
    dec [hl]
    ld bc, $0136
    scf
    ld bc, $0138
    dec hl
    nop
    inc l
    nop
    dec l
    nop
    ld l, $00
    cpl
    nop
    jr nc, jr_019_56dc

jr_019_56dc:
    add l
    nop
    or b
    ld [bc], a
    db $e4
    inc b
    push hl
    inc b
    and $04
    rst $20
    inc b
    add sp, $04
    jp hl


    inc b
    ld [$8504], a
    nop
    ld c, $01
    ld bc, $4b00
    nop
    ld c, h
    nop
    ld c, l
    nop
    ld c, [hl]
    nop
    ld c, a
    nop
    ld d, b
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add hl, sp
    dec b
    db $eb
    dec b
    db $ec
    dec b
    add l
    nop
    sub h
    inc b
    add [hl]
    inc b
    add [hl]
    inc b
    sub l
    inc b
    ld c, c
    ld bc, $0464
    sub [hl]
    inc b
    ld h, b
    inc b
    ld bc, $0208
    ld [$0085], sp
    inc bc
    ld [$0804], sp
    dec b
    ld [$0806], sp
    rlca
    ld [$0517], sp
    jr jr_019_5739

    add l
    nop
    add l
    nop
    add l

jr_019_5739:
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    adc d
    nop
    adc e
    nop
    adc h
    nop
    adc l
    nop
    xor [hl]
    ld bc, $01af
    or b
    ld bc, $01b1
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    call nz, $8505
    nop
    add l
    nop
    add l
    nop
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    add l
    nop
    db $d3
    rlca
    call nc, $d507
    rlca
    sub $07
    sbc e
    nop
    sbc h
    nop
    sbc l
    nop
    cpl
    ld bc, $009f
    and b
    nop
    and c
    nop
    add d
    ld bc, $00a9
    xor d
    nop
    ld e, a
    ld [bc], a
    xor h
    nop
    ld h, b
    ld [bc], a
    xor [hl]
    nop
    xor a
    nop
    or b
    nop
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    add l
    nop
    add l
    nop
    sub d
    inc bc
    sub e
    inc bc
    sub h
    inc bc
    xor l
    ld b, $ae
    ld b, $af
    ld b, $b0
    ld b, $b1
    ld b, $b2
    ld b, $b3
    ld b, $b4
    ld b, $01
    ld [$0802], sp
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    rlca
    ld [$03cc], sp
    call $ce03
    inc bc
    rst $08
    inc bc
    ret nc

    inc bc
    add l
    nop
    add l
    nop
    add l
    nop
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    db $db
    inc bc
    ld l, b
    dec b
    ld l, c
    dec b
    ld l, d
    dec b
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc b
    nop
    add l
    nop
    push hl
    inc bc
    ld [hl-], a
    ld b, $e7
    inc bc
    add sp, $03
    jp hl


    inc bc
    ld [$eb03], a
    inc bc
    ld de, $1207
    rlca
    inc de
    rlca
    inc d
    rlca
    dec d
    rlca
    ld d, $07
    rla
    rlca
    jr jr_019_5817

    add l
    nop
    add l
    nop
    add l
    nop
    rst $28

jr_019_5817:
    dec b
    ldh a, [rTIMA]
    add l
    nop
    pop af
    dec b
    ld a, [c]
    dec b
    rrca
    ld [$0810], sp
    add l
    nop
    ld b, e
    ld [$0844], sp
    ld b, l
    ld [$0846], sp
    ld b, a
    ld [$0139], sp
    ld a, [hl-]
    ld bc, $013b
    inc a
    ld bc, $015f
    ld h, b
    ld bc, $0161
    ld h, d
    ld bc, $0085
    add l
    nop
    adc b
    inc bc
    xor $06
    rst $28
    ld b, $f0
    ld b, $f1
    ld b, $f2
    ld b, $a7
    rlca
    xor b
    rlca
    xor c
    rlca
    xor d
    rlca
    xor e
    rlca
    xor h
    rlca
    xor l
    rlca
    xor [hl]
    rlca
    and l
    rlca
    xor a
    rlca
    or b
    rlca
    or c
    rlca
    or d
    rlca
    or e
    rlca
    or h
    rlca
    or l
    rlca
    ld h, e
    dec b
    ld h, h
    dec b
    ld h, l
    dec b
    dec sp
    dec b
    ld h, [hl]
    dec b
    ld h, a
    dec b
    ld bc, $8505
    nop
    add l
    nop
    or e
    dec b
    ld a, a
    ld bc, $05c1
    ld l, [hl]
    ld bc, $016f
    jp nz, $c305

    dec b
    ld l, b
    ld b, $69
    ld b, $4c
    inc b
    ld l, d
    ld b, $6b
    ld b, $6c
    ld b, $6d
    ld b, $30
    nop
    inc c
    inc b
    ld c, d
    ld b, $4b
    ld b, $0f
    inc b
    ld c, h
    ld b, $11
    inc b
    ld [de], a
    inc b
    ld c, l
    ld b, $85
    nop
    add l
    nop
    xor d
    ld bc, $0085
    add l
    nop
    xor e
    ld bc, $0085
    add l
    nop
    add hl, de
    ld [bc], a
    cp d
    ld [bc], a
    cp e
    ld [bc], a
    cp h
    ld [bc], a
    cp l
    ld [bc], a
    cp [hl]
    ld [bc], a
    cp a
    ld [bc], a
    ld b, c
    nop
    inc sp
    nop
    inc [hl]
    nop
    dec [hl]
    nop
    ld [hl], $00
    scf
    nop
    jr c, jr_019_58dc

jr_019_58dc:
    add hl, sp
    nop
    ld a, [hl-]
    nop
    ld l, c
    ld bc, $0085
    add l
    nop
    add l
    nop
    ret z

    dec b
    rra
    inc b
    add l
    nop
    add l
    nop
    ld a, h
    ld [$087d], sp
    ld a, [hl]
    ld [$087f], sp
    add l
    nop
    add l
    nop
    add l
    nop
    add b
    ld [$05fc], sp
    db $fd
    dec b
    add l
    nop
    add l
    nop
    add hl, sp
    dec b
    db $eb
    dec b
    db $ec
    dec b
    add l
    nop
    sub $00
    rst AddAToHL
    nop
    ret c

    nop
    reti


    nop
    cp h
    nop
    cp l
    nop
    cp [hl]
    nop
    cp a
    nop
    sub d
    ld [$0893], sp
    sub h
    ld [$0895], sp
    sub [hl]
    ld [$0897], sp
    sbc b
    ld [$0898], sp
    add l
    nop
    or e
    dec b
    db $e3
    inc b
    or h
    dec b
    or l
    dec b
    pop hl
    inc b
    ld [c], a
    inc b
    or [hl]
    dec b
    and l
    inc b
    and l
    inc b
    and [hl]
    inc b
    and a
    inc b
    xor b
    inc b
    xor c
    inc b
    sbc c
    ld b, $9a
    ld b, $17
    ld bc, $006a
    ld l, e
    nop
    ld bc, $6c00
    nop
    ld l, h
    nop
    ld l, l
    nop
    ld l, l
    nop
    sbc e
    nop
    sbc h
    nop
    sbc l
    nop
    sbc [hl]
    nop
    sbc a
    nop
    and b
    nop
    and c
    nop
    and h
    ld bc, $04b4
    or l
    inc b
    or [hl]
    inc b
    or a
    inc b
    cp b
    inc b
    cp c
    inc b
    cp d
    inc b
    cp e
    inc b
    and b
    ld [$08a1], sp
    and d
    ld [$08a3], sp
    and h
    ld [$08a5], sp
    and [hl]
    ld [$08a7], sp
    rla
    ld bc, $0127
    jr z, jr_019_5997

    ld c, c

jr_019_5997:
    ld bc, HeaderDestinationCode
    add l
    nop
    add l
    nop
    add l
    nop
    inc b
    nop
    ld a, e
    nop
    sub c
    ld bc, $00ba
    dec de
    ld bc, $007d
    add b
    nop
    add c
    nop
    sbc e
    nop
    sbc h
    nop
    sbc l
    nop
    sbc [hl]
    nop
    sbc a
    nop
    and b
    nop
    and c
    nop
    call z, $0500
    nop
    ld h, d
    ld [bc], a
    rlca
    nop
    ld [$0900], sp
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    inc c
    nop
    ld [hl], d
    ld [bc], a
    ld [hl], e
    ld [bc], a
    ld [hl], h
    ld [bc], a
    ld [hl], l
    ld [bc], a
    db $76
    ld [bc], a
    ld [hl], a
    ld [bc], a
    ld a, b
    ld [bc], a
    ld a, c
    ld [bc], a
    ld l, l
    inc bc
    ld l, [hl]
    inc bc
    ld l, a
    inc bc
    ld [hl], b
    inc bc
    ld [hl], c
    inc bc
    ld [hl], d
    inc bc
    ld [hl], e
    inc bc
    ld [hl], h
    inc bc
    add h
    nop
    cp e
    ld bc, $0107
    ld h, $03
    daa
    inc bc
    jr z, jr_019_59ff

    add hl, hl
    inc bc
    ld a, [hli]

jr_019_59ff:
    inc bc

Jump_019_5a00:
    add l
    nop
    sbc b
    ld [bc], a
    ld c, $06
    rrca
    ld b, $10
    ld b, $11
    ld b, $85
    nop
    ld [de], a
    ld b, $85
    nop
    ld b, b
    dec b
    ld b, c
    dec b
    ld b, d
    dec b
    ld b, e
    dec b
    ld b, h
    dec b
    ld b, l
    dec b
    ld b, [hl]
    dec b
    dec hl
    nop
    inc l
    nop
    dec l
    nop
    ld l, $00
    cpl
    nop
    ld sp, hl
    ld bc, $01fa
    ld sp, hl
    ld bc, $0227
    or a
    ld [bc], a
    add l
    nop
    add l
    nop
    dec a
    nop
    inc a
    nop
    cp b
    ld [bc], a
    cp c
    ld [bc], a
    ret nz

    nop
    ld bc, $0100
    ld bc, $0102
    inc bc
    ld bc, HeaderLogo
    dec b
    ld bc, $0106
    ld h, a
    inc b
    ld l, b
    inc b
    ld l, c
    inc b
    ld l, d
    inc b
    ld l, e
    inc b
    ld l, h
    inc b
    ld l, l
    inc b
    ld l, [hl]
    inc b
    add l
    nop
    cp h
    inc b
    cp l
    inc b
    cp [hl]
    inc b
    add d
    inc b
    add e
    inc b
    add h
    inc b
    add l
    nop
    inc b
    nop
    ld a, [de]
    ld bc, $007d
    ld [hl-], a
    nop
    cp d
    nop
    dec de
    ld bc, $0080
    add c
    nop
    rst $38
    inc b
    rst $20
    dec b
    add l
    nop
    add sp, $05
    jp hl


    dec b
    ld [$8505], a
    nop
    add l
    nop
    ld l, l
    nop
    or d
    ld bc, $01b3
    or h
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $b700
    inc bc
    cp b
    inc bc
    cp c
    inc bc
    cp d
    inc bc
    cp e
    inc bc
    cp h
    inc bc
    cp l
    inc bc
    cp [hl]
    inc bc
    rst $38
    dec b
    nop
    ld b, $01
    ld b, $02
    ld b, $03
    ld b, $04
    ld b, $85
    nop
    dec b
    ld b, $04
    nop
    ld a, e
    nop
    jp nz, $dd00

    nop
    sbc b
    ld bc, $0199
    add b
    nop
    add c
    nop
    ld [$0802], sp
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    adc d
    nop
    adc e
    nop
    adc h
    nop
    adc l
    nop
    dec hl
    ld bc, $012c
    dec l
    ld bc, $012e
    add d
    nop
    add l
    nop
    inc b
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld a, d
    nop
    ld a, e
    nop
    ld a, h
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    add b
    nop
    add c
    nop
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    sub a
    inc bc
    sbc b
    inc bc
    sbc c
    inc bc
    sbc d
    inc bc
    add l
    nop
    add l
    nop
    ld d, c
    inc b
    ld d, d
    inc b
    reti


    inc bc
    ld d, e
    inc b
    ld d, h
    inc b
    ld d, l
    inc b
    ld d, [hl]
    inc b
    ld d, a
    inc b
    dec sp
    dec b
    inc a
    dec b
    dec a
    dec b
    ld a, $05
    ld [bc], a
    dec b
    ccf
    dec b
    add l
    nop
    add l
    nop
    xor c
    nop
    xor d
    nop
    adc b
    ld bc, $00ac
    xor l
    nop
    jp hl


    nop
    ld [$b000], a
    nop
    add l
    nop
    jp z, $cb00

    nop
    ld b, d
    ld [bc], a
    ld b, e
    ld [bc], a
    ld b, h
    ld [bc], a
    ld b, l
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    pop af
    inc bc
    jr c, @+$08

    add hl, sp
    ld b, $f4
    inc bc
    ld a, [hl-]
    ld b, $3b
    ld b, $3c
    ld b, $f8
    inc bc
    add l
    nop
    add l
    nop
    add c
    ld b, $82
    ld b, $43
    dec b
    add e
    ld b, $84
    ld b, $85
    ld b, $bf
    ld bc, $01c0
    pop bc
    ld bc, $01c2
    jp $c401


    ld bc, $01c5
    add $01
    ld e, b
    inc b
    ld e, c
    inc b
    ld e, d
    inc b
    ld e, e
    inc b
    ld e, h
    inc b
    ld e, l
    inc b
    ld a, e
    nop
    ld e, [hl]
    inc b
    jp hl


    ld bc, $01ea
    rlca
    nop
    ld [$0900], sp
    nop
    ld a, [bc]
    nop
    add sp, $01
    add sp, $01
    sbc d
    nop
    and $01
    jp z, Boot

    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld e, $03
    rra
    inc bc
    jr nz, jr_019_5bc9

    ld hl, $2203

jr_019_5bc9:
    inc bc
    inc hl
    inc bc
    inc h
    inc bc
    dec h
    inc bc
    add c
    ld [$0085], sp
    rst $38
    rlca
    ld sp, hl
    rlca
    ld a, [$1407]
    ld [$0085], sp
    add l
    nop
    add l
    nop
    add l
    nop
    xor a
    ld [bc], a
    add l
    nop
    add l
    nop
    push de
    nop
    add l
    nop
    add l
    nop
    ld h, l
    ld [bc], a
    ld h, l
    ld [bc], a
    ld l, c
    ld [bc], a
    ld h, l
    ld [bc], a
    ld h, l
    ld [bc], a
    ld h, l
    ld [bc], a
    ld h, l
    ld [bc], a
    ld h, l
    ld [bc], a
    ld c, c
    inc bc
    ld c, d
    inc bc
    ld c, e
    inc bc
    ld c, h
    inc bc
    cpl
    inc bc
    jr nc, jr_019_5c0f

    ld sp, $4d03

jr_019_5c0f:
    inc bc
    ld b, b
    ld bc, $07dc
    db $dd
    rlca
    sbc $07
    dec de
    ld [$085d], sp
    ld e, [hl]
    ld [$085f], sp
    add l
    nop
    add l
    nop
    add l
    nop
    jp c, $0406

    rlca
    call c, $dd06
    ld b, $de
    ld b, $04
    nop
    ld a, e
    nop
    db $db
    nop
    ld [hl-], a
    nop
    call c, $dd00
    nop
    add b
    nop
    add c
    nop
    and $08
    rst $20
    ld [$08e8], sp
    jp hl


    ld [$08ea], sp
    db $eb
    ld [$08ec], sp
    db $ed
    ld [$0497], sp
    ld b, b
    ld bc, $0498
    ld a, [hl]
    ld bc, $0485
    sub [hl]
    inc bc
    sbc c
    inc b
    ccf
    ld bc, $0000
    add l
    nop
    or e
    nop
    or h
    nop
    or l
    nop
    db $ed
    nop
    xor $00
    inc b
    nop
    sbc a
    rlca
    and b
    rlca
    and c
    rlca
    and d
    rlca
    and e
    rlca
    and h
    rlca
    and l
    rlca
    and [hl]
    rlca
    add l
    nop
    and e
    inc bc
    and h
    inc bc
    and l
    inc bc
    and [hl]
    inc bc
    add l
    nop
    and a
    inc bc
    add l
    nop
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    db $db
    inc bc
    add l
    nop
    add l
    nop
    cp $05
    sub l
    ld b, $85
    nop
    sbc h
    inc b
    sbc l
    inc b
    db $db
    inc bc
    add l
    nop
    sub [hl]
    ld b, $97
    ld b, $2b
    nop
    inc l
    nop
    dec l
    nop
    ld l, $00
    cpl
    nop
    jr nc, jr_019_5cbc

jr_019_5cbc:
    ld sp, $3200
    nop
    ld l, l
    dec b
    ld l, [hl]
    dec b
    ld l, a
    dec b
    ld [hl], b
    dec b
    ld [hl], c
    dec b
    ld [hl], d
    dec b
    ld [hl], e
    dec b
    reti


    inc bc
    add hl, sp
    ld bc, $0139
    jp $c300


    nop
    ccf
    ld bc, $0028
    add hl, hl
    nop
    ld a, [hli]
    nop
    ld d, e
    ld bc, $0085
    ld d, h
    ld bc, $0155
    ld d, [hl]
    ld bc, $0157
    ld e, b
    ld bc, $0159
    ei
    inc b
    db $fc
    inc b
    add l
    nop
    db $fd
    inc b
    cp $04
    rst $38
    inc b
    nop
    dec b
    ld bc, $1a05
    rlca
    db $f4
    inc bc
    add l
    nop
    dec d
    ld [$0816], sp
    rla
    ld [$0818], sp
    add hl, de
    ld [$0042], sp
    ld b, e
    nop
    sub [hl]
    ld bc, $0045
    sub a
    ld bc, $0047
    ld c, b
    nop
    ld c, c
    nop
    sbc d
    inc b
    sbc e
    inc b
    sbc h
    inc b
    sbc l
    inc b
    ld c, a
    dec b
    ld d, b
    dec b
    ld d, c
    dec b
    ld d, d
    dec b
    rst $30
    ld [bc], a
    ld hl, sp+$02
    ld sp, hl
    ld [bc], a
    ld a, [$f902]
    ld [bc], a
    add l
    nop
    add l
    nop
    add l
    nop
    rst $28
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    add l
    nop
    add l
    nop
    inc b
    inc bc
    dec b
    inc bc
    ld b, $03
    adc d
    nop
    adc e
    nop
    adc h
    nop
    adc l
    nop
    inc e
    ld bc, $011d
    ld e, $01
    rra
    ld bc, $026a
    ld l, e
    ld [bc], a
    ld l, h
    ld [bc], a
    ld l, l
    ld [bc], a
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    ld [hl], b
    ld [bc], a
    ld [hl], c
    ld [bc], a
    xor $08
    rst $28
    ld [$08f0], sp
    pop af
    ld [$0085], sp
    add l
    nop
    add l
    nop
    add l
    nop
    ld h, l
    inc bc
    ld h, [hl]
    inc bc
    ld h, a
    inc bc
    ld l, b
    inc bc
    ld l, c
    inc bc
    ld l, d
    inc bc
    ld l, e
    inc bc
    ld l, h
    inc bc
    ld e, b
    inc b
    ld e, c
    inc b
    ld e, d
    inc b
    ld e, e
    inc b
    ld [hl], c
    ld b, $72
    ld b, $7b
    nop
    ld e, [hl]
    inc b
    adc d
    nop
    adc e
    nop
    adc h
    nop
    adc l
    nop
    push bc
    ld [bc], a
    add $02
    rst $00
    ld [bc], a
    ret z

    ld [bc], a
    rla
    ld bc, $006a
    ld l, e
    nop
    ld bc, $1800
    ld bc, $0118
    add hl, de
    ld bc, $0119
    xor e
    inc b
    xor h
    inc b
    xor l
    inc b
    xor [hl]
    inc b
    xor a
    inc b
    or b
    inc b
    or c
    inc b
    or d
    inc b
    stop
    stop
    stop
    stop
    stop
    stop
    ld h, e
    ld [bc], a
    ld [de], a
    nop
    dec hl
    inc b
    inc l
    inc b
    ld l, l
    ld bc, $042d
    ld l, $04
    cpl
    inc b
    jr nc, jr_019_5df2

    ld sp, $8504
    nop

jr_019_5df2:
    rla
    ld b, $18
    ld b, $19
    ld b, $1a
    ld b, $1b
    ld b, $1c
    ld b, $1d
    ld b, $14
    inc b
    dec d
    inc b
    ld d, $04
    rla
    inc b
    jr jr_019_5e0e

    add hl, de
    inc b
    ld a, [de]
    inc b

jr_019_5e0e:
    dec de
    inc b
    dec hl
    nop
    inc l
    nop
    dec l
    nop
    ld l, $00
    cpl
    nop
    jr nc, jr_019_5e1c

jr_019_5e1c:
    add l
    nop
    ld h, [hl]
    ld [bc], a
    ld e, a
    inc b
    ld h, b
    inc b
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
    ld h, [hl]
    inc b
    ld d, b
    rlca
    ld d, c
    rlca
    ld d, d
    rlca
    ld d, e
    rlca
    ld d, h
    rlca
    ld d, l
    rlca
    ld d, [hl]
    rlca
    ld d, a
    rlca
    ld l, [hl]
    ld bc, $016f
    ld [hl], b
    ld bc, $0171
    ld [hl], d
    ld bc, $0173
    ld [hl], h
    ld bc, $0175
    jp Jump_019_5a00


    ld bc, $015b
    ld e, h
    ld bc, $015d
    dec de
    ld bc, $0080
    add c
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0001
    ld bc, $7b00
    ld bc, $017c
    ld a, l
    ld bc, $017e
    ld a, a
    ld bc, $0180
    add c
    ld bc, $0001
    and a
    ld b, $a8
    ld b, $a9
    ld b, $aa
    ld b, $63
    inc b
    xor e
    ld b, $85
    nop
    xor h
    ld b, $1e
    dec b
    rra
    dec b
    jr nz, jr_019_5e9b

    ld hl, $2205
    dec b
    inc hl

jr_019_5e9b:
    dec b
    inc h
    dec b
    add l
    nop
    dec l
    ld b, $2e
    ld b, $2f
    ld b, $30
    ld b, $31
    ld b, $85
    nop
    add c
    ld bc, $03e4
    db $e4
    nop
    push hl
    nop
    and $00
    rst $20
    nop
    add sp, $00
    and a
    nop
    xor b
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    call nc, $8500
    nop
    add l
    nop
    push de
    nop
    add l
    nop
    add l
    nop
    ld b, b
    ld bc, $07dc
    db $dd
    rlca
    sbc $07
    dec de
    ld [$0829], sp
    rst $20
    dec b
    ld a, [hli]
    ld [$069f], sp
    and b
    ld b, $a1
    ld b, $a2
    ld b, $a3
    ld b, $a4
    ld b, $a5
    ld b, $a6
    ld b, $a5
    rlca
    xor a
    rlca
    or b
    rlca
    or c
    rlca
    or d
    rlca
    or e
    rlca
    or h
    rlca
    ld de, $b208
    inc bc
    or e
    inc bc
    or h
    inc bc
    or l
    inc bc
    or [hl]
    inc bc
    add l
    nop
    add l
    nop
    add l
    nop
    ld b, e
    ld bc, HeaderNewLicenseeCode
    ld b, l
    ld bc, HeaderSGBFlag
    ld b, a
    ld bc, HeaderROMSize
    add l
    nop
    add l
    nop
    ld e, c
    dec b
    ld e, d
    dec b
    ld e, e
    dec b
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    rst $20
    ld b, $e8
    ld b, $05
    rlca
    ld b, $07
    jp hl


    ld b, $ea
    ld b, $eb
    ld b, $85
    nop
    call $ce07
    rlca
    rst $08
    rlca
    ret nc

    rlca
    pop de
    rlca
    jp nc, $f207

    ld [bc], a
    ld a, [c]
    ld [bc], a
    or [hl]
    ld bc, $01b7
    cp b
    ld bc, $01b9
    cp d
    ld bc, $00a7
    db $d3
    nop
    ld bc, $1500
    nop
    add l
    nop
    db $eb
    nop
    add l
    nop
    add l
    nop
    db $ec
    nop
    add l
    nop
    add l
    nop
    add a
    inc b
    add a
    inc b
    adc b
    inc b
    adc b
    inc b
    adc c
    inc b
    adc d
    inc b
    adc e
    inc b
    adc h
    inc b
    ld [hli], a
    ld b, $8e
    inc b
    adc a
    inc b
    sub b
    inc b
    sub c
    inc b
    inc hl
    ld b, $63
    inc b
    sub e
    inc b
    nop
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    or b
    ld [bc], a
    add l
    nop
    add l
    nop
    or e
    inc b
    add l
    nop
    ld [hl], e
    inc b
    ld [hl], h
    inc b
    ld [hl], l
    inc b
    add l
    nop
    ld a, l
    inc bc
    ld a, [hl]
    inc bc
    ld a, a
    inc bc
    add b
    inc bc
    add c
    inc bc
    add d
    inc bc
    add l
    nop
    add l
    nop
    add d
    nop
    add e
    nop
    sbc $00
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld a, [c]
    ld [bc], a
    rst AddAToHL
    rlca
    ret c

    rlca
    reti


    rlca
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    jp c, $1a07

    ld [$0510], sp
    ld de, $8505
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    db $e4
    ld [$08e5], sp
    sbc $08
    rst JumpTable
    ld [$08e0], sp
    pop hl
    ld [$08e2], sp
    db $e3
    ld [$08e4], sp
    push hl
    ld [$04a5], sp
    and l
    inc b
    and [hl]
    inc b
    db $ed
    dec b
    add l
    nop
    xor $05
    xor d
    inc b
    adc [hl]
    inc b
    add a
    inc b
    add a
    inc b
    adc [hl]
    ld b, $8e
    ld b, $89
    inc b
    adc d
    inc b
    adc e
    inc b
    sub b
    ld b, $13
    ld b, $14
    ld b, $15
    ld b, $16
    ld b, $85
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    jr nz, jr_019_6036

jr_019_6036:
    jr nz, jr_019_6038

jr_019_6038:
    ld sp, hl
    ld bc, $01f9
    cp b
    nop
    cp c
    nop
    add hl, hl
    nop
    ld a, [hli]
    nop
    reti


    inc bc
    reti


    inc bc
    reti


    inc bc
    reti


    inc bc
    reti


    inc bc
    reti


    inc bc
    reti


    inc bc
    reti


    inc bc
    sub a
    rlca
    sbc b
    rlca
    sbc c
    rlca
    sbc d
    rlca
    sbc e
    rlca
    sbc h
    rlca
    sbc l
    rlca
    sbc [hl]
    rlca
    inc d
    nop
    ld bc, $1500
    nop
    dec d
    nop
    dec d
    nop
    ld d, $00
    ld bc, $1700
    nop
    rst $28
    ld [bc], a
    ldh a, [rSC]
    pop af
    ld [bc], a
    ld a, [c]
    ld [bc], a
    dec c
    rlca
    ld c, $07
    rrca
    rlca
    db $10
    rlca
    add hl, de
    ld [bc], a
    ld a, [de]
    ld [bc], a
    dec de
    ld [bc], a
    inc e
    ld [bc], a
    dec e
    ld [bc], a
    ld e, $02
    rra
    ld [bc], a
    jr nz, jr_019_6096

    adc $06

jr_019_6096:
    rst $08
    ld b, $d0
    ld b, $85
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld l, [hl]
    nop
    ld l, a
    nop
    ld [hl], b
    nop
    ld [hl], c
    nop
    ld [hl], d
    nop
    ld [hl], e
    nop
    ld [hl], h
    nop
    ld [hl], l
    nop
    add d
    nop
    add e
    nop
    adc $01
    rst $08
    ld bc, $01d0
    pop de
    ld bc, $00c6
    add h
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    dec hl
    ld [$082c], sp
    dec l
    ld [$082e], sp
    cpl
    ld [$0076], sp
    ld [hl], a
    nop
    ld a, b
    nop
    ld a, c
    nop
    ld hl, $2202
    ld [bc], a
    inc hl
    ld [bc], a
    inc h
    ld [bc], a
    cp e
    ld b, $bc
    ld b, $00
    nop
    cp l
    ld b, $be
    ld b, $bf
    ld b, $9d
    ld b, $9e
    ld b, $0d
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    add l
    nop
    ld c, $00
    add l
    nop
    add sp, $01
    ld c, d
    inc b
    ld c, e
    inc b
    ld c, h
    inc b
    pop de
    ld b, $d2
    ld b, $d3
    ld b, $d4
    ld b, $d5
    ld b, $f1
    inc bc
    ld a, [c]
    inc bc
    ld d, e
    dec b
    db $f4
    inc bc
    ld d, h
    dec b
    or $03
    rst $30
    inc bc
    ld hl, sp+$03
    sbc e
    nop
    sbc h
    nop
    sbc l
    nop
    sbc [hl]
    nop
    cp h
    ld bc, $00a0
    and c
    nop
    or l
    ld bc, $06e7
    add sp, $06
    add l
    nop
    add l
    nop
    jp hl


    ld b, $ea
    ld b, $eb
    ld b, $85
    nop
    add l
    nop
    dec h
    dec b
    ld [hli], a
    dec b
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add d
    inc b
    dec c
    ld [$080e], sp
    add l
    nop
    ld a, [hl-]
    ld [$083b], sp
    inc a
    ld [$083d], sp
    ld a, $08
    ld e, l
    inc bc
    ld e, [hl]
    inc bc
    ld e, a
    inc bc
    ld h, b
    inc bc
    ld h, c
    inc bc
    ld h, d
    inc bc
    ld h, e
    inc bc
    ld h, h
    inc bc
    add l
    nop
    xor h
    inc bc
    xor l
    inc bc
    xor [hl]
    inc bc
    xor a
    inc bc
    add l
    nop
    or b
    inc bc
    or c
    inc bc
    rlca
    dec b
    add l
    nop
    add l
    nop
    inc bc
    dec b
    inc b
    dec b
    dec b
    dec b
    ld b, $05
    add l
    nop
    rlca
    dec b
    add l
    nop
    xor c
    nop
    xor d
    nop
    ld h, e
    ld [bc], a
    xor h
    nop
    ld h, b
    ld [bc], a
    xor [hl]
    nop
    xor a
    nop
    or b
    nop
    reti


    inc bc
    ld a, b
    ld bc, $03da
    db $db
    inc bc
    ld a, [hl]
    ld bc, $03dc
    db $dd
    inc bc
    sbc $03
    dec [hl]
    nop
    inc [hl]
    nop
    inc sp
    nop
    ld [hl], $00
    ei
    ld bc, $01fc
    db $fd
    ld bc, $00bf
    adc l
    inc b
    ld hl, sp+$06
    ld sp, hl
    ld b, $fa
    ld b, $fb
    ld b, $92
    inc b
    ld h, e
    inc b
    sub e
    inc b
    inc c
    inc b
    dec c
    inc b
    ld c, $04
    rrca
    inc b
    db $10
    inc b
    ld de, $1204
    inc b
    inc de
    inc b
    and h
    dec b
    and l
    dec b
    or e
    inc b
    add d
    inc b
    and [hl]
    dec b
    and a
    dec b
    add l
    nop
    xor b
    dec b
    ld c, b
    rlca
    ld c, c
    rlca
    ld c, d
    rlca
    ld c, e
    rlca
    ld c, h
    rlca
    ld c, l
    rlca
    ld c, [hl]
    rlca
    ld c, a
    rlca
    add d
    nop
    add e
    nop
    sub d
    ld bc, $00f1
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    jr nz, jr_019_621a

jr_019_621a:
    jr nz, jr_019_621c

jr_019_621c:
    pop af
    nop
    pop af
    nop
    daa
    nop
    jr z, jr_019_6224

jr_019_6224:
    add hl, hl
    nop
    ld a, [hli]
    nop
    cp [hl]
    inc b
    ret nz

    inc b
    add l
    nop
    ld [hl], e
    inc b
    pop bc
    inc b
    jp nz, $c304

    inc b
    call nz, $5104
    inc b
    ld l, [hl]
    ld b, $7b
    inc bc
    ld l, a
    ld b, $70
    ld b, $55
    inc b
    ld d, [hl]
    inc b
    ld d, a
    inc b
    ld e, b
    inc b
    ld e, c
    inc b
    ld e, d
    inc b
    ld e, e
    inc b
    ld e, h
    inc b
    ld e, l
    inc b
    ld a, e
    nop
    ld [hl-], a
    dec b
    and e
    nop
    and h
    nop
    and l
    nop
    add l
    nop
    and [hl]
    nop
    and a
    nop
    xor b
    nop
    add l
    nop
    jr nz, @+$03

    ld hl, $2201
    ld bc, $0123
    inc h
    ld bc, $0085
    add l
    nop
    add l
    nop
    add d
    nop
    ld e, [hl]
    ld bc, $015e
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    pop af
    inc bc
    ld a, [c]
    inc bc
    di
    inc bc
    db $f4
    inc bc
    push af
    inc bc
    or $03
    rst $30
    inc bc
    ld hl, sp+$03
    dec h
    ld [$0826], sp
    daa
    ld [$0085], sp
    add l
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    inc b
    nop
    dec h
    ld [bc], a
    jr nc, jr_019_62be

jr_019_62be:
    ld a, l
    nop
    ld h, $02
    daa
    ld [bc], a
    add b
    nop
    add c
    nop
    ld sp, hl
    inc bc
    dec a
    ld b, $fb
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    cp $03
    rst $38
    inc bc
    nop
    inc b
    rrca
    inc bc
    db $10
    inc bc
    ld de, $1203
    inc bc
    inc de
    inc bc
    inc d
    inc bc
    dec d
    inc bc
    ld d, $03
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_633c

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_6345

    db $10
    ld d, b
    ld a, [de]
    db $10
    db $10
    ld d, $10
    or b
    inc de
    db $10
    sub b
    rrca
    rst $38
    db $10
    jr nz, jr_019_6343

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_633c:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_6343:
    db $10
    add b

jr_019_6345:
    inc d
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_63a0

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_63a9

    db $10
    ret nz

    dec e
    db $10
    and b
    rra
    db $10
    ld [hl], b
    add hl, de
    db $10
    ld h, b
    ld a, [de]
    rst $38
    db $10
    jr nz, jr_019_63a7

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_63a0:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_63a7:
    db $10
    and b

jr_019_63a9:
    inc de
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_6404

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_640d

    db $10
    jr z, jr_019_6414

    db $10
    ldh [$15], a
    db $10
    or b
    ld d, $10
    and b
    inc b
    rst $38
    db $10
    jr nz, jr_019_640b

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_6404:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_640b:
    db $10
    add b

jr_019_640d:
    inc d
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10

jr_019_6414:
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_6468

    db $10
    sub b
    dec de
    db $10
    jr nz, @+$20

    db $10
    jr nz, @+$08

    db $10
    ld b, h
    jr nz, jr_019_646a

    ret nz

    ld de, $4410
    jr nz, @+$01

    db $10
    jr nz, jr_019_646f

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_6468:
    inc de
    db $10

jr_019_646a:
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_646f:
    db $10
    jr nz, jr_019_647f

    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c

jr_019_647f:
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_64cc

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_64d5

    db $10
    jr nz, jr_019_64c1

    db $10
    ldh [rNR21], a
    stop
    nop
    db $10

jr_019_64c1:
    ret nc

    db $10
    rst $38
    db $10
    jr nz, jr_019_64d3

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_64cc:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_64d3:
    db $10
    add b

jr_019_64d5:
    nop
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_6530

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_6539

    db $10
    ldh a, [rNR32]
    ld [de], a
    stop
    ld c, $8a
    ld hl, $1211
    nop
    rst $38
    rrca
    ld hl, $100c
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_6530:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e
    db $10
    and b

jr_019_6539:
    ld [bc], a
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_6594

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_659d

    db $10
    ldh [rNR10], a
    db $10
    ldh [$1f], a
    db $10
    jr nc, jr_019_659a

    db $10
    jr nc, jr_019_65a2

    rst $38
    db $10
    jr nz, jr_019_659b

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_6594:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b

jr_019_659a:
    inc e

jr_019_659b:
    db $10
    add b

jr_019_659d:
    inc d
    db $10
    ldh a, [rTMA]
    db $10

jr_019_65a2:
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_65f8

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_6601

    db $10
    ldh a, [$0d]
    db $10
    sub b
    ld e, $10
    nop
    ld c, $10
    sub b
    ld [de], a
    rst $38
    db $10
    jr nz, jr_019_65ff

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_65f8:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_65ff:
    db $10
    add b

jr_019_6601:
    inc d
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ldh a, [rDIV]
    db $10
    jr nz, jr_019_665c

    db $10
    ld c, b
    ld [hli], a
    db $10
    jr nz, @+$20

    db $10
    ld d, b
    dec c
    db $10
    jr nc, @+$1d

    db $10
    db $10
    ld a, [de]
    db $10
    ld b, b
    inc b
    rst $38
    db $10
    jr nz, jr_019_6663

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_665c:
    inc de
    db $10
    ld [hl], b
    add hl, bc
    db $10
    ld d, b
    inc e

jr_019_6663:
    db $10
    jr nz, jr_019_6683

    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    inc d
    ld hl, $d010
    dec d
    db $10
    ld b, b
    dec c
    db $10

jr_019_6683:
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_66c0

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_66c9

    db $10
    jr nz, jr_019_66c2

    db $10
    and b
    rlca
    db $10
    and b
    ld de, $7011
    jr @+$01

    rrca
    ld hl, $100c
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_66c0:
    inc de
    db $10

jr_019_66c2:
    db $10
    rla
    db $10
    ld d, b
    inc e
    db $10
    ret nc

jr_019_66c9:
    rla
    db $10
    ldh a, [rTMA]
    db $10
    db $10
    ld b, $ff
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_6724

    db $10
    ret nz

    inc e
    db $10
    db $10
    ld [$2010], sp
    rrca
    db $10
    ld h, b
    dec bc
    db $10
    add b
    ld de, $4010
    dec b
    rst $38
    db $10
    jr nz, jr_019_672b

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_6724:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_672b:
    db $10
    add b
    inc d
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    inc d
    ld hl, $d010
    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_6788

    db $10
    sub b
    dec de
    db $10
    jr nz, @+$20

    db $10
    sub b
    dec bc
    db $10
    jr nz, jr_019_6798

    db $10
    and b
    ld d, $10
    or b
    nop
    rst $38
    db $10
    jr nz, jr_019_678f

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_6788:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_678f:
    db $10
    ldh a, [rNR14]
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10

jr_019_6798:
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_67ec

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_67f5

    db $10
    ret nz

    ld b, $10
    add sp, $21
    db $10
    db $10
    ld [bc], a
    db $10
    jr nc, jr_019_67f3

    rst $38
    db $10
    jr nz, jr_019_67f3

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_67ec:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_67f3:
    db $10
    ret nz

jr_019_67f5:
    inc d
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_6850

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_6859

    db $10
    jr nc, jr_019_6857

    db $10
    jr nz, jr_019_684f

    db $10
    ld d, b
    ld b, $10
    ld [hl], b
    ld b, $ff
    db $10
    jr nz, jr_019_6857

    db $10
    ld [hl], b
    rra
    db $10

jr_019_684f:
    ld d, b

jr_019_6850:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_6857:
    db $10
    add b

jr_019_6859:
    inc d
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_68b4

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_68bd

    db $10
    add b
    jr jr_019_68b3

    ld d, b
    rla
    db $10
    ret nc

    dec bc
    db $10
    ldh [rNR23], a
    rst $38
    db $10
    jr nz, jr_019_68bb

    db $10
    ld [hl], b
    rra
    db $10

jr_019_68b3:
    ld d, b

jr_019_68b4:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_68bb:
    db $10
    ld d, b

jr_019_68bd:
    rlca
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_6918

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_6921

    db $10
    ld d, b
    ld a, [bc]
    db $10
    or b
    ld a, [bc]
    db $10
    ld b, b
    inc de
    db $10
    add b
    dec bc
    rst $38
    db $10
    jr nz, jr_019_691f

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_6918:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_691f:
    db $10
    ld d, b

jr_019_6921:
    rlca
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_697c

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_6985

    db $10
    ret nz

    ld a, [bc]
    db $10
    ld h, b
    dec c
    db $10
    add b
    ld a, [de]
    stop
    rla
    rst $38
    db $10
    jr nz, jr_019_6983

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_697c:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_6983:
    db $10
    add b

jr_019_6985:
    inc d
    db $10
    ldh a, [rTMA]
    db $10
    inc b
    jr nz, @+$01

    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_69e0

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_69e9

    db $10
    db $10
    jr jr_019_69df

    db $10
    ld c, $10
    or b
    ld [bc], a
    stop
    add hl, de
    rst $38
    db $10
    jr nz, jr_019_69e7

    db $10
    ld [hl], b
    rra
    db $10

jr_019_69df:
    ld d, b

jr_019_69e0:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_69e7:
    db $10
    sub b

jr_019_69e9:
    inc e
    db $10
    ldh a, [rTMA]
    db $10
    inc b
    jr nz, @+$01

    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a

Jump_019_6a00:
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_6a44

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_6a4d

    db $10
    or b
    ld a, [de]
    db $10
    ld b, h
    ld hl, $b010
    dec d
    db $10
    ldh a, [rNR13]
    rst $38
    db $10
    jr nz, jr_019_6a4b

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_6a44:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_6a4b:
    db $10
    add b

jr_019_6a4d:
    inc d
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    ld [de], a
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_6aa8

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_6ab1

    stop
    ld a, [de]
    db $10
    inc h
    jr nz, jr_019_6aaa

    ldh a, [rNR33]
    db $10
    ldh a, [rTIMA]
    rst $38
    db $10
    jr nz, jr_019_6aaf

    ld [de], a
    ld [hl], b
    rra
    ld c, $82

jr_019_6aa8:
    rra
    db $10

jr_019_6aaa:
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_6aaf:
    db $10
    add b

jr_019_6ab1:
    rlca
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    ld [de], a
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_6b0c

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_6b15

    ld [de], a
    or b
    ld b, $0e
    jp nz, $1010

    ld b, b
    ld bc, $1211
    nop
    rst $38
    rrca
    ld hl, $100c
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_6b0c:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e
    db $10
    add b

jr_019_6b15:
    inc d
    db $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    ld [de], a
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    ld h, b
    inc c
    db $10
    ldh a, [$08]
    rst $38
    db $10
    ret nz

    ld [de], a
    db $10
    jr nz, jr_019_6b70

    db $10
    sub b
    dec de
    db $10
    jr nz, jr_019_6b79

    db $10
    ret nz

    ld a, [bc]
    db $10
    ld h, b
    dec c
    db $10
    add b
    ld a, [de]
    stop
    rla
    rst $38
    db $10
    jr nz, jr_019_6b77

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b

jr_019_6b70:
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_6b77:
    db $10
    add b

jr_019_6b79:
    inc d
    db $10
    ldh a, [rTMA]
    db $10
    or b
    inc bc
    rst $38
    db $10
    db $10
    dec d
    db $10
    and b
    ld e, $10
    ldh a, [rNR22]
    stop
    ld a, [bc]
    db $10
    ld h, b
    dec de
    db $10
    ret z

    ld [hli], a
    db $10
    ret nz

    dec c
    db $10
    ld h, b
    ld [de], a
    rst $38
    db $10
    and b
    jr jr_019_6bae

    and b
    ld a, [bc]
    db $10
    and b
    dec bc
    db $10
    add b
    ld a, [bc]
    db $10
    jr nc, jr_019_6bbf

    db $10
    ld d, b
    inc bc
    db $10
    ld h, b

jr_019_6bae:
    inc c
    db $10
    jr nc, jr_019_6bbd

    rst $38
    db $10
    sub b
    jr jr_019_6bc9

    jr c, jr_019_6bdb

    ld c, $92
    dec e
    db $10

jr_019_6bbd:
    jr nz, jr_019_6bdd

jr_019_6bbf:
    db $10
    ld d, b
    rrca
    stop
    ld b, $10
    ld [hl], b
    dec de
    db $10

jr_019_6bc9:
    ld h, b
    rlca
    rst $38
    db $10
    jr nz, jr_019_6bdb

    stop
    ld [de], a
    db $10
    jr nz, jr_019_6bd7

    db $10
    or b

jr_019_6bd7:
    inc c
    db $10
    ret nc

    add hl, bc

jr_019_6bdb:
    db $10
    and b

jr_019_6bdd:
    inc e
    stop
    rlca
    db $10
    ld b, b
    add hl, de
    rst $38
    db $10
    db $10
    dec d
    db $10
    and b
    ld e, $10
    ldh a, [rNR22]
    stop
    ld a, [bc]
    db $10
    ld h, b
    dec de
    db $10
    ret z

    ld [hli], a
    db $10
    ret nz

    dec c
    db $10
    ld h, b
    ld [de], a
    rst $38
    db $10
    and b
    jr jr_019_6c12

    and b
    ld a, [bc]
    db $10
    and b
    dec bc
    db $10
    add b
    ld a, [bc]
    db $10
    jr nc, @+$18

    db $10
    ld d, b
    inc bc
    db $10
    ret nz

jr_019_6c12:
    inc c
    db $10
    ldh [rNR14], a
    rst $38
    db $10
    or b
    ld [de], a
    db $10
    jr nc, @+$04

    db $10
    ldh [rNR34], a
    db $10
    add b
    ld e, $10
    and b
    rla
    db $10
    ld b, b
    ld d, $10
    db $e4
    jr nz, jr_019_6c3d

    ldh [rTAC], a
    rst $38
    db $10
    jr nz, jr_019_6c3f

    db $10
    inc d
    jr nz, jr_019_6c47

    jr nz, @+$04

    db $10
    ldh [$0a], a
    db $10

jr_019_6c3d:
    jr nc, jr_019_6c48

jr_019_6c3f:
    db $10
    jr nz, jr_019_6c4a

    stop
    rlca
    db $10
    ld [hl], b

jr_019_6c47:
    db $10

jr_019_6c48:
    rst $38
    db $10

jr_019_6c4a:
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    and b
    ld c, $10
    sub h
    jr nz, @+$01

    db $10
    inc b
    ld hl, $1210
    nop
    db $10
    ld h, b
    ld c, $10
    jr nz, jr_019_6ca3

    stop
    ld bc, $3410
    ld hl, $9010
    inc c
    db $10
    ret nz

    rlca
    rst $38
    db $10
    jr nz, jr_019_6ca3

    db $10
    ld [hl], b
    rra
    db $10
    ld d, b
    inc de
    db $10
    db $10
    rla
    db $10
    ld d, b
    inc e

jr_019_6ca3:
    db $10
    sub b
    ld c, $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    and b
    ld c, $10
    sub h
    jr nz, @+$01

    db $10
    inc b
    ld hl, $1210
    nop
    db $10
    ld h, b
    rrca
    db $10
    ld b, b
    ld [de], a
    stop
    ld bc, $f011
    add hl, bc
    rrca
    pop hl
    dec c
    db $10
    ret nz

    inc b
    rst $38
    db $10
    jr nz, jr_019_6d07

    db $10
    ld [hl], b
    rra
    db $10
    ret z

    ld hl, $1010
    rla
    db $10
    ld d, b
    inc e

jr_019_6d07:
    db $10
    sub b
    ld c, $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    xor b
    ld hl, $1010
    dec c
    db $10
    ret nz

    dec d
    db $10
    ld [hl], b
    dec d
    db $10
    sbc b
    ld [hli], a
    db $10
    ret nc

    dec d
    db $10
    ld b, b
    dec c
    db $10
    ldh [$09], a
    rst $38
    db $10
    ret c

    ld hl, $0010
    ld e, $10
    ret nz

    add hl, bc
    db $10
    ld h, b
    ld d, $10
    ldh [rNR33], a
    db $10
    ld d, b
    db $10
    db $10
    and b
    ld c, $10
    sub h
    jr nz, @+$01

    db $10
    inc b
    ld hl, $1210
    nop
    db $10
    or b
    ld [$2010], sp
    inc e
    stop
    ld bc, $3010
    rra
    db $10
    ld b, b
    jr jr_019_6d69

    ret nz

    inc bc
    rst $38
    db $10
    jr nz, jr_019_6d6b

    db $10
    ld [hl], b
    rra
    db $10
    or b
    rlca
    db $10
    db $10
    rla
    db $10

jr_019_6d69:
    ld d, b
    inc e

jr_019_6d6b:
    db $10
    sub b
    ld c, $10
    ldh a, [rTMA]
    db $10
    ld [hl], b
    db $10
    rst $38
    db $10
    ld [hl], h
    jr nz, jr_019_6d89

    nop
    jr jr_019_6d8c

    ld h, b
    inc d
    db $10
    jr nc, jr_019_6d92

    db $10
    ld [hl], b
    dec c
    db $10
    add b
    ld [bc], a
    db $10
    add b

jr_019_6d89:
    ld b, $10
    sub b

jr_019_6d8c:
    ld [bc], a
    rst $38
    db $10
    ld hl, sp+$21
    db $10

jr_019_6d92:
    jr nc, jr_019_6db2

    db $10
    ld h, b
    inc de
    db $10
    add b
    ld d, $10
    ret nz

    inc de
    db $10
    ret nz

    rrca
    db $10
    jr nc, jr_019_6daf

    db $10
    add b
    ld [$10ff], sp
    or b
    inc b
    db $10
    ldh [rP1], a
    db $10
    ld d, h

jr_019_6daf:
    jr nz, jr_019_6dc1

    ld [hl], b

jr_019_6db2:
    inc e
    ld [de], a
    ld d, b
    jr jr_019_6dc5

    ld h, d
    jr jr_019_6dca

    or b
    ld de, $6010
    dec b
    rst $38
    db $10

jr_019_6dc1:
    db $10
    ld bc, $d010

jr_019_6dc5:
    ld a, [bc]
    db $10
    ld b, b
    rra
    db $10

jr_019_6dca:
    ld h, b
    rla
    db $10
    ldh [rNR12], a
    db $10
    ld h, b
    ld b, $10
    ret nz

    nop
    db $10
    jr nz, jr_019_6deb

    rst $38
    db $10
    ld [hl], h
    jr nz, jr_019_6ded

    nop
    jr jr_019_6df0

    ld h, b
    inc d
    db $10
    jr nc, @+$13

    db $10
    ld [hl], b
    dec c
    db $10
    add b
    ld [bc], a

jr_019_6deb:
    db $10
    ld b, b

jr_019_6ded:
    dec c
    db $10
    ld b, b

jr_019_6df0:
    rrca
    rst $38
    db $10
    ret c

    ld hl, $1010
    add hl, bc
    db $10
    ret nz

    add hl, bc
    db $10
    and b
    db $10
    db $10
    ld d, b
    ld de, $4010
    inc c
    db $10
    jr nz, jr_019_6e1e

    db $10
    ldh [$0b], a
    rst $38
    db $10
    ld b, b
    ld a, [bc]
    db $10
    ldh a, [rTAC]
    db $10
    jr nz, jr_019_6e29

    db $10
    ld [hl], b
    inc e
    db $10
    ld [hl], b
    inc de
    db $10
    ldh a, [rNR34]
    db $10

jr_019_6e1e:
    ld b, b
    ld [bc], a
    stop
    dec e
    rst $38
    db $10
    db $10
    ld bc, $d010

jr_019_6e29:
    ld a, [bc]
    db $10
    ld h, b
    nop
    db $10
    add b
    dec d
    db $10
    ret nc

    rra
    db $10
    add b
    ld bc, $c010
    nop
    db $10
    jr nz, jr_019_6e4f

    rst $38
    db $10
    ld [hl], h
    jr nz, jr_019_6e51

    nop
    jr jr_019_6e54

    ld h, b
    inc d
    db $10
    jr nc, @+$13

    db $10
    ld [hl], b
    dec c
    db $10
    add b
    ld [bc], a

jr_019_6e4f:
    db $10
    ld b, b

jr_019_6e51:
    dec c
    db $10
    ld b, b

jr_019_6e54:
    rrca
    rst $38
    db $10
    ret c

    ld hl, $1010
    add hl, bc
    db $10
    ret nz

    add hl, bc
    db $10
    and b
    db $10
    db $10
    ld d, b
    ld de, $4010
    inc c
    db $10
    or b
    rla
    db $10
    ldh [$0b], a
    rst $38
    db $10
    ld d, b
    ld [bc], a
    db $10
    ldh a, [rTAC]
    db $10
    or b
    ld c, $10
    ld d, b
    inc c
    db $10
    and b
    rrca
    db $10
    xor b
    ld [hli], a
    db $10
    db $10
    rlca
    db $10
    ld h, b
    dec b
    rst $38
    db $10
    db $10
    ld bc, $d010
    ld a, [bc]
    db $10
    ld h, b
    nop
    db $10
    add b
    dec d
    db $10
    ret nc

    rra
    db $10
    ret nc

    ld e, $10
    ret nz

    nop
    db $10
    jr nz, jr_019_6eb3

    rst $38
    db $10
    ld [hl], h
    jr nz, jr_019_6eb5

    nop
    jr jr_019_6eb8

    ld h, b
    inc d
    db $10
    jr nc, @+$13

    db $10
    ld [hl], b
    dec c
    db $10
    add b
    ld [bc], a

jr_019_6eb3:
    db $10
    ld b, b

jr_019_6eb5:
    dec c
    db $10
    ld b, b

jr_019_6eb8:
    rrca
    rst $38
    db $10
    ret c

    ld hl, $1010
    add hl, bc
    db $10
    ret nz

    add hl, bc
    db $10
    and b
    db $10
    db $10
    ld d, b
    ld de, $4010
    inc c
    db $10
    call nz, $1020
    add b
    rrca
    rst $38
    db $10
    ldh a, [rNR12]
    db $10
    ld d, b
    ld d, $10
    ld d, h
    ld hl, $d010
    inc b
    db $10
    jr nz, jr_019_6efa

    db $10
    ret nc

    ld [$c010], sp
    ld bc, $6010
    dec b
    rst $38
    db $10
    db $10
    ld bc, $d010
    ld a, [bc]
    db $10
    ld h, b
    nop
    db $10
    add b
    dec d
    db $10
    ret nc

jr_019_6efa:
    rra
    db $10
    ret nc

    ld bc, $c010
    nop
    db $10
    jr nz, jr_019_6f17

    rst $38
    db $10
    ld [hl], h
    jr nz, jr_019_6f19

    nop
    jr jr_019_6f1c

    ld h, b
    inc d
    db $10
    jr nc, @+$13

    db $10
    ld [hl], b
    dec c
    db $10
    add b
    ld [bc], a

jr_019_6f17:
    db $10
    ld b, b

jr_019_6f19:
    dec c
    db $10
    ld b, b

jr_019_6f1c:
    rrca
    rst $38
    db $10
    ret c

    ld hl, $1010
    add hl, bc
    db $10
    ret nz

    add hl, bc
    db $10
    and b
    db $10
    db $10
    ld d, b
    ld de, $4010
    inc c
    db $10
    ldh [$0c], a
    db $10
    ldh a, [rNR10]
    rst $38
    db $10
    jr nz, jr_019_6f3a

jr_019_6f3a:
    db $10
    ret nc

    nop
    db $10
    ldh a, [$0c]
    db $10
    and b
    nop
    db $10
    sub b
    ld bc, $8010
    ld c, $10
    ld [de], a
    nop
    db $10
    ld h, b
    dec b
    rst $38
    db $10
    db $10
    ld bc, $d010
    ld a, [bc]
    db $10
    ld h, b
    nop
    db $10
    add b
    dec d
    db $10
    ret nc

    rra
    db $10
    db $10
    inc e
    db $10
    ret nz

    nop
    db $10
    jr nz, jr_019_6f7b

    rst $38
    db $10
    ld [hl], h
    jr nz, jr_019_6f7d

    nop
    jr jr_019_6f80

    ld h, b
    inc d
    db $10
    jr nc, @+$13

    db $10
    ld [hl], b
    dec c
    db $10
    add b
    ld [bc], a

jr_019_6f7b:
    db $10
    ld b, b

jr_019_6f7d:
    dec c
    db $10
    ld b, b

jr_019_6f80:
    rrca
    rst $38
    db $10
    ret c

    ld hl, $1010
    add hl, bc
    db $10
    ret nz

    add hl, bc
    db $10
    and b
    db $10
    db $10
    ld d, b
    ld de, $4010
    inc c
    stop
    inc d
    db $10
    ret nc

    dec c
    rst $38
    db $10
    or b
    dec bc
    db $10
    ld [hl], b
    inc c
    stop
    inc bc
    stop
    ld [$1010], sp
    inc c
    db $10
    ldh a, [rNR23]
    db $10
    ret nc

    dec de
    db $10
    ld h, b
    dec b
    rst $38
    db $10
    db $10
    ld bc, $d010
    ld a, [bc]
    db $10
    ld h, b
    nop
    db $10
    add b
    dec d
    db $10
    ret nc

    rra
    db $10
    add b
    inc c
    db $10
    ret nz

    nop
    db $10
    jr nz, @+$15

    rst $38
    db $10
    ldh [rNR22], a
    db $10
    ld b, b
    dec bc
    db $10
    ret nz

    dec b
    db $10
    sub b
    dec d
    db $10
    or b
    dec c
    db $10
    ld h, h
    jr nz, jr_019_6ff0

    ld [hl], b
    ld [bc], a
    db $10
    ret nc

    ld [de], a
    rst $38
    ld de, $1280
    rrca
    or c
    inc e
    db $10
    ret nc

    jr jr_019_7000

jr_019_6ff0:
    sub b
    rlca
    db $10
    ret nc

    ld de, $1010
    rrca
    db $10
    ldh a, [$0a]
    db $10
    jr nc, jr_019_7005

    rst $38
    db $10

jr_019_7000:
    add b
    inc bc
    db $10
    sub b
    inc d

jr_019_7005:
    db $10
    and h
    jr nz, jr_019_7019

    ld [hl], b
    dec b
    stop
    dec de
    db $10
    sub b
    ld a, [bc]
    db $10
    ld h, b
    ld [bc], a
    db $10
    ret nc

    inc de
    rst $38
    db $10

jr_019_7019:
    ret nc

    rrca
    db $10
    ld [de], a
    nop
    db $10
    ld b, b
    nop
    db $10
    ld [de], a
    nop
    db $10
    ld [hl], b
    dec bc
    db $10
    ld e, b
    ld [hli], a
    db $10
    ld d, b
    dec b
    stop
    dec b
    rst $38
    db $10
    db $10
    inc de
    db $10
    ld b, b
    dec bc
    db $10
    ldh [$0e], a
    db $10
    sub b
    dec d
    db $10
    or b
    dec c
    db $10
    ld h, h
    jr nz, jr_019_7054

    ld [hl], b
    ld [bc], a
    db $10
    ret nc

    ld [de], a
    rst $38
    db $10
    ld d, b
    ld bc, $0010
    dec d
    db $10
    jr nc, jr_019_705d

    db $10

jr_019_7054:
    sub b
    rlca
    db $10
    ret nc

    ld de, $3010
    inc de
    db $10

jr_019_705d:
    ldh a, [$0a]
    db $10
    jr nc, jr_019_7069

    rst $38
    db $10
    add b
    inc bc
    db $10
    sub b
    inc d

jr_019_7069:
    db $10
    and h
    jr nz, jr_019_707d

    ld [hl], b
    dec b
    db $10
    ret nc

    rlca
    db $10
    jr nc, jr_019_7078

    db $10
    ld h, b
    ld [bc], a

jr_019_7078:
    db $10
    ret nc

    inc de
    rst $38
    db $10

jr_019_707d:
    sub b
    ld b, $10
    adc b
    ld [hli], a
    db $10
    and b
    dec c
    db $10
    adc b
    ld [hli], a
    db $10
    or b
    add hl, de
    db $10
    ldh a, [$0e]
    db $10
    ld d, b
    dec b
    db $10
    ld d, b
    inc d
    rst $38
    db $10
    ldh [rSC], a
    db $10
    ld b, b
    dec bc
    db $10
    ldh [$0e], a
    db $10
    sub b
    dec d
    db $10
    or b
    dec c
    db $10
    ld h, h
    jr nz, jr_019_70b8

    ld [hl], b
    ld [bc], a
    db $10
    ret nc

    ld [de], a
    rst $38
    ld de, $1280
    rrca
    ld bc, $1015
    db $10
    add hl, de
    db $10

jr_019_70b8:
    sub b
    rlca
    db $10
    ret nc

    ld de, $3010
    inc de
    db $10
    ldh a, [$0a]
    db $10
    jr nc, jr_019_70cd

    rst $38
    db $10
    add b
    inc bc
    db $10
    ldh a, [rSC]

jr_019_70cd:
    db $10
    and h
    jr nz, jr_019_70e1

    ld [hl], b
    dec b
    db $10
    jr nc, @+$1e

    db $10
    ret nz

    rra
    db $10
    ld h, b
    ld [bc], a
    db $10
    jr nz, jr_019_70e2

    rst $38
    ld [de], a

jr_019_70e1:
    ld [de], a

jr_019_70e2:
    nop
    ld c, $12
    nop
    db $10
    ld b, b
    db $10
    db $10
    ld [de], a
    nop
    db $10
    ldh a, [$0b]
    db $10
    or b
    ld e, $10
    nop
    dec bc
    db $10
    ldh [rSB], a
    rst $38
    db $10
    ld [hl], b
    rlca
    db $10
    ld b, b
    dec bc
    db $10
    ldh [$0e], a
    db $10
    sub b
    dec d
    db $10
    or b
    dec c
    db $10
    jr nc, jr_019_710c

    db $10

jr_019_710c:
    ld [hl], b
    ld [bc], a
    db $10
    ret nc

    ld [de], a
    rst $38
    db $10
    jr jr_019_7137

    stop
    dec d
    db $10
    jr nc, jr_019_7125

    db $10
    sub b
    rlca
    db $10
    ret nc

    ld de, $3010
    inc de
    db $10

jr_019_7125:
    ldh a, [$0a]
    db $10
    jr nc, jr_019_7131

    rst $38
    db $10
    add b
    inc bc
    db $10
    sub b
    inc d

jr_019_7131:
    db $10
    ld b, b
    ld b, $10
    add b
    dec b

jr_019_7137:
    db $10
    ldh a, [rNR11]
    db $10
    ldh a, [rNR30]
    db $10
    ld h, b
    ld [bc], a
    db $10
    jr nz, jr_019_7146

    rst $38
    db $10
    adc b

jr_019_7146:
    ld [hli], a
    db $10
    adc b
    ld [hli], a
    db $10
    and b
    dec c
    db $10
    adc b
    ld [hli], a
    db $10
    ldh a, [$0b]
    db $10
    db $10
    db $10
    stop
    dec bc
    db $10
    ld h, b
    ld e, $ff
    db $10
    ldh [rSC], a
    db $10
    ld b, b
    dec bc
    db $10
    ldh [$0e], a
    db $10
    sub b
    dec d
    db $10
    or b
    dec c
    db $10
    ld h, h
    jr nz, jr_019_7180

    ld [hl], b
    ld [bc], a
    db $10
    ret nc

    ld [de], a
    rst $38
    ld de, $1280
    rrca
    ld bc, $1015
    jr nc, jr_019_7189

    db $10

jr_019_7180:
    sub b
    rlca
    db $10
    ret nc

    ld de, $4010
    ld a, [de]
    db $10

jr_019_7189:
    ldh a, [$0a]
    db $10
    jr nc, jr_019_7195

    rst $38
    db $10
    add b
    inc bc
    db $10
    sub b
    inc d

jr_019_7195:
    db $10
    and h
    jr nz, jr_019_71a9

    ld [hl], b
    dec b
    db $10
    add b
    db $10
    db $10
    jr nc, jr_019_71a5

    db $10
    ld h, b
    ld [bc], a
    db $10

jr_019_71a5:
    jr nz, jr_019_71aa

    rst $38
    ld [de], a

jr_019_71a9:
    ld [de], a

jr_019_71aa:
    nop
    ld c, $12
    nop
    db $10
    ld b, b
    nop
    db $10
    ld [de], a
    nop
    db $10
    ldh a, [$0b]
    db $10
    or b
    ld e, $10
    nop
    dec bc
    db $10
    ret nz

    ld e, $ff
    db $10
    ld [hl], b
    rlca
    db $10
    ld b, b
    dec bc
    db $10
    ldh [$0e], a
    db $10
    sub b
    dec d
    db $10
    or b
    dec c
    db $10
    jr nc, jr_019_71d4

    db $10

jr_019_71d4:
    ld [hl], b
    ld [bc], a
    db $10
    ret nc

    ld [de], a
    rst $38
    ld de, $1280
    rrca
    ld bc, $1015
    ret nc

    inc d
    db $10
    sub b
    rlca
    db $10
    ret nc

    ld de, $f010
    ld d, $10
    ldh a, [$0a]
    db $10
    jr nc, jr_019_71f9

    rst $38
    db $10
    ld [hl], b
    inc b
    db $10
    or b
    dec e

jr_019_71f9:
    db $10
    ld b, b
    ld b, $10
    add b
    dec b
    db $10
    ld [hl], b
    ld a, [de]
    db $10
    ldh a, [rNR30]
    db $10
    ld h, b
    ld [bc], a
    db $10
    ld d, b
    dec e
    rst $38
    db $10
    ld l, b
    ld [hli], a
    db $10
    ld [de], a
    nop
    db $10
    jr nz, jr_019_7219

    db $10
    ld [de], a
    nop
    db $10

jr_019_7219:
    ldh a, [$0b]
    db $10
    or b
    ld e, $10
    nop
    dec bc
    db $10
    ret nz

    ld c, $ff
    db $10
    add b
    add hl, bc
    db $10
    ld b, b
    dec bc
    db $10
    ldh [$0e], a
    db $10
    sub b
    dec d
    db $10
    or b
    dec c
    db $10
    ld h, h
    jr nz, jr_019_7248

    ld [hl], b
    ld [bc], a
    db $10
    ret nc

    ld [de], a
    rst $38
    ld de, $1280
    rrca
    ld bc, $1015
    ret nc

    inc d
    db $10

jr_019_7248:
    sub b
    rlca
    db $10
    ret nc

    ld de, $d010
    ld c, $10
    ldh a, [$0a]
    db $10
    jr nc, jr_019_725d

    rst $38
    db $10
    ld [hl], b
    inc b
    db $10
    db $10
    ld [de], a

jr_019_725d:
    db $10
    ld b, b
    ld b, $10
    add b
    dec b
    db $10
    ld [hl], b
    nop
    db $10
    jr nc, jr_019_726d

    db $10
    ld h, b
    ld [bc], a
    db $10

jr_019_726d:
    ldh [rNR30], a
    rst $38
    ld [de], a
    ld [de], a
    nop
    ld c, $12
    nop
    db $10
    ld b, b
    db $10
    db $10
    ld [de], a
    nop
    db $10
    ld [hl], b
    inc bc
    db $10
    or b
    ld e, $10
    nop
    dec bc
    db $10
    ret nz

    ld e, $ff
    db $10
    ld h, b
    ld de, $4010
    dec bc
    db $10
    jr nz, jr_019_7297

    db $10
    sub b
    dec d
    db $10
    or b

jr_019_7297:
    dec c
    db $10
    ld h, h
    jr nz, jr_019_72ac

    ret nz

    ld d, $10
    ld d, b
    add hl, bc
    rst $38
    db $10
    ret nc

    inc e
    db $10
    ld b, b
    ld [$d010], sp
    inc d
    db $10

jr_019_72ac:
    sub b
    rlca
    db $10
    db $10
    rra
    db $10
    and b
    inc d
    db $10
    ldh a, [$0a]
    db $10
    jr nc, jr_019_72c1

    rst $38
    db $10
    ld [hl], b
    inc b
    db $10
    sub b
    add hl, de

jr_019_72c1:
    db $10
    ld d, b
    dec bc
    db $10
    ldh [rNR32], a
    db $10
    ld d, b
    ld e, $10
    ld a, b
    ld [hli], a
    db $10
    jr nc, jr_019_72e8

    db $10
    ld [hl], b
    rrca
    rst $38
    db $10
    and b
    inc c
    db $10
    ld b, b
    ld e, $10
    or b
    db $10
    db $10
    ld [hl], b
    ld e, $10
    ld [hl], b
    rla
    db $10
    ld b, b
    dec d
    ld [de], a
    ld b, b

jr_019_72e8:
    dec de
    ld c, $92
    ld de, $10ff
    ld h, b
    inc e
    db $10
    ld b, b
    dec bc
    db $10
    ldh [$0e], a
    db $10
    sub b
    dec d
    db $10
    or b
    dec c
    db $10
    ld h, h
    jr nz, jr_019_7310

    ld [hl], b
    ld [bc], a
    db $10
    ret nc

    ld [de], a
    rst $38
    db $10
    ld d, b
    ld bc, $0010
    dec d
    db $10
    jr nc, jr_019_7319

    db $10

jr_019_7310:
    ldh [$03], a
    db $10
    jr nc, jr_019_7322

    db $10
    ld h, b
    db $10
    db $10

jr_019_7319:
    ldh a, [$0a]
    db $10
    jr nc, jr_019_7325

    rst $38
    db $10
    ld [hl], b
    inc b

jr_019_7322:
    db $10
    ld d, b
    add hl, de

jr_019_7325:
    db $10
    ld b, b
    ld b, $10
    add b
    dec b
    db $10
    and b
    add hl, de
    ld [de], a
    ld [$0e22], sp
    ld h, d
    ld [bc], a
    db $10
    jr nz, jr_019_733a

    rst $38
    db $10
    sub b

jr_019_733a:
    ld b, $10
    ld [de], a
    nop
    db $10
    ld b, b
    db $10
    db $10
    ld [de], a
    nop
    db $10
    ldh a, [$0b]
    db $10
    sub b
    add hl, bc
    db $10
    ld d, b
    dec b
    db $10
    ret nz

    ld c, $ff
    db $10
    jr nc, @+$10

    db $10
    ld b, b
    dec bc
    db $10
    ldh [$0e], a
    db $10
    sub b
    dec d
    db $10
    or b
    dec c
    db $10
    jr nc, jr_019_7368

    db $10
    ld [hl], b
    ld [bc], a
    db $10
    ret nc

jr_019_7368:
    ld [de], a
    rst $38
    db $10
    ld d, b
    ld bc, $0010
    dec d
    db $10
    jr nc, jr_019_737d

    db $10
    sub b
    rlca
    db $10
    db $10
    dec e
    db $10
    jr nc, jr_019_738f

    db $10

jr_019_737d:
    ldh a, [$0a]
    db $10
    jr nc, jr_019_7389

    rst $38
    db $10
    add b
    inc bc
    db $10
    ld d, b
    add hl, de

jr_019_7389:
    db $10
    ld b, b
    ld b, $10
    add b
    dec b

jr_019_738f:
    db $10
    ret nz

    ld a, [de]
    db $10
    jr nc, jr_019_7399

    db $10
    ld h, b
    ld [bc], a
    db $10

jr_019_7399:
    add b
    inc b
    rst $38
    ld [de], a
    ldh a, [rSB]
    ld c, $12
    nop
    db $10
    jr nz, jr_019_73b7

    db $10
    adc b
    ld [hli], a
    db $10
    ld h, b
    add hl, de
    db $10
    jr nc, @+$11

    stop
    dec bc
    db $10
    or b
    jr @+$01

    db $10
    add b

jr_019_73b7:
    add hl, bc
    db $10
    ld b, b
    dec bc
    db $10
    ldh [$0e], a
    db $10
    sub b
    dec d
    db $10
    or b
    dec c
    db $10
    ld h, h
    jr nz, jr_019_73d8

    ld [hl], b
    ld [bc], a
    db $10
    ret nc

    ld [de], a
    rst $38
    ld de, $1280
    rrca
    ld bc, $1015
    db $10
    add hl, de
    db $10

jr_019_73d8:
    sub b
    rlca
    db $10
    ret nc

    ld de, $3010
    inc de
    db $10
    ldh a, [$0a]
    db $10
    jr nc, jr_019_73ed

    rst $38
    db $10
    add b
    inc bc
    db $10
    ldh a, [rSC]

jr_019_73ed:
    db $10
    and h
    jr nz, jr_019_7401

    ld [hl], b
    dec b
    db $10
    ret nc

    inc bc
    db $10
    jr nc, jr_019_73fc

    db $10
    ld h, b
    ld [bc], a

jr_019_73fc:
    db $10
    ld b, b
    rla
    rst $38
    db $10

jr_019_7401:
    sub b
    inc de
    db $10
    sub b
    ld a, [de]
    db $10
    add b
    inc de
    db $10
    adc b
    ld [hli], a
    db $10
    ldh [rDIV], a
    db $10
    ld d, b
    rra
    stop
    dec bc
    stop
    dec b
    rst $38
    db $10
    add b
    add hl, bc
    db $10
    ld b, b
    dec bc
    db $10
    ldh [$0e], a
    db $10
    sub b
    dec d
    db $10
    or b
    dec c
    db $10
    ld h, h
    jr nz, jr_019_743c

    ld [hl], b
    ld [bc], a
    db $10
    ret nc

    ld [de], a
    rst $38
    ld de, $1280
    ld [de], a
    ld hl, $0d0a
    db $d3
    inc d
    db $10

jr_019_743c:
    sub b
    rlca
    db $10
    ret nc

    ld de, $f010
    ld d, $10
    ldh a, [$0a]
    db $10
    jr nc, jr_019_7451

    rst $38
    db $10
    add b
    inc bc
    db $10
    ld b, b
    add hl, bc

jr_019_7451:
    db $10
    add b
    dec de
    db $10
    ret nc

    dec b
    db $10
    jr nz, jr_019_746b

    db $10
    or h
    jr nz, jr_019_746e

    ld h, b
    ld [bc], a
    db $10
    sub b
    db $10
    rst $38
    stop
    ld de, $0010
    dec c
    db $10

jr_019_746b:
    or b
    dec de
    db $10

jr_019_746e:
    adc b
    ld [hli], a
    db $10
    inc h
    ld hl, $6010
    dec d
    stop
    dec bc
    db $10
    ld d, b
    inc d
    rst $38
    db $10
    ldh [$08], a
    db $10
    and b
    dec de
    db $10
    db $f4
    jr nz, jr_019_7497

    sub b
    inc b
    db $10
    and b
    dec b
    db $10
    or b
    add hl, bc
    db $10
    ld [hl], b
    ld [bc], a
    db $10
    ld [hl], b
    ld a, [bc]
    rst $38
    db $10

jr_019_7497:
    inc [hl]
    jr nz, jr_019_74aa

    jr nz, jr_019_74b6

    db $10
    cp b
    ld hl, $1010
    inc d
    db $10
    ret nc

    ld de, $9010
    nop
    db $10
    ret nc

jr_019_74aa:
    ld a, [de]
    db $10
    db $10
    dec b
    rst $38
    db $10
    jr nz, jr_019_74b3

    db $10

jr_019_74b3:
    add h
    jr nz, jr_019_74c6

jr_019_74b6:
    and h
    jr nz, jr_019_74c9

    call nc, $1020
    cp b
    ld [hli], a
    db $10
    ret nc

    ld b, $10
    ld h, b
    ld [bc], a
    db $10
    add b

jr_019_74c6:
    dec c
    rst $38
    db $10

jr_019_74c9:
    ld [hl], b
    inc d
    db $10
    ld b, b
    ld de, $5010
    dec de
    db $10
    db $10
    dec bc
    db $10
    ld b, b
    rlca
    db $10
    sub b
    inc bc
    db $10
    add b
    rla
    db $10
    ret nz

    ld c, $ff
    db $10
    ret nc

    ld [bc], a
    db $10
    ret nz

    add hl, de
    stop
    inc b
    db $10
    ret nc

    dec e
    db $10
    ld [hl], b
    ld bc, $a010
    add hl, bc
    db $10
    ld [hl], b
    ld [bc], a
    db $10
    ret nc

    ld [de], a
    rst $38
    db $10
    sub b
    ld d, $10
    db $10
    ld e, $10
    jr nc, @+$0c

    db $10
    ld [de], a
    nop
    db $10
    ret nc

    ld de, $c010
    ld [$f010], sp
    dec de
    db $10
    ld h, b
    dec e
    rst $38
    db $10
    ret nc

    add hl, de
    db $10
    sub b
    ld [$4010], sp
    ld b, $10
    ldh a, [$15]
    db $10
    ld h, b
    ld bc, $2010
    dec bc
    db $10
    ld h, b
    ld [bc], a
    db $10
    ldh [rNR13], a
    rst $38
    db $10
    ldh [rIF], a
    stop
    inc c
    ld de, $06e0
    rrca
    and c
    ld [$1010], sp
    inc bc
    db $10
    ld d, b
    ld c, $10
    sbc b
    ld hl, $e010
    dec de
    rst $38
    db $10
    sub b
    rra
    ld [de], a
    or b
    dec b
    ld c, $32
    nop
    db $10
    sub b
    dec d
    db $10
    and b
    ld [de], a
    db $10
    and b
    ld [de], a
    db $10
    ld [hl], b
    ld [bc], a
    db $10
    ret nc

    ld [de], a
    rst $38
    db $10
    ld d, b
    ld bc, $d010
    ld d, $10
    jr nc, jr_019_7571

    db $10
    and b
    ld b, $10
    ret nc

    ld de, $1210
    nop
    db $10

jr_019_7571:
    and b
    ld [de], a
    db $10
    and b
    ld [de], a
    rst $38
    db $10
    jr nc, jr_019_7594

    db $10
    ret nz

    jr jr_019_758e

    and h
    jr nz, jr_019_7591

    ret nc

    inc c
    db $10
    db $10
    ld a, [bc]
    db $10
    sub b
    dec c
    db $10
    ld h, b
    ld [bc], a
    db $10
    and b

jr_019_758e:
    dec e
    rst $38
    db $10

jr_019_7591:
    jr nc, jr_019_75a7

    db $10

jr_019_7594:
    db $10
    ld de, $a010
    inc bc
    db $10
    ld [hl], b
    ld d, $10
    nop
    add hl, bc
    db $10
    and b
    ld bc, $3010
    ld b, $10
    ld h, b

jr_019_75a7:
    rra
    rst $38
    db $10
    jr nz, jr_019_75b5

    db $10
    ldh a, [rP1]
    db $10
    jr nz, jr_019_75cb

    db $10
    ldh [rTIMA], a

jr_019_75b5:
    db $10
    add b
    add hl, de
    db $10
    ld d, b
    dec d
    db $10
    ld d, b
    ld [de], a
    db $10
    ld [hl], b
    ld c, $ff
    db $10
    ret nz

    dec bc
    db $10
    jr nc, jr_019_75d0

    ld de, $0450

jr_019_75cb:
    rrca
    ld d, c
    nop
    db $10
    db $f4

jr_019_75d0:
    rra
    db $10
    ld b, b
    inc e
    db $10
    ld [hl], b
    dec e
    ld [de], a
    ld [de], a
    nop
    rst $38
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    ld a, a
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    ld c, $12
    nop
    ld [$14b8], sp
    db $10
    ld [de], a
    nop
    rst $38
    db $10
    ret nz

    ld [bc], a
    db $10
    jr nc, jr_019_762d

    db $10
    ld [hl], b
    ld [$4010], sp
    dec e
    db $10
    ld [de], a
    nop
    db $10
    ld h, b
    inc bc
    db $10
    ret c

    ld [hli], a
    db $10
    ldh a, [$03]
    rst $38
    db $10
    ret nz

    dec de
    db $10
    ldh a, [rNR24]
    db $10
    jr nc, jr_019_7641

    db $10

jr_019_762d:
    ldh [rNR11], a
    db $10
    ld b, b
    ld c, $10
    db $10
    inc b
    stop
    inc e
    db $10
    sub b
    dec b
    rst $38
    db $10
    ld [hl], b
    ld de, $6410

jr_019_7641:
    ld hl, $8010
    dec e
    db $10
    ldh [rNR24], a
    db $10
    and b
    dec d
    db $10
    or b
    rra
    db $10
    ldh a, [rIF]
    stop
    ld d, $ff
    db $10
    jr nz, jr_019_766e

    db $10
    jr nz, jr_019_7671

    db $10
    ld b, b
    inc bc
    db $10
    sub b
    rla
    db $10
    jr nz, jr_019_7674

    db $10
    db $10
    dec de
    db $10
    jr nz, jr_019_7680

    db $10
    jr nz, jr_019_7683

    rst $38

jr_019_766e:
    stop
    db $10

jr_019_7671:
    stop
    rrca

jr_019_7674:
    ld [de], a
    nop
    ld [bc], a
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    inc c
    ld [de], a
    nop

jr_019_7680:
    ld c, $82
    inc e

jr_019_7683:
    ld [de], a
    ld h, b
    ld [$0eff], sp
    db $76
    ld hl, $0010
    rra
    db $10
    and b
    ld a, [de]
    db $10
    ld h, b
    ld a, [bc]
    db $10
    ld b, b
    inc d
    db $10
    ret nz

    rla
    ld [de], a
    ld [de], a
    nop
    ld c, $02
    inc de
    rst $38
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    ld [de], a
    ld [de], a
    nop
    inc c
    ld [de], a
    nop
    inc c
    or h
    ld bc, $1212
    nop
    ld c, $62
    add hl, bc
    rst $38
    db $10
    jr nz, jr_019_76d2

    db $10
    jr nz, jr_019_76d5

    db $10
    ld b, b
    inc bc
    db $10
    sub b
    rla
    db $10
    or b
    rrca
    db $10
    ld h, b
    inc b
    db $10
    jr nz, jr_019_76e4

    db $10
    jr nz, jr_019_76e7

    add hl, de

jr_019_76d2:
    add hl, de
    add hl, de
    add hl, de

jr_019_76d5:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_019_76e4:
    add hl, de
    add hl, de
    add hl, de

jr_019_76e7:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

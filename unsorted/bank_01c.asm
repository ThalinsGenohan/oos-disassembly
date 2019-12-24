; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01c", ROMX

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    and c
    dec bc
    and c
    xor l
    ld c, l
    ld b, c
    xor e
    ld b, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    db $10
    cp l
    dec e
    dec [hl]
    or l
    cp l
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $efef
    rst $20
    jp hl


    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ld bc, $c7c7
    xor e
    xor e
    ld l, l
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ld bc, $01ef
    ld bc, $c701
    xor e
    ld l, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01d7
    ld d, l
    ld d, l
    ld sp, $017d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ld bc, $01ef
    ld d, l
    ld bc, $016d
    ld l, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst AddAToHL
    rst AddAToHL
    push de
    inc de
    rst AddAToHL
    rst AddAToHL
    rst AddAToHL
    dec d
    pop de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    or a
    and c
    dec b
    and l
    and l
    and a
    adc a
    ld h, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $7955
    dec [hl]
    ld c, l
    ld c, l
    ld sp, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ld l, l
    ld l, l
    ld bc, $6def
    ld l, l
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $28
    rst $28
    rst $20
    rst $00
    db $db
    cp e
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $7d7d
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    db $ed
    dec bc
    rst $00
    rst $00
    and a
    ld l, e
    call $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    xor a
    db $ed
    dec bc
    rst $20
    rst $00
    and a
    ld l, e
    call $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ld [hl], a
    and c
    push hl
    ld b, l
    and l
    rst $28
    xor a
    ld h, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    cp e
    add e
    cp e
    add e
    cp e
    add e
    push de
    ld sp, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $1155
    ld d, l
    ld de, $7d7d
    ld a, l
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    add a
    rst $30
    add c
    rst $30
    nop
    rst $30
    rst $30
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst JumpTable
    rst JumpTable
    ld bc, $dddd
    db $dd
    cp l
    cp l
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld bc, $5555
    dec b
    ld d, l
    push de
    and l
    ld [hl], c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ld bc, $01ef
    ld l, l
    ld bc, $5df6
    ld h, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $30
    add c
    add c
    add c
    rst $28
    add c
    db $dd
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    add c
    inc bc
    add e
    ld bc, $aded
    db $dd
    ld h, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ld l, l
    ld l, l
    xor e
    rst $28
    rst AddAToHL
    rst AddAToHL
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst AddAToHL
    cp e
    ld bc, $01ef
    xor e
    rst $00
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    and c
    ld l, l
    ld bc, $05af
    and l
    adc c
    ld h, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    and c
    ld l, l
    ld bc, $01ad
    and c
    adc l
    add hl, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    di
    di
    pop af
    push af
    push af
    rst $30
    add a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ld bc, $016d
    rst $00
    ld bc, $d7ef
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    db $e3
    rst $28
    rst $28
    rst $28
    rst $28
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $5555
    ld d, l
    ld sp, $7d7d
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    adc a
    ld bc, $abc7
    ld b, l
    rst $30
    ld bc, $ffef
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    nop
    add c
    nop
    jp $c33c


    db $db
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $28
    add c
    cp l
    add c
    db $e3
    sbc c
    db $e3
    sub c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    dec sp
    xor d
    ld a, [bc]
    cp e
    sbc e
    dec [hl]
    or l
    xor [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    reti


    sbc l
    db $eb
    jp $e73c


    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst JumpTable
    rst JumpTable
    ld bc, $c1df
    sbc l
    ld e, l
    db $dd
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst JumpTable
    rst JumpTable
    ld bc, $c1df
    or a
    or a
    ld [hl], a
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ld bc, $efef
    rst AddAToHL
    rst AddAToHL
    cp e
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    xor e
    xor e
    ld l, l
    ld l, l
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ld bc, $c7c7
    xor e
    xor e
    ld b, l
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $efef
    add e
    rst $28
    rst $28
    rst $28
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $017d
    ld b, l
    ld l, c
    ld bc, $017d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $6d01
    ld bc, $01ef
    db $dd
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    nop
    db $dd
    cp l
    cp c
    set 4, a
    adc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    xor e
    xor e
    ld l, l
    db $eb
    ei
    rst $30
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    add c
    ld [hl], a
    add c
    rst AddAToHL
    nop
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $00
    rst AddAToHL
    cp e
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    xor e
    xor e
    ld bc, $a3ab
    cp a
    cp a
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ld bc, $6d6d
    ld bc, $efef
    rst $28
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
    jp $bbdb


    rst $20
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld e, l
    db $ed
    dec d
    or l
    dec d
    dec d
    cp l
    ld e, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    ld bc, $d7bb
    sub $b1
    scf
    or a
    or c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $1155
    ld l, l
    ld bc, $0155
    ld b, l
    ld b, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp c
    and e
    sub l
    ld a, [hli]
    cp l
    and b
    dec a
    and l
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $016d
    rst $28
    add e
    add e
    rst $28
    ld bc, $ffef
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ld bc, $83ef
    add e
    cp e
    add e
    cp e
    ld bc, $ffbb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ld bc, $01ef
    db $fd
    cp c
    db $d3
    rst $20
    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    sbc l
    dec c
    ld l, l
    ld l, c
    ld l, e
    dec bc
    ld l, d
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    add e
    db $eb
    nop
    rst $08
    add c
    ld b, c
    db $dd
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc e
    xor e
    ld h, c
    dec bc
    or c
    dec bc
    or c
    add l
    ld l, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    cp l
    add c
    cp l
    add c
    cp l
    cp l
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    ld de, $00fb
    dec e
    ldh [rNR33], a
    ld d, l
    dec e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $17b7
    ld d, l
    inc de
    ld d, a
    rst AddAToHL
    push de
    or c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst JumpTable
    db $dd
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld e, a
    ld e, l
    ld e, l
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld de, $ff55
    ld de, $1515
    ld [hl], l
    ld d, a
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $016d
    ld l, l
    ld bc, $efef
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $5555
    ld d, e
    dec b
    sub l
    sub c
    ld d, a
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01d7
    ld bc, $01d7
    rst $38
    ld d, [hl]
    ld b, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ld bc, $015b
    ld d, d
    ld bc, $5401
    ld d, [hl]
    ld sp, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    xor c
    adc c
    xor a
    ld bc, $83ef
    rst $28
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    push de
    push de
    push de
    push de
    push de
    cp l
    cp l
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    ld [hl], c
    ld e, e
    or c
    ld e, a
    ld bc, $15b5
    ld de, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    and l
    add c
    and l
    add c
    db $db
    sbc c
    ld e, d
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    xor a
    inc bc
    ld l, a
    rst $28
    add e
    rst $28
    rst $28
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld de, $405b
    dec e
    ld b, b
    ld e, l
    dec d
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    xor e
    rst AddAToHL
    add hl, sp
    rst $28
    xor e
    xor e
    rst AddAToHL
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    cp l
    cp l
    sbc c
    db $db
    db $db
    db $db
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $efef
    ld bc, $d7d7
    cp e
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ld bc, $d755
    or c
    rst $38
    ld bc, $01ef
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    nop
    ld d, l
    ld b, b
    rra
    ld d, c
    ld d, l
    dec d
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    xor e
    add e
    xor e
    rst $00
    rst $28
    ld bc, $55ab
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    add c
    dec bc
    or a
    and e
    sbc l
    and e
    ld l, e
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst JumpTable
    ld b, c
    cp a
    pop bc
    dec d
    pop bc
    push de
    add c
    dec a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    db $db
    db $db
    sbc e
    xor d
    ld a, [hli]
    xor d
    xor d
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $00
    rst $00
    add e
    add e
    ld bc, $ffff
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $00
    rst $28
    ld de, $39c7
    rst $28
    ld de, $c739
    rst $38
    rst $00
    rst $00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $7fff
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld bc, $7fff
    add c
    ld bc, $ffff
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $20
    rst $38
    jp $c3bd


    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    cp l
    jp $ffff


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
    rst $38
    db $fd
    rst $38
    di
    rst $38
    cp d
    rst $00
    db $fd
    xor e
    rst $38
    add e
    rst $38
    add e
    cp e
    ld b, l
    rst $38
    rst $00
    rst AddAToHL
    cp e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    ld b, d
    jp Jump_01c_7e3c


    cp l
    rst $38
    add c
    rst $38
    add c
    cp l
    jp $ffff


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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdff


    jp $817e


    ld a, [hl]
    add c
    inc a
    jp $ff81


    jp $ffff


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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    cp e
    ld a, l
    rst $38
    add e
    add e
    ld a, l
    rst $38
    ld bc, $01ff
    ld a, l
    add e
    add e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ei
    add a
    sbc l
    ld h, d
    sbc a
    ld h, b
    db $fd
    ld [bc], a
    ei
    add a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rrca
    cp a
    ld h, l
    cp a
    ld h, c
    cp a
    ld h, c
    cp a
    ld h, l
    rst $38
    rrca
    rst $38
    sbc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $81ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $20
    rst $38
    ei
    rst $20
    rst $38
    db $e3
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    adc a
    rst JumpTable
    and a
    ei
    rlca
    cp l
    jp $91ef


    rst $28
    sub b
    rst $30
    ret


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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    rst $00
    rst $00
    rst $38
    rst $38
    add e
    rst $00
    cp e
    rst $00
    cp e
    rst $38
    add e
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
    rst $38
    rst $38
    sbc a
    rst $38
    rrca
    cp a
    ld h, a
    cp a
    ld h, e
    cp [hl]
    ld h, c
    cp l
    ld h, [hl]
    db $fd
    ld c, $fd
    sbc [hl]
    rst $38
    pop hl
    di
    db $ed
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    jp $c300


    nop
    and l
    nop
    and l
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    and l
    nop
    and l
    nop
    jp $c300


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp $c300


    nop
    and l
    nop
    and l
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    and l
    nop
    and l
    nop
    jp $c300


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp $c300


    nop
    and l
    nop
    and l
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    and l
    nop
    and l
    nop
    jp $c300


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld_long a, $fffa
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
    rst $38
    ld hl, sp-$06
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    add e
    ld bc, $0101
    add e
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    ld bc, $0101
    add e
    rst $28
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $00
    add e
    ld bc, $8301
    rst $00
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $00
    add e
    ld bc, $8301
    rst $28
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    ld bc, $0101
    add e
    rst $00
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $00
    add e
    ld bc, $c7c7
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    rst $00
    rst $00
    ld bc, $c783
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $20
    ret nz

    add b
    add b
    ret nz

    rst $20
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    di
    add c
    add b
    add b
    add c
    di
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    db $db
    rst $20
    rst $20
    db $db
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    or a
    sub e
    sub e
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
    rst $38
    rst $38
    db $e3
    rst $28
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $00
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
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
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
    rst $38
    rst $38
    rst $38
    cp a
    rst JumpTable
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
    rst $38
    rst $38
    adc a
    xor a
    adc a
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
    rst $38
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $28
    rst $28
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    sub e
    db $db
    or a
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
    rst $38
    rst $38
    cp e
    cp e
    ld bc, $bbbb
    cp e
    ld bc, $bbbb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    add a
    ld l, e
    ld l, a
    add a
    db $eb
    ld l, e
    add a
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    ld e, e
    or a
    rst $28
    rst $28
    db $db
    or l
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    or a
    or a
    rst $00
    xor a
    ld [hl], l
    ld a, e
    ld [hl], a
    adc l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    rst $28
    rst JumpTable
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
    rst $38
    ei
    rst $30
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $30
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst JumpTable
    rst $28
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $28
    rst JumpTable
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    xor e
    rst $00
    xor e
    rst $28
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
    rst $28
    rst $28
    add e
    rst $28
    rst $28
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
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rst JumpTable
    cp a
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
    add c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ei
    rst $30
    rst $28
    rst $28
    rst JumpTable
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdbd


    cp l
    cp l
    cp l
    cp l
    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $00
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $fdbd


    ei
    ei
    rst $20
    rst JumpTable
    cp a
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdbd


    db $fd
    db $e3
    db $fd
    db $fd
    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    db $db
    cp e
    cp e
    cp e
    cp e
    cp e
    add c
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    cp a
    cp a
    add e
    db $fd
    db $fd
    db $fd
    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bfbd


    add e
    cp l
    cp l
    cp l
    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    cp l
    cp l
    ei
    ei
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdbd


    cp l
    jp $bdbd


    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdbd


    cp l
    pop bc
    db $fd
    db $fd
    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $20
    rst $20
    rst $30
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ei
    rst $30
    rst $28
    rst $28
    rst $28
    rst $30
    ei
    db $fd
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
    add e
    rst $38
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst JumpTable
    rst $28
    rst $30
    rst $30
    rst $30
    rst $28
    rst JumpTable
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $9999


    ld sp, hl
    di
    rst $20
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    cp e
    ld l, l
    ld d, l
    ld d, l
    ld d, l
    ld d, e
    xor a
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    db $db
    db $db
    db $db
    cp l
    cp l
    add c
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    cp l
    cp l
    cp l
    add e
    cp l
    cp l
    cp l
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdbd


    cp a
    cp a
    cp a
    cp a
    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    cp a
    cp a
    cp a
    add e
    cp a
    cp a
    cp a
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    cp a
    cp a
    cp a
    add e
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdbd


    cp a
    or c
    cp l
    cp l
    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    add c
    cp l
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp l
    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp e
    or a
    adc a
    or a
    cp e
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst JumpTable
    rst JumpTable
    rst JumpTable
    rst JumpTable
    rst JumpTable
    rst JumpTable
    rst JumpTable
    rst JumpTable
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    sbc c
    and l
    cp l
    cp l
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    sbc l
    xor l
    or l
    cp c
    cp l
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdbd


    cp l
    cp l
    cp l
    cp l
    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    cp l
    cp l
    cp l
    add e
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdbd


    cp l
    cp l
    cp l
    or l
    cp e
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    cp l
    cp l
    cp l
    cp l
    add e
    cp e
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bfbd


    cp a
    jp $fdfd


    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $efef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    ld a, l
    ld a, l
    cp e
    cp e
    rst AddAToHL
    rst AddAToHL
    rst AddAToHL
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    and l
    sbc c
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    db $db
    rst $20
    rst $20
    rst $20
    db $db
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    ld a, l
    cp e
    cp e
    rst $00
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    db $fd
    ei
    rst $30
    rst $30
    rst $28
    rst JumpTable
    cp a
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call $ffb3
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
    adc a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst AddAToHL
    cp e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ei
    ld sp, hl
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    ei
    jp $bbbb


    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    add a
    cp e
    cp e
    cp e
    cp e
    add a
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
    rst $00
    cp e
    cp a
    cp a
    cp e
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ei
    jp $bbbb


    cp e
    cp e
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    cp e
    add e
    cp a
    cp e
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $28
    rst $28
    add e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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
    rst $00
    cp e
    cp e
    jp $bbfb


    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    add a
    cp e
    cp e
    cp e
    cp e
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    ei
    ei
    cp e
    cp e
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp e
    or a
    adc a
    or a
    or a
    cp e
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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
    and e
    push de
    push de
    push de
    push de
    push de
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
    and a
    db $db
    db $db
    db $db
    db $db
    db $db
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
    rst $00
    cp e
    cp e
    cp e
    cp e
    rst $00
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
    add a
    cp e
    cp e
    cp e
    add a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bbbb


    cp e
    jp $fbfb


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and e
    sbc a
    cp a
    cp a
    cp a
    cp a
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
    jp $cfbf


    rst $30
    ei
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    add e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
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
    cp e
    cp e
    cp e
    cp e
    cp e
    rst $00
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
    cp e
    cp e
    cp e
    rst AddAToHL
    rst AddAToHL
    rst $28
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
    cp e
    xor e
    xor e
    xor e
    rst AddAToHL
    rst AddAToHL
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
    cp l
    db $db
    rst $20
    rst $20
    db $db
    cp l
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
    db $dd
    db $dd
    db $eb
    db $eb
    rst $30
    rst $28
    rst JumpTable
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    ei
    rst $30
    rst $28
    rst JumpTable
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $30
    rst $30
    rst $30
    rst $30
    rst $28
    rst $30
    rst $30
    rst $30
    rst $30
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst AddAToHL
    rst $28
    add e
    rst $28
    rst $28
    add e
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $30
    rst $28
    rst $28
    rst $28
    rst $28
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $00
    rst $00
    add e
    add e
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $30
    rst $38
    rst $20
    db $db
    db $db
    db $db
    cp l
    cp l
    add c
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst AddAToHL
    rst $38
    rst $20
    db $db
    db $db
    db $db
    cp l
    cp l
    add c
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    rst $20
    db $db
    db $db
    db $db
    cp l
    cp l
    add c
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $20
    rst AddAToHL
    rst AddAToHL
    pop de
    or a
    add a
    or a
    or c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bfbd


    cp a
    cp a
    cp a
    cp l
    jp $cff7


    rst $38
    rst $38
    rst $38
    rst $08
    rst $30
    rst $38
    add c
    cp a
    cp a
    cp a
    add e
    cp a
    cp a
    cp a
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst JumpTable
    rst $38
    add c
    cp a
    cp a
    cp a
    add e
    cp a
    cp a
    cp a
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst AddAToHL
    rst $38
    add c
    cp a
    cp a
    cp a
    add e
    cp a
    cp a
    cp a
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    add c
    cp a
    cp a
    cp a
    add e
    cp a
    cp a
    cp a
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst AddAToHL
    rst $38
    rst $00
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst AddAToHL
    rst $38
    rst $38
    rst $00
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    call $ffb3
    cp l
    cp l
    sbc l
    xor l
    or l
    cp c
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    jp $bdbd


    cp l
    cp l
    cp l
    cp l
    cp l
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    or a
    or a
    or a
    or c
    or a
    or a
    or a
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $30
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    jp $ffff


    rst $38
    rst $38
    rst $28
    rst AddAToHL
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    jp $ffff


    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    jp $ffff


    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $30
    rst $38
    rst $38
    rst $00
    ei
    jp $bbbb


    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst AddAToHL
    rst $38
    rst $38
    rst $00
    ei
    jp $bbbb


    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    rst $00
    ei
    jp $bbbb


    push bc
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
    sub e
    db $ed
    pop bc
    xor a
    xor l
    db $d3
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
    jp $bfbf


    cp a
    jp $cff7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $30
    rst $38
    rst $38
    rst $00
    cp e
    add e
    cp a
    cp e
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst JumpTable
    rst $38
    rst $38
    rst $00
    cp e
    add e
    cp a
    cp e
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst AddAToHL
    rst $38
    rst $38
    rst $00
    cp e
    add e
    cp a
    cp e
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    rst $00
    cp e
    add e
    cp a
    cp e
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst AddAToHL
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst AddAToHL
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call $ffb3
    rst $38
    and a
    db $db
    db $db
    db $db
    db $db
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    rst $00
    cp e
    cp e
    cp e
    cp e
    rst $00
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
    jp $a1ad


    xor a
    xor l
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $30
    rst $38
    rst $38
    cp e
    cp e
    cp e
    cp e
    cp e
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst AddAToHL
    rst $38
    rst $38
    cp e
    cp e
    cp e
    cp e
    cp e
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    cp e
    cp e
    cp e
    cp e
    cp e
    rst $00
    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$10
    db $e3
    and $e6
    rst $20
    and $e6
    ldh a, [$f8]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rrca
    rst $00
    ld h, a
    ld h, a
    rst $20
    ld h, a
    ld h, a
    rrca
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$10
    rst $20
    and $e7
    and $e6
    rst $20
    ldh a, [$f8]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rrca
    rst $00
    ld h, a
    rst $00
    ld h, a
    ld h, a
    rst $00
    rrca
    rra
    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    ld bc, $0101
    add e
    rst $00
    rst $28
    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $a5c3


    and l
    sbc c
    sbc c
    sbc c
    sbc c
    and l
    and l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    call z, $c3cc
    jp $c3c3


    call z, $f0cc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc sp
    inc sp
    jp $c3c3


    jp $3333


    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    db $dd
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    db $dd
    db $e3
    cp [hl]
    pop bc
    cp a
    ret nz

    cp a
    ret nz

    cp a
    rst $38
    rst JumpTable
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    ret nz

    rst JumpTable
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp-$05
    db $fc
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    jp $c300


    nop
    and l
    nop
    and l
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    and l
    nop
    and l
    nop
    jp $c300


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp $c300


    nop
    and l
    nop
    and l
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    and l
    nop
    and l
    nop
    jp $c300


    nop
    rst $38
    nop
    rst $38
    nop
    and l
    inc b
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    and b
    inc b
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    and d
    inc b
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    and e
    inc b
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    and h
    inc bc
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    and [hl]
    inc bc
    cp [hl]
    ld [bc], a
    and a
    ld [bc], a
    cp a
    ld [bc], a
    xor b
    inc bc
    jp c, $a702

    ld [bc], a
    cp a
    ld [bc], a
    xor c
    inc b
    cp [hl]
    ld [bc], a
    and a
    ld [bc], a
    cp a
    ld [bc], a
    xor c
    inc bc
    cp [hl]
    ld [bc], a
    and a
    ld [bc], a
    cp a
    ld [bc], a
    xor c
    ld [bc], a
    cp [hl]
    ld [bc], a
    and a
    ld [bc], a
    cp a
    ld [bc], a
    xor [hl]
    inc bc
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    or b
    inc b
    call c, $bb06
    ld b, $dd
    ld b, $b2
    ld b, $dc
    rlca
    or l
    rlca
    db $dd
    rlca
    or h
    rlca
    call c, $b507
    rlca
    db $dd
    rlca
    or e
    ld b, $dc
    ld b, $bb
    ld b, $dd
    ld b, $ce
    inc b
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    or [hl]
    inc b
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    cp c
    ld [bc], a
    call c, $bd07
    rlca
    db $dd
    rlca
    or a
    inc bc
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    cp b
    dec b
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    cp b
    inc b
    call c, $bb07
    rlca
    db $dd
    rlca
    cp h
    ld b, $dc
    ld b, $bd
    ld b, $dd
    ld b, $c0
    inc bc
    cp [hl]
    ld [bc], a
    pop bc
    ld [bc], a
    cp a
    ld [bc], a
    jp nz, $be03

    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    jp nz, $be04

    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    or d
    ld b, $b2
    ld h, $b5
    ld b, $db
    ld b, $c4
    ld [bc], a
    cp [hl]
    ld [bc], a
    push bc
    ld [bc], a
    cp a
    ld [bc], a
    call nz, $be03
    ld [bc], a
    push bc
    inc bc
    cp a
    ld [bc], a
    call nz, $be05
    ld [bc], a
    push bc
    dec b
    cp a
    ld [bc], a
    call nz, $be04
    ld [bc], a
    push bc
    inc b
    cp a
    ld [bc], a
    add $02
    cp [hl]
    ld [bc], a
    rst $00
    ld [bc], a
    cp a
    ld [bc], a
    add $03
    cp [hl]
    ld [bc], a
    rst $00
    inc bc
    cp a
    ld [bc], a
    add $04
    cp [hl]
    ld [bc], a
    rst $00
    inc b
    cp a
    ld [bc], a
    jp $be04


    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    ret z

    dec b
    cp [hl]
    ld [bc], a
    ret


    dec b
    cp a
    ld [bc], a
    jp z, $be03

    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    rlc h
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    ret nc

    inc bc
    cp [hl]
    ld [bc], a
    pop de
    inc bc
    cp a
    ld [bc], a
    rlc l
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    ret nc

    ld [bc], a
    cp [hl]
    ld [bc], a
    pop de
    ld [bc], a
    cp a
    ld [bc], a
    call z, $be03
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    or h
    ld b, $dc
    ld b, $b5
    ld b, $dd
    ld b, $d6
    ld [bc], a
    cp [hl]
    ld [bc], a
    rst AddAToHL
    ld [bc], a
    cp a
    ld [bc], a
    sub $03
    cp [hl]
    ld [bc], a
    rst AddAToHL
    ld [bc], a
    cp a
    ld [bc], a
    sub $04
    cp [hl]
    ld [bc], a
    rst AddAToHL
    ld [bc], a
    cp a
    ld [bc], a
    sub $05
    cp [hl]
    ld [bc], a
    rst AddAToHL
    ld [bc], a
    cp a
    ld [bc], a
    ret c

    inc b
    cp [hl]
    ld [bc], a
    reti


    inc b
    cp a
    ld [bc], a
    ret nz

    inc b
    cp [hl]
    ld [bc], a
    pop bc
    ld [bc], a
    cp a
    ld [bc], a
    or d
    rlca
    call c, $b507
    rlca
    db $dd
    rlca
    jp nz, $dc04

    rlca
    sbc $07
    db $dd
    rlca
    cp b
    inc b
    call c, $de06
    ld b, $dd
    ld b, $b3
    rlca
    call c, $bb07
    rlca
    db $dd
    rlca
    rst $08
    dec b
    call c, $de06
    ld b, $dd
    ld b, $cb
    inc bc
    call c, $de07
    rlca
    db $dd
    rlca
    cp d
    rlca
    call c, $bb06
    ld b, $dd
    ld b, $cd
    dec b
    call c, $de06
    ld b, $dd
    ld b, $d2
    inc bc
    call c, $d307
    inc bc
    sbc $27
    ret nz

    ld [bc], a
    cp [hl]
    ld [bc], a
    pop bc
    ld [bc], a
    cp a
    ld [bc], a
    call z, $be04
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    or d
    rlca
    call c, $de06
    ld b, $dd
    ld b, $d4
    inc b
    cp [hl]
    ld [bc], a
    push de
    ld [bc], a
    cp a
    ld [bc], a
    or b
    ld [bc], a
    cp [hl]
    ld [bc], a
    or c
    ld [bc], a
    cp a
    ld [bc], a
    rst $08
    inc b
    cp [hl]
    ld [bc], a
    and c
    ld [bc], a
    cp a
    ld [bc], a
    xor a
    inc b
    call c, $b506
    ld b, $dd
    ld b, $aa
    rlca
    xor h
    rlca
    xor e
    rlca
    xor l
    rlca
    ld d, h
    ld [bc], a
    nop
    ld [bc], a
    ld d, l
    ld [bc], a
    nop
    ld [bc], a
    ld d, h
    inc bc
    nop
    ld [bc], a
    ld d, l
    inc bc
    nop
    ld [bc], a
    ld d, h
    inc b
    nop
    ld [bc], a
    ld d, l
    inc b
    nop
    ld [bc], a
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ret z

    nop
    ret z

    ld [bc], a
    ret z

    inc b
    ret z

    ld b, $c8
    ld [$09ae], sp
    jp c, $f009

    add hl, bc
    ld a, b
    ld a, [bc]
    ld a, d
    ld a, [bc]
    sbc b
    ld a, [bc]
    xor h
    ld a, [bc]
    add $0a
    cp $0a
    or d
    dec bc
    call nz, Call_01c_780b
    inc c
    xor d
    inc c
    call nz, $1a0c
    dec c
    inc l
    dec c
    ld b, b
    dec c
    ld c, h
    dec c
    ld e, [hl]
    dec c
    ld l, b
    dec c
    ld a, h
    dec c
    adc d
    dec c
    sbc d
    dec c
    ld c, $0e
    ld a, [de]
    ld c, $26
    ld c, $2e
    ld c, $36
    ld c, $3e
    ld c, $4a
    ld c, $5e
    ld c, $6e
    ld c, $8c
    ld c, $d2
    ld c, $06
    rrca
    ld [hli], a
    rrca
    ld a, [hli]
    rrca
    ld c, [hl]
    rrca
    ld d, [hl]
    rrca
    ld [hl], b
    rrca
    adc b
    rrca
    cp [hl]
    rrca
    jp z, $f00f

    rrca
    or $0f
    ld hl, sp+$0f
    ld [hl], $10
    add d
    db $10
    ld b, $12
    jr nz, jr_01c_5c80

    ld c, b
    ld [de], a
    ld e, b
    ld [de], a
    ld h, d
    ld [de], a
    db $76
    ld [de], a
    add b
    ld [de], a
    and b
    ld [de], a
    xor h
    ld [de], a
    add sp, $12
    ld h, b
    inc de

jr_01c_5c80:
    sub d
    inc de
    sub [hl]
    inc de
    jp z, $1e13

    inc d
    inc l
    inc d
    jr c, jr_01c_5ca0

    ld b, h
    inc d
    ld d, b
    inc d
    ld [hl], d
    inc d
    ret c

    inc d
    db $f4
    inc d
    nop
    dec d
    inc c
    dec d
    ld h, $15
    ld [hl-], a
    dec d
    ld b, h
    dec d

jr_01c_5ca0:
    ld e, h
    dec d
    ld a, [c]
    dec d
    ld [$4016], sp
    ld d, $54
    ld d, $9a
    ld d, $ba
    ld d, $d0
    ld d, $c8
    nop
    ld c, b
    rla
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    nop
    nop
    inc de
    nop
    ld h, $00
    inc sp
    nop
    ld b, b
    nop
    ld c, l
    nop
    ld e, a
    nop
    ld l, e
    nop
    ld a, [hl]
    nop
    adc [hl]
    nop
    sbc e
    nop
    xor e
    nop
    cp d
    nop
    ret z

    nop
    jp nc, $df00

    nop
    db $ec
    nop
    rst $30
    nop
    ld bc, $0c01
    ld bc, $0117
    dec h
    ld bc, $0133
    ld b, c
    ld bc, HeaderGlobalChecksum
    ld e, c
    ld bc, $0163
    ld l, l
    ld bc, $0177
    add c
    ld bc, $018a
    sub a
    ld bc, $01a2
    xor h
    ld bc, $01b8
    ret z

    ld bc, $01d8
    push hl
    ld bc, $01f3
    rst $38
    ld bc, $020b
    inc d
    ld [bc], a
    dec e
    ld [bc], a
    ld h, $02
    cpl
    ld [bc], a
    ld a, $02
    ld c, l
    ld [bc], a
    ld d, a
    ld [bc], a
    ld h, b
    ld [bc], a
    ld l, c
    ld [bc], a
    ld [hl], d
    ld [bc], a
    add e
    ld [bc], a
    sub b
    ld [bc], a
    sbc l
    ld [bc], a
    xor d
    ld [bc], a
    or [hl]
    ld [bc], a
    ret nz

    ld [bc], a
    adc $02
    call c, $e702
    ld [bc], a
    rst $28
    ld [bc], a
    rst $38
    ld [bc], a
    rrca
    inc bc
    add hl, de
    inc bc
    inc hl
    inc bc
    dec hl
    inc bc
    dec [hl]
    inc bc
    dec a
    inc bc
    ld b, [hl]
    inc bc
    ld c, [hl]
    inc bc
    ld d, [hl]
    inc bc
    ld h, d
    inc bc
    ld l, e
    inc bc
    ld [hl], h
    inc bc
    ld a, h
    inc bc
    add [hl]
    inc bc
    sub b
    inc bc
    sbc d
    inc bc
    and h
    inc bc
    xor [hl]
    inc bc
    cp b
    inc bc
    jp $ce03


    inc bc
    reti


    inc bc
    pop hl
    inc bc
    ld [$f303], a
    inc bc
    db $fc
    inc bc
    inc b
    inc b
    inc c
    inc b
    inc d
    inc b
    inc e
    inc b
    ld h, $04
    jr nc, jr_01c_5d88

    add hl, sp
    inc b
    ld b, d
    inc b

jr_01c_5d88:
    ld c, e
    inc b
    ld d, e
    inc b
    ld e, [hl]
    inc b
    ld l, c
    inc b
    ld [hl], h
    inc b
    ld a, a
    inc b
    adc e
    inc b
    sub a
    inc b
    and b
    inc b
    xor b
    inc b
    or b
    inc b
    or a
    inc b
    cp a
    inc b
    ret


    inc b
    db $d3
    inc b
    db $dd
    inc b
    rst $20
    inc b
    rst $30
    inc b
    nop
    dec b
    add hl, bc
    dec b
    ld de, $1805
    dec b
    rra
    dec b
    ld h, $05
    ld l, $05
    ld [hl], $05
    ld a, $05
    ld b, [hl]
    dec b
    ld c, [hl]
    dec b
    ld d, l
    dec b
    ld h, h
    dec b
    ld [hl], e
    dec b
    ld a, [hl]
    dec b
    add l
    dec b
    adc h
    dec b
    sub l
    dec b
    sbc [hl]
    dec b
    and [hl]
    dec b
    xor [hl]
    dec b
    cp b
    dec b
    jp nz, $c905

    dec b
    ret nc

    dec b
    rst AddAToHL
    dec b
    sbc $05
    push hl
    dec b
    pop af
    dec b
    dec b
    ld b, $0d
    ld b, $15
    ld b, $1d
    ld b, $25
    ld b, $2d
    ld b, $35
    ld b, $3c
    ld b, $43
    ld b, $4a
    ld b, $51
    ld b, $58
    ld b, $66
    ld b, $74
    ld b, $82
    ld b, $90
    ld b, $9e
    ld b, $a5
    ld b, $ae
    ld b, $b7
    ld b, $c0
    ld b, $c9
    ld b, $d2
    ld b, $db
    ld b, $e3
    ld b, $eb
    ld b, $f3
    ld b, $fa
    ld b, $01
    rlca
    ld [$0e07], sp
    rlca
    dec d
    rlca
    rra
    rlca
    add hl, hl
    rlca
    inc sp
    rlca
    dec a
    rlca
    ld b, a
    rlca
    ld d, c
    rlca
    ld d, a
    rlca
    ld e, a
    rlca
    ld h, a
    rlca
    ld l, a
    rlca
    ld [hl], a
    rlca
    ld a, a
    rlca
    add a
    rlca
    adc a
    rlca
    sbc h
    rlca
    and a
    rlca
    or h
    rlca
    cp a
    rlca
    jp z, $d107

    rlca
    rst AddAToHL
    rlca
    sbc $07
    push hl
    rlca
    db $ec
    rlca
    di
    rlca
    ld a, [$0107]
    ld [$0812], sp
    dec de
    ld [$0824], sp
    dec l
    ld [$0836], sp
    ccf
    ld [$0848], sp
    ld c, [hl]
    ld [$0855], sp
    ld e, h
    ld [$0863], sp
    ld l, d
    ld [$0870], sp
    ld a, b
    ld [$0880], sp
    adc b
    ld [$0890], sp

Jump_01c_5e7e:
    sbc b
    ld [$08a0], sp
    and [hl]
    ld [$08ad], sp
    or h
    ld [$08bb], sp
    jp nz, $c808

    ld [$08ce], sp
    push de
    ld [$08dc], sp
    db $e3
    ld [$08ea], sp
    pop af
    ld [$08f8], sp
    rst $38
    ld [$0906], sp
    dec c
    add hl, bc
    inc de
    add hl, bc
    dec e
    add hl, bc
    daa
    add hl, bc
    ld sp, $3909
    add hl, bc
    ld b, e
    add hl, bc
    ld c, e
    add hl, bc
    ld d, l
    add hl, bc
    ld e, e
    add hl, bc
    ld h, c
    add hl, bc
    ld [hl], b
    add hl, bc
    ld a, a
    add hl, bc
    adc [hl]
    add hl, bc
    sbc l
    add hl, bc
    xor h
    add hl, bc
    or l
    add hl, bc
    cp [hl]
    add hl, bc
    rst $00
    add hl, bc
    ret nc

    add hl, bc
    rst AddAToHL
    add hl, bc
    sbc $09
    push hl
    add hl, bc
    db $ec
    add hl, bc
    di
    add hl, bc
    ld a, [$0109]
    ld a, [bc]
    ld [$0e0a], sp
    ld a, [bc]
    inc d
    ld a, [bc]
    ld a, [de]
    ld a, [bc]
    jr nz, jr_01c_5eea

    ld h, $0a
    inc l
    ld a, [bc]
    ld [hl-], a
    ld a, [bc]
    jr c, jr_01c_5ef2

    ld a, $0a

jr_01c_5eea:
    ld b, l
    ld a, [bc]
    ld c, h
    ld a, [bc]
    ld d, e
    ld a, [bc]
    ld e, d
    ld a, [bc]

jr_01c_5ef2:
    ld h, c
    ld a, [bc]
    ld l, b
    ld a, [bc]
    ld l, [hl]
    ld a, [bc]
    ld a, h
    ld a, [bc]
    add d
    ld a, [bc]
    adc b
    ld a, [bc]
    adc [hl]
    ld a, [bc]
    sub h
    ld a, [bc]
    sbc h
    ld a, [bc]
    and h
    ld a, [bc]
    xor h
    ld a, [bc]
    or h
    ld a, [bc]
    cp h
    ld a, [bc]
    call nz, $cc0a
    ld a, [bc]
    call nc, $dc0a
    ld a, [bc]
    db $e4
    ld a, [bc]
    db $ec
    ld a, [bc]
    db $f4
    ld a, [bc]
    db $fc
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [$0e0b], sp
    dec bc
    inc d
    dec bc
    ld a, [de]
    dec bc
    ld hl, $280b
    dec bc
    cpl
    dec bc
    ld [hl], $0b
    dec a
    dec bc
    ld b, h
    dec bc
    ld c, e
    dec bc
    ld d, d
    dec bc
    ld e, c
    dec bc
    ld h, b
    dec bc
    ld h, a
    dec bc
    ld l, l
    dec bc
    ld [hl], e
    dec bc
    ld a, c
    dec bc
    ld a, a
    dec bc
    add l
    dec bc
    adc e
    dec bc
    sub c
    dec bc
    sub a
    dec bc
    sbc l
    dec bc
    and e
    dec bc
    or b
    dec bc
    cp l
    dec bc
    jp z, $d70b

    dec bc
    ldh [$0b], a
    jp hl


    dec bc
    ld a, [c]
    dec bc
    ei
    dec bc
    inc b
    inc c
    dec c
    inc c
    ld d, $0c
    rra
    inc c
    jr z, jr_01c_5f76

    ld l, $0c
    inc [hl]
    inc c
    ld a, [hl-]
    inc c
    ld b, c
    inc c
    ld c, b
    inc c
    ld c, a
    inc c

jr_01c_5f76:
    ld d, [hl]
    inc c
    ld e, l
    inc c
    ld h, h
    inc c
    ld l, e
    inc c
    ld [hl], d
    inc c
    ld a, c
    inc c
    add b
    inc c
    add a
    inc c
    adc [hl]
    inc c
    sub l
    inc c
    sbc h
    inc c
    and d
    inc c
    xor b
    inc c
    or d
    inc c
    cp h
    inc c
    add $0c
    ret nc

    inc c
    jp c, $e40c

    inc c
    ld [$f00c], a
    inc c
    or $0c
    db $fc
    inc c
    inc b
    dec c
    inc c
    dec c
    inc d
    dec c
    inc e
    dec c
    inc h
    dec c
    inc l
    dec c
    inc [hl]
    dec c
    ld a, [hl-]
    dec c
    ld b, b
    dec c
    ld b, [hl]
    dec c
    ld d, d
    dec c
    ld e, [hl]
    dec c
    ld l, d
    dec c
    ld [hl], c
    dec c
    ld a, b
    dec c
    ld a, a
    dec c
    add [hl]
    dec c
    adc l
    dec c
    sub h
    dec c
    sbc e
    dec c
    and d
    dec c
    xor c
    dec c
    xor a
    dec c
    or l
    dec c
    cp e
    dec c
    pop bc
    dec c
    rst $00
    dec c
    adc $0d
    call nc, $da0d
    dec c
    ldh [$0d], a
    and $0d
    db $ec
    dec c
    ld a, [c]
    dec c
    ld hl, sp+$0d
    cp $0d
    inc b
    ld c, $16
    ld c, $28
    ld c, $2d
    ld c, $33
    ld c, $39
    ld c, $3f
    ld c, $45
    ld c, $4b
    ld c, $51
    ld c, $57
    ld c, $5d
    ld c, $63
    ld c, $69
    ld c, $6f
    ld c, $75
    ld c, $7b
    ld c, $81
    ld c, $86
    ld c, $8b
    ld c, $90
    ld c, $95
    ld c, $a6
    ld c, $b7
    ld c, $be
    ld c, $c5
    ld c, $cc
    ld c, $d3
    ld c, $da
    ld c, $e1
    ld c, $e8
    ld c, $ed
    ld c, $f2
    ld c, $f7
    ld c, $fd
    ld c, $03
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    dec d
    rrca
    dec de
    rrca
    ld hl, $270f
    rrca
    dec l
    rrca
    inc sp
    rrca
    add hl, sp
    rrca
    ccf
    rrca
    ld b, l
    rrca
    ld c, l
    rrca
    ld d, l
    rrca
    ld e, l
    rrca
    ld h, l
    rrca
    ld l, l
    rrca
    ld [hl], l
    rrca
    ld a, l
    rrca
    add d
    rrca
    adc l
    rrca
    sbc b
    rrca
    and c
    rrca
    xor d
    rrca
    or e
    rrca
    cp h
    rrca
    push bc
    rrca
    ret nc

    rrca
    reti


    rrca
    sbc $0f
    db $e3
    rrca
    jp hl


    rrca
    rst $28
    rrca
    push af
    rrca
    ei
    rrca
    ld bc, $0710
    db $10
    dec c
    db $10
    inc de
    db $10
    add hl, de
    db $10
    rra
    db $10
    dec h
    db $10
    dec hl
    db $10
    ld sp, $3710
    db $10
    dec a
    db $10
    ld b, e
    db $10
    ld c, b
    db $10
    ld c, l
    db $10
    ld d, d
    db $10
    ld d, a
    db $10
    ld e, h
    db $10
    ld h, c
    db $10
    ld h, [hl]
    db $10
    ld l, h
    db $10
    ld [hl], d
    db $10
    ld a, b
    db $10
    ld a, [hl]
    db $10
    add h
    db $10
    adc d
    db $10
    sub b
    db $10
    sub [hl]
    db $10
    sbc h
    db $10
    and d
    db $10
    xor b
    db $10
    xor [hl]
    db $10
    or h
    db $10
    cp e
    db $10
    jp nz, $c910

    db $10
    ret nc

    db $10
    rst AddAToHL
    db $10
    sbc $10
    push hl
    db $10
    db $ec
    db $10
    di
    db $10
    ld a, [$0110]
    ld de, $1108
    rrca
    ld de, $1116
    dec de
    ld de, $1120
    dec h
    ld de, $112a
    cpl
    ld de, $1139
    ld b, e
    ld de, $114d
    ld d, a
    ld de, $1161
    ld l, e
    ld de, $1175
    ld a, a
    ld de, $1189
    sub e
    ld de, $1198
    sbc l
    ld de, $11a3
    xor c
    ld de, $11af
    or l
    ld de, $11bb
    pop bc
    ld de, $11c7
    call $d311
    ld de, $11d9
    rst JumpTable
    ld de, $11e5
    db $eb
    ld de, $11f0
    push af
    ld de, $11fa
    rst $38
    ld de, $1204
    add hl, bc
    ld [de], a
    rla
    ld [de], a
    dec h
    ld [de], a
    inc sp
    ld [de], a
    jr c, jr_01c_6136

    dec a
    ld [de], a
    ld b, d
    ld [de], a
    ld b, a
    ld [de], a
    ld c, h
    ld [de], a
    ld d, c
    ld [de], a
    ld e, c
    ld [de], a
    ld h, c
    ld [de], a
    ld l, c
    ld [de], a
    ld [hl], c
    ld [de], a

jr_01c_6136:
    ld a, c
    ld [de], a
    add c
    ld [de], a
    adc c
    ld [de], a
    sub c
    ld [de], a
    sbc c
    ld [de], a
    and c
    ld [de], a
    and [hl]
    ld [de], a
    xor e
    ld [de], a
    or b
    ld [de], a
    or l
    ld [de], a
    cp d
    ld [de], a
    ret nz

    ld [de], a
    add $12
    call z, $d212
    ld [de], a
    ret c

    ld [de], a
    sbc $12
    db $e4
    ld [de], a
    ld [$f012], a
    ld [de], a
    or $12
    db $fc
    ld [de], a
    ld [bc], a
    inc de
    ld [$0e13], sp
    inc de
    inc d
    inc de
    ld a, [de]
    inc de
    rra
    inc de
    inc h
    inc de
    ld sp, $3e13
    inc de
    ld b, l
    inc de
    ld c, h
    inc de
    ld d, e
    inc de
    ld e, d
    inc de
    ld h, c
    inc de
    ld l, b
    inc de
    ld l, a
    inc de
    db $76
    inc de
    ld a, l
    inc de
    add h
    inc de
    adc e
    inc de
    sub d
    inc de
    sub a
    inc de
    sbc h
    inc de
    and c
    inc de
    and [hl]
    inc de
    xor e
    inc de
    or b
    inc de
    or l
    inc de
    cp d
    inc de
    jp $cc13


    inc de
    push de
    inc de
    sbc $13
    rst $20
    inc de
    db $ec
    inc de
    pop af
    inc de
    or $13
    ei
    inc de
    nop
    inc d
    dec b
    inc d
    ld a, [bc]
    inc d
    rrca
    inc d
    dec d
    inc d
    dec de
    inc d
    ld hl, $2714
    inc d
    dec l
    inc d
    inc sp
    inc d
    add hl, sp
    inc d
    ccf
    inc d
    ld b, l
    inc d
    ld c, e
    inc d
    ld d, c
    inc d
    ld d, a
    inc d
    ld e, l
    inc d
    ld h, e
    inc d
    ld l, c
    inc d
    ld l, a
    inc d
    ld [hl], l
    inc d
    ld a, e
    inc d
    add c
    inc d
    add a
    inc d
    adc l
    inc d
    sub e
    inc d
    sbc c
    inc d
    sbc a
    inc d
    and l
    inc d
    xor d
    inc d
    xor a
    inc d
    or h
    inc d
    cp c
    inc d
    cp [hl]
    inc d
    jp $c814


    inc d
    call $d214
    inc d
    rst AddAToHL
    inc d
    call c, $e114
    inc d
    db $ed
    inc d
    ld a, [c]
    inc d
    rst $30
    inc d
    db $fc
    inc d
    ld bc, $0615
    dec d
    dec bc
    dec d
    db $10
    dec d
    dec d
    dec d
    ld a, [de]
    dec d
    rra
    dec d
    inc h
    dec d
    add hl, hl
    dec d
    ld l, $15
    inc sp
    dec d
    jr c, jr_01c_6235

    dec a
    dec d
    ld b, d
    dec d
    ld b, a
    dec d
    ld c, h
    dec d
    ld d, c
    dec d
    ld d, [hl]
    dec d
    ld e, e
    dec d
    ld h, b
    dec d
    ld h, l
    dec d
    ld l, d
    dec d
    ld l, a

jr_01c_6235:
    dec d
    ld [hl], h
    dec d
    ld a, c
    dec d
    ld a, [hl]
    dec d
    add e
    dec d
    adc b
    dec d
    adc [hl]
    dec d
    sub h
    dec d
    sbc d
    dec d
    and b
    dec d
    and [hl]
    dec d
    xor h
    dec d
    or d
    dec d
    cp b
    dec d
    cp [hl]
    dec d
    call nz, $ca15
    dec d
    ret nc

    dec d
    sub $15
    call c, $e215
    dec d
    add sp, $15
    xor $15
    db $f4
    dec d
    ld a, [$0015]
    ld d, $06
    ld d, $11
    ld d, $1c
    ld d, $27
    ld d, $32
    ld d, $39
    ld d, $40
    ld d, $47
    ld d, $4e
    ld d, $55
    ld d, $5c
    ld d, $63
    ld d, $6a
    ld d, $71
    ld d, $78
    ld d, $7f
    ld d, $86
    ld d, $8d
    ld d, $94
    ld d, $99
    ld d, $9e
    ld d, $a3
    ld d, $a8
    ld d, $ad
    ld d, $b2
    ld d, $b7
    ld d, $bc
    ld d, $c1
    ld d, $c6
    ld d, $cb
    ld d, $d0
    ld d, $d5
    ld d, $da
    ld d, $e2
    ld d, $ea
    ld d, $f2
    ld d, $fa
    ld d, $02
    rla
    ld a, [bc]
    rla

jr_01c_62b6:
    ld [de], a
    rla
    ld a, [de]
    rla
    ld [hli], a
    rla
    ld a, [hli]
    rla

jr_01c_62be:
    ld [hl-], a
    rla
    ld a, [hl-]
    rla
    ccf
    rla
    ld b, h
    rla

jr_01c_62c6:
    ld c, c
    rla
    ld c, [hl]
    rla
    ld d, e
    rla
    ld e, b
    rla

jr_01c_62ce:
    ld e, l
    rla
    ld h, d
    rla
    ld h, a
    rla
    ld l, h
    rla

jr_01c_62d6:
    ld [hl], c
    rla
    db $76
    rla
    ld a, e
    rla
    add b
    rla

jr_01c_62de:
    add l
    rla
    adc d
    rla
    adc a
    rla
    sub h
    rla

jr_01c_62e6:
    sbc c
    rla
    sbc [hl]
    rla
    and e
    rla
    xor b
    rla

jr_01c_62ee:
    xor l
    rla
    or d
    rla
    or a
    rla
    cp h

jr_01c_62f5:
    rla
    pop bc
    rla
    add $17
    rl a

jr_01c_62fc:
    ret nc

    rla
    push de
    rla
    jp c, $df17

jr_01c_6303:
    rla
    db $e4
    rla
    jp hl


    rla
    xor $17

jr_01c_630a:
    di
    rla
    db $fd
    rla
    rlca
    jr @+$13

jr_01c_6311:
    jr @+$1d

    jr @+$23

    jr @+$29

    jr @+$2f

    jr @+$35

    jr @+$3b

    jr @+$41

jr_01c_631f:
    jr jr_01c_6366

    jr jr_01c_636e

    jr jr_01c_6376

    jr jr_01c_637e

    jr jr_01c_6386

    jr jr_01c_638e

    jr jr_01c_6396

jr_01c_632d:
    jr jr_01c_639e

    jr jr_01c_63a6

    jr jr_01c_63ae

    jr jr_01c_62b6

    jr jr_01c_62be

    jr jr_01c_62c6

    jr jr_01c_62ce

jr_01c_633b:
    jr jr_01c_62d6

    jr jr_01c_62de

    jr jr_01c_62e6

    jr jr_01c_62ee

    jr jr_01c_62f5

    jr jr_01c_62fc

    jr jr_01c_6303

jr_01c_6349:
    jr jr_01c_630a

    jr jr_01c_6311

    jr @-$35

    jr jr_01c_631f

    jr @-$2b

    jr jr_01c_632d

    jr @-$21

jr_01c_6357:
    jr jr_01c_633b

    jr @-$17

    jr jr_01c_6349

    jr @-$0d

    jr jr_01c_6357

    jr @-$03

    jr jr_01c_6365

jr_01c_6365:
    add hl, de

jr_01c_6366:
    dec b
    add hl, de
    ld a, [bc]
    add hl, de
    rrca
    add hl, de
    inc d
    add hl, de

jr_01c_636e:
    add hl, de
    add hl, de
    ld e, $19
    inc hl
    add hl, de
    daa
    add hl, de

jr_01c_6376:
    dec hl
    add hl, de
    jr nc, jr_01c_6393

    dec [hl]
    add hl, de
    ld a, [hl-]
    add hl, de

jr_01c_637e:
    ccf
    add hl, de
    ld b, h
    add hl, de
    ld c, c
    add hl, de
    ld c, [hl]
    add hl, de

jr_01c_6386:
    ld d, e
    add hl, de
    ld e, b
    add hl, de
    ld e, l
    add hl, de
    ld h, d
    add hl, de

jr_01c_638e:
    ld h, a
    add hl, de
    ld l, h
    add hl, de
    ld [hl], c

jr_01c_6393:
    add hl, de
    db $76
    add hl, de

jr_01c_6396:
    ld a, e
    add hl, de
    add b
    add hl, de
    add l
    add hl, de
    adc d
    add hl, de

jr_01c_639e:
    adc a
    add hl, de
    sub h
    add hl, de
    sbc c
    add hl, de
    sbc [hl]
    add hl, de

jr_01c_63a6:
    and e
    add hl, de
    xor b
    add hl, de
    xor l
    add hl, de
    or d
    add hl, de

jr_01c_63ae:
    or a
    add hl, de
    cp h
    add hl, de
    pop bc
    add hl, de
    add $19
    rr c
    ret nc

    add hl, de
    push de
    add hl, de
    reti


    add hl, de
    db $dd
    add hl, de
    pop hl
    add hl, de
    push hl
    add hl, de
    jp hl


    add hl, de
    db $ed
    add hl, de
    pop af
    add hl, de
    push af
    add hl, de
    ld sp, hl
    add hl, de
    db $fd
    add hl, de
    ld b, $1a
    rrca
    ld a, [de]
    jr jr_01c_63f0

    ld hl, $2a1a
    ld a, [de]
    inc sp
    ld a, [de]
    inc a
    ld a, [de]
    ld b, e
    ld a, [de]
    ld c, d
    ld a, [de]
    ld d, c
    ld a, [de]
    ld e, b
    ld a, [de]
    ld e, a
    ld a, [de]
    ld h, [hl]
    ld a, [de]
    ld l, l
    ld a, [de]
    db $76
    ld a, [de]
    ld a, l
    ld a, [de]

jr_01c_63f0:
    add h
    ld a, [de]
    adc e
    ld a, [de]
    sub h
    ld a, [de]
    sbc e
    ld a, [de]
    and d
    ld a, [de]
    xor c
    ld a, [de]
    xor l
    ld a, [de]
    or c
    ld a, [de]
    or l
    ld a, [de]
    cp c
    ld a, [de]
    cp l
    ld a, [de]
    pop bc
    ld a, [de]
    push bc
    ld a, [de]
    ret


    ld a, [de]
    call $d11a
    ld a, [de]
    push de
    ld a, [de]
    jp c, $df1a

    ld a, [de]
    db $e4
    ld a, [de]
    jp hl


    ld a, [de]
    xor $1a
    di
    ld a, [de]
    ld hl, sp+$1a
    db $fd
    ld a, [de]
    ld [bc], a
    dec de
    rlca
    dec de
    inc c
    dec de
    ld de, $161b
    dec de
    dec de
    dec de
    jr nz, jr_01c_644b

    dec h
    dec de
    ld a, [hli]
    dec de
    cpl
    dec de
    inc [hl]
    dec de
    add hl, sp
    dec de
    ld a, $1b
    ld b, e
    dec de
    ld b, a
    dec de
    ld c, e
    dec de
    ld d, c
    dec de
    ld d, a
    dec de
    ld e, l
    dec de
    ld h, e
    dec de
    ld l, c

jr_01c_644b:
    dec de
    ld l, a
    dec de
    ld [hl], l
    dec de
    ld a, e
    dec de
    add c
    dec de
    add a
    dec de
    adc l
    dec de
    sub e
    dec de
    sbc c
    dec de
    sbc a
    dec de
    and l
    dec de
    xor e
    dec de
    or c
    dec de
    or a
    dec de
    cp l
    dec de
    pop bc
    dec de
    push bc
    dec de
    ret


    dec de
    call $d11b
    dec de
    push de
    dec de
    reti


    dec de
    db $dd
    dec de
    pop hl
    dec de
    push hl
    dec de
    jp hl


    dec de
    db $ed
    dec de
    pop af
    dec de
    push af
    dec de
    dec b
    inc e
    add hl, bc
    inc e
    dec c
    inc e
    ld de, $151c
    inc e
    add hl, de
    inc e
    dec e
    inc e
    ld hl, $251c
    inc e
    add hl, hl
    inc e
    dec l
    inc e
    ld sp, $361c
    inc e
    dec sp
    inc e
    ld b, b
    inc e
    ld b, l
    inc e
    ld c, d
    inc e

jr_01c_64a6:
    ld c, a
    inc e
    ld d, h
    inc e
    ld e, c
    inc e
    ld e, [hl]
    inc e
    ld h, e
    inc e
    ld l, b
    inc e
    ld l, l
    inc e
    ld [hl], d
    inc e
    ld [hl], a
    inc e
    ld a, h
    inc e
    add c
    inc e
    add [hl]
    inc e
    adc e
    inc e
    sub b
    inc e
    sub l
    inc e
    sbc d
    inc e
    sbc a
    inc e
    and e
    inc e
    and e
    inc e
    xor [hl]
    inc e
    cp c
    inc e
    call nz, $d71c
    inc e
    rst $20
    inc e
    rst $30
    inc e
    inc de
    dec e
    jr z, jr_01c_64f9

    ld b, c
    dec e
    ld l, [hl]
    dec e
    sub [hl]
    dec e

jr_01c_64e2:
    jp $eb1d


    dec e
    ld l, $1e
    ld l, e
    ld e, $a0
    ld e, $e7
    ld e, $1e
    rra
    ld l, b
    rra
    or c
    rra
    dec e
    jr nz, jr_01c_651e

    jr nz, jr_01c_6567

jr_01c_64f9:
    jr nz, jr_01c_64a6

    jr nz, jr_01c_64e2

    jr nz, @+$16

    ld hl, $2127
    ld [hl], c
    ld hl, $2182
    sub c
    ld hl, $219d
    xor h
    ld hl, $21bb
    db $db
    ld hl, $2216
    ld sp, $4822
    ld [hli], a
    ld a, c
    ld [hli], a
    sub [hl]
    ld [hli], a
    cp a
    ld [hli], a
    ld a, [c]
    ld [hli], a

jr_01c_651e:
    ld [hl-], a
    inc hl
    ld l, a
    inc hl
    and c
    inc hl
    jp nz, $da23

    inc hl
    cp $23
    ld b, l
    inc h
    ld a, e
    inc h
    sub h
    inc h
    cp [hl]
    inc h
    rst AddAToHL
    inc h
    xor $24
    ld a, [de]
    dec h
    dec [hl]
    dec h
    ld e, b
    dec h
    ld a, d
    dec h
    and b
    dec h
    or a
    dec h
    jp nc, $d925

    dec h
    ldh [rNR51], a
    add sp, $25
    rlca

jr_01c_654b:
    ld h, $0e
    ld h, $1b
    ld h, $38
    ld h, $46
    ld h, $56
    ld h, $6e
    ld h, $7a
    ld h, $88
    ld h, $99
    ld h, $a9
    ld h, $cd
    ld h, $d8
    ld h, $e3
    ld h, $ed

jr_01c_6567:
    ld h, $f9
    ld h, $06
    daa
    jr jr_01c_6595

    dec h
    daa
    inc [hl]
    daa
    ld c, c
    daa
    ld l, c
    daa
    ld a, a
    daa
    sbc h
    daa
    cp c
    daa

jr_01c_657c:
    ret c

    daa
    dec bc
    jr z, jr_01c_65c1

    jr z, @+$7b

    jr z, @-$5a

    jr z, jr_01c_654b

    jr z, jr_01c_657c

    jr z, jr_01c_65a8

    add hl, hl
    ld b, e
    add hl, hl
    ld l, h
    add hl, hl
    sub e
    add hl, hl
    xor a
    add hl, hl
    push de

jr_01c_6595:
    add hl, hl
    push af
    add hl, hl
    inc bc
    ld a, [hli]
    ld h, $2a
    ld b, a
    ld a, [hli]
    ld [hl], c
    ld a, [hli]
    add [hl]
    ld a, [hli]
    xor c
    ld a, [hli]
    db $d3
    ld a, [hli]
    push hl
    ld a, [hli]

jr_01c_65a8:
    ld [$1b2b], sp
    dec hl
    ld c, b
    dec hl
    ld c, a
    dec hl
    sub c
    dec hl
    or c
    dec hl
    pop bc
    dec hl
    ret nc

    dec hl
    pop hl
    dec hl
    rlca
    inc l
    ld a, [de]
    inc l
    ld l, $2c
    ld d, l

jr_01c_65c1:
    inc l
    ld h, d
    inc l
    adc c
    inc l
    sub l
    inc l
    sbc l
    inc l
    cp d
    inc l
    jp nc, $f62c

    inc l
    ld c, $2d
    daa
    dec l
    ld b, b
    dec l
    ld e, h

jr_01c_65d7:
    dec l
    ld l, a
    dec l
    add l
    dec l
    adc b
    dec l
    sbc e
    dec l
    xor d
    dec l
    jp $d82d


    dec l
    ld [$fc2d], a
    dec l
    ld [de], a
    ld l, $24
    ld l, $30
    ld l, $3d
    ld l, $4e

jr_01c_65f3:
    ld l, $5e
    ld l, $6a
    ld l, $72
    ld l, $78
    ld l, $82
    ld l, $8d
    ld l, $95
    ld l, $a3
    ld l, $af
    ld l, $bd
    ld l, $c8
    ld l, $d1
    ld l, $d4
    ld l, $d7
    ld l, $e1
    ld l, $e9
    ld l, $f3
    ld l, $fc
    ld l, $08
    cpl
    ld d, $2f
    ld [hli], a
    cpl
    dec l
    cpl
    ld [hl-], a
    cpl
    dec [hl]
    cpl
    inc a

jr_01c_6625:
    cpl
    ld b, e
    cpl
    ld d, c
    cpl
    ld e, [hl]
    cpl
    ld l, c
    cpl
    ld [hl], c
    cpl
    add c
    cpl
    sub l

jr_01c_6633:
    cpl
    and d
    cpl
    or [hl]
    cpl
    cp h
    cpl
    call nz, $c92f
    cpl
    db $d3
    cpl
    pop hl
    cpl
    pop af
    cpl
    nop
    jr nc, jr_01c_664a

    jr nc, jr_01c_65d7

    cpl

jr_01c_664a:
    ld b, $30
    ld b, $30
    ld b, $30
    ld b, $30
    dec c
    jr nc, @+$19

    jr nc, jr_01c_6675

    jr nc, jr_01c_6681

    jr nc, jr_01c_668f

    jr nc, jr_01c_669c

    jr nc, jr_01c_66a7

    jr nc, jr_01c_66b2

    jr nc, @+$59

    jr nc, jr_01c_66c3

    jr nc, @+$67

    jr nc, jr_01c_66d4

    jr nc, jr_01c_66e0

    jr nc, jr_01c_65f3

    jr nc, @-$6d

    jr nc, @-$63

    jr nc, @-$5b

    jr nc, jr_01c_6625

jr_01c_6675:
    jr nc, jr_01c_6633

    jr nc, @-$2f

jr_01c_6679:
    jr nc, @-$2e

    jr nc, jr_01c_66bd

    ld sp, $314b
    ld a, h

jr_01c_6681:
    ld sp, $3184
    rst $08
    ld sp, $3235
    ld b, e
    ld [hl-], a
    ld a, b
    ld [hl-], a
    or a
    ld [hl-], a
    db $fc

jr_01c_668f:
    ld [hl-], a
    ld l, $33
    ld a, [hl-]
    inc sp
    ld e, l
    inc sp
    ld h, c
    inc sp
    ld [hl], c
    inc sp
    sbc e
    inc sp

jr_01c_669c:
    or e
    inc sp
    rst $00
    inc sp
    ld [bc], a
    inc [hl]
    rra
    inc [hl]
    ld b, l
    inc [hl]
    ld d, d

jr_01c_66a7:
    inc [hl]
    xor b
    inc [hl]
    sub $34
    rst $30
    inc [hl]

jr_01c_66ae:
    sbc d
    dec [hl]
    ldh [$35], a

jr_01c_66b2:
    add hl, sp
    ld [hl], $81
    ld [hl], $b7
    ld [hl], $e7
    ld [hl], $13
    scf
    daa

jr_01c_66bd:
    scf
    ld b, e
    scf
    add d
    scf
    db $e3

jr_01c_66c3:
    scf
    db $fc
    scf
    ld [de], a
    jr c, jr_01c_670e

    jr c, jr_01c_6733

    jr c, @-$65

    jr c, jr_01c_66ae

    jr c, jr_01c_6679

    add hl, sp
    xor l
    add hl, sp

jr_01c_66d4:
    ld h, d
    ld a, [hl-]
    ld h, a
    ld a, [hl-]
    push de
    ld a, [hl-]
    jp c, Jump_01c_6c3a

    dec sp
    ld [hl], c
    dec sp

jr_01c_66e0:
    add l
    dec sp
    db $db
    dec sp
    ldh [$3b], a
    push hl
    dec sp
    dec c
    inc a
    ld sp, $473c
    inc a
    ld h, e
    inc a
    ld l, b
    inc a
    ld l, l
    inc a
    ld [hl], d
    inc a
    ld [hl], a
    inc a
    ld a, h
    inc a
    add c
    inc a
    add [hl]
    inc a
    adc e
    inc a
    adc h
    inc a
    sbc [hl]
    inc a
    cp e
    inc a
    db $d3
    inc a
    ldh a, [$3c]
    dec bc
    dec a
    ld l, $3d

jr_01c_670e:
    ld b, h
    dec a
    sub h
    dec a
    xor [hl]
    dec a
    jp z, $e33d

    dec a
    db $f4
    dec a
    rlca
    ld a, $22
    ld a, $35
    ld a, $4b
    ld a, $62
    ld a, $75
    ld a, $8c
    ld a, $99
    ld a, $b5
    ld a, $c7
    ld a, $de
    ld a, $f1
    ld a, $fe

jr_01c_6733:
    ld a, $0f
    ccf
    ld [hli], a
    ccf
    ld l, $3f
    ld b, l
    ccf
    ld e, [hl]
    ccf
    ld a, c
    ccf
    adc b
    ccf
    sbc e
    ccf
    or e
    ccf
    call nz, $d93f
    ccf
    rst $28
    ccf
    ld [bc], a
    ld b, b
    rla
    ld b, b
    inc sp
    ld b, b
    ld c, [hl]
    ld b, b
    ld e, [hl]
    ld b, b
    ld l, l
    ld b, b
    add c
    ld b, b
    sbc e
    ld b, b
    xor a
    ld b, b
    rst $00
    ld b, b
    pop hl
    ld b, b
    rst $38
    ld b, b
    ld [de], a
    ld b, c
    inc h
    ld b, c
    inc sp
    ld b, c
    ld b, l
    ld b, c
    ld e, d
    ld b, c
    ld l, l
    ld b, c
    add e
    ld b, c
    sub l
    ld b, c
    and [hl]
    ld b, c
    cp e
    ld b, c
    rst $08
    ld b, c
    ld [$0641], a
    ld b, d
    rra
    ld b, d
    ccf
    ld b, d
    ld e, h
    ld b, d
    ld [hl], h
    ld b, d
    add l
    ld b, d
    and b
    ld b, d
    or e
    ld b, d
    jp z, $e242

    ld b, d
    rst $30
    ld b, d
    jr jr_01c_67d7

    inc sp
    ld b, e
    ld c, e
    ld b, e
    ld l, b
    ld b, e
    add h
    ld b, e
    sub [hl]
    ld b, e
    xor d
    ld b, e
    ret nz

    ld b, e
    pop de
    ld b, e
    rst JumpTable
    ld b, e
    rst $28
    ld b, e
    rst $38
    ld b, e
    rrca
    ld b, h
    rla
    ld b, h
    ld e, $44
    inc h
    ld b, h
    ld a, [hli]
    ld b, h
    ld c, e
    ld b, h
    ld [hl], c
    ld b, h
    sub b
    ld b, h
    cp l
    ld b, h
    rst JumpTable
    ld b, h
    dec bc
    ld b, l
    ld hl, $3c45
    ld b, l
    ld b, a
    ld b, l
    ld a, h
    ld b, l
    sbc a
    ld b, l
    jp c, $0b45

    ld b, [hl]
    ld b, h
    ld b, [hl]
    ld h, d
    ld b, [hl]
    sbc a
    ld b, [hl]
    call nc, $0e46

jr_01c_67d7:
    ld b, a
    ld b, h
    ld b, a
    ld a, l
    ld b, a
    or [hl]
    ld b, a
    cp $47
    cp $47
    cp $47
    cp $47
    ld h, $48
    ld b, h
    ld c, b
    add [hl]
    ld c, b
    or h
    ld c, b
    ld a, [c]
    ld c, b
    ld c, $49
    ld h, $49
    dec sp
    ld c, c
    ld e, h
    ld c, c
    ld e, h
    ld c, c
    or c
    ld c, c
    jp hl


    ld c, c
    ld [bc], a
    ld c, d
    dec h
    ld c, d
    ld b, b
    ld c, d
    sub b
    ld c, d
    call nc, $ea4a
    ld c, d
    inc b
    ld c, e
    cpl
    ld c, e
    ld b, c
    ld c, e
    ld d, h
    ld c, e
    sbc h
    ld c, e
    call $164b
    ld c, h
    ld [hl], $4c
    ld c, c
    ld c, h
    sub e
    ld c, h
    pop de
    ld c, h
    ld [bc], a
    ld c, l
    dec h
    ld c, l
    scf
    ld c, l
    ld d, h
    ld c, l
    sbc a
    ld c, l
    reti


    ld c, l
    rst $28
    ld c, l
    push af
    ld c, l
    ld a, [hli]
    ld c, [hl]
    ccf
    ld c, [hl]
    ld d, [hl]
    ld c, [hl]
    db $76
    ld c, [hl]
    adc e
    ld c, [hl]
    xor e
    ld c, [hl]
    ld hl, $3b4f
    ld c, a
    dec sp
    ld c, a
    add d
    ld c, a
    jp nz, $f64f

    ld c, a
    db $10
    ld d, b
    dec hl
    ld d, b
    ld [hl], b
    ld d, b
    sbc b
    ld d, b
    xor d
    ld d, b
    call nz, $d650
    ld d, b
    ld bc, $2651
    ld d, c
    ld [hl], $51
    ld d, h
    ld d, c
    ld h, h
    ld d, c
    add h
    ld d, c
    sub c
    ld d, c
    cp h
    ld d, c
    add hl, de
    ld d, d
    jr nz, jr_01c_68bc

    db $76
    ld d, d
    adc [hl]
    ld d, d
    sbc d
    ld d, d
    pop de
    ld d, d
    sbc $52
    dec l
    ld d, e
    ld l, b
    ld d, e
    ld [hl], a
    ld d, e
    or e
    ld d, e
    db $e4
    ld d, e
    inc de
    ld d, h
    ld b, a
    ld d, h
    xor h
    ld d, h
    add $54
    ld [hl], b
    ld d, l
    adc b
    ld d, l
    ret


    ld d, l
    jp c, $1855

    ld d, [hl]
    ld h, h
    ld d, [hl]
    xor b
    ld d, [hl]
    cp e
    ld d, [hl]
    add e
    ld d, a
    or d
    ld d, a
    ld l, c
    ld e, b
    add e
    ld e, b
    cp l
    ld e, b
    rst $38
    ld e, b
    dec bc
    ld e, c
    ret nc

    ld e, c
    ld [c], a
    ld e, c
    add b
    ld e, d
    ld e, a
    ld e, e
    sub a
    ld e, e
    xor l
    ld e, e
    rst JumpTable
    ld e, e
    nop
    ld e, h
    ld a, [hli]
    ld e, h
    ld a, $5c
    ld e, a
    ld e, h
    add b
    ld e, h

jr_01c_68bc:
    sub a
    ld e, h
    or b
    ld e, h
    add $5c
    ret nc

    ld e, h
    db $f4
    ld e, h
    rla
    ld e, l
    ld e, [hl]
    ld e, l
    ld [hl], c
    ld e, l
    add e
    ld e, l
    sub [hl]
    ld e, l
    xor b
    ld e, l
    or d
    ld e, l
    call nc, $e75d
    ld e, l
    rst $38
    ld e, l
    ld [de], a
    ld e, [hl]
    jr z, jr_01c_693c

    ld h, [hl]
    ld e, [hl]
    adc a
    ld e, [hl]
    sub l
    ld e, [hl]
    pop af
    ld e, [hl]
    db $fc
    ld e, [hl]
    rlca
    ld e, a
    dec [hl]
    ld e, a
    ld c, c
    ld e, a
    ld d, e
    ld e, a
    adc e
    ld e, a
    adc a
    ld e, a
    and [hl]
    ld e, a
    or h
    ld e, a
    ret c

    ld e, a
    ld [c], a
    ld e, a
    di
    ld e, a
    ld [de], a
    ld h, b
    ld e, $60
    ld b, d
    ld h, b
    ld h, e
    ld h, b
    or c
    ld h, b
    call c, $f060
    ld h, b
    inc bc
    ld h, c
    dec d
    ld h, c
    jr c, jr_01c_6973

    ld d, e
    ld h, c
    ld a, b
    ld h, c
    adc c
    ld h, c
    sbc l
    ld h, c
    or e
    ld h, c
    db $dd
    ld h, c
    ld c, $62
    dec a
    ld h, d
    add d
    ld h, d
    cp c
    ld h, d
    ldh [$62], a
    nop
    ld h, e
    dec h
    ld h, e
    ld d, [hl]
    ld h, e
    and d
    ld h, e
    adc $63
    rst $38
    ld h, e
    jr nz, jr_01c_699a

    ld d, c
    ld h, h
    add a
    ld h, h
    xor [hl]
    ld h, h

jr_01c_693c:
    push bc
    ld h, h
    ld [$1364], a
    ld h, l
    ld l, e
    ld h, l
    or [hl]
    ld h, l
    push af
    ld h, l
    daa
    ld h, [hl]
    jr c, jr_01c_69b2

    ld h, d
    ld h, [hl]
    xor e
    ld h, [hl]
    ret nz

    ld h, [hl]
    push hl
    ld h, [hl]
    jr nz, jr_01c_69bd

    ld b, [hl]
    ld h, a
    ld l, h
    ld h, a
    adc l
    ld h, a
    sbc h
    ld h, a
    cp h
    ld h, a
    dec bc
    ld l, b
    ld b, l
    ld l, b
    ld l, b
    ld l, b
    ld a, b
    ld l, b
    adc c
    ld l, b
    or d
    ld l, b
    adc $68
    db $e3
    ld l, b
    ei
    ld l, b
    ld c, e

jr_01c_6973:
    ld l, c
    db $76
    ld l, c
    cp d
    ld l, c
    rst AddAToHL
    ld l, c
    and $69
    dec d
    ld l, d
    ld b, l
    ld l, d
    ld h, l
    ld l, d
    add l
    ld l, d
    cp a
    ld l, d
    ld [c], a
    ld l, d
    inc b
    ld l, e
    ld l, $6b
    ld d, h
    ld l, e
    db $76
    ld l, e
    and b
    ld l, e
    cp l
    ld l, e
    db $e3
    ld l, e
    ei
    ld l, e
    dec de
    ld l, h

jr_01c_699a:
    dec sp
    ld l, h
    call $246c
    ld l, [hl]
    or a
    ld l, [hl]
    db $e3
    ld l, [hl]
    adc [hl]
    ld l, a
    or l
    ld l, a
    rst JumpTable
    ld l, a
    dec a
    ld [hl], b
    ld e, [hl]
    ld [hl], b
    xor d
    ld [hl], b
    cp c
    ld [hl], b

jr_01c_69b2:
    push bc
    ld [hl], b
    rst $08
    ld [hl], b
    rst AddAToHL
    ld [hl], b
    pop hl
    ld [hl], b
    db $ed
    ld [hl], b
    di

jr_01c_69bd:
    ld [hl], b
    db $fd
    ld [hl], b
    inc bc
    ld [hl], c
    ld [de], a
    ld [hl], c
    ld sp, $5571
    ld [hl], c
    and e
    ld [hl], c
    ld a, [$2971]
    ld [hl], d
    jr c, jr_01c_6a42

    dec sp
    ld l, h
    call $246c
    ld l, [hl]
    or a
    ld l, [hl]
    db $e3
    ld l, [hl]
    adc [hl]
    ld l, a
    or l
    ld l, a
    rst JumpTable
    ld l, a
    dec a
    ld [hl], b
    ld a, e
    ld [hl], d
    ei
    ld [hl], d
    rla
    ld [hl], e
    ld e, a
    ld [hl], e
    ld [hl], h
    ld [hl], e
    call nz, $f573
    ld [hl], e
    jr c, jr_01c_6a66

    add a
    ld [hl], h
    sbc e
    ld [hl], h
    inc b
    ld [hl], l
    dec sp
    ld [hl], l
    xor a
    ld [hl], l
    ld d, l
    ld [hl], c
    and e
    ld [hl], c
    di
    ld [hl], l
    add hl, hl
    ld [hl], d
    jr c, jr_01c_6a78

    ld b, h
    db $76
    and c
    db $76
    db $eb
    db $76
    ld [hl], d
    ld [hl], a
    sbc l
    ld [hl], a
    ldh [rPCM34], a
    ld [bc], a
    ld a, b
    ld e, $78
    ld d, e
    ld a, b
    ld [hl], h
    ld a, b
    adc a
    ld a, b
    push de
    ld a, b
    or $78
    inc l
    ld a, c
    ld h, h
    ld a, c
    adc l
    ld a, c
    xor c
    ld a, c
    jp nc, $f279

    ld a, c
    rra
    ld a, d
    ld c, [hl]
    ld a, d
    adc h
    ld a, d
    pop hl
    ld a, d
    jr @+$7d

jr_01c_6a36:
    add hl, sp
    ld a, e
    ld l, l
    ld a, e
    sub c
    ld a, e
    cp b
    ld a, e
    db $d3
    ld a, e
    ld a, [de]
    ld a, h

jr_01c_6a42:
    ld d, d
    ld a, h
    sbc l
    ld a, h
    jp $e17c


    ld a, h
    dec bc
    ld a, l
    inc h
    ld a, l
    and l
    ld a, l
    pop bc
    ld a, l
    ret nc

    ld a, l
    ld [c], a
    ld a, l
    db $ec
    ld a, l
    ld [de], a
    ld a, [hl]
    dec a
    ld a, [hl]
    ld b, a
    ld a, [hl]
    ld e, e
    ld a, [hl]
    ld [hl], l
    ld a, [hl]
    add c
    ld a, [hl]
    and a
    ld a, [hl]

jr_01c_6a66:
    or d
    ld a, [hl]
    ld [$387f], sp
    ld a, a
    ld h, [hl]
    ld a, a
    ld [hl], e
    ld a, a
    add c
    ld a, a
    and l
    ld a, a
    or h
    ld a, a
    rst $20
    ld a, a

jr_01c_6a78:
    rrca
    add b
    ld d, c
    add b
    sbc e
    add b
    rst $08
    add b
    sub $80
    db $fd
    add b
    ld a, [de]
    add c
    sbc e
    add c
    cp d
    add c
    db $fd
    add c
    ld [hl-], a
    add d
    ld b, h
    add d
    ld h, d
    add d
    ld a, [hl]
    add d
    adc h
    add d
    or e
    add d
    or e
    add d
    db $e3
    add d
    or $82
    ld [$1883], sp
    add e
    dec l
    add e
    add h
    add e
    sub h
    add e
    and l
    add e
    or [hl]
    add e
    sub $83
    pop af
    add e
    jr jr_01c_6a36

    add hl, sp
    add h
    ld a, $84
    ld d, b
    add h
    sbc h
    add h
    or [hl]
    add h
    call nz, $d684
    add h
    db $eb
    add h
    ld c, $85
    add hl, de
    add l
    add hl, hl
    add l
    ld l, a
    add l
    ld a, e
    add l
    adc b
    add l
    push bc
    add l
    ld [$fe85], a
    add l
    ld de, $2886
    add [hl]
    ld d, e
    add [hl]
    ld e, a
    add [hl]
    ld l, h
    add [hl]
    ld [hl], l
    add [hl]
    ld a, [hl]
    add [hl]
    adc l
    add [hl]
    sbc a
    add [hl]
    cp c
    add [hl]
    di
    add [hl]
    ld hl, $5487
    add a
    and [hl]
    add a
    cp e
    add a
    rst $28
    add a
    ld d, c
    adc b
    ld a, a
    adc b
    ldh [$88], a
    ldh a, [$88]
    cpl
    adc c
    ld h, a
    adc c
    sbc [hl]
    adc c
    pop de
    adc c
    ld b, $8a
    ld [hli], a
    adc d
    ld d, [hl]
    adc d
    ld l, d
    adc d
    ld a, d
    adc d
    rlca
    adc e
    dec hl
    adc e
    ccf
    adc e
    ld a, b
    adc e
    ld a, b
    adc e
    sbc b
    adc e
    or [hl]
    adc e
    ret c

    adc e
    ld sp, hl
    adc e
    dec c
    adc h
    sub l
    adc h
    push bc
    adc h
    pop hl
    adc h
    ei
    adc h
    inc hl
    adc l
    add sp, -$73
    rla
    adc [hl]
    push bc
    adc [hl]
    rst $38
    adc [hl]
    ld a, [bc]
    adc a
    inc [hl]
    adc a
    ld [hl], b
    adc a
    cp c
    adc a
    db $dd
    adc a
    inc d
    sub b
    ld a, [hl-]
    sub b
    ld h, h
    sub b
    adc [hl]
    sub b
    ret nz

    sub b
    pop de
    sub b
    ld e, $91
    ld b, [hl]
    sub c
    or c
    sub c
    ei
    sub c
    ld de, $2592
    sub d
    ld b, b
    sub d
    ld h, h
    sub d
    add [hl]
    sub d
    xor c
    sub d
    res 2, d
    db $e3
    sub d
    nop
    sub e
    ld de, $7293
    sub e
    sub e
    sub e
    pop de
    sub e
    or $93
    dec d
    sub h
    nop
    nop
    ld h, $00
    ld a, [hl-]
    nop
    ld e, [hl]
    nop
    ld [hl], a
    nop
    adc h
    nop
    sbc h
    nop
    xor b
    nop
    rla
    ld bc, $0154
    ld h, e
    ld bc, $017b
    adc h
    ld bc, $01da
    ei
    ld bc, $020d
    dec e
    ld [bc], a
    ld c, d
    ld [bc], a
    ld l, d
    ld [bc], a
    ld [hl], l
    ld [bc], a
    add h
    ld [bc], a
    sub c
    ld [bc], a
    cp a
    ld [bc], a
    jp nc, $df02

    ld [bc], a
    db $fc
    ld [bc], a
    add hl, hl
    inc bc
    ccf
    inc bc
    ld a, c
    inc bc
    sbc l
    inc bc
    cp a
    inc bc
    rst $38
    inc bc
    add hl, sp
    inc b
    ld d, h
    inc b
    add d
    inc b
    and b
    inc b
    jp $da04


    inc b
    db $fc
    inc b
    add hl, de
    dec b
    ld c, a
    dec b
    ld d, a
    dec b
    ld h, [hl]
    dec b
    ld [hl], d
    dec b
    adc e
    dec b
    sbc a
    dec b
    or c
    dec b
    call nc, $fe05
    dec b
    ld [de], a
    ld b, $35
    ld b, $53
    ld b, $65
    ld b, $75
    ld b, $90
    ld b, $a0
    ld b, $b2
    ld b, $bd
    ld b, $d4
    ld b, $ea
    ld b, $07
    rlca
    jr jr_01c_6bf3

    ld c, c
    rlca
    ld l, a
    rlca
    ld a, e
    rlca
    ld a, [bc]

jr_01c_6bf3:
    ld [$081b], sp
    ld h, l
    ld [$0866], sp
    add d
    ld [$089a], sp
    sbc d
    ld [$089a], sp
    add $08
    jp c, $da08

    ld [$08fa], sp
    ld bc, $2109
    add hl, bc
    dec hl
    add hl, bc
    inc a
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld d, c
    add hl, bc
    ld h, d
    add hl, bc
    ld a, h
    add hl, bc
    sbc [hl]
    add hl, bc
    xor l
    add hl, bc
    push bc
    add hl, bc
    jp c, $eb09

    add hl, bc
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    inc sp
    ld a, [bc]
    ld b, d
    ld a, [bc]
    ld l, l
    ld a, [bc]
    add b
    ld a, [bc]
    xor c
    ld a, [bc]
    jp nz, $dc0a

    ld a, [bc]
    xor $0a
    rst $38
    ld a, [bc]

Jump_01c_6c3a:
    ld h, $0b
    ld [hl], $0b
    ld d, a
    dec bc
    xor e
    dec bc
    xor e
    dec bc
    xor e
    dec bc
    xor e
    dec bc
    ld a, $0c
    ld e, l
    inc c
    add c
    inc c
    sbc [hl]
    inc c
    add hl, de
    dec c
    ld b, a
    dec c
    ld e, l
    dec c
    ld e, l
    dec c
    ld h, a
    dec c
    ld de, $6a0e
    ld c, $bd
    ld c, $d4
    ld c, $eb
    ld c, $fa
    ld c, $36
    rrca
    ld l, [hl]
    rrca
    ld l, [hl]
    rrca
    ld l, [hl]
    rrca
    ld l, [hl]
    rrca
    ld l, [hl]
    rrca
    ld l, [hl]
    rrca
    add d
    rrca

jr_01c_6c76:
    sbc e
    rrca
    or h
    rrca
    jp nz, $d10f

    rrca
    push af
    rrca
    inc d
    db $10
    inc e
    db $10
    ld d, l
    db $10
    add b
    db $10
    adc a
    db $10
    jp nz, $cf10

    db $10
    db $e3
    db $10
    rst $28
    db $10
    ld a, [bc]
    ld de, $1124
    ld b, h
    ld de, $1169
    ld de, $8012
    ld [de], a
    sub h
    ld [de], a
    rrca
    inc de
    ccf
    inc de
    ld b, a
    inc de
    ld d, d
    inc de
    ld l, h
    inc de
    ld a, [de]
    inc d
    dec l
    inc d
    ld b, d
    inc d
    ld d, l
    inc d
    ld l, l
    inc d
    cp [hl]
    inc d
    call nc, $d214
    dec d
    db $dd
    dec d
    ld a, [c]
    dec d
    ld a, [bc]
    ld d, $39
    ld d, $65
    ld d, $77
    ld d, $9e
    ld d, $9e
    ld d, $d7
    ld d, $0a
    rla
    ld h, $17
    ld a, b
    jr jr_01c_6c76

    jr jr_01c_6cdc

    add hl, de
    jr jr_01c_6cf1

    ld l, $19
    ld l, $19

jr_01c_6cdc:
    dec a
    add hl, de
    dec a
    add hl, de
    ld c, l
    add hl, de
    ld h, l
    add hl, de
    ld a, c
    add hl, de
    jp nc, $ee19

    add hl, de
    ld a, [hli]
    ld a, [de]
    ld a, [hl-]
    ld a, [de]
    ld b, c
    ld a, [de]
    ld e, d

jr_01c_6cf1:
    ld a, [de]
    ld [hl], b
    ld a, [de]
    sbc e
    ld a, [de]
    cp b
    ld a, [de]
    inc a
    dec de
    ld e, h
    dec de
    ld h, [hl]
    dec de
    ld l, d
    inc e
    ld a, a
    inc e
    sub h
    inc e
    sbc [hl]
    inc e
    and a
    inc e
    or b
    inc e
    cp c
    inc e
    jp nz, $cb1c

    inc e
    call nc, $da1c
    inc e
    pop hl
    inc e
    rst $20
    inc e
    xor $1c
    ld sp, hl
    inc e
    rst $38
    inc e
    rlca
    dec e
    db $10
    dec e
    ld a, [de]
    dec e
    ld h, $1d
    dec hl
    dec e
    ld [hl-], a
    dec e
    jr c, jr_01c_6d49

    ld a, $1d
    ld c, d
    dec e
    ld d, e
    dec e
    ld e, d
    dec e
    ld h, c
    dec e
    ld l, d
    dec e
    ld [hl], l
    dec e
    ld a, [hl]
    dec e
    adc d
    dec e
    sub h
    dec e
    sbc a
    dec e
    xor b
    dec e
    or d
    dec e
    cp l
    dec e
    push bc

jr_01c_6d49:
    dec e
    rst $08
    dec e
    ret c

    dec e
    ldh [rNR33], a
    db $eb
    dec e
    push af
    dec e
    rst $38
    dec e
    rlca
    ld e, $0e
    ld e, $13
    ld e, $18

jr_01c_6d5d:
    ld e, $1d
    ld e, $26
    ld e, $2d
    ld e, $37
    ld e, $40
    ld e, $4c
    ld e, $56
    ld e, $61
    ld e, $66
    ld e, $70
    ld e, $77

jr_01c_6d73:
    ld e, $7f
    ld e, $87
    ld e, $8f
    ld e, $97
    ld e, $9e
    ld e, $a5
    ld e, $b1
    ld e, $bc
    ld e, $cb

jr_01c_6d85:
    ld e, $d3
    ld e, $dd
    ld e, $e9
    ld e, $f1
    ld e, $fb
    ld e, $07
    rra
    dec c
    rra
    inc e
    rra
    inc h
    rra
    inc [hl]

jr_01c_6d99:
    rra
    ld b, a
    rra
    ld c, a
    rra
    ld d, a
    rra
    ld e, a
    rra
    ld l, l
    rra
    ld a, h

jr_01c_6da5:
    rra
    adc e
    rra
    sbc e
    rra
    xor a
    rra
    cp h
    rra
    jp z, $dc1f

    rra
    rst $28
    rra
    ld [bc], a
    jr nz, jr_01c_6dc9

    jr nz, @+$1f

    jr nz, jr_01c_6de3

    jr nz, jr_01c_6dee

    jr nz, jr_01c_6e02

    jr nz, jr_01c_6e10

    jr nz, jr_01c_6e21

    jr nz, jr_01c_6e31

    jr nz, jr_01c_6e43

    jr nz, jr_01c_6d5d

jr_01c_6dc9:
    jr nz, jr_01c_6d73

jr_01c_6dcb:
    jr nz, jr_01c_6d85

    jr nz, jr_01c_6d99

    jr nz, jr_01c_6da5

    jr nz, @-$1b

    jr nz, jr_01c_6dcb

    jr nz, @+$01

    jr nz, jr_01c_6de7

    ld hl, $2117
    jr nz, @+$23

    add hl, hl
    ld hl, $2130

jr_01c_6de2:
    dec a

jr_01c_6de3:
    ld hl, $214a
    ld e, l

jr_01c_6de7:
    ld hl, $1f57
    ld l, l
    ld hl, $217a

jr_01c_6dee:
    adc b
    ld hl, $2195
    and b
    ld hl, $21ac
    cp e
    ld hl, $21cd
    db $e4
    ld hl, $21f3
    ld b, $22
    rla
    ld [hli], a

jr_01c_6e02:
    inc h
    ld [hli], a
    dec h
    ld [hli], a
    dec hl
    ld [hli], a
    cp d
    ld [hli], a
    dec [hl]
    inc hl
    ld b, d
    inc hl
    ld c, l
    inc hl

jr_01c_6e10:
    ld e, b

jr_01c_6e11:
    inc hl
    sub h
    inc hl
    add $23
    reti


    inc hl
    inc b
    inc h
    ld hl, $3024
    inc h
    ld l, [hl]
    inc h
    adc c

jr_01c_6e21:
    inc h
    sbc d
    inc h
    xor h
    inc h
    ret nz

    inc h
    call z, $da24
    inc h
    ld [$fb24], a
    inc h
    add hl, bc

jr_01c_6e31:
    dec h

jr_01c_6e32:
    ld a, [de]
    dec h

jr_01c_6e34:
    ld h, $25

jr_01c_6e36:
    ld l, b
    dec h

jr_01c_6e38:
    adc b
    dec h

jr_01c_6e3a:
    db $e3
    dec h

jr_01c_6e3c:
    ld b, l
    ld h, $97
    ld h, $eb
    ld h, $37

jr_01c_6e43:
    daa

jr_01c_6e44:
    or $27

jr_01c_6e46:
    ld [hl], a
    jr z, jr_01c_6de2

    jr z, @-$4c

    jr z, jr_01c_6e11

    jr z, jr_01c_6e38

    jr z, jr_01c_6e84

    add hl, hl
    ld l, d
    add hl, hl
    ld [hl], d
    add hl, hl
    sub c
    add hl, hl
    or b
    add hl, hl
    ld de, $582a
    ld a, [hli]
    ld [hl], a
    ld a, [hli]
    sub c
    ld a, [hli]
    jp nc, $ec2a

    ld a, [hli]
    ld a, [bc]
    dec hl
    db $10
    dec hl
    inc [hl]
    dec hl
    inc a
    dec hl
    ld c, c
    dec hl
    ld d, l
    dec hl
    ld h, d
    dec hl
    ld [hl], b
    dec hl
    add e
    dec hl
    sbc e
    dec hl
    jp z, $f22b

    dec hl
    dec c
    inc l
    ld a, b
    inc l
    xor c
    inc l

jr_01c_6e84:
    ret nc

jr_01c_6e85:
    inc l
    ld [$692d], sp
    dec l
    sub c
    dec l
    and [hl]
    dec l
    adc $2d
    rlca
    ld l, $1f
    ld l, $68
    ld l, $96
    ld l, $b4
    ld l, $d7
    ld l, $f5
    ld l, $35
    cpl
    ld e, b
    cpl
    add c
    cpl
    xor e
    cpl
    jp hl


    cpl
    daa

jr_01c_6ea9:
    jr nc, jr_01c_6efd

    jr nc, jr_01c_6e32

    jr nc, jr_01c_6e34

    jr nc, jr_01c_6e36

    jr nc, jr_01c_6e38

    jr nc, jr_01c_6e3a

    jr nc, jr_01c_6e3c

jr_01c_6eb7:
    jr nc, @-$79

    jr nc, @-$79

    jr nc, @-$79

    jr nc, jr_01c_6e44

    jr nc, jr_01c_6e46

    jr nc, @-$79

    jr nc, @-$79

    jr nc, @-$79

jr_01c_6ec7:
    jr nc, jr_01c_6e85

    jr nc, jr_01c_6ea9

    jr nc, jr_01c_6ec7

    jr nc, @+$13

    ld sp, $3125
    ld b, c
    ld sp, $3151

jr_01c_6ed6:
    ld h, e
    ld sp, $3179
    sub c
    ld sp, $31b9
    rst AddAToHL
    ld sp, $31f2
    dec c
    ld [hl-], a
    dec c
    ld [hl-], a
    ld a, [hl-]
    ld [hl-], a
    ld d, b
    ld [hl-], a
    adc d
    ld [hl-], a
    or a
    ld [hl-], a
    cp $32
    scf
    inc sp
    ld e, c
    inc sp
    ld a, b
    inc sp
    or [hl]
    inc sp
    db $ec

jr_01c_6ef9:
    inc sp
    jr z, @+$36

    ld h, d

jr_01c_6efd:
    inc [hl]
    ld a, a
    inc [hl]
    sbc h
    inc [hl]
    xor d
    inc [hl]
    jp z, $fe34

    inc [hl]
    add hl, de
    dec [hl]
    jr c, @+$37

    ld c, [hl]
    dec [hl]
    and c
    dec [hl]
    cp [hl]
    dec [hl]
    call nz, $f135
    dec [hl]
    rla
    ld [hl], $33
    ld [hl], $92
    ld [hl], $c9
    ld [hl], $db
    ld [hl], $fb
    ld [hl], $38
    scf
    ld b, [hl]
    scf
    or c
    scf
    pop bc
    scf
    ei
    scf
    ld d, b
    jr c, jr_01c_6fad

    jr c, jr_01c_6eb7

    jr c, @-$65

    jr c, jr_01c_6ed6

    jr c, jr_01c_6ef9

    jr c, @+$16

    add hl, sp
    ld b, a
    add hl, sp
    and d
    add hl, sp
    xor e
    add hl, sp
    jp $1639


    ld a, [hl-]
    ld [hl-], a
    ld a, [hl-]
    ld c, e
    ld a, [hl-]
    call nc, $d43a
    ld a, [hl-]
    cp $3a
    inc l
    dec sp
    ld h, c
    dec sp
    ld a, c
    dec sp
    ld bc, $373c
    inc a
    ld l, e
    inc a
    cp a
    inc a
    call nz, $c93c
    inc a
    adc $3c
    ld [hl], $3d
    ld c, e
    dec a
    ld d, [hl]
    dec a
    sbc c
    dec a
    cp d
    dec a
    cp l
    dec a
    pop hl
    dec a
    db $ed
    dec a
    ld sp, $443e
    ld a, $68
    ld a, $97
    ld a, $ad
    ld a, $bf
    ld a, $e9
    ld a, $ef
    ld a, $00   ; xor a
    ccf
    ld a, [de]
    ccf
    jr c, jr_01c_6fc7

    ld c, [hl]
    ccf
    ld a, a
    ccf
    sub a
    ccf
    cp l
    ccf
    rst $08
    ccf
    ld [$003f], a
    ld b, b
    ld c, $40
    ld b, b
    ld b, b
    pop bc
    ld b, b
    jp c, $f640

    ld b, b
    ld e, d
    ld b, c
    ld b, e
    ld b, d
    ld a, a
    ld b, d
    sbc d
    ld b, d
    db $dd
    ld b, d
    nop
    ld b, e
    inc h

jr_01c_6fad:
    ld b, e
    inc h
    ld b, e
    ld e, d
    ld b, c
    ldh [rSCX], a
    dec de
    ld b, h
    cpl
    ld b, h
    ld a, a
    ld b, d
    sbc d
    ld b, d
    db $dd
    ld b, d
    sbc d
    ld b, d
    cpl
    ld b, h
    inc h
    ld b, e
    ld d, l
    ld b, h
    add e

jr_01c_6fc7:
    ld b, h
    ld c, [hl]
    ld b, l
    ld [hl], l
    ld b, l
    sub b
    ld b, l
    or b
    ld b, l
    pop de
    ld b, l
    db $f4
    ld b, l
    inc de
    ld b, [hl]
    inc hl
    ld b, [hl]
    ld h, b
    ld b, [hl]
    sbc d
    ld b, [hl]
    cp e
    ld b, [hl]
    sub $46
    rst $38
    ld b, [hl]
    inc hl
    ld b, a
    ld d, l
    ld b, a
    ld a, c
    ld b, a
    ld a, c
    ld b, a
    xor b
    ld b, a
    ret


    ld b, a
    rst JumpTable
    ld b, a
    ld a, [bc]
    ld c, b
    inc l
    ld c, b
    ld b, h
    ld c, b
    adc l
    ld c, b
    or e
    ld c, b
    di
    ld c, b
    inc l
    ld c, c
    ld h, h
    ld c, c
    and h
    ld c, c
    and $49
    ld [bc], a
    ld c, d
    ld a, [de]
    ld c, d
    jr c, jr_01c_7054

    ld e, a
    ld c, d
    sbc h
    ld c, d
    push hl
    ld c, d
    db $fc
    ld c, d
    ld [bc], a
    ld c, e
    ld [$0e4b], sp
    ld c, e
    inc d
    ld c, e
    ld a, [de]
    ld c, e
    jr nz, jr_01c_7069

    ld d, b
    ld c, e
    sub d
    ld c, e
    and l
    ld c, e
    dec bc
    ld c, h
    dec bc
    ld c, h
    ld d, e
    ld c, h
    sub c
    ld c, h
    call c, $004c
    ld c, l
    ld b, $4d
    rla
    ld c, l
    rra
    ld c, l
    scf
    ld c, l
    ld b, a
    ld c, l
    ld h, e
    ld c, l
    adc l
    ld c, l
    sbc b
    ld c, l
    add $4d
    call c, $f94d
    ld c, l
    ld a, [hli]
    ld c, [hl]
    ld a, $4e
    ld c, c
    ld c, [hl]
    ld l, b
    ld c, [hl]
    add c
    ld c, [hl]
    sub d
    ld c, [hl]
    cp $4e

jr_01c_7054:
    inc a
    ld c, a
    ld e, a
    ld c, a
    add e
    ld c, a
    or c
    ld c, a
    rst $20
    ld c, a
    inc de
    ld d, b
    add hl, sp
    ld d, b
    ld b, [hl]
    ld d, b
    add h
    ld d, b
    add $50
    inc h

jr_01c_7069:
    ld d, c
    ld l, b
    ld d, c
    adc l
    ld d, c
    or [hl]
    ld d, c
    or $51
    ld c, l
    ld d, d
    xor l
    ld d, d
    xor l
    ld d, d
    xor l
    ld d, d
    xor l
    ld d, d
    xor l
    ld d, d
    xor l
    ld d, d
    xor l
    ld d, d
    jp nz, $f752

    ld d, d
    ld a, [de]
    ld d, e
    inc [hl]
    ld d, e
    add e
    ld d, e
    xor h
    ld d, e
    rst $00
    ld d, e
    rst AddAToHL
    ld d, e
    pop af
    ld d, e
    rla
    ld d, h
    rra
    ld d, h
    ld [hl], $54
    ld [hl], d
    ld d, h
    add d
    ld d, h
    and h
    ld d, h
    cp h
    ld d, h
    adc $54
    ld a, [c]
    ld d, h
    ld e, $55
    ld c, [hl]
    ld d, l
    adc c
    ld d, l
    xor h
    ld d, l
    cp e
    ld d, l
    call z, $d855
    ld d, l
    pop af
    ld d, l
    dec c
    ld d, [hl]
    rra
    ld d, [hl]
    ld l, $56
    ld d, h
    ld d, [hl]
    ld d, h
    ld d, [hl]
    db $76
    ld d, [hl]
    sbc e
    ld d, [hl]
    ret nz

    ld d, [hl]
    db $f4
    ld d, [hl]
    dec hl
    ld d, a
    ld b, h
    ld d, a
    ld h, l
    ld d, a
    sbc c
    ld d, a
    xor h
    ld d, a
    sub $57
    ld a, [$1357]
    ld e, b
    ld a, [hli]
    ld e, b
    ld a, b
    ld e, b
    or l
    ld e, b
    db $fc
    ld e, b
    ccf
    ld e, c
    adc b
    ld e, c
    adc [hl]
    ld e, c
    sbc c
    ld e, c
    and l
    ld e, c
    or d
    ld e, c
    inc b
    ld e, d
    ld [hli], a
    ld e, d
    inc [hl]
    ld e, d
    ld d, e
    ld e, d
    ld [hl], h
    ld e, d
    and c
    ld e, d
    ldh [$5a], a
    ld sp, hl
    ld e, d
    ld a, [de]
    ld e, e
    inc hl
    ld e, e
    scf
    ld e, e
    ld h, h
    ld e, e
    sbc b
    ld e, e
    xor d
    ld e, e
    push bc
    ld e, e
    db $d3
    ld e, e
    ldh [$5b], a
    ld [de], a
    ld e, h
    inc a
    ld e, h
    ld d, e
    ld e, h
    ld l, e
    ld e, h
    ld a, l
    ld e, h
    xor [hl]
    ld e, h
    call c, $0b5c
    ld e, l
    cpl
    ld e, l
    ld [hl], a
    ld e, l
    xor b
    ld e, l
    rst AddAToHL
    ld e, l
    ld b, $5e
    rra
    ld e, [hl]
    ld c, c
    ld e, [hl]
    ld [hl], c
    ld e, [hl]
    adc d
    ld e, [hl]
    sbc a
    ld e, [hl]
    xor l
    ld e, [hl]
    ret c

    ld e, [hl]
    dec a
    ld e, a
    ld c, a
    ld e, a
    ld e, l
    ld e, a
    ld l, h
    ld e, a
    ld a, [hl]
    ld e, a
    sub h
    ld e, a
    and d
    ld e, a
    or a
    ld e, a
    db $db
    ld e, a
    dec c
    ld h, b
    inc sp
    ld h, b
    ld b, d
    ld h, b
    ld d, l
    ld h, b
    ld h, a
    ld h, b
    ld a, b
    ld h, b
    adc l
    ld h, b
    xor e
    ld h, b
    jp nz, $0c60

    ld h, c
    daa
    ld h, c
    dec [hl]
    ld h, c
    dec [hl]
    ld h, c
    ld c, c
    ld h, c
    sbc b
    ld h, c
    xor b
    ld h, c
    rst $38
    ld h, c
    add hl, bc
    ld h, d
    rra
    ld h, d
    ld l, $62
    ld a, [hl-]
    ld h, d
    ld d, b
    ld h, d
    ld l, c
    ld h, d
    and a
    ld h, d
    cp b
    ld h, d
    ret


    ld h, d
    inc bc
    ld h, e
    ld [de], a
    ld h, e
    ld l, [hl]
    ld h, e
    ld a, h
    ld h, e
    adc a
    ld h, e
    sbc c
    ld h, e
    ld e, c
    ld h, h
    ld h, e
    ld h, h
    sbc l
    ld h, h
    jp $d564


    ld h, h
    ld a, [hli]
    ld h, l
    ld e, e
    ld h, l
    add l
    ld h, l
    add l
    ld h, l
    sub [hl]
    ld h, l
    and h
    ld h, l
    xor a
    ld h, l
    xor $65
    inc b
    ld h, [hl]
    ld b, l
    ld h, [hl]
    ld c, a
    ld h, [hl]
    ld e, l
    ld h, [hl]
    add [hl]
    ld h, [hl]
    adc l
    ld h, [hl]
    and l
    ld h, [hl]
    or a
    ld h, [hl]
    rst $08
    ld h, [hl]
    jp hl


    ld h, [hl]
    inc c
    ld h, a
    add hl, de
    ld h, a
    dec l
    ld h, a
    add hl, sp
    ld h, a
    ld b, c
    ld h, a
    xor l
    ld h, a
    jp z, $dd67

    ld h, a
    jr nc, jr_01c_7230

    ccf
    ld l, b
    ld e, l
    ld l, b
    add l
    ld l, b
    sbc c
    ld l, b
    or a
    ld l, b
    adc $68
    adc $68
    pop hl
    ld l, b
    pop hl
    ld l, b
    db $fc
    ld l, b
    ld [$6769], sp
    ld l, c
    ld a, c
    ld l, c
    sbc a
    ld l, c
    sbc $69
    ld b, $6a
    add hl, de
    ld l, d
    ld c, l
    ld l, d
    ld e, a
    ld l, d
    ld [hl], b
    ld l, d
    sbc e
    ld l, d
    cp e
    ld l, d
    sbc $6a
    ld l, h
    ld l, e
    adc l
    ld l, e
    xor h
    ld l, e
    cp h
    ld l, e
    and $6b
    db $fd
    ld l, e
    ld [de], a
    ld l, h
    ld [hl], l
    ld l, h
    adc d
    ld l, h
    sbc c
    ld l, h
    cp d
    ld l, h
    pop de
    ld l, h
    jp hl


    ld l, h
    db $fc
    ld l, h
    add hl, hl
    ld l, l
    inc a
    ld l, l
    ld c, e
    ld l, l
    ld l, [hl]
    ld l, l
    ld a, [hl]
    ld l, l
    or e
    ld l, l
    call nz, $d06d
    ld l, l
    db $db
    ld l, l
    ld sp, hl
    ld l, l
    ld a, [bc]
    ld l, [hl]
    dec [hl]
    ld l, [hl]
    and l
    ld l, [hl]
    or b
    ld l, [hl]
    rst $00
    ld l, [hl]

jr_01c_7230:
    ldh a, [$6e]
    dec de
    ld l, a
    jr c, @+$71

    ld d, h
    ld l, a
    ld [hl], l
    ld l, a
    adc h
    ld l, a
    xor h
    ld l, a
    call $fe6f
    ld l, a
    sbc a
    ld [hl], b
    xor d
    ld [hl], b
    cp [hl]
    ld [hl], b
    dec a
    ld [hl], c
    sub [hl]
    ld [hl], c
    and d
    ld [hl], c
    cp $71
    ld d, e
    ld [hl], d
    adc l
    ld [hl], d
    and d
    ld [hl], d
    xor e
    ld [hl], d
    ld [hl], $73
    ld c, c
    ld [hl], e
    ld l, [hl]
    ld [hl], e
    xor b
    ld [hl], e
    db $db
    ld [hl], e
    rst JumpTable
    ld [hl], e
    add hl, de
    ld [hl], h
    ld a, b
    ld [hl], h
    sbc d
    ld [hl], h
    rst $00
    ld [hl], h
    ld a, [c]
    ld [hl], h
    ld sp, hl
    ld [hl], h
    rst $38
    ld [hl], h
    add hl, de
    ld [hl], l
    ld b, l
    ld [hl], l
    add b
    ld [hl], l
    sbc h
    ld [hl], l
    or b
    ld [hl], l
    bit 6, l
    and $75
    pop af
    ld [hl], l
    inc bc
    db $76
    add hl, sp
    db $76
    ld h, h
    db $76
    add h
    db $76
    xor d
    db $76
    add $76
    ld e, $77
    ld b, h
    ld [hl], a
    sub a
    ld [hl], a
    dec e
    ld a, b
    ld [hl], a
    ld a, b
    sub a
    ld a, b
    rst $08
    ld a, b
    ldh [$78], a
    db $eb
    ld a, b
    ei
    ld a, b
    add hl, bc
    ld a, c
    ld hl, $3679
    ld a, c
    ld b, [hl]
    ld a, c
    ld d, a
    ld a, c
    ld l, c
    ld a, c
    db $76
    ld a, c
    adc h
    ld a, c
    sbc c
    ld a, c
    xor a
    ld a, c
    jp nz, $d779

    ld a, c
    rst $20
    ld a, c
    sbc h
    ld a, d
    ret z

    ld a, d
    adc $7a
    inc b
    ld a, e
    ld a, [bc]
    ld a, e
    ld d, $7b
    ld l, d
    ld a, e
    rst $08
    ld a, e
    ld a, [bc]
    ld a, h
    inc sp
    ld a, h
    ld d, a
    ld a, h
    xor h
    ld a, h
    rst $20
    ld a, h
    db $fd
    ld a, h
    ld bc, $ac7d
    ld a, h
    ld [de], a
    ld a, l
    and h
    ld a, l
    cp h
    ld a, l
    call $de7d
    ld a, l
    xor $7d
    ld h, $7e
    ld e, [hl]
    ld a, [hl]
    xor d
    ld a, [hl]
    cp h
    ld a, [hl]
    jp z, Jump_01c_5e7e

    ld a, [hl]
    jp nc, $e57e

    ld a, [hl]
    ld b, a
    ld a, a
    ld e, a
    ld a, a
    ld h, e
    ld a, a
    push hl
    ld a, [hl]
    ld [hl], b
    ld a, a
    ld a, [hl]
    ld a, a
    db $ec
    ld a, a
    ld bc, $1580
    add b
    ld a, [hl]
    ld a, a
    ld a, [de]
    add b
    ld c, b
    add b
    ld [hl], a
    add b
    adc c
    add b
    sub l
    add b
    ld c, b
    add b
    sbc e
    add b
    push af
    add b
    ld hl, $3981
    add c
    ld b, a
    add c
    push af
    add b
    ld c, l
    add c
    ld l, l
    add c
    jp nz, $d581

    add c
    db $db
    add c
    ld l, l
    add c
    ld [c], a
    add c
    ld [c], a
    add c
    ld [c], a
    add c
    ld d, c
    add d
    ld l, b
    add d
    add a
    add d
    sbc h
    add d
    cp b
    add d
    ld b, e
    add e
    ld d, [hl]
    add e
    ld e, d
    add e
    cp b
    add d
    ld e, a
    add e
    and c
    add e
    db $e4
    add e
    db $f4
    add e
    ld [$1684], sp
    add h
    ld e, a
    add e
    ld e, $84
    ld c, h
    add h
    ld h, a
    add h
    add e
    add h
    xor l
    add h
    jp nz, $d384

    add h
    db $e4
    add h
    ld d, $85
    daa
    add l
    dec sp
    add l
    ld d, a
    add l
    ld h, l
    add l
    ld [hl], l
    add l
    adc h
    add l
    and l
    add l
    cp e
    add l
    call z, $dd85
    add l
    ld bc, $0786
    add [hl]
    ld [hli], a
    add [hl]
    jr nz, jr_01c_73a4

    inc c
    db $10
    ld c, a
    ld c, e
    jr nz, jr_01c_7396

    db $10
    ld c, [hl]
    ld l, a
    jr nz, jr_01c_7403

    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    nop
    add hl, bc

jr_01c_7396:
    inc bc
    ld d, b
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01c_73fb

    ld h, l
    ld l, h
    ld h, h

jr_01c_73a4:
    ld h, c
    add hl, bc
    nop
    nop
    jr nz, jr_01c_73ca

    inc c
    db $10
    ld e, c
    ld h, l
    ld [hl], e
    jr nz, @+$0e

    db $10
    ld c, [hl]
    ld l, a
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_7421

    ld l, a
    ld [hl], h
    jr nz, jr_01c_7432

    ld l, b
    ld h, l
    ld bc, $0900
    inc bc
    ld c, h
    ld h, c
    ld h, d
    ld [hl], d
    ld a, c
    ld l, [hl]

jr_01c_73ca:
    ld l, [hl]
    ld h, c
    add hl, bc
    nop
    nop
    ld c, l
    ld a, c
    jr nz, @+$64

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_01c_744d

    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_01c_744b

    ld h, l
    ld bc, $2000
    add hl, bc
    ld bc, $6573
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    add hl, bc
    nop
    nop
    inc c
    db $10
    ld e, c
    ld h, l
    ld [hl], e
    jr nz, jr_01c_7400

    db $10
    ld c, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_01c_746c

    ld h, l

jr_01c_73fb:
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    nop

jr_01c_7400:
    ld c, c
    daa
    ld l, h

jr_01c_7403:
    ld l, h
    jr nz, jr_01c_747a

    ld [hl], d
    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_01c_7472

    ld l, a
    ld [hl], d
    ld bc, $4f00
    ld [hl], d
    ld h, l
    jr nz, jr_01c_7458

    ld l, b
    ld [hl], l
    ld l, [hl]
    ld l, e
    ld [hl], e
    add hl, bc
    nop
    nop
    ld h, l
    ld h, l
    jr nz, jr_01c_7489

jr_01c_7421:
    ld h, l
    ld h, l
    jr nz, @+$6a

    ld h, l
    ld h, l
    jr nz, @+$6a

    ld h, l
    ld h, l
    ld hl, $4800
    ld l, a
    ld l, b
    ld l, b
    ld l, l

jr_01c_7432:
    ld l, $2e
    ld l, $5a
    ld e, d
    ld e, d
    ld l, $2e
    ld l, $00
    ld d, e
    ld [hl], a
    ld l, a
    ld [hl], d
    ld h, h
    jr nz, jr_01c_74a7

    ld h, c
    ld l, l
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_01c_744a

jr_01c_744a:
    add hl, bc

jr_01c_744b:
    inc bc
    ld e, d

jr_01c_744d:
    ld h, l
    ld l, h
    ld h, h
    ld h, c
    add hl, bc
    nop
    nop
    add hl, bc
    ld bc, $6147

jr_01c_7458:
    ld [hl], e
    ld l, b
    ld h, c
    jr nz, jr_01c_74b0

    ld h, l
    ld h, l
    ld h, h
    nop
    add hl, bc
    inc bc
    ld d, h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld [hl], d
    ld l, a
    db $76
    ld h, c
    add hl, bc

jr_01c_746c:
    nop
    nop
    add hl, bc
    ld bc, $6573

jr_01c_7472:
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    add hl, bc
    nop
    nop
    ld d, h

jr_01c_747a:
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01c_74f9

    ld l, a
    ld [hl], l
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_74ef

    ld l, a

jr_01c_7489:
    ld [hl], h
    jr nz, jr_01c_7495

    ld bc, $2000
    add hl, bc
    ld bc, $6972
    ld l, [hl]
    ld h, a

jr_01c_7495:
    ld [hl], e
    add hl, bc
    nop
    nop
    ld c, b
    ld l, a
    ld [hl], d
    ld l, a
    ld l, [hl]
    jr nz, jr_01c_74f6

    ld l, c
    ld l, h
    ld l, h
    ld h, c
    ld h, a
    ld h, l
    nop

jr_01c_74a7:
    ld b, h
    ld h, c
    ld l, l
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_01c_7523

    ld h, c

jr_01c_74b0:
    ld l, e
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_74b5

jr_01c_74b5:
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_752f

    ld l, a
    jr nz, jr_01c_752a

    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    nop
    add hl, bc
    inc bc
    ld c, b
    ld l, a
    ld l, h
    ld l, a
    ld h, h
    ld [hl], d
    ld [hl], l
    ld l, l
    add hl, bc
    nop
    nop
    ld l, b
    ld h, l
    jr nz, jr_01c_7547

    ld h, l
    ld h, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld [hl], e
    nop
    ld d, e
    ld [hl], l
    ld h, d
    ld [hl], d
    ld l, a
    ld [hl], e
    ld l, c
    ld h, c
    ld l, [hl]
    nop
    ld d, e
    ld h, l
    ld h, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld [hl], e
    add hl, bc
    nop
    nop

jr_01c_74ef:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_755b

    ld l, a
    ld [hl], h

jr_01c_74f6:
    jr nz, @+$63

    nop

jr_01c_74f9:
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    jr nc, jr_01c_7525

    ld d, d
    ld [hl], l
    ld [hl], b
    ld h, l
    ld h, l
    ld [hl], e
    nop
    add hl, bc
    inc bc
    ld d, h
    ld h, l
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    jr nz, jr_01c_7585

    ld h, [hl]
    ld bc, $6500
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]

jr_01c_7523:
    nop
    ld l, [hl]

jr_01c_7525:
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_01c_752a:
    ld h, c
    ld l, [hl]
    ld h, h
    nop
    ld d, e

jr_01c_752f:
    ld [hl], b
    ld l, a
    ld l, a
    ld l, h
    jr nz, @+$55

    ld [hl], a
    ld h, c
    ld l, l
    ld [hl], b
    nop
    ld c, b
    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_01c_7584

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]

jr_01c_7547:
    ld h, l
    ld [hl], d
    nop
    ld h, c
    jr nz, jr_01c_75b3

    ld h, l
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    jr nz, jr_01c_75c2

    ld h, c
    ld l, l
    ld h, l
    ld h, h
    ld bc, $0900

jr_01c_755b:
    ld bc, $6952
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_75a4

    ld l, a
    ld a, b
    add hl, bc
    nop
    nop
    jr nz, jr_01c_75cd

    ld h, c
    ld l, l
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_01c_75d6

    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $4500
    ld [hl], e
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01c_75ed

    ld h, [hl]
    ld bc, $5300
    ld [hl], l
    ld l, [hl]

jr_01c_7584:
    ld l, e

jr_01c_7585:
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_75cc

    ld l, c
    ld [hl], h
    ld a, c
    nop
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01c_75f4

    ld h, c
    ld h, e
    ld l, e
    nop
    ld c, c
    jr nz, jr_01c_75fc

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_759f

jr_01c_759f:
    add hl, bc
    ld bc, $6972
    ld l, [hl]

jr_01c_75a4:
    ld h, a
    add hl, bc
    nop
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01c_7617

    ld [hl], e
    jr nz, jr_01c_75b1

jr_01c_75b1:
    ld c, c
    daa

jr_01c_75b3:
    ld l, h
    ld l, h
    jr nz, jr_01c_762b

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01c_7636

    ld l, a
    ld [hl], l
    nop
    add hl, bc
    inc bc

jr_01c_75c2:
    ld c, h
    ld h, c
    ld h, d
    ld [hl], d
    ld a, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    daa
    ld [hl], e

jr_01c_75cc:
    add hl, bc

jr_01c_75cd:
    nop
    nop
    ld d, h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01c_7649

    ld l, b

jr_01c_75d6:
    ld l, c
    ld [hl], e
    nop
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01c_7652

    ld l, b
    ld h, l
    ld bc, $2000
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_764b

    ld h, c
    ld l, [hl]
    nop
    add hl, bc
    inc bc

jr_01c_75ed:
    ld c, a
    ld l, [hl]
    ld l, a
    ld a, b
    add hl, bc
    nop
    nop

jr_01c_75f4:
    ld d, h
    ld [hl], d
    ld a, c
    jr nz, jr_01c_765a

    ld h, a
    ld h, c
    ld l, c

jr_01c_75fc:
    ld l, [hl]
    jr nz, jr_01c_766b

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $4400
    ld l, a
    jr nz, jr_01c_7682

    ld l, a
    ld [hl], l
    jr nz, @+$6d

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01c_7612

jr_01c_7612:
    add hl, bc
    ld bc, $6148
    ld [hl], d

jr_01c_7617:
    ld h, h
    jr nz, jr_01c_7669

    ld [hl], d
    ld h, l
    add hl, bc
    nop
    nop
    add hl, bc
    ld bc, $7365
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    ld [hl], e
    add hl, bc
    nop

jr_01c_762b:
    nop
    add hl, bc
    ld bc, $6573
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], e
    add hl, bc

jr_01c_7636:
    nop
    nop
    jr nz, jr_01c_7643

    ld bc, $6562
    ld l, h
    ld l, h
    add hl, bc
    nop
    nop
    ld c, l

jr_01c_7643:
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld a, c

jr_01c_7649:
    jr nz, jr_01c_769e

jr_01c_764b:
    ld h, l
    ld h, l
    ld h, h
    ld [hl], e
    nop
    add hl, bc
    inc bc

jr_01c_7652:
    ld c, l
    ld h, c
    ld l, e
    ld [hl], l
    jr nz, @+$56

    ld [hl], d
    ld h, l

jr_01c_765a:
    ld h, l
    add hl, bc
    nop
    nop
    ld l, a
    ld h, [hl]
    jr nz, jr_01c_76b5

    ld h, l
    ld h, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld [hl], e
    nop

jr_01c_7669:
    ld c, c
    ld h, [hl]

jr_01c_766b:
    jr nz, jr_01c_76e6

    ld l, a
    ld [hl], l
    jr nz, jr_01c_7671

jr_01c_7671:
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_01c_76ed

    ld l, a
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    inc l
    ld bc, $6f00

jr_01c_7682:
    jr nz, jr_01c_76fd

    ld l, a
    ld [hl], l
    jr nz, jr_01c_76fa

    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    ld bc, $5900
    ld l, a
    ld [hl], l
    jr nz, jr_01c_76fa

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld c, a
    ld [hl], d
    ld h, c

jr_01c_769e:
    ld h, e
    ld l, h
    ld h, l
    jr nz, jr_01c_7712

    ld h, [hl]
    nop
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_76ad

jr_01c_76ad:
    add hl, bc
    ld bc, $6573
    ld h, l
    ld h, h
    ld [hl], e
    add hl, bc

jr_01c_76b5:
    nop
    nop
    add hl, bc  ;<09>
    inc bc      ;<TEXT2>
    ld b, h     ;D
    ld l, c     ;i
    ld l, [hl]  ;n
    add hl, bc  ;<09>
    nop
    nop
    jr nz, jr_01c_7735

    ld l, a
    jr nz, jr_01c_7738

    ld l, b
    ld h, l
    ld bc, $5900
    ld l, a
    ld [hl], l
    jr nz, jr_01c_7730

    ld h, c
    ld l, [hl]
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01c_76d8

jr_01c_76d8:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$78

    ld l, c
    ld l, h
    ld l, h
    ld h, c
    ld h, a
    ld h, l
    nop
    ld h, c
    ld [hl], b

jr_01c_76e6:
    ld [hl], b
    ld [hl], d
    ld h, c
    ld l, c
    ld [hl], e
    ld h, l
    nop

jr_01c_76ed:
    jr nz, jr_01c_7758

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6f00
    ld [hl], l
    jr nz, jr_01c_7762

jr_01c_76fa:
    ld h, c
    db $76
    ld h, l

jr_01c_76fd:
    nop
    jr nz, jr_01c_7777

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01c_7767

    ld h, l
    ld bc, $4500
    db $76
    ld l, c
    ld l, h
    jr nz, jr_01c_7759

    ld l, c
    ld l, [hl]
    ld h, a
    nop

jr_01c_7712:
    jr nz, jr_01c_777b

    ld l, c
    db $76
    ld h, l
    jr nz, jr_01c_7792

    ld l, a
    ld [hl], l
    nop
    jr nz, jr_01c_772a

    db $10
    ld c, [hl]
    ld l, a
    jr nz, jr_01c_779a

    ld h, c
    ld a, c
    nop
    add hl, bc
    ld bc, $6f42

jr_01c_772a:
    ld l, l
    ld h, d
    ld [hl], e
    add hl, bc
    nop
    nop

jr_01c_7730:
    add hl, bc
    inc bc
    ld b, a
    ld h, c
    ld l, [hl]

jr_01c_7735:
    ld l, a
    ld l, [hl]
    add hl, bc

jr_01c_7738:
    nop
    nop
    jr nz, jr_01c_77a4

    ld h, c
    ld [hl], e
    jr nz, jr_01c_77a2

    ld h, l
    ld h, l
    ld l, [hl]
    ld bc, $2000
    ld l, b
    ld l, a
    jr nz, jr_01c_77b2

    ld l, a
    jr nz, jr_01c_77b5

    ld l, a
    ld hl, $0900
    ld bc, $6952
    ld h, d
    ld h, d
    ld l, a
    ld l, [hl]

jr_01c_7758:
    add hl, bc

jr_01c_7759:
    nop
    nop
    ld d, e
    ld h, l
    ld h, l
    ld h, h
    ld [hl], e
    add hl, bc
    nop

jr_01c_7762:
    nop
    ld l, b
    ld h, l
    jr nz, jr_01c_77d7

jr_01c_7767:
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    nop
    jr nz, jr_01c_77d7

    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld bc, $6400
    ld h, c

jr_01c_7777:
    ld [hl], d
    ld l, e
    ld l, [hl]
    ld h, l

jr_01c_777b:
    ld [hl], e
    ld [hl], e
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$69

    ld l, a
    ld [hl], h
    nop
    jr nz, jr_01c_77fa

    ld h, l
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_01c_7806

jr_01c_7792:
    ld l, b
    ld h, l
    jr nz, jr_01c_7796

jr_01c_7796:
    ld l, a
    ld [hl], l
    jr nz, @+$6f

jr_01c_779a:
    ld [hl], l
    ld [hl], e
    ld [hl], h
    nop
    ld b, d
    ld l, a
    ld l, a
    ld l, l

jr_01c_77a2:
    ld h, l
    ld [hl], d

jr_01c_77a4:
    ld h, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], e
    ld h, c
    ld h, e
    ld [hl], d
    ld l, c
    ld h, [hl]
    ld l, c
    ld h, e
    ld h, l
    nop

jr_01c_77b2:
    ld b, d
    ld l, c
    ld h, a

jr_01c_77b5:
    ld h, a
    ld l, a
    ld [hl], d
    ld l, a
    ld l, [hl]
    nop
    ld l, b
    ld h, l
    jr nz, @+$48

    ld l, h
    ld h, c
    ld l, l
    ld h, l
    nop
    add hl, bc
    inc bc
    ld d, d
    ld l, a
    ld [hl], e
    ld h, c
    add hl, bc
    nop
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_01c_77d5

jr_01c_77d5:
    ld c, c
    daa

jr_01c_77d7:
    ld l, l
    jr nz, jr_01c_7841

    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, c
    jr nz, jr_01c_77e0

jr_01c_77e0:
    ld c, c
    jr nz, jr_01c_785a

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_785c

    ld l, a
    jr nz, jr_01c_77eb

jr_01c_77eb:
    ld c, [hl]
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld hl, $180c
    ld bc, $0900
    ld bc, $6873

jr_01c_77fa:
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    add hl, bc
    nop
    nop
    ld l, a;
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_780f

jr_01c_7806:
    ld bc, $6553
    ld h, l
    ld h, h

Call_01c_780b:
    ld bc, $0900
    inc bc

jr_01c_780f:
    ld b, h
    ld l, c
    ld l, l
    ld l, c
    ld [hl], h
    ld [hl], d
    ld l, c
    add hl, bc
    nop
    nop
    jr nz, jr_01c_786d

    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_786c

    dec l
    nop
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    nop
    ld l, c
    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01c_7832

jr_01c_7832:
    jr nz, jr_01c_78ad

    ld l, a;
    ld [hl], l
    ld [hl], d
    ld bc, $6800
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01c_7841

jr_01c_7841:
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01c_78c0

    ld l, a
    ld [hl], l
    jr nz, jr_01c_784b

jr_01c_784b:
    ld c, b
    ld [hl], a
    ld h, c
    ld h, c
    ld l, b
    ld l, $2e
    ld l, $01
    nop
    ld d, e
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b

jr_01c_785a:
    ld h, l
    ld l, h

jr_01c_785c:
    add hl, bc
    nop
    nop
    add hl, bc
    inc bc
    ld b, e
    ld h, c
    ld [hl], b
    daa
    ld l, [hl]
    add hl, bc
    nop
    nop
    ld d, b
    ld l, c
    ld h, l

jr_01c_786c:
    ld h, e

jr_01c_786d:
    ld h, l
    ld [hl], e
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01c_78bc

    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], h
    nop
    ld c, c
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_7882

jr_01c_7882:
    ld b, e
    ld h, c
    ld l, [hl]
    jr nz, jr_01c_7900

    ld l, a
    ld [hl], l
    jr nz, jr_01c_788b

jr_01c_788b:
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01c_7905

    ld l, a
    nop
    ld h, l
    jr nz, jr_01c_790f

    ld l, a
    ld [hl], l
    jr nz, jr_01c_789a

jr_01c_789a:
    jr nz, jr_01c_78fd

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    nop
    ld l, $2e
    ld l, $0c
    jr jr_01c_78a8

    nop

jr_01c_78a8:
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], e
    ld l, a

jr_01c_78ad:
    ld l, [hl]
    ld [hl], e
    nop
    jr nz, jr_01c_7918

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_78b8

jr_01c_78b8:
    ld l, a
    ld h, [hl]
    jr nz, @+$76

jr_01c_78bc:
    ld l, b
    ld h, l
    jr nz, jr_01c_78c0

jr_01c_78c0:
    jr nz, jr_01c_7939

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_78c8

jr_01c_78c8:
    ld [hli], a
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    nop
    jr nz, jr_01c_7946

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01c_791f

    ld l, a
    ld a, c
    jr nz, jr_01c_7924

    ld l, a
    ld l, h
    ld l, a
    ld [hl], d
    nop
    add hl, bc
    inc b
    inc c
    ld [$7320], sp
    ld l, c
    ld h, a
    ld l, [hl]
    ld [hl], e
    add hl, bc
    nop
    ld hl, $0001
    add hl, bc
    ld bc, $7345
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld h, e

jr_01c_78fd:
    ld h, l
    ld [hl], e
    nop

jr_01c_7900:
    jr nz, jr_01c_797b

    ld l, a;
    ld [hl], l
    ld [hl], d

jr_01c_7905:
    jr nz, jr_01c_7907

jr_01c_7907:
    jr nz, jr_01c_7980

    ld l, c
    ld l, h
    ld l, h
    ld bc, $2000

jr_01c_790f:
    ld l, a
    ld l, [hl]
    jr nz, jr_01c_7987

    ld l, b
    ld h, l
    ld bc, $5300

jr_01c_7918:
    ld [hl], l
    ld h, d
    ld [hl], d
    ld l, a
    ld [hl], e
    ld l, c
    ld h, c

jr_01c_791f:
    nop
    ld d, e
    ld h, l
    ld h, c
    ld [hl], e

jr_01c_7924:
    ld l, a
    ld l, [hl]
    ld [hl], e
    nop
    jr nz, jr_01c_799d

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld bc, $4700
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01c_79a2

    ld [hl], l
    ld h, e
    ld l, e

jr_01c_7939:
    nop
    ld [hl], a
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld h, c
    ld l, h
    ld l, h
    nop
    jr nz, @+$79

jr_01c_7946:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01c_794b

jr_01c_794b:
    jr nz, @+$72

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    nop
    jr nz, jr_01c_79c8

    ld l, b
    ld l, c
    ld [hl], e
    ld bc, $6100
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_7960

jr_01c_7960:
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_7967

jr_01c_7967:
    add hl, bc
    ld [bc], a
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    add hl, bc
    inc b
    nop
    add hl, bc
    ld bc, $7453
    ld h, c
    ld [hl], d
    dec l
    ld d, e

jr_01c_797b:
    ld l, b
    ld h, c
    ld [hl], b
    ld h, l
    ld h, h

jr_01c_7980:
    jr nz, jr_01c_79d1

    ld [hl], d
    ld h, l
    add hl, bc
    nop
    nop

jr_01c_7987:
    jr nz, jr_01c_79db

    ld [hl], l
    ld [hl], b
    ld h, l
    ld h, l
    ld [hl], e
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], h
    nop
    ld c, c
    jr nz, jr_01c_7a02

    ld h, c
    db $76
    ld h, l

jr_01c_799d:
    jr nz, jr_01c_799f

jr_01c_799f:
    jr nz, jr_01c_7a02

    ld [hl], d

jr_01c_79a2:
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    nop
    ld c, c
    jr nz, jr_01c_7a13

    ld l, l
    jr nz, jr_01c_79be

    inc bc
    nop
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_79be

jr_01c_79be:
    jr nz, jr_01c_7a28

    ld h, c
    db $76
    ld h, l
    ld bc, $2000
    ld [hl], h
    ld l, b

jr_01c_79c8:
    ld l, c
    ld [hl], e
    jr nz, jr_01c_79cc

jr_01c_79cc:
    jr nz, jr_01c_7a42

    ld l, b
    ld h, c
    ld [hl], h

jr_01c_79d1:
    jr nz, jr_01c_79d3

jr_01c_79d3:
    jr nz, jr_01c_7a49

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $5300

jr_01c_79db:
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, jr_01c_7a29

    ld l, h
    ld [hl], l
    ld [hl], h
    ld h, l
    nop
    ld c, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, @+$45

    ld h, c
    ld [hl], d
    ld h, h
    nop
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01c_7a67

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_7a70

    ld h, [hl]

jr_01c_7a02:
    ld bc, $4900
    jr nz, jr_01c_7a7a

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld hl, $0001
    add hl, bc

jr_01c_7a13:
    inc bc
    ld c, l
    ld [hl], h
    ld l, $20
    ld b, e
    ld [hl], l
    ld h, e
    ld h, e
    ld l, a
    add hl, bc
    nop
    nop
    jr nz, jr_01c_7a99

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $6c00

jr_01c_7a28:
    ld l, a

jr_01c_7a29:
    ld l, a
    ld h, h
    ld h, a
    ld h, c
    ld [hl], h
    ld h, l
    nop
    jr nz, jr_01c_7a98

    ld l, a
    ld [hl], d
    jr nz, jr_01c_7aaa

    ld l, b
    ld h, l
    nop
    ld [hl], d
    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    nop

jr_01c_7a42:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_7abb

    ld l, b
    ld h, l

jr_01c_7a49:
    ld bc, $6100
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01c_7ac5

    ld l, a
    jr nz, jr_01c_7a54

jr_01c_7a54:
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01c_7ace

    ld l, b
    ld h, l
    nop
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    nop
    ld d, d
    ld h, l

jr_01c_7a67:
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ccf
    nop
    ld h, e
    ld h, c
    ld l, [hl]

jr_01c_7a70:
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_01c_7a75

jr_01c_7a75:
    jr nz, jr_01c_7ac0

    daa
    ld l, h
    ld l, h

jr_01c_7a7a:
    jr nz, jr_01c_7a7c

jr_01c_7a7c:
    inc l
    jr nz, jr_01c_7ae1

    ld [hl], l
    ld [hl], h
    ld bc, $7300
    ld h, l
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    nop
    jr nz, jr_01c_7b00

    ld l, b
    ld h, l
    jr nz, jr_01c_7a90

jr_01c_7a90:
    jr nz, jr_01c_7afc

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01c_7a97

jr_01c_7a97:
    ld d, e

jr_01c_7a98:
    ld l, a

jr_01c_7a99:
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld l, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_01c_7b1b

    ld l, b
    ld l, c
    ld [hl], e

jr_01c_7aaa:
    nop
    ld l, e
    ld l, c
    ld h, h
    ld l, [hl]
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, h
    nop
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01c_7b07

jr_01c_7abb:
    ld l, c
    ld l, [hl]
    ld l, e
    nop
    ld d, [hl]

jr_01c_7ac0:
    ld l, c
    ld l, h
    ld l, h
    ld h, c
    ld h, a

jr_01c_7ac5:
    ld h, l
    add hl, bc
    nop
    nop
    add hl, bc
    inc bc
    ld d, [hl]
    ld h, l
    ld [hl], d

jr_01c_7ace:
    ld h, c
    ld l, [hl]
    add hl, bc
    nop
    nop
    jr nz, jr_01c_7b49

    ld l, b
    ld h, l
    ld bc, $7900
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01c_7ae1

jr_01c_7ae1:
    jr nz, jr_01c_7b56

    ld [hl], l
    ld l, l
    ld l, l
    ld h, l
    ld [hl], d
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_7b50

    jr nz, jr_01c_7af1

jr_01c_7af1:
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_7b6f

    ld l, a
    ld [hl], l
    nop
    ld a, c
    ld [hl], e
    ld [hl], h

jr_01c_7afc:
    ld l, c
    ld h, e
    ld h, c
    ld l, h

jr_01c_7b00:
    nop
    jr nz, jr_01c_7b56

    ld h, l
    ld h, l
    ld h, h
    ld [hl], e

jr_01c_7b07:
    ld bc, $7300
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    nop
    ld b, a
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01c_7b65

    ld l, a
    ld h, d
    ld l, h

jr_01c_7b1b:
    ld l, c
    ld l, [hl]
    nop
    ld b, d
    ld [hl], d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01c_7b79

    ld [hl], l
    ld l, [hl]
    nop
    add hl, bc
    ld bc, $6c42
    ld [hl], l
    ld h, l
    jr nz, jr_01c_7b80

    ld [hl], d
    ld h, l
    add hl, bc
    nop
    nop
    ld [hl], d
    jr nz, @+$6a

    ld h, c
    ld [hl], d
    jr nz, @+$6a

    ld h, c
    ld [hl], d
    ld hl, $0900
    inc bc
    ld c, b
    ld a, c
    ld [hl], d
    ld [hl], l
    ld l, h
    ld h, l

jr_01c_7b49:
    add hl, bc
    nop
    nop
    ld h, [hl]
    ld [hl], d
    ld l, c
    ld h, l

jr_01c_7b50:
    ld l, [hl]
    ld h, h
    nop
    jr nz, jr_01c_7bce

    ld l, a

jr_01c_7b56:
    ld [hl], l
    ld bc, $6f00
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    jr nz, jr_01c_7bd4

    ld l, c
    ld h, a
    ld l, b

jr_01c_7b65:
    ld [hl], h
    nop
    jr nz, jr_01c_7be0

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01c_7b6e

jr_01c_7b6e:
    ld [hl], e

jr_01c_7b6f:
    ld l, b
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01c_7b75

jr_01c_7b75:
    jr nz, jr_01c_7bc0

    jr nz, jr_01c_7bdc

jr_01c_7b79:
    ld h, c
    ld l, [hl]
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, a

jr_01c_7b80:
    ld h, l
    ld [hl], h
    nop
    ld l, [hl]
    ld h, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_7bfa

    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_7c02

    ld l, a
    ld l, [hl]
    inc l
    ld bc, $7900
    ld l, a
    ld [hl], l
    jr nz, jr_01c_7bfc

    ld h, c
    ld l, [hl]
    jr nz, jr_01c_7b9d

jr_01c_7b9d:
    ld b, a
    ld l, a
    ld [hl], h
    jr nz, @+$6b

    ld [hl], h
    ccf
    ld bc, $2000
    ld h, d
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$75

    ld l, a
    jr nz, jr_01c_7bb8

jr_01c_7bb8:
    ld b, h
    ld h, c
    ld [hl], d
    ld l, e
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e

jr_01c_7bc0:
    nop
    add hl, bc
    ld bc, $6f52
    ld h, h
    jr nz, @+$71

    ld h, [hl]
    nop
    jr nz, jr_01c_7c1e

    ld l, c
    ld l, [hl]

jr_01c_7bce:
    ld h, a
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a

jr_01c_7bd4:
    ld l, [hl]
    ld h, a
    nop
    jr nz, @+$79

    ld l, b
    ld h, l
    ld l, [hl]

jr_01c_7bdc:
    ld bc, $2000
    ld h, [hl]

jr_01c_7be0:
    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $0900
    nop
    jr nz, jr_01c_7c52

    ld [hl], e
    ld bc, $2000
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_7bf2

jr_01c_7bf2:
    jr nz, @+$75

    ld [hl], b
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    nop

jr_01c_7bfa:
    ld [hl], h
    ld l, b

jr_01c_7bfc:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    nop

jr_01c_7c02:
    jr nz, jr_01c_7c57

    ld h, e
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    nop
    jr nz, jr_01c_7c5f

    ld l, b
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    nop
    ld l, l
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    ld [hl], e
    ld [hl], b
    ld h, l
    ld h, e

jr_01c_7c1e:
    ld l, c
    ld h, c
    ld l, h
    nop
    jr nz, jr_01c_7c85

    ld l, [hl]
    ld h, h
    ld bc, $6800
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_7c2f

jr_01c_7c2f:
    ld d, e
    ld [hl], b
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    nop
    jr nz, jr_01c_7cb3

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    nop
    jr nz, jr_01c_7ca7

    ld l, [hl]
    ld h, h
    jr nz, jr_01c_7c4a

jr_01c_7c4a:
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld bc, $2000
    ld h, e

jr_01c_7c52:
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    nop

jr_01c_7c57:
    jr nz, jr_01c_7cbf

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_7c5e

jr_01c_7c5e:
    ld c, l

jr_01c_7c5f:
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    ld hl, $5920
    ld l, a
    ld [hl], l
    ld bc, $7000
    ld h, l
    ld l, a
    ld [hl], b
    ld l, h
    ld h, l
    nop
    jr nz, @+$4b

    daa
    ld l, h
    ld l, h
    ld bc, $5000
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    nop
    ld h, h
    ld l, a
    ld l, [hl]
    daa

jr_01c_7c85:
    ld [hl], h
    jr nz, jr_01c_7c88

jr_01c_7c88:
    jr nz, jr_01c_7ced

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_7c95

jr_01c_7c95:
    ld hl, $5420
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    ld bc, $7600
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_01c_7ca7:
    ld h, a
    nop
    ld c, c
    jr nz, jr_01c_7d23

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_7cb3

jr_01c_7cb3:
    ld d, b
    ld h, l
    ld h, a
    ld h, c
    ld [hl], e
    ld [hl], l
    ld [hl], e
    nop
    add hl, bc
    ld bc, $6972

jr_01c_7cbf:
    ld l, [hl]
    ld h, a
    ld [hl], e
    add hl, bc
    nop
    nop
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_7d39

    ld h, [hl]
    jr nz, jr_01c_7ccd

jr_01c_7ccd:
    add hl, bc
    inc bc
    ld c, l
    ld h, c
    ld [hl], b
    ld l, h
    ld h, l
    add hl, bc
    nop
    nop
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01c_7cdd

jr_01c_7cdd:
    ld l, b
    ld h, c
    db $76
    ld h, l
    jr nz, jr_01c_7ce3

jr_01c_7ce3:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld l, l
    ld [hl], b
    jr nz, jr_01c_7d5e

    ld l, a
    jr nz, jr_01c_7d50

jr_01c_7ced:
    ld h, c
    ld l, h
    ld l, h
    ld bc, $5000
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, @+$44

    ld [hl], d
    ld h, c
    ld h, e
    ld h, l
    ld l, h
    ld h, l
    ld [hl], h
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01c_7d79

    ld h, l
    ld h, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    jr nz, @+$6b

    ld [hl], e
    ld bc, $4e00
    ld l, a
    jr nz, jr_01c_7d81

    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_7d83

    ld l, a
    ld [hl], a
    ld bc, $0900
    inc bc
    ld d, h
    ld [hl], a

jr_01c_7d23:
    ld l, c
    ld l, [hl]
    ld [hl], d
    ld l, a
    db $76
    ld h, c
    daa
    ld [hl], e
    add hl, bc
    nop
    nop
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    nop
    ld l, b
    ld h, c

jr_01c_7d39:
    ld [hl], e
    jr nz, jr_01c_7d9f

    ld l, a
    ld l, l
    ld h, l
    nop
    ld c, c
    inc l
    jr nz, jr_01c_7db8

    ld l, a
    ld l, a
    inc l
    jr nz, jr_01c_7d49

jr_01c_7d49:
    jr nz, jr_01c_7d6b

    inc c
    db $10
    ld d, e
    ld [hl], l
    ld [hl], d

jr_01c_7d50:
    ld h, l
    nop
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l

jr_01c_7d5e:
    ld l, [hl]
    nop
    jr nz, jr_01c_7dd0

    ld l, a
    ld [hl], d
    ld [hl], h
    ld l, b
    nop
    inc l
    jr nz, jr_01c_7dde

    ld l, a

jr_01c_7d6b:
    ld l, a
    ld hl, $2000
    ld [hl], a
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    nop
    jr nz, jr_01c_7de7

    ld l, h
    ld h, c

jr_01c_7d79:
    ld h, e
    ld h, l
    nop
    ld h, l
    ld [hl], e
    ld [hl], b
    ld h, c
    ld l, c

jr_01c_7d81:
    ld [hl], d
    nop

jr_01c_7d83:
    ld [hl], a
    ld l, a
    ld [hl], d
    ld h, h
    add hl, bc
    nop
    nop
    jr nz, jr_01c_7df4

    ld h, l
    ld h, c
    ld [hl], d
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01c_7d96

jr_01c_7d96:
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_01c_7d9c

jr_01c_7d9c:
    jr nz, jr_01c_7e12

    ld l, c

jr_01c_7d9f:
    ld l, l
    ld h, l
    nop
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_7da8

jr_01c_7da8:
    jr nz, jr_01c_7e10

    ld l, a
    ld [hl], d
    jr nz, jr_01c_7dae

jr_01c_7dae:
    jr nz, jr_01c_7e1c

    ld l, c
    ld l, e
    ld h, l
    nop
    jr nz, jr_01c_7e1e

    ld h, l
    ld [hl], d

jr_01c_7db8:
    ld h, l
    nop
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    nop
    ld h, d
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    nop
    ld d, e
    ld [hl], b
    ld l, c
    ld [hl], d
    ld l, c
    ld [hl], h
    nop
    ld d, a
    ld h, l

jr_01c_7dd0:
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01c_7dd5

jr_01c_7dd5:
    ld c, b
    ld l, l
    ld l, l
    ld l, $2e
    ld l, $00
    ld h, c
    ld l, h

jr_01c_7dde:
    ld [hl], a
    ld h, c
    ld a, c
    ld [hl], e
    nop
    ld h, l
    ld [hl], d
    ld l, b
    ld h, c

jr_01c_7de7:
    ld [hl], b
    ld [hl], e
    nop
    jr nz, jr_01c_7e4f

    ld h, c
    ld l, [hl]
    jr nz, jr_01c_7df0

jr_01c_7df0:
    ld b, e
    ld l, h
    ld l, c
    ld l, l

jr_01c_7df4:
    ld h, d
    jr nz, jr_01c_7e58

    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_01c_7e5d

    ld bc, $7000
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    nop
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld l, $00
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01c_7e10

jr_01c_7e10:
    jr nz, @+$7b

jr_01c_7e12:
    ld l, a
    ld [hl], l
    ld hl, $2000
    ld [hl], h
    ld l, a
    jr nz, jr_01c_7e8e

    ld h, l

jr_01c_7e1c:
    ld h, l
    nop

jr_01c_7e1e:
    ld h, e
    ld l, a
    ld [hl], l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    nop
    ld [hl], a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_7ea0

    ld l, a
    nop
    jr nz, jr_01c_7ea4

    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    nop
    ld [hl], l
    ld [hl], e
    ld l, b
    ld [hl], d
    ld l, a
    ld l, a

Jump_01c_7e3c:
    ld l, l
    nop
    jr nz, jr_01c_7e8c

    ld h, l
    db $76
    ld h, l
    ld l, h
    jr nz, jr_01c_7e46

jr_01c_7e46:
    ld b, c
    ld h, h
    db $76
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    nop
    ld [hl], h

jr_01c_7e4f:
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_01c_7ec1

    ld h, l
    nop
    ld [hl], d
    ld l, c

jr_01c_7e58:
    ld l, [hl]
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e

jr_01c_7e5d:
    nop
    jr nz, jr_01c_7eaf

    ld [hl], d
    ld h, c
    ld h, e
    ld l, h
    ld h, l
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_01c_7e6e

jr_01c_7e6e:
    ld h, c
    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    nop
    ld d, e
    ld l, [hl]
    ld h, c
    ld l, e
    ld h, l
    add hl, bc
    nop
    nop
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_01c_7ee4

    nop
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01c_7e8a

jr_01c_7e8a:
    jr nz, jr_01c_7ef9

jr_01c_7e8c:
    ld l, a
    ld [hl], d

jr_01c_7e8e:
    ld h, l
    nop
    jr nz, jr_01c_7f06

    ld l, b
    ld h, l
    ld l, l
    nop
    jr nz, jr_01c_7f0b

    ld l, a
    ld l, l
    ld h, l
    nop
    ld [hl], e
    ld [hl], e
    ld h, l
    ld l, [hl]

jr_01c_7ea0:
    ld h, e
    ld h, l
    nop
    ld h, e

jr_01c_7ea4:
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    nop
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], l
    ld [hl], d

jr_01c_7eaf:
    ld l, [hl]
    nop
    jr nz, jr_01c_7efc

    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6100
    ld l, e
    ld h, l
    jr nz, jr_01c_7f26

    ld [hl], h
    nop
    jr nz, jr_01c_7f25

jr_01c_7ec1:
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    nop
    ld h, l
    ld l, [hl]
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    nop
    ld l, b
    ld l, c
    ld h, h
    ld h, h
    ld h, l
    ld l, [hl]
    nop
    ld l, a
    ld [hl], d
    ld [hl], h
    ld [hl], l
    ld l, [hl]
    ld h, l
    nop
    add hl, bc
    ld bc, $6f42
    ld l, l
    ld h, d
    nop
    add hl, bc
    nop

jr_01c_7ee4:
    ld hl, $180c
    ld bc, $7400
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01c_7ef5

jr_01c_7ef5:
    ld [hl], e
    jr nz, jr_01c_7f67

    ld h, [hl]

jr_01c_7ef9:
    ld bc, $5400

jr_01c_7efc:
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_7f01

jr_01c_7f01:
    jr nz, jr_01c_7f6b

    ld h, l
    ld [hl], d
    ld l, a

jr_01c_7f06:
    nop
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a

jr_01c_7f0b:
    jr nz, jr_01c_7f0d

jr_01c_7f0d:
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    nop
    jr nz, jr_01c_7f7c

    ld h, l
    ld [hl], h
    jr nz, jr_01c_7f19

jr_01c_7f19:
    jr nz, jr_01c_7f7c

    ld [hl], d
    ld h, l
    ld bc, $6600
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01c_7f25

jr_01c_7f25:
    ld b, [hl]

jr_01c_7f26:
    ld h, l
    ld [hl], d
    ld [hl], h
    ld l, c
    ld l, h
    ld h, l
    jr nz, jr_01c_7f81

    ld l, a
    ld l, c
    ld l, h
    nop
    ld c, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    dec l
    ld c, c
    ld [hl], h
    dec l
    ld b, c
    ld l, h
    ld l, h
    ld bc, $4d00
    ld h, c
    ld h, a
    ld l, c
    ld h, e
    jr nz, jr_01c_7f96

    ld l, a
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    ld h, c
    ld l, b
    inc l
    jr nz, jr_01c_7fb9

    ld h, c
    ld l, b
    inc l
    jr nz, jr_01c_7fbe

    ld h, c
    ld l, b
    nop
    ld h, l
    ld h, a
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, c
    ld [hl], d
    ld a, c
    nop
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_01c_7f67:
    ld h, l
    ld l, h
    ld h, [hl]
    nop

jr_01c_7f6b:
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld h, a
    ld [hl], h
    ld l, b
    nop
    ld [hl], b
    ld [hl], d
    ld h, l
    ld h, e
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e

jr_01c_7f7c:
    nop
    jr nz, jr_01c_7ff8

    ld l, a
    ld [hl], l

jr_01c_7f81:
    daa
    ld l, h
    ld l, h
    ld bc, $4200
    ld [hl], a
    ld h, l
    ld h, l
    dec l
    ld l, b
    ld h, l
    ld h, l
    nop
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    ld h, l

jr_01c_7f96:
    ld h, h
    nop
    add hl, bc
    ld bc, $6147
    ld [hl], e
    ld l, b
    ld h, c
    ld bc, $0900
    inc bc
    ld c, b
    ld l, a
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld bc, $5400
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01c_7fb0

jr_01c_7fb0:
    jr nz, @+$69

    ld l, a
    ld l, a
    ld h, h
    nop
    jr nz, @+$6a

    ld h, c

jr_01c_7fb9:
    ld [hl], e
    ld bc, $2000
    ld l, c

jr_01c_7fbe:
    ld [hl], h
    jr nz, @+$76

    ld l, a
    nop
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    nop
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    nop
    ld l, l
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    jr nz, @+$6f

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01c_7fdf

jr_01c_7fdf:
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    nop
    ld h, d
    ld h, l
    ld h, c
    ld [hl], e
    ld [hl], h
    ld [hl], e
    nop
    ld h, e
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    nop
    ld h, d
    ld h, l
    ld [hl], h
    ld [hl], h

jr_01c_7ff8:
    ld h, l
    ld [hl], d
    nop
    ld [hl], h
    ld [hl], d
    ld h, c
    db $76
    ld h, l

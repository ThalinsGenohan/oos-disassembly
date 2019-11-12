SECTION "rst00", ROM0
RST_00::
    add a
    pop hl
    add l
    ld l, a
    jr nc, jr_000_0007

    inc h
jr_000_0007:
    ld a, [hl+]

SECTION "rst08", ROM0
RST_08::
    ld h, [hl]
    ld l, a
    jp hl

SECTION "rst10", ROM0
RST_10::
    add l
    ld l, a
    ret nc

    inc h
    ret

SECTION "rst18", ROM0   ; JumpTable
    push bc
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    pop bc
    ret

SECTION "rst20", ROM0
RST_20::
    nop

SECTION "rst28", ROM0
RST_28::
    nop

SECTION "rst30", ROM0
RST_30::
    nop

SECTION "rst38", ROM0
RST_38::
    nop
    nop
    nop
    pop hl
    pop de
    pop bc
    pop af
    reti
    
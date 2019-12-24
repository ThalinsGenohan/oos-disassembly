Call_000_0068::
    add e
    ld e, a
    ret nc

    inc d
    ret

Call_000_006d::
    add c
    ld c, a
    ret nc

    inc b
    ret

MoreJumpTablesMaybe:: ; 000:????
    push hl
    add a
    ld l, a
    ld a, $00   ; xor a
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
    ld a, $00   ; xor a
    adc a
    ld h, a
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ret

Call_000_008a::
Jump_000_008a::
    ld_long a, $ff97
    push af
    ld a, e
    ld_long $ff97, a
    ld [rROMB0], a
    call Call_000_00a0
    pop af
    ld_long $ff97, a
    ld [rROMB0], a
    ret

Call_000_00a0::
    jp hl

SecretsKeyboard::   ; 000:00a1
    db "BDFGHJLM", "♠♥♦♣#"
    db "NQRSTWY!", "●▲■+-"
    db "bdfghjm",  "$*/:~"
    db "nqrstwy?", "%&(=)"
    db "23456789", "↑↓←→@"
    
UnknownHighHomeData::   ; 000:????
REPT 6
    db $00
ENDR
    db $ff
REPT 16
    db $00
ENDR
; 000:????
    db $01, $02, $04, $08, $10, $20, $40, $80

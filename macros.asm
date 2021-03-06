
farcallhle: MACRO
    ld hl, \1
    ld e, BANK(\1)
    call Call_000_008a
ENDM

ld_long: MACRO
    IF STRLWR("\1") == "a" 
        ; ld a, [$ff40]
        db $FA
        dw \2
    ELSE 
        IF STRLWR("\2") == "a" 
            ; ld [$ff40], a
            db $EA
            dw \1
        ENDC
    ENDC
ENDM

rombank: MACRO
    ld a, \1
    ld [rROMB0], a
ENDM

INCLUDE "macros/data.asm"
INCLUDE "macros/enum.asm"
INCLUDE "macros/rst.asm"

INCLUDE "macros/scripts/audio.asm"

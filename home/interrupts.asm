SECTION "vblank", ROM0
VBlankInterrupt::
    push af
    push bc
    push de
    push hl
    jp Jump_000_09d4

SECTION "lcd", ROM0
LCDCInterrupt::
    push af
    push hl
    jp Jump_000_0b22

SECTION "timer", ROM0
TimerOverflowInterrupt::
    ei
    push af
    push bc
    push de
    push hl
    jp Jump_000_0ce3

SECTION "serial", ROM0
SerialTransferCompleteInterrupt::
    push af
    jp Jump_000_0c19

SECTION "joypad", ROM0
JoypadTransitionInterrupt::
    reti

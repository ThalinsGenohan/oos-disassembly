INCLUDE "constants.asm"


SECTION "NULL", ROM0
NULL::

INCLUDE "home/rst.asm"
INCLUDE "home/interrupts.asm"

SECTION "High Home", ROM0
INCLUDE "home/highhome.asm"

SECTION "Header", ROM0

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

SECTION "Home", ROM0

INCLUDE "home/init.asm"

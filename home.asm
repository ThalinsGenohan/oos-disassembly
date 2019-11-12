INCLUDE "constants.asm"


SECTION "NULL", ROM0
NULL::

INCLUDE "home/rst.asm"
INCLUDE "home/interrupts.asm"

SECTION "High Home", ROM0
INCLUDE "home/highhome.asm"

INCLUDE "home/bank_000.asm"

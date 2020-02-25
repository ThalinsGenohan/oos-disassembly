dbw: MACRO
    db \1
    dw \2
ENDM

dn: MACRO
    REPT _NARG / 2
    db (\1) << 4 + (\2)
    shift
    shift
    ENDR
ENDM

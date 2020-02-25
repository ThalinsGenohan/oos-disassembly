; Enumerate variables

enum_start: MACRO
if _NARG >= 1
__enum__ = \1
else
__enum__ = 0
endc
if _NARG >= 2
__enumdir__ = \2
else
__enumdir__ = +1
endc
ENDM

enum: MACRO
\1 = __enum__
__enum__ = __enum__ + __enumdir__
ENDM

enum_set: MACRO
__enum__ = \1
ENDM

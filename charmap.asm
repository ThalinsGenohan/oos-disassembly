
	charmap "@",            $00
	charmap "\n",           $01
	charmap "<TEXT1>",      $02
	charmap "<TEXT2>",      $03     ;    inc bc
	charmap "<TEXT3>",      $04     ;    inc b
	charmap "<TEXT4>",      $05
	charmap "<06>",         $06
	charmap "<JNORTH>",     $06
	charmap "<DIALOGUE1>",  $07
	charmap "<DIALOGUE2>",  $08
	charmap "<09>",         $09
	charmap "<0a>",         $0a
	charmap "<TALKSOUND>",  $0b     ;    dec b
	charmap "<0c>",         $0c     ;    inc c
	charmap "<AUTOSCROLL>", $0d     ;    dec c

	charmap "<INCH>",   $0e
	charmap "°",        $0f
	charmap "<DEGREE>", $0f
	charmap "●",        $10
	charmap "<CIRCLE>", $10
    charmap "♣",        $11
    charmap "<CLUB>",   $11
	charmap "♦",        $12
	charmap "<DIAMOND>", $12
	charmap "♠",        $13
    charmap "<SPADE>",  $13
	charmap "<14>",     $14
	charmap "↑",        $15
	charmap "<UP>",     $15
	charmap "↓",        $16
	charmap "<DOWN>",   $16
	charmap "←",        $17
	charmap "<LEFT>",   $17
	charmap "→",        $18
	charmap "<RIGHT>",  $18
    charmap "×",        $19
    charmap "<TIMES>",  $19
    charmap "<MULTIPLY>", $19
    charmap "“",        $1a
    charmap "<JQUOTE1>", $1b
    charmap "<JQUOTE2>", $1c
    charmap "<JPERIOD1>", $1d
    charmap "<JCOMMA>", $1e
    charmap "<JPERIOD2>", $1e
    charmap " ",        $20     ;    jr nz,
    charmap "!",        $21     ;    ld hl,
    charmap "”",        $22     ;    ld [hli], a
    charmap "#",        $23
    charmap "$",        $24
    charmap "%",        $25
    charmap "&",        $26
    charmap "'",        $27
    charmap "(",        $28
    charmap ")",        $29
    charmap "*",        $2a
    charmap "+",        $2b
    charmap ",",        $2c     ;    inc l
    charmap "-",        $2d
    charmap ".",        $2e
    charmap "/",        $2f
    charmap "0",        $30
    charmap "1",        $31
    charmap "2",        $32
    charmap "3",        $33
    charmap "4",        $34
    charmap "5",        $35
    charmap "6",        $36
    charmap "7",        $37
    charmap "8",        $38
    charmap "9",        $39
    charmap ":",        $3a
    charmap ";",        $3b
    charmap "<",        $3c
    charmap "=",        $3d ;    dec a
    charmap ">",        $3e
    charmap "?",        $3f
    charmap "@",        $40 ;    ld b, b
    charmap "A",        $41 ;    ld b, c
    charmap "B",        $42 ;    ld b, d
    charmap "C",        $43 ;    ld b, e
    charmap "D",        $44 ;    ld b, h
    charmap "E",        $45 ;    ld b, l
    charmap "F",        $46 ;    ld b, [hl]
    charmap "G",        $47 ;    ld b, a
    charmap "H",        $48 ;    ld c, b
    charmap "I",        $49 ;    ld c, c
    charmap "J",        $4a ;    ld c, d
    charmap "K",        $4b ;    ld c, e
    charmap "L",        $4c ;    ld c, h
    charmap "M",        $4d ;    ld c, l
    charmap "N",        $4e ;    ld c, [hl]
    charmap "O",        $4f ;    ld c, a
    charmap "P",        $50 ;    ld d, b
    charmap "Q",        $51 ;    ld d, c
    charmap "R",        $52 ;    ld d, d
    charmap "S",        $53 ;    ld d, e
    charmap "T",        $54 ;    ld d, h
    charmap "U",        $55 ;    ld d, l
    charmap "V",        $56 ;    ld d, [hl]
    charmap "W",        $57 ;    ld d, a
    charmap "X",        $58 ;    ld e, b
    charmap "Y",        $59 ;    ld e, c
    charmap "Z",        $5a ;    ld e, d
    charmap "[",        $5b ;    ld e, e
    charmap "~",        $5c ;    ld e, h
    charmap "]",        $5d ;    ld e, l
    charmap "^",        $5e ;    ld e, [hl]
    charmap "•",        $5f ;    ld e, a
    charmap "`",        $60 ;    ld h, b
    charmap "a",        $61 ;    ld h, c
    charmap "b",        $62 ;    ld h, d
    charmap "c",        $63 ;    ld h, e
    charmap "d",        $64 ;    ld h, h
    charmap "e",        $65 ;    ld h, l
    charmap "f",        $66 ;    ld h, [hl]
    charmap "g",        $67 ;    ld h, a
    charmap "h",        $68 ;    ld l, b
    charmap "i",        $69 ;    ld l, c
    charmap "j",        $6a ;    ld l, d
    charmap "k",        $6b ;    ld l, e
    charmap "l",        $6c ;    ld l, h
    charmap "m",        $6d ;    ld l, l
    charmap "n",        $6e ;    ld l, [hl]
    charmap "o",        $6f ;    ld l, a
    charmap "p",        $70 ;    ld [hl], b
    charmap "q",        $71 ;    ld [hl], c
    charmap "r",        $72 ;    ld [hl], d
    charmap "s",        $73 ;    ld [hl], e
    charmap "t",        $74 ;    ld [hl], h
    charmap "u",        $75 ;    ld [hl], l
    charmap "v",        $76
    charmap "w",        $77
    charmap "x",        $78
    charmap "y",        $79
    charmap "z",        $7a
    charmap "\{",       $7b
    charmap "¥",        $7c
    charmap "<YEN>",    $7c
    charmap "\}",       $7d
    charmap "▲",        $7e
    charmap "<TRIANGLE>", $7e
    charmap "■",        $7f
    charmap "<SQUARE>", $7f
    charmap "À",        $80
    charmap "Â",        $81
    charmap "Ä",        $82
    charmap "Æ",        $83
    charmap "Ç",        $84
    charmap "È",        $85
    charmap "É",        $86
    charmap "Ê",        $87
    charmap "Ë",        $88
    charmap "Î",        $89
    charmap "Ï",        $8a
    charmap "Ñ",        $8b
    charmap "Ö",        $8c
    charmap "Œ",        $8d
    charmap "Ù",        $8e
    charmap "Û",        $8f
    charmap "Ü",        $90

    charmap "à",        $a0
    charmap "â",        $a1
    charmap "ä",        $a2
    charmap "æ",        $a3
    charmap "ç",        $a4
    charmap "è",        $a5
    charmap "é",        $a6
    charmap "ê",        $a7
    charmap "ë",        $a8
    charmap "î",        $a9
    charmap "ï",        $aa
    charmap "ñ",        $ab
    charmap "ö",        $ac
    charmap "œ",        $ad
    charmap "ù",        $ae
    charmap "û",        $af
    charmap "ü",        $b0

    charmap "<ABTN1>",  $b8
    charmap "<ABTN2>",  $b9
    charmap "<BBTN1>",  $ba
    charmap "<BBTN2>",  $bb

    charmap "♥",        $bd
    charmap "<HEART>",  $bd

    charmap "<f3>",     $f3

; Disassembly of "Legend of Zelda, The - Oracle of Seasons (U) [C][!].gbc"
; This file was created with mgbdis v1.3 - Game Boy ROM disassembler by Matt Currie.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01d", ROMX

Call_01d_4004:

    db "l@"
    db "Bwee! @"
    db ", too.@"
    db "the <09>\n@"
    db "lute<09>@@"
    db "take @"
    db "will @"
    db "Megaphone@"
    db ", ha, ha!@"
    db "dreamt of@"
    
    ld h, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    add hl, bc
    inc bc
    ld c, [hl]
    ld h, c
    ld a, c
    ld [hl], d
    ld [hl], l
    add hl, bc
    nop
    nop
    add hl, bc
    inc bc
    ld d, [hl]
    ld h, c
    ld [hl], e
    ld [hl], l
    add hl, bc
    nop
    jr nz, jr_01d_4066

jr_01d_4066:
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01d_406c

jr_01d_406c:
    ld h, l
    jr nz, jr_01d_40de

    ld h, [hl]
    ld bc, $2000
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_01d_4078

jr_01d_4078:
    jr nz, jr_01d_40f1

    ld h, c
    ld [hl], e
    jr nz, jr_01d_407e

jr_01d_407e:
    ld h, [hl]
    ld l, c

jr_01d_4080:
    ld l, [hl]
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    nop
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, h
    ld [hl], l
    ld h, e
    ld h, l
    nop
    ld b, a
    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, c
    ld l, h
    nop
    ld h, e
    ld h, c
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    nop
    ld l, a

jr_01d_409f:
    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld l, c

jr_01d_40a3:
    ld h, h
    ld h, l
    nop
    ld h, c
    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    nop
    ld l, e
    ld h, l
    ld a, c
    ld l, b
    ld l, a
    ld l, h
    ld h, l

jr_01d_40b5:
    nop
    ld e, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_40bc

jr_01d_40bc:
    ld [hl], a
    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    nop
    jr nz, jr_01d_413b

    ld h, c
    ld l, [hl]
    ld [hl], h
    nop
    ld d, a
    ld l, a
    ld l, a
    ld h, h
    ld h, l
    ld l, [hl]
    jr nz, @+$44

    ld l, c
    ld [hl], d
    ld h, h
    nop
    ld c, b
    ld h, l
    ld [hl], d
    ld l, a
    daa
    ld [hl], e
    jr nz, @+$45

    ld h, c
    db $76

jr_01d_40de:
    ld h, l
    nop
    ld b, a
    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    ld hl, $0001
    ld h, d
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, a

jr_01d_40f1:
    ld l, [hl]
    nop
    ld b, a
    ld l, a
    ld [hl], d
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_40fa

jr_01d_40fa:
    jr nz, jr_01d_4173

    ld h, l
    ld l, c
    ld [hl], d
    ld h, h
    nop
    ld h, l
    ld [hl], a
    ld h, l
    ld l, h
    ld h, l
    ld [hl], d
    nop
    ld d, a
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    ld h, l
    ld h, h
    jr nz, jr_01d_4187

    ld l, a
    ld bc, $6400
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, c
    ld [hl], h
    nop
    ld l, a
    jr nz, jr_01d_418d

    ld [hl], l
    ld h, e
    ld l, b
    nop
    ld h, d
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    ld l, [hl]
    nop
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01d_4131

jr_01d_4131:
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld h, l
    jr nz, @+$76

    ld l, a

jr_01d_413b:
    jr nz, jr_01d_413d

jr_01d_413d:
    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01d_4143

jr_01d_4143:
    jr nz, jr_01d_41ad

    ld l, a
    ld [hl], b
    ld h, l
    nop
    jr nz, jr_01d_416b

    inc c
    db $10
    ld c, a
    ld c, e
    nop
    jr nz, @+$6a

    ld h, c
    ld [hl], e
    jr nz, jr_01d_4156

jr_01d_4156:
    ld [hl], a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01d_415c

jr_01d_415c:
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01d_4162

jr_01d_4162:
    jr nz, jr_01d_41cf

    ld l, [hl]
    ld l, a
    ld [hl], a
    nop
    ld c, c
    jr nz, jr_01d_41cc

jr_01d_416b:
    ld l, l
    jr nz, jr_01d_416e

jr_01d_416e:
    jr nz, jr_01d_41e7

    ld h, l
    ld l, h
    ld l, h

jr_01d_4173:
    nop
    jr nz, jr_01d_41de

    ld h, l
    ld l, h
    ld [hl], b
    nop
    ld l, [hl]
    ld h, l
    db $76
    ld h, l
    ld [hl], d
    nop
    ld h, l
    ld hl, $180c
    ld bc, $4300

jr_01d_4187:
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h

jr_01d_418d:
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld hl, $0001
    ld l, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_01d_420c

    ld a, c
    jr nz, jr_01d_4203

    ld h, h
    db $76
    ld l, c
    ld h, e
    ld h, l
    ld hl, $0001
    ld [hl], h
    ld l, b
    ld h, l

jr_01d_41ad:
    jr nz, jr_01d_41af

jr_01d_41af:
    jr nz, jr_01d_421a

    ld l, [hl]
    ld [hl], h
    ld l, a
    nop
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01d_41bb

jr_01d_41bb:
    ld hl, $5420
    ld l, b
    ld h, l
    nop
    jr nz, jr_01d_4237

    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld l, h
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d

jr_01d_41cc:
    nop
    ld [hl], h
    ld [hl], d

jr_01d_41cf:
    ld h, c
    ld h, h
    ld h, l
    nop
    ld [hl], h
    jr nz, jr_01d_423f

    ld [hl], h
    jr nz, jr_01d_41d9

jr_01d_41d9:
    jr nz, jr_01d_4252

    ld l, b
    ld h, c
    ld [hl], h

jr_01d_41de:
    nop
    jr nz, jr_01d_4248

    ld [hl], d
    ld l, a
    ld [hl], a
    nop
    jr nz, @+$6b

jr_01d_41e7:
    ld [hl], h
    daa
    ld [hl], e
    nop
    jr nz, jr_01d_4264

    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    nop
    ld h, c
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    ld h, l
    daa
    ld l, h
    ld l, h

Call_01d_4201:
    jr nz, jr_01d_4203

jr_01d_4203:
    ld hl, $180c
    ld bc, $2e00
    inc c
    jr jr_01d_420d

jr_01d_420c:
    nop

jr_01d_420d:
    ld l, $2e
    ld l, $01
    nop
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01d_4217

jr_01d_4217:
    ld d, e
    ld h, e
    ld h, c

jr_01d_421a:
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_01d_4295

    ld h, l
    ld h, l
    ld h, h
    ld [hl], e
    ld bc, $2000
    jr nz, jr_01d_4237

    db $10
    ld d, d
    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_01d_423e

    db $10
    ld b, h
    ld l, a
    ld l, [hl]
    daa

jr_01d_4237:
    ld [hl], h
    nop
    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld h, c
    ld l, c

jr_01d_423e:
    ld [hl], e

jr_01d_423f:
    nop
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01d_4247

jr_01d_4247:
    ld h, e

jr_01d_4248:
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01d_424e

jr_01d_424e:
    ld c, c
    jr nz, jr_01d_42c4

    ld h, c

jr_01d_4252:
    ld [hl], a
    jr nz, jr_01d_4255

jr_01d_4255:
    inc l
    jr nz, jr_01d_42cc

    ld l, b
    ld h, l
    ld l, [hl]
    nop
    ld c, c
    daa
    ld l, l
    jr nz, jr_01d_42d4

    ld l, a
    nop
    ld [hl], e

jr_01d_4264:
    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01d_426a

jr_01d_426a:
    jr nz, jr_01d_42e0

    ld l, a
    jr nz, jr_01d_426f

jr_01d_426f:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01d_4274

jr_01d_4274:
    jr nz, jr_01d_42ea

    ld l, a
    ld bc, $2000
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    nop
    jr nz, jr_01d_42e4

    ld h, c
    ld l, [hl]
    ld bc, $2000
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    nop
    jr nz, jr_01d_42f9

    ld l, a
    ld l, a
    ld l, e
    nop
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h

jr_01d_4295:
    ld bc, $6400
    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    nop
    ld l, b
    ld l, $2e
    ld l, $20
    nop
    jr nz, @+$4b

    daa
    ld l, l
    jr nz, jr_01d_42a9

jr_01d_42a9:
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_01d_42af

jr_01d_42af:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    nop
    ld l, [hl]
    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_01d_42bb

jr_01d_42bb:
    jr nz, jr_01d_4326

    ld [hl], h
    ld hl, $0001
    jr nz, jr_01d_42cf

    db $10

jr_01d_42c4:
    ld c, [hl]
    ld l, a
    nop
    ld d, a
    ld h, l
    ld l, h
    ld h, e
    ld l, a

jr_01d_42cc:
    ld l, l
    ld h, l
    nop

jr_01d_42cf:
    ld [hl], b
    ld [hl], d
    ld l, a
    ld [hl], h
    ld h, l

jr_01d_42d4:
    ld h, e
    ld [hl], h
    nop
    ld h, e
    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    nop
    ld c, l

jr_01d_42e0:
    ld l, c
    ld [hl], h
    ld [hl], h
    ld h, l

jr_01d_42e4:
    ld l, [hl]
    ld [hl], e
    nop
    add hl, bc
    nop
    inc l

jr_01d_42ea:
    jr nz, jr_01d_434d

    ld l, [hl]
    ld bc, $4d00
    ld l, a
    ld l, a
    ld [hl], e
    ld l, b
    add hl, bc
    nop
    nop
    ld h, c
    ld l, [hl]

jr_01d_42f9:
    ld h, c
    ld l, [hl]
    ld h, c
    add hl, bc
    nop
    nop
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $5000
    ld l, b
    ld l, a
    ld l, [hl]
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], b
    ld l, b
    nop
    ld b, a
    ld h, c
    ld [hl], e
    ld l, b
    ld h, c
    jr nz, jr_01d_4369

    ld h, l
    ld h, l
    ld h, h
    nop
    jr nz, jr_01d_438d

    ld [hl], l
    ld l, c
    ld h, e
    ld l, e
    ld l, h
    ld a, c
    nop
    ld c, b
    ld l, a
    ld l, h

jr_01d_4326:
    ld l, a
    ld h, h
    ld [hl], d
    ld [hl], l
    ld l, l
    nop
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01d_43a1

    ld h, [hl]
    jr nz, jr_01d_4335

jr_01d_4335:
    jr nz, jr_01d_43ae

    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    nop
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    jr nz, @+$6b

    ld [hl], e
    ld bc, $0900
    inc bc
    ld b, d
    ld l, h
    ld h, c
    ld l, c

jr_01d_434d:
    ld l, [hl]
    ld l, a
    add hl, bc
    nop
    nop
    add hl, bc
    ld bc, $6562
    ld l, h
    ld l, h
    add hl, bc
    nop
    nop
    jr nz, jr_01d_43cc

    ld h, [hl]
    ld bc, $7900
    ld l, a
    ld [hl], l
    jr nz, jr_01d_4365

jr_01d_4365:
    ld l, h
    ld [hl], l
    ld h, e
    ld l, e

jr_01d_4369:
    ld a, c
    nop
    ld h, l
    ld h, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    nop
    ld [hl], d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    nop
    ld c, b
    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], h
    nop
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_4383

jr_01d_4383:
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    nop
    ld [hl], h
    ld l, b
    ld [hl], d
    ld h, l

jr_01d_438d:
    ld h, l
    nop
    ld d, d
    ld l, c
    ld h, e
    ld l, e
    ld a, c
    nop
    jr nz, jr_01d_4403

    ld l, a
    ld l, [hl]
    ld h, a
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    nop

jr_01d_43a1:
    ld l, l
    ld h, c
    ld l, e
    ld h, l
    ld bc, $6700
    ld l, c
    db $76
    ld h, l
    ld bc, $6300

jr_01d_43ae:
    ld l, b
    ld l, c
    ld l, h
    ld h, h
    nop
    jr nz, jr_01d_4416

    ld [hl], a
    ld h, c
    ld a, c
    nop
    ld [hl], b
    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    nop
    add hl, bc
    nop
    inc c
    jr jr_01d_43c5

    nop

jr_01d_43c5:
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01d_43ca

jr_01d_43ca:
    add hl, bc
    nop

jr_01d_43cc:
    ld hl, $0001
    jr nz, jr_01d_443a

    ld [hl], e
    ld bc, $2000
    ld l, c
    ld l, [hl]
    ld bc, $3f00
    inc c
    jr jr_01d_43de

    nop

jr_01d_43de:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01d_43e3

jr_01d_43e3:
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_43e8

jr_01d_43e8:
    jr nz, jr_01d_4458

    ld l, a
    ld [hl], h
    jr nz, jr_01d_43ee

jr_01d_43ee:
    jr nz, jr_01d_445d

    ld h, c
    ld l, [hl]
    ld a, c
    nop
    jr nz, @+$70

    ld h, l
    ld h, c
    ld [hl], d
    nop
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $4900
    daa
    db $76

jr_01d_4403:
    ld h, l
    jr nz, jr_01d_4406

jr_01d_4406:
    ld h, l
    ld [hl], h
    jr nz, jr_01d_4477

    ld h, l
    nop
    ld h, d
    ld [hl], d
    ld h, l
    ld h, c
    ld l, e
    nop
    ld [hl], h
    ld h, l
    ld h, c
    ld h, e

jr_01d_4416:
    ld l, b
    nop
    jr nz, jr_01d_4463

    daa
    ld l, l
    ld bc, $7100
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], h
    nop
    jr nz, jr_01d_449a

    ld [hl], d
    ld [hl], l
    ld h, l
    nop
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    ld bc, $2700
    ld [hl], e
    add hl, bc
    nop
    ld bc, $2000
    ld h, [hl]
    ld [hl], d
    ld [hl], l

jr_01d_443a:
    ld l, c
    ld [hl], h
    nop
    ld l, a
    ld l, h
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    nop
    ld h, c
    db $76
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld [hl], e
    ld h, c
    ld h, e
    ld [hl], d
    ld h, l
    ld h, h
    nop
    ld h, l
    ld h, h
    jr nz, jr_01d_44a5

    ld [hl], d
    ld h, l

jr_01d_4458:
    nop
    ld c, b
    ld h, l
    ld [hl], d
    ld h, l

jr_01d_445d:
    daa
    ld [hl], e
    nop
    ld c, h
    ld h, l
    ld [hl], h

jr_01d_4463:
    jr nz, jr_01d_44da

    ld [hl], e
    nop
    ld l, l
    ld h, c
    ld a, c
    jr nz, jr_01d_44ce

    ld h, l
    nop
    ld h, [hl]
    ld l, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    nop
    ld [hl], e
    ld l, b

jr_01d_4477:
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    nop
    ld [hl], b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    nop
    ld d, e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], a
    nop
    jr nz, jr_01d_44d5

    daa
    db $76
    ld h, l
    ld bc, $2000
    inc c
    db $10
    ld e, c
    ld h, l
    ld [hl], e
    nop
    jr nz, jr_01d_4508

jr_01d_449a:
    ld l, a
    ld [hl], a
    nop
    jr nz, jr_01d_4512

    ld h, l
    ld h, l
    nop
    ld h, c
    ld l, h
    ld l, h

jr_01d_44a5:
    jr nz, jr_01d_44a7

jr_01d_44a7:
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, h
    nop
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    nop
    ld d, e
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    nop
    ld c, h
    ld h, c
    db $76
    ld h, c
    jr nz, @+$55

    ld l, a
    ld [hl], l
    ld [hl], b
    nop
    ld c, l
    ld h, c
    ld l, e
    ld [hl], l
    jr nz, jr_01d_451f

    ld [hl], d
    ld h, l
    ld h, l

jr_01d_44ce:
    nop
    ld l, h
    ld h, l
    ld h, [hl]
    ld [hl], h
    jr nz, jr_01d_453d

jr_01d_44d5:
    ld h, c
    ld l, [hl]
    ld h, h
    nop
    ld h, d

jr_01d_44da:
    ld h, l
    ld h, c
    ld [hl], l
    ld [hl], h
    ld l, c
    ld h, [hl]
    ld [hl], l
    ld l, h
    nop
    ld b, a
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01d_452b

    ld l, a
    ld a, c
    ld bc, $6e00
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, a
    ld l, a
    ld h, h
    nop
    ld d, e
    ld [hl], l
    ld h, d
    ld [hl], e
    ld h, e
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    daa
    ld h, l

jr_01d_4508:
    ld h, l
    ld hl, $2000
    ld c, d
    ld h, l
    ld [hl], a
    ld h, l
    ld l, h
    add hl, bc

jr_01d_4512:
    nop
    ld hl, $2000
    ld l, c
    ld l, [hl]
    jr nz, jr_01d_451a

jr_01d_451a:
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    nop

jr_01d_451f:
    jr nz, jr_01d_4588

    ld l, a
    ld [hl], h
    jr nz, jr_01d_4525

jr_01d_4525:
    ld [hl], e
    ld l, h
    ld h, l
    ld h, l
    ld [hl], b
    nop

jr_01d_452b:
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    nop
    jr nz, jr_01d_45a2

    ld [hl], b
    ld h, l
    ld l, [hl]
    nop
    jr nz, jr_01d_45ad

    ld l, b
    ld h, l
    ld a, c
    nop

jr_01d_453d:
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    ld bc, $6d00
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01d_4549

jr_01d_4549:
    ld h, e
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld l, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_01d_4555

jr_01d_4555:
    ld c, b
    ld h, l
    ld a, c
    ld hl, $0020
    jr nz, jr_01d_45c0

    ld l, a
    ld l, h
    ld h, h
    nop
    ld h, a
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01d_4567

jr_01d_4567:
    ld h, [hl]
    ld h, c
    db $76
    ld l, a
    ld [hl], d
    nop
    ld h, c
    ld l, h
    ld l, h
    ld bc, $6100
    ld [hl], d
    ld h, l
    jr nz, jr_01d_4577

jr_01d_4577:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    nop
    jr nz, jr_01d_45ed

    ld l, [hl]
    ld h, l
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    nop
    add hl, bc
    nop

jr_01d_4588:
    ld l, $01
    nop
    ld b, l
    ld l, [hl]
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, l
    jr nz, jr_01d_45da

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    nop
    ld b, c
    ld a, c
    ld h, l
    inc l
    jr nz, jr_01d_4600

    ld a, c
    ld h, l
    inc l

jr_01d_45a2:
    jr nz, jr_01d_4617

    ld l, c
    ld [hl], d
    nop
    ld l, $2e
    ld l, $2e
    ld l, $2e

jr_01d_45ad:
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $00
    jr nz, jr_01d_4620

    ld [hl], h
    jr nz, jr_01d_45ba

jr_01d_45ba:
    jr nz, jr_01d_4635

    ld l, a
    ld [hl], l
    nop
    ld h, l

jr_01d_45c0:
    db $76
    ld h, l
    ld [hl], d
    nop
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01d_45c9

jr_01d_45c9:
    jr nz, jr_01d_4638

    ld a, c
    ld bc, $6500
    ld h, c
    ld [hl], e
    ld [hl], h
    nop
    ld c, h
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_4624

    ld l, a
    ld l, [hl]

jr_01d_45da:
    nop
    ld a, c
    ld h, l
    ld h, a
    ld l, h
    ld h, c
    ld [hl], e
    ld [hl], e
    nop
    ld h, h
    ld [hl], d
    ld l, a
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, h
    nop
    ld [hl], e
    ld [hl], b

jr_01d_45ed:
    ld l, c
    ld [hl], d
    ld l, c
    ld [hl], h
    ld [hl], e
    nop
    jr nz, jr_01d_4656

    ld l, [hl]
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    nop
    ld [hl], l
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, l

jr_01d_4600:
    ld [hl], e
    ld [hl], e
    nop
    ld h, e
    ld [hl], h
    ld [hl], l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    nop
    jr nz, jr_01d_466e

    ld [hl], e
    ld l, e
    jr nz, @+$6f

    ld h, l
    nop
    ld l, l
    ld a, c
    jr nz, jr_01d_468b

jr_01d_4617:
    ld h, l
    ld [hl], e
    ld [hl], h
    nop
    ld l, l
    ld h, c
    ld [hl], h
    ld h, l
    ld a, c

jr_01d_4620:
    ld [hl], e
    ld hl, $2000

jr_01d_4624:
    ld l, a
    ld [hl], l
    ld [hl], h
    nop
    ld c, c
    daa
    ld l, l
    jr nz, jr_01d_462d

jr_01d_462d:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01d_4632

jr_01d_4632:
    ld [hl], h
    ld l, c
    ld l, a

jr_01d_4635:
    ld l, [hl]
    nop
    ld h, l

jr_01d_4638:
    db $76
    ld h, l
    ld l, [hl]
    nop
    ld d, d
    ld [hl], l
    ld [hl], b
    ld h, l
    ld h, l
    nop
    ld h, [hl]
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    nop
    ld d, e
    ld [hl], a
    ld l, a
    ld [hl], d
    ld h, h
    nop
    ld [hl], h
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    nop
    ld l, h
    ld l, a

jr_01d_4656:
    db $76
    ld h, l
    ld [hl], e
    nop
    jr nz, @+$75

    ld [hl], a
    ld l, c
    ld l, l
    nop
    ld b, d
    ld l, a
    ld l, l
    ld h, d
    ld [hl], e
    nop
    ld l, b
    ld [hl], l
    ld l, [hl]
    ld l, e
    ld [hl], e
    nop
    ld h, c
    ld h, d

jr_01d_466e:
    ld l, a
    ld [hl], l
    ld [hl], h
    nop
    jr nz, jr_01d_46da

    ld l, c
    ld l, [hl]
    ld h, l
    nop
    jr nz, jr_01d_46f1

    ld h, c
    ld [hl], e
    ld bc, $7300
    ld l, b
    ld h, c
    ld [hl], b
    ld h, l
    nop
    ld l, a
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    nop
    inc l

jr_01d_468b:
    jr nz, jr_01d_4700

    ld l, a
    jr nz, jr_01d_4690

jr_01d_4690:
    ld h, l
    ld h, l
    ld h, h
    add hl, bc
    nop
    nop
    add hl, bc
    ld bc, $080c
    jr nz, jr_01d_469c

jr_01d_469c:
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    add hl, bc
    nop
    ccf
    ld bc, $4700
    ld l, l
    ld [hl], b
    ld l, b
    inc l
    jr nz, jr_01d_4714

    ld l, l
    ld [hl], b
    ld l, b
    inc l
    ld bc, $2000
    inc c
    db $10
    ld c, l
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, jr_01d_472b

    ld l, a
    ld [hl], h
    nop
    ld h, c
    ld h, e
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    nop
    ld h, c
    ld h, a
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    nop
    jr nz, jr_01d_4744

    ld l, b
    ld h, c
    ld l, [hl]
    ld bc, $7500
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld h, e

jr_01d_46da:
    ld h, l
    nop
    ld h, [hl]
    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    nop
    ld c, c
    jr nz, jr_01d_474e

    ld h, c
    ld h, h
    jr nz, jr_01d_46ea

jr_01d_46ea:
    ld [hl], e
    ld l, b
    ld h, c
    ld h, h
    ld l, a
    ld [hl], a
    nop

jr_01d_46f1:
    ld [hl], e
    ld a, c
    ld l, l
    ld h, d
    ld l, a
    ld l, h
    nop
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], d
    nop
    ld c, b

jr_01d_4700:
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $0020
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    jr nz, jr_01d_470d

jr_01d_470d:
    jr nz, @+$65

    ld l, b
    ld h, c
    ld l, a
    ld [hl], e
    nop

jr_01d_4714:
    jr nz, jr_01d_477f

    ld [hl], e
    jr nz, jr_01d_4719

jr_01d_4719:
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    nop
    ld [hl], e
    ld h, c
    db $76
    ld h, l
    nop
    jr nz, jr_01d_478e

    ld [hl], h
    db $01
    db $00
    db "our\n"

jr_01d_472b:
    db $00
    db $6d
    ld h, l
    ld h, l
    ld [hl], h
    nop
    ld l, a
    db $76
    ld h, l
    ld [hl], d
    nop
    ld [hl], h
    ld h, l
    ld l, h
    ld l, h
    nop
    ld [hl], e
    ld h, c
    ld [hl], b
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e

jr_01d_4744:
    nop
    ld b, [hl]
    ld l, h
    ld l, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld [hl], d
    ld [hl], e
    nop

jr_01d_474e:
    ld b, e
    ld [hl], l
    ld h, e
    ld h, e
    ld l, a
    ld h, h
    ld h, l
    ld a, b
    nop
    daa
    ld [hl], e
    jr nz, jr_01d_47a3

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    nop
    ld h, a
    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h
    ld l, c
    ld h, c
    ld l, [hl]
    nop
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_01d_476e

jr_01d_476e:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01d_4773

jr_01d_4773:
    ld l, b
    ld l, a
    ld l, h
    ld h, h
    nop
    jr nz, jr_01d_47d3

    ld l, a
    ld [hl], l
    nop
    jr nz, jr_01d_47f4

jr_01d_477f:
    ld [hl], b
    ld bc, $6200
    ld [hl], l
    ld [hl], h
    jr nz, jr_01d_4787

jr_01d_4787:
    ld [hl], e
    ld l, b
    ld l, c
    ld [hl], b
    nop
    add hl, bc
    nop

jr_01d_478e:
    inc l
    ld bc, $6800
    ld l, a
    ld l, a
    ld [hl], h
    ld [hl], e
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01d_479d

jr_01d_479d:
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    nop

jr_01d_47a3:
    ld b, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    nop
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    nop
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld bc, $2000
    ld h, a
    ld h, l
    ld [hl], h
    ld bc, $6500
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    nop
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    nop
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, h
    ld bc, $2000
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    nop

jr_01d_47d3:
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, h
    ld a, c
    nop
    ld [hl], d
    ld [hl], l
    ld l, c
    ld l, [hl]
    ld [hl], e
    nop
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_47eb

jr_01d_47eb:
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    nop
    ld [hl], a
    ld h, c
    ld [hl], h

jr_01d_47f4:
    ld h, l
    ld [hl], d
    nop
    ld d, e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    nop
    jr nz, jr_01d_486b

    ld l, a
    db $76
    ld h, l
    nop
    ld [hl], a
    ld l, a
    ld l, a
    ld h, h
    ld [hl], e
    nop
    ld [hl], h
    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], e
    nop
    ld [hl], b
    ld h, l
    ld h, c
    ld h, e
    ld h, l
    nop
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    nop
    ld [hl], d
    ld a, c
    jr nz, jr_01d_4888

    ld [hl], h
    nop
    ld h, e
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    nop
    ld l, a
    ld [hl], d
    ld [hl], h
    ld l, b
    nop
    ld h, l
    ld h, l
    ld h, h
    ld [hl], e
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_01d_4836

jr_01d_4836:
    ld h, [hl]
    ld h, l
    ld h, l
    ld l, h
    nop
    jr nz, jr_01d_48ac

    ld l, [hl]
    ld bc, $7400
    ld h, c
    ld l, e
    ld h, l
    nop
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld [hl], h
    ld l, a
    ld [hl], a
    ld l, [hl]
    nop
    ld h, l
    jr nz, jr_01d_48b3

    ld bc, $6b00
    ld l, [hl]
    ld l, a
    ld [hl], a
    nop
    ld [hl], a
    ld h, c
    ld l, c
    ld [hl], h
    nop
    ld h, l
    ld h, c
    ld h, e
    ld l, b
    nop
    ld b, h
    ld l, c
    ld l, l
    ld l, c
    ld [hl], h
    ld [hl], d
    ld l, c
    daa

jr_01d_486b:
    ld [hl], e
    jr nz, jr_01d_48b4

    nop
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    nop
    ld h, [hl]
    ld h, c
    ld l, h
    ld l, h
    nop
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    nop
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01d_4888

jr_01d_4888:
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    nop
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01d_4892

jr_01d_4892:
    daa
    ld [hl], d
    ld h, l
    ld bc, $2000
    ld h, d
    ld h, l
    ld bc, $2000
    ld [hl], a
    ld h, l
    jr nz, jr_01d_48a1

jr_01d_48a1:
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $7400
    ld l, b
    ld h, l
    ld bc, $6500

jr_01d_48ac:
    ld l, $2e
    ld l, $00
    ld [hl], e
    ld [hl], h
    ld h, l

jr_01d_48b3:
    ld [hl], d

jr_01d_48b4:
    nop
    jr nz, jr_01d_492c

    ld [hl], e
    ld h, l
    nop
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    nop
    ld l, b
    ld h, l
    ld h, c
    ld [hl], d
    nop
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_01d_48c9

jr_01d_48c9:
    ld h, c
    ld a, c
    inc l
    jr nz, jr_01d_48ce

jr_01d_48ce:
    jr nz, jr_01d_4931

    ld l, h
    ld l, h
    nop
    jr nz, jr_01d_4936

    ld l, [hl]
    ld a, c
    nop
    jr nz, @+$22

    inc c
    stop
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    nop
    jr nz, jr_01d_4953

    ld l, [hl]
    jr nz, jr_01d_48e7

jr_01d_48e7:
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    nop
    ld l, a
    ld l, [hl]
    ld l, h
    ld a, c
    nop
    ld b, e
    ld l, a
    ld l, l
    ld h, l
    nop
    ld l, c
    ld [hl], h
    ccf
    ld bc, $6500
    jr nz, jr_01d_496b

    ld h, l
    nop
    jr nz, jr_01d_496f

    ld a, c
    jr nz, jr_01d_4905

jr_01d_4905:
    ld l, b
    ld h, l
    ld l, h
    ld [hl], b
    nop
    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]
    ld bc, $7500
    ld l, l
    ld l, l
    ld h, l
    ld [hl], d
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    nop
    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    nop
    ld [hl], a
    ld l, b
    ld l, c
    ld l, h
    ld h, l
    nop
    jr nz, jr_01d_499c

    ld h, l
    ld h, c

jr_01d_492c:
    ld l, h
    nop
    ld [hl], b
    ld [hl], d
    ld l, c

jr_01d_4931:
    ld a, d
    ld h, l
    nop
    ld [hl], d
    ld h, c

jr_01d_4936:
    ld h, e
    ld [hl], h
    ld l, c
    nop
    ld [hl], h
    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_01d_4940

jr_01d_4940:
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, a
    ld h, l
    nop
    ld l, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01d_4952

jr_01d_4952:
    ld b, [hl]

jr_01d_4953:
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, [hl]
    nop
    ld l, b
    ld [hl], l
    ld h, a
    ld h, l
    jr nz, jr_01d_4964

jr_01d_4964:
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], b
    ld a, c
    nop
    ld l, h

jr_01d_496b:
    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]

jr_01d_496f:
    nop
    ld l, c
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], e
    nop
    ld l, a
    ld l, h
    ld l, c
    ld [hl], e
    ld l, b
    nop
    ld [hl], b
    ld [hl], l
    ld [hl], b
    ld l, c
    ld l, h
    nop
    daa
    ld [hl], e
    add hl, bc
    nop
    jr nz, jr_01d_4988

jr_01d_4988:
    ld d, h
    ld h, c
    ld [hl], d
    ld l, l
    jr nz, jr_01d_49e0

    ld [hl], l
    ld l, c
    ld l, [hl]
    ld [hl], e
    nop
    ld c, b
    ld a, c
    ld [hl], l
    ld l, b
    inc l
    jr nz, jr_01d_4a02

    ld a, c
    ld [hl], l

jr_01d_499c:
    ld l, b
    nop
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_01d_4a17

    ld l, a
    ld [hl], l
    ld [hl], h
    ld l, b
    nop
    ld [hl], e
    ld l, a
    ld h, [hl]
    ld [hl], h
    jr nz, jr_01d_4a14

    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, b
    nop
    ld d, a
    ld h, c
    ld [hl], d
    ld l, l
    ld [hl], h
    ld l, b
    nop
    ld d, e
    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    nop
    ld d, a
    ld l, a
    ld l, a
    ld h, h
    ld h, l
    ld l, [hl]
    nop
    ld h, l
    ld l, l
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    nop
    ld c, l
    ld l, a
    ld h, d
    ld l, h
    ld l, c
    ld l, [hl]
    nop
    ld d, e
    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld l, [hl]
    nop
    ld h, h
    ld h, c

jr_01d_49e0:
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    nop
    ld c, c
    jr nz, jr_01d_4a53

    ld l, [hl]
    ld h, l
    ld [hl], a
    nop
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_01d_49f3

jr_01d_49f3:
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    nop
    jr nz, @+$4b

    jr nz, jr_01d_4a5f

    ld [hl], e
    ld l, e
    nop
    ld d, e

jr_01d_4a02:
    ld h, l
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    nop
    ld h, h
    ld h, c
    ld l, l
    ld h, c
    ld h, a
    ld h, l
    nop
    add hl, bc
    inc bc
    ld b, h
    ld h, l
    ld l, e

jr_01d_4a14:
    ld [hl], l
    nop
    ld l, [hl]

jr_01d_4a17:
    ld l, c
    ld h, e
    ld h, l
    nop
    ld h, a
    ld [hl], d
    ld l, a
    ld [hl], a
    nop
    ld [hl], e
    jr nz, jr_01d_4a84

    jr nz, jr_01d_4a25

jr_01d_4a25:
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld h, a
    ld l, a
    ld l, a
    ld h, h
    nop
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    nop
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld l, h
    ld h, l
    ld h, [hl]
    ld [hl], h
    nop
    ld [hl], a
    ld l, a
    ld [hl], d
    ld l, e
    nop
    ld hl, $2121
    ld bc, $7200
    ld h, l
    ld [hl], e
    ld [hl], h
    nop
    jr nz, jr_01d_4ac2

    ld l, a
    ld bc, $4f00

jr_01d_4a53:
    ld l, b
    ld hl, $0020
    add hl, bc
    nop
    ld hl, $0020
    ld h, l
    ld l, [hl]
    ld h, l

jr_01d_4a5f:
    ld l, l
    ld l, c
    ld h, l
    ld [hl], e
    nop
    ld h, c
    ld h, a
    ld l, [hl]
    ld h, l
    ld [hl], h
    ld l, c
    ld h, e
    nop
    ld l, [hl]
    ld h, c
    ld [hl], d
    ld l, h
    ld h, l
    ld h, h
    jr nz, jr_01d_4a74

jr_01d_4a74:
    ld b, d
    ld l, h
    ld l, a
    ld [hl], e
    ld [hl], e
    ld l, a
    ld l, l
    nop
    ld [hl], l
    ld l, [hl]
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld l, b
    nop

jr_01d_4a84:
    ld c, c
    jr nz, jr_01d_4aee

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    nop
    ld h, l
    ld a, b
    ld [hl], b
    ld l, h
    ld h, c
    ld l, c
    ld l, [hl]
    nop
    ld h, e
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    nop
    ld [hl], e
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], e
    nop
    inc l
    jr nz, jr_01d_4b0f

    ld [hl], l
    ld l, b
    ccf
    ld bc, $2000
    ld l, c
    ld [hl], e
    ld a, [hl-]
    inc c
    jr jr_01d_4ab4

    nop

jr_01d_4ab4:
    add hl, bc
    ld bc, $656b
    ld a, c
    add hl, bc
    nop
    nop
    ld c, b
    ld l, a
    ld [hl], a
    jr nz, jr_01d_4ac1

jr_01d_4ac1:
    ld [hl], h

jr_01d_4ac2:
    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    nop
    ld l, h
    ld l, c
    ld h, [hl]
    ld h, l
    nop
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    nop
    ld h, e
    ld l, b
    ld h, l
    ld [hl], e
    nop
    ld l, a
    ld [hl], b
    ld h, l
    ld l, [hl]
    nop
    ld [hl], e
    ld [hl], h
    ld l, a
    ld [hl], b
    nop
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    nop
    jr nz, jr_01d_4b54

    ld [hl], h
    ld l, $00

jr_01d_4aee:
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    nop
    jr nz, jr_01d_4b5e

    ld h, [hl]
    ld bc, $6b00
    ld h, l
    ld h, l
    ld [hl], b
    nop
    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], d
    nop
    ld l, b
    ld h, c
    ld [hl], d
    ld h, h
    nop
    ld l, l
    ld h, l
    ld hl, $0001
    ld l, [hl]
    ld l, a
    ld [hl], h

jr_01d_4b0f:
    ld bc, $6c00
    ld l, a
    ld [hl], e
    ld [hl], h
    nop
    ld d, e
    ld h, l
    ld h, l
    ld h, h
    nop
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, jr_01d_4b20

jr_01d_4b20:
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    nop
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    nop
    ld l, l
    ld h, c
    ld l, e
    ld h, l
    nop
    ld d, a
    ld l, c
    ld [hl], h
    ld l, b
    nop
    ld a, c
    ld l, a
    ld [hl], l
    ld l, $00
    ld h, c
    ld l, h
    ld l, a
    ld l, [hl]
    nop
    ld l, $2e
    ld l, $20
    nop
    ld l, l
    ld h, l
    ld h, c
    ld l, [hl]
    nop
    ld b, c
    ld h, a
    ld h, l
    ld [hl], e
    nop
    jr nz, jr_01d_4bbc

    ld h, l
    ld bc, $6800
    ld h, l

jr_01d_4b54:
    ld [hl], d
    ld l, a
    nop
    ld c, a
    ld l, b
    inc l
    jr nz, jr_01d_4b5c

jr_01d_4b5c:
    ld h, d
    ld [hl], l

jr_01d_4b5e:
    ld [hl], d
    ld l, [hl]
    nop
    jr nz, jr_01d_4bcb

    ld l, c
    ld l, l
    nop
    ld [hl], a
    ld h, l
    ld [hl], e
    ld [hl], h
    nop
    jr nz, jr_01d_4bdb

    ld h, l
    ld [hl], a
    nop
    ld l, l
    ld l, a
    db $76
    ld h, l
    nop
    daa
    ld [hl], e
    jr nz, jr_01d_4bc9

    ld l, h
    ld h, c
    ld [hl], c
    ld [hl], l
    ld h, l
    nop
    ld c, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_01d_4bd1

    ld l, c
    ld l, e
    ld h, l
    nop
    ld l, b
    jr nz, jr_01d_4bf4

    ld l, a
    ld l, b
    jr nz, jr_01d_4bf8

    ld l, a
    ld l, b
    nop
    jr nz, jr_01d_4c05

    ld [hl], d
    ld l, a
    ld l, l
    ld l, c
    ld [hl], e
    ld h, l
    ld h, h
    nop
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld l, l
    ld l, [hl]
    nop
    ld l, b
    ld l, a
    db $76
    ld h, l
    ld l, h
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, e
    ld h, l
    nop
    ld b, d
    ld l, h
    ld [hl], l
    ld h, l
    jr nz, jr_01d_4bb5

jr_01d_4bb5:
    ld b, a
    ld l, a
    ld [hl], d
    ld l, a
    ld l, [hl]
    nop
    ld [hl], a

jr_01d_4bbc:
    ld h, l
    ld l, c
    ld [hl], d
    ld h, h
    nop
    ld e, d
    ld h, l
    ld l, h
    ld h, h
    ld h, c
    nop
    ld [hl], e
    ld [hl], a

jr_01d_4bc9:
    ld l, a
    ld [hl], d

jr_01d_4bcb:
    ld h, h
    nop
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e

jr_01d_4bd1:
    ld h, l
    nop
    jr nz, jr_01d_4c4c

    ld l, b
    ld l, a
    ld bc, $6c00
    ld h, l

jr_01d_4bdb:
    ld h, c
    db $76
    ld h, l
    nop
    ld l, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    nop
    ld h, [hl]
    ld l, h
    ld l, a
    ld h, c
    ld [hl], h
    nop
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_01d_4bf1

jr_01d_4bf1:
    ld c, d
    ld [hl], l
    ld [hl], e

jr_01d_4bf4:
    ld [hl], h
    jr nz, jr_01d_4bf7

jr_01d_4bf7:
    ld c, b

jr_01d_4bf8:
    ld [hl], l
    ld l, b
    ccf
    jr nz, jr_01d_4bfd

jr_01d_4bfd:
    ld l, b
    ld h, l
    daa
    ld [hl], e
    ld bc, $6300
    ld l, b

jr_01d_4c05:
    ld h, l
    ld h, e
    ld l, e
    nop
    jr nz, @+$69

    ld l, c
    ld h, [hl]
    ld [hl], h
    nop
    jr nz, jr_01d_4c80

    ld l, [hl]
    ld h, e
    ld h, l
    nop
    jr nz, jr_01d_4c83

    ld h, c
    ld [hl], h
    ld h, l
    nop
    ld [hl], e
    ld l, e
    ld l, c
    ld l, h
    ld l, h
    nop
    jr nz, jr_01d_4c8c

    ld [hl], h
    inc l
    ld bc, $6100
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    nop
    jr nz, jr_01d_4ca2

    ld l, b
    ld l, a
    nop
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld l, a
    nop
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01d_4c46

jr_01d_4c46:
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    nop
    ld h, e

jr_01d_4c4c:
    ld l, a
    ld l, l
    ld h, l
    nop
    ld [hl], d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    nop
    ld h, a
    ld l, c
    db $76
    ld h, l
    nop
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    nop
    ld h, d
    ld h, l
    ld [hl], e
    ld [hl], h
    nop
    ld hl, $5720
    ld h, l
    nop
    jr nz, @+$66

    ld l, c
    ld h, h
    nop
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $00
    jr nz, jr_01d_4ce8

    ld l, b
    ld h, l
    nop
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    nop
    ld a, c
    ld l, a
    ld [hl], l

jr_01d_4c80:
    inc l
    nop
    ld d, a

jr_01d_4c83:
    ld l, b
    ld h, l
    ld l, [hl]
    nop
    ld c, c
    jr nz, jr_01d_4ceb

    ld l, l
    nop

jr_01d_4c8c:
    ld l, b
    ld l, a
    ld l, h
    ld h, l
    nop
    ld h, h
    ld l, a
    ld h, l
    ld [hl], e
    nop
    ld l, h
    ld l, c
    db $76
    ld h, l
    nop
    ld c, h
    ld l, c
    ld [hl], e
    ld [hl], h
    nop
    ld [hl], e
    ld l, a

jr_01d_4ca2:
    ld l, [hl]
    ld h, a
    nop
    ld l, $2e
    ld l, $00
    inc c
    jr jr_01d_4cad

    nop

jr_01d_4cad:
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld bc, $7300
    ld h, l
    ld h, l
    ld h, h
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld [hl], e
    ld l, c
    ld h, a
    ld l, [hl]
    nop
    ld h, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    nop
    ld l, a
    ld l, [hl]
    ld h, l
    ld bc, $2100
    jr nz, jr_01d_4d21

    ld l, a
    nop
    ld h, e
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_4cda

jr_01d_4cda:
    ld [hl], a
    ld h, c
    ld l, [hl]
    ld [hl], h
    nop
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6c00
    ld l, a
    ld l, a
    ld l, e

jr_01d_4ce8:
    nop
    db $76
    ld h, l

jr_01d_4ceb:
    ld [hl], d
    ld a, c
    nop
    ld h, a
    ld h, l
    ld [hl], h
    ld bc, $4800
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld c, c
    daa
    ld l, h
    ld l, h
    nop
    jr nz, @+$79

    ld h, c
    ld a, c
    nop
    ld h, a
    ld l, c
    ld [hl], d
    ld l, h
    nop
    jr nz, @+$64

    ld l, a
    ld a, c
    nop
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    nop
    jr nz, jr_01d_4d8a

    ld h, c
    ld [hl], e
    nop
    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    nop
    ld h, l
    ld a, c
    ld h, l
    ld [hl], e
    nop
    inc l

jr_01d_4d21:
    jr nz, jr_01d_4d6c

    ld bc, $2000
    ld [hl], e
    ld h, l
    ld h, c
    nop
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    nop
    ld [hl], b
    ld h, c
    ld [hl], d
    ld [hl], h
    nop
    ld h, l
    ld [hl], d
    ld hl, $0001
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01d_4d8b

    nop
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, h
    nop
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    nop
    ld h, e
    ld l, c
    ld [hl], h
    ld a, c
    nop
    ld h, c
    jr nz, @+$0b

    ld bc, $7400
    ld l, a
    jr nz, jr_01d_4d5b

jr_01d_4d5b:
    ld l, a
    ld h, [hl]
    jr nz, jr_01d_4d5f

jr_01d_4d5f:
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld a, c
    ld l, a
    ld [hl], l
    nop
    ld h, l
    ld h, h
    ld bc, $2000

jr_01d_4d6c:
    ld h, c
    jr nz, jr_01d_4d6f

jr_01d_4d6f:
    add hl, bc
    nop
    ld bc, $2700
    ld [hl], e
    ld bc, $6100
    ld l, h
    ld l, h
    nop
    ld l, l
    ld a, c
    jr nz, jr_01d_4d7f

jr_01d_4d7f:
    ld c, c
    ld [hl], d
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_4dd5

    ld l, a
    ld [hl], h
    nop
    ld d, e
    ld [hl], h

jr_01d_4d8a:
    ld [hl], d

jr_01d_4d8b:
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld bc, $6f00
    ld l, h
    ld h, e
    ld h, c
    ld l, [hl]
    ld l, a
    ld h, l
    ld [hl], e
    nop
    ld hl, $5320
    ld h, l
    ld h, l
    jr nz, jr_01d_4e1a

    ld h, c
    nop
    ld h, c
    ld [hl], a
    ld h, c
    ld l, e
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    nop
    ld h, l
    ld l, h
    ld l, c
    ld h, e
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    nop
    ld h, c
    ld h, h
    db $76
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], l
    ld [hl], d
    nop
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, l
    ld l, a
    ld l, [hl]
    nop
    ld b, d
    ld h, c
    ld l, [hl]
    ld h, c
    ld l, [hl]
    ld h, c
    nop
    ld l, c
    ld l, h
    ld l, h
    ld h, c
    ld h, a
    ld h, l
    nop
    ld c, b
    ld a, c

jr_01d_4dd5:
    ld [hl], d
    ld [hl], l
    ld l, h
    ld h, l
    nop
    ld h, a
    ld l, a
    ld l, h
    ld h, h
    ld h, l
    ld l, [hl]
    nop
    ld h, c
    ld l, h
    ld l, l
    ld l, a
    ld [hl], e
    ld [hl], h
    nop
    ld l, l
    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    add hl, bc
    ld bc, $6946
    ld [hl], e
    ld l, b
    add hl, bc
    nop
    nop
    ld [hl], e
    ld [hl], l
    ld l, l
    ld l, l
    ld l, c
    ld [hl], h
    nop
    ld [hl], d
    ld h, l
    ld h, a
    ld [hl], d
    ld h, l
    ld [hl], h
    nop
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    nop
    add hl, bc
    inc bc
    ld b, c
    ld l, l
    ld h, d
    ld l, c
    add hl, bc
    nop
    nop
    ld [hl], a
    ld l, c
    ld [hl], e
    ld h, h

jr_01d_4e1a:
    ld l, a
    ld l, l
    nop
    inc l
    jr nz, jr_01d_4e84

    ld [hl], l
    ld h, h
    ld h, l
    nop
    add hl, bc
    inc bc
    ld c, a
    ld l, [hl]
    ld l, a
    ld a, b
    nop
    ld l, c
    ld l, [hl]
    jr nz, jr_01d_4e2f

jr_01d_4e2f:
    daa
    ld [hl], e
    jr nz, jr_01d_4e33

jr_01d_4e33:
    ld h, l
    ld h, h
    jr nz, jr_01d_4e37

jr_01d_4e37:
    ld [hl], h
    ld l, b
    ld h, l
    nop
    ld e, c
    ld l, a
    ld [hl], l
    nop
    ld hl, $2121
    nop
    ld h, d
    ld h, l
    jr nz, jr_01d_4e47

jr_01d_4e47:
    jr nz, jr_01d_4eb6

    ld h, l
    nop
    ld h, c
    ld l, [hl]
    ld h, h
    nop
    ld h, c
    ld [hl], h
    ld h, l
    nop
    ld h, l
    ld l, h
    ld l, h
    nop
    ld d, h
    ld l, c
    ld l, l
    ld h, l
    nop
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, h
    nop
    ld l, h
    ld l, a
    ld h, e
    ld l, e
    nop
    ld h, h
    ld l, a
    ld l, a
    ld [hl], d
    nop
    jr nz, jr_01d_4edc

    ld [hl], d
    ld bc, $4f00
    ld [hl], b
    ld h, l
    ld l, [hl]
    nop
    ld h, c
    ld l, [hl]
    ld a, c
    jr nz, jr_01d_4e7a

jr_01d_4e7a:
    ld b, d
    ld l, a
    ld l, l
    ld h, d
    nop
    ld l, h
    ld [hl], l
    ld [hl], h
    ld h, l
    nop

jr_01d_4e84:
    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    nop
    ld h, c
    ld a, c
    ld l, a
    ld [hl], d
    nop
    ld [hl], a
    ld l, c
    ld [hl], e
    ld l, b
    nop
    ld b, [hl]
    ld l, c
    ld l, [hl]
    ld h, h
    nop
    ld d, d
    ld h, l
    ld h, c
    ld h, h
    nop
    ld l, l
    ld h, c
    ld h, h
    ld h, l
    nop
    ld l, h
    ld h, c
    ld [hl], e
    ld [hl], h
    nop
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, jr_01d_4eac

jr_01d_4eac:
    ld l, h
    ld h, c
    ld l, l
    ld h, l
    nop
    ld l, h
    ld l, c
    ld l, [hl]
    ld l, e
    nop

jr_01d_4eb6:
    ld [hl], e
    ld h, c
    ld l, c
    ld h, h
    nop
    ld [hl], e
    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld c, h
    ld l, c
    ld l, [hl]
    ld l, e
    nop
    jr nz, jr_01d_4f28

    ld bc, $2000
    inc c
    stop
    jr nz, jr_01d_4f36

    ld l, a
    ld [hl], h
    ld bc, $4e00
    ld [hl], l
    ld [hl], d
    ld [hl], h
    ld [hl], l
    nop
    ld h, d
    ld [hl], l
    ld l, c

jr_01d_4edc:
    ld l, h
    ld h, h
    nop
    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    nop
    ld [hl], d
    ld h, c
    ld h, a
    ld l, a
    ld l, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    nop
    ld h, a
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, c
    nop
    ld d, e
    ld a, c
    ld [hl], d
    ld [hl], l
    ld [hl], b
    nop
    jr nz, jr_01d_4f52

    ld l, b
    ld l, a
    ld [hl], b
    nop
    db $76
    ld l, c
    ld [hl], e
    ld l, c
    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], a
    nop
    ld h, d
    ld l, h
    ld l, a
    ld l, a
    ld l, l
    nop
    ld h, e
    ld l, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    nop
    ld d, e
    ld h, e
    ld [hl], d
    ld [hl], l
    ld h, d
    nop
    ld [hl], d
    ld h, c
    ld h, e
    ld l, h
    ld h, l
    nop
    inc l

jr_01d_4f28:
    jr nz, jr_01d_4f9d

    ld l, c
    ld [hl], d
    nop
    ld b, c
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    jr nz, jr_01d_4fa2

    ld h, c

jr_01d_4f36:
    ld a, c
    ld bc, $7200
    ld h, l
    db $76
    ld l, c
    halt
    ld h, c
    ld [hl], d
    ld h, l
    nop
    ld h, c
    db $76
    ld h, l
    nop
    ld l, c
    ld l, h
    ld l, h
    nop
    jr nz, jr_01d_4fb6

    ld [hl], h
    nop
    jr nz, jr_01d_4fc4

    ld l, a

jr_01d_4f52:
    nop
    jr nz, jr_01d_4f5e

    ld bc, $2000
    add hl, bc
    inc bc
    nop
    ld hl, $4920

jr_01d_4f5e:
    nop
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    add hl, bc
    nop
    ld hl, $6f00
    ld l, [hl]
    ld h, l
    nop
    jr nz, jr_01d_4fe1

    ld l, a
    nop
    ld h, c
    ld l, c
    ld l, [hl]
    nop
    ld h, l
    ld h, c
    ld [hl], d
    nop
    ld b, h
    ld l, a
    ld l, a
    inc l
    jr nz, jr_01d_4fe1

    ld h, l
    ld h, l
    inc l
    jr nz, jr_01d_4fe6

    ld h, l
    ld h, l
    ld b, $1c
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    nop
    jr nz, jr_01d_4ff6

    ld [hl], e
    nop
    jr nz, jr_01d_4ff9

    ld h, l
    nop
    ld l, a
    ld [hl], l
    ld [hl], h
    nop
    ld [hl], d
    ld h, l
    ld h, l
    nop
    ld l, c
    ld h, e

jr_01d_4f9d:
    ld l, e
    nop
    ld h, c
    ld l, e
    ld h, l

jr_01d_4fa2:
    nop
    ld l, c
    ld [hl], e
    jr nz, jr_01d_4fa7

jr_01d_4fa7:
    ld l, c
    ld l, [hl]
    daa
    nop
    ld [hl], e
    ld l, a
    jr nz, jr_01d_4faf

jr_01d_4faf:
    add hl, bc
    nop
    jr nz, jr_01d_4fb3

jr_01d_4fb3:
    jr nz, jr_01d_5017

    ld h, c

jr_01d_4fb6:
    ld h, h
    nop
    jr nz, jr_01d_501b

    ld l, [hl]
    ld bc, $4c00
    ld l, c
    ld h, [hl]
    ld h, l
    nop
    ld h, c
    ld [hl], d

jr_01d_4fc4:
    ld [hl], d
    ld a, c
    nop
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    nop
    ld c, b
    ld l, a
    ld l, h
    ld h, h
    nop
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    nop
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    nop
    ld b, a
    ld h, c
    ld l, h
    ld h, l
    nop
    ld h, l

jr_01d_4fe1:
    db $76
    ld l, c
    ld l, h
    nop
    ld [hl], e

jr_01d_4fe6:
    ld [hl], l
    ld [hl], d
    ld h, l
    nop
    ld h, c
    ld [hl], b
    ld [hl], b
    ld [hl], d
    nop
    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    nop
    ld l, a
    ld l, [hl]

jr_01d_4ff6:
    ld hl, $0001

jr_01d_4ff9:
    ld h, a
    ld l, a
    ld h, l
    ld [hl], e
    nop
    jr nz, jr_01d_5073

    ld h, c
    ld a, c
    nop
    ld l, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    nop
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld b, l
    db $76
    ld h, l
    ld l, [hl]
    nop
    ld [hl], e
    ld [hl], l
    ld h, e
    ld l, b
    nop

jr_01d_5017:
    ld [hl], e
    ld [hl], b
    ld l, a
    ld [hl], h

jr_01d_501b:
    nop
    ld l, l
    ld h, l
    ld l, h
    ld [hl], h

Jump_01d_5020:
    nop
    ld h, l
    ld l, [hl]
    ld h, h
    nop
    ld [bc], a
    ld [de], a
    ld sp, $0420
    ld b, c
    inc bc
    db $e4
    dec b
    ld d, l
    nop
    ld [bc], a
    ld d, a
    ld bc, $0109
    dec [hl]
    ld [bc], a
    adc a
    dec b
    ret c

    nop
    ld [bc], a
    ld d, a
    ld bc, $0109
    ld sp, $1d02
    dec b
    ret c

    nop
    ld [bc], a
    ld d, a
    ld bc, $0109
    ld [hl-], a
    ld [bc], a
    dec e
    inc bc
    db $e4
    ld [bc], a
    ld b, b
    inc b
    ld l, [hl]
    ld h, d
    ld h, c
    ld h, h
    ld l, $00
    ld [bc], a
    ld d, a
    ld bc, $0109
    inc sp
    ld [bc], a
    dec e
    inc bc
    db $e4
    ld [bc], a
    ld b, b
    inc b
    ld [c], a
    ld l, $00
    ld [bc], a
    ld d, a
    ld bc, $0109
    dec [hl]
    ld [bc], a
    dec e
    inc bc
    db $e4

jr_01d_5073:
    inc b
    db $fc
    inc bc
    db $d3
    ld hl, $0200
    ld [de], a
    ld sp, $3030
    ld bc, $4104
    ld [hl], e
    inc b
    rst $28
    ld c, c
    jr nz, jr_01d_50e9

    ld h, l
    ld [hl], h
    ld bc, $b502
    ld [hl], h
    ld l, b
    ld [hl], d
    dec b
    pop de
    ld h, l
    ld h, h
    ld hl, $0200
    ld [de], a
    ld sp, $3035
    ld bc, $4104
    ld [hl], e
    inc bc
    db $e4
    ld d, a
    ld h, c
    ld a, c
    inc bc
    or b
    ld h, a
    ld l, a
    dec b
    sbc [hl]
    nop
    ld [bc], a
    ld [de], a
    ld [hl-], a
    jr nc, jr_01d_50df

    ld bc, $4104
    ld [hl], e
    add hl, bc
    nop
    ld [bc], a
    db $ed
    ld [hl], b
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_01d_511f

    ld l, h
    ld l, c
    ld [hl], e
    ld [hl], e
    ld hl, $0300
    or c
    ld [bc], a
    rst $08
    ld bc, $1a02
    ld [bc], a
    ld d, b
    ld h, d
    inc b
    sbc h
    ld h, l
    ld h, h
    ld [bc], a
    adc b
    ld h, c
    ld bc, $0109
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld a, c
    jr nz, jr_01d_5142

jr_01d_50df:
    ld l, b
    dec b
    pop de
    inc bc
    db $e4
    inc bc
    rla
    ld [bc], a
    or $66

jr_01d_50e9:
    inc b
    adc a
    jr nz, @+$04

    rst $38
    ld hl, $0300
    or c
    ld [bc], a
    rst $08
    ld bc, $1a02
    ld [bc], a
    ld d, b
    ld h, d
    inc b
    sbc h
    ld h, l
    ld h, h
    ld [bc], a
    adc b
    ld h, c
    ld bc, $0109
    ld [hl], e
    inc b
    cp h
    jr nz, jr_01d_516d

    ld h, c
    ld a, c
    inc bc
    db $e4
    inc bc
    rla
    ld [bc], a
    or $66
    inc b
    adc a
    ld [bc], a
    or [hl]
    ld hl, $0300
    or c
    ld [bc], a
    rst $08
    ld bc, $1a02

jr_01d_511f:
    ld [bc], a
    ld d, b
    ld h, d
    inc b
    sbc h
    ld h, l
    ld h, h
    ld [bc], a
    adc b
    ld h, c
    ld l, [hl]
    ld bc, $0109
    ld h, c
    dec b
    dec h
    jr nz, jr_01d_5194

    dec b
    ld [c], a
    ld a, d
    ld h, l
    inc bc
    db $e4
    inc bc
    rla
    ld [bc], a
    or $66
    inc b
    adc a
    jr nz, jr_01d_51a2

    dec b

jr_01d_5142:
    dec h
    ld hl, $0300
    or c
    ld [bc], a
    rst $08
    ld bc, $1a02
    ld [bc], a
    ld d, b
    ld h, d
    inc b
    sbc h
    ld h, l
    ld h, h
    ld [bc], a
    adc b
    ld h, c
    ld bc, $0109
    ld [hl], e
    ld [hl], b
    inc bc
    ld a, $64
    ld h, l
    ld [hl], a
    inc bc
    db $e4
    inc bc
    rla
    ld [bc], a
    or $66
    inc b
    adc a
    ld [bc], a
    sub $21
    nop

jr_01d_516d:
    inc c
    ld [hli], a
    inc c
    jr c, jr_01d_5174

    inc bc
    add hl, bc

jr_01d_5174:
    ld bc, $4303
    inc bc
    call nz, $2602
    ld [bc], a
    ld h, e
    ld d, e
    inc b
    sub b
    jr nz, @+$75

    ld h, e
    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    dec b
    ld a, l
    inc b
    ld d, l
    jr nz, jr_01d_51f0

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld l, c
    dec b

jr_01d_5194:
    ld e, b
    inc b
    ld [$0373], sp
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], l
    ld [hl], d
    dec l
    ld bc, $7369

jr_01d_51a2:
    ld l, b
    dec b
    sbc e
    ld l, c
    ld l, [hl]
    ld [bc], a
    adc d
    add hl, bc
    ld bc, $4303
    dec b
    ret c

    nop
    inc c
    ld [hli], a
    inc c
    jr c, jr_01d_51b7

    inc bc
    add hl, bc

jr_01d_51b7:
    ld bc, $6947
    ld h, [hl]
    ld [hl], h
    inc bc
    db $e3
    dec b
    and h
    inc bc
    call nz, $2602
    ld [bc], a
    ld h, e
    ld d, e
    inc b
    sub b
    jr nz, jr_01d_523e

    ld [hl], b
    ld [hl], d
    dec b
    pop hl
    jr nz, jr_01d_5232

    ld [hl], e
    ld bc, $7702
    jr nz, @+$05

    cpl
    ld bc, $6977
    ld [hl], h
    ld l, b
    ld [bc], a
    xor h
    add hl, bc
    ld bc, $6947
    ld h, [hl]
    ld [hl], h
    ld bc, $7a05
    dec b
    and h
    dec b
    ret c

    nop
    inc c
    ld [hli], a
    inc c

jr_01d_51f0:
    jr c, jr_01d_51f4

    inc bc
    add hl, bc

jr_01d_51f4:
    ld bc, $bd02
    inc bc
    call nz, $2602
    ld [bc], a
    ld h, e
    dec b
    sbc l
    ld l, [hl]
    ld h, a

Jump_01d_5201:
    jr nz, jr_01d_5276

    inc b
    db $76
    ld bc, $e304
    inc bc
    jp z, $7501

    inc b
    cp $02
    xor h
    ld [hl], a
    ld h, c
    ld [hl], d
    ld l, l
    ld bc, $6172
    ld a, c
    ld [hl], e
    ld [bc], a
    cpl
    add hl, bc
    ld bc, $bd02
    dec b

Jump_01d_5220:
    ret c

    nop
    inc c
    ld [hli], a
    inc c
    jr c, jr_01d_5229

    inc bc
    add hl, bc

jr_01d_5229:
    ld bc, $6f53
    ld [bc], a
    jp Jump_01d_5220


    dec b
    db $db

jr_01d_5232:
    inc b
    ld [hl], l
    ld h, c
    ld l, [hl]
    jr nz, jr_01d_527d

    inc bc
    ld l, $01
    dec b
    ld a, d
    ld [bc], a

jr_01d_523e:
    ld h, e
    ld b, d
    ld h, c
    dec b
    sbc h
    ld h, h
    inc b
    inc d
    ld h, h
    ld [hl], d
    ld l, a
    ld [hl], b
    ld [hl], e
    ld bc, $7a05
    add hl, bc
    ld bc, $6f53
    ld [bc], a
    jp Jump_01d_5201


    dec b
    db $db
    add hl, bc
    nop
    inc l
    jr nz, @+$75

    inc b
    db $76
    ld bc, $e304
    inc bc
    sub l
    ld bc, $6904
    ld hl, $0c00
    ld [hli], a
    inc c
    jr c, jr_01d_5270

    inc bc
    add hl, bc

jr_01d_5270:
    ld bc, $bd05
    ld [hl], d
    inc bc
    rst $00

jr_01d_5276:
    inc b
    call nc, $c403
    ld [bc], a
    ld h, $02

jr_01d_527d:
    ld h, e
    ld b, d
    ld h, c
    ld l, h
    dec b
    add d
    ld h, h
    ld h, c
    ld a, c
    ld [hl], e
    ld bc, $be05
    jr nz, @+$04

    pop de
    ld bc, $6904
    ld [bc], a
    sbc a
    inc b
    cp l
    dec b
    call nc, $bd05
    ld [hl], d
    inc bc
    rst $00
    inc b
    call nc, $d805
    nop
    inc c
    ld [hli], a
    inc c
    jr c, jr_01d_52a7

    inc bc
    add hl, bc

jr_01d_52a7:
    ld bc, $6c42
    ld l, a
    ld [hl], a
    inc bc
    and [hl]
    ld d, a
    ld l, c
    ld l, [hl]
    ld h, h
    inc bc
    call nz, $2602
    ld [bc], a
    ld h, e
    ld d, e
    ld [hl], a
    ld h, l
    ld h, l
    ld [hl], h
    inc bc
    rst $30
    inc bc
    push hl
    ld h, d
    ld l, a
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01d_52ca

    adc d
    ld [hl], b
    ld l, a

jr_01d_52ca:
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    ld bc, $e505
    ld h, e
    ld h, c
    ld [hl], d
    ld [hl], d
    ld l, c
    dec b
    sbc e
    ld h, d
    ld a, c
    ld bc, $5f03
    ld b, d
    ld l, h
    ld l, a
    ld [hl], a
    inc bc
    rst $00
    ld d, a
    ld l, c
    ld l, [hl]
    ld h, h
    dec b
    ret c

    nop
    inc c
    ld [hli], a
    inc c
    jr c, jr_01d_52f1

    inc bc
    add hl, bc

jr_01d_52f1:
    ld bc, $0e05
    inc bc
    db $e3
    dec b
    db $eb
    inc bc
    call nz, $2602
    ld [bc], a
    ld h, e
    dec b
    db $eb
    jr nz, jr_01d_5364

    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01d_536a

    ld l, [hl]
    ld h, l
    ld [hl], a
    ld bc, $8a03
    ld h, d
    ld l, c
    ld [hl], d
    ld h, h
    ld [hl], e
    ld [bc], a
    db $e3
    ld bc, $fd04
    inc l
    ld [bc], a
    xor h
    add hl, bc
    ld bc, $0e05
    ld bc, $7a05
    dec b
    db $eb
    add hl, bc
    nop
    inc l
    inc bc
    or d
    ld l, [hl]
    ld h, l
    ld [hl], a
    jr nz, jr_01d_5333

    ld [$2173], sp
    nop

jr_01d_5333:
    inc c
    ld [hli], a
    inc c
    jr c, jr_01d_533a

    inc bc
    add hl, bc

jr_01d_533a:
    ld bc, $6843
    ld h, c
    ld l, [hl]
    ld h, a
    inc bc
    rst $00
    ld [bc], a
    ld a, [de]
    inc l
    dec b
    ld [$2602], a
    ld [bc], a
    ld h, e
    inc bc
    and a
    ld [hl], e
    ld [hl], b
    ld [hl], d
    dec b
    pop hl
    inc bc
    and $73
    ld [hl], b
    inc b
    ld d, c
    inc l
    inc bc
    sbc l
    inc bc
    and $73
    inc b
    cp h
    inc l
    jr nz, @+$64

    dec b

jr_01d_5364:
    call c, Call_01d_6601
    ld [hl], d
    ld [hl], l
    ld l, c

jr_01d_536a:
    ld [hl], h
    inc b
    inc d
    ld h, [hl]
    inc b
    inc hl
    inc bc
    jp hl


    inc b
    rla
    ld bc, $d702
    ld bc, $ff02
    inc bc
    and h
    ld c, c
    ld [hl], h
    inc bc
    add hl, hl
    ld l, [hl]
    jr nz, @+$07

    rst $38
    inc b
    sbc h
    ld bc, $7963
    ld h, e
    ld l, h
    ld h, l
    inc bc
    db $e3
    inc b
    rst $38
    inc bc
    and l
    inc bc
    ld e, a
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    inc bc
    rst $00
    ld [bc], a
    ld a, [de]
    ld hl, $0200
    dec de
    ld bc, $0109
    ld [bc], a
    ld [hli], a
    dec b
    ret c

    nop
    ld [bc], a
    dec de
    ld bc, $0109
    ld d, b
    ld l, c
    ld h, l
    ld h, e
    inc bc
    ld l, d
    inc bc
    sub $05
    ret c

    inc c
    jr z, jr_01d_53bc

    ld b, e

jr_01d_53bc:
    inc bc
    ld hl, sp+$20
    ld h, [hl]
    ld l, a
    ld [hl], l
    ld [hl], d
    inc bc
    and $04
    rlca
    ld [hl], h
    ld l, a
    inc bc
    ld b, b
    ld h, c
    ld l, [hl]
    ld bc, $7865
    ld [hl], h
    ld [hl], d
    dec b
    ld a, b
    inc bc
    sub $01
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    dec b
    db $db
    ld h, l
    ld [hl], d
    inc b
    rst $28
    ld b, e
    ld l, b
    ld h, l
    ld h, e
    ld l, e
    ld bc, $9c05
    ld l, l
    ld [bc], a
    add d
    inc b
    ld de, $002e
    ld [bc], a
    or a
    add hl, bc
    ld bc, $0544
    adc d
    ld bc, $614d
    ld [hl], b
    inc b
    rst $28
    ld d, b
    dec b
    nop
    ld bc, $d504
    inc bc
    inc e
    ld bc, $7469
    ld l, $20
    inc bc
    or c
    ld h, h
    ld h, c
    ld [hl], d
    ld l, e
    ld h, l
    ld l, [hl]
    dec b
    ld a, l
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    ld [hl], e
    inc bc
    ld l, e
    dec b
    reti


    ld [hl], e
    ld bc, $0279
    ld c, c
    inc b
    ld l, a
    inc b
    cp e
    dec b
    ld a, c
    ld a, c
    ld h, l
    ld [hl], h
    ld l, $00
    dec b
    sbc l
    ld [bc], a
    ld a, b
    inc b
    and a
    add hl, bc
    ld bc, $6f43
    ld l, l
    dec b
    ld de, $3803
    ld d, l
    ld [hl], e
    ld h, l
    inc bc
    ld d, e
    jr nz, jr_01d_54b7

    ld [hl], d
    ld h, c
    ld h, e
    ld l, e
    ld bc, $0b03
    ld [hl], b
    ld l, a
    ld [hl], e
    ld l, c
    inc b
    ccf
    inc l
    ld bc, $6f6c
    ld h, e
    dec b
    and d
    jr nz, @+$07

    ld bc, $7374
    ld bc, $a105
    ld [bc], a
    db $e4
    ld l, e
    ld h, l
    ld a, c
    ld [hl], e
    ld l, $00
    dec b
    sbc l
    ld [bc], a
    ld a, b
    ld h, c
    ld bc, $0109
    ld d, e
    ld l, l
    inc b
    rlca
    ld c, e
    ld h, l
    ld a, c
    inc bc
    jr c, jr_01d_54ce

    ld [hl], e
    ld h, l
    inc bc
    ld d, e
    inc b
    add hl, de
    dec b
    cp d
    ld l, h
    inc b
    cp [hl]
    jr nz, jr_01d_548b

    and a
    dec b
    xor b
    ld h, d
    dec b

jr_01d_548b:
    and [hl]
    jr nz, @+$6b

    ld l, [hl]
    ld [bc], a
    adc d
    ld h, h
    dec b
    adc d
    ld l, $00
    dec b
    sbc l
    ld [bc], a
    ld a, b
    inc b
    and a
    add hl, bc
    ld bc, $6f42
    ld [hl], e
    ld [hl], e
    jr nz, @+$4d

    ld h, l
    ld a, c
    dec b
    ret c

    nop
    ld [bc], a
    inc bc
    add hl, bc
    ld bc, $d604
    jr nz, jr_01d_5504

    inc bc
    ld b, $21
    ld bc, $1a03

jr_01d_54b7:
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld l, h
    ld a, c
    inc bc
    add hl, hl
    ld bc, $5b05
    inc bc
    db $e3
    inc bc
    dec e
    ld hl, $0501
    xor $20
    cp b
    cp c
    jr nz, jr_01d_553d

jr_01d_54ce:
    ld [hl], d
    jr nz, jr_01d_548b

    cp e
    inc bc
    or d
    inc bc
    jr jr_01d_54db

    inc l
    ld [hl], l
    ld [hl], b
    inc l

jr_01d_54db:
    ld bc, $7704
    ld [hl], d
    ld h, l
    ld l, h
    dec b
    rst $28
    inc b
    ld h, h
    inc b
    sub c
    ld h, c
    jr nz, @+$75

    ld [hl], b
    ld l, c
    ld l, [hl]
    ld bc, $0461
    ld b, h
    ld hl, $0200
    inc bc
    inc bc
    ld a, [$d405]
    ld c, [hl]
    ld l, a
    ld h, d
    ld l, h
    ld h, l
    ld bc, $0353
    ld b, $21
    nop

jr_01d_5504:
    ld [bc], a

Call_01d_5505:
    inc bc
    ld l, h
    inc bc
    ld b, a
    dec b
    call nc, $e502
    ld bc, $0353
    ld b, $21
    nop
    ld [bc], a
    dec de
    ld bc, $0109
    inc b
    sub $02
    reti


    dec b
    ret c

    nop
    ld [bc], a
    dec de
    ld l, [hl]
    ld bc, $0109
    ld c, c
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [bc], a
    reti


    dec b
    ret c

    nop
    ld [bc], a
    inc bc
    add hl, bc
    ld bc, $694d
    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], d
    ld [bc], a
    reti


    dec b
    ret c

    nop

jr_01d_553d:
    ld [bc], a
    inc bc
    add hl, bc
    ld bc, $5b02
    inc bc
    db $e4
    ld d, l
    ld [hl], e
    ld h, l
    inc bc
    ld d, e
    jr nz, jr_01d_5551

    inc bc
    ld bc, $f004
    inc b

jr_01d_5551:
    inc d
    inc b
    cp l
    ld bc, $7274
    ld h, c
    ld h, e
    ld l, e
    ld [hl], e
    ld hl, $0c00
    ld [hli], a
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    ld [bc], a
    xor h
    add hl, bc
    ld bc, $044d
    ld d, [hl]
    ld bc, $5b02
    inc bc
    db $e4
    ld d, b
    inc bc
    sub [hl]
    add hl, bc
    add h
    ld b, $80
    dec b
    ld a, a
    inc b
    cp a
    jr nz, jr_01d_5580

    ld [hl], b
    inc bc
    rst $00
    inc bc

jr_01d_5580:
    sub h
    inc bc
    ld a, d
    inc bc
    or d
    dec b
    ld e, h
    ld [hl], d
    ld l, a
    ld l, h
    dec b
    jp nc, $0173

    ld h, [hl]
    ld l, h
    inc bc
    add e
    ld [hl], b
    ld h, c
    ld [hl], h
    ld l, b
    ld hl, $0200
    ld d, a
    jr nz, jr_01d_5602

    inc b
    ld h, l
    add hl, bc
    ld bc, $7002
    inc bc
    db $e4
    inc bc
    ld d, b
    dec b
    ld [de], a
    ld [hl], e
    inc b
    ld h, $01
    add hl, bc
    ld bc, $2202
    dec b
    ret c

    nop
    ld [bc], a
    inc bc
    add hl, bc
    ld bc, $0553
    ld h, $04
    rst $28
    ld c, [hl]
    ld l, a
    ld [hl], a
    ld bc, $7804
    jr nz, jr_01d_5628

    ld l, c
    ld h, a
    ld h, a
    inc b
    and [hl]
    nop
    inc c
    ld [hli], a
    ld [bc], a
    inc bc
    add hl, bc
    ld bc, $f702
    inc bc
    db $e4
    dec b
    xor $02
    xor h
    inc bc
    ld a, d
    ld bc, $e903
    ld [hl], b
    inc bc
    sub [hl]
    add hl, bc
    add h
    ld b, $80
    dec b
    ld a, a
    dec b
    ld a, c
    ld l, h
    ld l, c
    ld h, [hl]
    ld [hl], h
    dec b
    ldh [$61], a
    db $76
    ld a, c
    ld bc, $626f
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld [hl], e
    ld hl, $0200
    ld [de], a
    ld d, d
    ld l, a
    ld h, e
    dec b
    add b

jr_01d_5602:
    ld b, [hl]
    inc bc
    ld d, h
    add hl, bc
    nop
    ld [bc], a
    and $04
    sub d
    jr nz, jr_01d_5679

    inc bc
    add e
    ld h, c
    ld [hl], e
    dec b
    cp d
    ld h, [hl]
    inc bc
    ld d, h
    ld hl, $0200
    ld [de], a
    ld d, d
    ld l, a
    ld h, e
    dec b
    add b
    ld b, e
    ld h, c
    ld [hl], b
    ld h, l
    inc b
    rst $28
    ld d, b
    dec b
    nop

jr_01d_5628:
    ld [bc], a
    call c, Call_01d_7004
    ld [bc], a
    xor h
    inc bc
    ld a, d
    ld bc, $7905
    ld h, h
    ld l, a
    dec b
    ld a, [hl]
    ld h, h
    inc bc
    ret c

    ld bc, $756a
    ld l, l
    ld [hl], b
    ld hl, $0200
    ld [de], a
    ld d, e
    dec b
    ld b, b
    ld bc, $5302
    inc bc
    sub a
    ld l, c
    ld [hl], d
    ld bc, $6d73
    dec b
    and e
    jr nz, jr_01d_56b5

    ld [hl], h
    ld [hl], h
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld [hl], e
    ld bc, $da02
    ld [hl], e
    ld l, $20
    dec b
    xor c
    ld bc, $0279
    ld h, l
    ld [bc], a
    ld l, [hl]
    inc bc
    or b
    ld [hl], l
    ld [hl], e
    ld h, l
    ld bc, $9c05
    ld l, l
    ld l, $00
    ld [bc], a
    ld [de], a
    ld c, l
    ld a, c
    inc b

jr_01d_5679:
    xor c
    ld a, c
    ld bc, $5302
    ld hl, $0320
    ld a, [hli]
    dec b
    sbc h
    ld a, c
    ld bc, $6f64
    inc bc
    add hl, hl
    jr nz, jr_01d_56f9

    ld a, c
    inc b
    xor c
    ld a, c
    ld hl, $5401
    ld [hl], d
    ld a, c
    inc bc
    inc l
    inc b
    sub e
    ld l, l
    dec b
    xor d
    inc bc
    add hl, sp
    ld [hl], e
    ld hl, $0501
    xor c
    jr nz, jr_01d_571e

    ld [bc], a
    ld h, l
    ld [bc], a
    ld l, [hl]
    inc bc
    or b
    ld [hl], l
    ld [hl], e
    ld h, l
    ld bc, $9c05
    ld l, l
    ld l, $00
    ld [bc], a

jr_01d_56b5:
    ld [de], a
    ld [bc], a
    ldh a, [rSB]
    ld [bc], a
    ld d, e
    inc bc
    sub a
    ld a, c
    daa
    ld l, h
    ld l, h
    ld bc, $616d
    ld l, e
    ld [bc], a
    ld [hl], h
    ld h, c
    ld [hl], e
    ld bc, $7571
    dec b
    db $e3
    jr nz, jr_01d_5731

    ld [hl], e
    ld [bc], a
    or h
    ld l, h
    inc bc
    ld b, a
    jr nz, jr_01d_574b

    ld [hl], h
    ld h, l
    ld h, l
    ld h, h
    ld hl, $0501
    xor c
    jr nz, @+$7b

    ld [bc], a
    ld h, l
    ld [bc], a
    ld l, [hl]
    inc bc
    or b
    ld [hl], l
    ld [hl], e
    ld h, l
    ld bc, $9c05
    ld l, l
    ld l, $00
    ld [bc], a
    ld [de], a
    dec b
    pop af
    ld bc, $5302
    inc bc

jr_01d_56f9:
    sub a
    ld l, c
    ld [hl], d
    ld bc, $7567
    ld [hl], e

Call_01d_5700:
    ld [hl], h
    inc bc
    ld d, $04
    dec de
    inc bc
    jp nc, $8403

    ld [bc], a
    jp nz, $1e03

    jr nz, jr_01d_5776

    ld l, a
    ld l, $01
    dec b
    xor c
    jr nz, jr_01d_578f

    ld [bc], a
    ld h, l
    ld [bc], a
    ld l, [hl]
    inc bc
    or d
    ld [hl], l
    ld [hl], e

jr_01d_571e:
    ld h, l
    inc bc
    inc l
    ld l, $00
    inc c
    ld [hli], a
    ld [bc], a
    dec de
    dec b
    call nc, $0e05
    ld bc, $6e02
    ld hl, $4120

jr_01d_5731:
    ld l, [hl]
    ld h, h
    inc b
    ld h, h
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, jr_01d_576c

    jr nc, @+$07

    call nc, Call_01d_7904
    ld bc, $5302
    ld hl, $0200
    inc bc
    add hl, bc
    ld bc, $0a04
    inc bc

jr_01d_574b:
    db $e4
    ld b, e
    dec b
    cp a
    ld [bc], a
    ld l, d
    ld [bc], a
    ld b, c
    ld [bc], a
    call c, Call_01d_6103
    ld h, c
    ld l, c
    ld l, l
    ld hl, $0200
    inc bc
    add hl, bc
    ld bc, $7948
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_01d_576b

    ld a, [bc]
    inc bc
    db $e4
    ld c, c

jr_01d_576b:
    ld [hl], h

jr_01d_576c:
    jr nz, @+$75

    inc b
    db $76
    jr nz, @+$05

    reti


    ld bc, $0473

jr_01d_5776:
    sub b
    jr nz, jr_01d_57da

    ld [hl], h
    jr nz, jr_01d_57dd

    inc bc
    ld a, [bc]
    ld hl, $0200
    inc bc
    add hl, bc
    ld bc, $044d
    pop af
    jr nz, jr_01d_57d0

    inc b
    ld b, l
    inc bc
    db $e4
    ld d, h
    ld l, b

jr_01d_578f:
    ld h, l
    ld l, c
    ld [hl], d
    jr nz, jr_01d_5801

    inc b
    pop af
    ld bc, $036d
    add e
    ld h, c
    ld [hl], h
    ld [hl], h
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld [hl], e
    ld bc, $e903
    ld [hl], d
    ld h, l
    ld [hl], b
    ld h, l
    ld l, h
    ld [hl], e
    ld l, $01
    ld d, b

jr_01d_57ae:
    dec b
    nop
    ld [bc], a
    xor h
    inc bc
    ld a, d
    ld bc, $7905
    ld [hl], d
    inc b
    ld l, $73
    ld h, l
    ld bc, $6f70
    ld l, h
    ld h, c
    ld [hl], d
    ld l, c
    ld [hl], h
    ld a, c
    ld l, $00
    ld [bc], a
    ld [de], a
    ld e, d
    ld l, a
    ld [hl], d
    ld h, c
    dec b
    add b
    inc b

jr_01d_57d0:
    ld l, d
    add hl, bc
    nop
    ld [bc], a
    and $63
    ld h, c
    ld l, [hl]
    inc b
    dec b

jr_01d_57da:
    jr nz, @+$69

    ld l, a

jr_01d_57dd:
    inc bc
    inc c
    ld h, c
    ld bc, $7773
    ld l, c
    ld l, l
    ld hl, $5020
    inc bc
    sub [hl]
    cp b
    cp c
    ld bc, $6f74
    inc b
    ld b, [hl]
    inc l
    jr nz, jr_01d_57ae

    cp e
    inc bc
    or d
    ld h, h
    ld l, c
    db $76
    ld h, l
    ld hl, $0200
    ld [de], a
    dec b
    xor e

jr_01d_5801:
    ld h, e
    ld l, b
    ld [hl], l
    inc bc
    db $e4
    ld d, e
    dec b
    rst $38
    inc bc
    inc l
    ld [bc], a
    call nz, Call_01d_7401
    ld l, a
    ld [bc], a
    add b
    inc b
    ldh a, [rNR42]
    nop
    ld [bc], a
    dec de
    dec b
    call nc, Call_01d_7548
    ld h, a
    ld h, l
    ld bc, $614d
    ld l, e
    ld [hl], l
    jr nz, jr_01d_5878

    inc b
    ld c, a
    ld hl, $0520
    ld e, d
    ld bc, $5503
    jr nz, jr_01d_58a0

    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], h
    ld [hl], d
    dec b
    and d
    ld bc, $f205
    jr nz, jr_01d_5841

    daa
    ld [hl], e
    ld hl, $0200

jr_01d_5841:
    dec de
    jr nz, jr_01d_58a6

    ld l, c
    ld h, a
    ld h, a
    ld h, l
    ld [hl], d
    ld bc, $2402
    dec b
    sub $74
    inc bc
    or h
    inc b
    ld [hl], b
    inc bc
    dec hl
    ld [bc], a
    inc de
    ld hl, $4f00
    ld [hl], l
    ld h, e
    ld l, b
    ld hl, $0220
    ld b, h
    daa
    ld [hl], h
    ld bc, $0563
    db $ec
    inc bc
    inc l
    inc bc
    dec c
    ld bc, $e504
    ld hl, $0200
    ld d, a
    ld bc, $0109
    ld b, [hl]
    ld l, a
    ld l, a

jr_01d_5878:
    ld l, h
    dec b
    sbc d
    ld c, a
    ld [hl], d
    ld h, l
    inc bc
    jr c, jr_01d_5885

    cpl
    ld [hl], h
    ld [bc], a
    db $dd

jr_01d_5885:
    ld l, [hl]
    ld l, a
    ld bc, $e604
    ld hl, $4720
    ld h, l
    ld [hl], h
    ld [bc], a
    ld l, d
    add hl, bc
    ld bc, $0366
    ld d, h
    add hl, bc
    nop
    inc bc
    or l
    ld hl, $0200
    ld d, a
    ld [bc], a
    ld l, d

jr_01d_58a0:
    add hl, bc
    ld bc, $0366
    ld d, h
    add hl, bc

jr_01d_58a6:
    nop
    inc bc
    or l
    inc bc
    and e
    ld c, [hl]
    ld l, a
    ld [hl], a
    ld [bc], a
    ld e, b
    ld [bc], a
    or h
    ld l, a
    ld [hl], d
    ld h, l
    ld l, $00
    ld [bc], a
    ld [de], a
    inc bc
    jp c, $8005

    ld b, [hl]
    inc bc
    ld h, b
    ld hl, $d505
    inc bc
    jp c, Jump_01d_7f05

    inc bc
    ld h, d
    ld [bc], a
    ld [hl], e
    ld bc, $0b03
    ld h, c
    ld l, c
    ld h, h
    ld [bc], a
    jp nc, $d203

    dec b
    inc b
    dec b
    dec b
    nop
    ld [bc], a
    ld d, a
    ld bc, $0109
    inc b
    sbc e
    inc bc
    ld h, b
    ld hl, $0201
    ld h, [hl]
    ld [bc], a
    add c
    ld [bc], a
    ld [hl], e
    ld [bc], a
    add b
    ld h, c
    ld l, c
    ld h, h
    ld bc, $0277
    cp b
    jr nz, @+$07

    inc b
    ld bc, $7469
    ld l, $00
    ld [bc], a
    ld [de], a
    ld c, l
    ld l, a
    ld l, a
    ld [hl], e
    ld l, b
    dec b

Jump_01d_5904:
    add b
    ld b, [hl]
    inc bc
    ld h, b
    ld hl, $d505
    inc bc
    push bc
    ld bc, $6203
    ld [bc], a
    ld [hl], e
    ld bc, $0b03
    ld h, c
    ld l, c
    ld h, h
    ld [bc], a
    jp nc, $d203

    dec b
    inc b
    dec b
    jp nc, $0021

    ld [bc], a
    dec de
    ld bc, $0109
    ld [bc], a
    sbc d
    inc bc
    db $e4
    ld c, c
    ld [hl], h
    jr nz, @+$07

    di
    inc bc
    or [hl]
    ld [hl], e
    ld bc, $0572
    rst $08
    ld hl, $0200
    dec de
    jr nz, @+$05

    scf
    ld bc, $0346
    sbc c
    inc b
    rst $28
    ld c, b
    dec b
    and c
    ld l, h
    ld h, l
    ld bc, $7469
    ld [bc], a
    adc b
    ld h, e
    dec b
    rst $08
    dec b
    sbc [hl]
    nop
    ld [bc], a
    ld d, a
    ld bc, $3402
    ld hl, $0200
    ld d, a
    ld bc, $be02
    ld hl, $0200
    ld [de], a
    ld d, d
    inc bc
    ei
    dec b
    ret c

    nop
    dec b
    sbc l
    ld [bc], a
    ld a, b
    ld h, c
    ld bc, $8e02
    ld hl, $4d01
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    ld [bc], a
    jr nc, jr_01d_597d

    inc bc

jr_01d_597d:
    sbc d
    dec b
    jp nc, $e202

    ld [bc], a
    inc e
    ld bc, $db02
    ld hl, $0200
    dec de
    ld bc, $5202
    ld hl, $0200
    inc bc
    add hl, bc
    ld bc, $0447
    ld a, [c]
    ld c, e
    ld h, l
    ld a, c
    dec b
    ret c

    nop
    ld [bc], a
    inc bc
    add hl, bc
    ld bc, $0246
    and b
    jr nz, jr_01d_59f1

    ld h, l
    ld a, c
    inc bc
    db $e4
    ld c, [hl]
    ld l, a
    ld [hl], a
    ld [bc], a
    jr nc, jr_01d_59b4

    add hl, de
    ld bc, $9403

jr_01d_59b4:
    ld h, [hl]
    ld [bc], a
    and b
    ld [hl], e
    ld hl, $0200
    inc bc
    add hl, bc
    ld bc, $0544
    ret nz

    jr nz, jr_01d_5a0e

    ld h, l
    ld a, c
    dec b
    ret c

    nop
    ld [bc], a
    dec de
    ld bc, $9604
    dec b
    dec a
    ld [hl], b
    ld bc, $0109
    ld [bc], a
    sbc e
    dec b
    ret c

    nop
    ld [bc], a
    ld b, h
    inc b
    dec b
    jr nz, jr_01d_59e2

    ld [hl], b
    ld bc, $1c04

jr_01d_59e2:
    add hl, bc
    ld bc, $024d
    cp c
    ld bc, $5302
    inc b
    ld d, a
    inc bc
    db $10
    ld hl, $0c00

jr_01d_59f1:
    ld [hli], a
    ld [bc], a
    inc bc
    add hl, bc
    ld bc, $0552
    db $10
    inc b
    inc de
    nop
    inc c
    ld [hli], a
    ld [bc], a
    inc bc
    add hl, bc
    ld bc, $7153
    ld [hl], l
    dec b
    rst $08
    inc b
    inc de
    nop
    inc c
    ld [hli], a
    ld [bc], a
    inc bc

jr_01d_5a0e:
    add hl, bc
    ld bc, $2d58
    ld d, e
    ld l, b
    ld h, c
    ld [hl], b
    ld h, l
    ld h, h
    inc b
    inc de
    nop
    inc c
    ld [hli], a
    ld [bc], a
    inc bc
    add hl, bc
    ld bc, $7950
    ld [hl], d
    ld h, c
    ld l, l
    ld l, c
    ld h, h
    inc b
    inc de
    nop
    ld [bc], a
    dec de
    jr nz, jr_01d_5a32

    ld c, [hl]
    ld d, e
    inc b

jr_01d_5a32:
    ld c, a
    ld hl, $5020
    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    inc b
    ld h, h
    ld l, c
    ld l, [hl]
    dec b
    ld a, [hl]
    ld [hl], b
    inc b
    ld h, d
    inc bc
    pop de
    ld [hl], e
    ld l, a
    ld h, [hl]
    ld [hl], h
    dec b
    db $d3
    ld l, c
    ld l, h
    ld hl, $0200
    ld [de], a
    inc bc
    reti


    ld bc, $d603
    ld [hl], e
    dec b
    ret c

    nop
    ld [bc], a
    ld [de], a
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld bc, $4704
    dec b
    ret c

    nop
    ld [bc], a
    ld [de], a
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld bc, $0902
    ld hl, $0200
    ld [de], a
    ld h, [hl]
    inc b
    ld h, l
    inc b
    ld a, c
    jr nz, @+$04

    ld d, e
    ld hl, $0200
    ld [de], a
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld bc, $f002
    jr nz, @+$04

    ld d, e
    ld hl, $0300
    add sp, $72
    ld h, l
    ld h, e
    inc b
    ld h, a
    dec b
    ld a, l
    inc b
    or l
    inc b
    ld h, $03
    rlca
    ld [hl], h
    ld l, $00
    ld e, c
    ld [bc], a
    ld h, l
    ld [bc], a
    ld l, [hl]
    inc b
    ld h, c
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, h
    ld hl, $0500
    sbc l
    ld [hl], d
    inc bc
    rlca
    ld [hl], h
    ld [hl], e
    inc bc
    ld b, c
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, h
    ld hl, $0200
    dec de
    jr nz, @+$04

    ld a, [hli]
    ld hl, $4701
    ld h, l
    inc bc
    sbc e
    ld [bc], a
    ld b, a
    ld h, h
    ld bc, $056c
    and d
    ld [hl], d
    ld hl, $0200
    inc bc
    add hl, bc
    ld bc, $7552
    ld [hl], e
    ld [hl], h
    ld a, c
    jr nz, @+$44

    dec b
    and e
    inc bc
    db $e4
    ld d, a
    dec b
    pop de
    jr nz, @+$04

    inc e
    ld bc, $3a03
    dec b
    ld b, h
    ld a, c
    jr nz, jr_01d_5b4c

    ld l, a
    ccf
    nop
    ld [bc], a
    inc bc
    add hl, bc
    ld bc, $6950
    ld [hl], d
    ld h, c
    ld [hl], h
    inc b
    and d
    ld b, d
    dec b
    and e
    inc bc
    db $e4
    ld b, a
    ld c, a
    ld c, [hl]
    ld b, a
    ld hl, $0200
    dec de
    ld bc, $0109
    ld c, h
    dec l
    ld sp, $d002
    jr nz, @+$44

    ld l, a
    ld a, b
    inc bc
    db $e4
    ld c, c
    ld [hl], h
    inc bc
    ld d, $04
    ld [hl], b
    ld bc, $ad04
    ld [bc], a
    ld a, [hli]
    ld hl, $0200
    dec de
    ld bc, $0109
    ld c, h
    dec l
    ld [hl-], a
    ld [bc], a
    ret nc

    jr nz, jr_01d_5b6c

    ld l, a
    ld a, b
    inc bc
    db $e4
    ld c, c
    ld [hl], h
    inc bc
    ld d, $04
    ld [hl], b
    ld bc, $d903
    ld [bc], a
    inc de
    ld hl, $0200
    dec de
    ld bc, $0109
    ld c, h
    dec l
    inc sp
    ld [bc], a
    ret nc

    jr nz, @+$44

    ld l, a
    ld a, b
    inc bc
    db $e4
    ld c, c

jr_01d_5b4c:
    ld [hl], h
    inc bc
    ld d, $04
    ld [hl], b
    ld bc, $6966
    db $76
    ld h, l
    ld [bc], a
    inc de
    ld hl, $0200
    dec de
    ld bc, $8409
    ld b, $81
    dec b
    call nc, $6b04
    inc bc
    db $e4
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    ld [bc], a

jr_01d_5b6c:
    xor h
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], l
    ld l, h
    ld [hl], h
    ld bc, $666f
    inc bc
    db $eb
    jr nz, jr_01d_5bf3

    dec b
    call c, $3b03
    ld b, e
    ld [hl], l
    ld h, e
    ld h, e
    ld l, a
    jr nz, jr_01d_5bf7

    ld h, l
    ld [hl], e
    dec b
    call c, Call_01d_6863
    ld hl, $0c00
    ld [hli], a
    inc bc
    or c
    add hl, bc
    add h
    ld b, $81
    dec b
    add sp, $74
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    dec b
    ld a, l
    dec b
    ld a, $05
    ld a, [hl]
    add hl, bc
    add h
    ld b, $82
    add hl, bc
    ld bc, $0420
    ld [hl-], a
    ld bc, $6745
    ld h, a
    inc b
    rst $28
    ld [bc], a
    db $ec
    ld h, c
    ld bc, $6562
    ld h, c
    ld [hl], l
    ld [hl], h
    ld a, c
    jr nz, jr_01d_5c1d

    ld l, c
    ld h, h
    ccf
    ld hl, $003f
    inc bc
    add sp, $03
    sbc d
    ld h, h
    jr nz, @+$0b

    add h
    ld b, $82
    dec b
    ld a, a
    inc b
    sub c
    ld h, c
    jr nz, jr_01d_5bdc

    add h
    ld b, $83
    add hl, bc
    ld bc, $4720
    ld l, b
    dec b

jr_01d_5bdc:
    xor l
    ld a, c
    ld bc, $6f44
    ld l, h
    ld l, h
    inc b
    rst $28
    jr nz, jr_01d_5c33

    ld l, a
    ld l, a
    ld l, e
    inc bc
    rst $00
    ld h, c
    inc bc
    sbc e
    dec b
    ld b, l
    ld [hl], e
    ld [bc], a

jr_01d_5bf3:
    jp nz, Jump_01d_6863

    dec b

jr_01d_5bf7:
    pop de
    ld [hl], e
    ld hl, $0300
    or c
    add hl, bc
    add h
    ld b, $83
    add hl, bc
    nop
    dec b
    rst JumpTable
    inc b
    dec b
    dec b
    ld [$8409], a
    ld b, $84
    add hl, bc
    ld bc, $0520
    add e
    inc b
    jr z, jr_01d_5c5e

    ld [hl], h
    inc bc
    or [hl]
    ld [hl], e
    inc bc
    and l
    ld [hl], a
    dec b

jr_01d_5c1d:
    and e
    dec l
    ld [hl], e
    inc bc
    call nc, Call_01d_6465
    ld l, $00
    inc bc
    ld [hl], h
    add hl, bc
    add b
    ld b, $85
    add hl, bc
    ld bc, $0420
    dec bc
    dec b
    ld a, a

jr_01d_5c33:
    dec b
    push hl
    inc b
    ld a, d
    ld hl, $3103
    ld l, l
    ld l, a
    ld l, h
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, jr_01d_5caa

    ld l, a
    ld [hl], h
    ld hl, $0200
    ld d, a
    ld [bc], a
    xor h
    add hl, bc
    add h
    ld b, $86
    ld bc, $0109
    inc bc
    ld a, e
    ld d, [hl]
    ld h, c
    ld [hl], e
    ld h, l
    dec b
    add sp, $61
    ld [hl], e
    ld bc, $c105

jr_01d_5c5e:
    ld [hl], e
    ld [bc], a
    and c
    ld bc, $8009
    ld b, $85
    inc b
    rst $28
    ld [bc], a
    or a
    inc b
    ld a, e
    inc b
    ld [c], a
    jr nz, jr_01d_5ce6

    ld h, c
    ld [hl], e
    inc b
    xor b
    nop
    ld [bc], a
    dec de
    jr nz, jr_01d_5c82

    add h
    ld b, $87
    ld bc, $9105
    jr nz, jr_01d_5ce2

    ld [hl], e

jr_01d_5c82:
    inc bc
    rra
    ld bc, $de05
    ld [bc], a
    xor h
    add hl, bc
    add h
    ld b, $86
    dec b
    ret c

    inc bc
    ld sp, $616d
    ld [hl], d
    ld l, e
    ld h, l
    ld [hl], h
    jr nz, jr_01d_5cff

    ld [hl], d
    ld h, l
    ld [hl], e
    ld l, b
    ld hl, $0300
    ld [hl], h
    add hl, bc
    add h
    ld b, $87
    add hl, bc
    nop
    dec b
    rst JumpTable
    inc b

jr_01d_5caa:
    dec b
    ld bc, $2061
    add hl, bc
    add h
    ld b, $88
    add hl, bc
    ld bc, $0320
    ld h, e
    inc bc
    db $e4
    ld b, a
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01d_5d20

    dec b
    dec a
    ld [hl], l
    ld [hl], h
    ld hl, $0c00
    ld [hli], a
    inc bc
    ld [hl], h
    add hl, bc
    add h
    ld b, $88
    add hl, bc
    nop
    dec b
    rst JumpTable
    inc b
    dec b
    ld bc, $2061
    add hl, bc
    add h
    ld b, $89
    add hl, bc
    ld bc, $4d20
    inc bc
    jr nz, jr_01d_5ce4

    db $e4

jr_01d_5ce2:
    ld c, c
    ld [hl], h

jr_01d_5ce4:
    jr nz, jr_01d_5d59

jr_01d_5ce6:
    ld l, l
    dec b
    and e
    ld [hl], e
    inc bc
    ld a, h
    ld l, $00
    inc bc
    add sp, $03
    sbc d
    ld h, h
    ld [bc], a
    or h
    inc c
    ld [hli], a
    add hl, bc
    add h
    ld b, $89
    add hl, bc
    nop
    inc bc
    inc c

jr_01d_5cff:
    ld h, c
    jr nz, jr_01d_5d0b

    add h
    ld b, $8a
    add hl, bc
    ld bc, $0301
    ld [hl], a
    inc bc

jr_01d_5d0b:
    db $e4
    ld c, c
    ld [hl], h
    inc bc
    or [hl]
    ld [hl], e
    inc b
    ret nz

    ld hl, $0200
    ld d, a
    jr nz, jr_01d_5d22

    add h
    ld b, $8b
    ld bc, $0109
    inc b

jr_01d_5d20:
    add hl, hl
    dec b

jr_01d_5d22:
    ld a, a
    inc c
    ld [hli], a
    dec b
    sbc $02
    add b
    add hl, bc
    add h
    ld b, $8a
    add hl, bc
    nop
    ld l, $00
    inc bc
    add sp, $03
    sbc d
    ld h, h
    ld [bc], a
    ld l, d
    add hl, bc
    add h
    ld b, $8b
    add hl, bc
    nop
    inc bc
    inc c
    ld h, c
    ld bc, $8409
    ld b, $8c
    add hl, bc
    ld bc, $0320
    ret z

    inc bc
    db $e4
    inc bc
    ld a, [hli]
    ld h, c
    jr nz, jr_01d_5dc6

    ld [hl], l
    ld l, [hl]
    ld h, l
    ld hl, $0c00
    ld [hli], a

jr_01d_5d59:
    ld [bc], a
    dec de
    dec b
    call nc, $de02
    ld bc, $0342
    add $05
    sub $74
    jr nz, jr_01d_5d6d

    di
    ld bc, $6d73
    dec b

jr_01d_5d6d:
    and e
    ld [hl], e
    jr nz, jr_01d_5de4

    ld [hl], a
    ld h, l
    ld h, l
    ld [hl], h
    ld hl, $0c00
    ld [hli], a
    ld [bc], a
    ld [de], a
    inc bc
    jp c, $8005

    ld b, a
    inc b
    ld b, l
    dec b
    ret c

    nop
    inc bc
    add sp, $72
    ld h, l
    ld h, e
    ld h, l
    ld l, c
    db $76
    dec b
    ld a, l
    add hl, bc
    ld bc, $2b05
    daa
    ld [hl], e
    ld [bc], a
    ret nc

    inc bc
    db $e4
    ld [bc], a
    db $ec
    inc bc
    add [hl]
    ld [hl], e
    dec b
    rst AddAToHL
    ld bc, $5902
    ld c, d
    inc bc
    ld a, l
    ld hl, $0300
    or c
    add hl, bc
    ld bc, $8405
    ld b, [hl]
    dec b
    xor h
    ld [bc], a
    call nc, $0109
    inc b
    sbc e
    inc bc
    ld h, b
    ld hl, $5001
    ld l, h
    ld h, c
    ld a, c
    inc bc
    ld d, e
    jr nz, jr_01d_5e26

    inc b
    inc hl
    ld [bc], a

jr_01d_5dc6:
    ld h, [hl]
    ld hl, $0300
    or c
    add hl, bc
    ld bc, $8405
    ld b, [hl]
    inc bc
    ld h, b
    inc b
    ld h, c
    add hl, bc
    ld bc, $6f4d
    ld l, a
    ld [hl], e
    ld l, b
    dec b
    add b
    ld b, [hl]
    inc bc
    ld h, b
    ld hl, $5020
    ld l, h

jr_01d_5de4:
    ld h, c
    ld a, c
    inc b
    ld h, h
    dec b
    ld a, c
    ld h, e
    inc b
    rlca
    add hl, bc
    inc bc
    inc bc
    push bc
    ld hl, $0200
    ld [de], a
    dec [hl]
    jr nc, jr_01d_5e18

    ld c, a
    ld [hl], d
    ld h, l
    ld bc, $0443
    ld c, b
    inc bc
    db $e4
    ld [bc], a
    ld b, b
    ld h, a
    inc b
    add hl, bc
    ld hl, $0200
    inc bc
    add hl, bc
    ld bc, $0254
    ld l, b
    jr nz, @+$4f

    ld h, c
    ld [hl], b
    inc bc
    db $e4
    ld d, b
    inc bc
    sub [hl]

jr_01d_5e18:
    inc b
    push de
    inc bc
    or d
    ld [hl], e
    ld h, l
    ld h, l
    jr nz, jr_01d_5e24

    add h
    ld [bc], a
    or h

jr_01d_5e24:
    ld [hl], h
    ld [bc], a

jr_01d_5e26:
    ld l, b
    dec b
    rst JumpTable
    ld hl, $0200
    dec de
    dec b
    call nc, Call_01d_614d
    ld h, a
    ld l, c
    ld h, e
    ld bc, $6f50
    inc b
    ccf
    inc b
    rst $28
    ld c, c
    ld [hl], h
    jr nz, jr_01d_5eaa

    dec b
    db $e3
    ld [hl], e
    ld bc, $9905
    ld [hl], a
    ld [bc], a
    cp b
    jr nz, jr_01d_5ebc

    ld [hl], l
    ld l, [hl]
    ld bc, $f202
    inc b
    xor h
    ld [hl], h
    ld [hl], e
    ld hl, $0200
    ld b, h
    inc b
    dec b
    jr nz, jr_01d_5e5f

    ld [hl], b
    ld bc, $1c04

jr_01d_5e5f:
    ld [bc], a
    ld c, [hl]
    inc b
    ld d, a
    inc bc
    db $10
    ld hl, $0200
    ld d, a
    ld bc, $0109
    ld [bc], a
    ld e, l
    dec b
    add b
    ld d, e
    inc bc
    ld b, $21
    ld bc, $1a03
    ld [hl], h
    ld [hl], a
    ld l, a
    dec l
    ld l, b
    dec b
    and c
    dec b
    ld a, l
    dec b
    inc l
    inc b
    ld h, c
    ld l, b
    ld [hl], l
    ld h, a
    ld h, l
    ld hl, $0200
    inc bc
    add hl, bc
    ld bc, $e502
    dec b
    ld hl, $3803
    ld d, h
    inc bc
    ld [hl-], a
    ld [bc], a
    ld b, e
    inc bc
    ld d, [hl]
    ld hl, $0c00
    jr c, jr_01d_5ea2

    inc bc
    ld [bc], a

jr_01d_5ea2:
    rst $08
    jr nz, @+$04

    ld a, [de]
    ld hl, $0501
    inc de

jr_01d_5eaa:
    jr nz, @+$76

    ld [bc], a
    ld d, h
    ld [hl], e
    ld bc, $7902
    add hl, bc
    inc bc
    ld d, e
    inc bc
    call nc, $0301
    ld de, $0973

jr_01d_5ebc:
    nop
    inc l
    dec b
    jp nc, $b403

    inc bc
    cpl
    ld [bc], a
    or h
    ld [bc], a
    ld [hl], a
    ld hl, $4700
    ld c, a
    ld b, c
    ld c, h
    dec b
    sbc [hl]
    nop
    ld [bc], a
    dec hl
    ld [bc], a
    add e
    ld bc, $0444
    dec d
    jr nz, @+$4a

    dec b
    add c
    ld l, $01
    inc b
    rst $20
    inc bc
    inc sp
    ld [hl], d
    ld [hl], e
    inc b
    ld a, h
    ld h, c
    jr nz, jr_01d_5eee

    pop bc
    ld l, $20
    ld d, a

jr_01d_5eee:
    ld h, l
    inc b
    and e
    ld [bc], a
    adc e
    ld [hl], h
    ld l, a
    ld bc, $0470
    jp nz, Jump_01d_6563

    ld l, $20
    ld d, a
    inc b
    xor e
    ld bc, $7c05
    inc bc
    dec c
    inc bc
    or d
    ld h, h
    inc b
    dec d
    ld [bc], a
    adc b
    ld [hl], l
    ld [hl], e
    ccf
    ld bc, $0202
    nop
    inc bc
    ld [de], a
    ld [bc], a
    adc e
    ld [hl], h
    ld l, a
    ld bc, $7804
    jr nz, jr_01d_5f8e

    inc b
    jp nz, Jump_01d_6563

    ld l, $01
    ld [bc], a
    ld l, h
    ld h, h
    inc b
    dec d
    ld bc, $6903
    ld [hl], l
    ld [hl], e
    ccf
    ld bc, $0202
    nop
    inc bc
    inc a
    ld l, d
    ld l, a
    ld l, c
    ld l, [hl]
    ld [bc], a
    or h
    ld h, e
    ld l, c
    ld [hl], d
    ld h, e
    ld l, h
    ld h, l
    ld l, $00
    ld b, e
    ld [bc], a
    jr z, jr_01d_5f49

    ld d, l
    inc b

jr_01d_5f49:
    sub d
    ld [bc], a
    xor h
    ld [hl], l
    ld [hl], d
    ld h, a
    ld h, l
    ld l, $00
    ld [bc], a
    ld b, l
    ld [bc], a
    ei
    ld hl, $4701
    ld h, l
    ld [hl], h
    inc b
    inc a
    ld [hl], h
    ld h, c
    inc bc
    ld c, $21
    nop
    ld d, h
    ld [hl], d
    ld a, c
    inc bc
    or b
    ld h, e
    ld l, a
    ld [hl], b
    ld a, c
    ld bc, $e804
    jr nz, jr_01d_5fba

    jr nz, jr_01d_5fd7

    ld l, a
    ld l, $01
    ld c, a
    ld l, [hl]
    jr nz, jr_01d_5f9c

    ld h, h
    ld l, a
    ld l, a
    inc l
    ld [hli], a
    jr nz, jr_01d_5ff4

    ld [hl], h
    ld h, l
    ld [hl], b
    ld bc, $d503
    ld l, $00
    ld c, a
    ld l, [hl]
    jr nz, @+$24

    ld h, h

jr_01d_5f8e:
    ld h, c
    ld l, b
    inc l
    ld [hli], a
    jr nz, jr_01d_6007

    ld [hl], h
    ld h, l
    ld [hl], b
    ld bc, $e904
    ld l, $00

jr_01d_5f9c:
    ld c, a
    ld l, [hl]
    jr nz, jr_01d_5fc2

    ld h, h
    ld h, l
    ld h, l
    inc l
    ld [hli], a
    jr nz, jr_01d_5fab

    ld [hl], b
    dec b
    cp d
    ld [hl], b

jr_01d_5fab:
    ld l, a
    ld [hl], e
    ld h, l
    ld l, $00
    ld [bc], a
    sub l
    ld l, l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01d_602d

    ld [hl], b
    dec b

jr_01d_5fba:
    xor b
    ld h, d
    ld [hl], l
    ld l, l
    ld [hl], b
    inc bc
    sub l
    ld [bc], a

jr_01d_5fc2:
    or h
    ld [bc], a
    rst $20
    inc bc
    db $ec
    inc bc
    add hl, de
    ld bc, $cb02
    jr nz, jr_01d_5fd2

    inc b
    dec b
    cp e
    ld d, l

jr_01d_5fd2:
    ld l, l
    ld l, l
    dec b
    ld d, l
    nop

jr_01d_5fd7:
    ld c, a
    ld c, e
    ld hl, $4c20
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    inc bc
    inc sp
    ld hl, $0200
    ld b, l
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    ld bc, $e604
    ld l, $20
    ld [bc], a
    ld b, l
    inc b

jr_01d_5ff4:
    ld h, l
    dec b
    ld b, a
    inc bc
    inc sp
    ld [hl], d
    ld bc, $6f74
    ld h, h
    ld h, c
    ld a, c
    ld hl, $0320
    db $fc
    ld bc, $0b03

jr_01d_6007:
    inc b
    pop bc
    ld hl, $5300
    ld l, b
    ld l, b
    dec b
    ld c, b
    inc b
    and e
    inc b
    ld a, b
    inc b
    and [hl]
    nop
    ld [bc], a
    sub l
    ld [hl], h
    ld h, c
    ld l, h
    ld l, e
    ld hl, $5400
    ld l, a
    ld h, h
    ld h, c
    ld a, c
    inc l
    ld [bc], a
    add sp, $64
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld l, c

jr_01d_602d:
    ld [hl], h
    ld h, l
    ld l, h
    ld a, c
    jr nz, jr_01d_60aa

    ld l, c
    ld l, [hl]
    ld bc, $9403
    inc b
    pop bc
    ld hl, $0200
    ld h, c
    inc bc
    ld d, [hl]
    ld bc, $9403
    ld [bc], a
    add hl, de
    ld bc, $0444
    dec d
    ld [bc], a
    call c, Call_01d_6d69
    ld [hl], b
    inc bc
    sub [hl]
    ld [bc], a
    ld e, a
    ld hl, $0300
    or c
    ld [bc], a
    add hl, de
    ld bc, $0444
    dec d
    dec b
    rst JumpTable
    ld [bc], a
    or h
    ld [hl], h
    ld [hl], d
    ld h, c
    ld h, h
    ld l, c
    inc b
    ccf
    ld h, c
    ld l, h
    ld bc, $6164
    ld l, [hl]
    ld h, e
    inc bc
    ld l, d
    add hl, bc
    inc bc
    ld [bc], a
    add e
    add hl, bc
    nop
    ld l, $00
    inc bc
    or c
    ld [bc], a
    add hl, de
    ld bc, $0444
    dec d
    inc bc
    add hl, hl
    inc bc
    ld d, c
    ld bc, $ea04
    dec b
    pop hl
    inc l
    inc b
    ret nz

    ld l, h
    ld a, c
    ld hl, $5200
    inc bc
    add e
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_60b9

    ld h, h
    ld l, a
    ld l, a
    inc l
    ld [hli], a
    ld bc, $e904
    inc b
    or e
    ld [hli], a
    ld h, h
    ld h, c
    ld l, b
    dec b
    ld d, l
    ld [hli], a
    nop
    ld d, b

jr_01d_60aa:
    inc bc
    sub [hl]
    cp b
    cp c
    inc bc
    or b
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $6e6f
    jr nz, jr_01d_60db

jr_01d_60b9:
    ld h, h
    ld h, l
    ld h, l
    ld l, $22
    jr nz, jr_01d_60c3

    inc de
    nop
    ld [bc], a

jr_01d_60c3:
    xor [hl]
    inc bc
    ld d, c
    ld bc, $036d
    add e
    inc bc
    nop
    dec b
    rlca
    ld [bc], a
    or l
    db $76
    ld l, a
    ld [hl], h
    dec b
    ld a, l
    dec b
    ld b, a
    inc bc
    db $eb
    inc bc
    ld a, [bc]

jr_01d_60db:
    ld [hl], e
    ld l, $00
    dec b
    ld d, l
    inc bc
    inc a
    ld l, d
    ld l, a
    ld l, c
    ld l, [hl]
    ld bc, $9403
    ld h, e
    ld l, c
    ld [hl], d
    ld h, e
    ld l, h
    ld h, l
    ld l, $00
    ld c, [hl]
    ld h, l
    dec b
    ld a, l
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, e
    inc b
    ccf
    ld [hl], e
    ccf
    ld bc, $0320

Call_01d_6103:
    cp a
    inc b
    inc b
    nop
    inc bc
    ld a, b
    nop
    inc bc
    ld hl, $0131
    jr nz, jr_01d_6157

    inc b
    ld a, [c]
    ld d, d
    ld l, a
    ld l, a
    ld [hl], h
    ld bc, $2020
    ld b, h
    dec b
    adc d
    nop
    inc bc
    ld hl, $0132
    jr nz, jr_01d_6176

    ld l, [hl]
    ld h, c
    ld l, e
    inc b
    and d
    ld d, d
    inc b
    rst AddAToHL
    nop
    inc bc
    ld hl, $0133
    jr nz, jr_01d_6182

    ld l, a
    ld l, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_6186

    ld l, a
    ld [hl], h
    ld l, b
    dec b
    add b
    jr nz, jr_01d_6160

    ld c, h
    ld h, c
    ld l, c
    ld [hl], d
    nop
    inc bc
    ld hl, HeaderTitle
    jr nz, jr_01d_618f

    ld h, c
    ld l, [hl]

Call_01d_614d:
    ld h, e
    inc bc
    and [hl]
    ld b, h
    dec b
    ret nz

    ld bc, $2020
    ld b, h

jr_01d_6157:
    dec b
    adc d
    nop
    inc bc
    ld hl, $0135
    jr nz, jr_01d_61b5

jr_01d_6160:
    ld l, [hl]
    ld l, c

Jump_01d_6162:
    ld h, e
    ld l, a
    ld [hl], d
    ld l, [hl]
    dec b
    sbc d
    ld b, e
    dec b
    ret nc

    nop
    inc bc
    ld hl, $0136
    jr nz, @+$43

    ld l, [hl]
    ld h, e

Jump_01d_6174:
    ld l, c
    dec b

Call_01d_6176:
jr_01d_6176:
    rst AddAToHL
    jr nz, jr_01d_61cb

    ld [hl], l
    ld l, c
    ld l, [hl]
    ld [hl], e
    nop
    inc bc
    ld hl, $0137

jr_01d_6182:
    jr nz, jr_01d_61c9

    ld a, b
    ld [hl], b

jr_01d_6186:
    ld l, h
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], d
    dec b
    add b
    jr nz, jr_01d_61d2

jr_01d_618f:
    ld [hl], d
    ld a, c
    ld [hl], b
    ld [hl], h
    nop
    inc bc
    ld hl, $0138
    jr nz, jr_01d_619e

    ld b, e
    jr nz, @+$28

    ld [bc], a

jr_01d_619e:
    reti


    ld bc, $4d20
    ld h, c
    ld a, d
    ld h, l
    nop
    jr nz, jr_01d_61f7

    ld l, [hl]
    ld l, a
    ld a, b
    dec b
    sbc d
    ld b, e
    dec b
    xor l
    ld h, l
    nop
    jr nz, jr_01d_6206

    ld l, a

jr_01d_61b5:
    ld l, a
    ld l, l
    inc bc
    db $e3
    ld d, d
    ld l, c
    ld [hl], h
    ld h, l
    ld [hl], e
    nop
    rrca
    db $fd
    ld bc, $bb05
    ld d, a
    ld h, c
    ld [hl], d
    ld [hl], b
    dec b

jr_01d_61c9:
    cp e
    ld b, h

jr_01d_61cb:
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    nop
    dec b
    cp e

jr_01d_61d2:
    ld d, d
    ld h, l
    ld [hl], e
    ld h, l
    dec b
    db $ed
    ld bc, $bb05
    ld b, a
    ld l, a
    inc bc
    or l
    nop
    ld c, [hl]
    ld l, a
    ld [hl], d
    inc b
    daa
    ld l, [hl]
    jr nz, jr_01d_6238

    ld h, l
    ld h, c
    ld l, e
    nop
    ld d, h
    inc b
    ld a, l
    jr nz, jr_01d_6243

    inc b
    rst AddAToHL
    nop
    inc bc
    ld a, e
    ld c, l

jr_01d_61f7:
    ld [bc], a
    and [hl]
    nop
    ld c, l
    ld [hl], h
    ld l, $20
    ld b, e
    ld [hl], l
    ld h, e
    ld h, e
    ld l, a
    nop
    ld c, h
    ld l, a

jr_01d_6206:
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_6261

    ld l, a
    ld l, a
    ld h, h
    ld [hl], e
    nop
    inc bc
    sla b
    ld d, b
    ld l, h
    dec b
    db $db
    nop
    ld c, [hl]
    ld h, c
    ld [hl], h
    ld a, d
    ld [hl], l
    jr nz, jr_01d_626e

    ld [hl], d
    ld h, c
    ld l, c
    ld [hl], d
    ld l, c
    ld h, l
    nop
    ld c, [hl]
    ld h, c
    ld [hl], h
    ld a, d
    ld [hl], l
    jr nz, jr_01d_627e

    ld l, c
    db $76
    ld h, l
    ld [hl], d
    nop
    ld c, [hl]
    ld h, c
    ld [hl], h
    ld a, d
    ld [hl], l
    jr nz, jr_01d_628f

jr_01d_6238:
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    inc b
    ld [$5200], sp
    ld [hl], l
    ld l, c
    ld l, [hl]

jr_01d_6243:
    dec b
    sbc e
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    nop
    inc b
    ret c

    dec b
    sbc d
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    nop
    ld [bc], a
    daa
    nop
    ld [bc], a
    ld hl, $4e00
    inc b
    adc a
    jr nz, jr_01d_62a6

    ld l, a
    ld [hl], d
    ld l, a

jr_01d_6261:
    ld l, [hl]
    nop
    ld b, l
    inc b
    inc sp
    jr nz, jr_01d_62b4

    dec b
    db $e4
    nop
    ld d, a
    ld l, a
    ld l, a

jr_01d_626e:
    ld h, h
    ld [hl], e
    inc bc
    db $e3
    inc bc
    ld a, [hl]
    nop
    ld b, a
    ld [hl], d
    dec b
    ret nc

    ld a, c
    ld h, c
    ld [hl], d
    ld h, h
    nop

jr_01d_627e:
    ld d, a
    ld h, l
    inc b
    xor c
    ld l, [hl]
    jr nz, @+$45

    ld l, a
    ld h, c
    ld [hl], e
    ld [hl], h
    nop
    ld b, l
    ld h, c
    inc b
    xor c
    ld l, [hl]

jr_01d_628f:
    jr nz, jr_01d_62e4

    ld [hl], l
    ld h, d
    ld [hl], l
    ld [hl], d
    ld h, d
    ld [hl], e
    nop
    ld b, l
    ld h, c
    inc b
    xor c
    ld l, [hl]
    jr nz, jr_01d_62e2

    ld l, a
    ld h, c
    ld [hl], e
    ld [hl], h
    nop
    ld d, e
    ld h, c

jr_01d_62a6:
    ld l, l
    ld h, c
    ld [hl], e
    ld h, c
    jr nz, jr_01d_62f0

    inc b
    ld a, [hl]
    nop
    inc bc
    or c
    inc b
    inc c
    nop

jr_01d_62b4:
    ld [bc], a
    ld e, l
    nop
    ld c, c
    ld l, [hl]
    ld h, a
    ld l, a
    inc b
    ld l, h
    nop
    ld [bc], a
    daa
    jr nz, jr_01d_6309

    dec b
    and d
    nop
    dec b
    jp $9a05


    ld d, b
    ld l, a
    inc b
    ccf
    ld bc, $6853
    ld l, a
    ld [hl], b
    nop
    ld b, [hl]
    ld [bc], a
    and b
    ld bc, $654b
    ld h, l
    ld [hl], b
    ld h, l
    ld [hl], d
    inc b
    ld l, h
    nop
    ld b, d
    ld l, h

jr_01d_62e2:
    dec b
    db $db

jr_01d_62e4:
    ld l, a
    dec b
    sbc d
    ld b, a
    ld a, c
    ld l, l
    nop
    ld c, b
    ld l, a
    ld l, h
    ld l, h
    ld a, c

jr_01d_62f0:
    inc b
    ld l, h
    nop
    ld c, l
    ld [hl], d
    ld [hl], e
    ld l, $20
    ld d, d
    ld [hl], l
    ld [hl], l
    ld l, h
    dec b
    add b
    ld d, [hl]
    dec b
    pop de
    ld h, c
    nop
    ld c, c
    ld l, l
    ld [hl], b
    ld h, c
    dec b
    sbc d

jr_01d_6309:
    ld d, d
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld h, a
    ld h, l
    nop
    inc bc
    ld [hli], a
    dec b
    call nz, $2620
    ld bc, $4403
    ld b, d
    ld l, c
    ld [hl], d
    ld h, h
    ld [hl], e
    daa
    jr nz, jr_01d_6369

    ld [hl], l
    ld [hl], h
    nop
    ld c, l
    dec b
    xor [hl]
    jr nz, jr_01d_637b

    ld [hl], l
    ld [hl], l
    ld l, h
    dec b
    add b
    ld d, d
    ld h, l
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    nop
    ld b, e
    dec b
    and [hl]
    dec b
    call nz, Call_01d_5700
    ld l, c
    ld l, [hl]
    ld h, h
    ld l, l
    dec b
    pop de
    nop
    ld d, e
    ld l, b
    ld l, a
    ld [hl], b
    nop
    ld d, [hl]
    ld h, c
    ld [hl], e
    ld [hl], l
    jr nz, jr_01d_639b

    inc bc
    ld a, l
    ld [hl], e
    nop
    ld b, d
    ld l, c
    ld [hl], b
    ld l, c
    ld l, [hl]
    dec b
    sbc d
    ld h, $01
    inc b
    di
    inc b
    ld l, h
    nop
    ld b, d
    ld l, c
    ld l, a
    ld l, h
    ld l, a
    ld h, a

jr_01d_6369:
    ld l, c
    ld [hl], e
    ld [hl], h
    dec b
    sbc d
    ld c, b
    ld l, a
    ld l, l
    ld h, l
    nop
    ld d, h
    dec b

Jump_01d_6375:
    dec d
    jr nz, jr_01d_639e

    jr nz, jr_01d_63c7

    dec b

jr_01d_637b:
    dec d
    dec b
    add b
    ld c, b
    dec b
    push af
    nop
    ld [bc], a
    inc d
    nop
    inc b
    ret nc

    nop
    ld [bc], a
    add hl, de
    ld bc, $0556
    add l
    nop
    ld d, h
    ld h, l
    ld l, l
    ld [hl], b
    ld l, h
    inc bc
    ld l, d
    ld [bc], a
    add h
    nop
    ld [bc], a
    add e

jr_01d_639b:
    jr nz, jr_01d_63f3

    dec b

jr_01d_639e:
    adc h
    nop
    ld d, h
    ld [bc], a
    ld l, b
    jr nz, jr_01d_63ec

    ld [hl], d
    ld l, a
    db $76
    ld h, l
    nop
    ld [bc], a
    add e
    ld bc, $6543
    ld l, l
    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], d
    ld a, c
    nop
    ld [bc], a
    add e
    jr nz, jr_01d_640d

    ld h, l
    ld h, c
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    nop
    ld c, h
    ld h, c
    db $76
    ld h, c
    jr nz, jr_01d_6413

jr_01d_63c7:
    dec b
    db $e4
    nop
    ld [bc], a
    add hl, de
    jr nz, jr_01d_6425

    ld l, c
    ld l, h
    ld h, h
    ld [hl], e
    nop
    ld d, h
    inc bc
    call z, $de02
    nop
    ld d, h
    inc bc
    call z, $0453
    cp h
    nop
    ld d, h
    inc bc
    call z, $0541
    dec h
    nop
    ld d, h
    inc bc
    call z, Call_01d_7e03

jr_01d_63ec:
    nop
    ld [bc], a
    add e
    jr nz, jr_01d_643e

    ld h, c
    ld [hl], d

jr_01d_63f3:
    ld l, e
    ld h, l
    ld [hl], h
    nop
    ld [bc], a
    add hl, de
    jr nz, jr_01d_643e

    ld l, b
    ld h, l
    ld h, [hl]
    dec b
    add b
    ld c, e
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    ld h, l
    ld l, [hl]
    nop
    ld [bc], a
    add hl, de
    ld bc, $0444

jr_01d_640d:
    dec d
    jr nz, jr_01d_6458

    dec b
    add c
    nop

jr_01d_6413:
    ld [bc], a
    add hl, de
    jr nz, jr_01d_646a

    ld l, l
    ld l, c
    ld [hl], h
    ld l, b
    ld a, c
    nop
    ld b, a
    inc b
    add hl, bc
    jr nz, jr_01d_6468

    inc b
    ld e, b
    nop

jr_01d_6425:
    dec b
    add h
    ld b, d
    ld [hl], d
    inc bc
    rrca
    ld [hl], e
    daa
    jr nz, @+$4a

    dec b
    push af
    nop
    ld c, b
    dec b
    push af
    inc bc
    db $e3
    ld d, b
    ld l, c
    ld [hl], d
    dec b
    and d
    ld [hl], e
    nop

jr_01d_643e:
    ld d, e
    ld l, c
    ld h, a
    ld l, [hl]
    dec l
    ld c, h
    ld l, a
    db $76
    inc bc
    rst $00
    ld [bc], a
    add hl, de
    dec b
    sbc d
    ld c, b
    ld l, a
    ld l, l
    ld h, l
    nop
    nop
    ld [bc], a
    db $ec
    ld [hl], h
    dec l
    ld [bc], a
    ei

jr_01d_6458:
    inc l
    ld bc, $000a
    ld hl, $5a01
    ld h, l
    dec l
    ld a, d
    ld h, l
    dec l
    ld a, d

Call_01d_6465:
    ld h, l
    inc bc
    and l

jr_01d_6468:
    ld [bc], a
    dec c

jr_01d_646a:
    inc bc
    adc c
    inc b
    jp hl


    ld bc, $9403
    ld h, e
    dec b
    xor l
    ld h, l
    inc bc
    and $02
    ret nz

    jr nz, @+$04

    sub b
    ld bc, $aa05
    ld h, a
    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h
    ld [bc], a
    pop hl
    ld l, c
    ld [hl], e
    ld bc, $6e6f
    dec b
    ldh [$72], a
    dec b
    ld h, a
    inc bc
    ld c, $03
    and e
    inc bc
    ld a, [de]
    ld l, b
    ld l, a
    ld l, l
    inc bc
    rst $00
    ld [hl], b
    ld l, c
    ld h, a
    ld h, l
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_64a7

    jp $036d


    sub c

jr_01d_64a7:
    ld [bc], a
    jp hl


    jr nz, jr_01d_651f

    ld [hl], d
    ld a, c
    inc bc
    or d
    inc bc
    rst AddAToHL
    ld [bc], a
    dec c
    ld hl, $0201
    jp hl


    ld hl, $e802
    dec b
    ld h, d
    inc b
    inc d
    inc b
    sub [hl]
    ld l, $01
    dec b
    sbc l
    inc bc
    or [hl]
    inc b
    ld [hl], d
    ld l, [hl]
    inc b
    adc a
    ld l, $00
    ld a, [bc]
    nop
    inc l
    dec b
    ld c, c
    ld bc, $7c05
    ld [bc], a
    db $e4
    ld [bc], a
    dec c
    ccf
    ld bc, $6554
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    jr nz, @+$05

    add hl, sp
    ld [hl], e
    ld bc, $6203
    inc bc
    nop
    dec b
    rlca
    ld [hl], a
    ld h, l
    jr nz, @+$04

    ld [$7f04], a
    ld l, b
    ld h, l
    ld [hl], d
    dec b
    db $d3
    dec b
    or $07
    ld bc, $0d02
    ld hl, $0201
    dec c
    ld hl, $0c00
    ld [hli], a
    ld d, e
    ld [hl], l
    ld h, e
    ld l, b
    inc b
    ld c, d
    ld bc, $6c63
    ld l, a
    dec b
    sbc h
    ld [hl], e
    inc bc
    and l
    ld e, c
    ld [bc], a
    ld e, d
    jr nz, jr_01d_657e

    inc b
    sub a
    ld l, b

jr_01d_651f:
    ld l, c
    ld h, a
    ld l, b
    dec l
    ld h, e
    ld l, h
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_01d_652f

    ld l, b
    ld hl, $0401
    ld b, c

jr_01d_652f:
    ld [hl], e
    inc l
    jr nz, jr_01d_659d

    ld h, l
    ld [hl], a
    ld h, l
    ld l, h
    ld [hl], e
    inc l
    ld bc, $0265
    xor $21
    ld bc, $6947
    db $76
    inc b
    cp b
    ld [bc], a
    ld l, d
    db $76
    ld h, c
    ld l, h
    ld [hl], l
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    ld [hl], e
    ld hl, $0c00
    ld hl, $9d05
    dec b
    ld d, l
    inc b
    ld [hl], c
    inc b
    and e
    inc bc
    ld [$6f62], sp
    ld a, c
    ld hl, $4420

Jump_01d_6563:
    inc bc
    or a
    inc bc
    inc hl
    ld [bc], a
    jp nz, Jump_01d_5904

    dec b
    sbc e
    ld l, l
    ld h, l
    jr nz, jr_01d_6575

    inc hl
    inc bc
    sub h
    ld [hl], a

jr_01d_6575:
    ld h, c

Jump_01d_6576:
    ld a, c
    ld [bc], a
    db $d3
    ld [bc], a
    inc b
    inc bc
    or b
    ld h, c

jr_01d_657e:
    ld bc, $2d05
    jr nz, @+$04

    xor a
    ld hl, $0301
    add sp, $05
    rla
    inc bc
    or b
    dec b
    inc bc
    ld bc, $656d
    inc l
    jr nz, @+$04

    ld [$7c05], a
    ld hl, $213f
    ld bc, $0249

jr_01d_659d:
    ld a, d
    ld l, h
    ld h, l
    ld [hl], h
    inc bc
    dec de
    ld bc, $0903
    ld h, e
    ld [hl], d
    ld [hl], l
    ld [hl], e
    ld l, b
    ld [bc], a
    jp nz, $fd04

    inc bc
    ld a, [bc]
    inc bc
    and e
    ld [bc], a
    ld l, $21
    nop
    inc c
    ld [hli], a
    ld c, [hl]
    ld l, a
    dec b
    sbc [hl]
    ld [bc], a
    add sp, $02
    and d
    inc bc
    or e
    ld hl, $0200
    ld de, $e202
    ld [hl], e
    ld h, c
    db $76
    inc bc
    and [hl]
    ld l, l
    ld h, l
    ld [bc], a
    db $d3
    inc b
    jp c, $202e

    ld c, l
    ld a, c
    inc b
    add b
    ld bc, $e505
    ld [bc], a
    dec c
    ld l, $01
    ld e, c
    ld [bc], a
    ld e, d
    inc b
    and h
    ld a, [bc]
    nop
    ld l, $01
    inc b
    db $db
    inc b
    inc l
    ld h, c
    ld [hl], h
    ld bc, $8104
    jr nz, jr_01d_665c

    ld l, h
    inc b
    dec d
    ld l, $00
    inc c
    jr nz, jr_01d_664d

    inc bc
    inc h
    jr nz, jr_01d_6603

Call_01d_6601:
    dec c
    inc bc

jr_01d_6603:
    and e
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    inc bc
    ld d, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    ld bc, $b502
    ld [hl], e
    ld h, c
    ld h, [hl]
    ld h, l
    ld hl, $0301
    ld a, [hli]
    ld h, c
    dec b
    and b
    ld [hl], e
    ld [hl], e
    ld hl, $5701
    ld l, b
    ld a, c
    jr nz, jr_01d_668e

    dec b
    ret nc

    ld [bc], a
    jp nz, $e904

    ld [bc], a
    xor h
    ld h, e
    dec b
    xor l
    ld h, l
    ld bc, $1505
    ld h, l
    ccf
    jr nz, jr_01d_6639

jr_01d_6639:
    inc c
    jr nz, jr_01d_6640

    ld e, d
    ld h, c
    jr nz, @+$04

jr_01d_6640:
    ei
    ld bc, $b803
    inc bc
    and h
    ld a, [bc]
    nop
    inc b
    ld c, e
    ld h, c
    inc b
    ld b, h

jr_01d_664d:
    dec b
    sbc e
    ld h, d
    ld a, c
    dec b
    cp d
    ld h, a
    inc b
    add hl, bc
    jr nz, jr_01d_665c

    ld e, e
    inc bc
    and l
    ld c, c

jr_01d_665c:
    jr nz, jr_01d_66c6

    ld h, c
    ld h, h
    inc bc
    or b
    ld h, h
    ld l, a
    ld bc, $1c02
    inc bc
    and l
    ld a, [bc]
    nop
    inc l
    jr nz, jr_01d_66e1

    inc b
    add d
    ld bc, $ca02
    dec b
    ld [$0401], sp
    db $fd
    inc bc
    inc c
    ld l, l
    ld h, l
    ld l, $00
    inc c
    jr nz, jr_01d_66ce

    ld a, c
    inc bc
    ld d, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    inc bc
    and e
    ld c, c
    ld [hl], h
    inc b
    ld h, c

jr_01d_668e:
    ld [hl], h
    ld l, a
    ld l, a
    ld bc, $da04
    ld l, a
    ld [hl], l
    ld [hl], e
    ld [bc], a
    ld [c], a
    dec b
    ld a, h
    inc bc
    ld c, $2e
    ld bc, $fd03
    jr nz, jr_01d_670a

    ld l, a
    inc bc
    or d
    dec b
    add d
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld h, a
    ld h, l
    ld l, $00
    ld d, a
    ld h, l
    ld l, h
    ld h, e
    ld [bc], a
    jr z, jr_01d_66e3

    ld bc, $000a
    ld l, $00
    rrca
    dec bc
    dec b
    ld d, [hl]
    dec b
    sbc l
    inc bc
    ld l, e
    ld [hl], h
    ld l, c

jr_01d_66c6:
    ld [hl], d
    ld h, l
    ld h, h
    ld l, $01
    ld b, e
    dec b
    ld l, h

jr_01d_66ce:
    ld [bc], a
    add b
    dec b
    ld l, l
    ld bc, $9104
    ld h, c
    jr nz, @+$6f

    ld l, a
    ld l, l
    dec b
    rst AddAToHL
    dec b
    ld d, l
    nop
    rrca
    dec bc

jr_01d_66e1:
    dec b
    ld d, [hl]

jr_01d_66e3:
    ld b, e
    ld [bc], a
    jr z, jr_01d_66e9

    ld d, l
    inc b

jr_01d_66e9:
    ld l, $20
    inc b
    sub d
    jr nz, jr_01d_66f4

    add hl, bc
    ld a, c
    ld l, $00
    ld [bc], a

jr_01d_66f4:
    ld bc, $2d2d
    dec b
    ld d, [hl]
    ld l, c
    ld [hl], e
    dec b
    ld c, e
    jr nz, jr_01d_6772

    ld h, c
    ld h, [hl]
    ld h, l
    ld bc, $9002
    jr nz, jr_01d_676f

    ld l, c
    ld h, h
    dec b

jr_01d_670a:
    ld a, e
    ccf
    ld bc, $6853
    inc b
    and d
    inc bc
    inc d
    ld bc, $e705
    ld h, e
    dec b
    rst $08
    inc b
    sbc h
    ld l, $00
    ld c, b
    ld h, c
    dec l
    ld h, c
    ld l, b
    inc bc
    cp c
    ld c, c
    jr nz, jr_01d_672c

    xor a
    ld bc, $0249
    db $eb

jr_01d_672c:
    jr nz, jr_01d_679b

    dec b
    db $ec
    ld bc, $0102
    ld l, $00
    ld d, e
    ld l, b
    ld l, b
    ld hl, $ba03
    ld [hl], h
    ld [hl], d
    ld a, c
    inc bc
    rst $00
    ld [hl], h
    ld l, a
    inc bc
    rlca
    ld bc, $0102
    ld hl, $4100
    ld [hl], e
    inc bc
    db $db
    jr nz, jr_01d_67b0

    ld [hl], e
    jr nz, @+$04

    dec c
    ld bc, $7369
    inc bc
    ld c, $2c
    ld [bc], a
    or h
    ld [hl], d
    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], e
    ld [bc], a
    cpl
    inc bc
    ld [hl], l
    ld [bc], a
    ld c, d
    inc b
    ld e, c
    ld h, l
    ld h, h
    inc l
    ld [bc], a
    call c, $3a03

jr_01d_676f:
    inc b
    sub [hl]
    inc l

jr_01d_6772:
    ld [bc], a
    call c, Call_01d_4004
    jr nz, jr_01d_67c1

    inc l
    ld [bc], a
    add c
    dec b
    sbc a
    ld h, c
    ld [hl], h
    jr nz, jr_01d_6786

    rst $28
    ld hl, $4700
    ld h, l

jr_01d_6786:
    ld [hl], h
    jr nz, jr_01d_67ea

    inc b
    ld [hl], b
    inc bc
    pop de
    inc bc
    ld c, b
    ld hl, $4f20
    ld [hl], d
    ld bc, $6c65
    ld [hl], e
    ld h, l
    ld [bc], a
    xor c
    dec b

jr_01d_679b:
    inc bc
    ld bc, $3102
    ld hl, $4900
    ld [hl], h
    jr nz, jr_01d_67a8

    cp $01
    ld l, c

jr_01d_67a8:
    ld [hl], d
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld [hl], e

jr_01d_67b0:
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    inc l
    ld bc, $7562
    ld [hl], h
    inc bc
    cp d
    ld h, e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    inc bc

jr_01d_67c1:
    rst $00
    ld l, a
    ld l, [hl]
    inc bc
    add hl, de
    nop
    ld [bc], a
    ld bc, $0501
    push hl
    ld [hl], a
    inc b
    ld h, d
    dec b
    ld a, e
    inc bc
    dec de
    nop
    ld a, [bc]
    nop
    ld [bc], a
    db $76
    inc bc
    or c
    inc b
    call c, Call_01d_7274
    ld l, c
    ld h, c
    ld l, h
    ld bc, $fc02
    ld l, $01
    ld c, b
    ld h, l
    ld h, c
    ld h, h

jr_01d_67ea:
    inc bc
    ld bc, $b203
    inc bc
    sub h
    add hl, bc
    inc bc
    ld [hl], h
    inc b
    ld a, l
    jr nz, jr_01d_67fb

    add e
    dec b
    ld a, a
    ld [hl], e

jr_01d_67fb:
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, h
    ld h, l
    ld h, h
    inc bc
    and $02
    ld d, [hl]
    inc bc
    and l
    dec b
    sbc b
    dec b
    sbc d
    ld b, e
    dec b
    xor l
    ld h, l
    ld [bc], a
    call nc, $2704
    inc bc
    sub c
    ld [bc], a
    jp hl


    jr nz, @+$64

    inc bc
    ld a, $02
    ld b, d
    ld bc, $9f04
    jr nz, @+$75

    ld h, c
    ld h, [hl]
    ld h, l
    ld l, h
    ld a, c
    ld l, $01
    inc bc
    add sp, $75
    ld [bc], a
    jr nz, jr_01d_6831

    inc bc

jr_01d_6831:
    ld e, a
    ld [bc], a
    ld h, $02
    add h
    ld [bc], a
    call c, $1805
    inc b
    rst $28
    ld c, l
    ld h, c
    ld a, c
    ld [bc], a
    or h
    inc bc
    pop bc
    ld l, c
    ld l, a
    ld l, [hl]
    inc bc
    pop de
    inc bc
    sub h
    ld d, h
    ld [hl], d
    ld l, c
    dec b
    daa
    inc b
    and h
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    inc bc
    dec de
    nop
    ld c, c
    inc bc
    ld d, a
    ld [hl], d
    ld h, l
    ld l, h
    ld a, c
    inc b
    sub e
    dec b
    ld c, l

Call_01d_6863:
Jump_01d_6863:
    jr nz, jr_01d_686f

    nop
    inc bc
    and h
    ld d, a
    ld h, l
    inc bc
    ld l, e
    inc b
    inc hl
    ld [hl], d

jr_01d_686f:
    ld h, l
    ld l, h
    ld a, c
    inc bc
    and [hl]
    ld l, a
    ld l, [hl]
    inc bc
    add hl, de
    nop
    ld c, a
    ld [hl], a
    ld hl, $4f20
    ld [hl], a
    ld hl, $4f20
    ld [hl], a
    ld hl, $0321
    and e
    ld d, a
    inc b
    ld h, d
    jr nz, @+$05

    add h
    ld bc, $b502
    ld h, a
    ld l, a
    dec b
    and $21
    ld bc, $9d05
    ld [bc], a
    xor l
    ld l, b
    ld l, c
    ld [hl], h
    ld bc, $f302
    inc l
    ld [bc], a
    xor h
    ld b, a
    inc b
    add hl, bc
    ld bc, $6957
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01d_68b3

    jp $8005


    dec b
    db $f4

jr_01d_68b3:
    dec b
    rst AddAToHL
    ld l, c
    ld h, e
    ld h, l
    ld hl, $0201
    inc a
    dec b
    add c
    ld [bc], a
    xor h
    inc bc
    call c, Call_01d_6601
    dec b
    and e
    jr nz, jr_01d_68ca

    ld a, [c]
    ld l, l

jr_01d_68ca:
    ld a, c
    ld bc, $6162
    ld h, a
    inc bc
    sub a
    jr nz, jr_01d_691a

    inc b
    add hl, bc
    ld bc, $6957
    ld [hl], h
    ld h, e
    ld l, b
    ld [bc], a
    ld c, d
    ld l, l
    ld h, c
    ld h, h
    ld hl, $0201
    add hl, hl
    inc bc
    rst AddAToHL
    ld h, c
    ld l, [hl]
    ld a, c
    ld bc, $0109
    inc b
    ld [hl-], a
    jr nz, jr_01d_6935

    ld h, a
    ld h, a
    ld [hl], e
    inc b
    ld [hl], l
    inc bc
    jp hl


    ld l, [hl]
    ld l, a
    ld [hl], a
    inc bc
    or e
    inc bc
    and l
    dec b
    ld h, [hl]
    ld [bc], a
    xor l
    inc b
    dec de
    inc bc
    sub h
    inc bc
    call c, $c202
    inc b
    inc [hl]
    inc bc
    ld [bc], a
    ld bc, $6946
    inc b
    cp $73
    jr nz, @+$07

    ld [$7265], sp
    ld [hl], e

jr_01d_691a:
    ld hl, $0500
    sbc l
    ld [bc], a
    ld [hl], l
    inc bc
    rst $20
    ld [bc], a
    inc a
    ld h, l
    ld [bc], a
    xor $04
    inc d
    ld l, l
    ld a, c
    ld bc, $6162
    ld h, a
    jr nz, jr_01d_6997

    ld l, h
    ld h, l
    ld [hl], a
    inc b

jr_01d_6935:
    inc a
    ld hl, $5901
    ld [bc], a
    ld e, d
    inc b
    and h
    ld h, d
    ld [hl], d
    ld h, c
    db $76
    inc bc
    add l
    ld l, b
    ld l, c
    ld [hl], h
    ld bc, $f302
    jr nz, @+$04

    xor a
    ld hl, $0501
    ld h, [hl]
    ld [bc], a
    xor l
    inc b
    dec de
    inc bc
    dec bc
    inc bc
    call c, $0203
    ld bc, $6505
    jr nz, jr_01d_6964

    rst $30
    ld hl, $4f00
    dec l

jr_01d_6964:
    ld d, l
    dec l
    ld b, e
    dec l
    ld c, b
    dec l
    inc b
    db $eb

Jump_01d_696c:
    dec b
    sbc l
    dec l
    dec l
    ld b, c
    ld b, a
    ld b, c
    ld c, c
    ld c, [hl]
    ccf
    ld bc, $6f44
    jr nz, jr_01d_69f4

    ld [bc], a
    ld c, c
    dec b
    cp d
    ld h, a
    ld [hl], d
    ld [hl], l
    ld h, h
    ld h, a
    ld h, l
    ld [bc], a
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $656d
    jr nz, jr_01d_69fd

    ld [hl], d
    inc bc
    sbc h
    ccf
    ld bc, $3c02
    dec b
    add c

jr_01d_6997:
    ld [bc], a
    xor h
    inc bc
    call c, Call_01d_6601
    ld l, h
    ld h, l
    ld [hl], a
    jr nz, jr_01d_69a4

    ld a, [c]
    ld l, l

jr_01d_69a4:
    ld a, c
    ld bc, $6162
    ld h, a
    dec b
    ld c, b
    ld l, h
    ld l, h
    inc l
    ld [bc], a
    add sp, $04
    add h
    inc b
    sub h
    ld [bc], a
    ld l, d
    inc bc
    call c, $0203
    nop
    ld b, c
    ld c, b
    ld hl, $4120
    ld l, h
    ld l, h
    inc b
    cp c
    inc bc
    call c, Call_01d_6601
    ld l, h
    ld h, l
    ld [hl], a
    jr nz, jr_01d_69cf

    ld a, [c]
    ld l, l

jr_01d_69cf:
    ld a, c
    ld bc, $6162
    ld h, a
    ld hl, $a902
    inc bc
    db $ed
    inc bc
    ld h, c
    inc b
    add sp, $02
    jp nz, $3404

    inc bc
    ld [bc], a
    ld bc, $5a05
    daa
    ld l, h
    ld l, h
    dec b
    dec a
    ld [hl], a
    ld [bc], a
    jp nz, $e804

    jr nz, @+$05

    nop
    ld [hl], e

jr_01d_69f4:
    ld bc, $0277
    cp b
    jr nz, jr_01d_69fd

    db $dd
    ld [bc], a
    di

jr_01d_69fd:
    jr nz, jr_01d_6a6c

    ld h, c
    ld h, h
    ld hl, $4f00
    ld [hl], l
    ld h, e
    ld l, b
    inc bc
    and l
    ld b, d
    ld h, c
    ld h, e
    ld l, e
    ld [bc], a
    ld [hl], l
    ccf
    ld bc, $b103
    inc bc
    call c, $6620
    ld l, h
    ld h, l
    ld [hl], a
    ld bc, $f202
    dec b
    add d
    ld h, d
    ld h, c
    ld h, a
    ld hl, $0301
    add hl, bc
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld [bc], a
    sub [hl]
    dec b
    ld a, c
    inc bc
    ld h, c
    inc b
    add sp, $02
    jp nz, $3404

    inc bc
    ld [bc], a
    nop
    ld d, a
    ld h, l
    jr nz, @+$06

    ld h, [hl]
    ld [bc], a
    ld [hl], l
    ld hl, $0501
    sbc l
    inc bc
    adc h
    ld [bc], a
    or h
    ld h, h
    ld [hl], d
    dec b
    pop de
    ld hl, $4620
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], e
    ld [hl], h
    ld bc, $ad04
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld l, $01
    dec b
    or c
    ld a, c
    ld l, $2e
    ccf
    jr nz, jr_01d_6aad

    ld l, a
    ld hl, $4800
    ld h, c
    ld l, b

jr_01d_6a6c:
    inc bc
    ld h, h
    jr nz, jr_01d_6abe

    ld l, a
    ld [hl], a
    ld bc, $b502
    ld [hl], e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    dec b
    sub $01
    ld [bc], a
    push af
    inc b
    inc e
    inc bc
    call c, Call_01d_7401
    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, @+$05

    db $10
    ld hl, $5301
    ld h, l
    ld h, l
    jr nz, jr_01d_6b0b

    ld h, c
    ld hl, $4100
    ld [hl], l
    ld h, a
    ld l, b
    ld hl, $7104
    ld l, $2e
    ld hl, $0301
    add hl, bc
    ld [bc], a
    and d
    ld bc, $fd04
    ld hl, $4800
    ld l, l
    ld l, l
    dec b

jr_01d_6aad:
    ld e, [hl]
    ld [hl], h
    dec b
    jp hl


    inc bc
    and e
    inc b
    cpl
    ld [hl], h
    ld [bc], a
    db $dd
    inc b
    inc hl
    dec b
    ld a, h
    inc bc
    ld b, b

jr_01d_6abe:
    ld [hl], h
    ld l, a
    ld h, h
    ld h, c
    ld a, c
    ld l, $00
    ld c, a
    ld [hl], l
    ld h, e
    ld l, b
    ld [bc], a
    db $76
    ld d, a
    inc b
    ld h, d
    jr nz, @+$05

    add h
    ld bc, $b502
    ld h, a
    ld l, a
    dec b
    and $21
    ld bc, $9d05
    ld [bc], a
    xor l
    ld l, b
    ld l, c
    ld [hl], h
    ld bc, $f302
    inc l
    ld [bc], a
    xor h
    ld b, a
    inc b
    add hl, bc
    ld bc, $6957
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01d_6af7

    jp $8005


    dec b
    db $f4

jr_01d_6af7:
    dec b
    rst AddAToHL
    ld l, c
    ld h, e
    inc bc
    sub c
    ld c, a
    ld l, b
    jr nz, @+$6f

    ld a, c
    ld hl, $0200
    ld b, b
    ld l, a
    ld l, [hl]
    inc bc
    ld l, d
    inc b

jr_01d_6b0b:
    call nz, $d405
    inc b
    ld [hl-], a
    ld bc, $6745
    ld h, a
    ld [hl], e
    add hl, bc
    nop
    ld [bc], a
    sbc b
    dec b
    rst $08
    ld bc, $8105
    ld [bc], a
    xor h
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    ld bc, $6903
    dec b
    ld l, b
    ld [hl], e
    inc b
    dec b
    ld hl, $4901
    ld [hl], h
    daa
    ld [hl], e
    ld [bc], a
    xor l
    inc b
    add sp, $01
    ld c, c
    daa
    ld l, l
    inc bc
    or [hl]
    inc bc
    and [hl]
    dec b
    sbc $21
    ld bc, $4502
    ld h, c
    dec b
    ld l, c
    ld hl, $0201
    ld a, $20
    ld l, [hl]
    ld h, l
    dec b
    ld a, l
    ld l, c
    ld [hl], h
    ld l, $02
    xor c
    inc bc
    sbc $03
    jp nc, $8205

    ld h, h
    ld l, a
    ld l, h
    ld l, h
    ld [bc], a
    ld [c], a
    ld l, c
    ld [hl], h
    ld hl, $0300
    ld a, [de]
    dec b
    ld [de], a
    ld [hl], e
    inc b
    ld [hl], d
    dec b
    sbc $02
    add b
    ld h, d
    ld [hl], l
    ld l, l
    ld [hl], b
    inc bc
    rst $00
    dec b
    ld a, $05
    and b
    dec b
    add [hl]
    ld hl, $4100
    ld l, b
    ld hl, $2e01
    jr nz, jr_01d_6bb3

    jr nz, @+$30

    jr nz, jr_01d_6bb7

    jr nz, @+$30

    jr nz, jr_01d_6b90

    and h
    ld b, d
    ld a, c

jr_01d_6b90:
    ld h, l
    ld hl, $0014
    add hl, bc
    inc b
    ld [bc], a
    ld h, b
    inc bc
    ld l, l
    ld bc, $4305
    ld l, $20
    dec b
    ld c, [hl]
    ld [bc], a
    or h
    ld [hl], h
    inc b
    ld a, l
    inc b
    ld c, e
    ld h, d
    ld [hl], l
    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    dec b
    ld l, [hl]
    ld [hl], h
    ld l, b
    inc b

jr_01d_6bb3:
    add l
    jr nz, jr_01d_6c26

    inc bc

jr_01d_6bb7:
    dec d
    ld bc, $7c05
    inc bc
    inc bc
    dec b
    ld h, c
    ld [bc], a
    ld [hl], e
    inc b
    ld b, $05
    and b
    ld l, $00
    add hl, bc
    ld bc, $1a03
    ld d, h
    ld h, l
    ld l, l
    ld [hl], b
    ld l, h
    inc bc
    ld l, d
    ld [bc], a
    add h
    inc bc
    push hl
    ld [hl], a
    ld [bc], a
    db $f4
    ld [hl], a
    ld h, l
    jr nz, jr_01d_6c43

    inc b
    ld h, l
    inc b
    dec [hl]
    jr nz, jr_01d_6c55

    ld h, l
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld l, $00
    add hl, bc
    ld [bc], a
    inc bc
    xor $04
    sbc c
    dec b
    sbc e
    ld h, c
    ld bc, $6f6c
    ld l, [hl]
    ld h, a
    inc bc
    ld a, [bc]
    ld [bc], a
    ld [c], a
    dec b
    inc d
    jr nz, jr_01d_6c44

    ld l, a
    ld [bc], a
    jp nz, Jump_01d_696c

    ld l, e
    ld h, l
    ld [bc], a
    sub $3f
    ld bc, $724f
    ld [bc], a
    or [hl]
    ccf
    ld bc, $0546
    add c
    inc l
    jr nz, jr_01d_6c87

    inc bc
    dec d
    ccf
    nop
    add hl, bc
    inc bc
    inc b
    cpl
    ld l, [hl]
    ld l, a
    ld hl, $5920
    ld [bc], a
    ld e, d

jr_01d_6c26:
    ld bc, $6f6c
    db $76
    ld h, l
    jr nz, jr_01d_6c2f

    rst $38
    inc bc

jr_01d_6c2f:
    and e
    ld b, a
    ld h, l
    ld [hl], h
    ld [bc], a
    xor h
    ld d, d
    ld l, a
    ld h, h
    inc bc
    pop de
    ld [bc], a
    add h
    ld [bc], a
    call c, $c505
    jr nz, @+$77

    ld [hl], e

jr_01d_6c43:
    dec b

jr_01d_6c44:
    ld l, $04
    sbc c
    inc b
    inc d
    inc b
    sbc d
    inc bc
    pop de
    inc bc
    sub h
    ld h, [hl]
    inc b
    ld a, $63
    ld l, a
    ld [hl], d

jr_01d_6c55:
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld bc, $6f74
    ld [hl], a
    ld h, l
    ld [hl], d
    ld [hl], e
    ld hl, $0900
    inc bc
    ld [bc], a
    ld de, $e202
    ld h, e
    ld l, a
    ld l, l
    dec b
    ld a, e
    inc l
    jr nz, jr_01d_6c72

Jump_01d_6c6f:
    rst JumpTable
    inc bc
    pop de

jr_01d_6c72:
    inc bc
    sub h
    ld h, e
    inc b
    db $ec
    dec b
    ld a, l
    ld l, b
    dec b
    and c
    ld l, $20
    inc bc
    or c
    inc bc
    ld de, $0501
    ld a, d
    inc bc
    ld a, [hl]

jr_01d_6c87:
    inc bc
    ld d, d
    inc bc
    add [hl]
    inc b
    sbc c
    dec b
    ld a, e
    ld [bc], a
    ld [c], a
    dec b       ;<TEXT4>
    ld a, h     ;¥
    inc bc      ;<TEXT2>
    and h       ;ç
    ld b, h     ;D
    ld l, c     ;i
    ld l, [hl]  ;n
    inc b       ;<TEXT3>
    ld h, c     ;a
    inc b       ;<TEXT3>
    ld a, $64   ;>d
    dec b       ;<TEXT4>
    call c, $0201
    pop bc
    inc bc
    and l
    ld c, [hl]
    ld l, a
    ld [hl], a
    inc l
    jr nz, jr_01d_6d16

    inc bc
    rst $28
    ld bc, $4705
    ld l, a
    ld [hl], a
    jr nz, jr_01d_6d27

    ld [bc], a
    ld d, h
    ld bc, $7902
    inc bc
    ld de, $d103
    inc bc
    ld a, [hl]
    ld [bc], a
    add d
    ld [hl], d
    ld l, a
    ld h, h
    ld [bc], a
    push de
    inc b
    ld [hl], b
    ld hl, $5701
    ld [bc], a
    cp b
    jr nz, jr_01d_6d41

    ld [hl], a
    inc bc
    rst $00
    inc bc
    sub h
    ld [hl], d
    ld l, a
    ld h, h
    ld [bc], a
    db $d3
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], b
    dec b
    ld a, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld l, l
    ld [hl], b
    inc l
    ld bc, $0274
    jr jr_01d_6cea

    ld [bc], a

jr_01d_6cea:
    add $03
    cpl
    inc bc
    and h
    ld c, c
    ld l, [hl]
    jr nz, jr_01d_6cf5

    rst $38
    inc l

jr_01d_6cf5:
    ld [bc], a
    or h
    inc b
    add [hl]
    ld [hl], e
    jr nz, jr_01d_6d62

    dec b
    ld [c], a
    ld a, d
    ld h, l
    ld bc, $a105
    ld [bc], a
    xor h
    ld [hl], e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld [hl], e
    ld bc, $6970
    ld l, h
    ld h, l
    jr nz, @+$77

    ld [hl], b
    inc bc
    and l
    ld d, [hl]
    ld l, c

jr_01d_6d16:
    ld [hl], e
    ld l, c
    ld [hl], h
    ld [bc], a
    xor h
    inc bc
    rrca
    ld bc, $d903
    jr nz, @+$06

    dec [hl]
    inc l
    ld bc, $6f74

jr_01d_6d27:
    ld l, a
    ld l, $01
    add hl, bc
    inc bc
    rrca
    inc c
    nop
    add hl, bc
    ld bc, $0259
    ld c, c
    jr nz, jr_01d_6d3b

    ld b, e
    inc l
    ld bc, $6461

jr_01d_6d3b:
    ld l, a
    ld [hl], d
    ld h, c
    ld h, d
    ld l, h
    ld h, l

jr_01d_6d41:
    inc bc
    dec a
    ld l, $01
    dec b
    ld c, a
    ld [bc], a
    xor h
    inc bc
    ld de, $0501
    ld a, d
    ld d, e
    inc b
    cp h
    ld l, $01
    ld c, c
    ld l, [hl]
    ld [bc], a
    or [hl]
    inc l
    jr nz, jr_01d_6dd0

    dec b
    ld [hl], b
    ld bc, $e304
    jr nz, jr_01d_6dd5

    dec b

jr_01d_6d62:
    add c
    ld [bc], a
    call c, $0563
    ld [c], a
    ld l, e

Call_01d_6d69:
    ld [hl], e
    jr nz, jr_01d_6dd0

    ld [hl], d
    ld a, c
    jr nz, jr_01d_6de5

    ld [hl], b
    ld l, $01
    ld d, d
    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    inc bc
    sbc b
    inc bc
    and h
    ld b, c
    ld l, [hl]
    ld h, e
    ld l, c
    dec b
    rst AddAToHL
    jr nz, @+$07

    adc l
    ld h, c
    ld l, [hl]
    ld bc, $656c
    ld h, a
    dec b
    rst $38
    ld [hl], e
    dec b
    ld hl, sp+$02
    or h
    dec b
    ld a, [de]
    jr nz, jr_01d_6dfd

    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, [hl]
    inc bc
    ld a, a
    inc b
    ld h, a
    dec b
    add $20
    dec b
    ld a, [c]
    ld bc, $6168
    inc b
    db $e4
    ld b, $57
    inc b
    or e
    ld l, b
    ld l, c
    ld [hl], e
    ld bc, $0d04
    ld l, $01
    ld d, b
    inc bc
    dec d
    ld [bc], a
    jp nz, $cf05

    ld [bc], a
    sub a
    dec b
    ld a, [de]
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], a
    dec b
    ld d, $49
    jr nz, jr_01d_6e34

    ld [hl], d
    ld h, c
    ld l, [hl]

jr_01d_6dd0:
    ld [hl], h
    ld bc, $d203
    ld [hl], h

jr_01d_6dd5:
    ld [bc], a
    ld d, h
    ld bc, $7902
    inc bc
    ld de, $0501
    ld a, d
    ld d, e
    inc b
    cp h
    ld hl, $0900

jr_01d_6de5:
    ld bc, $0c0f
    nop
    add hl, bc
    inc b
    dec b
    ld c, a
    ld [bc], a
    xor h
    inc bc
    ld de, $0501
    ld a, d
    ld [bc], a
    sbc $03
    and h
    ld d, d
    ld l, a
    ld h, e
    ld l, e
    dec l

jr_01d_6dfd:
    dec b
    ld a, [bc]
    jr nz, jr_01d_6e63

    ld [hl], l
    ld h, h
    ld [hl], e
    ld bc, $c705
    jr nz, jr_01d_6e72

    ld l, [hl]
    ld [bc], a
    sub $2e
    ld bc, $7449
    inc bc
    add hl, hl
    jr nz, jr_01d_6e87

    inc bc
    call nc, $0501
    ld a, d
    ld h, h
    ld l, c
    ld [hl], e
    ld h, e
    inc b
    ld h, a
    ld a, c
    ld l, $01
    ld d, h
    ld l, a
    ld [bc], a
    ldh [rSC], a
    rst $00
    ld bc, $6461
    ld h, h
    inc bc
    or b
    ld [hl], h
    ld [bc], a
    ld d, h
    ld bc, $7902

jr_01d_6e34:
    dec b
    ld a, [de]
    ld [bc], a
    sbc a
    inc bc
    sub h
    ld b, $57
    jr nz, jr_01d_6e42

    ld e, h
    ld hl, $4901

jr_01d_6e42:
    jr nz, jr_01d_6eb0

    ld l, a
    ld h, c
    ld l, [hl]
    inc b
    dec l
    ld [bc], a
    or h
    inc bc
    jr jr_01d_6e50

    cpl
    inc bc

jr_01d_6e50:
    ld de, $d103
    ld [bc], a
    sbc $21
    nop
    add hl, bc
    inc b
    rrca
    inc c
    nop
    add hl, bc
    inc b
    dec b
    ld c, a
    ld [bc], a
    xor h
    inc bc

jr_01d_6e63:
    ld de, $0501
    ld a, d
    ld b, c
    dec b
    dec h
    ld l, $20
    ld c, l
    ld a, c
    ld bc, $7574
    ld [hl], d

jr_01d_6e72:
    ld l, [hl]
    jr nz, @+$04

    db $fc
    ld hl, $0301
    cp e
    ld [hl], e
    ld h, c
    ld a, c
    jr nz, jr_01d_6e83

    sbc l
    inc bc
    push hl
    ld l, h

jr_01d_6e83:
    dec b
    reti


    ld l, h
    ld a, c

jr_01d_6e87:
    ld [bc], a
    adc h
    ld l, [hl]
    ld l, a
    inc bc
    and e
    ld d, b
    ld l, c
    ld [hl], h
    ld [hl], e
    inc bc
    ld l, e
    inc bc
    rst $38
    ld bc, $6903
    inc b
    sbc l
    ld h, l
    ld l, [hl]
    ld bc, $2f05
    ld [hl], e
    ld [bc], a
    call c, $036d
    jr nz, jr_01d_6f19

    inc bc
    ld b, c
    ld [hl], d
    ld l, c
    ld [hl], b
    ld h, l
    ld [bc], a
    ld [c], a
    ld [hl], b
    dec b

jr_01d_6eb0:
    db $e3
    dec b
    ld a, e
    inc bc
    and e
    dec b
    ld c, [hl]
    jr nz, @+$06

    ld e, e
    ld [hl], e
    ld bc, $0466
    rlca
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_6ec8

    adc l
    inc l
    ld bc, $0361

jr_01d_6ec8:
    dec a
    ld [bc], a
    add l
    inc b
    ld e, l
    inc bc
    and l
    ld c, c
    ld [hl], e
    ld [bc], a
    sbc b
    dec b
    ld a, [de]
    ld bc, $7c05
    inc bc
    rst $20
    inc bc
    inc a
    ld c, c
    jr nz, jr_01d_6f46

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld [bc], a
    jp nz, $0561

    dec h
    daa
    ld [hl], e
    ld [bc], a
    adc c
    ld hl, $0900
    inc b
    rrca
    inc c
    nop
    ld [bc], a  ;02
    jp hl       ;e9


    jr nz, jr_01d_6f5f  ; •o

    ld [hl], l  ;u
    ld [hl], d  ;r
    ld [hl], d  ;r
    ld a, c     ;y
    inc bc      ;03
    or d        ;b2
    ld b, h     ;D
    ld l, c     ;i
    ld l, [hl]  ;n
    dec b       ;05
    sbc d       ;9a
    ld h, c     ;a
    ld l, c     ;i
    ld h, h     ;d
    ld l, $00
    ld c, [hl]
    ld l, a
    ld [hl], a
    ld [bc], a
    xor h
    ld d, d
    ld l, a
    ld h, h
    inc bc
    pop de
    ld [bc], a
    add h
    jr nz, jr_01d_6f7d

    ld h, c
    ld [hl], e
    ld [bc], a
    or h

jr_01d_6f19:
    inc bc
    jr @+$75

    inc bc
    db $e3
    inc b
    inc hl
    ld h, [hl]
    inc b
    ld a, $02
    ld [hl], a
    ld l, $01
    ld [bc], a
    dec hl
    dec b
    add c
    ld [bc], a
    or h
    inc b
    cp d
    jr nz, jr_01d_6fa8

    ld h, l
    inc bc
    or h
    dec b
    jr nc, @+$05

    add hl, de
    ld bc, $1b05
    inc bc
    dec e
    ld l, a
    ld [hl], l
    ld [hl], e
    ld bc, $7c05
    ld [hl], h
    inc bc
    cp c

jr_01d_6f46:
    ld b, h     ;D
    ld l, c     ;i
    ld l, [hl]  ;n
    ld [bc], a  ;<02>
    call c, $0704   ;<dc><TEXT3><DIALOGUE1>
    inc bc
    rlc e
    ld b, c
    ld h, e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    inc bc
    and [hl]
    ld l, a
    ld l, [hl]
    inc bc
    add hl, de
    nop
    add hl, bc
    inc b

jr_01d_6f5f:
    rrca
    dec c
    nop
    add hl, bc

Call_01d_6f63:
    inc b
    rrca
    dec c
    nop
    add hl, bc
    inc bc
    inc b
    and b
    ld h, d
    ld [hl], d
    ld [bc], a
    and e
    ld d, d
    ld l, a
    ld h, h
    jr nz, @+$04

    ld a, [hl-]
    ld bc, $7905
    ld [hl], l
    ld [hl], e
    jr nz, jr_01d_6fcf

    inc bc

jr_01d_6f7d:
    call nc, $0301
    ld de, $0273
    ld c, b
    ld h, [hl]
    inc b
    ld a, $74
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld [hl], e
    ld hl, $0900
    inc bc
    ld b, d
    inc b
    ld d, c
    ld [bc], a
    xor h
    ld d, d
    ld l, a
    ld h, h
    inc bc
    pop de
    ld [bc], a
    add h
    ld [bc], a
    sbc b
    ld l, c
    ld [hl], e
    ld bc, $6f77
    ld [hl], d
    inc b
    ld [hl], h
    ld [hl], b

jr_01d_6fa8:
    ld h, l
    ld h, h
    inc bc
    and $03
    sub h
    ld [hl], h
    inc b
    ld a, l
    ld hl, $0200
    add [hl]
    ld hl, $4f20
    ld l, [hl]
    ld l, h
    ld a, c
    ld bc, $ca02
    inc b
    ld h, e
    ld bc, $0350
    inc h
    jr nz, @+$07

    dec hl
    ld hl, $0200
    ld de, $2021
    ld e, c
    inc b

jr_01d_6fcf:
    ld h, l
    inc b
    ld [$6820], a
    ld h, c
    ld [hl], e
    ld [bc], a
    call z, Call_01d_7401
    ld [bc], a
    jr @+$05

    or l
    ld bc, $5902
    inc b
    ld [$002e], sp
    add hl, bc
    inc b
    rrca
    ld [de], a
    nop
    add hl, bc
    ld bc, $120f
    nop
    add hl, bc
    inc b
    rrca
    ld [de], a
    nop
    add hl, bc
    inc bc
    rrca
    ld [de], a
    nop
    add hl, bc
    inc b
    rrca
    inc de
    nop
    add hl, bc
    ld bc, $130f
    nop
    add hl, bc

Call_01d_7004:
    inc b
    rrca
    inc de
    nop
    add hl, bc
    inc bc
    rrca
    inc de
    nop
    nop
    inc bc
    ld b, e
    ld bc, $a703
    inc b
    inc h
    ld l, [hl]
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, b
    ld h, l
    ld h, h
    ld l, $00
    ld b, a
    ld l, c
    ld h, [hl]
    ld [hl], h
    inc bc
    db $e3
    dec b
    and h
    ld bc, $0453
    sub b
    jr nz, jr_01d_708f

    ld [hl], a
    dec b
    db $e4
    ld l, [hl]
    jr nz, jr_01d_7095

    ld [hl], e
    ld bc, $7702
    jr nz, jr_01d_703d

    cpl
    ld l, $00

jr_01d_703d:
    ld [bc], a
    cp l
    ld bc, $0453
    db $76
    inc bc
    sbc l
    ld bc, $0475
    cp $20
    ld [hl], a
    ld h, c
    ld [hl], d
    ld l, l
    jr nz, jr_01d_70c2

    ld h, c
    ld a, c
    ld [hl], e
    ld l, $00
    ld d, e
    ld l, a
    ld [bc], a
    jp Jump_01d_5220


    dec b
    db $db
    ld bc, $0453
    db $76
    jr nz, @+$6f

    inc bc
    ccf
    inc bc
    and $69
    ld [hl], h
    ld [hl], e
    jr nz, @+$66

    ld [hl], d
    ld l, a
    ld [hl], b
    ld [hl], e
    ld l, $00
    dec b
    cp l
    inc bc
    ld a, $04
    call nc, Call_01d_4201
    ld h, c
    ld l, h
    dec b
    add d
    ld h, h
    ld h, c
    ld a, c
    ld [hl], e
    jr nz, @+$07

    cp [hl]
    ld bc, $d102
    jr nz, jr_01d_708e

    ld l, c
    ld l, $00
    ld b, d

jr_01d_708e:
    ld l, h

jr_01d_708f:
    ld l, a
    ld [hl], a
    inc bc
    and [hl]
    ld d, a
    ld l, c

jr_01d_7095:
    ld l, [hl]
    ld h, h
    ld bc, $6957
    ld l, [hl]
    ld h, h
    ld h, d
    ld l, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_01d_7113

    ld l, a
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    ld bc, $6e03
    ld [hl], e
    inc bc
    rst $30
    ld l, $00
    dec b
    ld c, $03
    db $e3
    dec b
    db $eb
    ld bc, $654e
    ld [hl], a
    jr nz, jr_01d_70c0

    rst $38
    jr nz, jr_01d_7121

    ld h, l

jr_01d_70c0:
    ld h, a
    ld l, c

jr_01d_70c2:
    ld l, [hl]
    ld [hl], e
    ld hl, $4300
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    inc bc
    and [hl]
    ld [bc], a
    add h
    ld bc, $a703
    ld [hl], e
    ld [hl], b
    ld [hl], d
    dec b
    pop hl
    inc bc
    and $73
    ld [hl], b
    inc b
    ld d, c
    inc l
    inc bc
    sbc l
    inc bc
    and $73
    inc b
    cp h
    inc l
    jr nz, jr_01d_714a

    dec b
    call c, Call_01d_6601
    ld [hl], d
    ld [hl], l
    ld l, c
    ld [hl], h
    inc b
    inc d
    ld h, [hl]
    inc b
    inc hl
    inc bc
    jp hl


    inc b
    rla
    ld bc, $d702
    jr nz, jr_01d_7100

    rst $38
    inc bc

jr_01d_7100:
    and h
    ld [bc], a
    db $ec
    ld h, c
    ld l, [hl]
    jr nz, @+$07

    rst $38
    inc b
    sbc h
    ld bc, $7963
    ld h, e
    ld l, h
    ld h, l
    inc bc
    db $e3
    inc b

jr_01d_7113:
    rst $38
    ld hl, $0400
    ld l, e
    ld bc, $b103
    inc bc
    jp nz, $0165

    ld b, e
    ld [hl], l

jr_01d_7121:
    ld h, e
    ld h, e
    ld l, a
    jr nz, jr_01d_718c

    ld h, c
    ld h, e
    ld [hl], h
    jr nz, jr_01d_718d

    ld l, a
    ld l, a
    ld l, e
    ld l, $00
    inc b
    ld [hl-], a
    jr nz, @+$47

    ld h, a
    ld h, a
    ld bc, $2041
    dec b
    ld l, b
    dec b
    sbc d
    dec b
    ld b, a
    ld bc, $6562
    ld h, c
    ld [hl], l
    ld [hl], h
    ld a, c
    jr nz, @+$63

    ld l, c
    ld h, h

jr_01d_714a:
    ld l, $00
    ld b, a
    ld l, b
    dec b
    xor l
    ld a, c
    jr nz, jr_01d_7197

    ld l, a
    ld l, h
    ld l, h
    ld bc, $2041
    ld h, e
    dec b
    ld [c], a
    ld [hl], b
    ld a, c
    jr nz, jr_01d_71c4

    ld l, a
    ld l, h
    ld l, h
    ld l, $00
    dec b
    add e
    ld bc, $0341
    adc [hl]
    dec l
    ld [hl], e
    inc bc
    call nc, Call_01d_7d05
    ld [hl], b
    ld l, a
    ld [hl], h
    ld l, $00
    inc b
    dec bc
    ld bc, $6f4d
    ld l, h
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, jr_01d_71e9

    ld l, a
    ld [hl], h
    dec b
    db $d3
    ld [hl], l
    ld [hl], b
    ld l, $00
    inc bc
    ld a, e
    ld d, [hl]

jr_01d_718c:
    ld h, c

jr_01d_718d:
    ld [hl], e
    ld h, l
    ld bc, $0441
    ld c, d
    jr nz, jr_01d_720b

    ld h, c
    ld [hl], e

jr_01d_7197:
    ld h, l
    jr nz, jr_01d_719f

    or d
    ld bc, $7962
    dec b

jr_01d_719f:
    ld a, [hl]
    dec b
    add hl, hl
    ld l, $00
    ld b, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    ld bc, $614d
    ld [hl], d
    ld l, e
    ld h, l
    ld [hl], h
    jr nz, jr_01d_7217

    ld [hl], d
    ld h, l
    ld [hl], e
    ld l, b
    ld l, $00
    inc bc
    ld h, e
    ld bc, $7355
    ld h, l
    ld h, h
    inc bc
    or b
    ld [hl], e
    ld l, b
    dec b
    pop hl

jr_01d_71c4:
    ld bc, $6f6c
    ld [hl], l
    ld h, h
    ld l, h
    ld a, c
    ld l, $00
    ld c, l
    inc bc
    jr nz, jr_01d_71d2

    ld c, l

jr_01d_71d2:
    inc b
    ld d, [hl]
    ld l, h
    ld a, c
    ld bc, $0573
    ld b, b
    dec b
    sbc e
    ld h, [hl]
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld [hl], e
    ld l, $00
    inc bc
    ld [hl], a
    ld bc, $0441

jr_01d_71e9:
    ret nz

    ld l, c
    ld [hl], e
    ld [hl], h
    ld l, c
    ld h, e
    ld bc, $6163
    ld [hl], d
    db $76
    dec b
    ld c, d
    nop
    inc b
    add hl, hl
    ld bc, $6542
    ld [hl], e
    ld [hl], h
    jr nz, jr_01d_726c

    ld [hl], l
    ld h, d
    ld [hl], d
    ld l, c

Call_01d_7204:
    ld h, e
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld bc, $0361

jr_01d_720b:
    cp h
    ld l, $00
    inc bc
    ret z

    ld bc, $2a03
    ld h, c
    jr nz, jr_01d_728a

    ld [hl], l

jr_01d_7217:
    ld l, [hl]
    ld h, l
    ld hl, $4d00
    ld h, c
    ld l, e
    ld [hl], l
    jr nz, jr_01d_7226

    ld c, $01
    ld b, l
    db $76
    ld l, c

jr_01d_7226:
    ld l, h
    dec l
    ld h, e
    ld l, h
    ld h, l
    ld h, c
    ld l, [hl]
    ld [hl], e
    inc bc
    rst $00
    inc bc
    ld a, [$0604]
    ld h, h
    ld l, $00
    inc bc
    ret


    ld bc, $6c50
    ld h, c
    ld l, [hl]
    inc bc
    sbc e
    ld l, c
    ld l, [hl]
    ld bc, $6f73
    ld l, c
    ld l, h
    ld l, $00
    ld c, l
    ld h, c
    ld h, a
    ld l, c
    ld h, e
    ld [bc], a
    ret nc

    ld bc, $0354
    ld [hl-], a
    jr nz, @+$6b

    ld l, [hl]
    ld [bc], a
    ld [c], a
    ld h, c
    inc bc
    xor c
    ld h, c
    ld l, h
    ld l, $00
    ld e, d
    ld l, a
    ld [hl], d
    ld h, c
    dec b
    sbc d
    inc b
    ld l, d
    ld bc, $6948
    ld [hl], h

jr_01d_726c:
    ld [bc], a
    xor h
    ld h, d
    inc b
    sbc d
    ld l, $00
    inc bc

Call_01d_7274:
    ld b, l
    ld bc, $0546
    pop de
    ld [bc], a
    add b
    inc b
    xor h
    ld [hl], h
    ld hl, $0500
    xor e
    jr nz, jr_01d_72ca

    inc bc
    sbc c
    ld bc, $7355
    ld h, l

jr_01d_728a:
    ld [bc], a
    adc b
    ld h, e
    dec b
    rst $08
    ld hl, $0300
    jp c, $9a05

    ld b, a
    inc b
    ld b, l
    ld bc, $0554
    db $e4
    inc bc
    inc l
    inc bc
    or d
    inc bc
    jp c, $002e

    ld [bc], a
    sbc e
    ld bc, $a905
    ld [hl], e
    ld [bc], a
    xor h
    dec b
    and a
    ld hl, $4c00
    dec l
    ld sp, $d002
    jr nz, jr_01d_72f9

    ld l, a
    ld a, b
    ld bc, $ee05
    ld [hl], e
    inc b
    ld h, $01
    dec b
    ld e, c
    jr nz, jr_01d_72c8

    ld d, c
    ld l, $00
    ld c, h

jr_01d_72c8:
    dec l
    ld [hl-], a

jr_01d_72ca:
    ld [bc], a
    ret nc

    jr nz, jr_01d_7310

    ld l, a
    ld a, b
    ld bc, $ee05
    ld [hl], e
    jr nz, @+$05

    reti


    ld bc, $5905
    jr nz, jr_01d_72e0

    ld d, c
    ld [hl], e
    ld l, $00

jr_01d_72e0:
    ld c, h
    dec l
    inc sp
    ld [bc], a
    ret nc

    jr nz, jr_01d_7329

    ld l, a
    ld a, b
    ld bc, $ee05
    ld [hl], e
    jr nz, jr_01d_7355

    ld l, c
    db $76
    ld h, l
    ld bc, $5905
    jr nz, jr_01d_72fb

    ld d, c
    ld [hl], e

jr_01d_72f9:
    ld l, $00

jr_01d_72fb:
    inc b
    sub $02
    reti


    ld bc, $2041
    ld [hl], e
    ld l, l
    inc b
    rlca
    inc b
    nop
    ld l, $00
    ld c, c
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [bc], a
    reti


jr_01d_7310:
    ld bc, $2041
    ld l, h
    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    jr nz, jr_01d_731e

    nop
    ld l, $00
    ld c, l

jr_01d_731e:
    ld l, c
    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], d
    ld [bc], a
    reti


    ld bc, $2041
    ld [hl], d

jr_01d_7329:
    ld h, l
    ld h, [hl]
    dec b
    db $ed
    ld l, c
    db $76
    ld h, l
    ld bc, $0004
    ld l, $00
    inc b
    sub $20
    inc b
    ld b, e
    ld bc, $614d
    ld [hl], d
    ld l, e
    inc bc
    db $e3
    ld h, c
    inc bc
    dec a
    ld l, $00
    ld c, [hl]
    ld l, a
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01d_7351

    ld b, e
    ld bc, $2041

jr_01d_7351:
    inc bc
    ld a, [$6220]

jr_01d_7355:
    ld l, h
    ld h, c
    ld h, h
    ld h, l
    ld l, $00
    ld [bc], a
    push hl
    jr nz, jr_01d_7363

    ld b, e
    ld bc, $b103

jr_01d_7363:
    ld h, d
    ld l, h
    ld h, c
    ld h, h
    inc bc
    ld l, d
    ld l, h
    ld h, l
    ld h, a
    dec b
    rst $38
    ld [hl], e
    ld l, $00
    inc b
    ld b, a
    ld bc, $6556
    ld [hl], d
    ld a, c
    jr nz, @+$67

    ld a, b
    ld [hl], b
    ld l, h
    ld l, a
    ld [hl], e
    ld l, c
    db $76
    ld h, l
    ld l, $00
    ld [bc], a
    ld e, e
    ld bc, $6c41
    ld [hl], a
    ld h, c
    ld a, c
    ld [hl], e
    jr nz, jr_01d_7394

    ld b, e
    ld [hl], e
    ld bc, $9f04

jr_01d_7394:
    dec b
    jp c, $1903

    nop
    ld [bc], a
    ld e, l
    dec b
    sbc d
    inc b
    ld b, e
    ld bc, $0241
    adc c
    ld h, [hl]
    ld [hl], l
    ld l, h
    inc l
    jr nz, jr_01d_741d

    ld [hl], a
    ld l, a
    dec l
    ld bc, $0568
    and c
    dec b
    sbc e
    dec b
    inc l
    nop
    dec b
    xor e
    ld h, e
    ld l, b
    ld [hl], l
    ld bc, $6e41
    jr nz, @+$63

    ld h, h
    db $76
    inc b
    dec d
    ld h, h
    ld bc, $6f68
    ld l, l
    inc bc
    and [hl]
    ld h, d
    ld l, a
    ld l, l
    ld h, d
    ld hl, $5300
    dec b
    ld h, $01
    ld b, c
    jr nz, jr_01d_743f

    dec b
    and c
    ld a, c
    dec b
    jp c, Jump_01d_6c6f

    ld l, $00
    ld [bc], a
    rst $30
    ld bc, $2041
    inc bc
    ld c, c
    ld bc, $6f62
    ld l, a
    inc b
    xor c
    ld l, $00
    ld d, d
    ld l, a
    ld h, e
    dec b
    sbc d
    ld b, [hl]
    inc bc
    ld d, h
    ld bc, $2041
    inc b
    ld [c], a
    jr nz, jr_01d_746a

    ld l, c
    ld h, [hl]
    ld [hl], h

Call_01d_7401:
    ld l, $00
    dec b
    ld c, $20
    ld d, e
    inc b
    ld h, d
    ld h, l
    ld l, h
    ld bc, $2041
    ld h, d
    ld h, c
    ld h, a
    ld [bc], a
    ld [c], a
    ld h, e
    dec b
    db $ec
    inc bc
    and [hl]
    ld [hl], e
    inc b
    sub b
    ld l, $00

jr_01d_741d:
    ld [bc], a
    sbc d
    ld bc, $2041
    ld [hl], d
    dec b
    rst $08
    ld bc, $6e69
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld l, l
    dec b
    rst AddAToHL
    ld l, $00
    inc bc
    jp c, $9a05

    ld b, [hl]
    dec b
    xor h
    ld bc, $2041
    ld h, [hl]
    dec b
    xor h
    ld [bc], a

jr_01d_743f:
    ld [c], a
    ld h, e
    dec b
    add c
    inc bc
    and [hl]
    inc bc
    jp c, $0021

    inc b
    sbc e
    dec b
    xor h
    ld bc, $2041
    ld h, [hl]
    dec b
    xor h
    ld [bc], a
    ld [c], a
    ld h, e
    dec b
    add c
    inc bc
    and [hl]
    ld b, h
    ld l, c
    ld l, l
    ld l, c
    ld [hl], h
    ld [hl], d
    ld l, c
    ld hl, $4d00
    ld l, a
    ld l, a
    ld [hl], e
    ld l, b
    dec b
    sbc d

jr_01d_746a:
    ld b, [hl]
    dec b
    xor h
    ld bc, $2041
    ld h, [hl]
    dec b
    xor h
    ld [bc], a
    ld [c], a
    ld h, e
    dec b
    add c
    inc bc
    and [hl]
    ld c, l
    ld l, a
    ld l, a
    ld [hl], e
    ld l, b
    ld hl, $0400
    ld a, c
    ld [bc], a
    cp d
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    jr nz, jr_01d_7490

    inc e
    ld [hl], e
    ld bc, $6977

jr_01d_7490:
    inc b
    or d
    ld l, $00
    ld d, e
    dec b
    ld b, b
    ld [bc], a
    cp d
    ld b, c
    ld [hl], d
    ld l, a
    ld l, l
    ld h, c
    jr nz, jr_01d_74a4

    daa
    ld h, c
    ld [hl], b
    ld a, c

jr_01d_74a4:
    ccf
    nop
    ld [bc], a
    ldh a, [rSC]
    cp d
    ld c, h
    inc bc
    ld b, a
    jr nz, @+$75

    ld [hl], b
    ld h, l
    ld h, l
    ld h, h
    ld l, $00
    dec b
    pop af
    ld [bc], a
    cp d
    ld b, c
    jr nz, jr_01d_7533

    ld l, c
    ld l, [hl]
    ld h, h
    ld a, c
    jr nz, jr_01d_7536

    ld [hl], d
    ld l, c
    ld [hl], b
    ld l, $00
    ld [bc], a
    jr c, jr_01d_74cb

    ld b, c

jr_01d_74cb:
    jr nz, jr_01d_74d0

    ld l, [hl]
    ld [hl], d
    inc bc

jr_01d_74d0:
    pop de
    ld [hl], l
    ld l, [hl]
    inc b
    sbc b
    ld l, [hl]
    jr nz, jr_01d_74dc

    db $dd
    ld [hl], e
    ld l, $00

jr_01d_74dc:
    inc b
    ld a, c
    ld [bc], a
    cp d
    ld b, c
    jr nz, jr_01d_7545

    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc bc
    db $e3
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    ld hl, $5300
    dec b
    ld b, b
    ld [bc], a
    cp d
    ld b, c
    ld l, [hl]
    jr nz, jr_01d_7559

    ld [hl], d
    ld l, a
    ld l, l
    ld h, c
    ld [hl], h
    ld l, c
    ld h, e
    ld bc, $0562
    or e
    ld hl, $0200
    ldh a, [rSC]
    cp d
    ld d, e
    ld [hl], h
    ld h, l
    ld h, c
    ld l, h
    ld [hl], e
    jr nz, jr_01d_7584

    ld [hl], b
    ld h, l
    ld h, l
    ld h, h
    ccf
    nop
    dec b
    pop af
    ld [bc], a
    cp d
    ld b, c
    jr nz, jr_01d_758b

    inc b
    dec h
    ld a, c
    jr nz, jr_01d_7585

    ld l, h
    ld l, a
    ld [hl], a
    ld hl, $0200
    jr c, jr_01d_752c

    ld b, c

jr_01d_752c:
    jr nz, jr_01d_7531

    ld l, [hl]
    ld [hl], d
    inc bc

jr_01d_7531:
    pop de
    ld l, l

jr_01d_7533:
    ld a, c
    inc b
    xor c

jr_01d_7536:
    ld a, c
    jr nz, jr_01d_753d

    db $dd
    ld [hl], e
    ld l, $00

jr_01d_753d:
    inc b
    ld a, [bc]
    ld bc, $7355
    ld h, l
    ld h, h
    inc bc

jr_01d_7545:
    or b
    ld [hl], e
    ld l, b

Call_01d_7548:
    ld l, a
    ld l, a
    ld [hl], h
    ld bc, $0473
    sub b
    ld l, $00
    ld c, b
    ld a, c
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_01d_755c

    ld a, [bc]

jr_01d_7559:
    ld bc, $0453

jr_01d_755c:
    db $76
    inc b
    inc d
    inc bc
    reti


    ld bc, $6964
    ld [hl], d
    ld h, l
    ld h, e
    inc b
    ccf
    ld [hl], e
    ld l, $00
    ld d, d
    ld l, a
    ld h, e
    dec b
    sbc d
    ld b, e
    ld h, c
    ld [hl], b
    ld h, l
    ld bc, $2041
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h
    dec l
    ld [hl], d
    ld l, c
    ld h, h
    inc bc
    rst $00
    ld h, e
    ld h, c

jr_01d_7584:
    ld [hl], b

jr_01d_7585:
    ld h, l
    ld l, $00
    ld d, h
    ld [hl], d
    ld h, c

jr_01d_758b:
    ld h, h
    inc bc
    ei
    ld bc, $6f4e
    ld [hl], h
    jr nz, @+$63

    ld [hl], e
    inc b
    xor d
    dec b
    ld e, b
    ld h, c
    inc b
    db $e4
    ld h, [hl]
    inc bc
    ld d, h
    ld l, $00
    ld c, l
    ld h, c
    ld h, a
    ld l, c
    ld h, e
    jr nz, @+$04

    ld e, e
    ld bc, $2041
    ld [hl], d
    ld h, l
    ld l, l
    ld l, a
    ld [hl], h
    ld h, l
    dec l
    dec b
    ld e, h
    ld [hl], d
    ld l, a
    ld l, h
    ld bc, $6577
    ld h, c
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld l, $00
    ld d, d
    ld l, a
    ld h, h
    jr nz, @+$04

    ld a, [hl-]
    ld bc, $6542
    ld [hl], e
    ld [hl], h
    inc b
    xor d
    ld h, h
    ld [bc], a
    db $d3
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], b
    dec b
    ld a, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld l, l
    ld [hl], b
    ld l, $00
    ld c, l
    inc b
    pop af
    jr nz, @+$49

    inc b
    ld b, l
    ld bc, $044d
    pop af
    dec b
    add c
    ld a, c
    ld bc, $7461
    ld [hl], h
    inc b
    jp nz, Jump_01d_6576

    ld hl, $0200
    push hl
    dec b
    ld hl, $5001
    ld [hl], d
    ld l, a
    ld l, a
    ld h, [hl]
    ld [bc], a
    and c
    ld bc, $5603
    ld l, $00
    ld b, a
    inc b
    ld a, [c]
    ld c, e
    ld h, l
    ld a, c
    ld bc, $654b
    ld a, c
    ld [bc], a
    xor h
    ld c, l
    ld h, c
    ld l, e
    ld [hl], l
    ld bc, $0554
    ld [c], a
    jr nz, @+$69

    dec b
    ret nc

    inc bc
    add hl, de
    nop
    ld b, [hl]
    ld [bc], a
    and b
    jr nz, jr_01d_7672

    ld h, l
    ld a, c
    ld bc, $a905
    ld [hl], e
    ld [bc], a
    or h
    ld h, [hl]
    ld [bc], a
    and b
    ld [hl], e
    ld l, $00
    ld b, h
    dec b
    ret nz

    jr nz, @+$4d

    ld h, l
    ld a, c
    ld bc, $2041
    ld h, h
    dec b
    ret nz

    dec l
    inc b
    ld c, h
    ld h, h
    ld bc, $656b
    ld a, c
    ld l, $00
    ld [bc], a
    sbc $20
    dec b
    adc e
    ld bc, $0341
    rst $30
    ld [bc], a
    adc b
    ld h, c
    ld bc, $7773
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01d_76d3

    dec b
    ld b, b
    ld l, $00
    ld d, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld a, c
    jr nz, @+$44

    dec b
    and e
    ld bc, $2041
    dec b
    ld b, h

jr_01d_7672:
    dec b
    ld a, l
    ld [hl], h
    ld [bc], a
    ld l, b
    ld l, $00
    ld d, b
    ld l, c
    ld [hl], d
    ld h, c
    ld [hl], h
    inc b
    and d
    ld b, d
    dec b
    and e
    ld bc, $7552
    ld l, [hl]
    ld h, a
    inc bc
    or b
    dec b
    ld e, e
    ld h, c
    ld l, h
    ld bc, $2061
    ld h, h
    ld h, l
    dec b
    ld [hl], c
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $00
    ld d, h
    ld [bc], a
    ld l, b
    jr nz, jr_01d_76ec

    ld h, c
    ld [hl], b
    ld bc, $6853
    ld l, a
    ld [hl], a
    ld [hl], e
    jr nz, jr_01d_771d

    ld [bc], a
    ld l, b
    ld bc, $6e6f
    ld [bc], a
    add b
    ld l, l
    ld h, c
    ld [hl], b
    ld l, $00
    ld c, d
    ld h, l
    ld [hl], a
    ld h, l
    ld l, h
    ld bc, $0254
    ld l, b
    jr nz, @+$05

    ld b, d
    ld h, c
    ld bc, $7962
    ld h, a
    inc b
    xor l
    ld h, c
    ld h, a
    ld h, l
    ld l, $00
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d
    dec l
    ld [hl], e

jr_01d_76d3:
    ld l, b
    ld h, c
    ld [hl], b
    inc bc
    ei
    ld bc, $724f
    ld h, l
    inc b
    xor d
    ld h, h
    ld [bc], a
    jp nc, Jump_01d_6162

    ld [hl], d
    ld [hl], h
    ld h, l
    inc b
    ld d, c
    ld l, $00
    ld d, d
    ld l, c

jr_01d_76ec:
    ld h, d
    ld h, d
    ld l, a
    ld l, [hl]
    ld bc, $2041
    ld h, d
    ld l, c
    ld h, a
    inc l
    jr nz, jr_01d_76fd

    ld c, $01
    ld [hl], d
    dec b

jr_01d_76fd:
    sbc e
    ld [hl], d
    ld l, c
    ld h, d
    ld h, d
    ld l, a
    ld l, [hl]
    ld l, $00
    ld d, d
    inc bc
    ei
    ld bc, $6156
    ld l, h
    ld [hl], l
    ld h, c
    ld h, d
    ld l, h
    inc b
    cp b
    ld [hl], h
    ld h, c
    ld l, h
    ld l, $00
    dec b
    jr z, jr_01d_776a

    ld [hl], d
    ld h, l

jr_01d_771d:
    ld bc, $6156
    ld l, h
    ld [hl], l
    ld h, c
    ld h, d
    ld l, h
    inc b
    cp b
    ld [hl], h
    ld h, c
    ld l, h
    ld l, $00
    ld c, b
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_01d_7781

    ld [hl], d
    ld h, l
    ld bc, $7355
    ld h, l
    ld h, h
    inc bc
    or b
    inc b
    push bc
    ld bc, $1c02
    ld l, $00
    ld d, e
    dec b
    ret nc

    ld [bc], a
    ret c

    ld bc, $6f47
    ld [bc], a
    ld b, e
    ld d, e
    dec b
    ret nc

    ld [bc], a
    ret c

    ld l, $00
    ld [bc], a
    ld [hl], b
    ld bc, $2034
    ld l, l
    ld h, c
    ld l, e
    inc b
    sub a
    ld [bc], a
    ld [hli], a
    ld l, $00
    ld [bc], a
    ld [hl], b
    ld bc, $0333
    dec hl
    jr nz, jr_01d_77d6

    ld h, c

jr_01d_776a:
    ld l, e
    inc b
    sub a
    ld [bc], a
    ld [hli], a
    ld l, $00
    ld [bc], a
    ld [hl], b
    ld bc, $0332
    dec hl
    jr nz, jr_01d_77e6

    ld h, c
    ld l, e
    inc b
    sub a
    ld [bc], a
    ld [hli], a
    ld l, $00

jr_01d_7781:
    ld [bc], a
    ld [hl], b
    ld bc, $0331
    dec hl
    jr nz, jr_01d_778e

    ld [de], a
    ld [hl], e
    dec b
    cp d
    ld [bc], a

jr_01d_778e:
    ld [hli], a
    ld l, $00
    ld [bc], a
    ld hl, sp+$73
    ld [hl], b
    inc b
    ld d, c
    ld l, $00
    ld [bc], a
    ld hl, sp+$73
    inc b
    cp h
    ld l, $00
    ld [bc], a
    ld hl, sp+$04
    sbc l
    ld l, $00
    ld [bc], a
    ld hl, sp+$02
    rst $38
    ld l, $00
    ld b, d
    ld h, l
    jr nz, jr_01d_7817

    inc b
    xor l
    inc bc
    db $10
    ld bc, $9403
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    ld [hl], e
    jr nz, @+$69

    ld l, a
    ld bc, $e105
    inc l
    jr nz, jr_01d_7834

    ld [hl], d
    jr nz, jr_01d_782d

    ld l, h
    ld [hl], e
    inc b
    xor b
    nop
    inc c
    ld [hli], a
    ld d, h
    ld [hl], d
    ld a, c
    inc bc
    and [hl]
    ld [hl], h
    ld l, a

jr_01d_77d6:
    ld bc, $f003
    inc b
    cp c
    ld h, e
    dec b
    ld c, h
    ccf
    ld bc, $9502
    dec b
    sbc a
    ld [hl], e
    dec b

jr_01d_77e6:
    pop de
    ld a, c
    ld hl, $4901
    ld [bc], a
    ld a, d
    ld l, h
    ld h, l
    ld [hl], h
    inc bc
    dec de
    nop
    inc c
    jr c, jr_01d_7844

    ld l, a
    ld [hl], h
    dec b
    jp hl


    ld hl, $4220
    ld [hl], l
    ld [hl], h
    ld bc, $7469
    ld [bc], a
    ld a, d
    ld h, a
    ld l, a
    inc b
    db $ed
    ld [hl], a
    dec b
    and e
    jr nz, @+$07

    ld sp, hl
    inc bc
    ld a, [bc]
    ld hl, $5300
    ld l, a
    ld hl, $7104

jr_01d_7817:
    inc bc
    add a
    inc bc
    or d
    inc bc
    ldh a, [rDIV]
    cp c
    ld h, e
    dec b
    ld c, h
    ccf
    ld bc, $3d04
    ld [hl], h
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld h, l
    ld [hl], d

jr_01d_782d:
    inc b
    ld d, a
    dec b
    add d
    ld [hl], e
    ld l, c
    inc b

jr_01d_7834:
    xor c
    ld hl, $4901
    ld [bc], a
    push bc
    dec b
    inc bc
    inc bc
    dec de
    nop
    inc c
    jr c, jr_01d_7897

    ld h, a
    inc bc

jr_01d_7844:
    cp c
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc bc
    ld a, [bc]
    ld bc, $2049
    ld [bc], a
    add $05
    cpl
    ld bc, $3a03
    add hl, bc
    inc bc
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], b
    ld [hl], h
    add hl, bc
    nop
    dec b
    ld d, l
    nop
    ld d, a
    ld h, l
    jr nz, jr_01d_7869

    ld h, [hl]
    ld [bc], a
    ld [hl], l
    inc bc

jr_01d_7869:
    and e
    ld [bc], a
    ld l, h
    inc bc
    ldh a, [rSB]
    inc b
    ld a, $63
    dec b
    ld c, h
    inc l
    dec b
    xor b
    inc bc
    ld h, d
    ld [hl], a
    ld h, l
    jr nz, jr_01d_7880

    ldh a, [rSB]
    dec b

jr_01d_7880:
    ld a, h
    ccf
    ld hl, $e703
    dec b
    and h
    ld [bc], a
    push bc
    inc b
    ld l, b
    ld hl, $0c00
    jr c, jr_01d_78d1

    ld h, c
    ld h, c
    ld h, c
    ld l, b
    ld l, b
    ld l, b
    ld l, b

jr_01d_7897:
    inc b
    db $eb
    ld [bc], a
    ld [hl], c
    ld [hl], a
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    dec b
    ld d, l
    nop
    inc c
    jr c, jr_01d_78f4

    ld l, a
    ld hl, $4e20
    inc b
    ld l, $03
    and l
    inc bc
    add hl, bc
    ld h, e
    ld [bc], a
    jr z, jr_01d_78b5

    dec b

jr_01d_78b5:
    ld a, c
    ld l, b
    ld h, c
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    inc bc
    dec de
    nop
    inc c
    jr c, jr_01d_7902

    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld hl, $0c00
    ld [hli], a
    inc bc
    inc de
    jr nz, jr_01d_78d2

    or c
    ld l, h

jr_01d_78d1:
    inc b

jr_01d_78d2:
    dec h
    ld bc, $9905
    ld [bc], a
    db $f4
    ld l, c
    ld [hl], e
    dec b
    jp c, $016f

    ld h, h
    ld l, c
    ld l, l
    inc bc
    or b
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_01d_794b

    ld a, c
    ld l, $01
    ld b, e
    ld h, c
    ld l, [hl]
    inc b
    ld [hl], $20
    ld l, h
    inc b

jr_01d_78f4:
    dec h
    ld bc, $8205
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    ccf
    nop
    inc c
    ld [hli], a
    ld d, e
    ld [hl], b

jr_01d_7902:
    ld l, h
    dec b

Call_01d_7904:
    rst $38

Jump_01d_7905:
    ld l, c
    ld h, h
    ld hl, $c702
    ld bc, $6d03
    jr nz, jr_01d_7975

    ld l, a
    ld h, e
    ld [hl], l
    ld [hl], e
    ld hl, $0401
    ld e, [hl]
    ld [bc], a
    ld l, $01
    add hl, bc
    ld bc, $6b04
    dec b
    ret c

    nop
    inc c
    ld [hli], a
    ld [bc], a
    dec b
    ld h, c
    dec b
    jp c, Jump_01d_6174

    ld l, h
    inc bc
    db $e3
    ld h, [hl]
    inc b
    ld h, l
    dec b
    adc [hl]
    jr nz, @+$05

    ld e, c
    ld bc, $6203
    inc b
    ld e, l
    inc b
    inc d
    ld h, c
    ld bc, $7105
    ld l, c
    ld h, e
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], d
    inc bc
    inc b
    ld bc, $6e69

jr_01d_794b:
    dec b
    ld a, [hl]
    dec b
    ld [hl], c
    ld l, c
    ld h, e
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], d
    ld bc, $0373
    call nc, Call_01d_5505
    nop
    inc c
    ld [hli], a
    ld [bc], a
    dec b
    ld [bc], a
    inc hl
    add hl, bc
    inc bc
    inc bc
    jp c, $0009

    inc bc
    ld d, $6a
    ld [hl], l
    ld l, l
    ld [hl], b
    ld bc, $6d73
    inc b
    rlca
    dec b
    ld d, b

jr_01d_7975:
    ld [hl], e
    ld [bc], a
    call c, $c805
    ld [hl], e
    jr nz, jr_01d_79e6

    ld l, [hl]
    ld [bc], a
    xor l
    ld h, c
    ld bc, $0573
    ld a, e
    ld l, h
    ld h, l
    jr nz, jr_01d_79eb

    dec b
    db $10
    ld l, $00
    inc c
    ld [hli], a
    ld [bc], a
    dec b
    ld [bc], a
    inc hl
    add hl, bc
    inc bc
    inc bc
    jp c, $e805

    ld [hl], b
    ld h, c
    ld h, e
    ld l, e
    ld [hl], e
    dec b
    cp d
    inc bc
    jr jr_01d_7a09

    ld [hl], l
    ld l, h
    jr nz, jr_01d_7a17

    ld [hl], l
    ld l, [hl]
    ld h, e
    ld l, b
    ld bc, $0803
    inc b
    db $f4
    ld h, l
    ld [hl], e
    ld bc, $7774
    ld l, c
    inc b
    xor c
    ld [hl], e
    ld [bc], a
    jp nc, Jump_01d_6863

    ld h, c
    ld [hl], d
    ld h, a
    dec b
    sbc e
    ld [hl], l
    ld [hl], b
    ld l, $00
    inc c
    ld [hli], a
    ld [bc], a
    dec b
    ld [bc], a
    inc hl
    ld [bc], a
    ld h, [hl]
    jr nz, jr_01d_7a35

    ld h, c
    ld [hl], h
    ld [hl], e
    ld bc, $8f05
    inc b
    or b
    inc bc
    add hl, sp
    inc l
    ld bc, $4004
    jr nz, @+$04

    jp c, $2e73

    nop
    inc c
    ld [hli], a

jr_01d_79e6:
    ld [bc], a
    dec b
    ld [bc], a
    inc hl
    ld [bc], a

jr_01d_79eb:
    ld h, [hl]
    inc bc
    add hl, hl
    ld bc, $d102
    inc b
    ld b, [hl]
    ld l, l
    ld h, l
    ld [hl], d
    inc l
    ld bc, $6877
    ld l, a
    inc bc
    ld d, $73
    ld [hl], a
    ld l, c
    ld l, l
    ld bc, $4004
    jr nz, jr_01d_7a7b

    ld [hl], b
    ld [hl], e
    ld [hl], h

jr_01d_7a09:
    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    ld bc, $6761
    dec b
    db $db
    ld [hl], e
    ld [hl], h
    ld [bc], a
    adc c
    dec b

jr_01d_7a17:
    ld e, b
    ld h, e
    ld [hl], l
    ld [hl], d
    ld [hl], d
    dec b
    rst AddAToHL
    ld [hl], e
    ld l, $00
    inc c
    ld [hli], a
    ld c, l
    ld a, c
    jr nz, @+$64

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_01d_7a30

    inc hl
    dec b
    ld d, [hl]

jr_01d_7a30:
    ld [bc], a
    inc hl
    ld [bc], a
    ld h, [hl]
    inc bc

jr_01d_7a35:
    ld d, $62
    ld h, l
    ld bc, $0570
    db $e3
    dec b
    sbc e
    ld [hl], l
    ld [hl], b
    inc l
    ld bc, $6163
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    ld [bc], a
    pop hl
    inc b
    ld b, b
    ld bc, $c605
    ld l, [hl]
    jr nz, jr_01d_7a57

    ld c, c
    ld l, $00
    inc c

jr_01d_7a57:
    ld [hli], a
    ld [bc], a
    dec b
    ld [bc], a
    inc hl
    add hl, bc
    inc bc
    inc bc
    push bc
    inc bc
    ld d, $05
    ld sp, $0501
    sbc c
    ld l, l
    ld l, c
    ld h, h
    ld h, c
    ld l, c
    ld [hl], d
    ld [bc], a
    ld [c], a
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_01d_7ae6

    ld h, l
    ld [hl], d
    ld l, c
    ld l, a
    ld h, h

jr_01d_7a7b:
    inc bc
    dec sp
    inc b
    or h
    ld l, $20
    inc bc
    cp e
    ld h, e
    inc b
    inc hl
    inc bc
    ld [$6f68], sp
    db $76
    ld h, l
    inc b
    ld d, c
    ld l, $00
    inc c
    ld [hli], a
    ld [bc], a
    dec b
    ld [bc], a
    inc hl
    add hl, bc
    inc bc
    inc bc
    push bc
    inc bc
    ld d, $61
    ld l, h
    ld [hl], e
    ld l, a
    ld bc, $6304
    jr nz, jr_01d_7b0a

    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, a
    ld a, c
    ld bc, $bf04
    jr nz, jr_01d_7ab4

    ld sp, $c703
    dec b
    ld a, c

jr_01d_7ab4:
    ld l, b
    ld l, c
    ld [hl], h
    ld [bc], a
    or h
    ld h, a
    inc bc
    cp h
    ld [bc], a
    sbc a
    ld h, a
    inc b
    add hl, bc
    jr nz, jr_01d_7ac8

    daa
    ld hl, $0c00
    ld [hli], a

jr_01d_7ac8:
    ld [bc], a
    dec b
    ld a, c
    ld [bc], a
    ld e, d
    jr nz, jr_01d_7b44

    ld [hl], e
    inc b
    sub a
    inc b
    nop
    inc bc
    or b
    ld l, e
    ld l, [hl]
    ld l, a
    ld h, e
    ld l, e
    ld bc, $9f04
    ld [bc], a
    xor h
    dec b
    ld e, c
    ld bc, $6873
    ld l, a

jr_01d_7ae6:
    ld [hl], h
    jr nz, jr_01d_7b4b

    ld a, c
    dec b
    ld a, [hl]
    inc b
    pop hl
    ld bc, $c905
    add hl, bc
    nop
    inc b
    inc d
    inc b
    ld c, l
    ld bc, $7905
    inc bc
    add b
    dec b
    dec b
    nop
    inc c
    ld [hli], a
    ld [bc], a
    dec b
    dec b
    ld a, d
    ld h, c
    jr nz, jr_01d_7b6a

    ld [hl], d
    ld h, c

jr_01d_7b0a:
    ld l, [hl]
    ld h, e
    ld l, b
    inc bc
    pop de
    inc b
    pop hl
    jr nz, jr_01d_7b18

    ret


    ld [hl], e
    dec b
    ld a, a
    inc bc

jr_01d_7b18:
    ld [$6e65], sp
    ld h, a
    ld h, c
    ld h, a
    ld h, l
    ld [hl], e
    inc bc
    and $03
    sbc d
    inc b
    jr jr_01d_7ba0

    inc b
    and e
    inc bc
    ld e, d
    dec b
    push de
    ld b, d
    inc b
    scf
    ld bc, $c905
    ld [hl], e
    add hl, bc
    nop
    ld l, $00
    inc c
    ld [hli], a
    ld [bc], a
    dec b
    ld [hl], h
    ld [bc], a
    db $f4
    ld l, c
    inc b
    db $e4
    ld h, d
    inc b

jr_01d_7b44:
    ld sp, $0301
    ld e, d
    dec b
    ld a, [hl]
    add hl, bc

jr_01d_7b4b:
    inc bc
    ld d, a
    ld l, b
    ld l, c
    ld [hl], e
    ld [hl], b
    dec b
    ld a, a
    inc bc
    ld [$696a], sp
    ld l, [hl]
    ld a, b
    ld h, l
    ld [hl], e
    ld [bc], a
    jp nz, $0277

    cp b
    dec b
    jp c, Jump_01d_6375

    ld l, b
    ld bc, $7469
    ld l, $04

jr_01d_7b6a:
    ld [hl], c
    ld [bc], a
    ld a, d
    ld h, d
    ld h, l
    ld bc, $a402
    ld h, h
    ld [hl], d
    ld h, c
    ld [hl], a
    ld bc, $0b03
    add hl, bc
    ld bc, $0373
    ld b, $21
    nop
    inc c
    ld [hli], a
    ld [bc], a
    dec b
    ld [hl], h
    ld [bc], a
    db $f4
    ld [bc], a
    push af
    inc b
    cp e
    ld [hl], e
    inc b
    dec h
    dec b
    ld a, e
    ld [hl], e
    inc bc
    db $e3
    ld h, c
    ld bc, $e104
    jr nz, jr_01d_7b9e

    ret


    add hl, bc
    nop
    ld [bc], a
    sbc c

jr_01d_7b9e:
    inc b
    ld b, l

jr_01d_7ba0:
    jr nz, jr_01d_7c0f

    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    ld l, $00
    inc c
    ld [hli], a
    ld [bc], a
    dec b
    ld [hl], h
    ld [bc], a
    db $f4
    ld l, c
    inc b
    db $e4
    ld h, d
    inc b
    ld sp, $0301
    ld [$6165], sp
    ld [hl], h
    ld [hl], e
    ld bc, $0109
    inc b
    nop
    ld [hl], e
    add hl, bc
    nop
    ld l, $00
    ld c, l
    ld a, c
    jr nz, jr_01d_7c2e

    ld h, c
    ld h, h
    inc l
    dec b
    push de
    ld d, h
    dec b
    dec d
    inc b
    ld [hl], l
    ld [hl], a
    dec b
    rst AddAToHL
    inc bc
    or b
    ld h, e
    ld l, h
    ld l, c
    ld l, l
    ld h, d
    ld bc, $9e02
    inc b
    ld c, [hl]
    ld c, c
    ld bc, $f502
    dec b
    ld a, c
    ld h, e
    dec b
    rst $08
    ld [bc], a
    ld [c], a
    inc b
    ld a, $68
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld l, $20
    ld b, d
    ld [hl], l
    ld [hl], h
    ld bc, $0274
    ld l, e
    ld [hl], e
    inc bc
    add c
    ld bc, $7102
    inc b
    sbc b
    dec b
    ld d, l
    nop
    ld d, e
    ld h, c
    ld a, c
    dec b
    sub $73
    ld [bc], a

jr_01d_7c0f:
    sbc b
    ld h, c
    ld bc, $0109
    inc b
    ld l, e
    inc b
    ld d, d
    dec b
    ld d, a
    inc bc
    inc bc
    jr nz, jr_01d_7c80

    inc b
    sub a
    ld h, d
    ld l, c
    ld h, a
    inc bc
    adc a
    dec b
    ld d, $4d
    ld h, c
    ld a, c
    ld bc, $9102
    inc b

jr_01d_7c2e:
    or a
    ld [bc], a
    cp $05
    cp e
    inc b
    add a
    nop
    ld [bc], a
    and a
    jr nz, jr_01d_7c8e

    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld bc, $7c05
    ld hl, $0220
    ld l, $21
    ld bc, $b702
    add hl, bc
    ld bc, $3204
    ld bc, $6745
    ld h, a
    add hl, bc
    nop
    inc b
    jr jr_01d_7cc9

    ld h, l
    jr nz, jr_01d_7cbe

    ld h, a
    ld h, a
    ld [hl], e
    ld bc, $2404
    dec b
    add c
    ld [bc], a
    xor h
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    ld bc, $6903
    ld h, e
    ld [hl], l
    ld [hl], h
    ld h, l
    jr nz, jr_01d_7c75

    ld l, b
    ld [hl], e
    ld hl, $0200

jr_01d_7c75:
    rst $28
    ld l, c
    ld h, [hl]
    jr nz, jr_01d_7cbe

    ld h, c
    ld h, h
    ld bc, $7369
    inc b

jr_01d_7c80:
    xor a
    ld [bc], a
    call nz, Call_01d_7204
    ld [hl], h
    ld [bc], a
    db $f4
    ld l, a
    ld l, [hl]
    ld bc, $9e02
    dec b

jr_01d_7c8e:
    ld d, l
    nop
    ld c, a
    inc bc
    cp c
    inc b
    add a
    ld l, $01
    ld c, c
    dec b
    ld c, c
    inc b
    ld l, a
    dec b
    rla
    inc bc
    or d
    ld l, c
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld l, $00
    inc b
    xor $09
    inc bc
    ld d, h
    dec b
    dec d
    dec b
    add sp, $03
    inc d
    ld bc, $9d04
    ld [hl], e
    jr nz, jr_01d_7d1a

    inc b
    rla
    ld hl, $4900

jr_01d_7cbe:
    inc b
    ret nz

    ld l, h
    ld a, c
    jr nz, jr_01d_7d27

    dec b
    inc a
    ld bc, $7469

jr_01d_7cc9:
    jr nz, jr_01d_7cce

    ld b, d
    add hl, bc
    inc bc

jr_01d_7cce:
    ld c, l
    dec b
    dec d
    dec b
    ld a, a
    inc bc
    adc d
    ld c, c
    jr nz, jr_01d_7d3f

    ld l, a
    ld [hl], h
    inc bc
    or l
    ld hl, $4f00
    ld l, b
    inc l
    inc bc
    sbc [hl]
    dec b
    db $d3
    jr nz, jr_01d_7d4f

    ld l, a
    ld [hl], h
    inc bc
    and e
    dec b
    ei
    jr nz, jr_01d_7d62

    ld l, c
    ld [hl], h
    ld [hl], h
    inc bc
    and [hl]
    ld h, d
    ld a, c
    ld bc, $8205
    inc b
    pop bc
    ld h, h
    ld bc, $6f53
    ld [bc], a
    jp Jump_01d_5020


    ld l, a
    ld l, a

Call_01d_7d05:
    ld l, h
    ld bc, $5105
    ld l, [hl]
    daa
    ld [hl], h
    inc bc
    adc a
    ld hl, $4901
    jr nz, jr_01d_7d16

    cp l
    ld [bc], a
    inc e

jr_01d_7d16:
    ld bc, $0563
    ld [c], a

jr_01d_7d1a:
    ld [hl], b
    ld a, c
    inc bc
    or b
    ld [hl], e
    dec b
    rst $38
    ld bc, $6863
    dec b
    pop de
    ld [hl], e

jr_01d_7d27:
    jr nz, jr_01d_7d2e

    ld [hl], e
    inc b
    jr nc, jr_01d_7da0

    ld [hl], b

jr_01d_7d2e:
    ld l, c
    ld l, [hl]
    inc b
    xor b
    nop
    dec b
    dec de
    ld l, l
    ld a, c
    ld hl, $0520
    ld d, a
    ld bc, $6f64
    ld l, h

jr_01d_7d3f:
    ld l, h
    ld hl, $0220
    db $ec
    ld [hl], e
    ld l, a
    ld bc, $6867
    dec b
    xor l
    ld a, c
    inc b
    inc l
    dec b

jr_01d_7d4f:
    ld b, l
    ld [hl], e
    ld bc, $656d
    jr nz, jr_01d_7db9

    ld l, b
    dec b
    pop de
    ld [hl], e
    ld hl, $4c01
    inc bc
    rst $28
    jr nz, jr_01d_7d63

    push af

jr_01d_7d62:
    ld l, c

jr_01d_7d63:
    ld [hl], h
    ld hl, $0301
    adc b
    ld [bc], a
    ld c, l
    nop
    ld d, e
    ld l, l
    ld h, c
    ld [hl], d
    ld [hl], h
    dec b
    ld l, c
    inc bc
    and e
    inc b
    ld e, [hl]
    ld [bc], a
    ld l, $01
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, l
    dec b
    call nc, $8305
    dec b
    ret c

    nop
    inc b
    ld e, a
    ld d, a
    ld h, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    inc b
    jr nc, jr_01d_7d94

    pop bc
    ld [hl], e
    jr nz, @+$05

    inc [hl]

jr_01d_7d94:
    ccf
    ld bc, $6649
    ld [bc], a
    jr nc, @+$06

    ld b, [hl]
    inc l
    ld bc, $6103

jr_01d_7da0:
    ld h, c
    jr nz, jr_01d_7e07

    ld l, c
    ld [hl], b
    ld hl, $5700
    dec b
    and e
    ld hl, $4120
    ld [hl], d
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    ld [bc], a
    jp nz, $2061

    ld h, e
    ld l, b
    ld h, l

jr_01d_7db9:
    ld h, l
    ld l, e
    ld a, c
    jr nz, jr_01d_7e29

    ld l, c
    ld h, h
    ld hl, $4900
    ld h, [hl]
    jr nz, jr_01d_7dca

    ld e, d
    dec b
    add c
    ld [bc], a

jr_01d_7dca:
    or h
    dec b
    ld a, e
    ld [hl], d
    ld h, l
    ld h, h
    ld l, c
    dec b
    rst AddAToHL
    ld [hl], e
    dec b
    ld l, [hl]
    inc bc
    xor e
    ld [hl], h
    inc b
    add hl, bc
    ld [bc], a
    jp nz, Jump_01d_7905

    ld h, c
    jr nz, jr_01d_7e56

    ld h, c
    ld [hl], e
    ld [hl], h
    ld a, c
    dec b
    db $d3
    ld [hl], l
    ld [hl], b
    inc bc
    and h
    ld b, d
    ld [hl], l
    ld [hl], h
    inc bc
    ld [$9002], a
    ld bc, $0461
    ld c, d
    jr nz, @+$6b

    ld [hl], d
    ld l, a
    ld l, [hl]
    jr nz, jr_01d_7e6e

    ld l, a
    ld [hl], h
    ld bc, $0274

Call_01d_7e03:
    db $dd
    inc b
    cp e
    ld [hl], a

jr_01d_7e07:
    dec b
    and e
    dec l
    ld [hl], e
    inc bc
    call nc, Call_01d_6465
    dec b
    ld d, l
    nop
    inc b
    rra
    inc bc
    ld d, b
    add hl, bc
    add h
    ld b, $84
    inc bc
    jr c, @+$4b

    ld [hl], h
    daa
    ld [hl], e
    ld [bc], a
    xor l
    inc b
    add sp, $20
    ld c, c
    ld bc, $656e

jr_01d_7e29:
    ld h, l
    ld h, h
    ld hl, $4120
    jr nz, @+$0b

    add h
    ld b, $84
    add hl, bc
    nop
    inc bc
    dec c
    ld bc, $e504
    inc bc
    inc bc
    jr nz, jr_01d_7e41

    db $dd
    ld h, a
    inc b

jr_01d_7e41:
    add hl, bc
    dec b
    db $d3
    ld [hl], l
    ld [hl], b
    inc bc
    and e
    ld c, h
    ld h, l
    dec b
    ret nc

    inc bc
    ld d, e
    jr nz, jr_01d_7e55

    dec bc
    ld [bc], a
    cp $02
    ld c, l

jr_01d_7e55:
    nop

jr_01d_7e56:
    ld e, c
    ld h, l
    ld [hl], e
    ld hl, $4c20
    ld h, l
    dec b
    ret nc

    inc bc
    ld d, e
    ld bc, $656d
    ld hl, $0520
    inc sp
    inc b
    sbc c
    ld hl, $5400
    ld l, c

jr_01d_7e6e:
    ld l, [hl]
    ld l, e
    ld hl, $4320
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, a
    ld hl, $5001
    ld l, h
    ld l, a
    ld [hl], b
    ld hl, $4220
    ld l, h
    ld [hl], l
    ld [hl], d
    ld [hl], b
    ld hl, $0200
    ld b, b
    ld l, c
    ld [hl], h
    inc bc
    sub a
    ld bc, $616c
    db $76
    ld h, c
    ld [bc], a
    pop hl
    ld l, c
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld bc, $0463
    add hl, bc
    ld h, l
    dec b
    ld a, [hl]
    ld l, b
    ld h, c
    ld [hl], d
    ld l, l
    ld l, a
    ld l, [hl]
    ld a, c
    ld bc, $7a05
    ld h, [hl]
    ld l, h
    ld h, c
    db $76
    ld l, a
    ld [hl], d
    ld [hl], e
    ld hl, $4400
    ld l, c
    ld h, h
    ld [bc], a
    push de
    inc b
    ld e, $6d
    ld a, c
    ld bc, $0109
    inc b
    dec bc
    add hl, bc
    nop
    ccf
    nop
    ld [bc], a
    sub l
    inc bc
    jp nc, $0574

    ld b, h
    ld bc, $8205
    ld h, e
    ld l, a
    ld l, a
    ld l, e
    dec b
    ld c, d
    ld l, $3f
    nop
    ld c, $c7
    jr z, jr_01d_7f1b

    ld h, e
    ld l, b
    ld l, a
    ld l, a
    ld hl, $2029
    ld c, c
    daa
    ld h, d
    jr nz, @+$06

    inc hl
    inc bc
    call c, $9b05
    ld [hl], l
    ld h, d
    ld l, $01
    ld [bc], a
    call Call_01d_6f63
    ld l, h
    ld h, h
    ld l, $20
    ld b, h
    ld l, a
    ld bc, $d203
    ld l, b
    ld h, c
    ld h, d
    jr nz, jr_01d_7f62

    ld h, h
    ld a, c
    ld [hl], h
    inc bc

Jump_01d_7f05:
    rst $00
    ld h, h
    ld h, c
    ld [hl], h
    jr nz, jr_01d_7f6e

    ld h, c
    ld h, h
    jr nz, jr_01d_7f86

    ld h, c
    ld [hl], d
    ld h, d
    ld bc, $2061
    ld h, d
    ld l, a
    ld h, h
    ld a, c
    jr nz, jr_01d_7f90

jr_01d_7f1b:
    ld [hl], b
    ccf
    nop
    ld c, $c7
    ld c, a
    ld l, b
    ccf
    jr nz, jr_01d_7f69

    ld h, c
    ld [hl], h
    jr nz, jr_01d_7f9c

    ld h, d
    dec b
    and e
    ld [hl], e
    ld bc, $e604
    ld hl, $4320
    ld h, c
    ld h, h
    jr nz, jr_01d_7f80

    jr nz, jr_01d_7fa1

    ld h, c
    ld h, d
    ld bc, $6164
    ld [hl], h
    dec b
    db $d3
    ld [hl], l
    ld [hl], b
    jr nz, jr_01d_7f4e

    add b
    ld b, $85
    inc b
    ld d, d
    ld [bc], a
    cp $02
    ld c, l

jr_01d_7f4e:
    nop
    jr z, @+$49

    ld l, h
    ld [hl], l
    ld h, a
    ld hl, $4720
    ld l, h
    ld [hl], l
    ld h, a
    ld hl, $0529
    ld d, [hl]
    ld c, $c7
    ld [bc], a
    or a

jr_01d_7f62:
    ld l, b
    ld h, c
    ld [hl], d
    ld l, l
    ld l, a
    ld l, [hl]
    ld a, c

jr_01d_7f69:
    ld bc, $7a05
    ld h, [hl]
    ld l, h

jr_01d_7f6e:
    ld h, c
    db $76
    ld l, a
    ld [hl], d
    ld [hl], e
    ld hl, $0201
    inc a
    inc b
    dec a
    inc b
    rlca
    inc bc
    ld e, e
    ld hl, $0201

jr_01d_7f80:
    ld l, $20
    ld h, c
    ld [hl], e
    dec b
    cp d

jr_01d_7f86:
    inc b
    ld e, h
    inc bc
    db $e3
    ld l, l
    ld a, c
    ld bc, $7267
    ld h, c

jr_01d_7f90:
    ld [hl], h
    ld l, c
    ld [hl], h
    ld [hl], l
    ld h, h
    ld h, l
    ld hl, $0e00
    rst $00
    inc bc
    ld a, e

jr_01d_7f9c:
    ld l, a
    ld [hl], d
    jr nz, @+$6a

    ld [hl], l

jr_01d_7fa1:
    ld l, l
    ld h, c
    ld l, [hl]
    inc l
    ld bc, $6568
    ld h, c
    ld l, h
    ld [hl], h
    ld l, b
    inc bc
    add hl, hl
    ld l, h
    ld l, h
    ld bc, $0803
    dec b
    sub b
    ld [hl], e
    ld hl, $0e00
    rst $00
    ld b, d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    inc bc
    and l
    ld c, c
    daa
    ld h, d
    dec b
    db $d3
    inc b
    jr nz, jr_01d_7feb

    nop
    ld d, e
    ld l, b
    ld l, a
    ld l, a
    ld l, a
    ld [hl], h
    ld hl, $0301
    ld d, b
    add hl, bc
    inc bc
    ld [bc], a
    ld e, l
    inc bc
    db $e4
    ld [bc], a
    ld sp, hl
    ld l, a
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    inc b
    sbc $2c
    dec b
    ldh [rSB], a
    ld [hl], a
    ld l, a
    inc b

jr_01d_7feb:
    ld l, a
    inc b
    ld hl, $656d
    ld bc, $6968
    ld [hl], e
    dec b
    call nc, Call_01d_6176
    ld [hl], e
    ld h, l
    inc b
    rst $28
    ld c, c
    daa
    ld h, h
    db $01

; Disassembly of "Tetris (JUE) (V1.1) [!].gb"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

Jump_001_4000:
    cpl
    cpl
    cpl
    ld a, e
    jr nc, jr_001_4037

    ld sp, $3131
    ld sp, $2a32
    ld a, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    ld [hl], $15
    ld c, $1f
    ld c, $15
    scf
    ld a, [hl+]
    ld a, l
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    ld [hl], $2f
    cpl
    cpl
    cpl
    cpl
    scf
    ld a, [hl+]
    ld a, e
    cpl
    cpl

jr_001_4037:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, e
    ld b, b
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, c
    ld a, [hl+]
    ld a, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    ld [hl], $11
    ld [de], a
    db $10
    ld de, $372f
    ld a, [hl+]
    ld a, l
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    ld [hl], $2f
    cpl
    cpl
    cpl
    cpl
    scf
    ld a, [hl+]
    ld a, e
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, e
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    ld a, [hl+]
    ld a, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    dec hl
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    ld a, [hl+]
    ld a, l
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    jr nc, jr_001_40d7

    ld sp, $3131
    ld sp, $2a32
    ld a, e
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, e
    ld [hl], $15
    ld [de], a
    rla
    ld c, $1c
    scf
    ld a, [hl+]
    ld a, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    ld [hl], $2f
    cpl
    ld [bc], a
    dec b
    cpl
    scf
    ld a, [hl+]
    ld a, l
    cpl
    cpl

jr_001_40d7:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    ld a, [hl+]
    ld a, e
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, e
    dec hl
    jr c, jr_001_4130

    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    ld a, [hl+]
    ld a, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    dec hl
    dec sp
    cpl
    cpl
    cpl
    cpl
    inc a
    ld a, [hl+]
    ld a, l
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    dec hl
    dec sp
    cpl
    cpl
    cpl
    cpl
    inc a
    ld a, [hl+]
    ld a, e
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, e

jr_001_4130:
    dec hl
    dec sp
    cpl
    cpl
    cpl
    cpl
    inc a
    ld a, [hl+]
    ld a, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    dec hl
    dec sp
    cpl
    cpl
    cpl
    cpl
    inc a
    ld a, [hl+]
    ld a, l
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    dec hl
    dec a
    ld a, $3e
    ld a, $3e
    ccf
    nop
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    nop
    nop
    jr jr_001_41a2

    jr jr_001_4184

    jr jr_001_41aa

    nop
    nop
    inc a
    ld c, [hl]
    ld c, $3c
    ld [hl], b
    ld a, [hl]
    nop
    nop
    ld a, h
    ld c, $3c
    ld c, $0e
    ld a, h
    nop
    nop
    inc a
    ld l, h
    ld c, h
    ld c, [hl]

jr_001_4184:
    ld a, [hl]
    inc c
    nop
    nop
    ld a, h
    ld h, b
    ld a, h
    ld c, $4e
    inc a
    nop
    nop
    inc a
    ld h, b
    ld a, h
    ld h, [hl]
    ld h, [hl]
    inc a
    nop
    nop
    ld a, [hl]
    ld b, $0c
    jr jr_001_41d5

    jr c, jr_001_419f

jr_001_419f:
    nop
    inc a
    ld c, [hl]

jr_001_41a2:
    inc a
    ld c, [hl]
    ld c, [hl]
    inc a
    nop
    nop
    inc a
    ld c, [hl]

jr_001_41aa:
    ld c, [hl]
    ld a, $0e
    inc a
    nop
    nop
    inc a
    ld c, [hl]
    ld c, [hl]
    ld a, [hl]
    ld c, [hl]
    ld c, [hl]
    nop
    nop
    ld a, h
    ld h, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld a, h
    nop
    nop
    inc a
    ld h, [hl]
    ld h, b
    ld h, b
    ld h, [hl]
    inc a
    nop
    nop
    ld a, h
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld a, h
    nop
    nop
    ld a, [hl]
    ld h, b
    ld a, h
    ld h, b
    ld h, b

jr_001_41d5:
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld h, b
    ld h, b
    ld a, h
    ld h, b
    ld h, b
    nop
    nop
    inc a
    ld h, [hl]
    ld h, b
    ld l, [hl]
    ld h, [hl]
    ld a, $00
    nop
    ld b, [hl]
    ld b, [hl]
    ld a, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    nop
    nop
    inc a
    jr jr_001_420b

    jr jr_001_420d

    inc a
    nop
    nop
    ld e, $0c
    inc c
    ld l, h
    ld l, h
    jr c, jr_001_41ff

jr_001_41ff:
    nop
    ld h, [hl]
    ld l, h
    ld a, b
    ld a, b
    ld l, h
    ld h, [hl]
    nop
    nop
    ld h, b
    ld h, b
    ld h, b

jr_001_420b:
    ld h, b
    ld h, b

jr_001_420d:
    ld a, [hl]
    nop
    nop
    ld b, [hl]
    ld l, [hl]
    ld a, [hl]
    ld d, [hl]
    ld b, [hl]
    ld b, [hl]
    nop
    nop
    ld b, [hl]
    ld h, [hl]
    db $76
    ld e, [hl]
    ld c, [hl]
    ld b, [hl]
    nop
    nop
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    nop
    nop
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld h, b
    ld h, b
    nop
    nop
    inc a
    ld h, d
    ld h, d
    ld l, d
    ld h, h
    ld a, [hl-]
    nop
    nop
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld a, h

Jump_001_423c:
    ld l, b
    ld h, [hl]
    nop
    nop
    inc a
    ld h, b
    inc a
    ld c, $4e
    inc a
    nop
    nop
    ld a, [hl]
    jr jr_001_4263

    jr jr_001_4265

    jr jr_001_424f

jr_001_424f:
    nop
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld c, [hl]
    inc a
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    inc l
    jr jr_001_425f

jr_001_425f:
    nop
    ld b, [hl]
    ld b, [hl]
    ld d, [hl]

jr_001_4263:
    ld a, [hl]
    ld l, [hl]

jr_001_4265:
    ld b, [hl]
    nop
    nop
    ld b, [hl]
    inc l
    jr jr_001_42a4

    ld h, h
    ld b, d
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    inc a
    jr jr_001_428d

    jr jr_001_4277

jr_001_4277:
    nop
    ld a, [hl]
    ld c, $1c
    jr c, jr_001_42ed

    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc a
    inc a
    nop

jr_001_428d:
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc d
    ld [$2214], sp
    nop
    nop
    nop
    ld [hl], $36
    ld e, a
    ld c, c
    ld e, a
    ld b, c
    ld a, a
    ld b, c
    ld a, $22
    inc e

jr_001_42a4:
    inc d
    ld [$ff08], sp
    rst $38
    rst $38
    add c
    pop bc
    cp a
    pop bc
    cp a
    pop bc
    cp a
    pop bc
    cp a
    add c
    rst $38
    rst $38
    rst $38
    xor d
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [bc], a

jr_001_42ed:
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    nop
    ldh a, [rNR10]
    rst $38
    rra
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    nop
    rrca
    ld [$f8ff], sp
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_001_4345

    jr c, jr_001_4367

    jr jr_001_4349

    jr jr_001_434b

    jr jr_001_434d

    inc a
    inc a
    nop
    nop
    nop
    nop
    inc a

Jump_001_433c:
    inc a
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld a, $3e
    ld c, $0e

jr_001_4345:
    inc a
    inc a
    nop
    nop

jr_001_4349:
    nop
    nop

jr_001_434b:
    inc a
    inc a

jr_001_434d:
    ld c, [hl]
    ld c, [hl]
    inc a
    inc a
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    inc a
    inc a
    nop
    nop
    jr c, jr_001_4393

    ld b, h
    ld b, h
    cp d
    cp d
    and d
    and d
    cp d
    cp d
    ld b, h
    ld b, h
    jr c, @+$3a

jr_001_4367:
    add $c6
    and $e6
    and $e6
    sub $d6
    sub $d6
    adc $ce
    adc $ce
    add $c6
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    db $db
    db $db
    db $dd
    db $dd
    reti


    reti


    reti


    reti


    reti


    reti


    nop
    nop
    jr nc, jr_001_43bb

    ld a, b
    ld a, b
    inc sp
    inc sp
    or [hl]
    or [hl]
    or a
    or a

jr_001_4393:
    or [hl]
    or [hl]
    or e
    or e
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_001_6ecd
    ld l, [hl]
    db $ec
    db $ec
    inc c
    inc c
    db $ec
    db $ec
    ld bc, $0101
    ld bc, $0101
    adc a
    adc a
    reti


    reti


    reti


    reti


    reti


    reti


    rst $08
    rst $08
    add b
    add b
    add b
    add b

jr_001_43bb:
    add b
    add b
    sbc [hl]
    sbc [hl]
    or e
    or e
    or e
    or e
    or e
    or e
    sbc [hl]
    sbc [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_001_43d5:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop

jr_001_43f5:
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $02ff
    cp $fe
    ld [bc], a
    inc b
    db $fc
    db $fc
    inc b
    db $fc
    inc b
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    rst $38
    ld b, b
    ldh [$3f], a
    rst $38
    jr nz, jr_001_43d5

    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    cp $02
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, jr_001_43f5

    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $c07f
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp $02
    cp $02
    rst $38
    inc bc
    db $fc
    dec b
    ld hl, sp+$09
    pop af
    ld [de], a
    pop hl
    ld h, $c3
    ld c, h
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    cp a
    ld h, b
    sbc a
    ld [hl], b
    xor a
    ld e, b
    daa
    call c, $ce33
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fc
    inc b
    ld hl, sp+$09
    ldh a, [rNR13]
    ldh [$27], a
    ldh [$2f], a
    add a
    sbc b
    ld b, $39
    ld c, $71
    ld e, $e1
    inc a
    jp $c33c


    ld a, b
    add a
    ld a, b
    add a
    dec [hl]
    swap d
    call $c53a
    ld a, c
    add [hl]
    ld a, b
    add a
    ld a, b
    add a
    ld a, h
    add e
    ld a, h
    add e
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$9f], a
    ld [hl], b
    ld c, a
    cp b
    ld h, a
    sbc h
    scf
    call z, Call_001_4fc0
    ret nz

    ld c, a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, h
    add e
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, $c1
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$33], a
    adc $1b
    and $09
    rst $30
    dec c
    di
    dec c
    di
    dec c
    di
    dec c
    di
    add hl, bc
    rst $30
    ret nz

    ld e, a
    ret nz

    ld c, a
    ldh [$2f], a
    ldh [$27], a
    ldh a, [rNR11]
    cp a
    ld c, a
    inc c
    db $f4
    rlca
    rst $38
    ld a, b
    add a
    ld a, h
    add e
    inc a
    jp $e11e


    rrca
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    ld c, $f1
    ld b, $f9
    rst $38
    rst $38
    push bc
    ccf
    rst $38
    rst $38
    dec de
    and $13
    xor $37
    call z, $dc27
    ld c, a
    cp b
    db $fc
    di
    db $fc
    and e
    ldh [rIE], a
    cp $02
    cp $02
    cp a
    ld b, e
    inc e
    push hl
    cp b
    ld c, c
    or c
    ld d, d
    and c
    ld h, [hl]
    ld b, e
    call z, Call_000_00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $00
    jr c, @+$01

    nop
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $83
    ld a, h
    ld bc, $01fe
    cp $01
    cp $83
    ld a, h
    rst $38
    nop
    add e
    ld a, h
    add e
    ld a, h
    pop af
    ld c, $e0
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    add b
    ld a, a
    add b
    ld a, a
    rst $30
    ld [$14eb], sp
    rst $30
    ld [$08f7], sp
    db $e3
    inc e
    db $e3
    inc e
    ld h, e
    sbc h
    ld bc, $00fe
    nop
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    jr nc, jr_001_45eb

    ld [hl], b
    ld [hl], b
    jr nc, jr_001_45ef

    jr nc, jr_001_45f1

    jr nc, jr_001_45f3

    ld a, b
    ld a, b
    nop
    nop
    ldh [$e0], a
    ldh a, [$e0]
    ei
    ldh [$fc], a
    ldh [$fc], a
    pop hl
    db $fc
    pop hl
    db $fc
    pop hl
    db $fc
    pop hl
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rlca

jr_001_45eb:
    rst $18
    rlca
    ccf
    rlca

jr_001_45ef:
    ccf
    add a

jr_001_45f1:
    ccf
    add a

jr_001_45f3:
    ccf
    add a
    ccf
    add a
    db $fc
    pop hl
    db $fc
    pop hl
    db $fc
    pop hl
    db $fc
    pop hl
    db $fc
    pop hl
    db $fc
    pop hl
    db $fc
    pop hl
    db $fc
    pop hl
    ccf
    add a
    ccf
    add a
    ccf
    add a
    ccf
    add a
    ccf
    add a
    ccf
    add a
    ccf
    add a
    ccf
    add a
    db $fc
    pop hl
    db $fc
    pop hl
    db $fc
    pop hl
    db $fc
    pop hl
    db $fc
    ldh [rIE], a
    rst $20
    rst $38
    rst $28
    ldh [rIE], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ccf
    add a
    ccf
    add a
    ccf
    add a
    ccf
    add a
    ccf
    rlca
    rst $38
    rst $20
    rst $38
    rst $30
    rlca
    rst $38
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0101
    ld bc, $8181
    pop bc
    pop bc
    pop bc
    pop bc
    pop hl
    pop hl
    pop af
    pop af
    ld sp, hl
    ld sp, hl
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    sbc a
    sbc a
    adc a
    adc a
    rst $08
    rst $08
    rst $20
    rst $20
    di
    di
    rst $30
    rst $30
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    nop
    nop
    ld a, h
    ld a, h
    ld b, a
    ld b, a
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld a, a
    ld b, b
    nop
    nop
    ld bc, $0101
    ld bc, $8181
    pop bc
    pop bc
    ld b, c
    ld b, c
    ld h, c
    ld h, c
    pop hl
    ld h, c
    nop
    nop
    cp $fe
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    cp $06
    nop
    nop
    dec de
    dec de
    ld [hl-], a
    ld [hl-], a
    ld e, c
    ld e, c
    ld c, h
    ld c, h
    adc h
    adc h
    add [hl]
    add [hl]
    rst $38
    add e
    nop
    nop
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $8181
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ccf
    ld hl, $0000
    cp [hl]
    cp [hl]
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add b
    add b
    add b
    add b
    nop
    nop
    adc b
    adc b
    ret c

    ret c

    xor b
    xor b
    adc b
    adc b
    adc b
    adc b
    nop
    nop
    nop
    nop
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld b, a
    ld a, a
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop bc
    pop bc
    pop bc
    pop bc
    add c
    add c
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    ld b, $fe
    rst $38
    add e
    rst $38
    add c
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_001_47d3

    jr nz, @+$12

    rra
    rra
    ld de, $919f
    rst $08
    ret


    rst $00
    push bc
    db $e3
    ld h, e
    di
    inc sp
    ld sp, hl
    add hl, de
    ld [$80f8], sp
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld e, a
    ld a, a
    ld a, b
    ld a, b
    ld h, b
    ld h, b
    ld d, b
    ld [hl], b
    ld d, b
    ld [hl], b
    ld c, b
    ld a, b
    ld b, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_001_47d3:
    ld bc, $0101
    ld bc, $fe06
    ld b, $fe
    ld b, $fe
    ld b, $fe
    ld b, $fe
    ld b, $fe
    ld b, $fe
    cp $fe
    ld [$440f], sp
    ld b, a
    ld h, h
    ld h, a
    ld [hl], d
    ld [hl], e
    ld d, c
    ld [hl], c
    ld e, c
    ld a, c
    ld c, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    inc c
    db $fc
    ld b, $fe
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    ei
    ei
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    jp $0042


    nop
    db $fd
    db $fd
    dec c
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    db $fc
    inc c
    nop
    nop
    db $fc
    db $fc
    inc c
    inc c
    adc h
    adc h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    inc l
    inc l
    inc a
    inc l
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    add d
    add e
    add d
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    inc c
    db $fc
    inc e
    inc e
    inc e
    inc e
    inc c
    inc c
    inc c
    inc c
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    db $fc
    db $fc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    rst $38
    add e
    nop
    nop
    ld a, a
    ld a, a
    jr nz, jr_001_495d

    db $10
    db $10
    ld [$0408], sp
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    di
    di
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    di
    ld [hl-], a
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e

jr_001_495d:
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    add e
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    dec bc
    rra
    inc de
    inc hl
    ccf
    di
    or d
    ld [hl], e
    ld [hl], d
    inc sp
    inc sp
    inc de
    inc de
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    ld b, e
    ld a, a
    inc hl
    ccf
    inc de
    rra
    dec bc
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    jr nc, jr_001_49e5

    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, b
    ld a, b
    sbc h
    sbc h
    inc e
    inc e
    ld a, b
    ld a, b
    ldh [$e0], a
    db $fc
    db $fc
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    dec de
    dec de
    dec de
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_49e5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nz, jr_001_4a15

    nop
    nop
    dec de
    dec de
    dec de
    dec de
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl

jr_001_4a15:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    sbc e
    dec e
    ld d, $2f
    ld a, [bc]
    rla
    dec c
    cpl
    inc sp
    ld bc, $0809
    rlca
    cpl
    ld c, $15
    jr jr_001_4a48

    db $10
    sbc h
    cpl
    dec e
    ld c, $1d
    dec de
    ld [de], a
    inc e
    cpl
    dec d
    ld [de], a
    inc c
    ld c, $17
    inc e
    ld c, $0d
    cpl
    dec e
    jr jr_001_4a72

    cpl
    cpl
    cpl
    cpl
    dec bc

jr_001_4a48:
    ld e, $15
    dec d
    ld c, $1d
    dec h
    add hl, de
    dec de
    jr jr_001_4a6a

    rrca
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    inc e
    jr jr_001_4a6d

    dec e
    jr nz, jr_001_4a6b

    dec de
    ld c, $2f
    ld a, [bc]
    rla
    dec c
    cpl
    cpl
    cpl

jr_001_4a6a:
    cpl

jr_001_4a6b:
    cpl
    cpl

jr_001_4a6d:
    cpl
    inc e
    ld e, $0b
    dec h

jr_001_4a72:
    dec d
    ld [de], a
    inc c
    ld c, $17
    inc e
    ld c, $0d
    cpl
    dec e
    jr jr_001_4aad

    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    rla
    ld [de], a
    rla
    dec e
    ld c, $17
    dec c
    jr jr_001_4ab2

    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    inc sp
    ld bc, $0809
    add hl, bc

jr_001_4aad:
    cpl
    dec bc
    ld e, $15
    dec d

jr_001_4ab2:
    ld c, $1d
    dec h
    add hl, de
    dec de
    jr jr_001_4ad1

    rrca
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    inc e
    jr jr_001_4ad3

    dec e
    jr nz, jr_001_4ad1

    dec de
    ld c, $24
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl

jr_001_4ad1:
    cpl
    inc sp

jr_001_4ad3:
    jr nc, @+$33

    ld [hl-], a
    ld sp, $342f
    dec [hl]
    ld [hl], $37
    jr c, jr_001_4b17

    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, [bc]
    dec d
    dec d
    cpl
    dec de
    ld [de], a
    db $10
    ld de, $1c1d
    cpl
    dec de
    ld c, $1c
    ld c, $1b
    rra
    ld c, $0d
    inc h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl

jr_001_4b17:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    jr jr_001_4b3e

    ld [de], a
    db $10
    ld [de], a
    rla
    ld a, [bc]
    dec d
    cpl
    inc c
    jr jr_001_4b44

    inc c
    ld c, $19
    dec e
    sbc h
    cpl
    cpl
    dec c
    ld c, $1c
    ld [de], a
    db $10
    rla
    cpl
    ld a, [bc]
    rla
    dec c

jr_001_4b3e:
    cpl
    add hl, de
    dec de
    jr jr_001_4b53

    dec de

jr_001_4b44:
    ld a, [bc]
    ld d, $2f
    dec bc
    ld [hl+], a
    cpl
    ld a, [bc]
    dec d
    ld c, $21
    ld c, $22
    cpl
    add hl, de
    ld a, [bc]

jr_001_4b53:
    inc hl
    ld de, $1d12
    rla
    jr jr_001_4b79

    sbc l
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]

jr_001_4b79:
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    ld e, d
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, e
    ld e, h
    ld e, l
    add b
    add c
    add d
    add e
    sub b
    sub c
    sub d
    add c
    add d
    add e
    sub b
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld e, [hl]
    ld e, l
    add h
    add l
    add [hl]
    add a
    sub e
    sub h
    sub l
    add l
    add [hl]
    add a
    sub e
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    cpl
    ld e, [hl]
    ld e, l
    cpl
    adc b
    adc c
    cpl
    sub [hl]
    sub a
    sbc b
    adc b
    adc c
    cpl
    sub [hl]
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    cpl
    ld e, [hl]
    ld e, l
    cpl
    adc d
    adc e
    cpl
    adc [hl]
    adc a
    ld l, e
    adc d
    adc e
    cpl
    adc [hl]
    ld a, a
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    cpl
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, c
    adc [hl]
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    dec a
    ld a, $3c
    inc a
    inc a
    adc [hl]
    adc [hl]
    adc h
    adc h
    ld h, d
    ld h, e
    adc h
    adc h
    ld a, [hl-]
    adc h
    adc h
    adc h
    adc h
    adc h
    ld a, [hl-]
    ld b, d
    ld b, e
    dec sp
    adc h
    adc h
    adc [hl]
    adc [hl]
    ld a, [hl-]
    adc h
    ld h, h
    ld h, l
    adc h
    adc h
    adc h
    adc h
    dec sp
    adc h
    adc h
    adc h
    adc h
    ld b, h
    ld b, l
    adc h
    adc h
    adc h
    adc [hl]
    adc [hl]
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ccf
    ld b, b
    adc [hl]
    adc [hl]
    adc h
    adc h
    adc h
    adc h
    ld a, [hl-]
    adc h
    adc h
    adc h
    adc h
    ld d, e
    ld d, h
    adc h
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld b, d
    ld b, e
    adc [hl]
    adc [hl]
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld b, l
    adc [hl]
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    cpl
    cpl
    ld e, c
    add hl, de
    dec d
    ld a, [bc]
    ld [hl+], a
    ld c, $1b
    cpl
    cpl
    cpl
    sbc c
    add hl, de
    dec d
    ld a, [bc]
    ld [hl+], a
    ld c, $1b
    cpl
    cpl
    cpl
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    cpl
    cpl
    cpl
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    cpl
    cpl
    cpl
    cpl
    cpl
    inc sp
    jr nc, jr_001_4ce7

    ld [hl-], a
    ld sp, $342f
    dec [hl]
    ld [hl], $37
    jr c, jr_001_4cf8

    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld b, a
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b

jr_001_4ce7:
    ld c, b
    ld c, b
    ld c, b
    ld c, c
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l

jr_001_4cf8:
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    ld d, e
    db $10
    ld a, [bc]
    ld d, $0e
    cpl
    dec e
    ld [hl+], a
    add hl, de
    ld c, $54
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    ld d, l
    ld d, [hl]
    ld l, l
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    xor c
    ld e, b
    ld e, b
    ld e, b
    ld l, [hl]
    ld d, [hl]
    ld d, [hl]
    ld e, d
    inc l
    ld c, e
    ld c, d
    inc l
    ld e, e
    ld a, b
    ld [hl], a
    ld a, [hl]
    ld a, a
    sbc d
    sbc e
    cpl
    xor d
    ld a, c
    ld [hl], a
    ld a, [hl]
    ld a, a
    sbc d
    sbc e
    ld e, h
    inc l
    ld c, e
    ld c, d
    inc l
    dec l
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    xor h
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld l, $2c
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    ld d, e
    ld d, $1e
    inc e
    ld [de], a
    inc c
    cpl
    dec e
    ld [hl+], a
    add hl, de
    ld c, $54
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    ld d, l
    ld d, [hl]
    ld l, l
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    xor c
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld l, [hl]
    ld d, [hl]
    ld e, d
    inc l
    ld c, e
    ld c, d
    inc l
    ld e, e
    ld a, b
    ld [hl], a
    ld a, [hl]
    ld a, a
    sbc d
    sbc e
    cpl
    xor d
    ld a, c
    ld [hl], a
    ld a, [hl]
    ld a, a
    sbc d
    sbc e
    ld e, h
    inc l
    ld c, e
    ld c, d
    inc l
    ld [hl], c
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    xor e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], h
    inc l
    ld c, e
    ld c, d
    inc l
    ld e, e
    ld a, d
    ld [hl], a
    ld a, [hl]
    ld a, a
    sbc d
    sbc e
    cpl
    xor d
    cpl
    sbc l
    sbc h
    sbc h
    cpl
    cpl
    ld e, h
    inc l
    ld c, e
    ld c, d
    inc l
    dec l
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    xor h
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld l, $2c
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, h
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, [hl]
    ld b, a
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, c
    ld c, d
    cpl
    ld a, [bc]
    dec h
    dec e
    ld [hl+], a
    add hl, de
    ld c, $2f
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    ld d, e
    dec d
    ld c, $1f
    ld c, $15
    ld d, h
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld l, h
    ld e, b
    ld l, h
    ld e, b
    ld e, c
    ld d, [hl]
    ld e, d
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    ld e, e
    sub b
    ld l, a
    sub c
    ld l, a
    sub d
    ld l, a
    sub e
    ld l, a
    sub h
    ld e, h
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], h
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    ld e, e
    sub l
    ld l, a
    sub [hl]
    ld l, a
    sub a
    ld l, a
    sbc b
    ld l, a
    sbc c
    ld e, h
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    dec l
    ld c, a
    ld l, e
    ld c, a
    ld l, e
    ld c, a
    ld l, e
    ld c, a
    ld l, e
    ld c, a
    ld l, $2c
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    ld d, e
    dec e
    jr jr_001_4f3c

    dec h
    inc e
    inc c
    jr jr_001_4f43

    ld c, $54
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    ld d, l
    ld d, [hl]
    ld [hl], b
    ld l, l
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b

jr_001_4f3c:
    ld e, b
    ld l, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld e, d
    ld c, e

jr_001_4f43:
    ld c, d
    ld e, e
    ld bc, $606f
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    cpl
    cpl
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld e, h
    ld c, e
    ld c, d
    ld e, e
    ld [bc], a
    ld l, a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    cpl
    cpl
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld e, h
    ld c, e
    ld c, d
    ld e, e
    inc bc
    ld l, a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    cpl
    cpl
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld e, h
    ld c, e
    ld c, d
    dec l
    ld c, a
    ld l, e
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld l, $4b
    ld c, h
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, [hl]
    ld b, a
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, c
    ld c, d
    cpl
    dec bc
    dec h
    dec e

Call_001_4fc0:
    ld [hl+], a
    add hl, de
    ld c, $2f
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    inc l
    inc l
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    ld d, e
    dec d
    ld c, $1f
    ld c, $15
    ld d, h
    inc l
    inc l
    ld d, e
    ld de, $1012
    ld de, $2c54
    ld c, e
    ld c, d
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld l, h
    ld e, b
    ld l, h
    ld e, b
    ld e, c
    ld d, [hl]
    ld e, d
    ld [hl], l
    ld e, b
    ld l, h
    ld e, b
    ld l, h
    ld l, [hl]
    ld e, d
    ld c, e
    ld c, d
    ld e, e
    sub b
    ld l, a
    sub c
    ld l, a
    sub d
    ld l, a
    sub e
    ld l, a
    sub h
    ld e, h
    ld e, e
    sub b
    ld l, a
    sub c
    ld l, a
    sub d
    ld e, h
    ld c, e
    ld c, d
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], h
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], h
    ld c, e
    ld c, d
    ld e, e
    sub l
    ld l, a
    sub [hl]
    ld l, a
    sub a
    ld l, a
    sbc b
    ld l, a
    sbc c
    ld e, h
    ld e, e
    sub e
    ld l, a
    sub h
    ld l, a
    sub l
    ld e, h
    ld c, e
    ld c, d
    dec l
    ld c, a
    ld l, e
    ld c, a
    ld l, e
    ld c, a
    ld l, e
    ld c, a
    ld l, e
    ld c, a
    ld l, $2d
    ld c, a
    ld l, e
    ld c, a
    ld l, e
    ld c, a
    ld l, $4b
    ld c, d
    inc l
    inc l
    inc l
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    ld d, e
    dec e
    jr jr_001_50a4

    dec h
    inc e
    inc c
    jr jr_001_50ab

    ld c, $54
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    ld d, l
    ld d, [hl]
    ld [hl], b
    ld l, l
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b

jr_001_50a4:
    ld e, b
    ld l, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld e, d
    ld c, e

jr_001_50ab:
    ld c, d
    ld e, e
    ld bc, $606f
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    cpl
    cpl
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld e, h
    ld c, e
    ld c, d
    ld e, e
    ld [bc], a
    ld l, a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    cpl
    cpl
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld e, h
    ld c, e
    ld c, d
    ld e, e
    inc bc
    ld l, a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    cpl
    cpl
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld e, h
    ld c, e
    ld c, d
    dec l
    ld c, a
    ld l, e
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld l, $4b
    ld c, h
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, [hl]
    call $cdcd
    call $cdcd
    call $cdcd
    call $c98c
    jp z, $8c8c

    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    set 1, h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc h
    adc $d7
    rst $10
    rst $10
    rst $10
    rst $10
    rst $10
    rst $10
    rst $10
    rst $10
    rst $08
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ret nc

    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    pop de
    jp nc, $2f2f

    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    db $d3
    call nc, Call_001_7c7c
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    cpl
    cpl
    push de
    sub $7d
    ld a, l
    ld a, l
    ld a, l
    cpl
    cpl
    cpl
    cpl
    ret c

    cpl
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    cpl
    cpl
    cpl
    cpl
    ret c

    cpl
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    cpl
    cpl
    cpl
    cpl
    ret c

    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ret c

    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, h
    ld a, l
    ld a, l
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    cpl
    cpl
    cpl
    reti


    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, e
    or a
    cp b
    reti


    or a
    cpl
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    rst $38
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld e, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld c, c
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    add l
    add l
    add l
    add l
    add l
    add l
    add l
    add l
    ld e, d
    ld e, d
    jr c, jr_001_5223

    jr c, jr_001_5246

    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, a
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b

jr_001_5223:
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, c
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    ld d, $0a
    dec de
    ld [de], a
    jr @+$31

    rra

jr_001_5246:
    inc e
    inc h
    dec d
    ld e, $12
    db $10
    ld [de], a
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld d, e
    ld de, $1012
    ld de, $2c54
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld e, d
    inc l
    inc l
    inc l
    ld [hl], l
    ld e, b
    ld l, h
    ld e, b
    ld l, h
    ld l, [hl]
    ld e, d
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    ld e, e
    cpl
    cpl
    ld e, h
    inc l
    inc l
    inc l
    ld e, e
    sub b
    ld l, a
    sub c
    ld l, a
    sub d
    ld e, h
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    ld e, e
    cpl
    cpl
    ld e, h
    inc l
    inc l
    inc l
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], h
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    dec l
    ld c, a
    ld c, a
    ld l, $2c
    inc l
    inc l
    ld e, e
    sub e
    ld l, a
    sub h
    ld l, a
    sub l
    ld e, h
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    ld d, $0a
    dec de
    ld [de], a
    jr @+$2e

    inc l
    dec l
    ld c, a
    ld l, e
    ld c, a
    ld l, e
    ld c, a
    ld l, $2c
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    inc l
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld d, e
    ld de, $1012
    ld de, $2c54
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld e, d
    inc l
    inc l
    inc l
    ld [hl], l
    ld e, b
    ld l, h
    ld e, b
    ld l, h
    ld l, [hl]
    ld e, d
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    ld e, e
    cpl
    cpl
    ld e, h
    inc l
    inc l
    inc l
    ld e, e
    sub b
    ld l, a
    sub c
    ld l, a
    sub d
    ld e, h
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    ld e, e
    cpl
    cpl
    ld e, h
    inc l
    inc l
    inc l
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], h
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    dec l
    ld c, a
    ld c, a
    ld l, $2c
    inc l
    inc l
    ld e, e
    sub e
    ld l, a
    sub h
    ld l, a
    sub l
    ld e, h
    inc l
    inc l
    ld c, e
    ld c, d
    inc l
    inc l
    dec d
    ld e, $12
    db $10
    ld [de], a
    inc l
    inc l
    dec l
    ld c, a
    ld l, e
    ld c, a
    ld l, e
    ld c, a
    ld l, $2c
    inc l
    ld c, e
    ld c, h
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, [hl]
    adc [hl]
    or d
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or e
    jr nc, jr_001_53bc

    ld sp, $3131
    ld sp, $8e32
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    ld [hl], $2f
    cpl
    cpl
    cpl
    cpl
    scf
    adc [hl]
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    ld [hl], $2f
    cpl
    cpl
    cpl
    cpl
    scf
    adc [hl]
    or b
    cpl
    cpl

jr_001_53bc:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    ld b, b
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, c
    adc [hl]
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    ld [hl], $11
    ld [de], a
    db $10
    ld de, $372f
    adc [hl]
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    ld [hl], $2f
    cpl
    cpl
    cpl
    cpl
    scf
    adc [hl]
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    adc [hl]
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    dec hl
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    jr nc, jr_001_545c

    ld sp, $3131
    ld sp, $8e32
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    ld [hl], $15
    ld [de], a
    rla
    ld c, $1c
    scf
    adc [hl]
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    ld [hl], $2f
    cpl
    cpl
    cpl
    cpl
    scf
    adc [hl]
    or b
    cpl
    cpl

jr_001_545c:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    dec [hl]
    adc [hl]
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    dec hl
    jr c, jr_001_54b5

    add hl, sp
    add hl, sp
    add hl, sp

Jump_001_547f:
    ld a, [hl-]
    adc [hl]
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    dec hl
    dec sp
    cpl
    cpl
    cpl
    cpl
    inc a
    adc [hl]
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    dec hl
    dec sp
    cpl
    cpl
    cpl
    cpl
    inc a
    adc [hl]
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l

jr_001_54b5:
    dec hl
    dec sp
    cpl
    cpl
    cpl
    cpl
    inc a
    adc [hl]
    or b
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or l
    dec hl
    dec sp
    cpl
    cpl
    cpl
    cpl
    inc a
    adc [hl]
    or c
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    or h
    dec hl
    dec a
    ld a, $3e
    ld a, $3e
    ccf
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add h
    add a
    add a
    adc h
    add a
    add a
    adc h
    add a
    add a
    adc h
    add a
    add a
    add [hl]
    rlca
    rlca
    ld e, $1e
    ld e, $1e
    ld e, $79
    cpl
    cpl
    adc l
    cpl
    cpl
    adc l
    cpl
    cpl
    adc l
    cpl
    cpl
    adc b
    rlca
    rlca
    or h
    or l
    cp e
    ld l, $bc
    ld a, c
    cpl
    cpl
    adc l
    cpl
    cpl
    adc l
    cpl
    cpl
    adc l
    cpl
    cpl
    adc b
    rlca
    rlca
    cp a
    cp a
    cp a
    cp a
    cp a
    adc c
    adc d
    adc d
    adc [hl]
    adc d
    adc d
    adc [hl]
    adc d
    adc d
    adc [hl]
    adc d
    adc d
    adc e
    rlca
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add h
    add a
    add a
    adc h
    add a
    add a
    adc h
    add a
    add a
    adc h
    add a
    add a
    add [hl]
    rlca
    rlca
    ld e, $1e
    ld e, $1e
    ld e, $79
    cpl
    cpl
    adc l
    cpl
    cpl
    adc l
    cpl
    cpl
    adc l
    cpl
    cpl
    adc b
    rlca
    rlca
    cp l
    or d
    ld l, $be
    ld l, $79
    cpl
    cpl
    adc l
    cpl
    cpl
    adc l
    cpl
    cpl
    adc l
    cpl
    cpl
    adc b
    rlca
    rlca
    cp a
    cp a
    cp a
    cp a
    cp a
    adc c
    adc d
    adc d
    adc [hl]
    adc d
    adc d
    adc [hl]
    adc d
    adc d
    adc [hl]
    adc d
    adc d
    adc e
    rlca
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr @+$21

    ld hl, $473e
    ld a, a
    ld a, [c]
    cp $12
    ld e, $12
    ld e, $12
    ld e, $7e
    ld a, [hl]
    rst $38
    add e
    rst $38
    add c
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_001_5607

    ld hl, $473e
    ld a, a
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $07
    db $fd
    rlca
    db $fd
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5607:
    nop
    rlca
    rlca
    jr jr_001_562b

    rst $38
    rst $38
    ld [hl], a
    ld de, $11ff
    rst $38
    rst $38
    db $dd
    ld b, h
    rst $38
    ld b, h
    rst $38
    rst $38
    ld [hl], a
    ld de, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_562b:
    rst $38
    nop
    nop
    inc bc
    inc bc
    dec b
    inc b
    inc bc
    inc bc
    nop
    nop
    jr jr_001_5650

    inc l
    inc h
    ld a, [de]
    ld a, [de]
    ld [$4008], sp
    ld b, b
    rlca
    rlca
    jr @+$21

    and b
    cp a
    dec sp
    ccf
    ld a, h
    ld b, h
    ld a, h
    ld b, h

jr_001_564c:
    db $10
    db $10
    ld [bc], a
    ld [bc], a

jr_001_5650:
    ldh [$e0], a
    jr jr_001_564c

    dec b
    db $fd
    adc h
    db $fc
    ld a, b
    ld c, b
    ld l, h
    ld [hl], h
    nop
    nop
    rlca
    rlca
    jr jr_001_5681

    jr nz, jr_001_56a3

    jr nc, jr_001_56a5

    rra
    dec e
    ld a, $22
    ld a, $22
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    nop
    nop
    ld a, h
    ld a, h
    ld h, [hl]

jr_001_5681:
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, b
    ld h, b
    inc a
    inc a
    ld c, $0e
    ld c, [hl]
    ld c, [hl]
    inc a
    inc a
    nop
    nop
    rlca
    rlca
    rra
    jr jr_001_56df

    jr nz, jr_001_5722

jr_001_56a3:
    ld c, a
    ld a, a

jr_001_56a5:
    ld e, a
    ld [hl], b
    ld [hl], b
    and d
    and d
    or b
    or b
    inc b
    inc b
    rlca
    inc b
    inc b
    inc b
    inc b
    dec c
    inc b
    dec c
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    ld e, a
    ld a, a
    add hl, sp
    jr nc, @+$7d

    ld h, d
    ei
    or d
    rst $38
    and b
    rst $38
    jp nz, Jump_001_547f

    ld a, a
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    inc b
    ld [$0908], sp
    add hl, bc
    inc b
    inc b
    ld e, a
    ld a, a
    add hl, sp

jr_001_56df:
    jr nc, jr_001_575c

    ld h, d
    ei
    or d
    rst $38
    and b

jr_001_56e6:
    rst $38
    jp nz, Jump_001_547f

    ld a, a
    ld e, h
    jr jr_001_56e6

    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $07
    db $fd
    rlca
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, [$3f20]
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ldh [$bf], a
    ldh [$bf], a
    ld hl, sp-$01
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    rst $38
    ld de, $ffff
    db $dd
    ld b, h
    rst $38
    ld b, h
    rst $38
    rst $38
    ld [hl], a
    ld de, $11ff
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5722:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld [$1c08], sp
    inc d
    inc d
    inc d
    ld [$1808], sp
    rra
    jr nz, jr_001_577f

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ldh [$bf], a
    ldh [$bf], a
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    db $dd
    ld b, h
    rst $38
    ld b, h
    rst $38
    rst $38
    ld [hl], a
    ld de, $11ff
    rst $38
    rst $38
    db $dd
    ld b, h
    rst $38
    ld b, h

jr_001_575c:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_5784

    db $10
    db $10
    jr c, jr_001_5790

    jr z, jr_001_5792

    sub b
    sub b
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld a, [hl]
    ld a, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    nop
    nop
    nop
    nop
    ld a, [hl]

jr_001_577f:
    ld a, [hl]
    jr jr_001_579a

    jr @+$1a

jr_001_5784:
    jr jr_001_579e

    jr jr_001_57a0

    jr jr_001_57a2

    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_5790:
    rst $38
    rst $38

jr_001_5792:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop

jr_001_579a:
    nop
    xor $b4
    or h

jr_001_579e:
    ld h, h
    ld h, h

jr_001_57a0:
    inc a
    inc a

jr_001_57a2:
    ld l, $2e
    daa
    daa
    ld [hl], b
    ld [hl], b
    db $fc
    sbc h
    rst $30
    sbc a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ccf
    ld l, $7f
    ld h, e
    rst $38
    sbc b
    rst $30
    rra
    rst $30
    inc e
    rst $30
    rst $10
    inc [hl]
    ccf
    xor h
    cp a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld b, $06
    dec b
    dec b

jr_001_57da:
    rlca
    rlca
    rst $38
    xor [hl]
    rst $38
    inc hl
    rst $38
    jr jr_001_57da

    sbc a
    rst $30
    sbc h
    ld [hl], a
    ld d, a
    inc [hl]
    ccf
    ld l, h
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ccf
    cpl
    ld a, a
    ld a, h
    rst $30
    sbc h
    di
    rra
    ldh a, [$1f]
    ldh a, [$df]
    jr nc, @+$41

    and b
    cp a
    rst $38
    db $f4
    rst $38
    ld a, $ef
    jr c, @-$2f

    ld hl, sp+$0f
    ei
    ld c, $fa
    inc c
    db $fc
    inc b
    db $fc
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a

jr_001_5822:
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ccf
    cpl
    ccf
    inc a
    ld [hl], a
    ld e, h
    di
    sbc a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIE]
    jr nz, jr_001_588b

    rst $38
    db $f4
    rst $38
    ld a, $ef
    jr c, jr_001_5822

    ld sp, hl
    ld c, $fa
    ld c, $fa
    inc c
    db $fc
    inc b
    db $fc
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    inc e
    rst $30
    inc [hl]
    rst $30
    cp a
    ld l, h
    ld a, a
    db $10
    rra
    ld d, b
    ld e, a
    ld [hl-], a
    ccf
    pop af
    rst $38
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld d, [hl]
    ld d, [hl]
    ld a, [hl]
    ld a, [hl]
    ld l, [hl]
    ld l, [hl]
    ld b, [hl]
    ld b, [hl]
    nop

jr_001_588b:
    nop
    nop
    nop
    inc a
    inc a
    jr jr_001_58aa

    jr jr_001_58ac

    jr jr_001_58ae

    jr @+$1a

    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_58aa:
    nop
    nop

jr_001_58ac:
    ld [bc], a
    ld [bc], a

jr_001_58ae:
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a
    ret nz

    rst $38
    jr nz, @+$41

    ld [hl+], a
    ccf
    ld de, $721f
    ld a, [hl]
    cp a
    cp a
    rst $38
    rst $38
    rlca
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld a, a
    ret nz

    rst $38
    jr nz, jr_001_5941

    jr nz, jr_001_5943

    ld de, $721f
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    cp $02
    cp $04
    db $fc
    inc b
    db $fc
    adc b
    ld hl, sp+$4e
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    call $0932
    or $08
    rst $30
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38

jr_001_5941:
    nop
    rst $38

jr_001_5943:
    nop
    rst $38
    nop
    db $fc
    inc bc
    call z, $0833
    rst $30
    ld a, h
    ld b, h
    ccf
    ccf
    db $10
    rra
    db $10
    rra
    ld [de], a
    rra
    add hl, de
    rra
    ccf
    ccf
    ld a, $3e
    adc $f2
    adc [hl]
    jp c, $f909

    add hl, bc
    ld sp, hl
    ld c, [hl]
    cp $98
    ld hl, sp-$04
    db $fc
    ld a, h
    ld a, h
    rlca
    rlca
    rra
    jr @+$40

    jr nz, jr_001_59f2

    ld c, a
    ld a, a
    ld e, a
    ld [hl], b
    ld [hl], b
    and d
    and d
    or b
    or b
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld e, [hl]
    ld e, [hl]
    ld c, [hl]
    ld c, [hl]
    ld b, [hl]
    ld b, [hl]
    nop
    nop
    nop
    nop
    jr jr_001_59a8

    jr jr_001_59aa

    jr jr_001_59ac

    jr jr_001_59ae

    nop
    nop
    jr jr_001_59b2

    nop
    nop
    ld [de], a
    ld e, $12
    ld e, $12
    ld e, $12
    ld e, $7e
    ld a, [hl]
    cp a
    add e

jr_001_59a8:
    rst $38
    add c

jr_001_59aa:
    rst $38
    rst $38

jr_001_59ac:
    nop
    nop

jr_001_59ae:
    ldh [$e0], a
    jr jr_001_59aa

jr_001_59b2:
    inc b
    db $fc
    inc c
    db $fc
    ld hl, sp-$38
    inc l
    inc [hl]
    ld l, $32
    nop
    nop
    ld b, [hl]

jr_001_59bf:
    ld b, [hl]
    ld b, [hl]

jr_001_59c1:
    ld b, [hl]
    ld b, [hl]

jr_001_59c3:
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    inc l
    inc l
    jr jr_001_59e2

    nop
    nop
    nop
    nop
    ld [hl], $36
    ld e, a
    ld c, c
    ld e, a
    ld b, c
    ld a, a
    ld b, c
    ld a, $22
    inc e
    inc d

jr_001_59da:
    ld [$fe08], sp
    ld [bc], a
    db $fd
    dec b
    db $fd
    dec b

jr_001_59e2:
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    cp $ef
    jr c, jr_001_59da

    add hl, sp
    nop
    inc b
    nop
    inc b
    nop
    inc b

jr_001_59f2:
    ld bc, $0105
    dec b
    inc bc
    rlca
    ld b, $06
    inc c
    inc c
    jp z, $c8c0

    ret nz

    jp z, $88c0

    add b
    adc b
    add a
    ld [$0a00], sp
    nop
    ld [$6f00], sp
    inc de
    cpl
    inc de
    ld l, a
    inc de
    cpl
    ld de, $d12d
    inc l
    db $10
    ld l, h
    db $10
    inc l
    db $10
    and b
    jr nz, jr_001_59bf

    jr nz, jr_001_59c1

    jr nz, jr_001_59c3

    and b
    and b
    and b
    ldh [$e0], a
    ld h, b
    ld h, b
    jr nc, jr_001_5a5c

    ld [$08a8], sp
    jr jr_001_5a39

    xor b
    ld [$0848], sp
    xor b
    ld [$0818], sp

jr_001_5a39:
    xor b
    ld [$0048], sp
    cp $00
    rst $38
    ld a, a
    rst $38
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    db $eb
    ld a, a
    pop bc
    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop

jr_001_5a5c:
    db $10
    db $10
    dec bc
    dec bc
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    or h
    or h
    db $e4
    db $e4
    cp h
    cp h
    xor $6e
    rst $20
    daa
    ldh a, [rNR10]
    db $fc
    sbc h
    ld [hl], a
    ld e, a
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    jr @+$41

    jr nz, jr_001_5b06

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    ld [bc], a
    inc bc
    dec b
    inc b
    rlca
    inc b
    inc b
    rlca
    inc b
    rlca
    inc b
    ld b, $04
    dec b
    inc b
    rlca
    adc $fa
    inc c
    db $fc
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp+$00
    inc a
    nop
    ld a, [hl]
    db $10
    ld h, a
    inc h
    jp $c324


    inc h

jr_001_5ac7:
    jp $c324


    inc [hl]

jr_001_5acb:
    jp Jump_000_3c00


    nop
    ld h, [hl]
    nop
    rst $20
    inc l
    jp $c33c


    inc a
    jp Jump_001_423c


    jr jr_001_5b42

    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_5b04

    sub b
    sub b
    cp b
    xor b
    xor b
    xor b
    db $10
    db $10
    ld a, [bc]
    db $10
    ld b, $08
    ld [bc], a
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    rla
    ld d, b
    jr z, jr_001_5b60

    ld a, [hl+]
    ld h, b
    jr z, jr_001_5b64

jr_001_5b04:
    ld a, [hl+]
    ld h, b

jr_001_5b06:
    jr z, jr_001_5b68

    jr z, jr_001_5b71

    ld l, b
    ld h, b
    sbc $2b
    ld l, $17
    ld l, [hl]
    rla
    ld l, $17
    ld l, [hl]
    rla
    ld l, $17
    ld l, $d7
    ld l, $17
    sbc b
    ld c, b
    or b
    ld d, b
    and b
    ld h, b
    and b
    jr nz, @-$5e

    jr nz, jr_001_5ac7

    jr nz, @-$5e

    jr nz, jr_001_5acb

    jr nz, jr_001_5b35

    xor b
    ld [$0818], sp
    xor b
    ld [$0848], sp

jr_001_5b35:
    cp b
    ld [$083f], sp
    cp a
    add hl, bc
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld a, [hl]
    rst $38

jr_001_5b42:
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    ld a, [hl]
    db $eb
    ld a, [hl]
    pop bc
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    jr c, @+$3a

jr_001_5b60:
    inc [hl]
    inc h
    inc a
    inc h

jr_001_5b64:
    ccf
    daa
    inc a
    daa

jr_001_5b68:
    inc a
    daa
    ccf
    cpl
    scf
    inc a
    rla
    inc d
    rla

jr_001_5b71:
    rra
    inc e
    rra
    ldh a, [rIE]
    nop
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    cp a
    and b
    cp a
    and b
    cp a
    cp b
    ld a, a
    ld a, a
    cpl
    cpl
    ld a, a
    ld a, a
    rst $30
    sbc h

jr_001_5b8a:
    rst $30
    sbc h
    db $fd
    dec b
    db $fd
    dec b
    db $fd
    dec e
    rst $38
    rst $38
    rst $30
    db $f4
    rst $38
    cp $ef
    jr c, jr_001_5b8a

    jr c, @+$03

    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    jp Jump_001_433c


    inc a
    ld b, e
    jr jr_001_5c2a

    jr jr_001_5c2c

    ld [$0876], sp
    ld [hl], $08
    inc [hl]
    jr jr_001_5bf4

    jr jr_001_5bf4

    jr jr_001_5bf6

    ld [$0034], sp
    jr jr_001_5bd7

jr_001_5bd7:
    ld [$0800], sp
    nop
    ld [$0000], sp
    rrca
    rrca
    rra
    db $10
    inc a
    jr nz, jr_001_5c55

    ld b, b
    ld [hl], e
    ld b, e
    ld h, a
    ld c, h
    ccf
    jr z, jr_001_5bed

jr_001_5bed:
    nop
    add b
    add b
    call c, Call_000_3e5c
    ld [hl+], a

jr_001_5bf4:
    ld [hl-], a
    ld [c], a

jr_001_5bf6:
    or c
    pop bc
    jp Jump_000_274b


    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ret nc

    db $10
    ret nc

    ret nc

    ldh [rNR41], a
    ld e, h
    ld d, b
    ld a, h
    ld d, b
    add hl, sp
    jr nc, jr_001_5c8f

    ld c, h
    xor $82
    ret nz

    add h
    ld h, b
    ld b, e
    ld sp, $1f26
    inc a
    cp e
    ld h, d
    pop af
    ld b, c
    ld h, c
    ld b, c
    jp $f703


    inc b
    xor $08

jr_001_5c2a:
    sbc h
    ld h, b

jr_001_5c2c:
    sub b

jr_001_5c2d:
    db $10
    ld [$1808], sp
    jr jr_001_5c6f

    ld h, h
    ld a, [c]
    jp nz, Jump_001_60e3

    add hl, sp
    jr nz, jr_001_5c2d

    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_001_5c55:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, @+$3a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_5c6f:
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    ld de, $1111
    ld de, $1212
    di
    rra
    ldh a, [$3f]
    ldh a, [$bf]
    ld h, b
    ld a, a
    db $10
    rra
    ld d, b
    ld e, a
    jr nc, jr_001_5cc9

    pop af
    rst $38
    rst $08
    ei
    inc c

jr_001_5c8f:
    db $fc
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp+$4e
    ld a, d
    ret


    reti


    add hl, bc
    ld sp, hl
    ld c, $fe
    ld c, b
    ld hl, sp-$68
    ld hl, sp-$04
    db $fc
    ld a, h
    ld a, h
    and b
    cp a
    ld b, b
    ld a, a
    ldh [rIE], a
    jr nz, jr_001_5cf3

    ld de, $721f
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    inc a
    nop
    inc e
    nop
    inc e
    nop
    jr jr_001_5cc5

jr_001_5cc5:
    ld [$0000], sp
    nop

jr_001_5cc9:
    nop
    nop
    nop
    nop
    rst $38
    nop
    xor e
    nop
    ld d, l
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    nop
    jr jr_001_5ce1

jr_001_5ce1:
    dec d
    nop
    ld [de], a
    nop
    dec d
    nop
    jr jr_001_5ce9

jr_001_5ce9:
    dec d
    nop
    ld [de], a
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ld b, b
    ld b, b

jr_001_5cf3:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, $32
    ld c, $32
    ld c, $32
    ld c, $32
    rrca
    inc sp
    adc a
    or e
    adc $f3
    xor $73
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, a
    ld b, a
    rra
    jr jr_001_5d66

    jr nz, jr_001_5da8

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    cp a
    and b
    cp a
    and b
    cp a
    cp b
    ld a, a
    ld a, a
    ccf
    ccf
    ld [hl], a
    ld a, h
    rst $30
    sbc h
    ld a, [c]
    and $f2
    and $f2
    and $f2
    and $f2
    and $f2
    and $f2
    and $f2
    and $00
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $f301
    sbc a
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$bf], a
    ld [hl], b
    ld a, a

jr_001_5d66:
    db $10
    rra
    ld d, b
    ld e, a
    ld sp, $3e3f
    ld [hl+], a
    rra
    rra
    db $10
    rra
    db $10
    rra
    ld [de], a
    rra
    add hl, de
    rra
    ccf
    ccf
    ld a, $3e
    ld [de], a
    ld e, $12
    ld e, $12
    ld e, $12
    ld e, $7e
    ld a, [hl]
    rst $38
    add e
    rst $38
    add c
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    ld h, b
    ldh [$80], a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_001_5da8:
    add b
    add b
    add b
    add b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    dec bc
    add hl, bc
    dec bc
    ld a, [bc]
    rrca
    ld a, [bc]
    rla
    ld [de], a
    rla
    inc e
    inc d
    rla
    rla
    inc d
    cpl
    inc h
    nop
    nop
    ld [hl], b
    ld [hl], b
    adc a
    adc a
    sbc b
    sbc a
    ldh [rIE], a
    ldh a, [$9f]
    ld a, b
    ld d, a
    ld a, a
    ld c, h
    dec sp
    cpl
    ret nc

    rst $18
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f2]
    pop hl
    push af
    db $e3
    ld a, [c]
    and $ff
    rst $38
    rst $38
    add c
    jp $df81


    add l
    rst $18
    add l
    rst $38
    cp l
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rrca
    ld c, a
    add a
    xor a
    rst $00
    ld c, a
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld c, a
    ld h, a
    ld a, [c]
    and $f5
    db $e3
    ld a, [c]
    pop hl
    ld hl, sp-$10
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    ld h, a
    xor a
    rst $00
    ld c, a
    add a
    rra
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $28
    rst $20
    rst $08
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    rst $20
    rst $08
    nop
    rst $28
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    jr jr_001_5ebf

    ld hl, $473e
    ld a, a
    ld e, a
    ld a, a
    add hl, sp
    jr nc, jr_001_5f24

    ld h, d
    ei
    or d
    ldh [$e0], a
    jr @-$06

    add h
    ld a, h
    ld [c], a
    cp $fa
    cp $9c
    inc c
    sbc $46
    rst $18
    ld c, l
    rst $38
    and b
    rst $38

jr_001_5ebf:
    jp nz, Jump_001_547f

    ld a, a
    ld e, h
    ccf
    ld l, $3f
    inc hl
    rra
    jr jr_001_5ed2

    rlca
    rst $38
    dec b
    rst $38
    ld b, e
    cp $2a

jr_001_5ed2:
    cp $3a
    db $fc
    ld [hl], h
    db $fc
    call nz, Call_000_18f8
    ldh [$e0], a
    rlca
    rlca
    rra
    jr jr_001_5f1f

    jr nz, jr_001_5f62

    ld c, a
    ld a, a
    ld e, a
    ld [hl], b
    ld [hl], b
    and d
    and d
    or b
    or b
    ldh [$e0], a
    ld hl, sp+$18
    ld a, h
    inc b
    cp $f2
    cp $fa
    ld c, $0e
    ld b, l
    ld b, l
    dec c
    dec c
    or h
    or h
    ld h, h
    ld h, h
    inc a
    inc a
    ld l, $2e
    daa
    daa
    db $10
    db $10
    inc c
    inc c
    inc bc
    inc bc
    dec l
    dec l
    ld h, $26
    inc a
    inc a
    ld [hl], h
    ld [hl], h
    db $e4
    db $e4
    ld [$3008], sp
    jr nc, @-$3e

    ret nz

    cpl
    inc h
    cpl

jr_001_5f1f:
    inc h
    cpl
    inc h
    cpl
    inc h

jr_001_5f24:
    ld h, a
    ld a, h
    cp h
    and a
    rst $38
    db $e4

jr_001_5f2a:
    dec de
    dec de
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    inc b
    inc b
    rlca
    rlca
    inc b
    rlca
    inc b
    inc b
    inc b
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    rlca
    inc b
    rlca
    inc b
    inc b
    rlca
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    ld b, $06
    inc b
    inc b

jr_001_5f62:
    rlca
    rlca
    dec b
    dec b
    inc bc
    inc bc
    dec b
    dec b
    ld c, $0e
    rrca
    rra
    ld bc, $0110
    db $10
    ld bc, $0110
    ld [$0701], sp
    inc b
    add hl, bc
    nop
    rrca
    ld [$f801], sp
    pop af
    ld c, [hl]
    pop bc
    ld [bc], a
    rst $00
    adc h
    cp l
    add h
    xor l

jr_001_5f88:
    ld h, d
    rst $08
    ld a, [hl]
    cp $ec
    sub b
    rst $28
    sbc a
    ld a, [$daf7]
    rst $20
    cp l
    cp l
    or l
    xor l
    jp nc, Jump_001_7fef

jr_001_5f9b:
    ld a, a
    ld hl, sp-$08
    jr jr_001_5f88

    jr c, jr_001_5f2a

    cp b
    ld [$10b0], sp
    ldh [$e0], a
    ret nc

    jr nc, jr_001_5f9b

    ldh a, [rNR23]
    jr jr_001_5fdf

jr_001_5faf:
    jr nc, jr_001_6011

    ld h, b
    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    rst $38
    add e

jr_001_5fb9:
    add e
    ld h, b
    ld h, d
    ld a, [bc]
    nop
    ld [$0800], sp
    rlca
    ld [$0800], sp
    ld bc, $f1f8
    ld hl, sp-$0f
    ld [$6c01], sp
    db $10
    inc l
    db $10
    inc l
    pop de
    inc l
    ld de, $90ac
    rst $28
    sbc a
    rst $28
    sbc a
    db $ec
    sub b
    jr jr_001_5ff6

    inc c

jr_001_5fdf:
    inc c
    ld b, $c6
    inc bc
    jp Jump_000_0303


    rst $38
    rst $38
    pop bc
    pop bc
    ld b, $46
    nop
    inc b
    nop
    inc c
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10

jr_001_5ff6:
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    inc c
    ld c, h
    inc c
    ld c, h
    add hl, bc
    ld c, c
    dec bc
    ld c, e
    ld a, [bc]
    ld c, d
    db $10
    ld d, b
    ld [de], a
    ld d, d
    db $10
    ld d, b
    ld a, [hl]
    inc sp
    ld a, [hl]
    inc sp
    cp [hl]

jr_001_6011:
    sub e
    cp $d3
    ld a, [hl]
    ld d, e
    ld a, $0b
    ld a, [hl]
    ld c, e
    ld a, $0b
    and b
    jr nz, jr_001_5faf

    jr nc, jr_001_5fb9

    ld c, b
    sbc b
    ld c, b
    sbc b
    ld c, b
    sbc b
    ld c, b
    sbc b
    ld c, b
    sbc b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld c, $0a
    ld c, $0a
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    ld [de], a
    rra
    rra
    nop
    nop
    nop
    nop
    rra
    rra
    ccf
    jr nz, jr_001_60f4

    ld b, a
    ld a, h
    ld c, h
    ld a, h
    ld c, h
    ld a, h
    ld c, h
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [$30]
    ld hl, sp+$18
    ld hl, sp-$68
    ld hl, sp-$68
    ld hl, sp-$68
    ld a, a
    ld c, a
    ld a, a
    ld b, b
    ld a, a
    ld c, a
    ld a, h
    ld c, h
    ld a, h
    ld c, h
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld hl, sp-$68
    ld hl, sp+$18
    ld hl, sp-$68
    ld hl, sp-$68
    ld hl, sp-$68
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld c, [hl]
    ld c, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b

Jump_001_60e3:
    ld h, b
    ld h, b
    ld h, b
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]

jr_001_60f4:
    ld d, [hl]
    ld d, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld a, [hl]
    ld a, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff01
    ld bc, $ff01
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ldh a, [$b0]
    ldh a, [$b0]
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_001_6163

    jr nz, jr_001_6185

    jr nc, jr_001_6187

    jr jr_001_6161

    ccf
    inc l
    ld a, e
    ld c, a
    ld [hl], b
    ld e, a
    sub b
    sbc a
    sub b
    sbc a
    ld [hl], b
    ld a, a
    ld de, $3e1f
    ld a, $3e
    ld a, $00
    nop
    ld a, h
    ld a, h
    ld h, [hl]

jr_001_6161:
    ld h, [hl]
    ld h, [hl]

jr_001_6163:
    ld h, [hl]
    ld a, h
    ld a, h
    ld l, b
    ld l, b
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b

jr_001_6185:
    ld h, b
    ld h, b

jr_001_6187:
    ld h, b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, $3e
    nop
    nop
    nop
    xor $00
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    stop
    db $10
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    jr nc, jr_001_6216

    jr nc, jr_001_6218

    jr c, jr_001_6212

    jr jr_001_61f4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$08f8], sp
    jr jr_001_61f1

    xor b
    ld [$0048], sp
    add b
    nop
    add b
    nop

jr_001_61f1:
    add b
    nop
    add b

jr_001_61f4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_61ff

jr_001_61ff:
    jr nz, jr_001_6201

jr_001_6201:
    jr nz, jr_001_6222

    jr nz, jr_001_6205

jr_001_6205:
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    inc e
    inc h
    inc c
    inc [hl]
    inc c
    inc [hl]

jr_001_6212:
    inc b
    db $fc
    ld c, $32

jr_001_6216:
    ld c, $32

jr_001_6218:
    ld c, $32
    ld c, $32
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_6222:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    jr jr_001_6239

jr_001_6239:
    dec d
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [$08af], sp
    ld a, [de]
    ld [$08ad], sp
    ld c, a
    ld [$08a8], sp
    jr jr_001_6271

    xor b
    ld [$0048], sp
    nop
    nop
    nop
    nop

jr_001_6271:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld b, b
    dec d
    ld b, b
    dec d
    ld b, b
    dec d
    ld b, b
    dec d
    ret nz

    dec d
    pop bc
    rla
    ld b, e
    ld d, $46
    inc h
    inc c
    inc [hl]
    inc c
    inc [hl]
    inc b
    db $fc
    ld c, $32
    ld c, $32
    ld c, $32
    ld c, $32
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    jr nz, jr_001_62b5

    nop

jr_001_62b5:
    dec e
    ld bc, $0009
    rlca
    ld bc, $000b
    inc bc
    jr nz, @+$06

    nop
    jr nz, @+$22

    ld b, $00
    ld a, [bc]
    add b
    rla
    nop
    ld b, $01
    ld b, $00
    inc b
    ld bc, $0005
    ld e, $80
    dec bc
    nop
    ld b, $80
    inc e
    nop
    ld a, [bc]
    db $10
    ld [$0411], sp
    ld bc, $0002
    inc b
    ld bc, $0006
    nop
    db $10
    ld b, $00
    inc b
    db $10
    dec b
    nop
    ld a, [de]
    add b
    inc h
    nop
    dec d
    ld bc, $0007
    jr nz, jr_001_6307

    inc b
    nop
    dec b
    db $10
    inc bc
    nop
    dec c
    db $10
    ld b, $00
    inc bc
    db $10
    dec b
    nop
    dec h
    add b

jr_001_6307:
    dec d
    nop
    dec de
    db $10
    inc b
    nop
    inc de
    add b
    inc bc
    nop
    inc e
    add b
    add hl, de
    nop
    ld a, [de]
    ld bc, $0006
    ld a, [bc]
    jr nz, jr_001_631d

    nop

jr_001_631d:
    add hl, bc
    jr nz, jr_001_6322

    nop
    inc d

jr_001_6322:
    db $10
    inc bc
    nop
    ld c, $80
    ld d, $00
    ld a, [bc]
    db $10
    ld a, [bc]
    ld de, $1006
    ld d, $00
    inc de
    add b
    dec h
    nop
    inc e
    ld bc, $0006
    inc bc
    jr nz, @+$04

    nop
    ld c, $20
    inc bc
    nop
    inc b
    jr nz, jr_001_6346

    nop
    inc bc

jr_001_6346:
    jr nz, @+$07

    nop
    dec c
    add b
    ld hl, $1300
    ld bc, $0007
    dec b
    ld bc, $0006
    inc b
    ld bc, $0005
    ld b, $20
    inc bc
    nop
    dec b
    jr nz, jr_001_6362

    nop
    inc e

jr_001_6362:
    jr nz, jr_001_6367

    nop
    ld c, $80

jr_001_6367:
    ld [de], a
    nop
    inc c
    db $10
    inc b
    nop
    ld [bc], a
    ld bc, $0008
    db $10
    ld bc, $0008
    ld e, $80
    add hl, de
    nop
    db $10
    db $10
    inc bc
    nop
    inc b
    db $10
    dec b
    nop
    inc h
    add b
    inc e
    nop
    dec b
    ld bc, $0005
    ld de, $0320
    nop
    ld [de], a
    add b
    jr nz, jr_001_6391

jr_001_6391:
    ld a, [bc]
    db $10
    ld bc, $0611
    ld bc, $0000
    inc b
    db $10
    inc b
    nop
    inc b
    db $10
    inc bc
    nop
    ld [bc], a
    db $10
    add hl, de
    nop
    inc b
    db $10
    rlca
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    jr nz, jr_001_63bc

    ld hl, $2006
    dec bc
    nop
    rlca
    jr nz, @+$08

jr_001_63bc:
    nop
    ld h, h
    stop
    ld de, $1006
    dec b
    nop
    cpl
    add b
    ld d, $00
    rla
    jr nz, jr_001_63d1

    nop
    ld b, $20
    ld b, $00

jr_001_63d1:
    db $10
    add b
    jr jr_001_63d5

jr_001_63d5:
    inc [hl]
    ld bc, $0005
    ld bc, $0e10
    ld de, $1006
    jr nz, jr_001_63e1

jr_001_63e1:
    ld a, [bc]
    add b
    ld a, [bc]
    nop
    dec hl
    jr nz, jr_001_63ee

    nop
    ld b, $20
    dec b
    nop
    dec b

jr_001_63ee:
    jr nz, jr_001_63f6

    nop
    ld a, [bc]
    add b
    inc c
    nop
    ld a, [bc]

jr_001_63f6:
    ld bc, $0007
    ld [bc], a
    db $10
    dec bc
    nop
    dec b
    db $10
    inc b
    nop
    dec c
    add b
    inc e
    nop
    ld [hl], l
    ld bc, $0006
    ld c, $80
    rra
    nop
    ld a, [de]
    ld bc, $0006
    nop
    db $10
    rlca
    nop
    dec b
    db $10
    ld b, $00
    inc b
    db $10
    ld [$0300], sp
    db $10
    ld [$0c00], sp
    add b
    rrca
    nop
    ld a, [bc]
    ld bc, $0007
    nop
    db $10
    dec a
    nop
    dec b
    add b
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    jr jr_001_6453

jr_001_6453:
    inc b
    ld [$0400], sp
    ld [$0008], sp
    inc b
    inc d
    db $10
    ld [$1010], sp
    inc d
    jr jr_001_6477

    nop
    inc c
    inc b
    jr jr_001_6468

jr_001_6468:
    inc d
    inc d
    ld [$0404], sp
    inc c
    nop
    jr jr_001_6475

    nop
    ld [$0c0c], sp

jr_001_6475:
    jr jr_001_6477

jr_001_6477:
    inc c
    ld [$1800], sp
    db $10
    inc d
    inc d
    jr jr_001_6488

    xor d
    ld h, l
    add $65
    db $fc
    ld h, [hl]
    jr z, jr_001_64ee

jr_001_6488:
    inc [hl]
    ld h, a
    xor a
    ld h, [hl]
    pop af
    ld h, l
    ld d, h
    ld h, [hl]
    or d
    ld h, l
    adc $65
    inc d
    ld h, a
    adc $65
    adc $65
    jp $f766


    ld h, l
    ld h, b
    ld h, [hl]
    call nc, $dc67
    ld h, a
    sbc l
    ld h, a
    and l
    ld h, a
    db $e4
    ld h, a
    db $e4
    ld h, a
    db $e4
    ld h, a
    xor l
    ld h, a
    ccf
    ld l, a
    ld c, d
    ld l, a
    ld d, l
    ld l, a
    ld h, b
    ld l, a
    ld l, e
    ld l, a
    db $76
    ld l, a
    add c
    ld l, a
    adc h
    ld l, a
    sub a
    ld l, a
    and d
    ld l, a
    xor l
    ld l, a
    cp b
    ld l, a
    jp $ce6f


    ld l, a
    reti


    ld l, a
    db $e4
    ld l, a
    rst $28
    ld l, a

Call_001_64d2:
    ret


Jump_001_64d3:
    push af
    push bc
    push de
    push hl
    ld a, [$df7f]
    cp $01
    jr z, jr_001_6524

    cp $02
    jr z, jr_001_655d

    ld a, [$df7e]
    and a
    jr nz, jr_001_6563

jr_001_64e8:
    ldh a, [$e4]
    and a
    jr z, jr_001_64fa

    xor a

jr_001_64ee:
    ld [$dfe0], a
    ld [$dfe8], a
    ld [$dff0], a
    ld [$dff8], a

jr_001_64fa:
    call Call_001_64d2
    call Call_001_69dd
    call Call_001_69fd
    call Call_001_683c
    call Call_001_6a21
    call Call_001_6c44
    call Call_001_6a65

jr_001_650f:
    xor a
    ld [$dfe0], a
    ld [$dfe8], a
    ld [$dff0], a
    ld [$dff8], a
    ld [$df7f], a
    pop hl
    pop de
    pop bc
    pop af
    ret


jr_001_6524:
    call Call_001_69c7
    xor a
    ld [$dfe1], a
    ld [$dff1], a
    ld [$dff9], a
    ld hl, $dfbf
    res 7, [hl]
    ld hl, $df9f
    res 7, [hl]
    ld hl, $dfaf
    res 7, [hl]
    ld hl, $dfcf
    res 7, [hl]
    ld hl, $6ee9
    call Call_001_6998
    ld a, $30
    ld [$df7e], a

jr_001_6550:
    ld hl, $657b

jr_001_6553:
    call Call_001_695d
    jr jr_001_650f

jr_001_6558:
    ld hl, $657f
    jr jr_001_6553

jr_001_655d:
    xor a
    ld [$df7e], a
    jr jr_001_64e8

jr_001_6563:
    ld hl, $df7e
    dec [hl]
    ld a, [hl]
    cp $28
    jr z, jr_001_6558

    cp $20
    jr z, jr_001_6550

    cp $18
    jr z, jr_001_6558

    cp $10
    jr nz, jr_001_650f

    inc [hl]
    jr jr_001_650f

    or d
    db $e3
    add e
    rst $00
    or d
    db $e3
    pop bc
    rst $00

Call_001_6583:
    ld a, [$dff1]
    cp $01
    ret


Call_001_6589:
    ld a, [$dfe1]
    cp $05
    ret


Call_001_658f:
    ld a, [$dfe1]
    cp $07
    ret


Call_001_6595:
    ld a, [$dfe1]
    cp $08
    ret


    nop
    or l
    ret nc

    ld b, b
    rst $00
    nop
    or l
    jr nz, jr_001_65e4

    rst $00
    nop
    or [hl]
    and c
    add b
    rst $00
    ld a, $05
    ld hl, $659b
    jp Jump_001_6936


    call Call_001_698b
    and a
    ret nz

    ld hl, $dfe4
    inc [hl]
    ld a, [hl]
    cp $02
    jr z, jr_001_65d3

    ld hl, $65a0
    jp Jump_001_6956


    ld a, $03
    ld hl, $65a5
    jp Jump_001_6936


    call Call_001_698b
    and a
    ret nz

Jump_001_65d3:
jr_001_65d3:
    xor a
    ld [$dfe1], a
    ldh [rNR10], a
    ld a, $08
    ldh [rNR12], a
    ld a, $80
    ldh [rNR14], a
    ld hl, $df9f

jr_001_65e4:
    res 7, [hl]
    ret


    nop
    add b
    pop hl
    pop bc
    add a
    nop
    add b
    pop hl
    xor h
    add a
    ld hl, $65e7
    jp Jump_001_6936


    ld hl, $dfe4
    inc [hl]
    ld a, [hl]
    cp $04
    jr z, jr_001_6617

    cp $0b
    jr z, jr_001_661d

    cp $0f
    jr z, jr_001_6617

    cp $18
    jp z, Jump_001_660e

    ret


Jump_001_660e:
    ld a, $01
    ld hl, $dff0
    ld [hl], a
    jp Jump_001_65d3


jr_001_6617:
    ld hl, $65ec
    jp Jump_001_6956


jr_001_661d:
    ld hl, $65e7
    jp Jump_001_6956


    ld c, b
    cp h
    ld b, d
    ld h, [hl]
    add a
    call Call_001_6583
    ret z

    call Call_001_6595
    ret z

    call Call_001_658f
    ret z

    call Call_001_6589
    ret z

    ld a, $02
    ld hl, $6623
    jp Jump_001_6936


    nop
    or b
    pop af
    or [hl]
    rst $00
    nop
    or b
    pop af
    call nz, Call_000_00c7
    or b
    pop af
    adc $c7
    nop
    or b
    pop af
    db $db
    rst $00
    call Call_001_658f
    ret z

    ld a, $07
    ld hl, $6640
    jp Jump_001_6936


    call Call_001_698b
    and a
    ret nz

    ld hl, $dfe4
    inc [hl]
    ld a, [hl]
    cp $01
    jr z, jr_001_6680

    cp $02
    jr z, jr_001_6685

    cp $03
    jr z, jr_001_668a

    cp $04
    jr z, jr_001_668f

    cp $05
    jp z, Jump_001_65d3

    ret


jr_001_6680:
    ld hl, $6645
    jr jr_001_6692

jr_001_6685:
    ld hl, $664a
    jr jr_001_6692

jr_001_668a:
    ld hl, $664f
    jr jr_001_6692

jr_001_668f:
    ld hl, $6640

jr_001_6692:
    jp Jump_001_6956


    ld a, $80
    db $e3
    nop
    call nz, $8393
    add e
    ld [hl], e
    ld h, e
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc de
    nop
    nop
    inc hl
    ld b, e
    ld h, e
    add e
    and e
    jp $e3d3


    rst $38
    call Call_001_6583
    ret z

    call Call_001_6595
    ret z

    call Call_001_658f
    ret z

    ld a, $06
    ld hl, $6695
    jp Jump_001_6936


    call Call_001_698b
    and a
    ret nz

    ld hl, $dfe4
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld hl, $669a
    add hl, bc
    ld a, [hl]
    and a
    jp z, Jump_001_65d3

    ld e, a
    ld hl, $66a5
    add hl, bc
    ld a, [hl]
    ld d, a
    ld b, $86

jr_001_66e1:
    ld c, $12
    ld a, e
    ld [c], a
    inc c
    ld a, d
    ld [c], a
    inc c
    ld a, b
    ld [c], a
    ret


    dec sp
    add b
    or d
    add a
    add a
    and d
    sub e
    ld h, d
    ld b, e
    inc hl
    nop
    add b
    ld b, b
    add b
    ld b, b
    add b
    call Call_001_6583
    ret z

    call Call_001_6595
    ret z

    call Call_001_658f
    ret z

    call Call_001_6589
    ret z

    ld a, $03
    ld hl, $66ec
    jp Jump_001_6936


    call Call_001_698b
    and a
    ret nz

    ld hl, $dfe4
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld hl, $66f1
    add hl, bc
    ld a, [hl]
    and a
    jp z, Jump_001_65d3

    ld e, a
    ld hl, $66f7
    add hl, bc
    ld a, [hl]
    ld d, a
    ld b, $87
    jr jr_001_66e1

    call Call_001_658f
    ret z

    ld a, $28
    ld hl, $6740
    jp Jump_001_6936


    or a
    add b
    sub b
    rst $38
    add e
    nop
    pop de
    ld b, l
    add b
    nop
    pop af
    ld d, h
    add b
    nop
    push de
    ld h, l
    add b
    nop
    ld [hl], b
    ld h, [hl]
    add b
    ld h, l
    ld h, l
    ld h, l
    ld h, h
    ld d, a
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld b, l
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [hl], b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    add b
    sub b
    and b
    ret nc

    ldh a, [$e0]
    ret nc

    ret nz

    or b
    and b
    sub b
    add b
    ld [hl], b
    ld h, b
    ld d, b
    ld b, b
    jr nc, jr_001_67c0

    jr nz, jr_001_67b2

    jr nz, @+$22

    jr nz, jr_001_67b6

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$12

    db $10
    ld a, $30
    ld hl, $674d
    jp Jump_001_6936


    ld a, $30
    ld hl, $6751
    jp Jump_001_6936


    call Call_001_698b
    and a
    ret nz

jr_001_67b2:
    ld hl, $dffc
    ld a, [hl]

jr_001_67b6:
    ld c, a
    cp $24
    jp z, Jump_001_67e9

    inc [hl]
    ld b, $00
    push bc

jr_001_67c0:
    ld hl, $6755
    add hl, bc
    ld a, [hl]
    ldh [rNR43], a
    pop bc
    ld hl, $6779
    add hl, bc
    ld a, [hl]
    ldh [rNR42], a
    ld a, $80
    ldh [rNR44], a
    ret


    ld a, $20
    ld hl, $6749
    jp Jump_001_6936


    ld a, $12
    ld hl, $6745
    jp Jump_001_6936


    call Call_001_698b
    and a
    ret nz

Jump_001_67e9:
    xor a
    ld [$dff9], a
    ld a, $08
    ldh [rNR42], a
    ld a, $80
    ldh [rNR44], a
    ld hl, $dfcf

jr_001_67f8:
    res 7, [hl]
    ret


jr_001_67fb:
    add b
    ld a, [hl-]
    jr nz, jr_001_685f

    add $21
    reti


    ld l, [hl]
    call Call_001_690d
    ldh a, [rDIV]
    and $1f
    ld b, a
    ld a, $d0
    add b
    ld [$dff5], a
    ld hl, $67fb
    jp Jump_001_6964


Jump_001_6817:
    ldh a, [rDIV]
    and $0f
    ld b, a
    ld hl, $dff4
    inc [hl]
    ld a, [hl]
    ld hl, $dff5
    cp $0e
    jr nc, jr_001_6832

    inc [hl]
    inc [hl]

jr_001_682a:
    ld a, [hl]
    and $f0
    or b
    ld c, $1d
    ld [c], a
    ret


jr_001_6832:
    cp $1e
    jp z, Jump_001_68e2

    dec [hl]
    dec [hl]
    dec [hl]
    jr jr_001_682a

Call_001_683c:
    ld a, [$dff0]
    cp $01
    jp z, Jump_001_686b

    cp $02
    jp z, $6800

    ld a, [$dff1]
    cp $01
    jp z, Jump_001_68b6

    cp $02
    jp z, Jump_001_6817

    ret


    add b
    add b
    jr nz, jr_001_67f8

    add a
    add b
    ld hl, sp+$20

jr_001_685f:
    sbc b
    add a
    add b
    ei
    jr nz, jr_001_67fb

    add a
    add b
    or $20
    sub l
    add a

Jump_001_686b:
    ld hl, $6ea9
    call Call_001_690d
    ld hl, $685a
    ld a, [hl]
    ld [$dff6], a
    ld a, $01
    ld [$dff5], a
    ld hl, $6857

jr_001_6880:
    jp Jump_001_6964


jr_001_6883:
    ld a, $00
    ld [$dff5], a
    ld hl, $685f
    ld a, [hl]
    ld [$dff6], a
    ld hl, $685c
    jr jr_001_6880

jr_001_6894:
    ld a, $01
    ld [$dff5], a
    ld hl, $6864
    ld a, [hl]
    ld [$dff6], a
    ld hl, $6861
    jr jr_001_6880

jr_001_68a5:
    ld a, $02
    ld [$dff5], a
    ld hl, $6869
    ld a, [hl]
    ld [$dff6], a
    ld hl, $6866
    jr jr_001_6880

Jump_001_68b6:
    ld hl, $dff4
    inc [hl]
    ld a, [hl+]
    cp $09
    jr z, jr_001_6883

    cp $13
    jr z, jr_001_6894

    cp $17
    jr z, jr_001_68a5

    cp $20
    jr z, jr_001_68e2

    ld a, [hl+]
    cp $00
    ret z

    cp $01
    jr z, jr_001_68d8

    cp $02
    jr z, jr_001_68dc

    ret


jr_001_68d8:
    inc [hl]
    inc [hl]
    jr jr_001_68de

jr_001_68dc:
    dec [hl]
    dec [hl]

jr_001_68de:
    ld a, [hl]
    ldh [rNR33], a
    ret


Jump_001_68e2:
jr_001_68e2:
    xor a
    ld [$dff1], a
    ldh [rNR30], a
    ld hl, $dfbf
    res 7, [hl]
    ld hl, $df9f
    res 7, [hl]
    ld hl, $dfaf
    res 7, [hl]
    ld hl, $dfcf
    res 7, [hl]
    ld a, [$dfe9]
    cp $05
    jr z, jr_001_6908

    ld hl, $6ee9
    jr jr_001_6932

jr_001_6908:
    ld hl, $6ec9
    jr jr_001_6932

Call_001_690d:
    push hl
    ld [$dff1], a
    ld hl, $dfbf
    set 7, [hl]
    xor a
    ld [$dff4], a
    ld [$dff5], a
    ld [$dff6], a
    ldh [rNR30], a
    ld hl, $df9f
    set 7, [hl]
    ld hl, $dfaf
    set 7, [hl]
    ld hl, $dfcf
    set 7, [hl]
    pop hl

jr_001_6932:
    call Call_001_6998
    ret


Jump_001_6936:
    push af
    dec e
    ld a, [$df71]
    ld [de], a
    inc e
    pop af
    inc e
    ld [de], a
    dec e
    xor a
    ld [de], a
    inc e
    inc e
    ld [de], a
    inc e
    ld [de], a
    ld a, e
    cp $e5
    jr z, jr_001_6956

    cp $f5
    jr z, jr_001_6964

    cp $fd
    jr z, jr_001_696b

    ret

; Set sound #1 regs
Jump_001_6956:
jr_001_6956:
    push bc
    ld c, $10
    ld b, $05
    jr jr_001_6970
; Set sound #2 regs
Call_001_695d:
    push bc
    ld c, $16
    ld b, $04
    jr jr_001_6970
; Set sound #3 regs
Jump_001_6964:
jr_001_6964:
    push bc
    ld c, $1a
    ld b, $05
    jr jr_001_6970
; Set sound #4 regs
jr_001_696b:
    push bc
    ld c, $20
    ld b, $04

jr_001_6970:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_001_6970

    pop bc
    ret


Call_001_6978:
    inc e
    ld [$df71], a

Call_001_697c:
    inc e
    dec a
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld l, c
    ld h, b
    ld a, h
    ret


Call_001_698b:
    push de
    ld l, e
    ld h, d
    inc [hl]
    ld a, [hl+]
    cp [hl]
    jr nz, jr_001_6996

    dec l
    xor a
    ld [hl], a

jr_001_6996:
    pop de
    ret

; Copy from hl to sound wave pattern ram
Call_001_6998:
    push bc
    ld c, $30

jr_001_699b:
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, c
    cp $40
    jr nz, jr_001_699b

    pop bc
    ret

; Reset some sound registers
Call_001_69a5:
Jump_001_69a5:
    xor a
    ld [$dfe1], a
    ld [$dfe9], a
    ld [$dff1], a
    ld [$dff9], a
    ld [$df9f], a
    ld [$dfaf], a
    ld [$dfbf], a
    ld [$dfcf], a
    ld a, $ff
    ldh [rNR51], a
    ld a, $03
    ld [$df78], a

Call_001_69c7:
    ld a, $08
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR42], a
    ld a, $80
    ldh [rNR14], a
    ldh [rNR24], a
    ldh [rNR44], a
    xor a
    ldh [rNR10], a
    ldh [rNR30], a
    ret


Call_001_69dd:
    ld de, $dfe0
    ld a, [de]
    and a
    jr z, jr_001_69f0

    ld hl, $df9f
    set 7, [hl]
    ld hl, $6480
    call Call_001_6978
    jp hl


jr_001_69f0:
    inc e
    ld a, [de]
    and a
    jr z, jr_001_69fc

    ld hl, $6490
    call Call_001_697c
    jp hl


jr_001_69fc:
    ret


Call_001_69fd:
    ld de, $dff8
    ld a, [de]
    and a
    jr z, jr_001_6a10

    ld hl, $dfcf
    set 7, [hl]
    ld hl, $64a0
    call Call_001_6978
    jp hl


jr_001_6a10:
    inc e
    ld a, [de]
    and a
    jr z, jr_001_6a1c

    ld hl, $64a8
    call Call_001_697c
    jp hl


jr_001_6a1c:
    ret


jr_001_6a1d:
    call Call_001_69a5
    ret


Call_001_6a21:
    ld hl, $dfe8
    ld a, [hl+]
    and a
    ret z

    cp $ff
    jr z, jr_001_6a1d

    ld [hl], a
    ld b, a
    ld hl, $64b0
    and $1f
    call Call_001_697c
    call Call_001_6b13
    call Call_001_6a3c
    ret


Call_001_6a3c:
    ld a, [$dfe9]
    and a
    ret z

    ld hl, $6abe

jr_001_6a44:
    dec a
    jr z, jr_001_6a4d

    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_001_6a44

jr_001_6a4d:
    ld a, [hl+]
    ld [$df78], a
    ld a, [hl+]
    ld [$df76], a
    ld a, [hl+]
    ld [$df79], a
    ld a, [hl+]
    ld [$df7a], a
    xor a
    ld [$df75], a
    ld [$df77], a
    ret


Call_001_6a65:
    ld a, [$dfe9]
    and a
    jr z, jr_001_6aa8

    ld hl, $df75
    ld a, [$df78]
    cp $01
    jr z, jr_001_6aac

    cp $03
    jr z, jr_001_6aa8

    inc [hl]
    ld a, [hl+]
    cp [hl]
    jr nz, jr_001_6ab1

    dec l
    ld [hl], $00
    inc l
    inc l
    inc [hl]
    ld a, [$df79]
    bit 0, [hl]
    jp z, Jump_001_6a8f

    ld a, [$df7a]

Jump_001_6a8f:
jr_001_6a8f:
    ld b, a
    ld a, [$dff1]
    and a
    jr z, jr_001_6a9a

    set 2, b
    set 6, b

jr_001_6a9a:
    ld a, [$dff9]
    and a
    jr z, jr_001_6aa4

    set 3, b
    set 7, b

jr_001_6aa4:
    ld a, b

jr_001_6aa5:
    ldh [rNR51], a
    ret


jr_001_6aa8:
    ld a, $ff
    jr jr_001_6aa5

jr_001_6aac:
    ld a, [$df79]
    jr jr_001_6a8f

jr_001_6ab1:
    ld a, [$dff9]
    and a
    jr nz, jr_001_6aa8

    ld a, [$dff1]
    and a
    jr nz, jr_001_6aa8

    ret

; .db?
    ld bc, $ef24
    ld d, [hl]
    ld bc, $e500
    nop
    ld bc, $fd20
    nop
    ld bc, $de20
    rst $30
    inc bc
    jr @+$81

    rst $30
    inc bc
    jr @-$07

    ld a, a
    inc bc
    ld c, b
    rst $18
    ld e, e
    ld bc, $db18
    rst $20
    ld bc, $fd00
    rst $30
    inc bc
    jr nz, jr_001_6b64

    rst $30
    ld bc, $ed20
    rst $30
    ld bc, $ed20
    rst $30
    ld bc, $ed20
    rst $30
    ld bc, $ed20
    rst $30
    ld bc, $ed20
    rst $30
    ld bc, $ef20
    rst $30
    ld bc, $ef20
    rst $30
; end .db

Call_001_6b02:
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, [bc]
    ld [de], a
    inc e
    inc bc
    ld a, [bc]
    ld [de], a
    ret

; Copy 2 bytes from (hl) to (de)
; (Copy can't cross page boundary.)
Call_001_6b0d:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


Call_001_6b13:
    call Call_001_69c7
    xor a
    ld [$df75], a
    ld [$df77], a
    ld de, $df80
    ld b, $00
    ld a, [hl+]
    ld [de], a
    inc e
    call Call_001_6b0d
    ld de, $df90
    call Call_001_6b0d
    ld de, $dfa0
    call Call_001_6b0d
    ld de, $dfb0
    call Call_001_6b0d
    ld de, $dfc0
    call Call_001_6b0d
    ld hl, $df90
    ld de, $df94
    call Call_001_6b02
    ld hl, $dfa0
    ld de, $dfa4
    call Call_001_6b02
    ld hl, $dfb0
    ld de, $dfb4
    call Call_001_6b02
    ld hl, $dfc0
    ld de, $dfc4
    call Call_001_6b02

jr_001_6b64:
    ld bc, $0410
    ld hl, $df92

jr_001_6b6a:
    ld [hl], $01
    ld a, c
    add l
    ld l, a
    dec b
    jr nz, jr_001_6b6a

    xor a
    ld [$df9e], a
    ld [$dfae], a
    ld [$dfbe], a
    ret


jr_001_6b7d:
    push hl
    xor a
    ldh [rNR30], a
    ld l, e
    ld h, d
    call Call_001_6998
    pop hl
    jr jr_001_6bb3

Jump_001_6b89:
    call Call_001_6bb9
    call Call_001_6bce
    ld e, a
    call Call_001_6bb9
    call Call_001_6bce
    ld d, a
    call Call_001_6bb9
    call Call_001_6bce
    ld c, a
    inc l
    inc l
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], c
    dec l
    dec l
    dec l
    dec l
    push hl
    ld hl, $df70
    ld a, [hl]
    pop hl
    cp $03
    jr z, jr_001_6b7d

jr_001_6bb3:
    call Call_001_6bb9
    jp Jump_001_6c5e

; Increment 16-bit number pointed to by hl
Call_001_6bb9:
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    inc de

jr_001_6bbf:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl-], a
    pop de
    ret

; Increment twice 16-bit number pointed to by hl
Call_001_6bc5:
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    inc de
    inc de
    jr jr_001_6bbf

; b = ((hl))
Call_001_6bce:
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    ld a, [bc]
    ld b, a
    ret


jr_001_6bd5:
    pop hl
    jr jr_001_6c04

Jump_001_6bd8:
    ld a, [$df70]
    cp $03
    jr nz, jr_001_6bef

    ld a, [$dfb8]
    bit 7, a
    jr z, jr_001_6bef

    ld a, [hl]
    cp $06
    jr nz, jr_001_6bef

    ld a, $40
    ldh [rNR32], a

jr_001_6bef:
    push hl
    ld a, l
    add $09
    ld l, a
    ld a, [hl]
    and a
    jr nz, jr_001_6bd5

    ld a, l
    add $04
    ld l, a
    bit 7, [hl]
    jr nz, jr_001_6bd5

    pop hl
    call Call_001_6d67

Jump_001_6c04:
jr_001_6c04:
    dec l
    dec l
    jp Jump_001_6d39


Jump_001_6c09:
    dec l
    dec l
    dec l
    dec l
    call Call_001_6bc5

jr_001_6c10:
    ld a, l
    add $04
    ld e, a
    ld d, h
    call Call_001_6b02
    cp $00
    jr z, jr_001_6c3b

    cp $ff
    jr z, jr_001_6c24

    inc l
    jp Jump_001_6c5c


jr_001_6c24:
    dec l
    push hl
    call Call_001_6bc5
    call Call_001_6bce
    ld e, a
    call Call_001_6bb9
    call Call_001_6bce
    ld d, a
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl-], a
    jr jr_001_6c10

jr_001_6c3b:
    ld hl, $dfe9
    ld [hl], $00
    call Call_001_69a5
    ret


Call_001_6c44:
    ld hl, $dfe9
    ld a, [hl]
    and a
    ret z

    ld a, $01
    ld [$df70], a
    ld hl, $df90

Jump_001_6c52:
    inc l
    ld a, [hl+]
    and a
    jp z, Jump_001_6c04

    dec [hl]
    jp nz, Jump_001_6bd8

Jump_001_6c5c:
    inc l
    inc l

Jump_001_6c5e:
    call Call_001_6bce
    cp $00
    jp z, Jump_001_6c09

    cp $9d
    jp z, Jump_001_6b89

    and $f0
    cp $a0
    jr nz, jr_001_6c8b

    ld a, b
    and $0f
    ld c, a
    ld b, $00
    push hl
    ld de, $df81
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    add hl, bc
    ld a, [hl]
    pop hl
    dec l
    ld [hl+], a
    call Call_001_6bb9
    call Call_001_6bce

jr_001_6c8b:
    ld a, b
    ld c, a
    ld b, $00
    call Call_001_6bb9
    ld a, [$df70]
    cp $04
    jp z, Jump_001_6cbc

    push hl
    ld a, l
    add $05
    ld l, a
    ld e, l
    ld d, h
    inc l
    inc l
    ld a, c
    cp $01
    jr z, jr_001_6cb7

    ld [hl], $00
    ld hl, $6e02
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    pop hl
    jp Jump_001_6cd3


jr_001_6cb7:
    ld [hl], $01
    pop hl
    jr jr_001_6cd3

Jump_001_6cbc:
    push hl
    ld de, $dfc6
    ld hl, $6e94
    add hl, bc

jr_001_6cc4:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, e
    cp $cb
    jr nz, jr_001_6cc4

    ld c, $20
    ld hl, $dfc4
    jr jr_001_6d01

Jump_001_6cd3:
jr_001_6cd3:
    push hl
    ld a, [$df70]
    cp $01
    jr z, jr_001_6cfc

    cp $02
    jr z, jr_001_6cf8

    ld c, $1a
    ld a, [$dfbf]
    bit 7, a
    jr nz, jr_001_6ced

    xor a
    ld [c], a
    ld a, $80
    ld [c], a

jr_001_6ced:
    inc c
    inc l
    inc l
    inc l
    inc l
    ld a, [hl+]
    ld e, a
    ld d, $00
    jr jr_001_6d0d

jr_001_6cf8:
    ld c, $16
    jr jr_001_6d01

jr_001_6cfc:
    ld c, $10
    ld a, $00
    inc c

jr_001_6d01:
    inc l
    inc l
    inc l
    ld a, [hl-]
    and a
    jr nz, jr_001_6d57

    ld a, [hl+]
    ld e, a

jr_001_6d0a:
    inc l
    ld a, [hl+]
    ld d, a

jr_001_6d0d:
    push hl
    inc l
    inc l
    ld a, [hl+]
    and a
    jr z, jr_001_6d16

    ld e, $01

jr_001_6d16:
    inc l
    inc l
    ld [hl], $00
    inc l
    ld a, [hl]
    pop hl
    bit 7, a
    jr nz, jr_001_6d34

    ld a, d
    ld [c], a
    inc c
    ld a, e
    ld [c], a
    inc c
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, [hl]
    or $80
    ld [c], a
    ld a, l
    or $05
    ld l, a
    res 0, [hl]

jr_001_6d34:
    pop hl
    dec l
    ld a, [hl-]
    ld [hl-], a
    dec l

Jump_001_6d39:
    ld de, $df70
    ld a, [de]
    cp $04
    jr z, jr_001_6d4a

    inc a
    ld [de], a
    ld de, $0010
    add hl, de
    jp Jump_001_6c52


jr_001_6d4a:
    ld hl, $df9e
    inc [hl]
    ld hl, $dfae
    inc [hl]
    ld hl, $dfbe
    inc [hl]
    ret


jr_001_6d57:
    ld b, $00
    push hl
    pop hl
    inc l
    jr jr_001_6d0a

Call_001_6d5e:
    ld a, b
    srl a
    ld l, a
    ld h, $00
    add hl, de
    ld e, [hl]
    ret


Call_001_6d67:
    push hl
    ld a, l
    add $06
    ld l, a
    ld a, [hl]
    and $0f
    jr z, jr_001_6d89

    ld [$df71], a
    ld a, [$df70]
    ld c, $13
    cp $01
    jr z, jr_001_6d8b

    ld c, $18
    cp $02
    jr z, jr_001_6d8b

    ld c, $1d
    cp $03
    jr z, jr_001_6d8b

jr_001_6d89:
    pop hl
    ret


jr_001_6d8b:
    inc l
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    push de
    ld a, l
    add $04
    ld l, a
    ld b, [hl]
    ld a, [$df71]
    cp $01
    jr jr_001_6da6
; The next 4 instructions are not used.
    cp $03
    jr jr_001_6da1

jr_001_6da1:
    ld hl, $ffff
    jr jr_001_6dc2

jr_001_6da6:
    ld de, $6dcb
    call Call_001_6d5e
    bit 0, b
    jr nz, jr_001_6db2

    swap e

jr_001_6db2:
    ld a, e
    and $0f
    bit 3, a
    jr z, jr_001_6dbf

    ld h, $ff
    or $f0
    jr jr_001_6dc1

jr_001_6dbf:
    ld h, $00

jr_001_6dc1:
    ld l, a

jr_001_6dc2:
    pop de
    add hl, de
    ld a, l
    ld [c], a
    inc c
    ld a, h
    ld [c], a
    jr jr_001_6d89

; .db?
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    rrca
    nop
    nop
    ld de, $0f00
    ldh a, [rSB]
    ld [de], a
    db $10
    rst $38
    rst $28
    ld bc, $1012
    rst $38
    rst $28
    ld bc, $1012
    rst $38
    rst $28
    ld bc, $1012
    rst $38
    rst $28
    ld bc, $1012
    rst $38
    rst $28
    ld bc, $1012
    rst $38
    rst $28
    ld bc, $1012
    rst $38
    rst $28
    ld bc, $1012
    rst $38
    rst $28
    nop
    rrca
    inc l
    nop
    sbc h
    nop
    ld b, $01
    ld l, e
    ld bc, $01c9
    inc hl
    ld [bc], a
    ld [hl], a
    ld [bc], a
    add $02
    ld [de], a
    inc bc
    ld d, [hl]
    inc bc
    sbc e
    inc bc
    jp c, Jump_000_1603

    inc b
    ld c, [hl]
    inc b
    add e
    inc b
    or l
    inc b
    push hl
    inc b
    ld de, $3b05
    dec b
    ld h, e
    dec b
    adc c
    dec b
    xor h
    dec b
    adc $05
    db $ed
    dec b
    ld a, [bc]
    ld b, $27
    ld b, $42
    ld b, $5b
    ld b, $72
    ld b, $89
    ld b, $9e
    ld b, $b2
    ld b, $c4
    ld b, $d6
    ld b, $e7
    ld b, $f7
    ld b, $06
    rlca
    inc d
    rlca
    ld hl, $2d07
    rlca
    add hl, sp
    rlca
    ld b, h
    rlca
    ld c, a
    rlca
    ld e, c
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    add e
    rlca
    adc d
    rlca
    sub b
    rlca
    sub a
    rlca
    sbc l
    rlca
    and d
    rlca
    and a
    rlca
    xor h
    rlca
    or c
    rlca
    or [hl]
    rlca
    cp d
    rlca
    cp [hl]
    rlca
    pop bc
    rlca
    call nz, $c807
    rlca
    rlc a
    adc $07
    pop de
    rlca
    call nc, $d607
    rlca
    reti


    rlca
    db $db
    rlca
    db $dd
    rlca
    rst $18
    rlca
    nop
    nop
    nop
    nop
    nop
    ret nz

    and c
    nop
    ld a, [hl-]
    nop
    ret nz

    or c
    nop
    add hl, hl
    ld bc, $61c0
    nop
    ld a, [hl-]
    nop
    ret nz

    ld [de], a
    inc [hl]
    ld b, l
    ld h, a
    sbc d
    cp h
    sbc $fe
    sbc b
    ld a, d
    or a
    cp [hl]
    xor b
    db $76
    ld d, h
    ld sp, $2301
    ld b, h
    ld d, l
    ld h, a
    adc b
    sbc d
    cp e
    xor c
    adc b
    db $76
    ld d, l
    ld b, h
    inc sp
    ld [hl+], a
    ld de, $2301
    ld b, l
    ld h, a

Call_001_6ecd:
    adc c
    xor e
    call $feef
    call c, $98ba
    db $76
    ld d, h
    ld [hl-], a
    db $10
    and c
    add d
    inc hl
    inc [hl]
    ld b, l
    ld d, [hl]
    ld h, a
    ld a, b
    adc c
    sbc d
    xor e
    cp h
    call Call_000_3264
    db $10
    ld de, $5623
    ld a, b
    sbc c
    sbc b
    db $76
    ld h, a
    sbc d
    rst $18
    cp $c9
    add l
    ld b, d
    ld de, $0231
    inc b
    ld [$2010], sp
    ld b, b
    inc c
    jr jr_001_6f32

    dec b
    nop
    ld bc, $0503
    ld a, [bc]
    inc d
    jr z, jr_001_6f5b

    rrca
    ld e, $3c
    inc bc
    ld b, $0c
    jr jr_001_6f43

    ld h, b
    ld [de], a
    inc h
    ld c, b
    ld [$0010], sp
    rlca
    ld c, $1c
    jr c, jr_001_6f8f

    dec d
    ld a, [hl+]
    ld d, h
    inc b
    ld [$2010], sp
    ld b, b
    add b
    jr jr_001_6f5a

    ld h, b
    inc b
    add hl, bc
    ld [de], a
    inc h
    ld c, b
    sub b
    dec de

jr_001_6f32:
    ld [hl], $6c
    inc c
    jr jr_001_6f3b

    ld a, [bc]
    inc d
    jr z, jr_001_6f8b

jr_001_6f3b:
    and b
    ld e, $3c
    ld a, b
    nop
    ld c, $6f
    ld sp, hl

jr_001_6f43:
    ld a, h
    rst $38
    ld a, h
    ld de, $217d
    ld a, l
    nop
    dec b
    ld l, a
    ld c, b
    ld a, [hl]
    ld b, h
    ld a, [hl]
    ld c, d
    ld a, [hl]
    ld c, h
    ld a, [hl]
    nop
    ld c, $6f
    dec sp
    db $76

jr_001_6f5a:
    inc sp

jr_001_6f5b:
    db $76
    ld b, c
    db $76
    ld h, e
    halt
    ld sp, hl
    ld l, [hl]
    nop
    db $76
    db $fc
    ld [hl], l
    ld [bc], a
    halt
    nop
    nop
    ld c, $6f
    ld c, h
    ld [hl], c
    ld b, d
    ld [hl], c
    ld d, [hl]
    ld [hl], c
    ld h, d
    ld [hl], c
    nop
    ld c, $6f
    add $72
    cp b
    ld [hl], d
    call nc, Call_000_0272
    ld [hl], e
    nop
    ld c, $6f
    ld [$fa70], sp
    ld l, a
    nop
    nop
    nop

jr_001_6f8b:
    nop
    nop
    dec b
    ld l, a

jr_001_6f8f:
    sbc l
    ld a, [hl]
    sub c
    ld a, [hl]
    xor c
    ld a, [hl]
    or l
    ld a, [hl]
    nop
    ld c, $6f
    jr z, jr_001_7018

    inc h
    ld a, h
    ld a, [hl+]
    ld a, h
    inc l
    ld a, h
    nop
    ld c, $6f
    nop
    nop
    nop
    ld a, d
    nop
    nop
    nop
    nop
    nop
    ld c, $6f
    nop
    nop
    ld h, $7a
    ld a, [hl+]
    ld a, d
    nop
    nop
    nop
    ld c, $6f
    ld [hl], e
    ld a, d
    ld l, a
    ld a, d
    ld [hl], l
    ld a, d
    nop
    nop
    nop
    ld c, $6f
    rst $18
    ld a, d
    db $e3
    ld a, d
    push hl
    ld a, d
    rst $20
    ld a, d
    nop
    ld c, $6f
    ld h, l
    ld a, e
    ld l, e
    ld a, e
    ld l, a
    ld a, e
    ld [hl], e
    ld a, e
    nop
    ld c, $6f
    ld l, h
    ld a, b
    db $76
    ld a, b
    ld a, [hl]
    ld a, b
    add [hl]
    ld a, b
    nop
    dec hl
    ld l, a
    ld b, e
    ld [hl], l
    ld c, e
    ld [hl], l
    ld d, c
    ld [hl], l
    nop
    nop
    nop
    ld c, $6f
    adc l
    ld [hl], l
    sub l
    ld [hl], l
    sbc e
    ld [hl], l
    nop
    nop
    ld d, $70
    inc [hl]
    ld [hl], b
    ld d, $70
    ld c, l
    ld [hl], b
    sub e
    ld [hl], b
    rst $38
    rst $38
    ld a, [$626f]
    ld [hl], b
    ld [hl], h
    ld [hl], b
    ld h, d
    ld [hl], b
    add l
    ld [hl], b
    db $f4
    ld [hl], b
    rst $38
    rst $38
    ld [$9d70], sp
    ld [hl], h

jr_001_7018:
    nop
    ld b, c
    and d
    ld b, h
    ld c, h
    ld d, [hl]
    ld c, h
    ld b, d

jr_001_7020:
    ld c, h
    ld b, h
    ld c, h
    ld a, $4c
    inc a
    ld c, h
    ld b, h
    ld c, h
    ld d, [hl]
    ld c, h
    ld b, d
    ld c, h
    ld b, h
    ld c, h
    ld a, $4c
    inc a
    ld c, h
    nop
    ld b, h
    ld c, h
    ld b, h
    ld a, $4e
    ld c, b
    ld b, d
    ld c, b
    ld b, d
    ld a, [hl-]
    ld c, h
    ld b, h
    ld a, $4c
    ld c, b
    ld b, h
    ld b, d
    ld a, $3c
    inc [hl]
    inc a
    ld b, d
    ld c, h
    ld c, b
    nop
    ld b, h
    ld c, h
    ld b, h
    ld a, $4e
    ld c, b
    ld b, d
    ld c, b
    ld b, d
    ld a, [hl-]
    ld d, d
    ld c, b
    ld c, h
    ld d, d
    ld c, h
    ld b, h
    ld a, [hl-]
    ld b, d
    xor b
    ld b, h
    nop
    sbc l
    ld h, h
    nop
    ld b, c
    and e
    ld h, $3e
    inc a
    ld h, $2c
    inc [hl]
    ld a, $36
    inc [hl]
    ld a, $2c
    inc [hl]
    nop
    ld h, $3e
    jr nc, jr_001_709a

    ld a, [hl-]
    inc l
    ld e, $36
    jr nc, jr_001_7020

    inc [hl]
    ld [hl], $34
    jr nc, jr_001_70af

    ld a, [hl+]
    nop
    and e
    ld h, $3e
    jr nc, jr_001_70ac

    ld a, [hl-]
    ld a, [hl+]
    inc l
    inc [hl]
    inc [hl]
    inc l
    ld [hl+], a
    inc d
    nop
    and d
    ld d, d
    ld c, [hl]
    ld c, h
    ld c, b
    ld b, h
    ld b, d

jr_001_709a:
    ld b, h
    ld c, b
    ld c, h
    ld b, h
    ld c, b
    ld c, [hl]
    ld c, h
    ld c, [hl]
    and e
    ld d, d
    ld b, d
    and d
    ld b, h
    ld c, b
    and e
    ld c, h
    ld c, b
    ld c, h

jr_001_70ac:
    ld d, [hl]
    ld d, b
    and d

jr_001_70af:
    ld d, [hl]
    ld e, d
    and e
    ld e, h
    ld e, d
    and d
    ld d, [hl]
    ld d, d
    ld d, b
    ld c, h
    ld d, b
    ld c, d
    xor b
    ld c, h

jr_001_70bd:
    and a
    ld d, d
    and c
    ld d, [hl]
    ld e, b
    and e
    ld d, [hl]
    and d
    ld d, d
    ld c, [hl]
    ld d, d
    ld c, h
    ld c, [hl]
    ld c, b
    and a
    ld d, [hl]
    and c
    ld e, d

jr_001_70cf:
    ld e, h
    and e
    ld e, d
    and d
    ld d, [hl]
    ld d, h
    ld d, [hl]
    ld d, b
    ld d, h
    ld c, h
    ld e, d
    ld d, h
    ld c, h

jr_001_70dc:
    ld d, h
    ld e, d
    ld h, b
    ld h, [hl]
    ld d, h
    ld h, h
    ld d, h
    ld h, b
    ld d, h
    and e
    ld e, h
    and d
    ld h, b
    ld e, h
    ld e, d
    ld e, h
    and c
    ld d, [hl]
    ld e, d
    and h
    ld d, [hl]
    and d
    ld bc, $a200
    inc [hl]
    ld a, [hl-]
    ld b, h
    ld a, [hl-]
    jr nc, jr_001_7135

    inc [hl]
    ld a, [hl-]
    inc l
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl-]
    inc l
    ld a, [hl-]
    ld b, h
    ld a, [hl-]
    jr nc, @+$3c

    inc [hl]
    ld a, [hl-]
    inc l
    ld a, [hl-]
    ld a, [hl+]
    ld a, [hl-]
    inc l
    inc [hl]
    inc l
    ld h, $3e
    jr c, jr_001_7146

    jr c, jr_001_7140

    jr c, jr_001_714a

    jr c, jr_001_70bd

    inc [hl]
    ld b, d
    ld a, [hl+]
    and d
    inc [hl]
    ld a, [hl-]
    ld b, d
    ld a, [hl-]
    jr nc, jr_001_715e

    ld l, $34
    ld h, $34
    ld l, $34
    xor b
    jr nc, jr_001_70cf

    ld [hl-], a
    jr c, jr_001_715a

    jr c, jr_001_7164

    jr c, jr_001_70dc

    inc [hl]

jr_001_7135:
    and e
    inc [hl]
    ld a, [hl+]
    inc h
    inc e
    jr nz, jr_001_7160

    inc l
    jr nc, jr_001_7173

    xor b

jr_001_7140:
    ld h, $00
    ld l, b
    ld [hl], c
    ld l, b
    ld [hl], c

jr_001_7146:
    xor [hl]
    ld [hl], c
    rst $38
    rst $38

jr_001_714a:
    ld b, d
    ld [hl], c
    bit 6, c
    bit 6, c
    dec e
    ld [hl], d
    rst $38
    rst $38
    ld c, h
    ld [hl], c
    ld a, [hl-]
    ld [hl], d
    ld a, [hl-]
    ld [hl], d

jr_001_715a:
    ld a, a
    ld [hl], d
    ld a, a
    ld [hl], d

jr_001_715e:
    rst $38
    rst $38

jr_001_7160:
    ld d, [hl]
    ld [hl], c
    and e
    ld [hl], d

jr_001_7164:
    rst $38
    rst $38
    ld h, d
    ld [hl], c
    sbc l
    add h
    nop
    add c
    and e
    ld d, d
    and d
    ld c, b
    ld c, d
    and e
    ld c, [hl]

jr_001_7173:
    and d
    ld c, d
    ld c, b
    and e
    ld b, h
    and d
    ld b, h
    ld c, d
    and e
    ld d, d
    and d
    ld c, [hl]
    ld c, d
    and a
    ld c, b
    and d
    ld c, d
    and e
    ld c, [hl]
    ld d, d
    and e
    ld c, d
    ld b, h
    ld b, h
    ld bc, $01a2
    and e
    ld c, [hl]
    and d
    ld d, h
    and e
    ld e, h
    and d
    ld e, b
    ld d, h
    and a
    ld d, d
    and d
    ld c, d
    and e
    ld d, d
    and d
    ld c, [hl]
    ld c, d
    and e
    ld c, b
    and d
    ld c, b
    ld c, d
    and e
    ld c, [hl]
    ld d, d
    and e
    ld c, d
    ld b, h
    ld b, h
    ld bc, $9d00
    ld d, b
    nop
    add c
    and h
    ld a, [hl-]
    ld [hl-], a
    ld [hl], $30
    and h
    ld [hl-], a
    inc l
    xor b
    ld a, [hl+]
    and e
    ld bc, $3aa4
    ld [hl-], a
    ld [hl], $30
    and e
    ld [hl-], a
    ld a, [hl-]
    and h
    ld b, h
    ld b, d
    ld bc, $9d00
    ld b, e
    nop
    add c
    and e
    ld c, b
    and d
    ld b, d
    ld b, h
    ld c, b
    and c
    ld d, d
    ld c, [hl]
    and d
    ld b, h
    ld b, d
    and a
    ld a, [hl-]
    and d
    ld b, h
    ld c, d
    ld bc, $48a2
    ld b, h
    and c
    ld b, d
    ld b, d
    and d
    ld a, [hl-]
    ld b, d
    ld b, h
    and e
    ld c, b
    ld c, d
    and e
    ld b, h
    ld a, [hl-]
    ld a, [hl-]
    ld bc, $1ea2
    and e
    inc a
    and d
    ld b, h
    ld c, d
    and c
    ld c, d
    ld c, d
    and d
    ld c, b
    ld b, h
    and a
    ld b, b
    and d
    ld a, [hl-]
    ld b, b
    and c
    ld b, h
    ld b, b
    and d
    inc a
    ld a, [hl-]
    ld b, d
    ld a, [hl-]
    ld b, d
    ld b, h
    ld c, b
    ld b, d
    ld c, d
    ld b, d
    and c
    ld b, h
    ld c, d
    ld a, [hl-]
    ld bc, $3aa3
    ld a, [hl-]
    ld bc, $9d00
    jr nc, jr_001_7220

jr_001_7220:
    add c
    and h
    ld [hl-], a
    inc l
    jr nc, jr_001_7250

jr_001_7226:
    inc l
    ld [hl+], a
    and h
    ld [hl+], a
    and e
    jr nc, jr_001_722e

    and h

jr_001_722e:
    ld [hl-], a
    inc l
    jr nc, jr_001_725c

    and e
    inc l
    ld [hl-], a
    and h
    ld a, [hl-]
    ld [hl], $01
    nop
    sbc l
    ret


    ld l, [hl]
    jr nz, @-$5c

    ld [hl+], a
    ld a, [hl-]
    ld [hl+], a
    ld a, [hl-]
    ld [hl+], a
    ld a, [hl-]
    ld [hl+], a
    ld a, [hl-]
    inc l
    ld b, h
    inc l
    ld b, h
    inc l
    ld b, h
    inc l
    ld b, h
    ld a, [hl+]

jr_001_7250:
    ld b, d
    ld a, [hl+]
    ld b, d
    ld [hl+], a
    ld a, [hl-]
    ld [hl+], a
    ld a, [hl-]
    inc l
    ld b, h
    inc l
    ld b, h
    inc l

jr_001_725c:
    ld b, h
    jr nc, jr_001_7291

    ld [hl], $1e
    ld bc, $011e
    ld e, $2c
    inc h
    ld a, [de]
    ld [hl-], a
    ld bc, $1a32
    jr z, jr_001_7296

    ld bc, $4830
    ld bc, HeaderROMSize
    ld a, [hl-]
    ld bc, $2c42
    ld a, [hl-]
    inc l
    ld a, [hl-]
    and e
    inc l
    ld bc, $9d00
    ret


    ld l, [hl]
    jr nz, jr_001_7226

    ld b, h
    ld d, d
    ld b, h
    ld d, d
    ld b, h
    ld d, d
    ld b, h
    ld d, d
    ld b, d
    ld d, d
    ld b, d
    ld d, d
    ld b, d

jr_001_7291:
    ld d, d
    ld b, d
    ld d, d
    ld b, h
    ld d, d

jr_001_7296:
    ld b, h
    ld d, d
    ld b, h
    ld d, d
    ld b, h
    ld d, d
    ld b, d
    ld d, d
    ld b, d
    ld d, d
    and h
    ld bc, $a200
    ld bc, $0106
    ld b, $01
    and c
    ld b, $06
    and d
    ld bc, $0106
    ld b, $01
    ld b, $01
    ld b, $06
    ld b, $00
    dec bc
    ld [hl], e
    ccf
    ld [hl], e
    ld h, a
    ld [hl], e
    ld h, a
    ld [hl], e
    ret


    ld [hl], e
    rst $38
    rst $38
    cp b
    ld [hl], d
    ld [$3c73], sp
    ld [hl], e
    adc [hl]
    ld [hl], e
    adc [hl]
    ld [hl], e
    ld c, e
    ld [hl], h
    rst $38
    rst $38
    add $72
    rra
    ld [hl], e
    ld d, e
    ld [hl], e
    or l
    ld [hl], e
    or l
    ld [hl], e
    or l
    ld [hl], e
    or l
    ld [hl], e
    or l
    ld [hl], e
    or l
    ld [hl], e
    ret nz

    ld [hl], h
    sbc $74
    sbc $74
    sbc $74
    xor $74
    cp $74
    cp $74
    ld c, $75
    ld c, $75
    ld e, $75
    ld e, $75
    ld c, $75
    ld l, $75
    rst $38
    rst $38
    call nc, Call_000_3372
    ld [hl], e
    rst $38
    rst $38
    ld [bc], a
    ld [hl], e
    and l
    ld bc, $9d00
    ld h, d
    nop
    add b
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    jr nc, jr_001_7347

    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    jr nc, jr_001_734e

    nop
    sbc l
    jp hl


    ld l, [hl]
    and b
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    jr nc, jr_001_735b

    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    jr nc, jr_001_7362

    nop
    and d
    ld b, $a1
    ld b, $06
    and d
    ld b, $06
    nop
    and l
    ld bc, $9d00
    ld [hl-], a
    nop
    add b
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]

jr_001_7347:
    ld a, [hl-]
    and d
    jr nc, jr_001_737b

    ld a, [hl-]
    and c
    ld a, [hl-]

jr_001_734e:
    ld a, [hl-]
    and d
    jr nc, jr_001_7382

    nop
    sbc l
    jp hl


    ld l, [hl]
    and b
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]

jr_001_735b:
    ld a, [hl-]
    and d
    jr nc, jr_001_738f

    ld a, [hl-]
    and c
    ld a, [hl-]

jr_001_7362:
    ld a, [hl-]
    and d
    jr nc, jr_001_7396

    nop
    sbc l
    add d
    nop
    add b
    and d
    ld a, [hl-]
    ld c, b
    ld d, d
    ld d, b
    ld d, d
    and c
    ld c, b
    ld c, b
    and d
    ld c, d
    ld b, h
    ld c, b
    and c
    ld b, b
    ld b, b

jr_001_737b:
    and d
    ld b, h
    ld a, $40
    and c
    ld a, [hl-]
    ld a, [hl-]

jr_001_7382:
    and d
    ld a, $38
    ld a, [hl-]
    jr nc, jr_001_73ba

    jr c, jr_001_73c4

    jr nc, jr_001_73be

    ld a, $00
    sbc l

jr_001_738f:
    ld d, e
    nop
    ld b, b
    and d
    jr nc, jr_001_73d5

    ld b, b

jr_001_7396:
    ld b, h
    ld b, b
    and c
    ld a, $40
    and d
    ld b, h
    ld a, $40
    and c
    jr c, jr_001_73dc

    and d
    ld a, $38
    ld a, [hl-]
    and c
    ld l, $30
    and d
    jr c, jr_001_73dc

    jr nc, jr_001_73d6

    inc l
    inc l
    jr nc, @+$2a

    inc l
    jr c, jr_001_73b5

jr_001_73b5:
    sbc l
    jp hl


    ld l, [hl]
    and b
    and d

jr_001_73ba:
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]

jr_001_73be:
    and d
    jr nc, jr_001_73f1

    ld a, [hl-]
    and c
    ld a, [hl-]

jr_001_73c4:
    ld a, [hl-]
    and d
    jr nc, jr_001_73f8

    nop
    xor b
    ld a, [hl-]
    and d
    ld a, $38
    xor b
    ld a, [hl-]
    and e
    ld a, $a2
    ld b, b
    and c

jr_001_73d5:
    ld b, b

jr_001_73d6:
    ld b, b
    and d
    ld b, h
    ld a, $40
    and c

jr_001_73dc:
    ld b, b
    ld b, b
    and d
    ld b, h
    ld a, $a8
    ld b, b
    and e
    ld b, h
    and d
    ld c, b
    and c
    ld c, b
    ld c, b
    and d
    ld c, d
    ld b, h
    ld c, b
    and c
    ld c, b

jr_001_73f0:
    ld c, b

jr_001_73f1:
    and d
    ld c, d
    ld b, h
    xor b
    ld c, b

jr_001_73f6:
    and e
    ld c, h

jr_001_73f8:
    and d
    ld c, [hl]
    and c
    ld c, [hl]
    ld c, [hl]
    and d
    ld c, [hl]
    ld c, [hl]
    ld d, d
    ld c, [hl]
    ld c, [hl]
    ld c, h
    ld c, [hl]
    and c
    ld c, [hl]
    ld c, [hl]
    and d
    ld c, [hl]
    ld c, [hl]
    ld d, d
    ld c, [hl]
    ld c, [hl]
    ld c, h
    ld c, [hl]
    and c
    ld c, [hl]
    ld c, [hl]
    and d
    ld c, [hl]
    ld c, [hl]
    ld c, h
    and c
    ld c, h
    ld c, h
    and d
    ld c, h
    ld c, h
    ld c, d
    and c
    ld c, d
    ld c, d
    and d
    ld c, d
    ld b, h
    ld a, $40
    ld b, h
    ld [hl], $44
    and c
    ld b, b
    ld b, b
    and d
    ld [hl], $a3
    ld b, b
    and c
    ld [hl], $3a
    and d
    ld [hl], $30
    ld b, h
    and c
    ld b, b
    ld b, b
    and d
    ld [hl], $a3
    ld b, b
    and c
    ld [hl], $3a
    and d
    ld [hl], $2e
    and l
    ld [hl], $a8

jr_001_7447:
    ld bc, $38a3
    nop
    xor b
    jr nc, jr_001_73f0

    jr nc, jr_001_7480

    xor b
    jr nc, jr_001_73f6

    ld [hl], $a5
    ld bc, $01a8
    and e
    ld a, $a2
    ld b, b
    and c
    ld b, b
    ld b, b
    and d
    ld b, h
    ld a, $40
    and c
    ld b, b
    ld b, b
    and d
    ld b, h
    ld a, $a8
    ld [hl], $a3
    ld a, [hl-]
    and d
    ld a, $a1
    ld b, b
    ld b, h
    and d
    ld a, $44
    ld c, b
    ld c, b
    ld c, b
    ld a, [hl-]
    ld a, $a1
    ld b, b
    ld b, h
    and d
    ld a, $44

jr_001_7480:
    ld b, [hl]
    ld b, [hl]

jr_001_7482:
    ld b, [hl]
    ld a, [hl-]
    ld a, $a1

jr_001_7486:
    ld b, b
    ld b, h
    and d

jr_001_7489:
    ld a, $44
    ld a, [hl-]
    and c

jr_001_748d:
    ld a, $40
    and d
    ld a, [hl-]
    ld b, b

jr_001_7492:
    ld a, [hl-]
    and c
    ld a, $40

jr_001_7496:
    and d
    ld a, $3e

jr_001_7499:
    inc l
    ld a, [hl-]
    ld a, $26

jr_001_749d:
    jr nc, @-$5d

    jr nc, jr_001_74d1

    and d
    jr nc, jr_001_7447

    jr nc, jr_001_7447

    jr nc, jr_001_74dc

    and d

jr_001_74a9:
    jr nc, jr_001_74d3

    ld l, $a1

jr_001_74ad:
    ld l, $2e
    and d
    ld l, $a3
    ld l, $a1
    ld l, $32
    and d
    ld l, $28
    and l
    ld h, $a8
    ld bc, $2ca3
    nop
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld [hl-], a
    inc l
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    jr c, jr_001_74ff

    ld a, [hl-]
    and c

jr_001_74d1:
    ld a, [hl-]
    ld a, [hl-]

jr_001_74d3:
    and d
    ld [hl-], a
    inc l
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    inc l

jr_001_74dc:
    ld e, $00
    and d
    jr z, jr_001_7482

    ld b, b
    jr z, jr_001_7486

    ld e, $36
    jr z, jr_001_7489

    ld b, b
    jr z, jr_001_748d

    ld e, $36
    nop
    and d
    jr z, jr_001_7492

    ld b, b
    jr z, jr_001_7496

    ld e, $36
    jr z, jr_001_7499

    ld b, b
    jr z, jr_001_749d

    inc l
    ld b, h
    nop
    and d

jr_001_74ff:
    ld e, $a1
    ld [hl], $1e
    and d
    ld e, $36
    jr z, jr_001_74a9

    ld b, b
    jr z, jr_001_74ad

    jr z, jr_001_754d

    nop
    and d
    ld e, $a1
    ld [hl], $1e
    and d
    ld e, $36
    ld e, $a1
    ld [hl], $1e
    and d
    ld e, $36
    nop
    and d
    ld [hl+], a
    and c
    ld a, [hl-]
    ld [hl+], a
    and d
    ld [hl+], a
    ld a, [hl-]
    ld [hl+], a
    and c
    ld a, [hl-]
    ld [hl+], a
    and d
    ld [hl+], a
    ld a, [hl-]
    nop
    and d
    ld e, $a1
    ld [hl], $1e
    and d
    ld e, $36
    ld e, $a1
    ld [hl], $1e
    and d
    and h
    ld a, $00
    ld [hl], $3e
    ld b, h
    and h
    ld b, h
    ld d, a
    ld [hl], l
    ld h, d
    ld [hl], l
    rst $38
    rst $38
    ld b, l
    ld [hl], l
    ld e, [hl]
    ld [hl], l

jr_001_754d:
    rst $38
    rst $38
    ld c, e
    ld [hl], l
    ld a, h
    ld [hl], l
    rst $38
    rst $38
    ld d, c
    ld [hl], l
    sbc l
    jr nz, jr_001_755a

jr_001_755a:
    add c
    xor d
    ld bc, $9d00
    ld [hl], b
    nop
    add c
    and d
    ld b, d
    ld [hl-], a
    jr c, jr_001_75a9

    ld b, [hl]
    inc [hl]
    inc a
    ld b, [hl]
    ld c, d
    jr c, jr_001_75b0

    ld c, d
    ld c, h
    inc a
    ld b, d
    ld c, h
    ld b, [hl]
    inc [hl]
    inc a
    ld b, [hl]
    ld b, b
    ld l, $34
    ld b, b
    nop
    sbc l
    jp hl


    ld l, [hl]
    ld hl, $42a8
    and e
    ld a, [hl+]
    xor b
    ld b, d
    and e
    ld a, [hl+]
    xor b
    ld b, d
    and e
    ld a, [hl+]
    nop
    and c
    ld [hl], l
    xor h
    ld [hl], l
    rst $38
    rst $38
    adc a
    ld [hl], l
    xor b
    ld [hl], l
    rst $38
    rst $38
    sub l
    ld [hl], l
    xor $75
    rst $38
    rst $38
    sbc e
    ld [hl], l
    sbc l
    jr nz, jr_001_75a4

jr_001_75a4:
    add c
    xor d
    ld bc, $9d00

jr_001_75a9:
    ld [hl], b
    nop
    add c
    and d
    ld c, h
    ld b, d
    ld d, b

jr_001_75b0:
    ld b, d
    ld d, h
    ld b, d
    ld d, b
    ld b, d
    ld d, [hl]
    ld b, d
    ld d, h
    ld b, d
    ld d, b
    ld b, d
    ld d, h
    ld b, d
    ld c, h
    ld b, d
    ld d, b
    ld b, d
    ld d, h
    ld b, d
    ld d, b
    ld b, d
    ld d, [hl]
    ld b, d
    ld d, h
    ld b, d
    ld d, b

jr_001_75ca:
    ld b, d
    ld d, h
    ld b, d
    ld e, d
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld c, [hl]
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld d, b
    ld a, $4c
    ld a, $4c
    ld a, $4a
    ld a, $4a
    ld a, $46
    ld a, $4a
    ld a, $50
    ld a, $00
    sbc l
    jp hl


    ld l, [hl]
    ld hl, $4ca5
    ld c, d
    ld b, [hl]
    ld b, d
    jr c, jr_001_7637

    ld b, d
    ld b, d
    nop
    inc b
    halt
    nop
    inc d
    db $76
    inc hl
    db $76
    sbc l
    or d
    nop
    add b
    and d
    ld h, b
    ld e, h
    ld h, b
    ld e, h
    ld h, b
    ld h, d
    ld h, b
    ld e, h
    and h
    ld h, b
    nop
    sbc l
    sub d
    nop
    add b
    and d
    ld d, d
    ld c, [hl]
    ld d, d
    ld c, [hl]
    ld d, d
    ld d, h
    ld d, d
    ld c, [hl]
    and h
    ld d, d
    sbc l
    jp hl


    ld l, [hl]
    jr nz, jr_001_75ca

    ld h, d
    ld h, b
    ld h, d
    ld h, b
    ld h, d
    ld h, [hl]
    ld h, d
    ld h, b
    and e
    ld h, d
    ld bc, $766f
    ld l, c
    ld [hl], a

jr_001_7637:
    ld l, c
    ld [hl], a

jr_001_7639:
    nop
    nop
    cp a
    db $76
    xor d
    ld [hl], a
    inc a
    ld a, b
    inc c
    ld [hl], a
    db $eb
    ld [hl], a
    db $eb
    ld [hl], a
    push af
    ld [hl], a
    db $eb
    ld [hl], a
    db $eb
    ld [hl], a
    cp $77
    push af
    ld [hl], a
    db $eb
    ld [hl], a
    db $eb
    ld [hl], a
    cp $77
    push af
    ld [hl], a
    rlca
    ld a, b
    ld de, $fe78
    ld [hl], a
    push af
    ld [hl], a
    db $eb
    ld [hl], a
    ld e, e
    ld [hl], a
    ld e, e
    ld [hl], a
    ld a, [de]
    ld a, b
    ld a, [de]
    ld a, b
    ld a, [de]
    ld a, b
    ld a, [de]
    ld a, b
    sbc l
    jp $8000


    and d
    inc a
    ld a, $3c
    ld a, $38
    ld d, b
    and e
    ld bc, $3ca2
    ld a, $3c
    ld a, $38
    ld d, b
    and e
    ld bc, $01a2
    ld c, b
    ld bc, HeaderSGBFlag
    ld b, d
    ld bc, $a146
    ld b, d
    ld b, [hl]
    and d
    ld b, d
    ld b, d
    jr c, jr_001_7639

    inc a
    ld bc, $3ea2
    ld b, d
    ld a, $42
    inc a
    ld d, h
    and e
    ld bc, $3ea2
    ld b, d
    ld a, $42
    inc a
    ld d, h
    and e
    ld bc, $01a2
    ld d, [hl]
    ld bc, $0154
    ld d, h
    ld bc, $a250
    ld bc, $50a1
    ld d, h
    and d
    ld d, b
    ld c, [hl]
    and e
    ld d, b
    ld bc, $9d00
    ld [hl], h
    nop
    add b
    and d
    ld [hl], $38
    ld [hl], $38
    ld l, $3e
    and e
    ld bc, $36a2
    jr c, jr_001_7706

    jr c, @+$30

    ld a, $a3
    ld bc, $01a2
    ld [hl], $01
    ld [hl], $01
    ld [hl-], a
    ld bc, $3636
    ld [hl-], a
    ld [hl-], a
    jr nc, @-$5b

    ld [hl], $01
    and d
    jr c, jr_001_7724

    jr c, @+$3e

    ld [hl], $4e
    and e
    ld bc, $38a2
    inc a
    jr c, @+$3e

    ld [hl], $4e
    and e
    ld bc, $01a2
    ld d, b

jr_001_76fa:
    ld bc, HeaderGlobalChecksum
    ld b, [hl]
    ld bc, $a246
    ld bc, $48a1
    ld c, [hl]
    and d

jr_001_7706:
    ld c, b
    ld b, [hl]
    and e
    ld b, b
    ld bc, $9d00
    jp hl


    ld l, [hl]
    jr nz, @-$5c

    ld c, b
    ld b, [hl]
    ld c, b
    ld b, [hl]
    ld a, $20
    and e
    ld bc, $48a2
    ld b, [hl]
    ld c, b
    ld b, [hl]
    ld a, $20
    and e
    ld bc, $2ea2

jr_001_7724:
    inc a
    ld l, $24
    inc h
    inc h
    inc h
    inc a
    ld a, [hl+]
    ld a, $2a
    ld a, $a6
    ld l, $a3
    ld bc, $01a1
    and d
    ld c, b
    ld b, [hl]
    ld c, b
    ld b, [hl]
    ld l, $2e
    and e
    ld bc, $48a2
    ld b, [hl]
    ld c, b

jr_001_7742:
    ld b, [hl]
    ld l, $2e
    and e
    ld bc, $2aa2
    inc a
    ld a, [hl+]
    inc a
    ld l, $3e
    ld l, $3e
    ld l, $42
    ld l, $42
    and [hl]
    jr c, jr_001_76fa

    ld bc, $01a1
    nop
    xor b
    ld bc, $06a2
    dec bc
    xor b
    ld bc, $06a2
    dec bc
    and l
    ld bc, $0001
    sbc l
    push bc
    nop
    add b
    and c
    ld b, [hl]
    ld c, d
    and h
    ld b, [hl]
    and d
    ld bc, $50a3
    xor b
    ld c, d
    and e
    ld bc, $42a1
    ld b, [hl]
    and h
    ld b, d
    and d
    ld bc, $4ea3
    and c
    ld c, [hl]
    ld d, b
    and h
    ld b, [hl]
    and a
    ld bc, $40a1
    ld b, [hl]
    and h
    ld b, b
    and d
    ld bc, $46a3
    and c
    ld b, [hl]
    ld c, d
    and h
    ld b, d
    and a
    ld bc, $36a1
    jr c, jr_001_7742

    ld [hl], $a2
    ld bc, $3ca3
    and a
    ld b, d
    and h
    ld b, b
    and d
    ld bc, $9d00
    add h
    nop
    ld b, c
    and c
    ld b, b
    ld b, d
    and h
    ld b, b
    and d
    ld bc, $40a3
    xor b
    ld b, d
    and e
    ld bc, $3ca1
    ld b, b
    and h
    inc a
    and d
    ld bc, $3ca3
    and c
    inc a
    ld b, b
    and h
    ld b, b
    and a
    ld bc, $36a1
    ld [hl-], a
    and h
    ld l, $a2
    ld bc, $40a3
    and c
    ld [hl], $38
    and h
    ld [hl-], a
    and a
    ld bc, $2ea1
    ld [hl-], a
    and h
    ld l, $a2
    ld bc, $2aa3
    and a
    jr nc, @-$5a

    ld l, $a2
    ld bc, $a200
    jr c, @+$3a

    ld bc, $3838
    jr c, @+$03

    jr c, jr_001_77f5

jr_001_77f5:
    ld l, $2e
    ld bc, $2e2e
    ld l, $01
    ld l, $00
    ld a, [hl+]
    ld a, [hl+]
    ld bc, $2a2a
    ld a, [hl+]
    ld bc, $002a
    and d
    jr c, jr_001_7842

    ld bc, $3638
    ld [hl], $01
    ld [hl], $00
    ld [hl-], a
    ld [hl-], a
    ld bc, $2e32
    ld l, $01
    ld l, $00
    and d
    ld b, $0b
    ld bc, $0606
    dec bc
    ld bc, $0606
    dec bc
    ld bc, $0606
    dec bc
    ld bc, $0606
    dec bc
    ld bc, $0606
    dec bc
    ld bc, $0606
    dec bc
    ld bc, $0106
    dec bc
    ld bc, $000b
    sbc l
    ld h, [hl]
    nop
    add c
    and a
    ld e, b

jr_001_7842:
    ld e, d
    and e
    ld e, b
    and a
    ld e, [hl]
    and h
    ld e, d
    and d
    ld bc, $50a7
    ld d, h
    and e
    ld e, b
    and a
    ld e, d
    and h
    ld e, b
    and d
    ld bc, $50a7
    and e
    ld c, [hl]
    and a
    ld c, [hl]
    ld e, b
    ld d, h
    and e
    ld c, d
    and a
    ld e, d
    ld e, [hl]
    and e
    ld e, d
    and a
    ld d, h
    and h
    ld d, b
    and d
    ld bc, $8e00
    ld a, b
    ld de, $8e79
    ld a, b
    sub [hl]
    ld a, c
    nop
    nop
    xor l
    ld a, b
    jr c, jr_001_78f3

    xor l
    ld a, b

jr_001_787c:
    cp d
    ld a, c
    push de
    ld a, b
    ld e, [hl]
    ld a, c
    push de
    ld a, b
    db $dd
    ld a, c
    cp $78
    add h
    ld a, c
    cp $78
    add h
    ld a, c
    sbc l
    pop de
    nop
    add b
    and d
    ld e, h
    and c
    ld e, h
    ld e, d
    and d
    ld e, h
    ld e, h
    ld d, [hl]
    ld d, d
    ld c, [hl]
    ld d, [hl]
    and d
    ld d, d
    and c
    ld d, d
    ld d, b
    and d
    ld d, d
    ld d, d
    ld c, h
    ld c, b
    ld b, h
    and c
    ld c, h
    ld d, d
    nop
    sbc l
    or d
    nop
    add b
    and d
    ld d, d
    and c
    ld d, d
    ld d, d
    and d
    ld d, d
    and c
    ld d, d
    ld d, d
    and d
    ld b, h
    and c
    ld b, h
    ld b, h
    and d
    ld b, h
    ld bc, $a14c
    ld c, h
    ld c, h
    and d
    ld c, h
    and c
    ld c, h
    ld c, h
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld a, [hl-]
    ld bc, $9d00
    jp hl


    ld l, [hl]
    jr nz, jr_001_787c

    ld e, h
    and c
    ld e, h
    ld e, h
    and d
    ld e, h
    and c
    ld e, h
    ld e, h
    and d
    ld c, [hl]
    and c
    ld d, d
    ld d, d
    and d
    ld d, [hl]
    ld bc, $5ca2
    and c
    ld e, h
    ld e, h
    and d
    ld e, h
    and c

jr_001_78f3:
    ld e, h
    ld e, h
    and d
    ld b, h
    and c
    ld c, b
    ld c, b
    and d
    ld c, h
    ld bc, $a200
    ld b, $a7
    ld bc, $0ba2
    dec bc
    dec bc
    ld bc, $06a2
    and a
    ld bc, $0ba2
    dec bc
    dec bc
    ld bc, $a200
    ld c, b
    and c
    ld c, b
    ld d, d
    and d
    ld b, h
    and c
    ld b, h
    ld d, d
    and d
    ld b, d
    and c
    ld b, d
    ld d, d
    and d
    ld c, b
    and c
    ld c, b
    ld d, d
    and d
    ld c, h
    and c
    ld c, h
    ld d, d
    and d
    ld b, h
    and c
    ld b, h
    ld d, d
    and d
    ld c, b
    ld b, h
    and c
    ld c, b
    ld d, d
    ld d, [hl]
    ld e, d
    nop
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld [hl], $a1
    ld [hl], $36
    and d
    ld [hl], $01
    nop
    ld c, b
    and c
    ld c, b
    ld c, b
    and d
    ld c, b
    and c
    ld c, b
    ld c, b
    and d
    ld c, b
    and c
    ld c, b
    ld c, b
    and d
    ld c, b
    and c
    ld c, b
    ld c, b
    and d
    ld b, h
    and c
    ld b, h
    ld b, h
    and d
    ld b, h
    and c
    ld b, h
    ld b, h
    and d
    ld b, d
    and c
    ld b, d
    ld b, d
    and d
    ld b, d
    ld bc, $a200
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $0b0b
    ld bc, $a200
    ld c, b
    and c
    ld c, b
    ld d, d
    and d
    ld b, h
    and c
    ld b, h
    ld d, d
    and d
    ld b, d
    and c
    ld b, d
    ld d, d
    and d
    ld c, b
    and c
    ld c, b
    ld d, d
    and d
    ld c, h
    and c
    ld c, h
    ld d, d
    and d
    ld c, b
    and c
    ld c, b
    ld d, d
    and d
    ld b, h
    ld d, d
    and e
    ld e, h
    nop
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld a, [hl-]
    and c
    ld a, [hl-]
    ld a, [hl-]
    and d
    ld bc, $a33a
    ld c, h
    nop
    ld c, b
    and c
    ld c, b
    ld c, b
    and d
    ld c, b
    and c
    ld c, b
    ld c, b
    and d
    ld c, b
    and c
    ld c, b
    ld c, b
    and d
    ld c, b
    and c
    ld c, b
    ld c, b
    and d
    ld b, h

jr_001_79f2:
    and c
    ld b, h
    ld b, h
    and d
    ld b, h
    and c
    ld b, h
    ld b, h
    and d
    ld bc, $a34c
    ld b, h
    nop
    inc b
    ld a, d
    nop
    nop
    sbc l
    jp nz, Jump_001_4000

    and d
    ld e, h
    and c
    ld e, h
    ld e, d
    and d
    ld e, h
    ld e, h
    ld d, [hl]
    ld d, d
    ld c, [hl]
    ld d, [hl]
    and d
    ld d, d
    and c
    ld d, d
    ld d, b
    and d
    ld d, d
    ld d, d
    ld c, h
    ld c, b
    and c
    ld b, h
    ld b, d
    and d
    ld b, h
    and h
    ld bc, $2c00
    ld a, d
    nop
    nop
    ld c, e
    ld a, d
    sbc l
    jp nz, $8000

    and d
    ld e, h
    and c
    ld e, h
    ld e, d
    and d
    ld e, h
    ld e, h
    ld d, [hl]
    ld d, d
    ld c, [hl]
    ld d, [hl]
    and d
    ld d, d
    and c
    ld d, d
    ld d, b
    and d
    ld d, d
    ld c, h
    ld b, h
    ld d, d
    and e
    ld e, h
    and h
    ld bc, $9d00
    jp hl


    ld l, [hl]
    jr nz, jr_001_79f2

    ld e, h
    and c
    ld e, h
    ld e, h
    and d
    ld e, h
    and c
    ld e, h
    ld e, h
    and d
    ld c, [hl]

jr_001_7a5b:
    ld d, d
    ld d, [hl]
    ld bc, $5ca2
    and c
    ld e, h
    ld e, h
    and d
    ld e, h
    and c
    ld e, h
    ld e, h
    and d
    ld d, d
    ld c, h
    ld b, h
    ld bc, $01a5
    ld [hl], a
    ld a, d
    nop
    nop
    sub [hl]
    ld a, d
    or h
    ld a, d
    sbc l
    jp nz, $8000

    and d
    ld e, h
    and c
    ld e, h
    ld e, d
    and d
    ld e, h
    ld e, h
    ld d, [hl]
    ld d, d
    ld c, [hl]
    ld d, [hl]
    and d
    ld d, d
    and c
    ld d, d
    ld d, b
    and d
    ld d, d
    ld c, h
    ld b, h
    ld d, d
    and e
    ld e, h
    and h
    ld bc, $9d00
    jp nz, Jump_001_4000

    and d
    ld c, [hl]
    and c
    ld c, [hl]
    ld d, d
    and d
    ld d, [hl]
    ld c, [hl]
    and e
    ld c, b
    ld c, b
    and d
    ld c, h
    and c
    ld c, h
    ld c, d
    and d
    ld c, h
    ld b, h
    inc [hl]
    ld c, h
    and e
    ld c, h
    and l
    ld bc, $9d00
    jp hl


    ld l, [hl]
    jr nz, jr_001_7a5b

    ld e, h
    and c
    ld e, h
    ld e, h
    and d
    ld e, h
    and c
    ld e, h
    ld e, h
    and d
    ld c, [hl]
    ld d, d
    and c
    ld d, [hl]
    ld d, [hl]
    and d
    ld d, [hl]
    and d
    ld e, h

jr_001_7acc:
    and c
    ld e, h
    ld e, h
    and d
    ld e, h
    and c
    ld e, h
    ld e, h
    and d
    ld d, d
    ld c, h
    and c
    ld b, h
    ld b, h
    and d
    ld bc, $01a5
    nop
    jp hl


    ld a, d
    nop
    nop
    ld [$257b], sp
    ld a, e
    ld c, a
    ld a, e
    sbc l
    jp nz, $8000

    and d
    ld e, h
    and c
    ld e, h
    ld e, d
    and d
    ld e, h
    ld e, h
    ld d, [hl]
    ld d, d
    ld c, [hl]
    ld d, [hl]
    and d
    ld d, d
    and c
    ld d, d
    ld d, b
    and d
    ld d, d
    ld c, h
    ld b, h
    ld d, d
    and e
    ld e, h
    and h
    ld bc, $9d00
    or d
    nop
    add b
    and d
    ld c, [hl]
    and c
    ld c, [hl]
    ld d, d
    and d
    ld d, [hl]
    ld c, [hl]
    and e
    ld c, b
    ld c, b
    and d
    ld c, h
    and c
    ld c, h
    ld c, d
    and d
    ld c, h
    ld b, h
    inc [hl]
    ld c, h
    and e
    ld c, h
    and l
    ld bc, $e99d
    ld l, [hl]
    jr nz, jr_001_7acc

    ld e, h
    and c
    ld e, h
    ld e, h
    and d
    ld e, h
    and c
    ld e, h
    ld e, h
    ld c, [hl]
    ld d, [hl]
    ld e, h
    ld d, [hl]
    ld c, [hl]
    ld b, h
    ld a, $44
    and d
    ld e, h
    and c
    ld e, h
    ld e, h
    and d
    ld e, h
    and c
    ld e, h
    ld e, h
    ld d, d
    ld c, h
    ld b, h
    ld c, h
    ld e, h
    ld bc, $01a2
    and l
    ld bc, $0ba2
    dec bc
    dec bc
    dec bc
    and d
    dec bc
    dec bc
    dec bc
    ld bc, $0ba2
    dec bc
    dec bc
    dec bc
    and d
    dec bc
    dec bc
    dec bc
    ld bc, $01a5
    ld [hl], a
    ld a, e
    adc $7b
    nop
    nop
    sub [hl]
    ld a, e
    ld a, [c]
    ld a, e
    xor b
    ld a, e
    ld [bc], a
    ld a, h
    cp e
    ld a, e
    ld [de], a
    ld a, h
    sbc l
    pop de
    nop
    add b
    and d
    ld e, h
    and c
    ld e, h
    ld e, d
    and d
    ld e, h
    ld e, h
    ld d, [hl]
    ld d, d
    ld c, [hl]
    ld d, [hl]
    and d
    ld d, d
    and c
    ld d, d
    ld d, b
    and d
    ld d, d
    ld d, d
    ld c, h
    ld c, b
    ld b, h
    and c
    ld c, h
    ld d, d
    nop
    and d
    ld d, d
    and a
    ld bc, $44a2
    ld b, h
    ld b, h
    ld bc, $a74c
    ld bc, $3aa2
    ld a, [hl-]
    ld a, [hl-]
    ld bc, $a200
    ld e, h
    and a
    ld bc, $4ea2
    ld d, d
    ld d, [hl]
    ld bc, $5ca2
    and a
    ld bc, $44a2
    ld c, b
    ld c, h
    ld bc, $a200
    ld b, $a7
    ld bc, $0ba2
    dec bc
    dec bc
    ld bc, $06a2
    and a
    ld bc, $0ba2
    dec bc
    dec bc
    ld bc, $a200
    ld c, b
    and c
    ld c, b
    ld d, d
    and d
    ld b, h
    and c
    ld b, h
    ld d, d
    and d
    ld b, d
    and c
    ld b, d
    ld d, d
    and d
    ld c, b
    and c
    ld c, b
    ld d, d
    and d
    ld c, h
    and c
    ld c, h
    ld d, d
    and d
    ld c, b
    and c
    ld c, b
    ld d, d
    and d
    ld e, h
    ld d, d
    and e
    ld e, h
    nop
    ld bc, $013a
    ld a, [hl-]
    ld bc, $013a
    ld a, [hl-]
    ld bc, $013a
    ld a, [hl-]
    ld bc, $a33a
    inc [hl]
    ld bc, HeaderROMSize
    ld c, b
    ld bc, HeaderROMSize
    ld c, b
    ld bc, HeaderNewLicenseeCode
    ld b, h
    ld bc, $a34c
    ld b, h
    and d
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    ld bc, $010b
    dec bc
    and d

jr_001_7c20:
    ld bc, $0b0b
    ld bc, $7c2e
    nop
    nop
    ld h, e
    ld a, h
    sub a
    ld a, h
    bit 7, h

jr_001_7c2e:
    sbc l
    or e
    nop
    add b
    and [hl]
    ld d, d
    and c
    ld d, b
    and [hl]
    ld d, d
    and c
    ld d, b
    and [hl]
    ld d, d
    and c
    ld c, b
    and e
    ld bc, $4ca6
    and c
    ld c, d
    and [hl]
    ld c, h
    and c
    ld c, d
    and [hl]
    ld c, h
    and c
    ld b, d
    and e
    ld bc, $3ea6
    and c
    ld b, d
    and [hl]
    ld b, h
    and c
    ld c, b
    and [hl]
    ld c, h
    and c
    ld d, b
    and [hl]
    ld d, d
    and c
    ld d, [hl]
    and [hl]
    ld d, d
    and c
    ld l, d
    nop
    sbc l
    sub e
    nop
    ret nz

    and [hl]
    ld b, d
    and c
    ld b, b
    and [hl]
    ld b, d
    and c
    ld b, b
    and [hl]
    ld b, d
    and c
    ld b, d
    and e
    ld bc, $3aa6
    and c
    jr c, jr_001_7c20

    ld a, [hl-]
    and c

Call_001_7c7c:
    jr c, @-$58

    ld a, [hl-]
    and c
    ld a, [hl-]
    and e
    ld bc, $38a6
    and c
    jr c, jr_001_7c2e

    ld a, [hl-]
    and c
    ld a, $a6
    ld b, d
    and c
    ld b, h
    and [hl]
    ld c, b
    and c
    ld c, h
    and [hl]
    ld b, d
    and c
    ld b, d
    sbc l
    jp hl


    ld l, [hl]
    and b
    and [hl]
    ld c, b
    and c
    ld b, [hl]
    and [hl]
    ld c, b
    and c
    ld b, [hl]
    and [hl]
    ld c, b
    and c
    ld d, d
    and e
    ld bc, $44a6
    and c
    ld b, d
    and [hl]
    ld b, h
    and c
    ld b, d
    and [hl]
    ld b, h
    and c
    ld c, h
    and e
    ld bc, $48a6
    and c
    ld a, [hl-]
    and [hl]
    ld a, $a1
    ld b, d
    and [hl]
    ld b, h
    and c
    ld c, b
    and [hl]
    ld c, h
    and c
    ld d, b
    and [hl]
    ld d, d
    and c
    ld a, [hl-]
    and [hl]
    dec bc
    and c
    ld b, $a6
    dec bc
    and c
    ld b, $a6
    dec bc
    and c
    ld b, $a3
    ld bc, $0ba6
    and c
    ld b, $a6
    dec bc
    and c
    ld b, $a6
    dec bc
    and c
    ld b, $a3
    ld bc, $0ba6
    and c
    ld b, $a6
    dec bc
    and c
    ld b, $a6
    dec bc
    and c
    ld b, $a3
    ld bc, $0ba6
    and c
    ld b, $2e
    ld a, l
    rst $38
    rst $38
    ld bc, $297d
    ld a, l
    dec [hl]
    ld a, l
    ld e, e
    ld a, l
    add d
    ld a, l
    ld e, e
    ld a, l
    and h
    ld a, l
    add $7d
    rst $38
    rst $38
    inc bc
    ld a, l
    dec sp
    ld a, l

jr_001_7d13:
    ld l, h
    ld a, l
    sub e
    ld a, l
    ld l, h
    ld a, l
    or l
    ld a, l
    rlca
    ld a, [hl]
    rst $38
    rst $38
    inc de
    ld a, l
    ld a, $7d
    ld b, c
    ld a, l
    rst $38
    rst $38
    inc hl
    ld a, l
    sbc l
    ld h, b
    nop
    add c
    nop
    sbc l
    jr nz, jr_001_7d31

jr_001_7d31:
    add c
    xor d
    ld bc, $a300
    ld bc, $5450
    ld e, b
    nop
    and l
    ld bc, $a500
    ld bc, $a300
    ld bc, $0106
    ld b, $01
    and d
    ld b, $06
    and e
    ld bc, $a306
    ld bc, $0106
    ld b, $01
    and d
    ld b, $06
    ld bc, $0601
    ld b, $00
    and a
    ld e, d
    and d
    ld e, [hl]
    and a
    ld e, d
    and d
    ld e, b
    and a
    ld e, b
    and d
    ld d, h
    and a
    ld e, b
    and d
    ld d, h
    nop
    sbc l
    ret


    ld l, [hl]
    jr nz, jr_001_7d13

    ld e, d
    ld h, d
    ld l, b
    ld [hl], b
    ld e, d
    ld h, d
    ld l, b
    ld [hl], b
    ld e, d
    ld h, h
    ld h, [hl]
    ld l, h
    ld e, d
    ld h, h
    ld h, [hl]
    ld l, h
    nop
    and a
    ld d, h
    and d
    ld d, b
    and a
    ld d, h
    and d
    ld d, b
    and a
    ld d, b
    and d
    ld c, h
    and a
    ld c, d
    and d
    ld d, b
    nop
    ld e, b
    ld e, [hl]
    ld h, h
    ld l, h
    ld e, b
    ld e, [hl]
    ld h, h
    ld l, h
    ld d, b
    ld d, h
    ld e, b
    ld e, [hl]
    ld d, b
    ld e, b
    ld e, [hl]
    ld h, h
    nop
    and a
    ld d, h
    and d
    ld d, b
    and a
    ld d, h
    and d
    ld d, b
    and a
    ld d, b
    and d
    ld c, h
    and a
    ld c, d
    and d
    ld b, [hl]
    nop
    ld e, b
    ld e, [hl]
    ld h, h
    ld l, h
    ld e, b
    ld e, [hl]
    ld h, h
    ld l, h
    ld d, b
    ld d, h
    ld e, b
    ld e, [hl]
    ld d, b
    ld e, b
    ld e, [hl]
    ld h, h
    nop
    and a
    ld c, d
    and d
    ld c, h
    and a
    ld c, d
    and d
    ld b, [hl]
    and a
    ld b, [hl]
    and d
    ld b, h
    and a
    ld b, [hl]
    and d
    ld c, d
    and a
    ld c, h
    and d
    ld d, b
    and a
    ld c, h
    and d
    ld c, d
    and a
    ld c, d
    and d
    ld b, [hl]
    and a
    ld c, d
    and d
    ld c, h
    and a
    ld d, b
    and d
    ld c, [hl]
    and a
    ld d, b
    and d
    ld d, d
    and a
    ld e, b
    and d
    ld d, h
    and a
    ld e, d
    and d
    ld d, h
    and a
    ld d, d
    and d
    ld d, b
    and a
    ld c, h
    and d
    ld c, d
    and d
    ld b, d
    jr c, jr_001_7e3e

    ld c, d
    and e
    ld b, d
    ld bc, $4a00
    ld d, d
    ld e, b
    ld e, [hl]
    ld c, d
    ld e, b
    ld e, [hl]
    ld h, d
    ld d, h
    ld h, d
    ld l, b
    ld l, h
    ld d, h
    ld h, d
    ld l, b
    ld l, h
    ld b, [hl]
    ld c, h

jr_001_7e19:
    ld d, h
    ld e, [hl]
    ld b, [hl]
    ld c, h
    ld d, h
    ld e, d
    ld d, b
    ld e, b
    ld e, [hl]
    ld h, h
    ld d, b
    ld e, [hl]
    ld h, h
    ld l, h
    ld c, d
    ld d, b
    ld e, b
    ld e, [hl]
    ld c, d
    ld e, b
    ld e, [hl]
    ld h, d
    ld c, [hl]
    ld d, h
    ld e, d
    ld h, d
    ld c, [hl]
    ld d, h
    ld e, d
    ld h, [hl]
    ld d, b
    ld e, b
    ld e, [hl]
    ld h, h
    ld d, b
    ld e, [hl]
    ld h, h

jr_001_7e3e:
    ld l, b
    xor b
    ld e, d
    and e
    ld bc, $4e00
    ld a, [hl]
    nop
    nop
    ld e, [hl]
    ld a, [hl]
    ld l, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    sbc l
    or c
    nop
    add b
    and a
    ld bc, $5ea1
    ld e, [hl]
    and [hl]
    ld l, b
    and c
    ld e, [hl]
    and h
    ld l, b
    nop
    sbc l
    sub c
    nop
    add b
    and a
    ld bc, $54a1
    ld d, h
    and [hl]
    ld e, [hl]
    and c
    ld e, b
    and h
    ld e, [hl]
    sbc l
    jp hl


    ld l, [hl]
    jr nz, jr_001_7e19

    ld bc, $4ea1
    ld c, [hl]
    and [hl]
    ld e, b
    and c
    ld d, b
    and e
    ld e, b
    ld bc, $01a7
    and c
    ld b, $06
    and [hl]
    dec bc
    and c
    ld b, $a0
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    and e
    ld bc, $7ebb
    jr z, jr_001_7f14

    cp e
    ld a, [hl]
    ld [hl], e
    ld a, a
    rst $38
    rst $38
    sub c
    ld a, [hl]
    push hl
    ld a, [hl]
    ld c, a
    ld a, a
    push hl

jr_001_7ea2:
    ld a, [hl]
    sub [hl]
    ld a, a
    rst $38
    rst $38
    sbc l
    ld a, [hl]
    ei
    ld a, [hl]
    ld h, c
    ld a, a
    ei
    ld a, [hl]
    xor [hl]
    ld a, a
    rst $38
    rst $38
    xor c
    ld a, [hl]
    ld de, $ff7f
    rst $38
    or l
    ld a, [hl]
    sbc l
    add d
    nop
    add b
    and d
    ld d, h
    and c
    ld d, h
    ld d, h
    ld d, h
    ld c, d
    ld b, [hl]
    ld c, d
    and d
    ld d, h
    and c
    ld d, h
    ld d, h
    ld d, h
    ld e, b
    ld e, h
    ld e, b
    and d
    ld d, h
    and c
    ld d, h
    ld d, h
    ld e, b
    ld d, h
    ld d, d
    ld d, h
    and c
    ld e, b
    ld e, h
    ld e, b
    ld e, h
    and d
    ld e, b
    and c
    ld d, [hl]
    ld e, b
    nop
    sbc l
    ld h, d
    nop
    add b
    and d
    ld bc, HeaderNewLicenseeCode
    ld b, b
    ld bc, HeaderNewLicenseeCode
    ld b, [hl]
    ld bc, HeaderNewLicenseeCode
    ld b, h
    ld bc, $0140
    ld b, b
    nop
    sbc l
    jp hl


    ld l, [hl]
    jr nz, jr_001_7ea2

    ld d, h
    ld d, h
    ld c, d
    ld d, d
    ld d, h
    ld d, h
    ld c, d
    ld e, b
    ld d, h
    ld d, h
    ld d, d
    ld d, h
    ld c, [hl]
    ld d, h
    ld c, d
    ld d, d
    nop
    and d
    ld b, $0b

jr_001_7f14:
    ld b, $0b
    ld b, $0b
    ld b, $0b
    ld b, $0b
    ld b, $0b
    ld b, $a1
    dec bc
    dec bc
    ld b, $a2
    dec bc
    and c
    ld b, $00
    and d
    ld e, [hl]
    and c
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld d, h
    ld d, b
    ld d, h
    and d
    ld e, [hl]
    and c
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld h, d
    ld h, [hl]
    ld h, d
    and d
    ld e, [hl]
    and c
    ld e, [hl]
    ld e, h
    and d
    ld e, b
    and c
    ld e, b
    ld d, h
    and c
    ld d, d
    ld d, h
    ld d, d
    ld d, h
    and d
    ld d, d
    and c
    ld c, [hl]
    ld d, d
    nop
    and d
    ld bc, HeaderSGBFlag
    ld c, d
    ld bc, HeaderSGBFlag
    ld c, d
    ld bc, HeaderSGBFlag
    ld b, [hl]
    ld bc, HeaderSGBFlag
    ld b, [hl]
    nop
    and d
    ld b, [hl]
    ld d, h
    ld d, h
    ld d, h
    ld b, [hl]
    ld d, h
    ld d, h
    ld d, h
    ld b, [hl]
    ld d, h
    ld d, d
    ld e, b
    ld b, h
    ld d, d
    ld c, d
    ld e, b
    nop
    and d
    ld h, d
    and c
    ld h, d
    ld h, d
    ld h, d
    ld e, [hl]
    ld e, d
    ld e, [hl]
    and d
    ld h, d
    and c
    ld h, d
    ld h, d
    ld h, d
    ld e, [hl]
    ld e, d
    ld e, [hl]
    and d
    ld h, d
    and c
    ld c, d
    ld c, [hl]
    and d
    ld d, d
    and c
    ld c, d
    ld e, h
    and e
    ld e, b
    and c
    ld d, h
    and [hl]
    ld l, h
    nop
    and d
    ld bc, HeaderDestinationCode
    ld c, d
    ld bc, HeaderDestinationCode
    ld c, d
    ld bc, $46a1
    ld b, [hl]
    and d
    ld b, [hl]
    and c
    ld b, [hl]
    ld b, [hl]
    and e
    ld b, [hl]
    and d
    ld b, h
    ld bc, $a200
    ld b, d
    ld e, d
    ld d, b
    ld e, d
    ld b, d
    ld e, d
    ld d, b
    ld e, d
    ld c, d
    and c
    ld d, d
    ld d, d
    and d
    ld d, d
    and c
    ld d, d
    ld d, d
    and e
    ld d, d
    and d
    ld d, h
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_001_7fef:
    nop
    jp Jump_001_64d3


    jp Jump_001_69a5


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

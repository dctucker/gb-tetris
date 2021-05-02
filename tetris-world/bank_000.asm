; Disassembly of "Tetris (JUE) (V1.1) [!].gb"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    jp Jump_000_020c


    nop
    nop
    nop
    nop
    nop

RST_08::
    jp Jump_000_020c


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_10::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_18::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_20::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_28::
    add a
    pop hl
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl

RST_30::
    ld d, [hl]
    push de
    pop hl
    jp hl


    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    jp Jump_000_017e


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

LCDCInterrupt::
    jp Jump_000_26be


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

TimerOverflowInterrupt::
    jp Jump_000_26be


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SerialTransferCompleteInterrupt::
    jp Jump_000_005b


SerialTransferCompleteInterrupt::
Jump_000_005b:
    push af
    push hl
    push de
    push bc
    db $cd

JoypadTransitionInterrupt::
    ld l, e
    nop
    ld a, $01
    ldh [$cc], a
    pop bc
    pop de

    pop hl
    pop af
    reti


Call_000_006b:
    ldh a, [$cd]
    rst $28
    ld a, b
    nop
    sbc a
    nop
    and h
    nop
    cp d
    nop
    ld [$f027], a
    pop hl
    cp $07
    jr z, jr_000_0086

    cp $06
    ret z

    ld a, $06
    ldh [$e1], a
    ret


jr_000_0086:
    ldh a, [rSB]
    cp $55
    jr nz, jr_000_0094

    ld a, $29
    ldh [$cb], a
    ld a, $01
    jr jr_000_009c

jr_000_0094:
    cp $29
    ret nz

    ld a, $55
    ldh [$cb], a
    xor a

jr_000_009c:
    ldh [rSC], a
    ret


    ldh a, [rSB]
    ldh [$d0], a
    ret


    ldh a, [rSB]
    ldh [$d0], a
    ldh a, [$cb]
    cp $29
    ret z

    ldh a, [$cf]
    ldh [rSB], a
    ld a, $ff
    ldh [$cf], a
    ld a, $80
    ldh [rSC], a
    ret


    ldh a, [rSB]
    ldh [$d0], a
    ldh a, [$cb]
    cp $29
    ret z

    ldh a, [$cf]
    ldh [rSB], a

Call_000_00c7:
    ei
    call Call_000_0a98
    ld a, $80
    ldh [rSC], a
    ret


    ldh a, [$cd]
    cp $02
    ret nz

    xor a
    ldh [rIF], a
    ei
    ret


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
    rst $38
    rst $38
    rst $38

Call_000_00ff:
    rst $38

Boot::
    nop
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "TETRIS", $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $00, $00

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $00

HeaderROMSize::
    db $00

HeaderRAMSize::
    db $00

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $01

HeaderMaskROMVersion::
    db $01

HeaderComplementCheck::
    db $0a

HeaderGlobalChecksum::
    db $16, $bf

Jump_000_0150:
    jp Jump_000_020c


    call Call_000_29e3

jr_000_0156:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_0156

    ld b, [hl]

jr_000_015d:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_015d

    ld a, [hl]
    and b
    ret

; Add number in DE to score at (hl).
; Stop counting if score reaches 999999.
Call_000_0166:
    ld a, e
    add [hl]
    daa
    ld [hl+], a
    ld a, d
    adc [hl]
    daa
    ld [hl+], a
    ld a, $00
    adc [hl]
    daa
    ld [hl], a
    ld a, $01
    ldh [$e0], a
    ret nc

    ld a, $99
    ld [hl-], a
    ld [hl-], a
    ld [hl], a
    ret

; VBlank Interrupt Routine
Jump_000_017e:
    push af
    push bc
    push de
    push hl
    ldh a, [$ce]
    and a
    jr z, jr_000_0199

    ldh a, [$cb]
    cp $29
    jr nz, jr_000_0199

    xor a
    ldh [$ce], a
; Send byte at ffcf out serial port using internal clock
    ldh a, [$cf]
    ldh [rSB], a
    ld hl, $ff02
    ld [hl], $81

jr_000_0199:
    call Call_000_21e0
    call Call_000_23cc
    call Call_000_23b7
    call Call_000_239e
    call Call_000_238c
    call Call_000_237d
    call Call_000_236e
    call Call_000_235f
    call Call_000_2350
    call Call_000_2341
    call Call_000_2332
    call Call_000_2323
    call Call_000_22f8
    call Call_000_22e9
    call Call_000_22da
    call Call_000_22cb
    call Call_000_22bc
    call Call_000_22ad
    call Call_000_229e
    call Call_000_1ed7
; Initiate DMA transfer
    call $ffb6
    call Call_000_18ca
    ld a, [$c0ce]
    and a
    jr z, jr_000_01fb

    ldh a, [$98]
    cp $03
    jr nz, jr_000_01fb

    ld hl, $986d
    call Call_000_243b
    ld a, $01
    ldh [$e0], a
    ld hl, $9c6d
    call Call_000_243b
    xor a
    ld [$c0ce], a

jr_000_01fb:
    ld hl, $ffe2
    inc [hl]
    xor a
    ldh [rSCX], a
    ldh [rSCY], a
    inc a
    ldh [$85], a
    pop hl
    pop de
    pop bc
    pop af
    reti

; Set ram from d000 to dfff to 0
Jump_000_020c:
    xor a
    ld hl, $dfff
    ld c, $10
    ld b, $00

jr_000_0214:
    ld [hl-], a
    dec b
    jr nz, jr_000_0214

    dec c
    jr nz, jr_000_0214

; Clear Interrupt Flag & Enable Registers
Jump_000_021b:
    ld a, $01
    di
    ldh [rIF], a
    ldh [rIE], a
; Set scroll regs, LCDC Status, & Serial port to 0
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [$a4], a
    ldh [rSTAT], a
    ldh [rSB], a
    ldh [rSC], a
; Set LCD control to Operation
    ld a, $80
    ldh [rLCDC], a

; Loop until LCDC Y-Coord = 148
jr_000_0233:
    ldh a, [rLY]
    cp $94
    jr nz, jr_000_0233
; Set LCD control to Stop completely
    ld a, $03
    ldh [rLCDC], a
; Setup colors for Background & Sprites
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ld a, $c4
    ldh [rOBP1], a
; Setup sound channel outputs
    ld hl, $ff26
    ld a, $80
    ld [hl-], a
    ld a, $ff
    ld [hl-], a
    ld [hl], $77
; Set Rom bank to zero
; (Not needed since the original has no MBC.)
    ld a, $01
    ld [$2000], a
; Initialize stack pointer
    ld sp, $cfff
; Set ram from df00 to dfff to 0
    xor a
    ld hl, $dfff
    ld b, $00

jr_000_0260:
    ld [hl-], a
    dec b
    jr nz, jr_000_0260

; Set ram from c000 to cfff to 0
    ld hl, $cfff
    ld c, $10
    ld b, $00

jr_000_026b:
    ld [hl-], a
    dec b
    jr nz, jr_000_026b

    dec c
    jr nz, jr_000_026b

; Set ram from 8000 to 9fff to 0
Call_000_0272:
    ld hl, $9fff
    ld c, $20
    xor a
    ld b, $00

jr_000_027a:
    ld [hl-], a
    dec b
    jr nz, jr_000_027a

    dec c
    jr nz, jr_000_027a

; Set ram from fe00 to feff to 0
    ld hl, $feff
    ld b, $00

jr_000_0286:
    ld [hl-], a
    dec b
    jr nz, jr_000_0286

; Set ram from ff7f to fffe to 0
    ld hl, $fffe
    ld b, $80

jr_000_028f:
    ld [hl-], a
    dec b
    jr nz, jr_000_028f
; Copy DMA transfer routine to ffb6
    ld c, $b6
    ld b, $0c
    ld hl, $2a7f

jr_000_029a:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_029a
; Fill screen with 2f
    call $2795
; Reset sound registers
    call $7ff3
; Enable serial i/o & v blank interrupts
    ld a, $09
    ldh [rIE], a
    ld a, $37
    ldh [$c0], a
    ld a, $1c
    ldh [$c1], a
; Setup branch point for routine at 2f8
    ld a, $24
    ldh [$e1], a
; Set LCD control to Operation
    ld a, $80
    ldh [rLCDC], a
    ei
    xor a
; Clear all interrupt flags
    ldh [rIF], a
; Set window x & y position to 0
    ldh [rWY], a
    ldh [rWX], a
; Set timer modulo to 0
    ldh [rTMA], a

; Read buttons & return values
Jump_000_02c4:
    call Call_000_29a6
    call Call_000_02f8
    call $7ff0
; If all arrow keys are down at the
; same time, then jump to 21b
    ldh a, [$80]
    and $0f
    cp $0f
    jp z, Jump_000_021b

    ld hl, $ffa6
    ld b, $02

jr_000_02db:
    ld a, [hl]
    and a
    jr z, jr_000_02e0

    dec [hl]

jr_000_02e0:
    inc l
    dec b
    jr nz, jr_000_02db

    ldh a, [$c5]
    and a
    jr z, jr_000_02ed

    ld a, $09
    ldh [rIE], a

; Wait for a VBlank interrupt to occur
jr_000_02ed:
    ldh a, [$85]
    and a
    jr z, jr_000_02ed

    xor a
    ldh [$85], a
    jp Jump_000_02c4


Call_000_02f8:
    ldh a, [$e1]
    rst $28
    adc $1b
    ld [c], a
    inc e
    ld b, h
    ld [de], a
    ld a, e
    ld [de], a

Jump_000_0303:
    ld b, $1d
    ld h, $1d
    xor [hl]
    inc bc
    ld a, c
    inc b
    ld b, h
    inc d
    adc h
    inc d
    rlca
    ld a, [de]
    ret nz

    dec e
    ld d, $1f
    rra
    rra
    dec h
    dec d
    or b
    inc d
    ld a, e
    dec d
    cp a
    dec d
    add hl, hl
    ld d, $7a
    ld d, $eb
    ld d, $13
    add hl, de
    ld [hl], a
    ld b, $2c
    rlca
    dec h
    ld [$08e4], sp
    ld sp, $eb0b
    inc c
    jp nc, $320a

    dec c
    inc hl
    ld c, $12
    ld de, $0d99
    adc d
    ld c, $ce
    dec e
    ld b, c
    ld e, $69
    inc bc
    sub e
    inc bc
    ld h, a
    ld de, $11e6
    db $fc
    ld de, $121c
    rst $00
    dec b
    rst $30
    dec b
    or e
    ld [de], a
    dec b
    inc de
    inc h
    inc de
    ld d, c
    inc de
    ld h, a
    inc de
    ld a, [hl]
    inc de
    or l
    inc de
    push hl
    inc de
    dec de
    inc de
    and b
    inc bc
    ld [$cd27], a
    jr nz, @+$2a

; Display credits screen
    call Call_000_27d7
    ld de, $4a07
    call Call_000_27eb
    call Call_000_178a
    ld hl, $c300
    ld de, $6450

jr_000_037e:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, h
    cp $c4
    jr nz, jr_000_037e

    ld a, $d3
    ldh [rLCDC], a
; This is responsible for the credit screen ignoring the start
; button for so long. Lower this value to make it respond sooner.
    ld a, $fa
    ldh [$a6], a
    ld a, $25
    ldh [$e1], a
    ret

; Wait for initial credit screen timer to run out.
    ldh a, [$a6]
    and a
    ret nz

    ld a, $fa
    ldh [$a6], a
    ld a, $35
    ldh [$e1], a
    ret

; Look for user pressing a button. If not found, continue credit
; screen for another delay period.
    ldh a, [$81]
    and a
    jr nz, jr_000_03a9

    ldh a, [$a6]
    and a
    ret nz

jr_000_03a9:
    ld a, $06
    ldh [$e1], a
    ret


; Display Intro Select Players Screen
    call Call_000_2820
    xor a
    ldh [$e9], a
    ldh [$98], a
    ldh [$9c], a
    ldh [$9b], a
    ldh [$fb], a
    ldh [$9f], a
    ldh [$e3], a
    ldh [$c7], a
    call Call_000_2293
    call Call_000_2651
    call Call_000_27d7
    ld hl, $c800

jr_000_03ce:
    ld a, $2f
    ld [hl+], a
    ld a, h
    cp $cc
    jr nz, jr_000_03ce

    ld hl, $c801
    call Call_000_26a9
    ld hl, $c80c
    call Call_000_26a9
    ld hl, $ca41
    ld b, $0c
    ld a, $8e

jr_000_03e9:
    ld [hl+], a
    dec b
    jr nz, jr_000_03e9

    ld de, $4b6f
    call Call_000_27eb
    call Call_000_178a
    ld hl, $c000
    ld [hl], $80
    inc l
    ld [hl], $10
    inc l
    ld [hl], $58
    ld a, $03
    ld [$dfe8], a
    ld a, $d3
    ldh [rLCDC], a
    ld a, $07
    ldh [$e1], a
    ld a, $7d
    ldh [$a6], a
    ld a, $04
    ldh [$c6], a
    ldh a, [$e4]
    and a
    ret nz

    ld a, $13
    ldh [$c6], a
    ret

; Start demo mode
jr_000_041f:
    ld a, $37
    ldh [$c0], a
    ld a, $09
    ldh [$c2], a
    xor a
    ldh [$c5], a
    ldh [$b0], a
    ldh [$ed], a
    ldh [$ea], a
    ld a, $62
    ldh [$eb], a
    ld a, $b0
    ldh [$ec], a
    ldh a, [$e4]
    cp $02
    ld a, $02
    jr nz, jr_000_045a

    ld a, $77
    ldh [$c0], a
    ld a, $09
    ldh [$c3], a
    ld a, $02
    ldh [$c4], a
    ld a, $63
    ldh [$eb], a
    ld a, $b0
    ldh [$ec], a
    ld a, $11
    ldh [$b0], a
    ld a, $01

jr_000_045a:
    ldh [$e4], a
    ld a, $0a
    ldh [$e1], a
    call Call_000_2820
    call Call_000_27ad
    ld de, $4cd7
    call Call_000_27eb
    call Call_000_178a
    ld a, $d3
    ldh [rLCDC], a
    ret

; This routine is not used.
    ld a, $ff
    ldh [$e9], a
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_0488

    ld hl, $ffc6
    dec [hl]
    jr z, jr_000_041f

    ld a, $7d
    ldh [$a6], a

jr_000_0488:
    call Call_000_0a98
; Send 55h out serial port using external clock.
    ld a, $55
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ldh a, [$cc]
    and a
    jr z, jr_000_04a2
; Serial Transfer is complete
    ldh a, [$cb]
    and a
    jr nz, jr_000_04d7

    xor a
    ldh [$cc], a
    jr jr_000_0509

jr_000_04a2:
    ldh a, [$81]
    ld b, a
    ldh a, [$c5]
; Test for Up button
    bit 2, b
    jr nz, jr_000_04f3
; Test for A button
    bit 4, b
    jr nz, jr_000_0502
; Test for B button
    bit 5, b
    jr nz, jr_000_0507
; Test for Down button
    bit 3, b
    ret z

    and a
    ld a, $08
    jr z, jr_000_04e7

    ld a, b
    cp $08
    ret nz

    ldh a, [$cb]
    cp $29
    jr z, jr_000_04d7
; Send 29h out serial port using internal clock.
    ld a, $29
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_04cd:
    ldh a, [$cc]
    and a
    jr z, jr_000_04cd

    ldh a, [$cb]
    and a
    jr z, jr_000_0509

jr_000_04d7:
    ld a, $2a

jr_000_04d9:
    ldh [$e1], a
    xor a
    ldh [$a6], a
    ldh [$c2], a
    ldh [$c3], a
    ldh [$c4], a
    ldh [$e4], a
    ret


jr_000_04e7:
    push af
    ldh a, [$80]
    bit 7, a
    jr z, jr_000_04f0

    ldh [$f4], a

jr_000_04f0:
    pop af
    jr jr_000_04d9

jr_000_04f3:
    xor $01

jr_000_04f5:
    ldh [$c5], a
    and a
    ld a, $10
    jr z, jr_000_04fe

    ld a, $60

jr_000_04fe:
    ld [$c001], a
    ret


jr_000_0502:
    and a
    ret nz

    xor a
    jr jr_000_04f3

jr_000_0507:
    and a
    ret z

jr_000_0509:
    xor a
    jr jr_000_04f5

Call_000_050c:
    ldh a, [$e4]
    and a
    ret z

    call Call_000_0a98
    xor a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ldh a, [$81]
    bit 3, a
    jr z, jr_000_052d

    ld a, $33
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a
    ld a, $06
    ldh [$e1], a
    ret


jr_000_052d:
    ld hl, $ffb0
    ldh a, [$e4]
    cp $02
    ld b, $10
    jr z, jr_000_053a

    ld b, $1d

jr_000_053a:
    ld a, [hl]
    cp b
    ret nz

    ld a, $06
    ldh [$e1], a
    ret


Call_000_0542:
    ldh a, [$e4]
    and a
    ret z

    ldh a, [$e9]
    cp $ff
    ret z

    ldh a, [$ea]
    and a
    jr z, jr_000_0555

    dec a
    ldh [$ea], a
    jr jr_000_0571

jr_000_0555:
    ldh a, [$eb]
    ld h, a
    ldh a, [$ec]
    ld l, a
    ld a, [hl+]
    ld b, a
    ldh a, [$ed]
    xor b
    and b
    ldh [$81], a
    ld a, b
    ldh [$ed], a
    ld a, [hl+]
    ldh [$ea], a
    ld a, h
    ldh [$eb], a
    ld a, l
    ldh [$ec], a
    jr jr_000_0574

jr_000_0571:
    xor a
    ldh [$81], a

jr_000_0574:
    ldh a, [$80]
    ldh [$ee], a
    ldh a, [$ed]
    ldh [$80], a
    ret

; This routine is not used.
    xor a
    ldh [$ed], a
    jr jr_000_0571

; This instruction is not used.
    ret


Call_000_0583:
    ldh a, [$e4]
    and a
    ret z

    ldh a, [$e9]
    cp $ff
    ret nz

    ldh a, [$80]
    ld b, a
    ldh a, [$ed]
    cp b
    jr z, jr_000_05ad

    ldh a, [$eb]
    ld h, a
    ldh a, [$ec]
    ld l, a
    ldh a, [$ed]
    ld [hl+], a
    ldh a, [$ea]
    ld [hl+], a
    ld a, h
    ldh [$eb], a
    ld a, l
    ldh [$ec], a
    ld a, b
    ldh [$ed], a
    xor a
    ldh [$ea], a
    ret


jr_000_05ad:
    ldh a, [$ea]
    inc a
    ldh [$ea], a
    ret


Call_000_05b3:
    ldh a, [$e4]
    and a
    ret z

    ldh a, [$e9]
    and a
    ret nz

    ldh a, [$ee]
    ldh [$80], a
    ret


jr_000_05c0:
    ld hl, $ff02
    set 7, [hl]
    jr jr_000_05d1

    ld a, $03
    ldh [$cd], a
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_05c0

jr_000_05d1:
    call Call_000_144f
    ld a, $80
    ld [$c210], a
    call Call_000_2671
    ldh [$ce], a
    xor a
    ldh [rSB], a
    ldh [$cf], a
    ldh [$dc], a
    ldh [$d2], a
    ldh [$d3], a
    ldh [$d4], a
    ldh [$d5], a
    ldh [$e3], a
    call $7ff3
    ld a, $2b
    ldh [$e1], a
    ret


    ldh a, [$cb]
    cp $29
    jr z, jr_000_0613

    ldh a, [$f0]
    and a
    jr z, jr_000_0620

    xor a
    ldh [$f0], a
    ld de, $c201
    call Call_000_1492
    call Call_000_1517
    call Call_000_2671
    jr jr_000_0620

jr_000_0613:
    ldh a, [$81]
    bit 0, a
    jr nz, jr_000_0620

    bit 3, a
    jr nz, jr_000_0620

    call Call_000_14b0

jr_000_0620:
    ldh a, [$cb]
    cp $29
    jr z, jr_000_0644

    ldh a, [$cc]
    and a
    ret z

    xor a
    ldh [$cc], a
    ld a, $39
    ldh [$cf], a
    ldh a, [$d0]
    cp $50
    jr z, jr_000_0664

    ld b, a
    ldh a, [$c1]
    cp b
    ret z

    ld a, b
    ldh [$c1], a
    ld a, $01
    ldh [$f0], a
    ret


jr_000_0644:
    ldh a, [$81]
    bit 3, a
    jr nz, jr_000_066c

    bit 0, a
    jr nz, jr_000_066c

    ldh a, [$cc]
    and a
    ret z

    xor a
    ldh [$cc], a
    ldh a, [$cf]
    cp $50
    jr z, jr_000_0664

    ldh a, [$c1]

jr_000_065d:
    ldh [$cf], a
    ld a, $01
    ldh [$ce], a
    ret


jr_000_0664:
    call Call_000_178a
    ld a, $16
    ldh [$e1], a
    ret


jr_000_066c:
    ld a, $50
    jr jr_000_065d

jr_000_0670:
    ld hl, $ff02
    set 7, [hl]
    jr jr_000_0696

; Display Mario VS Luigi screen
    ld a, $03
    ldh [$cd], a
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_0670

    call Call_000_0aa1
    call Call_000_0aa1
    call Call_000_0aa1
    ld b, $00
    ld hl, $c300

jr_000_068f:
    call Call_000_0aa1
    ld [hl+], a
    dec b
    jr nz, jr_000_068f

jr_000_0696:
    call Call_000_2820
    call Call_000_27ad
    ld de, $5214
    call Call_000_27eb
    call Call_000_178a
    ld a, $2f
    call Call_000_1fdd
    ld a, $03
    ldh [$ce], a
    xor a
    ldh [rSB], a
    ldh [$cf], a
    ldh [$dc], a
    ldh [$d2], a
    ldh [$d3], a
    ldh [$d4], a
    ldh [$d5], a
    ldh [$e3], a

jr_000_06bf:
    ldh [$cc], a
    ld hl, $c400
    ld b, $0a
    ld a, $28

jr_000_06c8:
    ld [hl+], a
    dec b
    jr nz, jr_000_06c8

    ldh a, [$d6]
    and a
    jp nz, Jump_000_076d

    call Call_000_1517
    ld a, $d3
    ldh [rLCDC], a
    ld hl, $c080

jr_000_06dc:
    ld de, $0705
    ld b, $20

jr_000_06e1:
    call $0725
    ld hl, $c200
    ld de, $26ed
    ld c, $02
    call Call_000_1776
    call Call_000_080e
    call Call_000_2671
    xor a
    ldh [$d7], a
    ldh [$d8], a
    ldh [$d9], a
    ldh [$da], a
    ldh [$db], a
    ld a, $17
    ldh [$e1], a
    ret


    ld b, b
    jr z, @-$50

    nop
    ld b, b
    jr nc, @-$50

    jr nz, @+$4a

    jr z, jr_000_06bf

    nop
    ld c, b
    jr nc, @-$4f

    jr nz, jr_000_078e

    jr z, @-$3e

    nop
    ld a, b
    jr nc, jr_000_06dc

    jr nz, @-$7e

    jr z, jr_000_06e1

    nop
    add b
    jr nc, @-$3d

    jr nz, @+$1c
; Move a block of memory
;  HL = Start Addr
;  DE = End Addr
;  B = Length of data

    ld [hl+], a
    inc de
    dec b
    jr nz, @-$04

    ret


    ldh a, [$cb]
    cp $29
    jr z, jr_000_0755

    ldh a, [$cc]
    and a
    jr z, jr_000_074a

    ldh a, [$d0]
    cp $60
    jr z, jr_000_076a

    cp $06
    jr nc, jr_000_0743

    ldh [$ac], a

jr_000_0743:
    ldh a, [$ad]
    ldh [$cf], a
    xor a
    ldh [$cc], a

jr_000_074a:
    ld de, $c210
    call Call_000_1766
    ld hl, $ffad
    jr jr_000_07bd

jr_000_0755:
    ldh a, [$81]
    bit 3, a
    jr z, jr_000_075f

    ld a, $60
    jr jr_000_07ac

jr_000_075f:
    ldh a, [$cc]
    and a
    jr z, jr_000_07b4

    ldh a, [$cf]
    cp $60
    jr nz, jr_000_07a2

jr_000_076a:
    call Call_000_178a

Jump_000_076d:
    ldh a, [$d6]
    and a
    jr nz, jr_000_078a

    ld a, $18
    ldh [$e1], a
    ldh a, [$cb]
    cp $29
    ret nz

    xor a
    ldh [$a0], a
    ld a, $06
    ld de, $ffe0
    ld hl, $c9a2
    call Call_000_1b68
    ret


jr_000_078a:
    ldh a, [$cb]
    cp $29

jr_000_078e:
    jp nz, Jump_000_0828

    xor a
    ldh [$a0], a
    ld a, $06
    ld de, $ffe0
    ld hl, $c9a2
    call Call_000_1b68
    jp Jump_000_0828


jr_000_07a2:
    ldh a, [$d0]
    cp $06
    jr nc, jr_000_07aa

    ldh [$ad], a

jr_000_07aa:
    ldh a, [$ac]

jr_000_07ac:
    ldh [$cf], a
    xor a
    ldh [$cc], a
    inc a
    ldh [$ce], a

jr_000_07b4:
    ld de, $c200
    call Call_000_1766
    ld hl, $ffac

jr_000_07bd:
    ld a, [hl]
    bit 4, b
    jr nz, jr_000_07d6

    bit 5, b
    jr nz, jr_000_07e8

    bit 6, b
    jr nz, jr_000_07ee

    bit 7, b
    jr z, jr_000_07e1

    cp $03
    jr nc, jr_000_07e1

    add $03
    jr jr_000_07db

jr_000_07d6:
    cp $05
    jr z, jr_000_07e1

    inc a

jr_000_07db:
    ld [hl], a
    ld a, $01
    ld [$dfe0], a

jr_000_07e1:
    call Call_000_080e
    call Call_000_2671
    ret


jr_000_07e8:
    and a
    jr z, jr_000_07e1

    dec a
    jr jr_000_07db

jr_000_07ee:
    cp $03
    jr c, jr_000_07e1

    sub $03
    jr jr_000_07db

    ld b, b
    ld h, b
    ld b, b
    ld [hl], b
    ld b, b
    add b
    ld d, b
    ld h, b
    ld d, b
    ld [hl], b
    ld d, b
    add b
    ld a, b
    ld h, b
    ld a, b
    ld [hl], b
    ld a, b
    add b
    adc b
    ld h, b
    adc b
    ld [hl], b
    adc b
    add b

Call_000_080e:
    ldh a, [$ac]
    ld de, $c201
    ld hl, $07f6
    call Call_000_1755
    ldh a, [$ad]
    ld de, $c211
    ld hl, $0802
    call Call_000_1755
    ret


    call Call_000_2820

Jump_000_0828:
    xor a
    ld [$c210], a
    ldh [$98], a
    ldh [$9c], a
    ldh [$9b], a
    ldh [$fb], a
    ldh [$9f], a
    ldh [$cc], a
    ldh [rSB], a
    ldh [$ce], a
    ldh [$d0], a
    ldh [$cf], a
    ldh [$d1], a
    call Call_000_2651
    call Call_000_2293
    call Call_000_1ff2
    xor a
    ldh [$e3], a
    call Call_000_178a
    ld de, $537c
    push de
    ld a, $01
    ldh [$a9], a
    ldh [$c5], a
    call Call_000_27eb

jr_000_085e:
    pop de
    ld hl, $9c00
    call Call_000_27ee
    ld de, $2839
    ld hl, $9c63
    ld c, $0a
    call Call_000_1f7d
    ld hl, $c200
    ld de, $26bf
    call Call_000_26b6
    ld hl, $c210
    ld de, $26c7
    call Call_000_26b6
    ld hl, $9951
    ld a, $30
    ldh [$9e], a
    ld [hl], $00
    dec l
    ld [hl], $03
    call Call_000_1ae8
    xor a
    ldh [$a0], a
    ldh a, [$cb]
    cp $29
    ld de, $08d4
    ldh a, [$ac]
    jr z, jr_000_08a4

    ld de, $08c4
    ldh a, [$ad]

jr_000_08a4:
    ld hl, $98b0
    ld [hl], a
    ld h, $9c
    ld [hl], a
    ld hl, $c080
    ld b, $10
    call $0725
    ld a, $77
    ldh [$c0], a
    ld a, $d3
    ldh [rLCDC], a
    ld a, $19
    ldh [$e1], a
    ld a, $01
    ldh [$cd], a
    ret


    jr @-$7a

    ret nz

    nop
    jr @-$72

    ret nz

    jr nz, jr_000_08ed

    add h
    pop bc
    nop
    jr nz, jr_000_085e

    pop bc
    jr nz, jr_000_08ed

    add h
    xor [hl]
    nop
    jr @-$72

    xor [hl]
    jr nz, jr_000_08fd

    add h
    xor a
    nop
    jr nz, @-$72

    xor a
    jr nz, jr_000_0923

    ld [$ffe0], sp
    xor a
    ldh [rIF], a
    ldh a, [$cb]

jr_000_08ed:
    cp $29
    jp nz, Jump_000_09f6

jr_000_08f2:
    call Call_000_0a98
    call Call_000_0a98
    xor a
    ldh [$cc], a
    ld a, $29

jr_000_08fd:
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_0903:
    ldh a, [$cc]
    and a
    jr z, jr_000_0903

    ldh a, [rSB]
    cp $55
    jr nz, jr_000_08f2

    ld de, $0016
    ld c, $0a
    ld hl, $c902

jr_000_0916:
    ld b, $0a

jr_000_0918:
    xor a
    ldh [$cc], a
    call Call_000_0a98
    ld a, [hl+]
    ldh [rSB], a
    ld a, $81

jr_000_0923:
    ldh [rSC], a

jr_000_0925:
    ldh a, [$cc]
    and a
    jr z, jr_000_0925

    dec b
    jr nz, jr_000_0918

    add hl, de
    dec c
    jr nz, jr_000_0916

    ldh a, [$ac]
    cp $05
    jr z, jr_000_0974

    ld hl, $ca22
    ld de, $0040

jr_000_093d:
    add hl, de
    inc a
    cp $05
    jr nz, jr_000_093d

    ld de, $ca22
    ld c, $0a

jr_000_0948:
    ld b, $0a

jr_000_094a:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_094a

    push de
    ld de, $ffd6
    add hl, de
    pop de
    push hl
    ld hl, $ffd6
    add hl, de
    push hl
    pop de
    pop hl
    dec c
    jr nz, jr_000_0948

    ld de, $ffd6

jr_000_0964:
    ld b, $0a
    ld a, h
    cp $c8
    jr z, jr_000_0974

    ld a, $2f

jr_000_096d:
    ld [hl+], a
    dec b
    jr nz, jr_000_096d

    add hl, de
    jr jr_000_0964

jr_000_0974:
    call Call_000_0a98
    call Call_000_0a98
    xor a
    ldh [$cc], a
    ld a, $29
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_0985:
    ldh a, [$cc]
    and a
    jr z, jr_000_0985

    ldh a, [rSB]
    cp $55
    jr nz, jr_000_0974

    ld hl, $c300
    ld b, $00

jr_000_0995:
    xor a
    ldh [$cc], a
    ld a, [hl+]
    call Call_000_0a98
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_09a2:
    ldh a, [$cc]
    and a
    jr z, jr_000_09a2

    inc b
    jr nz, jr_000_0995

jr_000_09aa:
    call Call_000_0a98
    call Call_000_0a98
    xor a
    ldh [$cc], a
    ld a, $30
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_09bb:
    ldh a, [$cc]
    and a
    jr z, jr_000_09bb

    ldh a, [rSB]
    cp $56
    jr nz, jr_000_09aa

Jump_000_09c6:
    call Call_000_0a8c
    ld a, $09
    ldh [rIE], a
    ld a, $1c
    ldh [$e1], a
    ld a, $02
    ldh [$e3], a
    ld a, $03
    ldh [$cd], a
    ldh a, [$cb]
    cp $29
    jr z, jr_000_09e4

    ld hl, $ff02
    set 7, [hl]

jr_000_09e4:
    ld hl, $c300
    ld a, [hl+]
    ld [$c203], a
    ld a, [hl+]
    ld [$c213], a
    ld a, h
    ldh [$af], a
    ld a, l
    ldh [$b0], a
    ret


Jump_000_09f6:
    ldh a, [$ad]
    inc a
    ld b, a
    ld hl, $ca42
    ld de, $ffc0

jr_000_0a00:
    dec b
    jr z, jr_000_0a06

    add hl, de
    jr jr_000_0a00

jr_000_0a06:
    call Call_000_0a98
    xor a
    ldh [$cc], a
    ld a, $55
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0a14:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a14

    ldh a, [rSB]
    cp $29
    jr nz, jr_000_0a06

    ld de, $0016
    ld c, $0a

jr_000_0a24:
    ld b, $0a

jr_000_0a26:
    xor a
    ldh [$cc], a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0a2f:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a2f

    ldh a, [rSB]
    ld [hl+], a
    dec b
    jr nz, jr_000_0a26

    add hl, de
    dec c
    jr nz, jr_000_0a24

jr_000_0a3e:
    call Call_000_0a98
    xor a
    ldh [$cc], a
    ld a, $55
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0a4c:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a4c

    ldh a, [rSB]
    cp $29
    jr nz, jr_000_0a3e

    ld b, $00
    ld hl, $c300

jr_000_0a5c:
    xor a
    ldh [$cc], a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0a65:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a65

    ldh a, [rSB]
    ld [hl+], a
    inc b
    jr nz, jr_000_0a5c

jr_000_0a70:
    call Call_000_0a98
    xor a
    ldh [$cc], a
    ld a, $56
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0a7e:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a7e

    ldh a, [rSB]
    cp $30
    jr nz, jr_000_0a70

    jp Jump_000_09c6


Call_000_0a8c:
    ld hl, $ca42
    ld a, $80
    ld b, $0a

jr_000_0a93:
    ld [hl+], a
    dec b
    jr nz, jr_000_0a93

    ret

; Delay routine ?
Call_000_0a98:
    push bc
    ld b, $fa

jr_000_0a9b:
    ld b, b
    dec b
    jr nz, jr_000_0a9b

    pop bc
    ret


Call_000_0aa1:
    push hl
    push bc
    ldh a, [$fc]
    and $fc
    ld c, a
    ld h, $03

jr_000_0aaa:
    ldh a, [rDIV]
    ld b, a

jr_000_0aad:
    xor a

jr_000_0aae:
    dec b
    jr z, jr_000_0abb

    inc a
    inc a
    inc a
    inc a
    cp $1c
    jr z, jr_000_0aad

    jr jr_000_0aae

jr_000_0abb:
    ld d, a
    ldh a, [$ae]
    ld e, a
    dec h
    jr z, jr_000_0ac9

    or d
    or c
    and $fc
    cp c
    jr z, jr_000_0aaa

jr_000_0ac9:
    ld a, d
    ldh [$ae], a
    ld a, e
    ldh [$fc], a
    pop bc
    pop hl
    ret


    ld a, $01
    ldh [rIE], a
    ldh a, [$e3]
    and a
    jr nz, jr_000_0b02

    ld b, $44
    ld c, $20
    call Call_000_113f
    ld a, $02
    ldh [$cd], a
    ld a, [$c0de]
    and a
    jr z, jr_000_0af1

    ld a, $80
    ld [$c210], a

jr_000_0af1:
    call Call_000_2683
    call Call_000_2696
    call Call_000_1517
    xor a
    ldh [$d6], a
    ld a, $1a
    ldh [$e1], a
    ret


jr_000_0b02:
    cp $05
    ret nz

    ld hl, $c030
    ld b, $12

jr_000_0b0a:
    ld [hl], $f0
    inc hl
    ld [hl], $10
    inc hl
    ld [hl], $b6
    inc hl
    ld [hl], $80
    inc hl
    dec b
    jr nz, jr_000_0b0a

    ld a, [$c3ff]

jr_000_0b1c:
    ld b, $0a
    ld hl, $c400

jr_000_0b21:
    dec a
    jr z, jr_000_0b2a

    inc l
    dec b
    jr nz, jr_000_0b21

    jr jr_000_0b1c

jr_000_0b2a:
    ld [hl], $2f
    ld a, $03
    ldh [$ce], a
    ret


    ld a, $01
    ldh [rIE], a
    ld hl, $c09c
    xor a
    ld [hl+], a
    ld [hl], $50
    inc l
    ld [hl], $27
    inc l
    ld [hl], $00
    call Call_000_1c0d
    call Call_000_1c88
    call Call_000_24bb
    call Call_000_209c
    call Call_000_213e
    call Call_000_25a1
    call Call_000_224d
    call Call_000_0b9b
    ldh a, [$d5]
    and a
    jr z, jr_000_0b73

    ld a, $77
    ldh [$cf], a
    ldh [$b1], a
    ld a, $aa
    ldh [$d1], a
    ld a, $1b
    ldh [$e1], a
    ld a, $05
    ldh [$a7], a
    jr jr_000_0b83

jr_000_0b73:
    ldh a, [$e1]
    cp $01
    jr nz, jr_000_0b94

    ld a, $aa
    ldh [$cf], a
    ldh [$b1], a
    ld a, $77
    ldh [$d1], a

jr_000_0b83:
    xor a
    ldh [$dc], a
    ldh [$d2], a
    ldh [$d3], a
    ldh [$d4], a
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_0b94

    ldh [$ce], a

jr_000_0b94:
    call Call_000_0bf0
    call Call_000_0c8c
    ret


Call_000_0b9b:
    ld de, $0020
    ld hl, $c802
    ld a, $2f
    ld c, $12

jr_000_0ba5:
    ld b, $0a
    push hl

jr_000_0ba8:
    cp [hl]
    jr nz, jr_000_0bb5

    inc hl
    dec b
    jr nz, jr_000_0ba8

    pop hl
    add hl, de
    dec c
    jr nz, jr_000_0ba5

    push hl

jr_000_0bb5:
    pop hl
    ld a, c
    ldh [$b1], a
    cp $0c
    ld a, [$dfe9]
    jr nc, jr_000_0bc7

    cp $08
    ret nz

    call Call_000_1517
    ret


jr_000_0bc7:
    cp $08
    ret z

    ld a, [$dff0]
    cp $02
    ret z

    ld a, $08
    ld [$dfe8], a
    ret


jr_000_0bd6:
    ldh a, [$cb]
    cp $29
    jr z, jr_000_0c2e

    ld a, $01
    ld [$df7f], a
    ldh [$ab], a
    ldh a, [$cf]
    ldh [$f1], a
    xor a
    ldh [$f2], a
    ldh [$cf], a
    call Call_000_1ccb
    ret


Call_000_0bf0:
    ldh a, [$cc]
    and a
    ret z

    ld hl, $c030
    ld de, $0004
    xor a
    ldh [$cc], a
    ldh a, [$d0]
    cp $aa
    jr z, jr_000_0c64

    cp $77
    jr z, jr_000_0c50

    cp $94
    jr z, jr_000_0bd6

    ld b, a
    and a
    jr z, jr_000_0c60

    bit 7, a
    jr nz, jr_000_0c82

    cp $13
    jr nc, jr_000_0c2e

    ld a, $12
    sub b
    ld c, a
    inc c

jr_000_0c1c:
    ld a, $98

jr_000_0c1e:
    ld [hl], a
    add hl, de
    sub $08
    dec b
    jr nz, jr_000_0c1e

jr_000_0c25:
    ld a, $f0

jr_000_0c27:
    dec c
    jr z, jr_000_0c2e

    ld [hl], a
    add hl, de
    jr jr_000_0c27

jr_000_0c2e:
    ldh a, [$dc]
    and a
    jr z, jr_000_0c3a

    or $80
    ldh [$b1], a
    xor a
    ldh [$dc], a

jr_000_0c3a:
    ld a, $ff
    ldh [$d0], a
    ldh a, [$cb]
    cp $29
    ldh a, [$b1]
    jr nz, jr_000_0c4d

    ldh [$cf], a
    ld a, $01
    ldh [$ce], a
    ret


jr_000_0c4d:
    ldh [$cf], a
    ret


jr_000_0c50:
    ldh a, [$d1]
    cp $aa
    jr z, jr_000_0c7c

    ld a, $77
    ldh [$d1], a
    ld a, $01
    ldh [$e1], a
    jr jr_000_0c2e

jr_000_0c60:
    ld c, $13
    jr jr_000_0c25

jr_000_0c64:
    ldh a, [$d1]
    cp $77
    jr z, jr_000_0c7c

    ld a, $aa
    ldh [$d1], a
    ld a, $1b
    ldh [$e1], a
    ld a, $05
    ldh [$a7], a
    ld c, $01
    ld b, $12
    jr jr_000_0c1c

jr_000_0c7c:
    ld a, $01
    ldh [$ef], a
    jr jr_000_0c2e

jr_000_0c82:
    and $7f
    cp $05
    jr nc, jr_000_0c2e

    ldh [$d2], a
    jr jr_000_0c3a

Call_000_0c8c:
    ldh a, [$d3]
    and a
    jr z, jr_000_0c98

    bit 7, a
    ret z

    and $07
    jr jr_000_0ca2

jr_000_0c98:
    ldh a, [$d2]
    and a
    ret z

    ldh [$d3], a
    xor a
    ldh [$d2], a
    ret


jr_000_0ca2:
    ld c, a
    push bc
    ld hl, $c822
    ld de, $ffe0

jr_000_0caa:
    add hl, de
    dec c
    jr nz, jr_000_0caa

    ld de, $c822
    ld c, $11

jr_000_0cb3:
    ld b, $0a

jr_000_0cb5:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_0cb5

    push de
    ld de, $0016
    add hl, de
    pop de
    push hl
    ld hl, $0016
    add hl, de
    push hl
    pop de
    pop hl
    dec c
    jr nz, jr_000_0cb3

    pop bc

jr_000_0ccd:
    ld de, $c400
    ld b, $0a

jr_000_0cd2:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_0cd2

    push de
    ld de, $0016
    add hl, de
    pop de
    dec c
    jr nz, jr_000_0ccd

    ld a, $02
    ldh [$e3], a
    ldh [$d4], a
    xor a
    ldh [$d3], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld a, $01
    ldh [rIE], a
    ld a, $03
    ldh [$cd], a
    ldh a, [$d1]
    cp $77
    jr nz, jr_000_0d09

    ldh a, [$d0]
    cp $aa
    jr nz, jr_000_0d13

jr_000_0d03:
    ld a, $01
    ldh [$ef], a
    jr jr_000_0d13

jr_000_0d09:
    cp $aa
    jr nz, jr_000_0d13

    ldh a, [$d0]
    cp $77
    jr z, jr_000_0d03

jr_000_0d13:
    ld b, $34
    ld c, $43
    call Call_000_113f
    xor a
    ldh [$e3], a
    ldh a, [$d1]
    cp $aa
    ld a, $1e
    jr nz, jr_000_0d27

    ld a, $1d

jr_000_0d27:
    ldh [$e1], a
    ld a, $28
    ldh [$a6], a
    ld a, $1d
    ldh [$c6], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ldh a, [$ef]
    and a
    jr nz, jr_000_0d40

    ldh a, [$d7]
    inc a
    ldh [$d7], a

jr_000_0d40:
    call Call_000_0f6f
    ld de, $26f9
    ldh a, [$cb]
    cp $29
    jr z, jr_000_0d4f

    ld de, $270b

jr_000_0d4f:
    ld hl, $c200
    ld c, $03
    call Call_000_1776
    ld a, $19
    ldh [$a6], a
    ldh a, [$ef]
    and a
    jr z, jr_000_0d65

    ld hl, $c220
    ld [hl], $80

jr_000_0d65:
    ld a, $03
    call Call_000_2673
    ld a, $20
    ldh [$e1], a
    ld a, $09
    ld [$dfe8], a
    ldh a, [$d7]
    cp $05
    ret nz

    ld a, $11
    ld [$dfe8], a
    ret


jr_000_0d7e:
    ldh a, [$d7]
    cp $05
    jr nz, jr_000_0d8b

    ldh a, [$c6]
    and a
    jr z, jr_000_0d91

    jr jr_000_0dad

jr_000_0d8b:
    ldh a, [$81]
    bit 3, a
    jr z, jr_000_0dad

jr_000_0d91:
    ld a, $60
    ldh [$cf], a
    ldh [$ce], a
    jr jr_000_0db6

    ld a, $01
    ldh [rIE], a
    ldh a, [$cc]
    jr z, jr_000_0dad

    ldh a, [$cb]
    cp $29
    jr z, jr_000_0d7e

    ldh a, [$d0]
    cp $60
    jr z, jr_000_0db6

jr_000_0dad:
    call Call_000_0dbd
    ld a, $03
    call Call_000_2673
    ret


jr_000_0db6:
    ld a, $1f
    ldh [$e1], a
    ldh [$cc], a
    ret


Call_000_0dbd:
    ldh a, [$a6]
    and a
    jr nz, jr_000_0de5

    ld hl, $ffc6
    dec [hl]
    ld a, $19
    ldh [$a6], a
    call Call_000_0f60
    ld hl, $c201
    ld a, [hl]
    xor $30
    ld [hl+], a
    cp $60
    call z, Call_000_0f17
    inc l
    push af
    ld a, [hl]
    xor $01
    ld [hl], a
    ld l, $13
    ld [hl-], a
    pop af
    dec l
    ld [hl], a

jr_000_0de5:
    ldh a, [$d7]
    cp $05
    jr nz, jr_000_0e13

    ldh a, [$c6]
    ld hl, $c221
    cp $06
    jr z, jr_000_0e0f

    cp $08
    jr nc, jr_000_0e13

    ld a, [hl]
    cp $72
    jr nc, jr_000_0e03

    cp $69
    ret z

    inc [hl]
    inc [hl]
    ret


jr_000_0e03:
    ld [hl], $69
    inc l
    inc l
    ld [hl], $57
    ld a, $06
    ld [$dfe0], a
    ret


jr_000_0e0f:
    dec l
    ld [hl], $80
    ret


jr_000_0e13:
    ldh a, [$a7]
    and a
    ret nz

    ld a, $0f
    ldh [$a7], a
    ld hl, $c223
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ldh a, [$ef]
    and a
    jr nz, jr_000_0e31

    ldh a, [$d8]
    inc a
    ldh [$d8], a

jr_000_0e31:
    call Call_000_0f6f
    ld de, $271d
    ldh a, [$cb]
    cp $29
    jr z, jr_000_0e40

    ld de, $2729

jr_000_0e40:
    ld hl, $c200
    ld c, $02
    call Call_000_1776
    ld a, $19
    ldh [$a6], a
    ldh a, [$ef]
    and a
    jr z, jr_000_0e56

    ld hl, $c210
    ld [hl], $80

jr_000_0e56:
    ld a, $02
    call Call_000_2673
    ld a, $21
    ldh [$e1], a
    ld a, $09
    ld [$dfe8], a
    ldh a, [$d8]
    cp $05
    ret nz

    ld a, $11
    ld [$dfe8], a
    ret


jr_000_0e6f:
    ldh a, [$d8]
    cp $05
    jr nz, jr_000_0e7c

    ldh a, [$c6]
    and a
    jr z, jr_000_0e82

    jr jr_000_0e9e

jr_000_0e7c:
    ldh a, [$81]
    bit 3, a
    jr z, jr_000_0e9e

jr_000_0e82:
    ld a, $60
    ldh [$cf], a
    ldh [$ce], a
    jr jr_000_0ea7

    ld a, $01
    ldh [rIE], a
    ldh a, [$cc]
    jr z, jr_000_0e9e

    ldh a, [$cb]
    cp $29
    jr z, jr_000_0e6f

    ldh a, [$d0]
    cp $60
    jr z, jr_000_0ea7

jr_000_0e9e:
    call Call_000_0eae
    ld a, $02
    call Call_000_2673
    ret


jr_000_0ea7:
    ld a, $1f
    ldh [$e1], a
    ldh [$cc], a
    ret


Call_000_0eae:
    ldh a, [$a6]
    and a
    jr nz, jr_000_0ecf

    ld hl, $ffc6
    dec [hl]
    ld a, $19
    ldh [$a6], a
    call Call_000_0f60
    ld hl, $c211
    ld a, [hl]
    xor $08
    ld [hl+], a
    cp $68
    call z, Call_000_0f17
    inc l
    ld a, [hl]
    xor $01
    ld [hl], a

jr_000_0ecf:
    ldh a, [$d8]
    cp $05
    jr nz, jr_000_0f07

    ldh a, [$c6]
    ld hl, $c201
    cp $05
    jr z, jr_000_0f03

    cp $06
    jr z, jr_000_0ef3

    cp $08
    jr nc, jr_000_0f07

    ld a, [hl]
    cp $72
    jr nc, jr_000_0f03

    cp $61
    ret z

    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ret


jr_000_0ef3:
    dec l
    ld [hl], $00
    inc l
    ld [hl], $61
    inc l
    inc l
    ld [hl], $56
    ld a, $06
    ld [$dfe0], a
    ret


jr_000_0f03:
    dec l
    ld [hl], $80
    ret


jr_000_0f07:
    ldh a, [$a7]
    and a
    ret nz

    ld a, $0f
    ldh [$a7], a
    ld hl, $c203
    ld a, [hl]
    xor $01
    ld [hl], a
    ret


Call_000_0f17:
    push af
    push hl
    ldh a, [$d7]
    cp $05
    jr z, jr_000_0f39

    ldh a, [$d8]
    cp $05
    jr z, jr_000_0f39

    ldh a, [$cb]
    cp $29
    jr nz, jr_000_0f39

    ld hl, $c060
    ld b, $24
    ld de, $0f3c

jr_000_0f33:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_0f33

jr_000_0f39:
    pop hl
    pop af
    ret


    ld b, d
    jr nc, jr_000_0f4c

    nop
    ld b, d
    jr c, @-$4c

    nop
    ld b, d
    ld b, b
    ld c, $00
    ld b, d
    ld c, b
    inc e
    nop

jr_000_0f4c:
    ld b, d
    ld e, b
    ld c, $00
    ld b, d
    ld h, b
    dec e
    nop
    ld b, d
    ld l, b
    or l
    nop
    ld b, d
    ld [hl], b
    cp e
    nop
    ld b, d
    ld a, b
    dec e
    nop

Call_000_0f60:
    ld hl, $c060
    ld de, $0004
    ld b, $09
    xor a

jr_000_0f69:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_0f69

    ret


Call_000_0f6f:
    call Call_000_2820
    ld hl, $55ac
    ld bc, $1000
    call Call_000_27e4
    call $2795
    ld hl, $9800
    ld de, $54e4
    ld b, $04
    call Call_000_27f0
    ld hl, $9980
    ld b, $06
    call Call_000_27f0
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_0fb9

    ld hl, $9841
    ld [hl], $bd
    inc l
    ld [hl], $b2
    inc l
    ld [hl], $2e
    inc l
    ld [hl], $be
    inc l
    ld [hl], $2e
    ld hl, $9a01
    ld [hl], $b4
    inc l
    ld [hl], $b5
    inc l
    ld [hl], $bb
    inc l
    ld [hl], $2e
    inc l
    ld [hl], $bc

jr_000_0fb9:
    ldh a, [$ef]
    and a
    jr nz, jr_000_0fc1

    call Call_000_1085

jr_000_0fc1:
    ldh a, [$d7]
    and a
    jr z, jr_000_100f

    cp $05
    jr nz, jr_000_0fe0

    ld hl, $98a5
    ld b, $0b
    ldh a, [$cb]
    cp $29
    ld de, $10f3
    jr z, jr_000_0fdb

    ld de, $10fe

jr_000_0fdb:
    call Call_000_10d8
    ld a, $04

jr_000_0fe0:
    ld c, a
    ldh a, [$cb]
    cp $29
    ld a, $93
    jr nz, jr_000_0feb

    ld a, $8f

jr_000_0feb:
    ldh [$a0], a
    ld hl, $99e7
    call Call_000_106a
    ldh a, [$d9]
    and a
    jr z, jr_000_100f

    ld a, $ac
    ldh [$a0], a
    ld hl, $99f0
    ld c, $01
    call Call_000_106a
    ld hl, $98a6
    ld de, $1109
    ld b, $09
    call Call_000_10d8

jr_000_100f:
    ldh a, [$d8]
    and a
    jr z, jr_000_1052

    cp $05
    jr nz, jr_000_102e

    ld hl, $98a5
    ld b, $0b
    ldh a, [$cb]
    cp $29
    ld de, $10fe
    jr z, jr_000_1029

    ld de, $10f3

jr_000_1029:
    call Call_000_10d8
    ld a, $04

jr_000_102e:
    ld c, a
    ldh a, [$cb]
    cp $29
    ld a, $8f
    jr nz, jr_000_1039

    ld a, $93

jr_000_1039:
    ldh [$a0], a
    ld hl, $9827
    call Call_000_106a
    ldh a, [$da]
    and a
    jr z, jr_000_1052

    ld a, $ac
    ldh [$a0], a
    ld hl, $9830
    ld c, $01
    call Call_000_106a

jr_000_1052:
    ldh a, [$db]
    and a
    jr z, jr_000_1062

    ld hl, $98a7
    ld de, $10ed
    ld b, $06
    call Call_000_10d8

jr_000_1062:
    ld a, $d3
    ldh [rLCDC], a
    call Call_000_178a
    ret


Call_000_106a:
jr_000_106a:
    ldh a, [$a0]
    push hl
    ld de, $0020
    ld b, $02

jr_000_1072:
    push hl
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    pop hl
    add hl, de
    dec b
    jr nz, jr_000_1072

    pop hl
    ld de, $0003
    add hl, de
    dec c
    jr nz, jr_000_106a

    ret


Call_000_1085:
    ld hl, $ffd7
    ld de, $ffd8
    ldh a, [$d9]
    and a
    jr nz, jr_000_10ca

    ldh a, [$da]
    and a
    jr nz, jr_000_10d1

    ldh a, [$db]
    and a
    jr nz, jr_000_10bb

    ld a, [hl]
    cp $04
    jr z, jr_000_10b0

    ld a, [de]
    cp $04
    ret nz

jr_000_10a3:
    ld a, $05
    ld [de], a
    jr jr_000_10b2
; The next 3 instructions are not used.
    ld a, [de]
    cp $03
    ret nz

jr_000_10ac:
    ld a, $03
    jr jr_000_10b5

jr_000_10b0:
    ld [hl], $05

jr_000_10b2:
    xor a
    ldh [$db], a

jr_000_10b5:
    xor a
    ldh [$d9], a
    ldh [$da], a
    ret


jr_000_10bb:
    ld a, [hl]
    cp $04
    jr nz, jr_000_10c6

    ldh [$d9], a

jr_000_10c2:
    xor a
    ldh [$db], a
    ret


jr_000_10c6:
    ldh [$da], a
    jr jr_000_10c2

jr_000_10ca:
    ld a, [hl]
    cp $05
    jr z, jr_000_10b0

    jr jr_000_10ac

jr_000_10d1:
    ld a, [de]
    cp $05
    jr z, jr_000_10a3

    jr jr_000_10ac

Call_000_10d8:
    push bc
    push hl

jr_000_10da:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_10da

    pop hl
    ld de, $0020
    add hl, de
    pop bc
    ld a, $b6

jr_000_10e8:
    ld [hl+], a
    dec b
    jr nz, jr_000_10e8

    ret


    or b
    or c
    or d
    or e
    or c
    ld a, $b4
    or l
    cp e
    ld l, $bc
    cpl
    dec l
    ld l, $3d
    ld c, $3e
    cp l
    or d
    ld l, $be
    ld l, $2f
    dec l
    ld l, $3d
    ld c, $3e
    or l
    or b
    ld b, c
    or l
    dec a
    dec e
    or l
    cp [hl]
    or c
    ld a, $01
    ldh [rIE], a
    ldh a, [$a6]
    and a
    ret nz

    call Call_000_178a
    xor a
    ldh [$ef], a
    ld b, $27
    ld c, $79
    call Call_000_113f
    call $7ff3
    ldh a, [$d7]
    cp $05
    jr z, jr_000_113a

    ldh a, [$d8]
    cp $05
    jr z, jr_000_113a

    ld a, $01
    ldh [$d6], a

jr_000_113a:
    ld a, $16
    ldh [$e1], a
    ret


Call_000_113f:
    ldh a, [$cc]
    and a
    jr z, jr_000_1158

    xor a
    ldh [$cc], a
    ldh a, [$cb]
    cp $29
    ldh a, [$d0]
    jr nz, jr_000_1160

    cp b
    jr z, jr_000_115a

    ld a, $02
    ldh [$cf], a
    ldh [$ce], a

jr_000_1158:
    pop hl
    ret


jr_000_115a:
    ld a, c
    ldh [$cf], a
    ldh [$ce], a
    ret


jr_000_1160:
    cp c
    ret z

    ld a, b
    ldh [$cf], a
    pop hl
    ret


    call Call_000_11b2
    ld hl, $9ce6
    ld de, $141b
    ld b, $07
    call Call_000_1437
    ld hl, $9ce7
    ld de, $1422
    ld b, $07
    call Call_000_1437
    ld hl, $9d08
    ld [hl], $72
    inc l
    ld [hl], $c4
    ld hl, $9d28
    ld [hl], $b7
    inc l
    ld [hl], $b8
    ld de, $2771
    ld hl, $c200
    ld c, $03
    call Call_000_1776
    ld a, $03
    call Call_000_2673
    ld a, $db
    ldh [rLCDC], a
    ld a, $bb
    ldh [$a6], a
    ld a, $27
    ldh [$e1], a
    ld a, $10
    ld [$dfe8], a
    ret


Call_000_11b2:
    call Call_000_2820
    ld hl, $55ac
    ld bc, $1000
    call Call_000_27e4
    ld hl, $9fff
    call Call_000_2798
    ld hl, $9dc0
    ld de, $51c4
    ld b, $04
    call Call_000_27f0
    ld hl, $9cec
    ld de, $1429
    ld b, $07
    call Call_000_1437
    ld hl, $9ced
    ld de, $1430
    ld b, $07
    call Call_000_1437
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld hl, $c210
    ld [hl], $00
    ld l, $20
    ld [hl], $00
    ld a, $ff
    ldh [$a6], a
    ld a, $28
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    jr z, jr_000_1205

    call Call_000_13fa
    ret


jr_000_1205:
    ld a, $29
    ldh [$e1], a
    ld hl, $c213
    ld [hl], $35
    ld l, $23
    ld [hl], $35
    ld a, $ff
    ldh [$a6], a
    ld a, $2f
    call Call_000_1fd7
    ret


    ldh a, [$a6]
    and a
    jr z, jr_000_1225

    call Call_000_13fa
    ret


jr_000_1225:
    ld a, $02
    ldh [$e1], a
    ld hl, $9d08
    ld b, $2f
    call Call_000_19ff
    ld hl, $9d09
    call Call_000_19ff
    ld hl, $9d28
    call Call_000_19ff
    ld hl, $9d29
    call Call_000_19ff
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_1277

    ld a, $0a
    ldh [$a6], a
    ld hl, $c201
    dec [hl]
    ld a, [hl]
    cp $58
    jr nz, jr_000_1277

    ld hl, $c210
    ld [hl], $00
    inc l
    add $20
    ld [hl+], a
    ld [hl], $4c
    inc l
    ld [hl], $40
    ld l, $20
    ld [hl], $80
    ld a, $03
    call Call_000_2673
    ld a, $03
    ldh [$e1], a
    ld a, $04
    ld [$dff8], a
    ret


jr_000_1277:
    call Call_000_13fa
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_129d

    ld a, $0a
    ldh [$a6], a
    ld hl, $c211
    dec [hl]
    ld l, $01
    dec [hl]
    ld a, [hl]
    cp $d0
    jr nz, jr_000_129d

    ld a, $9c
    ldh [$c9], a
    ld a, $82
    ldh [$ca], a
    ld a, $2c
    ldh [$e1], a
    ret


jr_000_129d:
    ldh a, [$a7]
    and a
    jr nz, jr_000_12ad

    ld a, $06
    ldh [$a7], a
    ld hl, $c213
    ld a, [hl]
    xor $01
    ld [hl], a

jr_000_12ad:
    ld a, $03
    call Call_000_2673
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld a, $06
    ldh [$a6], a
    ldh a, [$ca]
    sub $82
    ld e, a
    ld d, $00
    ld hl, $12f5
    add hl, de
    push hl
    pop de
    ldh a, [$c9]
    ld h, a
    ldh a, [$ca]
    ld l, a
    ld a, [de]
    call Call_000_19fe
    push hl
    ld de, $0020
    add hl, de
    ld b, $b6
    call Call_000_19ff
    pop hl
    inc hl
    ld a, $02
    ld [$dfe0], a
    ld a, h
    ldh [$c9], a
    ld a, l
    ldh [$ca], a
    cp $92
    ret nz

    ld a, $ff
    ldh [$a6], a
    ld a, $2d
    ldh [$e1], a
    ret


    or e
    cp h
    dec a
    cp [hl]
    cp e
    or l
    dec e
    or d
    cp l
    or l
    dec e
    ld l, $bc
    dec a
    ld c, $3e
    ldh a, [$a6]
    and a
    ret nz

    call Call_000_2820
    call Call_000_27ad
    call Call_000_2293
    ld a, $93
    ldh [rLCDC], a
    ld a, $05
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld a, $2e
    ldh [$e1], a
    ret


    call Call_000_11b2
    ld de, $2783
    ld hl, $c200
    ld c, $03
    call Call_000_1776
    ldh a, [$f3]
    ld [$c203], a
    ld a, $03
    call Call_000_2673
    xor a
    ldh [$f3], a
    ld a, $db
    ldh [rLCDC], a
    ld a, $bb
    ldh [$a6], a
    ld a, $2f
    ldh [$e1], a
    ld a, $10
    ld [$dfe8], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld hl, $c210
    ld [hl], $00
    ld l, $20
    ld [hl], $00
    ld a, $a0
    ldh [$a6], a
    ld a, $30
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    jr z, jr_000_1370

    call Call_000_13fa
    ret


jr_000_1370:
    ld a, $31
    ldh [$e1], a
    ld a, $80
    ldh [$a6], a
    ld a, $2f
    call Call_000_1fd7
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_13b1

    ld a, $0a
    ldh [$a6], a
    ld hl, $c201
    dec [hl]
    ld a, [hl]
    cp $6a
    jr nz, jr_000_13b1

    ld hl, $c210
    ld [hl], $00
    inc l
    add $10
    ld [hl+], a
    ld [hl], $54
    inc l
    ld [hl], $5c
    ld l, $20
    ld [hl], $80
    ld a, $03
    call Call_000_2673
    ld a, $32
    ldh [$e1], a
    ld a, $04
    ld [$dff8], a
    ret


jr_000_13b1:
    call Call_000_13fa
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_13cf

    ld a, $0a
    ldh [$a6], a
    ld hl, $c211
    dec [hl]
    ld l, $01
    dec [hl]
    ld a, [hl]
    cp $e0
    jr nz, jr_000_13cf

    ld a, $33
    ldh [$e1], a
    ret


jr_000_13cf:
    ldh a, [$a7]
    and a
    jr nz, jr_000_13df

    ld a, $06
    ldh [$a7], a
    ld hl, $c213
    ld a, [hl]
    xor $01
    ld [hl], a

jr_000_13df:
    ld a, $03
    call Call_000_2673
    ret


    call Call_000_2820
    call Call_000_27ad
    call $7ff3
    call Call_000_2293
    ld a, $93
    ldh [rLCDC], a
    ld a, $10
    ldh [$e1], a
    ret


Call_000_13fa:
    ldh a, [$a7]
    and a
    ret nz

    ld a, $0a
    ldh [$a7], a
    ld a, $03
    ld [$dff8], a
    ld b, $02
    ld hl, $c210

jr_000_140c:
    ld a, [hl]
    xor $80
    ld [hl], a
    ld l, $20
    dec b
    jr nz, jr_000_140c

    ld a, $03
    call Call_000_2673
    ret


    jp nz, $caca

    jp z, $caca

    jp z, $cbc3

    ld e, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ret z

    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ret


    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h

Call_000_1437:
jr_000_1437:
    ld a, [de]
    ld [hl], a
    inc de
    push de
    ld de, $0020
    add hl, de
    pop de
    dec b
    jr nz, jr_000_1437

    ret

; Select Game & Music Type screen
    ld a, $01
    ldh [rIE], a
    xor a
    ldh [rSB], a
    ldh [rSC], a
    ldh [rIF], a

Call_000_144f:
    call Call_000_2820
    call Call_000_27ad
    ld de, $4cd7
    call Call_000_27eb
    call Call_000_178a
    ld hl, $c200
    ld de, $26cf
    ld c, $02
    call Call_000_1776
    ld de, $c201
    call Call_000_148d
    ldh a, [$c0]
    ld e, $12
    ld [de], a
    inc de
    cp $37
    ld a, $1c
    jr z, jr_000_147d

    ld a, $1d

jr_000_147d:
    ld [de], a
    call Call_000_2671
    call Call_000_1517
    ld a, $d3
    ldh [rLCDC], a
    ld a, $0e
    ldh [$e1], a
    ret


Call_000_148d:
    ld a, $01
    ld [$dfe0], a

Call_000_1492:
    ldh a, [$c1]
    push af
    sub $1c
    add a
    ld c, a
    ld b, $00
    ld hl, $14a8
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    pop af
    ld [de], a
    ret

; db?
    ld [hl], b
    scf
    ld [hl], b
    ld [hl], a
    add b
    scf
    add b
    ld [hl], a

Call_000_14b0:
    ld de, $c200
    call Call_000_1766
    ld hl, $ffc1
    ld a, [hl]
    bit 3, b
    jp nz, Jump_000_1563

    bit 0, b
    jp nz, Jump_000_1563

    bit 1, b
    jr nz, jr_000_1509

jr_000_14c8:
    inc e
    bit 4, b
    jr nz, jr_000_14f3

    bit 5, b
    jr nz, jr_000_14fe

    bit 6, b
    jr nz, jr_000_14eb

    bit 7, b
    jp z, Jump_000_155f

    cp $1e
    jr nc, jr_000_14e7

    add $02

jr_000_14e0:
    ld [hl], a
    call Call_000_148d
    call Call_000_1517

jr_000_14e7:
    call Call_000_2671
    ret


jr_000_14eb:
    cp $1e
    jr c, jr_000_14e7

    sub $02
    jr jr_000_14e0

jr_000_14f3:
    cp $1d
    jr z, jr_000_14e7

    cp $1f
    jr z, jr_000_14e7

    inc a
    jr jr_000_14e0

jr_000_14fe:
    cp $1c
    jr z, jr_000_14e7

    cp $1e
    jr z, jr_000_14e7

    dec a
    jr jr_000_14e0

jr_000_1509:
    push af
    ldh a, [$c5]
    and a
    jr z, jr_000_1512

    pop af
    jr jr_000_14c8

jr_000_1512:
    pop af
    ld a, $0e
    jr jr_000_1572

Call_000_1517:
    ldh a, [$c1]
    sub $17
    cp $08
    jr nz, jr_000_1521

    ld a, $ff

jr_000_1521:
    ld [$dfe8], a
    ret


    ld de, $c210
    call Call_000_1766
    ld hl, $ffc0
    ld a, [hl]
    bit 3, b
    jr nz, jr_000_1563

    bit 0, b
    jr nz, jr_000_1577

    inc e
    inc e
    bit 4, b
    jr nz, jr_000_154b

    bit 5, b
    jr z, jr_000_155f

    cp $37
    jr z, jr_000_155f

    ld a, $37
    ld b, $1c
    jr jr_000_1553

jr_000_154b:
    cp $77
    jr z, jr_000_155f

    ld a, $77
    ld b, $1d

jr_000_1553:
    ld [hl], a
    push af
    ld a, $01
    ld [$dfe0], a
    pop af
    ld [de], a
    inc de
    ld a, b

jr_000_155e:
    ld [de], a

Jump_000_155f:
jr_000_155f:
    call Call_000_2671
    ret


Jump_000_1563:
jr_000_1563:
    ld a, $02
    ld [$dfe0], a
    ldh a, [$c0]
    cp $37
    ld a, $10
    jr z, jr_000_1572

    ld a, $12

jr_000_1572:
    ldh [$e1], a
    xor a
    jr jr_000_155e

jr_000_1577:
    ld a, $0f
    jr jr_000_1572

; Display Type-A Level Select / Top Score screen
    call Call_000_2820
    ld de, $4e3f
    call Call_000_27eb
    call Call_000_18fc
    call Call_000_178a
    ld hl, $c200
    ld de, $26db
    ld c, $01
    call Call_000_1776
    ld de, $c201
    ldh a, [$c2]
    ld hl, $1615
    call Call_000_174e
    call Call_000_2671
    call Call_000_1795
    call Call_000_18ca
    ld a, $d3
    ldh [rLCDC], a
    ld a, $11
    ldh [$e1], a
    ldh a, [$c7]
    and a
    jr nz, jr_000_15ba

    call Call_000_1517
    ret


jr_000_15ba:
    ld a, $15

jr_000_15bc:
    ldh [$e1], a
    ret


    ld de, $c200
    call Call_000_1766
    ld hl, $ffc2
    ld a, $0a
    bit 3, b
    jr nz, jr_000_15bc

    bit 0, b
    jr nz, jr_000_15bc

    ld a, $08
    bit 1, b
    jr nz, jr_000_15bc

    ld a, [hl]
    bit 4, b
    jr nz, jr_000_15f1

    bit 5, b
    jr nz, jr_000_1607

    bit 6, b
    jr nz, jr_000_160d

    bit 7, b
    jr z, jr_000_1603

    cp $05
    jr nc, jr_000_1603

    add $05
    jr jr_000_15f6

jr_000_15f1:
    cp $09
    jr z, jr_000_1603

    inc a

jr_000_15f6:
    ld [hl], a
    ld de, $c201
    ld hl, $1615
    call Call_000_174e
    call Call_000_1795

Jump_000_1603:
jr_000_1603:
    call Call_000_2671
    ret


jr_000_1607:
    and a
    jr z, jr_000_1603

    dec a
    jr jr_000_15f6

jr_000_160d:
    cp $05
    jr c, jr_000_1603

    sub $05
    jr jr_000_15f6

    ld b, b
    jr nc, @+$42

    ld b, b
    ld b, b
    ld d, b
    ld b, b
    ld h, b
    ld b, b
    ld [hl], b
    ld d, b
    jr nc, jr_000_1672

    ld b, b
    ld d, b
    ld d, b
    ld d, b
    ld h, b
    ld d, b
    ld [hl], b

; Display Type-B Level Select / High / Top Score screen
    call Call_000_2820
    ld de, $4fa7
    call Call_000_27eb
    call Call_000_178a
    ld hl, $c200
    ld de, $26e1
    ld c, $02
    call Call_000_1776
    ld de, $c201
    ldh a, [$c3]
    ld hl, $16d2
    call Call_000_174e
    ld de, $c211
    ldh a, [$c4]
    ld hl, $1741
    call Call_000_174e
    call Call_000_2671
    call Call_000_17af
    call Call_000_18ca
    ld a, $d3
    ldh [rLCDC], a
    ld a, $13
    ldh [$e1], a
    ldh a, [$c7]
    and a
    jr nz, jr_000_1670

    call Call_000_1517
    ret


jr_000_1670:
    ld a, $15

jr_000_1672:
    ldh [$e1], a
    ret


jr_000_1675:
    ldh [$e1], a
    xor a
    ld [de], a
    ret


    ld de, $c200
    call Call_000_1766
    ld hl, $ffc3
    ld a, $0a
    bit 3, b
    jr nz, jr_000_1675

    ld a, $14
    bit 0, b
    jr nz, jr_000_1675

    ld a, $08
    bit 1, b
    jr nz, jr_000_1675

    ld a, [hl]
    bit 4, b
    jr nz, jr_000_16ae

    bit 5, b
    jr nz, jr_000_16c4

    bit 6, b
    jr nz, jr_000_16ca

    bit 7, b
    jr z, jr_000_16c0

    cp $05
    jr nc, jr_000_16c0

    add $05
    jr jr_000_16b3

jr_000_16ae:
    cp $09
    jr z, jr_000_16c0

    inc a

jr_000_16b3:
    ld [hl], a
    ld de, $c201
    ld hl, $16d2
    call Call_000_174e
    call Call_000_17af

jr_000_16c0:
    call Call_000_2671
    ret


jr_000_16c4:
    and a
    jr z, jr_000_16c0

    dec a
    jr jr_000_16b3

jr_000_16ca:
    cp $05
    jr c, jr_000_16c0

    sub $05
    jr jr_000_16b3

    ld b, b
    jr jr_000_1715

    jr z, jr_000_1717

    jr c, jr_000_1719

    ld c, b
    ld b, b
    ld e, b
    ld d, b
    jr jr_000_172f

    jr z, @+$52

    jr c, jr_000_1733

    ld c, b
    ld d, b
    ld e, b

jr_000_16e6:
    ldh [$e1], a
    xor a
    ld [de], a
    ret


    ld de, $c210
    call Call_000_1766
    ld hl, $ffc4
    ld a, $0a
    bit 3, b
    jr nz, jr_000_16e6

    bit 0, b
    jr nz, jr_000_16e6

    ld a, $13
    bit 1, b
    jr nz, jr_000_16e6

    ld a, [hl]
    bit 4, b
    jr nz, jr_000_171d

    bit 5, b
    jr nz, jr_000_1733

    bit 6, b
    jr nz, jr_000_1739

    bit 7, b
    jr z, jr_000_172f

jr_000_1715:
    cp $03

jr_000_1717:
    jr nc, jr_000_172f

jr_000_1719:
    add $03
    jr jr_000_1722

jr_000_171d:
    cp $05
    jr z, jr_000_172f

    inc a

jr_000_1722:
    ld [hl], a
    ld de, $c211
    ld hl, $1741
    call Call_000_174e
    call Call_000_17af

jr_000_172f:
    call Call_000_2671
    ret


jr_000_1733:
    and a
    jr z, jr_000_172f

    dec a
    jr jr_000_1722

jr_000_1739:
    cp $03
    jr c, jr_000_172f

    sub $03
    jr jr_000_1722

    ld b, b
    ld [hl], b
    ld b, b
    add b
    ld b, b
    sub b
    ld d, b
    ld [hl], b
    ld d, b
    add b
    ld d, b
    sub b
    nop

Call_000_174e:
    push af
    ld a, $01
    ld [$dfe0], a
    pop af

Call_000_1755:
    push af
    add a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    pop af
    add $20
    ld [de], a
    ret


Call_000_1766:
    ldh a, [$81]
    ld b, a
    ldh a, [$a6]
    and a
    ret nz

    ld a, $10
    ldh [$a6], a
    ld a, [de]
    xor $80
    ld [de], a
    ret


Call_000_1776:
jr_000_1776:
    push hl
    ld b, $06

jr_000_1779:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_1779

    pop hl
    ld a, $10
    add l
    ld l, a
    dec c
    jr nz, jr_000_1776

    ld [hl], $80
    ret


; Fill c000 to c09f with 0
Call_000_178a:
    xor a
    ld hl, $c000
    ld b, $a0

jr_000_1790:
    ld [hl+], a
    dec b
    jr nz, jr_000_1790

    ret


Call_000_1795:
    call Call_000_18fc
    ldh a, [$c2]
    ld hl, $d654
    ld de, $001b

jr_000_17a0:
    and a
    jr z, jr_000_17a7

    dec a
    add hl, de
    jr jr_000_17a0

jr_000_17a7:
    inc hl
    inc hl
    push hl
    pop de
    call Call_000_1800
    ret


Call_000_17af:
    call Call_000_18fc
    ldh a, [$c3]
    ld hl, $d000
    ld de, $00a2

jr_000_17ba:
    and a
    jr z, jr_000_17c1

    dec a
    add hl, de
    jr jr_000_17ba

jr_000_17c1:
    ldh a, [$c4]
    ld de, $001b

jr_000_17c6:
    and a
    jr z, jr_000_17cd

    dec a
    add hl, de
    jr jr_000_17c6

jr_000_17cd:
    inc hl
    inc hl
    push hl
    pop de
    call Call_000_1800
    ret


Call_000_17d5:
    ld b, $03

jr_000_17d7:
    ld a, [hl]
    and $f0
    jr nz, jr_000_17e7

    inc e
    ld a, [hl-]
    and $0f
    jr nz, jr_000_17f1

    inc e
    dec b
    jr nz, jr_000_17d7

    ret


jr_000_17e7:
    ld a, [hl]
    and $f0
    swap a
    ld [de], a
    inc e
    ld a, [hl-]
    and $0f

jr_000_17f1:
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_17e7

    ret


Call_000_17f7:
    ld b, $03

Call_000_17f9:
jr_000_17f9:
    ld a, [hl-]
    ld [de], a
    dec de
    dec b
    jr nz, jr_000_17f9

    ret


Call_000_1800:
    ld a, d
    ldh [$fb], a
    ld a, e
    ldh [$fc], a
    ld c, $03

jr_000_1808:
    ld hl, $c0a2
    push de
    ld b, $03

jr_000_180e:
    ld a, [de]
    sub [hl]
    jr c, jr_000_1822

    jr nz, jr_000_1819

    dec l
    dec de
    dec b
    jr nz, jr_000_180e

jr_000_1819:
    pop de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_000_1808

    jr jr_000_1880

jr_000_1822:
    pop de
    ldh a, [$fb]
    ld d, a
    ldh a, [$fc]
    ld e, a
    push de
    push bc
    ld hl, $0006
    add hl, de
    push hl
    pop de
    dec hl
    dec hl
    dec hl

jr_000_1834:
    dec c
    jr z, jr_000_183c

    call Call_000_17f7
    jr jr_000_1834

jr_000_183c:
    ld hl, $c0a2
    ld b, $03

jr_000_1841:
    ld a, [hl-]
    ld [de], a
    dec e
    dec b
    jr nz, jr_000_1841

    pop bc
    pop de
    ld a, c
    ldh [$c8], a
    ld hl, $0012
    add hl, de
    push hl
    ld de, $0006
    add hl, de
    push hl
    pop de
    pop hl

jr_000_1858:
    dec c
    jr z, jr_000_1862

    ld b, $06
    call Call_000_17f9
    jr jr_000_1858

jr_000_1862:
    ld a, $60
    ld b, $05

jr_000_1866:
    ld [de], a
    dec de
    dec b
    jr nz, jr_000_1866

    ld a, $0a
    ld [de], a
    ld a, d
    ldh [$c9], a
    ld a, e
    ldh [$ca], a
    xor a
    ldh [$9c], a
    ldh [$c6], a
    ld a, $01
    ld [$dfe8], a
    ldh [$c7], a

jr_000_1880:
    ld de, $c9ac
    ldh a, [$fb]
    ld h, a
    ldh a, [$fc]
    ld l, a
    ld b, $03

jr_000_188b:
    push hl
    push de
    push bc
    call Call_000_17d5
    pop bc
    pop de
    ld hl, $0020
    add hl, de
    push hl
    pop de
    pop hl
    push de
    ld de, $0003
    add hl, de
    pop de
    dec b
    jr nz, jr_000_188b

    dec hl
    dec hl
    ld b, $03
    ld de, $c9a4

jr_000_18aa:
    push de
    ld c, $06

jr_000_18ad:
    ld a, [hl+]
    and a
    jr z, jr_000_18b6

    ld [de], a
    inc de
    dec c
    jr nz, jr_000_18ad

jr_000_18b6:
    pop de
    push hl
    ld hl, $0020
    add hl, de
    push hl
    pop de
    pop hl
    dec b
    jr nz, jr_000_18aa

    call Call_000_2651
    ld a, $01
    ldh [$e8], a
    ret


Call_000_18ca:
    ldh a, [$e8]
    and a
    ret z

    ld hl, $99a4
    ld de, $c9a4
    ld c, $06

jr_000_18d6:
    push hl

jr_000_18d7:
    ld b, $06

jr_000_18d9:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_18d9

    inc e
    inc l
    inc e
    inc l
    dec c
    jr z, jr_000_18f7

    bit 0, c
    jr nz, jr_000_18d7

    pop hl
    ld de, $0020
    add hl, de
    push hl
    pop de
    ld a, $30
    add d
    ld d, a
    jr jr_000_18d6

jr_000_18f7:
    pop hl

Call_000_18f8:
    xor a
    ldh [$e8], a
    ret


Call_000_18fc:
    ld hl, $c9a4
    ld de, $0020
    ld a, $60
    ld c, $03

jr_000_1906:
    ld b, $0e
    push hl

jr_000_1909:
    ld [hl+], a
    dec b
    jr nz, jr_000_1909

    pop hl
    add hl, de
    dec c
    jr nz, jr_000_1906

    ret


    ldh a, [$c8]
    ld hl, $99e4
    ld de, $ffe0

jr_000_191b:
    dec a
    jr z, jr_000_1921

    add hl, de
    jr jr_000_191b

jr_000_1921:
    ldh a, [$c6]
    ld e, a
    ld d, $00
    add hl, de
    ldh a, [$c9]
    ld d, a
    ldh a, [$ca]
    ld e, a
    ldh a, [$a6]
    and a
    jr nz, jr_000_1944

    ld a, $07
    ldh [$a6], a
    ldh a, [$9c]
    xor $01
    ldh [$9c], a
    ld a, [de]
    jr z, jr_000_1941

    ld a, $2f

jr_000_1941:
    call Call_000_19fe

jr_000_1944:
    ldh a, [$81]
    ld b, a
    ldh a, [$80]
    ld c, a
    ld a, $17
    bit 6, b
    jr nz, jr_000_1987

    bit 6, c
    jr nz, jr_000_197f

    bit 7, b
    jr nz, jr_000_19b0

    bit 7, c
    jr nz, jr_000_19a8

    bit 0, b
    jr nz, jr_000_19cc

    bit 1, b
    jp nz, Jump_000_19ee

    bit 3, b
    ret z

jr_000_1968:
    ld a, [de]
    call Call_000_19fe
    call Call_000_1517
    xor a
    ldh [$c7], a
    ldh a, [$c0]
    cp $37
    ld a, $11
    jr z, jr_000_197c

    ld a, $13

jr_000_197c:
    ldh [$e1], a
    ret


jr_000_197f:
    ldh a, [$aa]
    dec a
    ldh [$aa], a
    ret nz

    ld a, $09

jr_000_1987:
    ldh [$aa], a
    ld b, $26
    ldh a, [$f4]
    and a
    jr z, jr_000_1992

    ld b, $27

jr_000_1992:
    ld a, [de]
    cp b
    jr nz, jr_000_19a0

    ld a, $2e

jr_000_1998:
    inc a

jr_000_1999:
    ld [de], a
    ld a, $01
    ld [$dfe0], a
    ret


jr_000_19a0:
    cp $2f
    jr nz, jr_000_1998

    ld a, $0a
    jr jr_000_1999

jr_000_19a8:
    ldh a, [$aa]
    dec a
    ldh [$aa], a
    ret nz

    ld a, $09

jr_000_19b0:
    ldh [$aa], a
    ld b, $26
    ldh a, [$f4]
    and a
    jr z, jr_000_19bb

    ld b, $27

jr_000_19bb:
    ld a, [de]
    cp $0a
    jr nz, jr_000_19c5

    ld a, $30

jr_000_19c2:
    dec a
    jr jr_000_1999

jr_000_19c5:
    cp $2f
    jr nz, jr_000_19c2

    ld a, b
    jr jr_000_1999

jr_000_19cc:
    ld a, [de]
    call Call_000_19fe
    ld a, $02
    ld [$dfe0], a
    ldh a, [$c6]
    inc a
    cp $06
    jr z, jr_000_1968

    ldh [$c6], a
    inc de
    ld a, [de]
    cp $60
    jr nz, jr_000_19e7

    ld a, $0a
    ld [de], a

jr_000_19e7:
    ld a, d
    ldh [$c9], a
    ld a, e
    ldh [$ca], a
    ret


Jump_000_19ee:
    ldh a, [$c6]
    and a
    ret z

    ld a, [de]
    call Call_000_19fe
    ldh a, [$c6]
    dec a
    ldh [$c6], a
    dec de
    jr jr_000_19e7

Call_000_19fe:
    ld b, a

Call_000_19ff:
jr_000_19ff:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_19ff

    ld [hl], b
    ret


; Display Falling Blocks screen
    call Call_000_2820
    xor a
    ld [$c210], a
    ldh [$98], a
    ldh [$9c], a
    ldh [$9b], a
    ldh [$fb], a
    ldh [$9f], a
    ld a, $2f
    call Call_000_1fd7
    call Call_000_1ff2
    call Call_000_2651
    xor a
    ldh [$e3], a
    call Call_000_178a
    ldh a, [$c0]
    ld de, $3ff7
    ld hl, $ffc3
    cp $77
    ld a, $50
    jr z, jr_000_1a3f

    ld a, $f1
    ld hl, $ffc2
    ld de, $3e8f

jr_000_1a3f:
    push de
    ldh [$e6], a
    ld a, [hl]
    ldh [$a9], a
    call Call_000_27eb
    pop de
    ld hl, $9c00
    call Call_000_27ee
    ld de, $2839
    ld hl, $9c63
    ld c, $0a
    call Call_000_1f7d
    ld h, $98
    ldh a, [$e6]
    ld l, a
    ldh a, [$a9]
    ld [hl], a
    ld h, $9c
    ld [hl], a
    ldh a, [$f4]
    and a
    jr z, jr_000_1a71

    inc hl
    ld [hl], $27
    ld h, $98
    ld [hl], $27

jr_000_1a71:
    ld hl, $c200
    ld de, $26bf
    call Call_000_26b6
    ld hl, $c210
    ld de, $26c7
    call Call_000_26b6
    ld hl, $9951
    ldh a, [$c0]
    cp $77
    ld a, $25
    jr z, jr_000_1a8f

    xor a

jr_000_1a8f:
    ldh [$9e], a
    and $0f
    ld [hl-], a
    jr z, jr_000_1a98

    ld [hl], $02

jr_000_1a98:
    call Call_000_1ae8
    ld a, [$c0de]
    and a
    jr z, jr_000_1aa6

    ld a, $80
    ld [$c210], a

jr_000_1aa6:
    call Call_000_2007
    call Call_000_2007
    call Call_000_2007
    call Call_000_2683
    xor a
    ldh [$a0], a
    ldh a, [$c0]
    cp $77
    jr nz, jr_000_1ae0

    ld a, $34
    ldh [$99], a
    ldh a, [$c4]
    ld hl, $98b0
    ld [hl], a
    ld h, $9c
    ld [hl], a
    and a
    jr z, jr_000_1ae0

    ld b, a
    ldh a, [$e4]
    and a
    jr z, jr_000_1ad6

    call Call_000_1b1b
    jr jr_000_1ae0

jr_000_1ad6:
    ld a, b
    ld de, $ffc0
    ld hl, $9a02
    call Call_000_1b68

jr_000_1ae0:
    ld a, $d3
    ldh [rLCDC], a
    xor a
    ldh [$e1], a
    ret


Call_000_1ae8:
    ldh a, [$a9]
    ld e, a
    ldh a, [$f4]
    and a
    jr z, jr_000_1afa

    ld a, $0a
    add e
    cp $15
    jr c, jr_000_1af9

    ld a, $14

jr_000_1af9:
    ld e, a

jr_000_1afa:
    ld hl, $1b06
    ld d, $00
    add hl, de
    ld a, [hl]
    ldh [$99], a
    ldh [$9a], a
    ret


    inc [hl]
    jr nc, jr_000_1b35

    jr z, jr_000_1b2f

    jr nz, jr_000_1b28

    dec d
    db $10
    ld a, [bc]
    add hl, bc
    ld [$0607], sp
    dec b
    dec b
    inc b
    inc b
    inc bc
    inc bc
    ld [bc], a

Call_000_1b1b:
    ld hl, $99c2
    ld de, $1b40
    ld c, $04

jr_000_1b23:
    ld b, $0a
    push hl

jr_000_1b26:
    ld a, [de]
    ld [hl], a

jr_000_1b28:
    push hl
    ld a, h
    add $30
    ld h, a
    ld a, [de]
    ld [hl], a

jr_000_1b2f:
    pop hl
    inc l
    inc de
    dec b
    jr nz, jr_000_1b26

jr_000_1b35:
    pop hl
    push de
    ld de, $0020
    add hl, de
    pop de
    dec c
    jr nz, jr_000_1b23

    ret


    add l
    cpl
    add d
    add [hl]
    add e
    cpl
    cpl
    add b
    add d
    add l
    cpl
    add d
    add h
    add d
    add e
    cpl
    add e
    cpl
    add a
    cpl
    cpl
    add l
    cpl
    add e
    cpl
    add [hl]
    add d
    add b
    add c
    cpl
    add e
    cpl
    add [hl]
    add e
    cpl
    add l
    cpl
    add l
    cpl
    cpl

Call_000_1b68:
    ld b, a

jr_000_1b69:
    dec b
    jr z, jr_000_1b6f

    add hl, de
    jr jr_000_1b69

jr_000_1b6f:
    ldh a, [rDIV]
    ld b, a

jr_000_1b72:
    ld a, $80

jr_000_1b74:
    dec b
    jr z, jr_000_1b7f

    cp $80
    jr nz, jr_000_1b72

    ld a, $2f
    jr jr_000_1b74

jr_000_1b7f:
    cp $2f
    jr z, jr_000_1b8b

    ldh a, [rDIV]
    and $07
    or $80
    jr jr_000_1b8d

jr_000_1b8b:
    ldh [$a0], a

jr_000_1b8d:
    push af
    ld a, l
    and $0f
    cp $0b
    jr nz, jr_000_1ba0

    ldh a, [$a0]
    cp $2f
    jr z, jr_000_1ba0

    pop af
    ld a, $2f
    jr jr_000_1ba1

jr_000_1ba0:
    pop af

jr_000_1ba1:
    ld [hl], a
    push hl
    push af
    ldh a, [$c5]
    and a
    jr nz, jr_000_1bad

    ld de, $3000
    add hl, de

jr_000_1bad:
    pop af
    ld [hl], a
    pop hl
    inc hl
    ld a, l
    and $0f
    cp $0c
    jr nz, jr_000_1b6f

    xor a
    ldh [$a0], a
    ld a, h
    and $0f
    cp $0a
    jr z, jr_000_1bc8

jr_000_1bc2:
    ld de, $0016
    add hl, de
    jr jr_000_1b6f

jr_000_1bc8:
    ld a, l
    cp $2c
    jr nz, jr_000_1bc2

    ret


    call Call_000_1c0d
    ldh a, [$ab]
    and a
    ret nz

    call Call_000_050c
    call Call_000_0542
    call Call_000_0583
    call Call_000_24bb
    call Call_000_209c
    call Call_000_213e
    call Call_000_25a1
    call Call_000_224d
    call Call_000_1f91
    call Call_000_05b3
    ret


jr_000_1bf4:
    bit 2, a
    ret z

    ld a, [$c0de]
    xor $01
    ld [$c0de], a
    jr z, jr_000_1c0a

    ld a, $80

jr_000_1c03:
    ld [$c210], a
    call Call_000_2696
    ret


jr_000_1c0a:
    xor a
    jr jr_000_1c03

Call_000_1c0d:
    ldh a, [$80]
    and $0f
    cp $0f
    jp z, Jump_000_021b

    ldh a, [$e4]
    and a
    ret nz

    ldh a, [$81]
    bit 3, a
    jr z, jr_000_1bf4

    ldh a, [$c5]
    and a
    jr nz, jr_000_1c6a

    ld hl, $ff40
    ldh a, [$ab]
    xor $01
    ldh [$ab], a
    jr z, jr_000_1c5a

    set 3, [hl]
    ld a, $01
    ld [$df7f], a
    ld hl, $994e
    ld de, $9d4e
    ld b, $04

jr_000_1c3f:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1c3f

    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1c3f

    ld a, $80

jr_000_1c4d:
    ld [$c210], a

jr_000_1c50:
    ld [$c200], a
    call Call_000_2683
    call Call_000_2696
    ret


jr_000_1c5a:
    res 3, [hl]
    ld a, $02
    ld [$df7f], a
    ld a, [$c0de]
    and a
    jr z, jr_000_1c4d

    xor a
    jr jr_000_1c50

jr_000_1c6a:
    ldh a, [$cb]
    cp $29
    ret nz

    ldh a, [$ab]
    xor $01
    ldh [$ab], a
    jr z, jr_000_1caa

    ld a, $01
    ld [$df7f], a
    ldh a, [$d0]
    ldh [$f2], a
    ldh a, [$cf]
    ldh [$f1], a
    call Call_000_1ccb
    ret


Call_000_1c88:
    ldh a, [$ab]
    and a
    ret z

    ldh a, [$cc]
    jr z, jr_000_1cc9

    xor a
    ldh [$cc], a
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_1ca1

    ld a, $94
    ldh [$cf], a
    ldh [$ce], a
    pop hl
    ret


jr_000_1ca1:
    xor a
    ldh [$cf], a
    ldh a, [$d0]
    cp $94
    jr z, jr_000_1cc9

jr_000_1caa:
    ldh a, [$f2]
    ldh [$d0], a
    ldh a, [$f1]
    ldh [$cf], a
    ld a, $02
    ld [$df7f], a
    xor a
    ldh [$ab], a
    ld hl, $98ee
    ld b, $8e
    ld c, $05

jr_000_1cc1:
    call Call_000_19ff
    inc l
    dec c
    jr nz, jr_000_1cc1

    ret


jr_000_1cc9:
    pop hl
    ret


Call_000_1ccb:
    ld hl, $98ee
    ld c, $05
    ld de, $1cdd

jr_000_1cd3:
    ld a, [de]
    call Call_000_19fe
    inc de
    inc l
    dec c
    jr nz, jr_000_1cd3

    ret


    add hl, de
    ld a, [bc]
    ld e, $1c
    ld c, $3e
    add b
    ld [$c200], a
    ld [$c210], a
    call Call_000_2683
    call Call_000_2696
    xor a
    ldh [$98], a
    ldh [$9c], a
    call Call_000_2293
    ld a, $87
    call Call_000_1fd7
    ld a, $46
    ldh [$a6], a
    ld a, $0d
    ldh [$e1], a
    ret


    ldh a, [$81]
    bit 0, a
    jr nz, jr_000_1d0f

    bit 3, a
    ret z

jr_000_1d0f:
    xor a
    ldh [$e3], a
    ldh a, [$c5]
    and a
    ld a, $16
    jr nz, jr_000_1d23

    ldh a, [$c0]
    cp $37
    ld a, $10
    jr z, jr_000_1d23

    ld a, $12

jr_000_1d23:
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld hl, $c802
    ld de, $2889
    call Call_000_2804
    ldh a, [$c3]
    and a
    jr z, jr_000_1d66

    ld de, $0040
    ld hl, $c827
    call Call_000_1d84
    ld de, $0100
    ld hl, $c887
    call Call_000_1d84
    ld de, $0300
    ld hl, $c8e7
    call Call_000_1d84
    ld de, $1200
    ld hl, $c947
    call Call_000_1d84
    ld hl, $c0a0
    ld b, $03
    xor a

jr_000_1d62:
    ld [hl+], a
    dec b
    jr nz, jr_000_1d62

jr_000_1d66:
    ld a, $80
    ldh [$a6], a
    ld a, $80
    ld [$c200], a
    ld [$c210], a
    call Call_000_2683
    call Call_000_2696
    call $7ff3
    ld a, $25
    ldh [$9e], a
    ld a, $0b
    ldh [$e1], a
    ret


Call_000_1d84:
    push hl
    ld hl, $c0a0
    ld b, $03
    xor a

jr_000_1d8b:
    ld [hl+], a
    dec b
    jr nz, jr_000_1d8b

    ldh a, [$c3]
    ld b, a
    inc b

jr_000_1d93:
    ld hl, $c0a0
    call Call_000_0166
    dec b
    jr nz, jr_000_1d93

    pop hl
    ld b, $03
    ld de, $c0a2

jr_000_1da2:
    ld a, [de]
    and $f0
    jr nz, jr_000_1db1

    ld a, [de]
    and $0f
    jr nz, jr_000_1db7

    dec e
    dec b
    jr nz, jr_000_1da2

    ret


jr_000_1db1:
    ld a, [de]
    and $f0
    swap a
    ld [hl+], a

jr_000_1db7:
    ld a, [de]
    and $0f
    ld [hl+], a
    dec e
    dec b
    jr nz, jr_000_1db1

    ret


    ldh a, [$a6]
    and a
    ret nz

    ld a, $01
    ld [$c0c6], a
    ld a, $05
    ldh [$a6], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld hl, $c802
    ld de, $510f
    call Call_000_2804
    call Call_000_178a
    ld hl, $c200
    ld de, $2735
    ld c, $0a
    call Call_000_1776
    ld a, $10
    ld hl, $c266
    ld [hl], a
    ld l, $76
    ld [hl], a
    ld hl, $c20e
    ld de, $1e31
    ld b, $0a

jr_000_1dfa:
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    inc de
    push de
    ld de, $000e
    add hl, de
    pop de
    dec b
    jr nz, jr_000_1dfa

    ldh a, [$c4]
    cp $05
    jr nz, jr_000_1e0f

    ld a, $09

jr_000_1e0f:
    inc a
    ld b, a
    ld hl, $c200
    ld de, $0010
    xor a

jr_000_1e18:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_1e18

    ldh a, [$c4]
    add $0a
    ld [$dfe8], a
    ld a, $25
    ldh [$9e], a
    ld a, $1b
    ldh [$a6], a
    ld a, $23
    ldh [$e1], a
    ret


    inc e
    rrca
    ld e, $32
    jr nz, jr_000_1e4f

    ld h, $1d
    jr z, jr_000_1e66

jr_000_1e3b:
    ld a, $0a
    call Call_000_2673
    ret


    ldh a, [$a6]
    cp $14
    jr z, jr_000_1e3b

    and a
    ret nz

    ld hl, $c20e
    ld de, $0010

jr_000_1e4f:
    ld b, $0a

jr_000_1e51:
    push hl
    dec [hl]
    jr nz, jr_000_1e6a

    inc l
    ld a, [hl-]
    ld [hl], a
    ld a, l
    and $f0
    or $03
    ld l, a
    ld a, [hl]
    xor $01
    ld [hl], a
    cp $50
    jr z, jr_000_1e89

jr_000_1e66:
    cp $51
    jr z, jr_000_1e8f

jr_000_1e6a:
    pop hl
    add hl, de
    dec b
    jr nz, jr_000_1e51

    ld a, $0a
    call Call_000_2673
    ld a, [$dfe9]
    and a
    ret nz

    call Call_000_178a
    ldh a, [$c4]
    cp $05
    ld a, $26
    jr z, jr_000_1e86

    ld a, $05

jr_000_1e86:
    ldh [$e1], a
    ret


jr_000_1e89:
    dec l
    dec l
    ld [hl], $67
    jr jr_000_1e6a

jr_000_1e8f:
    dec l
    dec l
    ld [hl], $5d
    jr jr_000_1e6a

jr_000_1e95:
    xor a
    ld [$c0c6], a
    ld de, $c0c0
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    or l
    jp z, Jump_000_263a

    dec hl
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ld de, $0001
    ld hl, $c0c2
    push de
    call Call_000_0166
    ld de, $c0c4
    ld hl, $99a5
    call Call_000_2a36
    xor a
    ldh [$a6], a
    pop de
    ld hl, $c0a0
    call Call_000_0166
    ld de, $c0a2
    ld hl, $9a25
    call Call_000_2a3a
    ld a, $02
    ld [$dfe0], a
    ret


Call_000_1ed7:
    ld a, [$c0c6]
    and a
    ret z

    ld a, [$c0c5]
    cp $04
    jr z, jr_000_1e95

    ld de, $0040
    ld bc, $9823
    ld hl, $c0ac
    and a
    jr z, jr_000_1f12

    ld de, $0100
    ld bc, $9883
    ld hl, $c0b1
    cp $01
    jr z, jr_000_1f12

    ld de, $0300
    ld bc, $98e3
    ld hl, $c0b6
    cp $02
    jr z, jr_000_1f12

    ld de, $1200
    ld bc, $9943
    ld hl, $c0bb

jr_000_1f12:
    call Call_000_25d9
    ret


    ldh a, [$81]
    and a
    ret z

    ld a, $02
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld a, $04
    ld [$dfe8], a
    ldh a, [$c5]
    and a
    jr z, jr_000_1f37

    ld a, $3f
    ldh [$a6], a
    ld a, $1b
    ldh [$cc], a
    jr jr_000_1f6e

jr_000_1f37:
    ld a, $2f
    call Call_000_1fd7
    ld hl, $c843
    ld de, $293e
    ld c, $07
    call Call_000_1f7d
    ld hl, $c983
    ld de, $2976
    ld c, $06
    call Call_000_1f7d
    ldh a, [$c0]
    cp $37
    jr nz, jr_000_1f6c

    ld hl, $c0a2
    ld a, [hl]
    ld b, $58
    cp $20
    jr nc, jr_000_1f71

    inc b
    cp $15
    jr nc, jr_000_1f71

    inc b
    cp $10
    jr nc, jr_000_1f71

jr_000_1f6c:
    ld a, $04

jr_000_1f6e:
    ldh [$e1], a
    ret


jr_000_1f71:
    ld a, b
    ldh [$f3], a
    ld a, $90
    ldh [$a6], a
    ld a, $34
    ldh [$e1], a
    ret


Call_000_1f7d:
jr_000_1f7d:
    ld b, $08
    push hl

jr_000_1f80:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_1f80

    pop hl
    push de
    ld de, $0020
    add hl, de
    pop de
    dec c
    jr nz, jr_000_1f7d

    ret


Call_000_1f91:
    ldh a, [$c0]
    cp $37
    ret nz

    ldh a, [$e1]
    and a
    ret nz

    ldh a, [$e3]
    cp $05
    ret nz

    ld hl, $c0ac
    ld bc, $0005
    ld a, [hl]
    ld de, $0040
    and a
    jr nz, jr_000_1fc3

    add hl, bc
    ld a, [hl]
    ld de, $0100
    and a
    jr nz, jr_000_1fc3

    add hl, bc
    ld a, [hl]
    ld de, $0300
    and a
    jr nz, jr_000_1fc3

    add hl, bc
    ld de, $1200
    ld a, [hl]
    and a
    ret z

jr_000_1fc3:
    ld [hl], $00
    ldh a, [$a9]
    ld b, a
    inc b

jr_000_1fc9:
    push bc
    push de
    ld hl, $c0a0
    call Call_000_0166
    pop de
    pop bc
    dec b
    jr nz, jr_000_1fc9

    ret


Call_000_1fd7:
    push af
    ld a, $02
    ldh [$e3], a
    pop af

Call_000_1fdd:
    ld hl, $c802
    ld c, $12
    ld de, $0020

jr_000_1fe5:
    push hl
    ld b, $0a

jr_000_1fe8:
    ld [hl+], a
    dec b
    jr nz, jr_000_1fe8

    pop hl
    add hl, de
    dec c
    jr nz, jr_000_1fe5

    ret


Call_000_1ff2:
    ld hl, $cbc2
    ld de, $0016
    ld c, $02
    ld a, $2f

jr_000_1ffc:
    ld b, $0a

jr_000_1ffe:
    ld [hl+], a
    dec b
    jr nz, jr_000_1ffe

    add hl, de
    dec c
    jr nz, jr_000_1ffc

    ret


Call_000_2007:
    ld hl, $c200
    ld [hl], $00
    inc l
    ld [hl], $18
    inc l
    ld [hl], $3f
    inc l
    ld a, [$c213]
    ld [hl], a
    and $fc
    ld c, a
    ldh a, [$e4]
    and a
    jr nz, jr_000_2024

    ldh a, [$c5]
    and a
    jr z, jr_000_2041

jr_000_2024:
    ld h, $c3
    ldh a, [$b0]
    ld l, a
    ld e, [hl]
    inc hl
    ld a, h
    cp $c4
    jr nz, jr_000_2033

    ld hl, $c300

jr_000_2033:
    ld a, l
    ldh [$b0], a
    ldh a, [$d3]
    and a
    jr z, jr_000_2065

    or $80
    ldh [$d3], a
    jr jr_000_2065

jr_000_2041:
    ld h, $03

jr_000_2043:
    ldh a, [rDIV]
    ld b, a

jr_000_2046:
    xor a

jr_000_2047:
    dec b
    jr z, jr_000_2054

    inc a
    inc a
    inc a
    inc a
    cp $1c
    jr z, jr_000_2046

    jr jr_000_2047

jr_000_2054:
    ld d, a
    ldh a, [$ae]
    ld e, a
    dec h
    jr z, jr_000_2062

    or d
    or c
    and $fc
    cp c
    jr z, jr_000_2043

jr_000_2062:
    ld a, d
    ldh [$ae], a

jr_000_2065:
    ld a, e
    ld [$c213], a
    call Call_000_2696
    ldh a, [$9a]
    ldh [$99], a
    ret


jr_000_2071:
    ld a, [$c0c7]
    and a
    jr z, jr_000_2083

    ldh a, [$81]
    and $b0
    cp $80
    jr nz, jr_000_20a4

    xor a
    ld [$c0c7], a

jr_000_2083:
    ldh a, [$a7]
    and a
    jr nz, jr_000_20b1

    ldh a, [$98]
    and a
    jr nz, jr_000_20b1

    ldh a, [$e3]
    and a
    jr nz, jr_000_20b1

    ld a, $03
    ldh [$a7], a
    ld hl, $ffe5
    inc [hl]
    jr jr_000_20c2

Call_000_209c:
    ldh a, [$80]
    and $b0
    cp $80
    jr z, jr_000_2071

jr_000_20a4:
    ld hl, $ffe5
    ld [hl], $00
    ldh a, [$99]
    and a
    jr z, jr_000_20b5

    dec a
    ldh [$99], a

jr_000_20b1:
    call Call_000_2683
    ret


jr_000_20b5:
    ldh a, [$98]
    cp $03
    ret z

    ldh a, [$e3]
    and a
    ret nz

    ldh a, [$9a]
    ldh [$99], a

jr_000_20c2:
    ld hl, $c201
    ld a, [hl]
    ldh [$a0], a
    add $08
    ld [hl], a
    call Call_000_2683
    call Call_000_2573
    and a
    ret z

    ldh a, [$a0]
    ld hl, $c201
    ld [hl], a
    call Call_000_2683
    ld a, $01
    ldh [$98], a
    ld [$c0c7], a
    ldh a, [$e5]
    and a
    jr z, jr_000_2103

    ld c, a
    ldh a, [$c0]
    cp $37
    jr z, jr_000_2126

    ld de, $c0c0
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    ld b, $00
    dec c
    add hl, bc
    ld a, h
    ld [de], a
    ld a, l
    dec de
    ld [de], a

jr_000_2100:
    xor a
    ldh [$e5], a

jr_000_2103:
    ld a, [$c201]
    cp $18
    ret nz

    ld a, [$c202]
    cp $3f
    ret nz

    ld hl, $fffb
    ld a, [hl]
    cp $01
    jr nz, jr_000_2124

    call $7ff3
    ld a, $01
    ldh [$e1], a
    ld a, $02
    ld [$dff0], a
    ret


jr_000_2124:
    inc [hl]
    ret


jr_000_2126:
    xor a

jr_000_2127:
    dec c
    jr z, jr_000_212e

    inc a
    daa
    jr jr_000_2127

jr_000_212e:
    ld e, a
    ld d, $00
    ld hl, $c0a0
    call Call_000_0166
    ld a, $01
    ld [$c0ce], a
    jr jr_000_2100

Call_000_213e:
    ldh a, [$98]
    cp $02
    ret nz

    ld a, $02
    ld [$dff8], a
    xor a
    ldh [$a0], a
    ld de, $c0a3
    ld hl, $c842
    ld b, $10

jr_000_2153:
    ld c, $0a
    push hl

jr_000_2156:
    ld a, [hl+]
    cp $2f
    jp z, Jump_000_21d8

    dec c
    jr nz, jr_000_2156

    pop hl
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc de
    ldh a, [$a0]
    inc a
    ldh [$a0], a

jr_000_216b:
    push de
    ld de, $0020
    add hl, de
    pop de
    dec b
    jr nz, jr_000_2153

    ld a, $03
    ldh [$98], a
    dec a
    ldh [$a6], a
    ldh a, [$a0]
    and a
    ret z

    ld b, a
    ld hl, $ff9e
    ldh a, [$c0]
    cp $77
    jr z, jr_000_219b

    ld a, b
    add [hl]
    daa
    ld [hl+], a
    ld a, $00
    adc [hl]
    daa
    ld [hl], a
    jr nc, jr_000_21aa

    ld [hl], $99
    dec hl
    ld [hl], $99
    jr jr_000_21aa

jr_000_219b:
    ld a, [hl]
    or a
    sub b
    jr z, jr_000_21db

    jr c, jr_000_21db

    daa
    ld [hl], a
    and $f0
    cp $90
    jr z, jr_000_21db

jr_000_21aa:
    ld a, b
    ld c, $06
    ld hl, $c0ac
    ld b, $00
    cp $01
    jr z, jr_000_21cf

    ld hl, $c0b1
    ld b, $01
    cp $02
    jr z, jr_000_21cf

    ld hl, $c0b6
    ld b, $02
    cp $03
    jr z, jr_000_21cf

    ld hl, $c0bb
    ld b, $04
    ld c, $07

jr_000_21cf:
    inc [hl]
    ld a, b
    ldh [$dc], a
    ld a, c
    ld [$dfe0], a
    ret


Jump_000_21d8:
    pop hl
    jr jr_000_216b

jr_000_21db:
    xor a
    ldh [$9e], a
    jr jr_000_21aa

Call_000_21e0:
    ldh a, [$98]
    cp $03
    ret nz

    ldh a, [$a6]
    and a
    ret nz

    ld de, $c0a3
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_000_222e

    ld a, [de]
    and a
    jr z, jr_000_2248

jr_000_21f6:
    sub $30
    ld h, a
    inc de
    ld a, [de]
    ld l, a
    ldh a, [$9c]
    cp $06
    ld a, $8c
    jr nz, jr_000_2206

    ld a, $2f

jr_000_2206:
    ld c, $0a

jr_000_2208:
    ld [hl+], a
    dec c
    jr nz, jr_000_2208

    inc de
    ld a, [de]
    and a
    jr nz, jr_000_21f6

jr_000_2211:
    ldh a, [$9c]
    inc a
    ldh [$9c], a
    cp $07
    jr z, jr_000_221f

    ld a, $0a
    ldh [$a6], a
    ret


jr_000_221f:
    xor a
    ldh [$9c], a
    ld a, $0d
    ldh [$a6], a
    ld a, $01
    ldh [$e3], a

jr_000_222a:
    xor a
    ldh [$98], a
    ret


jr_000_222e:
    ld a, [de]
    ld h, a
    sub $30
    ld c, a
    inc de
    ld a, [de]
    ld l, a
    ld b, $0a

jr_000_2238:
    ld a, [hl]
    push hl
    ld h, c
    ld [hl], a
    pop hl
    inc hl
    dec b
    jr nz, jr_000_2238

    inc de
    ld a, [de]
    and a
    jr nz, jr_000_222e

    jr jr_000_2211

jr_000_2248:
    call Call_000_2007
    jr jr_000_222a

Call_000_224d:
    ldh a, [$a6]
    and a
    ret nz

    ldh a, [$e3]
    cp $01
    ret nz

    ld de, $c0a3
    ld a, [de]

jr_000_225a:
    ld h, a
    inc de
    ld a, [de]
    ld l, a
    push de
    push hl
    ld bc, $ffe0
    add hl, bc
    pop de

jr_000_2265:
    push hl
    ld b, $0a

jr_000_2268:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_2268

    pop hl
    push hl
    pop de
    ld bc, $ffe0
    add hl, bc
    ld a, h
    cp $c7
    jr nz, jr_000_2265

    pop de
    inc de
    ld a, [de]
    and a
    jr nz, jr_000_225a

    ld hl, $c802
    ld a, $2f
    ld b, $0a

jr_000_2287:
    ld [hl+], a
    dec b
    jr nz, jr_000_2287

    call Call_000_2293
    ld a, $02
    ldh [$e3], a
    ret


Call_000_2293:
    ld hl, $c0a3
    xor a
    ld b, $09

jr_000_2299:
    ld [hl+], a
    dec b
    jr nz, jr_000_2299

    ret


Call_000_229e:
    ldh a, [$e3]
    cp $02
    ret nz

    ld hl, $9a22
    ld de, $ca22
    call Call_000_24ac
    ret


Call_000_22ad:
    ldh a, [$e3]
    cp $03
    ret nz

    ld hl, $9a02
    ld de, $ca02
    call Call_000_24ac
    ret


Call_000_22bc:
    ldh a, [$e3]
    cp $04
    ret nz

    ld hl, $99e2
    ld de, $c9e2
    call Call_000_24ac
    ret


Call_000_22cb:
    ldh a, [$e3]
    cp $05
    ret nz

    ld hl, $99c2
    ld de, $c9c2
    call Call_000_24ac
    ret


Call_000_22da:
    ldh a, [$e3]
    cp $06
    ret nz

    ld hl, $99a2
    ld de, $c9a2
    call Call_000_24ac
    ret


Call_000_22e9:
    ldh a, [$e3]
    cp $07
    ret nz

    ld hl, $9982
    ld de, $c982
    call Call_000_24ac
    ret


Call_000_22f8:
    ldh a, [$e3]
    cp $08
    ret nz

    ld hl, $9962
    ld de, $c962
    call Call_000_24ac
    ldh a, [$c5]
    and a
    ldh a, [$e1]
    jr nz, jr_000_2315

    and a
    ret nz

jr_000_230f:
    ld a, $01
    ld [$dff8], a
    ret


jr_000_2315:
    cp $1a
    ret nz

    ldh a, [$d4]
    and a
    jr z, jr_000_230f

    ld a, $05
    ld [$dfe0], a
    ret


Call_000_2323:
    ldh a, [$e3]
    cp $09
    ret nz

    ld hl, $9942
    ld de, $c942
    call Call_000_24ac
    ret


Call_000_2332:
    ldh a, [$e3]
    cp $0a
    ret nz

    ld hl, $9922
    ld de, $c922
    call Call_000_24ac
    ret


Call_000_2341:
    ldh a, [$e3]
    cp $0b
    ret nz

    ld hl, $9902
    ld de, $c902
    call Call_000_24ac
    ret


Call_000_2350:
    ldh a, [$e3]
    cp $0c
    ret nz

    ld hl, $98e2
    ld de, $c8e2
    call Call_000_24ac
    ret


Call_000_235f:
    ldh a, [$e3]
    cp $0d
    ret nz

    ld hl, $98c2
    ld de, $c8c2
    call Call_000_24ac
    ret


Call_000_236e:
    ldh a, [$e3]
    cp $0e
    ret nz

    ld hl, $98a2
    ld de, $c8a2
    call Call_000_24ac
    ret


Call_000_237d:
    ldh a, [$e3]
    cp $0f
    ret nz

    ld hl, $9882
    ld de, $c882
    call Call_000_24ac
    ret


Call_000_238c:
    ldh a, [$e3]
    cp $10
    ret nz

    ld hl, $9862
    ld de, $c862
    call Call_000_24ac
    call Call_000_244b
    ret


Call_000_239e:
    ldh a, [$e3]
    cp $11
    ret nz

    ld hl, $9842
    ld de, $c842
    call Call_000_24ac
    ld hl, $9c6d
    call Call_000_243b
    ld a, $01
    ldh [$e0], a
    ret


Call_000_23b7:
    ldh a, [$e3]
    cp $12
    ret nz

    ld hl, $9822
    ld de, $c822
    call Call_000_24ac
    ld hl, $986d
    call Call_000_243b
    ret


Call_000_23cc:
    ldh a, [$e3]
    cp $13
    ret nz

    ld [$c0c7], a
    ld hl, $9802
    ld de, $c802
    call Call_000_24ac
    xor a
    ldh [$e3], a
    ldh a, [$c5]
    and a
    ldh a, [$e1]
    jr nz, jr_000_242f

    and a
    ret nz

jr_000_23e9:
    ld hl, $994e
    ld de, $ff9f
    ld c, $02
    ldh a, [$c0]
    cp $37
    jr z, jr_000_23ff

    ld hl, $9950
    ld de, $ff9e
    ld c, $01

jr_000_23ff:
    call Call_000_2a3c
    ldh a, [$c0]
    cp $37
    jr z, jr_000_242b

    ldh a, [$9e]
    and a
    jr nz, jr_000_242b

    ld a, $64
    ldh [$a6], a
    ld a, $02
    ld [$dfe8], a
    ldh a, [$c5]
    and a
    jr z, jr_000_241e

    ldh [$d5], a
    ret


jr_000_241e:
    ldh a, [$c3]
    cp $09
    ld a, $05
    jr nz, jr_000_2428

    ld a, $22

jr_000_2428:
    ldh [$e1], a
    ret


jr_000_242b:
    call Call_000_2007
    ret


jr_000_242f:
    cp $1a
    ret nz

    ldh a, [$d4]
    and a
    jr z, jr_000_23e9

    xor a
    ldh [$d4], a
    ret


Call_000_243b:
    ldh a, [$e1]
    and a
    ret nz

    ldh a, [$c0]
    cp $37
    ret nz

    ld de, $c0a2
    call Call_000_2a36
    ret


Call_000_244b:
    ldh a, [$e1]
    and a
    ret nz

    ldh a, [$c0]
    cp $37
    ret nz

    ld hl, $ffa9
    ld a, [hl]
    cp $14
    ret z

    call Call_000_249d
    ldh a, [$9f]
    ld d, a
    and $f0
    ret nz

    ld a, d
    and $0f
    swap a
    ld d, a
    ldh a, [$9e]
    and $f0
    swap a
    or d
    cp b
    ret c

    ret z

    inc [hl]
    call Call_000_249d
    and $0f
    ld c, a
    ld hl, $98f1

jr_000_247e:
    ld [hl], c
    ld h, $9c
    ld [hl], c
    ld a, b
    and $f0
    jr z, jr_000_2494

    swap a
    ld c, a
    ld a, l
    cp $f0
    jr z, jr_000_2494

    ld hl, $98f0
    jr jr_000_247e

jr_000_2494:
    ld a, $08
    ld [$dfe0], a
    call Call_000_1ae8
    ret


Call_000_249d:
    ld a, [hl]
    ld b, a
    and a
    ret z

    xor a

jr_000_24a2:
    or a
    inc a
    daa
    dec b
    jr z, jr_000_24aa

    jr jr_000_24a2

jr_000_24aa:
    ld b, a
    ret


Call_000_24ac:
    ld b, $0a

jr_000_24ae:
    ld a, [de]
    ld [hl], a
    inc l
    inc e
    dec b
    jr nz, jr_000_24ae

    ldh a, [$e3]
    inc a
    ldh [$e3], a
    ret


Call_000_24bb:
    ld hl, $c200
    ld a, [hl]
    cp $80
    ret z

    ld l, $03
    ld a, [hl]
    ldh [$a0], a
    ldh a, [$81]
    ld b, a
    bit 1, b
    jr nz, jr_000_24e0

    bit 0, b
    jr z, jr_000_2509

    ld a, [hl]
    and $03
    jr z, jr_000_24da

    dec [hl]
    jr jr_000_24ee

jr_000_24da:
    ld a, [hl]
    or $03
    ld [hl], a
    jr jr_000_24ee

jr_000_24e0:
    ld a, [hl]
    and $03
    cp $03
    jr z, jr_000_24ea

    inc [hl]
    jr jr_000_24ee

jr_000_24ea:
    ld a, [hl]
    and $fc
    ld [hl], a

jr_000_24ee:
    ld a, $03
    ld [$dfe0], a
    call Call_000_2683
    call Call_000_2573
    and a
    jr z, jr_000_2509

    xor a
    ld [$dfe0], a
    ld hl, $c203
    ldh a, [$a0]
    ld [hl], a
    call Call_000_2683

jr_000_2509:
    ld hl, $c202
    ldh a, [$81]
    ld b, a
    ldh a, [$80]
    ld c, a
    ld a, [hl]
    ldh [$a0], a
    bit 4, b
    ld a, $17
    jr nz, jr_000_2527

    bit 4, c
    jr z, jr_000_254c

    ldh a, [$aa]
    dec a
    ldh [$aa], a
    ret nz

    ld a, $09

jr_000_2527:
    ldh [$aa], a
    ld a, [hl]
    add $08
    ld [hl], a
    call Call_000_2683
    ld a, $04
    ld [$dfe0], a
    call Call_000_2573
    and a
    ret z

jr_000_253a:
    ld hl, $c202
    xor a
    ld [$dfe0], a
    ldh a, [$a0]
    ld [hl], a
    call Call_000_2683
    ld a, $01

jr_000_2549:
    ldh [$aa], a
    ret


jr_000_254c:
    bit 5, b
    ld a, $17
    jr nz, jr_000_255e

    bit 5, c
    jr z, jr_000_2549

    ldh a, [$aa]
    dec a
    ldh [$aa], a
    ret nz

    ld a, $09

jr_000_255e:
    ldh [$aa], a
    ld a, [hl]
    sub $08
    ld [hl], a
    ld a, $04
    ld [$dfe0], a
    call Call_000_2683
    call Call_000_2573
    and a
    ret z

    jr jr_000_253a

Call_000_2573:
    ld hl, $c010
    ld b, $04

jr_000_2578:
    ld a, [hl+]
    ldh [$b2], a
    ld a, [hl+]
    and a
    jr z, jr_000_2596

    ldh [$b3], a
    push hl
    push bc
    call Call_000_29e3
    ld a, h
    add $30
    ld h, a
    ld a, [hl]
    cp $2f
    jr nz, jr_000_259a

    pop bc
    pop hl
    inc l
    inc l
    dec b
    jr nz, jr_000_2578

jr_000_2596:
    xor a
    ldh [$9b], a
    ret


jr_000_259a:
    pop bc
    pop hl
    ld a, $01
    ldh [$9b], a
    ret


Call_000_25a1:
    ldh a, [$98]
    cp $01
    ret nz

    ld hl, $c010
    ld b, $04

jr_000_25ab:
    ld a, [hl+]
    ldh [$b2], a
    ld a, [hl+]
    and a
    jr z, jr_000_25cf

    ldh [$b3], a
    push hl
    push bc
    call Call_000_29e3
    push hl
    pop de
    pop bc
    pop hl

jr_000_25bd:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_25bd

    ld a, [hl]
    ld [de], a
    ld a, d
    add $30
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc l
    dec b
    jr nz, jr_000_25ab

jr_000_25cf:
    ld a, $02
    ldh [$98], a
    ld hl, $c200
    ld [hl], $80
    ret


Call_000_25d9:
    ld a, [$c0c6]
    cp $02
    jr z, jr_000_2626

    push de
    ld a, [hl]
    or a
    jr z, jr_000_2639

    dec a
    ld [hl+], a
    ld a, [hl]
    inc a
    daa
    ld [hl], a
    and $0f
    ld [bc], a
    dec c
    ld a, [hl+]
    swap a
    and $0f
    jr z, jr_000_25f7

    ld [bc], a

jr_000_25f7:
    push bc
    ldh a, [$c3]
    ld b, a
    inc b

jr_000_25fc:
    push hl
    call Call_000_0166
    pop hl
    dec b
    jr nz, jr_000_25fc

    pop bc
    inc hl
    inc hl
    push hl
    ld hl, $0023
    add hl, bc
    pop de
    call Call_000_2a3a
    pop de
    ldh a, [$c3]
    ld b, a
    inc b
    ld hl, $c0a0

jr_000_2618:
    push hl
    call Call_000_0166
    pop hl
    dec b
    jr nz, jr_000_2618

    ld a, $02
    ld [$c0c6], a
    ret


jr_000_2626:
    ld de, $c0a2
    ld hl, $9a25
    call Call_000_2a3a
    ld a, $02
    ld [$dfe0], a
    xor a
    ld [$c0c6], a
    ret


jr_000_2639:
    pop de

Jump_000_263a:
    ld a, $21
    ldh [$a6], a
    xor a
    ld [$c0c6], a
    ld a, [$c0c5]
    inc a
    ld [$c0c5], a
    cp $05
    ret nz

    ld a, $04
    ldh [$e1], a
    ret


Call_000_2651:
    ld hl, $c0ac
    ld b, $1b
    xor a

jr_000_2657:
    ld [hl+], a
    dec b
    jr nz, jr_000_2657

    ld hl, $c0a0
    ld b, $03

jr_000_2660:
    ld [hl+], a
    dec b
    jr nz, jr_000_2660

    ret


    ld a, [hl]
    and $f0
    swap a
    ld [de], a
    ld a, [hl]
    and $0f
    inc e
    ld [de], a
    ret


Call_000_2671:
    ld a, $02

Call_000_2673:
    ldh [$8f], a
    xor a
    ldh [$8e], a
    ld a, $c0
    ldh [$8d], a
    ld hl, $c200
    call Call_000_2a89
    ret


Call_000_2683:
    ld a, $01
    ldh [$8f], a
    ld a, $10
    ldh [$8e], a
    ld a, $c0
    ldh [$8d], a
    ld hl, $c200
    call Call_000_2a89
    ret


Call_000_2696:
    ld a, $01
    ldh [$8f], a
    ld a, $20
    ldh [$8e], a
    ld a, $c0
    ldh [$8d], a
    ld hl, $c210
    call Call_000_2a89
    ret


Call_000_26a9:
    ld b, $20
    ld a, $8e
    ld de, $0020

jr_000_26b0:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_26b0

    ret


Call_000_26b6:
jr_000_26b6:
    ld a, [de]
    cp $ff
    ret z

    ld [hl+], a
    inc de
    jr jr_000_26b6

Jump_000_26be:
    reti

; db?
    nop
    jr jr_000_2701

    nop
    add b
    nop
    nop
    rst $38
    nop
    add b
    adc a
    nop
    add b
    nop
    nop
    rst $38
    nop
    ld [hl], b
    scf
    inc e
    nop
    nop
    nop
    jr c, @+$39

    inc e
    nop
    nop
    nop
    ld b, b
    inc [hl]
    jr nz, jr_000_26e0

jr_000_26e0:
    nop
    nop
    ld b, b
    inc e
    jr nz, jr_000_26e6

jr_000_26e6:
    nop
    nop
    ld b, b
    ld [hl], h
    jr nz, jr_000_26ec

jr_000_26ec:
    nop
    nop
    ld b, b
    ld l, b
    ld hl, $0000
    nop
    ld a, b
    ld l, b
    ld hl, $0000
    nop
    ld h, b
    ld h, b
    ld a, [hl+]
    add b
    nop
    nop
    ld h, b

jr_000_2701:
    ld [hl], d
    ld a, [hl+]
    add b
    jr nz, jr_000_2706

jr_000_2706:
    ld l, b
    jr c, jr_000_2747

    add b
    nop
    nop
    ld h, b
    ld h, b
    ld [hl], $80
    nop
    nop
    ld h, b
    ld [hl], d
    ld [hl], $80
    jr nz, jr_000_2718

jr_000_2718:
    ld l, b
    jr c, jr_000_274d

    add b
    nop
    nop
    ld h, b
    ld h, b
    ld l, $80
    nop
    nop
    ld l, b
    jr c, jr_000_2763

    add b
    nop
    nop
    ld h, b
    ld h, b
    ld a, [hl-]
    add b
    nop
    nop
    ld l, b
    jr c, jr_000_2763

    add b
    nop
    add b
    ccf
    ld b, b
    ld b, h
    nop
    nop
    add b
    ccf
    jr nz, jr_000_2789

    nop
    nop
    add b
    ccf
    jr nc, jr_000_278b

    nop
    nop

jr_000_2747:
    add b
    ld [hl], a
    jr nz, jr_000_2793

Jump_000_274b:
    nop
    nop

jr_000_274d:
    add b
    add a
    ld c, b
    ld c, h
    nop
    nop
    add b
    add a
    ld e, b
    ld c, [hl]
    nop
    nop
    add b
    ld h, a
    ld c, l
    ld d, b
    nop
    nop
    add b
    ld h, a
    ld e, l
    ld d, d

jr_000_2763:
    nop
    nop
    add b
    adc a
    adc b
    ld d, h
    nop
    nop
    add b
    adc a
    sbc b
    ld d, l
    nop
    nop
    nop
    ld e, a
    ld d, a
    inc l
    nop
    nop
    add b
    add b
    ld d, b
    inc [hl]
    nop
    nop
    add b
    add b
    ld h, b
    inc [hl]
    nop
    jr nz, jr_000_2784

jr_000_2784:
    ld l, a
    ld d, a
    ld e, b
    nop
    nop

jr_000_2789:
    add b
    add b

jr_000_278b:
    ld d, l
    inc [hl]
    nop
    nop
    add b
    add b
    ld e, e
    inc [hl]

jr_000_2793:
    nop
    jr nz, @+$23

    rst $38
    sbc e

Call_000_2798:
    ld bc, $0400

jr_000_279b:
    ld a, $2f
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_279b

    ret

; Move a block of memory (Same as z80 LDIR)
;  HL = Start Addr
;  DE = End Addr
;  BC = Length of data
Call_000_27a4:
jr_000_27a4:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_27a4

    ret


Call_000_27ad:
    call Call_000_27c3
    ld bc, $00a0
    call Call_000_27a4
    ld hl, $323f
    ld de, $8300
    ld bc, $0d00
    call Call_000_27a4
    ret

; Copy characters with only two colors
Call_000_27c3:
    ld hl, $415f
    ld bc, $0138
    ld de, $8000

jr_000_27cc:
    ld a, [hl+]
    ld [de], a
    inc de
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_27cc

    ret

; Copy character set to character ram
Call_000_27d7:
    call Call_000_27c3
    ld bc, $0da0
    call Call_000_27a4
    ret

; This instruction is not used.
    ld bc, $1000

Call_000_27e4:
    ld de, $8000
    call Call_000_27a4
    ret

; Copy a screen from DE to screen ram
Call_000_27eb:
    ld hl, $9800

Call_000_27ee:
    ld b, $12

Call_000_27f0:
jr_000_27f0:
    push hl
    ld c, $14

jr_000_27f3:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_000_27f3

    pop hl
    push de
    ld de, $0020
    add hl, de
    pop de
    dec b
    jr nz, jr_000_27f0

    ret


Call_000_2804:
jr_000_2804:
    ld b, $0a
    push hl

jr_000_2807:
    ld a, [de]
    cp $ff
    jr z, jr_000_281a

    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_2807

    pop hl
    push de
    ld de, $0020
    add hl, de
    pop de
    jr jr_000_2804

jr_000_281a:
    pop hl
    ld a, $02
    ldh [$e3], a
    ret

; Prepare for screen memory update by halting LCD controller
Call_000_2820:
    ldh a, [rIE]
    ldh [$a1], a
    res 0, a
    ldh [rIE], a

jr_000_2828:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_2828

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ldh a, [$a1]
    ldh [rIE], a
    ret

; db?
    cpl
    cpl
    ld de, $1d12
    cpl
    cpl
    cpl
    cpl
    cpl
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    cpl
    cpl
    cpl
    inc e
    dec e
    ld a, [bc]
    dec de
    dec e
    cpl
    cpl
    cpl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    cpl
    cpl
    cpl
    cpl
    dec e
    jr jr_000_288e

    cpl
    cpl
    cpl
    cpl
    cpl
    add hl, hl
    add hl, hl
    cpl
    cpl
    cpl
    inc c
    jr jr_000_2883

    dec e
    ld [de], a
    rla
    ld e, $0e
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    cpl
    db $10
    ld a, [bc]
    ld d, $0e
    cpl
    cpl
    cpl
    cpl

jr_000_2883:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    cpl
    inc e
    ld [de], a
    rla
    db $10
    dec d

jr_000_288e:
    ld c, $2f
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    ld h, $2f
    inc b
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
    nop
    cpl
    dec c
    jr jr_000_28c8

    dec bc
    dec d
    ld c, $2f
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    ld h, $2f
    ld bc, $0000
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
    nop
    cpl
    dec e
    dec de
    ld [de], a

jr_000_28c8:
    add hl, de
    dec d
    ld c, $2f
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    ld h, $2f
    inc bc
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
    nop
    cpl
    dec e
    ld c, $1d
    dec de
    ld [de], a
    inc e
    cpl
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    ld h, $2f
    ld bc, $0002
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
    nop
    cpl
    dec c
    dec de
    jr jr_000_291e

    inc e
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

jr_000_291e:
    cpl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    dec e
    ld de, $1c12
    cpl
    inc e
    dec e
    ld a, [bc]
    db $10
    ld c, $2f
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
    rst $38
    ld h, c
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, e
    ld h, h
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld h, l
    ld h, h
    cpl
    db $10
    ld a, [bc]
    ld d, $0e
    cpl
    ld h, l
    ld h, h
    cpl
    xor l
    xor l
    xor l
    xor l
    cpl
    ld h, l
    ld h, h
    cpl
    jr jr_000_2981

    ld c, $1b
    cpl
    ld h, l
    ld h, h
    cpl
    xor l
    xor l
    xor l
    xor l
    cpl
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    add hl, de
    dec d
    ld c, $0a
    inc e
    ld c, $2f
    cpl
    add hl, hl
    add hl, hl
    add hl, hl

jr_000_2981:
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    cpl
    cpl
    dec e
    dec de
    ld [hl+], a
    cpl
    cpl
    cpl
    cpl
    cpl
    add hl, hl
    add hl, hl
    add hl, hl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, [bc]
    db $10
    ld a, [bc]
    ld [de], a
    rla
    daa
    cpl
    cpl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    cpl

; Read buttons & return value at ff81
;  $80 - Start   $8 - Down
;  $40 - Select  $4 - Up
;  $20 - B       $2 - Left
;  $10 - A       $1 - Right
Call_000_29a6:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
; debounce keys to minimize errors
    ld c, a
    ldh a, [$80]
    xor c
    and c
    ldh [$81], a
    ld a, c
    ldh [$80], a
    ld a, $30
    ldh [rP1], a
    ret


Call_000_29e3:
    ldh a, [$b2]
    sub $10
    srl a
    srl a
    srl a
    ld de, $0000
    ld e, a
    ld hl, $9800
    ld b, $20

jr_000_29f6:
    add hl, de
    dec b
    jr nz, jr_000_29f6

    ldh a, [$b3]
    sub $08
    srl a
    srl a
    srl a
    ld de, $0000
    ld e, a
    add hl, de
    ld a, h
    ldh [$b5], a
    ld a, l
    ldh [$b4], a
    ret

; This routine is not used.
    ldh a, [$b5]
    ld d, a
    ldh a, [$b4]
    ld e, a
    ld b, $04

jr_000_2a18:
    rr d
    rr e
    dec b
    jr nz, jr_000_2a18

    ld a, e
    sub $84
    and $fe
    rlca
    rlca
    add $08
    ldh [$b2], a
    ldh a, [$b4]
    and $1f
    rla
    rla
    rla
    add $08
    ldh [$b3], a
    ret


Call_000_2a36:
    ldh a, [$e0]
    and a
    ret z

Call_000_2a3a:
    ld c, $03

Call_000_2a3c:
    xor a
    ldh [$e0], a

jr_000_2a3f:
    ld a, [de]
    ld b, a
    swap a
    and $0f
    jr nz, jr_000_2a6f

    ldh a, [$e0]
    and a
    ld a, $00
    jr nz, jr_000_2a50

    ld a, $2f

jr_000_2a50:
    ld [hl+], a
    ld a, b
    and $0f
    jr nz, jr_000_2a77

    ldh a, [$e0]
    and a
    ld a, $00
    jr nz, jr_000_2a66

    ld a, $01
    cp c
    ld a, $00
    jr z, jr_000_2a66

    ld a, $2f

jr_000_2a66:
    ld [hl+], a
    dec e
    dec c
    jr nz, jr_000_2a3f

    xor a
    ldh [$e0], a
    ret


jr_000_2a6f:
    push af
    ld a, $01
    ldh [$e0], a
    pop af
    jr jr_000_2a50

jr_000_2a77:
    push af
    ld a, $01
    ldh [$e0], a
    pop af
    jr jr_000_2a66

; Initiate DMA transfer from c000 to fe00
    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_2a85:
    dec a
    jr nz, jr_000_2a85

    ret


Call_000_2a89:
jr_000_2a89:
    ld a, h
    ldh [$96], a
    ld a, l
    ldh [$97], a
    ld a, [hl]
    and a
    jr z, jr_000_2ab0

    cp $80
    jr z, jr_000_2aae

jr_000_2a97:
    ldh a, [$96]
    ld h, a
    ldh a, [$97]
    ld l, a
    ld de, $0010
    add hl, de
    ldh a, [$8f]
    dec a
    ldh [$8f], a
    ret z

    jr jr_000_2a89

jr_000_2aa9:
    xor a
    ldh [$95], a
    jr jr_000_2a97

jr_000_2aae:
    ldh [$95], a

jr_000_2ab0:
    ld b, $07
    ld de, $ff86

jr_000_2ab5:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_2ab5

    ldh a, [$89]
    ld hl, $2b64
    rlca
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    ld a, [de]
    ldh [$90], a
    inc de
    ld a, [de]
    ldh [$91], a
    ld e, [hl]
    inc hl
    ld d, [hl]

Jump_000_2ad8:
jr_000_2ad8:
    inc hl
    ldh a, [$8c]
    ldh [$94], a
    ld a, [hl]
    cp $ff
    jr z, jr_000_2aa9

    cp $fd
    jr nz, jr_000_2af4

    ldh a, [$8c]
    xor $20
    ldh [$94], a
    inc hl
    ld a, [hl]
    jr jr_000_2af8

jr_000_2af0:
    inc de
    inc de
    jr jr_000_2ad8

jr_000_2af4:
    cp $fe
    jr z, jr_000_2af0

jr_000_2af8:
    ldh [$89], a
    ldh a, [$87]
    ld b, a
    ld a, [de]
    ld c, a
    ldh a, [$8b]
    bit 6, a
    jr nz, jr_000_2b0b

    ldh a, [$90]
    add b
    adc c
    jr jr_000_2b15

jr_000_2b0b:
    ld a, b
    push af
    ldh a, [$90]
    ld b, a
    pop af
    sub b
    sbc c
    sbc $08

jr_000_2b15:
    ldh [$93], a
    ldh a, [$88]
    ld b, a
    inc de
    ld a, [de]
    inc de
    ld c, a
    ldh a, [$8b]
    bit 5, a
    jr nz, jr_000_2b2a

    ldh a, [$91]
    add b
    adc c
    jr jr_000_2b34

jr_000_2b2a:
    ld a, b
    push af
    ldh a, [$91]
    ld b, a
    pop af
    sub b
    sbc c
    sbc $08

jr_000_2b34:
    ldh [$92], a
    push hl
    ldh a, [$8d]
    ld h, a
    ldh a, [$8e]
    ld l, a
    ldh a, [$95]
    and a
    jr z, jr_000_2b46

    ld a, $ff
    jr jr_000_2b48

jr_000_2b46:
    ldh a, [$93]

jr_000_2b48:
    ld [hl+], a
    ldh a, [$92]
    ld [hl+], a
    ldh a, [$89]
    ld [hl+], a
    ldh a, [$94]
    ld b, a
    ldh a, [$8b]
    or b
    ld b, a
    ldh a, [$8a]
    or b
    ld [hl+], a
    ld a, h
    ldh [$8d], a
    ld a, l
    ldh [$8e], a
    pop hl
    jp Jump_000_2ad8

; .dw?
    jr nz, jr_000_2b92

    inc h
    inc l
    jr z, jr_000_2b96

    inc l
    inc l
    jr nc, jr_000_2b9a

    inc [hl]
    inc l
    jr c, jr_000_2b9e

    inc a
    inc l
    ld b, b
    inc l
    ld b, h
    inc l
    ld c, b
    inc l
    ld c, h
    inc l
    ld d, b
    inc l
    ld d, h
    inc l
    ld e, b
    inc l
    ld e, h
    inc l
    ld h, b
    inc l
    ld h, h
    inc l
    ld l, b
    inc l
    ld l, h

jr_000_2b8b:
    inc l
    ld [hl], b
    inc l
    ld [hl], h
    inc l
    ld a, b
    inc l

jr_000_2b92:
    ld a, h
    inc l
    add b
    inc l

jr_000_2b96:
    add h
    inc l
    adc b
    inc l

jr_000_2b9a:
    adc h
    inc l
    sub b
    inc l

jr_000_2b9e:
    sub h
    inc l
    sbc b
    inc l
    sbc h
    inc l
    and b
    inc l
    and h
    inc l
    xor b
    inc l
    xor h
    inc l
    or b
    inc l
    or h
    inc l
    cp b
    inc l
    cp h
    inc l
    ret nz

    inc l
    call nz, $c82c

jr_000_2bb9:
    inc l
    call z, $c72c
    jr nc, jr_000_2b8b

    inc l
    ret nc

    inc l
    call nc, $d82c
    inc l
    call c, $e02c

jr_000_2bc9:
    inc l
    db $e4
    inc l
    ld [$ee30], a
    jr nc, jr_000_2bb9

    inc l
    db $ec
    inc l
    ld a, [c]
    jr nc, @-$08

    jr nc, jr_000_2bc9

    inc l
    db $f4
    inc l
    ld hl, sp+$2c
    db $fc
    inc l
    nop
    dec l
    inc b
    dec l
    ld a, [$fe30]
    jr nc, jr_000_2bed

    dec l
    ld [$082d], sp

jr_000_2bed:
    dec l
    inc c
    dec l
    db $10
    dec l
    inc d
    dec l
    jr jr_000_2c23

    inc e
    dec l
    jr nz, jr_000_2c27

    inc h
    dec l
    jr z, jr_000_2c2b

    inc l
    dec l
    jr nc, jr_000_2c2f

    inc [hl]
    dec l
    jr c, jr_000_2c33

    inc a
    dec l
    ld b, b
    dec l
    ld b, h
    dec l
    ld c, b
    dec l
    ld c, h
    dec l
    ld d, b
    dec l
    ld d, h
    dec l
    ld a, [bc]
    ld sp, $310e
    ld [de], a
    ld sp, $3112
    ld [bc], a
    ld sp, $3106
    ld e, b
    dec l
    rst $28

jr_000_2c23:
    ldh a, [rBCPS]
    dec l
    rst $28

jr_000_2c27:
    ldh a, [$7a]
    dec l
    rst $28

jr_000_2c2b:
    ldh a, [$89]
    dec l
    rst $28

jr_000_2c2f:
    ldh a, [$9a]
    dec l
    rst $28

jr_000_2c33:
    ldh a, [$ac]
    dec l
    rst $28
    ldh a, [$bd]
    dec l
    rst $28
    ldh a, [$cb]
    dec l
    rst $28
    ldh a, [$dc]
    dec l
    rst $28
    ldh a, [$eb]
    dec l
    rst $28
    ldh a, [$fc]
    dec l
    rst $28
    ldh a, [$0b]
    ld l, $ef
    ldh a, [rNR32]
    ld l, $ef
    ldh a, [$2e]
    ld l, $ef
    ldh a, [rLCDC]
    ld l, $ef
    ldh a, [rHDMA2]
    ld l, $ef
    ldh a, [$64]
    ld l, $ef
    ldh a, [rPCM12]
    ld l, $ef
    ldh a, [$86]
    ld l, $ef
    ldh a, [$98]
    ld l, $ef
    ldh a, [$a8]
    ld l, $ef
    ldh a, [$b9]
    ld l, $ef
    ldh a, [$ca]
    ld l, $ef
    ldh a, [$db]
    ld l, $ef
    ldh a, [$0b]
    cpl
    rst $28
    ldh a, [rNR32]
    cpl
    rst $28
    ldh a, [$ec]
    ld l, $ef
    ldh a, [$fa]
    ld l, $ef
    ldh a, [$2d]
    cpl
    nop
    add sp, $36
    cpl
    nop
    add sp, $3f
    cpl
    nop
    add sp, $48
    cpl
    nop
    add sp, $51
    cpl
    nop
    nop
    ld d, l
    cpl
    nop
    nop
    ld e, c
    cpl
    nop
    nop
    ld e, l
    cpl
    nop
    nop
    ld h, c
    cpl
    nop
    nop
    ld h, l
    cpl
    nop
    nop
    ld l, c
    cpl
    nop
    nop
    ld l, l
    cpl
    nop
    nop
    ld [hl], c
    cpl
    nop
    nop
    ld [hl], l
    cpl
    nop
    nop
    ld a, c
    cpl
    ldh a, [$f8]
    add h
    cpl
    ldh a, [$f8]
    adc a
    cpl
    ldh a, [$f0]
    and e
    cpl
    ldh a, [$f0]
    cp b
    cpl
    ld hl, sp-$08
    pop bc
    cpl
    ld hl, sp-$08
    jp z, $f82f

    ld hl, sp-$2f
    cpl
    ld hl, sp-$08
    ret c

    cpl
    ldh a, [$f8]
    db $e3
    cpl
    ldh a, [$f8]
    xor $2f
    ldh a, [$f0]
    inc bc
    jr nc, @-$0e

jr_000_2cf7:
    ldh a, [rNR24]
    jr nc, @-$06

jr_000_2cfb:
    ld hl, sp+$22
    jr nc, jr_000_2cf7

jr_000_2cff:
    ld hl, sp+$2b
    jr nc, jr_000_2cfb

jr_000_2d03:
    ld hl, sp+$32
    jr nc, jr_000_2cff

jr_000_2d07:
    ld hl, sp+$39
    jr nc, jr_000_2d03

jr_000_2d0b:
    ld hl, sp+$40
    jr nc, jr_000_2d07

jr_000_2d0f:
    ld hl, sp+$47
    jr nc, jr_000_2d0b

jr_000_2d13:
    ld hl, sp+$4e
    jr nc, jr_000_2d0f

jr_000_2d17:
    ld hl, sp+$55
    jr nc, jr_000_2d13

jr_000_2d1b:
    ld hl, sp+$5c
    jr nc, jr_000_2d17

jr_000_2d1f:
    ld hl, sp+$67
    jr nc, jr_000_2d1b

jr_000_2d23:
    ld hl, sp+$6e
    jr nc, jr_000_2d1f

jr_000_2d27:
    ld hl, sp+$75
    jr nc, jr_000_2d23

jr_000_2d2b:
    ld hl, sp+$7c
    jr nc, jr_000_2d27

jr_000_2d2f:
    ld hl, sp-$7d
    jr nc, jr_000_2d2b

jr_000_2d33:
    ld hl, sp-$74
    jr nc, jr_000_2d2f

jr_000_2d37:
    ld hl, sp-$6b
    jr nc, jr_000_2d33

jr_000_2d3b:
    ld hl, sp-$62
    jr nc, jr_000_2d37

jr_000_2d3f:
    ld hl, sp-$59
    jr nc, jr_000_2d3b

jr_000_2d43:
    ld hl, sp-$50
    jr nc, jr_000_2d3f

jr_000_2d47:
    ld hl, sp-$47
    jr nc, jr_000_2d43

    ld hl, sp-$40
    jr nc, jr_000_2d47

    ld hl, sp+$46
    ld sp, $f0f0
    ld e, l
    ld sp, $f8f8
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    add h
    add h
    add h
    cp $84
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $84
    cp $fe
    cp $84
    cp $fe
    cp $84
    add h
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    add h
    cp $84
    add h
    add h
    cp $ff
    xor c
    ld sp, $fefe
    cp $fe
    add h
    add h
    cp $fe
    cp $84
    cp $fe
    cp $84
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    add c
    add c
    add c
    cp $fe
    cp $81
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $81
    add c
    cp $fe
    add c
    cp $fe
    cp $81
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    add c
    cp $fe
    cp $81
    add c
    add c
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $81
    cp $fe
    cp $81
    cp $fe
    add c
    add c
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    adc d
    adc e
    adc e
    adc a
    rst $38
    xor c
    ld sp, $80fe
    cp $fe
    cp $88
    cp $fe
    cp $88
    cp $fe
    cp $89
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    adc d
    adc e
    adc e
    adc a
    rst $38
    xor c
    ld sp, $80fe
    cp $fe
    cp $88
    cp $fe
    cp $88
    cp $fe
    cp $89
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    cp $83
    add e
    cp $fe
    add e
    add e
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    cp $83
    add e
    cp $fe
    add e
    add e
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    cp $83
    add e
    cp $fe
    add e
    add e
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    cp $83
    add e
    cp $fe
    add e
    add e
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    add d
    add d
    cp $fe
    cp $82
    add d
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $82
    cp $fe
    add d
    add d
    cp $fe
    add d
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    add d
    add d
    cp $fe
    cp $82
    add d
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $82
    cp $fe
    add d
    add d
    cp $fe
    add d
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    cp $86
    add [hl]
    cp $86
    add [hl]
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    add [hl]
    cp $fe
    cp $86
    add [hl]
    cp $fe
    cp $86
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    cp $86
    add [hl]
    cp $86
    add [hl]
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    add [hl]
    cp $fe
    cp $86
    add [hl]
    cp $fe
    cp $86
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $85
    cp $fe
    add l
    add l
    add l
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $85
    cp $fe
    add l
    add l
    cp $fe
    cp $85
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $fe
    cp $fe
    add l
    add l
    add l
    cp $fe
    add l
    rst $38
    xor c
    ld sp, $fefe
    cp $fe
    cp $85
    cp $fe
    cp $85
    add l
    cp $fe
    add l
    rst $38
    ret


    ld sp, $250a
    dec e
    ld [hl+], a
    add hl, de
    ld c, $ff
    ret


    ld sp, $250b
    dec e
    ld [hl+], a
    add hl, de
    ld c, $ff
    ret


    ld sp, $250c
    dec e
    ld [hl+], a
    add hl, de
    ld c, $ff
    ret


    ld sp, $182f
    rrca
    rrca
    cpl
    cpl
    rst $38
    ret


    ld sp, $ff00
    ret


    ld sp, $ff01
    ret


    ld sp, $ff02
    ret


    ld sp, $ff03
    ret


    ld sp, $ff04
    ret


    ld sp, $ff05
    ret


    ld sp, $ff06
    ret


    ld sp, $ff07
    ret


    ld sp, $ff08
    ret


    ld sp, $ff09
    reti


    ld sp, $012f
    cpl
    ld de, $2120
    jr nc, jr_000_2fb4

    rst $38
    reti


    ld sp, $032f
    ld [de], a
    inc de
    ld [hl+], a
    inc hl
    ld [hl-], a
    inc sp
    rst $38
    xor c
    ld sp, $052f
    db $fd
    dec b
    cpl
    cpl
    dec d
    inc b
    rla
    inc h
    dec h
    ld h, $27
    inc [hl]
    dec [hl]
    ld [hl], $2f
    rst $38
    xor c
    ld sp, $3708
    db $fd
    scf
    db $fd
    ld [$1918], sp
    inc d
    dec de
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    ld h, b

jr_000_2fb4:
    ld [hl], b
    ld [hl], $2f
    rst $38
    reti


    ld sp, $fdb9
    cp c
    cp d
    db $fd
    cp d
    rst $38
    reti


    ld sp, $fd82
    add d
    add e
    db $fd
    add e
    rst $38
    reti


    ld sp, $0a09
    ld a, [hl-]
    dec sp
    rst $38
    reti


    ld sp, $400b
    ld a, h
    ld l, a
    rst $38
    reti


    ld sp, $0f2f
    cpl
    rra
    ld e, a
    inc l
    cpl
    ccf
    rst $38
    reti


    ld sp, $3c6c
    ld c, e
    ld c, h
    ld e, e
    ld e, h
    ld l, e
    cpl
    rst $38
    xor c
    ld sp, $4d2f
    db $fd
    ld c, l
    cpl
    cpl
    ld e, l
    ld e, [hl]
    ld c, [hl]
    ld e, a
    ld l, l
    ld l, [hl]
    cpl
    cpl
    ld a, l
    db $fd
    ld a, l
    cpl
    rst $38
    xor c
    ld sp, $7708
    db $fd
    ld [hl], a
    db $fd
    ld [$7818], sp
    ld b, e
    ld d, e
    ld a, d
    ld a, e
    ld d, b
    cpl
    cpl
    ld [bc], a
    db $fd
    ld a, l
    cpl
    rst $38
    reti


    ld sp, $fdb9
    cp c
    cp d
    db $fd
    cp d
    rst $38
    reti


    ld sp, $fd82
    add d
    add e
    db $fd
    add e
    rst $38
    reti


    ld sp, $0a09
    ld a, [hl-]
    dec sp
    rst $38
    reti


    ld sp, $400b
    ld a, h
    ld l, a
    rst $38
    reti


    ld sp, $dddc
    ldh [$e1], a
    rst $38
    reti


    ld sp, $dfde
    ldh [$e1], a
    rst $38
    reti


    ld sp, $e2de
    ldh [$e4], a
    rst $38
    reti


    ld sp, $eedc
    ldh [$e3], a
    rst $38
    reti


    ld sp, $e6e5
    rst $20
    add sp, -$01
    reti


    ld sp, $e6fd
    db $fd
    push hl
    db $fd
    add sp, -$03
    rst $20
    rst $38
    reti


    ld sp, $eae9
    db $eb
    db $ec
    rst $38
    reti


    ld sp, $eaed
    db $eb
    db $ec
    rst $38
    reti


    ld sp, $f4f2
    di
    cp a
    rst $38
    reti


    ld sp, $f2f4
    cp a
    di
    rst $38
    reti


    ld sp, $fdc2
    jp nz, $fdc3

    jp $d9ff


    ld sp, $fdc4
    call nz, $fdc5
    push bc
    rst $38
    reti


    ld sp, $fddc
    call c, $fdef
    rst $28
    rst $38
    reti


    ld sp, $fdf0
    ldh a, [$f1]
    db $fd
    pop af
    rst $38
    reti


    ld sp, $fddc
    ldh a, [$f1]
    db $fd
    rst $28
    rst $38
    reti


    ld sp, $fdf0
    call c, $fdef
    pop af
    rst $38
    reti


    ld sp, $bebd
    cp e
    cp h
    rst $38
    reti


    ld sp, $bab9
    jp c, $ffdb

    swap b
    ldh [$f0], a
    push af
    ld sp, $c1c0
    push bc
    add $cc
    call $7675
    and h
    and l
    and [hl]
    and a
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    and b
    and c
    and d
    and e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    rst $38
    ld d, $31
    ld hl, sp-$18
    inc e
    ld sp, $e8f0
    dec h
    ld sp, $0000
    dec hl
    ld sp, $0000
    ld sp, $0031
    nop
    ld a, [hl-]
    ld sp, $0000
    sbc l
    ld sp, $0000
    and e
    ld sp, $0000
    ld h, h
    ld sp, $f8d8
    ld a, h
    ld sp, $f8e8
    adc [hl]
    ld sp, $f8f0
    dec l
    ld [hl-], a
    ld h, e
    ld h, h
    ld h, l
    rst $38
    dec l
    ld [hl-], a
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    rst $38
    dec l
    ld [hl-], a
    ld b, c
    ld b, c
    ld b, c
    rst $38
    dec l
    ld [hl-], a
    ld b, d
    ld b, d
    ld b, d
    rst $38
    dec l
    ld [hl-], a
    ld d, d
    ld d, d
    ld d, d
    ld h, d
    ld h, d
    ld h, d
    rst $38
    dec l
    ld [hl-], a
    ld d, c
    ld d, c
    ld d, c
    ld h, c
    ld h, c
    ld h, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    rst $38
    xor c
    ld sp, $2f2f
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld h, e
    ld h, h
    db $fd
    ld h, h
    db $fd
    ld h, e
    ld h, [hl]
    ld h, a
    db $fd
    ld h, a
    db $fd
    ld h, [hl]
    rst $38
    reti


    ld sp, $2f2f
    ld h, e
    ld h, h
    rst $38
    reti


    ld sp, $fd00
    nop
    db $10
    db $fd
    db $10
    ld c, a
    db $fd
    ld c, a
    add b
    db $fd
    add b
    add b
    db $fd
    add b
    add c
    db $fd
    add c
    sub a
    db $fd
    sub a
    rst $38
    reti


    ld sp, $fd98
    sbc b
    sbc c
    db $fd
    sbc c
    add b
    db $fd
    add b
    sbc d
    db $fd
    sbc d
    sbc e
    db $fd
    sbc e
    rst $38
    reti


    ld sp, $fda8
    xor b
    xor c
    db $fd
    xor c
    xor d
    db $fd
    xor d
    xor e
    db $fd
    xor e
    rst $38
    reti


    ld sp, $2f41
    cpl
    rst $38
    reti


    ld sp, $2f52
    ld h, d
    rst $38
    nop
    nop
    nop
    ld [$1000], sp
    nop
    jr jr_000_31ba

    nop
    ld [$0808], sp
    db $10
    ld [$1018], sp

jr_000_31ba:
    nop
    db $10
    ld [$1010], sp
    db $10
    jr jr_000_31da

    nop
    jr @+$0a

    jr @+$12

    jr @+$1a

    nop
    nop
    nop
    ld [$1000], sp
    nop
    jr jr_000_31d2

jr_000_31d2:
    jr nz, jr_000_31d4

jr_000_31d4:
    jr z, jr_000_31d6

jr_000_31d6:
    jr nc, jr_000_31d8

jr_000_31d8:
    jr c, jr_000_31da

jr_000_31da:
    nop
    nop
    ld [$0008], sp
    ld [$1008], sp
    nop
    db $10
    ld [$0018], sp
    jr jr_000_31f1

    jr nz, jr_000_31eb

jr_000_31eb:
    jr nz, jr_000_31f5

    jr z, jr_000_31ef

jr_000_31ef:
    jr z, jr_000_31f9

jr_000_31f1:
    jr nc, jr_000_31f3

jr_000_31f3:
    jr nc, jr_000_31fd

jr_000_31f5:
    nop
    ld [$1000], sp

jr_000_31f9:
    ld [$0808], sp
    db $10

jr_000_31fd:
    stop
    db $10
    ld [$1010], sp
    db $10
    jr @+$1a

    nop
    jr jr_000_3211

    jr jr_000_321b

    jr jr_000_3225

    jr nz, jr_000_320f

jr_000_320f:
    jr nz, jr_000_3219

jr_000_3211:
    jr nz, jr_000_3223

    jr nz, jr_000_322d

    jr z, jr_000_3217

jr_000_3217:
    jr z, jr_000_3221

jr_000_3219:
    jr z, jr_000_322b

jr_000_321b:
    jr z, @+$1a

    jr nc, jr_000_321f

jr_000_321f:
    jr nc, jr_000_3229

jr_000_3221:
    jr nc, jr_000_3233

jr_000_3223:
    jr nc, @+$1a

jr_000_3225:
    jr c, jr_000_3227

jr_000_3227:
    jr c, @+$0a

jr_000_3229:
    jr c, jr_000_323b

jr_000_322b:
    jr c, jr_000_3245

jr_000_322d:
    nop
    nop
    nop
    ld [$1000], sp

jr_000_3233:
    ld [$0800], sp
    ld [$1008], sp
    stop

jr_000_323b:
    db $10
    ld [$1010], sp
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_000_3245:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, h
    ld a, h
    ld a, b
    ld a, c
    ld a, b
    ld a, e
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
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3264:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    sbc a
    rra
    rst $18
    ld a, b
    ld a, e
    ld a, b
    ld a, c
    ld a, h
    ld a, h
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
    nop
    rst $38
    nop
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
    rra
    rst $18
    rra
    sbc a
    ccf
    ccf
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
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
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
    ld a, [c]
    and $f2
    and $f2
    and $f2
    and $f2
    and $f2
    and $f2
    and $f2
    and $4f
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

Call_000_330c:
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
    ld a, b
    ld a, e
    ld a, b
    ld a, c
    ld a, h
    ld a, h
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, h
    ld a, h
    ld a, b
    ld a, c
    ld a, b
    ld a, e
    rra
    rst $18
    rra
    sbc a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    sbc a
    rra
    rst $18
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
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop

Call_000_3372:
    ld a, a
    nop
    nop
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
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    nop
    ld [bc], a
    nop
    ld a, d
    nop
    ld a, d
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    nop
    ld b, b
    nop
    ld e, a
    nop
    ld e, a
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    ccf
    ccf
    ccf
    ccf
    jr nc, @+$32

    jr nc, @+$32

    inc sp

jr_000_33bc:
    ld [hl-], a
    inc sp
    jr nc, jr_000_33c0

jr_000_33c0:
    nop
    nop
    nop
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
    jr nz, jr_000_33d0

jr_000_33d0:
    nop
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    inc c
    inc c
    inc c
    inc c
    call z, $cc0c
    inc c
    inc sp
    jr nc, jr_000_3415

    jr nc, jr_000_3417

    jr nc, jr_000_3419

    jr nc, jr_000_341b

    jr nc, jr_000_341d

    jr nc, jr_000_341f

    ld [hl-], a
    inc sp
    jr nc, jr_000_33bc

    inc c
    call z, $cc4c
    inc c
    call z, $cc0c
    inc c
    call z, $cc8c
    inc c
    call z, Call_000_330c
    jr nc, jr_000_3435

    jr nc, jr_000_3434

    jr nc, jr_000_3436

    jr nc, jr_000_3447

    ccf
    ccf
    ccf
    nop
    nop
    nop
    nop
    rst $38
    inc b
    rst $38
    ld b, b
    nop
    nop

jr_000_3415:
    nop
    nop

jr_000_3417:
    rst $38
    rst $38

jr_000_3419:
    rst $38
    rst $38

jr_000_341b:
    nop
    nop

jr_000_341d:
    nop
    nop

jr_000_341f:
    call z, $cc0c
    ld c, h
    inc c
    inc c
    inc c
    inc c
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38

jr_000_3434:
    nop

jr_000_3435:
    rst $38

jr_000_3436:
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    nop

jr_000_3447:
    rst $38
    ld [$01ff], sp
    rst $38
    ld b, e
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    rst $38
    jp nz, $e0ff

    cp $06
    cp $46
    cp $06
    cp $06
    cp $16
    cp $86
    cp $06
    cp $06
    ld a, a
    ld h, h
    ld a, a
    ld h, b
    ld a, a
    ld h, d
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld l, b
    ld a, a
    ld h, d
    ld a, a
    ld h, b
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$80ff], sp
    rst $38
    rra
    ldh a, [rNR10]
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rlca
    rst $38
    inc de
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    ld [$0008], sp
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    rst $38
    nop
    nop
    rst $38
    ldh [rIE], a
    ret z

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    ld [$ff08], sp
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld hl, sp+$0f
    ld [$10f0], sp
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    rrca
    ld [$0a0f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    ld [$0000], sp
    nop
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, h
    ld a, h
    ld a, b
    ld a, c
    ld a, b
    ld a, e
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
    ccf
    ccf
    rra
    sbc a
    rra
    rst $18
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
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    rra
    rra
    jr c, jr_000_3591

    inc sp
    jr nc, jr_000_3592

    jr nc, jr_000_3592

    jr nc, jr_000_3560

jr_000_3560:
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [$f0]
    ld hl, sp-$08
    inc e
    inc e
    call z, $6c0c
    inc c
    inc l
    inc c
    inc [hl]
    jr nc, jr_000_35b6

    jr nc, jr_000_35b8

    jr nc, jr_000_35ba

    jr nc, jr_000_35bc

    jr nc, jr_000_35be

    jr nc, jr_000_35c0

    jr nc, jr_000_35c2

    jr nc, jr_000_35bc

    inc c

jr_000_3591:
    inc l

jr_000_3592:
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    inc c
    inc l
    inc c
    inc [hl]
    jr nc, jr_000_35d8

    jr nc, jr_000_35d7

    jr nc, jr_000_35de

    jr c, jr_000_35c7

    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    ld a, e
    nop
    ld a, c
    nop
    ld a, h
    nop

jr_000_35b6:
    ld a, a
    nop

jr_000_35b8:
    ld a, a
    nop

jr_000_35ba:
    nop
    nop

jr_000_35bc:
    ld a, a
    nop

jr_000_35be:
    nop
    nop

jr_000_35c0:
    rst $18
    nop

jr_000_35c2:
    sbc a
    nop
    ccf
    nop
    rst $38

jr_000_35c7:
    nop
    rst $38
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
    rst $38
    nop
    nop
    nop

jr_000_35d7:
    rst $38

jr_000_35d8:
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

jr_000_35de:
    nop
    inc l
    inc c
    ld l, h
    inc c
    call z, $1c0c
    inc e
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld [$ff08], sp
    rst $38
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    rst $38
    ld [$ff08], sp
    rlca
    rst $38
    inc de
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    ldh [rIE], a
    ret z

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$00ff], sp
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    ld [$f008], sp
    db $10
    rst $38
    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    rst $38
    ld e, a
    ldh a, [rNR10]
    nop
    nop
    rst $38
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
    nop
    nop
    ld [$ff08], sp
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
    ld [$0f08], sp
    ld [$f8ff], sp
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp-$01
    ld a, [$080f]
    rst $38
    rlca
    rst $38
    ld b, e
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    rra
    ldh a, [rNR10]
    rst $38
    ldh [rIE], a
    jp nz, $80ff

    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    ld hl, sp+$0f
    ld [$0000], sp
    nop
    nop
    nop
    nop
    inc a
    nop
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
    inc a
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld a, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, [hl]
    nop
    inc a
    nop
    nop
    nop
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
    ld de, $11ff
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    nop
    jr jr_000_3725

jr_000_3725:
    jr jr_000_3727

jr_000_3727:
    jr jr_000_3729

jr_000_3729:
    jr jr_000_372b

jr_000_372b:
    jr jr_000_372d

jr_000_372d:
    nop
    nop
    nop
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc a
    nop
    jr jr_000_3739

jr_000_3739:
    jr jr_000_373b

jr_000_373b:
    jr jr_000_373d

jr_000_373d:
    nop
    nop
    rst $38
    rst $38
    rst $30
    adc c
    db $dd
    and e
    rst $38
    add c
    or a
    ret


    db $fd
    add e
    rst $10
    xor c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    cp l
    rst $20
    and l
    rst $20
    and l
    rst $38
    cp l
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
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
    add c
    rst $38
    cp l
    rst $38
    and l
    rst $20
    and l
    rst $20
    cp l
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    cp l
    add e
    cp l
    add e
    cp l
    add e
    cp l
    add e
    add c
    rst $38
    rst $38
    rst $38
    db $ed
    sub e
    cp a
    pop bc
    push af
    adc e
    rst $18
    and c
    db $fd
    add e
    xor a
    pop de
    ei
    add l
    rst $18
    and c
    db $fd
    add e
    rst $28
    sub c
    cp e
    push bc
    rst $28
    sub c
    cp l
    jp $89f7


    rst $18
    and c
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    and h
    rst $38
    add b
    or l
    jp z, $80ff

    db $dd
    and d
    rst $30
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, a
    xor b
    db $fd
    ld [bc], a
    rst $18
    jr nz, jr_000_3873

    add h
    xor $11
    cp e
    ld b, h
    rst $38
    rst $38
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
    rst $38
    rst $38
    ld [hl], a
    adc c
    rst $18
    ld hl, $05fb
    xor a
    ld d, c
    db $fd
    inc bc
    rst $10
    add hl, hl
    rst $38
    rst $38
    nop
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    jr jr_000_3853

jr_000_3853:
    jr c, jr_000_3855

jr_000_3855:
    jr jr_000_3857

jr_000_3857:
    jr jr_000_3859

jr_000_3859:
    jr jr_000_385b

jr_000_385b:
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld c, [hl]
    nop
    ld c, $00
    inc a
    nop
    ld [hl], b
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop

jr_000_3873:
    ld c, $00
    inc a
    nop
    ld c, $00
    ld c, $00
    ld a, h
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld l, h
    nop
    ld c, h
    nop
    ld c, [hl]
    nop
    ld a, [hl]
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld h, b
    nop
    ld a, h
    nop
    ld c, $00
    ld c, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld h, b
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld b, $00
    inc c
    nop
    jr jr_000_38b9

jr_000_38b9:
    jr c, jr_000_38bb

jr_000_38bb:
    jr c, jr_000_38bd

jr_000_38bd:
    nop
    nop
    nop
    nop
    inc a
    nop
    ld c, [hl]
    nop
    inc a
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld a, $00
    ld c, $00
    inc a
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld a, h
    nop
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld h, b
    nop
    ld a, h
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, h
    nop
    ld h, b
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld h, [hl]
    nop
    ld h, b
    nop
    ld l, [hl]
    nop
    ld h, [hl]
    nop
    ld a, $00
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld l, [hl]
    nop
    ld a, [hl]
    nop
    ld d, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld c, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld h, b
    nop
    inc a
    nop
    ld c, $00
    ld c, [hl]
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    jr jr_000_3965

jr_000_3965:
    jr jr_000_3967

jr_000_3967:
    jr jr_000_3969

jr_000_3969:
    jr jr_000_396b

jr_000_396b:
    inc a
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    inc l
    nop
    jr jr_000_398d

jr_000_398d:
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld a, h
    nop
    ld l, b
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    ld h, [hl]
    nop
    halt
    ld e, [hl]
    nop
    ld c, [hl]
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld a, h
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    rst $38
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
    add b
    add b
    add b
    add b
    add b
    rst $38
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
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
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
    rlca
    rlca
    jr jr_000_3a42

    ld hl, $473e
    ld a, a
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
    jp nz, $547f

    ld a, a
    ld e, h
    ccf
    ld l, $7f
    ld h, e
    cp a
    ld hl, sp+$37
    rst $38
    ld bc, $0101

jr_000_3a42:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $8301
    add e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    add e
    add e
    rst $38
    rst $38
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    rst $38
    rst $38
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    reti


    add a
    nop
    jr c, jr_000_3aa2

jr_000_3aa2:
    jr c, jr_000_3aa4

jr_000_3aa4:
    jr c, jr_000_3aa6

jr_000_3aa6:
    jr c, jr_000_3aa8

jr_000_3aa8:
    jr c, jr_000_3aaa

jr_000_3aaa:
    jr c, jr_000_3aac

jr_000_3aac:
    jr c, jr_000_3aae

jr_000_3aae:
    jr c, jr_000_3b2c

    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop

jr_000_3ac7:
    ld [$0800], sp
    nop
    inc e
    nop
    inc e
    nop
    nop
    nop
    nop
    ld c, $01
    dec e
    ld e, $06
    ld a, [hl+]
    ld a, [hl+]
    daa
    daa
    db $10
    inc de
    inc c
    dec c
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_000_3b05

    db $10
    ret nc

    ret nc

    db $10

jr_000_3ae9:
    ldh a, [$30]
    ret z

    add sp, $08
    add sp, $04
    rlca
    inc bc
    inc bc
    inc c
    inc c
    db $10
    db $10
    dec [hl]
    jr nz, jr_000_3b24

    jr nz, jr_000_3b3b

    ccf
    inc c
    inc c
    jr z, jr_000_3ae9

    ret c

    ret nz

    ld b, b
    ld b, b

jr_000_3b05:
    jr nz, jr_000_3b27

    ld d, b
    db $10
    or b

jr_000_3b0a:
    db $10
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    ldh [rSB], a
    ld [hl], c
    ld [hl-], a
    ld b, d
    inc [hl]
    dec [hl]
    ld d, l
    ld d, h
    ld c, a
    ld c, [hl]
    ld hl, $1827
    dec de
    nop
    nop
    add b
    add b
    ld b, b

jr_000_3b24:
    ld b, b
    jr nz, jr_000_3ac7

jr_000_3b27:
    and b
    jr nz, jr_000_3b0a

    ld h, b
    sub b

jr_000_3b2c:
    ldh a, [$08]
    ret z

    cp b
    cp b
    add h
    add h
    add h
    add h
    db $fc
    db $fc
    sub d
    sub d
    sub d
    sub d

jr_000_3b3b:
    ld l, h
    ld l, h
    xor $ee
    rlca
    rlca
    rra
    jr jr_000_3b82

    jr nz, jr_000_3bc5

    ld c, a
    ld a, a
    ld e, a
    ld [hl], b
    ld [hl], b
    and d
    and d
    or b
    or b
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
    ld l, h
    ld a, h
    rst $08
    or e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld b, $09
    add hl, bc
    ld d, $17
    ld [de], a
    ld de, $0f0e
    ld [$0809], sp
    ld [$0f0f], sp
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld c, $0e
    inc bc
    inc bc
    inc bc

jr_000_3b82:
    inc bc
    inc bc
    ld [bc], a
    rra
    ld e, $21
    ld hl, $554a
    ld c, d
    ld [hl], l
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    dec d
    ld [$0f08], sp
    rrca
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld c, $0e
    nop
    nop
    ld h, [hl]
    nop
    ld l, h
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld l, h
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    inc l
    nop
    jr jr_000_3bb7

jr_000_3bb7:
    jr c, jr_000_3bb9

jr_000_3bb9:
    ld h, h
    nop
    ld b, d
    nop
    nop
    nop
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd

jr_000_3bc5:
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
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

Jump_000_3c00:
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld bc, $01ff
    ld bc, $ff01
    ld bc, $0101
    rst $38
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    dec b
    ld [$1109], sp
    ld [de], a
    ld hl, $4326
    ld c, h
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$1009], sp
    inc de
    jr nz, @+$29

    jr nz, @+$31

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
    ld b, b
    ld c, a
    ld b, b
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
    ld b, b
    ld e, a
    ld b, b
    ld c, a
    jr nz, jr_000_3cc4

    jr nz, jr_000_3cbe

    db $10
    ld de, $0f0f
    inc b
    inc b
    rlca
    rlca
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
    rst $38
    nop
    rst $38
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
    nop

jr_000_3cbe:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a

jr_000_3cc4:
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    stop
    jr c, jr_000_3cd3

jr_000_3cd3:
    ld a, h
    nop
    cp $00
    cp $00

jr_000_3cd9:
    cp $00
    ld a, h
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    dec c
    ld [$080a], sp
    rrca
    rrca
    inc bc
    inc bc
    jr z, jr_000_3cd9

    ldh a, [$d0]
    jr nc, jr_000_3d25

    ld [$5408], sp
    inc b
    xor h
    inc b
    db $fc
    db $fc
    jr nc, jr_000_3d2f

    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld b, $09
    add hl, bc
    ld [$0b08], sp
    dec bc
    nop
    nop
    ret nz

    ret nz

    call nz, $e8c4
    ld l, b
    sub b
    ldh a, [$a8]
    ld hl, sp+$48
    ld a, b
    ld hl, sp-$48
    nop
    nop
    rlca
    rlca
    rlca
    rlca

jr_000_3d25:
    rlca
    inc b
    rlca
    inc b
    dec bc
    dec bc
    db $10
    db $10
    rla
    rla

jr_000_3d2f:
    nop
    nop
    add b
    add b
    add b
    add b
    ldh [$e0], a
    sub b
    ldh a, [$a8]
    ld hl, sp+$48
    ld a, b
    cp b
    cp b
    ld [$0f08], sp
    rrca
    ld [$0f08], sp
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, $06
    ld c, $0e
    db $e4
    db $e4
    ld [hl+], a
    ld [hl+], a
    jr nz, jr_000_3d75

    ldh [$e0], a
    jr nz, jr_000_3d79

    jr nz, jr_000_3d7b

    ret nz

    ret nz

    ldh [$e0], a
    jr jr_000_3d79

    sbc b
    sbc b
    sbc b
    sbc b
    ld hl, sp-$08
    sbc h
    sbc b
    inc a
    inc a
    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    ld a, a
    nop
    cp $fe
    ld a, [hl]
    ld a, [hl]

jr_000_3d75:
    cp $da
    ld a, [hl]
    ld e, d

jr_000_3d79:
    ld a, [hl]
    ld a, [hl]

jr_000_3d7b:
    db $fc
    db $fc
    ld hl, sp-$08
    cp $0e
    cp $fe
    ld a, [hl]
    ld a, [hl]
    cp $da
    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld a, [hl]
    db $fc
    db $fc
    ld hl, sp-$08
    add b
    add b
    add e
    add e
    add e
    add e
    jp $ef02


    ld l, $97
    sub a
    ld b, a
    ld b, h
    inc h
    inc h
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$60], a
    ld hl, sp-$08
    db $e4
    inc h
    inc [hl]
    inc [hl]
    rla
    inc d
    rla
    inc d
    rla
    inc d
    inc e
    rra
    rla
    rla
    rrca
    rrca
    ld e, $1e
    nop
    nop

jr_000_3dbf:
    db $f4
    inc h
    ld hl, sp+$28
    add sp, $28
    jr c, jr_000_3dbf

    add sp, -$18
    sub b
    sub b
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    ld c, $11
    ld de, $3737
    ld [hl], c
    ld d, d
    ld a, l
    ld c, [hl]
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    and b
    db $10
    db $10
    rst $38
    rst $38
    rst $08
    inc sp
    ld a, a
    ld b, b
    ccf
    ccf
    ld [$0f08], sp
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, $06
    ld c, $0e
    db $fc
    db $fc
    jr nz, jr_000_3e23

    jr nz, jr_000_3e25

    ldh [$e0], a
    jr nz, @+$22

    jr nz, jr_000_3e2b

    ret nz

    ret nz

    ldh [$e0], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld b, $09
    add hl, bc
    inc sp
    inc sp
    ld [hl], a
    ld d, h
    ld [hl], e
    ld c, h
    jr jr_000_3e39

    ret c

    ret c

jr_000_3e23:
    ret c

    ret c

jr_000_3e25:
    ld hl, sp+$78
    call c, $bc58
    cp h

jr_000_3e2b:
    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    add hl, bc
    ld c, $07
    rlca
    ld [$080f], sp
    rrca
    add hl, bc
    rrca

jr_000_3e39:
    ld a, [bc]
    ld c, $06
    ld b, $0e
    ld c, $00
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rst $38
    ld a, [hl]
    ret


    ccf
    ld a, b
    ld a, a
    add hl, bc
    rrca
    inc b
    inc b
    rlca
    rlca
    cp b
    cp a
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

Call_000_3e5c:
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, e
    ld c, b
    ld h, b
    ld e, a
    or [hl]
    or b
    add h
    add h
    cp b
    cp b
    add h
    add h
    add h
    add h
    add h
    add h
    ld a, [$92fa]
    sub d
    sbc [hl]
    sbc [hl]
    ld h, a
    ld h, a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld c, b
    ld b, b
    ld a, [hl]
    or h
    or b
    add h
    add h
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
    jr nc, jr_000_3ecf

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
    ld b, h
    inc e
    inc c
    jr jr_000_3ed0

    ld c, $45
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
    ld h, a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld l, b
    ld a, [hl+]
    ld a, e
    cpl
    cpl

jr_000_3ecf:
    cpl

jr_000_3ed0:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, e
    cpl
    cpl
    cpl
    cpl
    cpl
    nop
    cpl
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
    ld b, e
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
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
    jr nc, jr_000_3f33

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
    ld c, $1f
    ld c, $15
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
    cpl
    cpl
    cpl
    scf
    ld a, [hl+]
    ld a, l
    cpl
    cpl

jr_000_3f33:
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, l
    ld b, b
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, c
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
    cpl
    cpl
    cpl
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
    jr c, jr_000_3fc8

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

jr_000_3fc8:
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
    ld a, [hl+]
    ld a, e
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl

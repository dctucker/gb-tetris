; Disassembly of "Tetris (Japan) (En).gb"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

ffcc_is_Set_to_1_on_serial_transfer_completion::
    jp Jump_000_028b


    db $00, $00, $00, $00, $00

RST_08::
    jp Jump_000_028b


    db $ff, $ff, $ff, $ff, $ff

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


    db $ff, $ff, $ff, $ff

RST_38::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

VBlank_IRQ::
    jp Jump_000_01fd


    db $ff, $ff, $ff, $ff, $ff

LCDC_Status_IRQ_Not_Used::
    jp $2712


    db $ff, $ff, $ff, $ff, $ff

Timer_Overflow_IRQ_Not_Used::
    jp $2712


    db $ff, $ff, $ff, $ff, $ff

Serial_Transfer_Completion_IRQ::
    jp VBlank_Interrupt_Routine


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

JoypadTransitionInterrupt::
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
    rst $38

This_routine_is_not_used1::
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

    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff

Code_Begin::
    nop
    jp Jump_000_0150


Nintendo_Title_Character_Area::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "TETRIS", $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
    db $00, $00

HeaderSGBFlag::
    db $00

Cartridge_type::
    db $00

Rom_Size::
    db $00

Ram_Size::
    db $00

Manufacturer_Code::
    db $00

HeaderOldLicenseeCode::
    db $01

Version_Number::
    db $00

Complement_Check::
    dec bc

Checksum::
    adc c
    or l

Jump_000_0150:
    jp Jump_000_028b


This_routine_is_not_used2::
    call Call_000_2a2b

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


Stop_counting_if_score_reaches_999999::
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


VBlank_Interrupt_Routine::
    push af
    push hl
    push de
    push bc
    call Call_000_018e
    ld a, $01
    ldh [$cc], a
    pop bc
    pop de
    pop hl
    pop af
    reti


Call_000_018e:
    ldh a, [$cd]

Send_byte_at_ffcf_out_serial_port_using_internal_clock::
    rst $28
    sbc e
    ld bc, $01c2
    rst $00
    ld bc, $01dd
    ld a, $28
    ldh a, [$e1]
    cp $07
    jr z, jr_000_01a9

    cp $06
    ret z

    ld a, $06
    ldh [$e1], a
    ret


jr_000_01a9:
    ldh a, [rSB]
    cp $55
    jr nz, jr_000_01b7

    ld a, $29
    ldh [$cb], a
    ld a, $01
    jr jr_000_01bf

jr_000_01b7:
    cp $29
    ret nz

    ld a, $55
    ldh [$cb], a
    xor a

jr_000_01bf:
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
    ei
    call Call_000_0b07
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


Jump_000_01fd:
    push af
    push bc
    push de
    push hl
    ldh a, [$ce]
    and a
    jr z, jr_000_0218

    ldh a, [$cb]
    cp $29
    jr nz, jr_000_0218

Set_ram_from_d000_to_dfff_to_0::
    xor a
    ldh [$ce], a
    ldh a, [$cf]
    ldh [rSB], a
    ld hl, $ff02
    ld [hl], $81

jr_000_0218:
    call Call_000_2240

Clear_Interrupt_Flag_and_Enable_Registers::
    call Call_000_242c
    call Call_000_2417
    call Call_000_23fe
    call Call_000_23ec
    call Call_000_23dd
    call Call_000_23ce
    call Call_000_23bf
    call Call_000_23b0

Loop_until_LCDC_Y_Coord_is_148::
    call Call_000_23a1
    call Call_000_2392

Set_LCD_control_to_Stop_completely::
    call Call_000_2383
    call Call_000_2358
    call Call_000_2349
    call Call_000_233a
    call Call_000_232b
    call Call_000_231c
    call Call_000_230d
    call Call_000_22fe
    call Call_000_1f32
    call $ffb6

Initialize_stack_pointer::
    call Call_000_192e

Set_ram_from_df00_to_dfff_to_0::
    ld a, [$c0ce]
    and a
    jr z, jr_000_027a

    ldh a, [$98]
    cp $03

Set_ram_from_c000_to_cfff_to_0::
    jr nz, jr_000_027a

    ld hl, $986d
    call Call_000_249b
    ld a, $01
    ldh [$e0], a
    ld hl, $9c6d
    call Call_000_249b
    xor a
    ld [$c0ce], a

jr_000_027a:
    ld hl, $ffe2
    inc [hl]
    xor a
    ldh [rSCX], a

Set_ram_from_fe00_to_feff_to_0::
    ldh [rSCY], a
    inc a
    ldh [$85], a
    pop hl
    pop de
    pop bc
    pop af

Set_ram_from_ff7f_to_fffe_to_0::
    reti


Jump_000_028b:
    xor a
    ld hl, $dfff
    ld c, $10
    ld b, $00

Copy_DMA_transfer_routine_to_ffb6::
    ld [hl-], a
    dec b
    jr nz, Copy_DMA_transfer_routine_to_ffb6

    dec c
    jr nz, Copy_DMA_transfer_routine_to_ffb6

Jump_000_029a:
    ld a, $01
    di
    ldh [rIF], a
    ldh [rIE], a
    xor a
    ldh [rSCY], a
    ldh [rSCX], a

Enable_serial_io_and_vblank_interrupts::
    ldh [$a4], a
    ldh [rSTAT], a
    ldh [rSB], a
    ldh [rSC], a
    ld a, $80
    ldh [rLCDC], a

Setup_branch_point_for_routine_at_2f8::
    ldh a, [rLY]
    cp $94

Set_LCD_control_to_Operation::
    jr nz, Setup_branch_point_for_routine_at_2f8

    ld a, $03
    ldh [rLCDC], a

Clear_all_interrupt_flags::
    ld a, $e4

Set_window_x_and_y_position_to_0::
    ldh [rBGP], a
    ldh [rOBP0], a

Set_timer_modulo_to_0::
    ld a, $c4

Read_buttons_and_return_values::
    ldh [rOBP1], a
    ld hl, $ff26
    ld a, $80
    ld [hl-], a
    ld a, $ff
    ld [hl-], a
    ld [hl], $77
    ld a, $01
    ld [$2000], a
    ld sp, $cfff
    xor a
    ld hl, $dfff
    ld b, $00

jr_000_02df:
    ld [hl-], a
    dec b
    jr nz, jr_000_02df

    ld hl, $cfff
    ld c, $10
    ld b, $00

jr_000_02ea:
    ld [hl-], a
    dec b
    jr nz, jr_000_02ea

    dec c
    jr nz, jr_000_02ea

    ld hl, $9fff
    ld c, $20
    xor a
    ld b, $00

jr_000_02f9:
    ld [hl-], a
    dec b
    jr nz, jr_000_02f9

    dec c
    jr nz, jr_000_02f9

    ld hl, $feff

Jump_000_0303:
    ld b, $00

jr_000_0305:
    ld [hl-], a
    dec b
    jr nz, jr_000_0305

    ld hl, $fffe
    ld b, $80

jr_000_030e:
    ld [hl-], a
    dec b
    jr nz, jr_000_030e

    ld c, $b6
    ld b, $0c
    ld hl, $2ac7

jr_000_0319:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_0319

    call $27e9
    call $7ff3
    ld a, $09
    ldh [rIE], a
    ld a, $37
    ldh [$c0], a
    ld a, $1c
    ldh [$c1], a
    ld a, $24
    ldh [$e1], a
    ld a, $80
    ldh [rLCDC], a
    ei
    xor a
    ldh [rIF], a
    ldh [rWY], a
    ldh [rWX], a
    ldh [rTMA], a

Jump_000_0343:
    call Call_000_29fa
    call Call_000_0377
    call $7ff0
    ldh a, [$80]
    and $0f
    cp $0f
    jp z, Jump_000_029a

    ld hl, $ffa6
    ld b, $02

jr_000_035a:
    ld a, [hl]
    and a
    jr z, jr_000_035f

    dec [hl]

jr_000_035f:
    inc l
    dec b
    jr nz, jr_000_035a

    ldh a, [$c5]
    and a
    jr z, jr_000_036c

    db $3e

Display_credits_screen::
    add hl, bc
    ldh [rIE], a

jr_000_036c:
    ldh a, [$85]
    and a
    jr z, jr_000_036c

    xor a
    ldh [$85], a
    jp Jump_000_0343


Call_000_0377:
    ldh a, [$e1]
    rst $28
    add hl, hl
    inc e
    dec a
    dec e
    xor b
    ld [de], a
    rst $18
    ld [de], a
    ld h, c
    dec e
    add c
    dec e
    add hl, de
    inc b
    and $04

button_for_so_long_Lower_this_value_to_make_it_respond_sooner::
    xor b
    inc d
    ldh a, [rNR14]
    ld l, e
    ld a, [de]
    dec de
    ld e, $71

Wait_for_initial_credit_screen_timer_to_run_out::
    rra
    ld a, d
    rra
    adc c
    dec d
    inc d
    dec d
    rst $18
    dec d
    inc hl
    ld d, $8d
    ld d, $de
    ld d, $4f
    rla
    ld [hl], a
    add hl, de
    db $e4
    ld b, $99
    rlca
    sub d
    ld [$0953], sp

Display_Intro_Select_Players_Screen::
    sub l
    dec bc
    ld c, a
    dec c
    ld b, c
    dec bc
    sub [hl]
    dec c
    add a
    ld c, $76
    ld de, $0dfd
    xor $0e
    add hl, hl
    ld e, $9c
    ld e, $e6
    inc bc
    db $10
    inc b
    rl c
    ld c, d
    ld [de], a
    ld h, b
    ld [de], a
    add b
    ld [de], a
    inc [hl]
    ld b, $64
    ld b, $17
    inc de
    ld l, c
    inc de
    adc b
    inc de
    or l
    inc de
    rl e
    ld [c], a
    inc de
    add hl, de
    inc d
    ld c, c
    inc d
    ld a, a
    inc de
    ld a, $28
    call $2874
    call Call_000_282b
    ld de, $4a4f
    call $283f
    call Call_000_17ee
    ld hl, $c300
    ld de, $64d0

jr_000_03fb:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, h
    cp $c4
    jr nz, jr_000_03fb

    ld a, $d3
    ldh [rLCDC], a
    ld a, $7d
    ldh [$a6], a
    ld a, $25
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld a, $06
    ldh [$e1], a
    ret


    call $2874
    xor a
    ldh [$e9], a

Start_demo_mode::
    ldh [$98], a
    ldh [$9c], a
    ldh [$9b], a
    ldh [$fb], a
    ldh [$9f], a
    ldh [$e3], a
    ldh [$e7], a
    ldh [$c7], a
    call Call_000_22f3
    call Call_000_26a5
    call Call_000_282b
    ld hl, $c800

jr_000_043b:
    ld a, $2f
    ld [hl+], a
    ld a, h
    cp $cc
    jr nz, jr_000_043b

    ld hl, $c801
    call $26fd
    ld hl, $c80c
    call $26fd
    ld hl, $ca41
    ld b, $0c
    ld a, $8e

jr_000_0456:
    ld [hl+], a
    dec b
    jr nz, jr_000_0456

    ld de, $4bb7
    call $283f
    call Call_000_17ee
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

Send_55h_out_serial_port_using_external_clock::
    ret


jr_000_048c:
    ld a, $37
    ldh [$c0], a
    ld a, $09
    ldh [$c2], a
    xor a
    ldh [$c5], a
    ldh [$b0], a
    ldh [$ed], a
    ldh [$ea], a
    ld a, $63
    ldh [$eb], a
    ld a, $30
    ldh [$ec], a
    ldh a, [$e4]

Test_for_Up_button::
    cp $02
    ld a, $02

Test_for_A_button::
    jr nz, jr_000_04c7

    ld a, $77

Test_for_B_button::
    ldh [$c0], a
    ld a, $09

Test_for_Down_button::
    ldh [$c3], a
    ld a, $02
    ldh [$c4], a
    ld a, $64
    ldh [$eb], a
    ld a, $30
    ldh [$ec], a
    ld a, $11
    ldh [$b0], a

Send_29h_out_serial_port_using_internal_clock::
    ld a, $01

jr_000_04c7:
    ldh [$e4], a
    ld a, $0a
    ldh [$e1], a
    call $2874
    call Call_000_2801
    ld de, $4d1f
    call $283f
    call Call_000_17ee
    ld a, $d3
    ldh [rLCDC], a
    ret


    ld a, $ff
    ldh [$e9], a
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_04f5

    ld hl, $ffc6
    dec [hl]
    jr z, jr_000_048c

    ld a, $7d
    ldh [$a6], a

jr_000_04f5:
    call Call_000_0b07
    ld a, $55
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ldh a, [$cc]
    and a
    jr z, jr_000_050f

    ldh a, [$cb]
    and a
    jr nz, jr_000_0544

    xor a
    ldh [$cc], a
    jr jr_000_0576

jr_000_050f:
    ldh a, [$81]
    ld b, a
    ldh a, [$c5]
    bit 2, b
    jr nz, jr_000_0560

    bit 4, b
    jr nz, jr_000_056f

    bit 5, b
    jr nz, jr_000_0574

    bit 3, b
    ret z

    and a
    ld a, $08
    jr z, jr_000_0554

    ld a, b
    cp $08
    ret nz

    ldh a, [$cb]
    cp $29
    jr z, jr_000_0544

    ld a, $29
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_053a:
    ldh a, [$cc]
    and a
    jr z, jr_000_053a

    ldh a, [$cb]
    and a
    jr z, jr_000_0576

jr_000_0544:
    ld a, $2a

jr_000_0546:
    ldh [$e1], a
    xor a
    ldh [$a6], a
    ldh [$c2], a
    ldh [$c3], a
    ldh [$c4], a
    ldh [$e4], a
    ret


jr_000_0554:
    push af
    ldh a, [$80]
    bit 7, a
    jr z, jr_000_055d

    ldh [$f4], a

jr_000_055d:
    pop af
    jr jr_000_0546

jr_000_0560:
    xor $01

jr_000_0562:
    ldh [$c5], a
    and a
    ld a, $10
    jr z, jr_000_056b

    ld a, $60

jr_000_056b:
    ld [$c001], a
    ret


jr_000_056f:
    and a
    ret nz

    xor a
    jr jr_000_0560

jr_000_0574:
    and a
    ret z

jr_000_0576:
    xor a
    jr jr_000_0562

Call_000_0579:
    ldh a, [$e4]
    and a
    ret z

This_routine_is_not_used4::
    call Call_000_0b07
    xor a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ldh a, [$81]
    bit 3, a
    jr z, jr_000_059a

    ld a, $33
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a
    ld a, $06
    ldh [$e1], a
    ret


jr_000_059a:
    ld hl, $ffb0
    ldh a, [$e4]
    cp $02
    ld b, $10
    jr z, jr_000_05a7

    ld b, $1d

jr_000_05a7:
    ld a, [hl]
    cp b
    ret nz

    ld a, $06
    ldh [$e1], a
    ret


Call_000_05af:
    ldh a, [$e4]
    and a
    ret z

    ldh a, [$e9]
    cp $ff
    ret z

    ldh a, [$ea]
    and a
    jr z, jr_000_05c2

    dec a
    ldh [$ea], a
    jr jr_000_05de

jr_000_05c2:
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
    jr jr_000_05e1

jr_000_05de:
    xor a
    ldh [$81], a

jr_000_05e1:
    ldh a, [$80]
    ldh [$ee], a
    ldh a, [$ed]
    ldh [$80], a
    ret


    xor a
    ldh [$ed], a
    jr jr_000_05de

    ret


Call_000_05f0:
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
    jr z, jr_000_061a

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


jr_000_061a:
    ldh a, [$ea]
    inc a
    ldh [$ea], a
    ret


Call_000_0620:
    ldh a, [$e4]
    and a
    ret z

    ldh a, [$e9]
    and a
    ret nz

    ldh a, [$ee]
    ldh [$80], a
    ret


jr_000_062d:
    ld hl, $ff02
    set 7, [hl]
    jr jr_000_063e

    ld a, $03
    ldh [$cd], a
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_062d

jr_000_063e:
    call Call_000_14b3
    ld a, $80
    ld [$c210], a
    call $26c5
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
    jr z, jr_000_0680

    ldh a, [$f0]
    and a
    jr z, jr_000_068d

    xor a
    ldh [$f0], a
    ld de, $c201
    call Call_000_14f6
    call Display_TypeA_Level_Select_Top_Score_screen
    call $26c5
    jr jr_000_068d

jr_000_0680:
    ldh a, [$81]
    bit 0, a
    jr nz, jr_000_068d

    bit 3, a
    jr nz, jr_000_068d

    call Call_000_1514

jr_000_068d:
    ldh a, [$cb]
    cp $29
    jr z, jr_000_06b1

    ldh a, [$cc]
    and a
    ret z

    xor a
    ldh [$cc], a
    ld a, $39
    ldh [$cf], a
    ldh a, [$d0]
    cp $50
    jr z, jr_000_06d1

    ld b, a
    ldh a, [$c1]
    cp b
    ret z

    ld a, b
    ldh [$c1], a
    ld a, $01
    ldh [$f0], a
    ret


jr_000_06b1:
    ldh a, [$81]
    bit 3, a
    jr nz, jr_000_06d9

    bit 0, a
    jr nz, jr_000_06d9

    ldh a, [$cc]
    and a
    ret z

    xor a
    ldh [$cc], a
    ldh a, [$cf]
    cp $50
    jr z, jr_000_06d1

    ldh a, [$c1]

jr_000_06ca:
    ldh [$cf], a
    ld a, $01
    ldh [$ce], a
    ret


jr_000_06d1:
    call Call_000_17ee
    ld a, $16
    ldh [$e1], a
    ret


jr_000_06d9:
    ld a, $50
    jr jr_000_06ca

jr_000_06dd:
    ld hl, $ff02
    set 7, [hl]
    jr jr_000_0703

    ld a, $03
    ldh [$cd], a
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_06dd

    call Call_000_0b10
    call Call_000_0b10
    call Call_000_0b10
    ld b, $00
    ld hl, $c300

jr_000_06fc:
    call Call_000_0b10
    ld [hl+], a
    dec b
    jr nz, jr_000_06fc

jr_000_0703:
    db $cd
    ld [hl], h

    db $28, $cd, $01, $28, $11, $5c, $52, $cd, $3f, $28, $cd, $ee, $17, $3e, $2f, $cd
    db $38, $20, $3e, $03, $e0, $ce, $af, $e0, $01, $e0, $cf, $e0, $dc, $e0, $d2, $e0

B_is_Length_of_data::
    db $d3
    ldh [$d4], a
    ldh [$d5], a
    ldh [$e3], a

jr_000_072c:
    ldh [$cc], a
    ld hl, $c400
    ld b, $0a
    ld a, $28

jr_000_0735:
    ld [hl+], a
    dec b
    jr nz, jr_000_0735

    ldh a, [$d6]
    and a
    jp nz, Jump_000_07da

    call Display_TypeA_Level_Select_Top_Score_screen
    ld a, $d3
    ldh [rLCDC], a
    ld hl, $c080

jr_000_0749:
    ld de, $0772
    ld b, $20

jr_000_074e:
    call $0792
    ld hl, $c200
    ld de, $2741
    ld c, $02
    call Call_000_17da
    call Call_000_087b
    call $26c5
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

    jr z, jr_000_072c

    nop
    ld c, b
    jr nc, @-$4f

    jr nz, @+$7a

    jr z, @-$3e

    nop
    ld a, b
    jr nc, jr_000_0749

    jr nz, @-$7e

    jr z, jr_000_074e

    nop
    add b
    jr nc, @-$3d

    jr nz, @+$1c

    ld [hl+], a
    inc de
    dec b
    jr nz, @-$04

    ret


    ldh a, [$cb]
    cp $29
    jr z, jr_000_07c2

    ldh a, [$cc]
    and a
    jr z, jr_000_07b7

    ldh a, [$d0]
    cp $60
    jr z, jr_000_07d7

    cp $06
    jr nc, jr_000_07b0

    ldh [$ac], a

jr_000_07b0:
    ldh a, [$ad]
    ldh [$cf], a
    xor a
    ldh [$cc], a

jr_000_07b7:
    ld de, $c210
    call Call_000_17ca
    ld hl, $ffad
    jr jr_000_082a

jr_000_07c2:
    ldh a, [$81]
    bit 3, a
    jr z, jr_000_07cc

    ld a, $60
    jr jr_000_0819

jr_000_07cc:
    ldh a, [$cc]
    and a
    jr z, jr_000_0821

    ldh a, [$cf]
    cp $60
    jr nz, @+$3a

jr_000_07d7:
    call Call_000_17ee

Jump_000_07da:
    ldh a, [$d6]
    and a
    jr nz, @+$1a

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
    call Call_000_1bc3

    db $c9, $f0, $cb, $fe, $29, $c2, $95, $08, $af, $e0, $a0, $3e, $06, $11, $e0, $ff
    db $21, $a2, $c9, $cd, $c3, $1b, $c3, $95

    ld [$d0f0], sp
    cp $06
    jr nc, jr_000_0817

    ldh [$ad], a

jr_000_0817:
    ldh a, [$ac]

jr_000_0819:
    ldh [$cf], a
    xor a
    ldh [$cc], a
    inc a
    ldh [$ce], a

jr_000_0821:
    ld de, $c200
    call Call_000_17ca
    ld hl, $ffac

jr_000_082a:
    ld a, [hl]
    bit 4, b
    jr nz, jr_000_0843

    bit 5, b
    jr nz, jr_000_0855

Call_000_0833:
    bit 6, b
    jr nz, jr_000_085b

    bit 7, b
    jr z, jr_000_084e

    cp $03
    jr nc, jr_000_084e

    add $03
    jr jr_000_0848

jr_000_0843:
    cp $05
    jr z, jr_000_084e

    inc a

jr_000_0848:
    ld [hl], a
    ld a, $01
    ld [$dfe0], a

jr_000_084e:
    call Call_000_087b
    call $26c5
    ret


jr_000_0855:
    and a
    jr z, jr_000_084e

    dec a
    jr jr_000_0848

jr_000_085b:
    cp $03
    jr c, jr_000_084e

    sub $03
    jr jr_000_0848

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

Call_000_087b:
    ldh a, [$ac]
    ld de, $c201
    ld hl, $0863
    call Call_000_17b9
    ldh a, [$ad]
    ld de, $c211
    ld hl, $086f
    call Call_000_17b9
    ret


    call $2874
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
    call Call_000_26a5
    call Call_000_22f3
    call Call_000_204d
    xor a

jr_000_08b9:
    ldh [$e3], a
    ldh [$e7], a
    call Call_000_17ee
    ld de, $53c4
    push de

    db $3e, $01, $e0, $a9, $e0, $c5, $cd, $3f, $28, $d1, $21, $00, $9c, $cd, $42, $28
    db $11, $8d, $28, $21, $63, $9c, $0e, $0a, $cd, $d8, $1f, $21, $00, $c2, $11, $13

    daa
    call $270a
    ld hl, $c210
    ld de, $271b
    call $270a
    ld hl, $9951
    ld a, $30
    ldh [$9e], a
    ld [hl], $00
    dec l
    ld [hl], $03
    call $1b43
    xor a
    ldh [$a0], a
    ldh a, [$cb]
    cp $29
    ld de, $0943
    ldh a, [$ac]
    jr z, jr_000_0913

    ld de, $0933
    ldh a, [$ad]

jr_000_0913:
    ld hl, $98b0
    ld [hl], a
    ld h, $9c
    ld [hl], a
    ld hl, $c080
    ld b, $10
    call $0792
    ld a, $77
    ldh [$c0], a
    ld a, $d3
    ldh [rLCDC], a
    ld a, $19
    ldh [$e1], a
    ld a, $01
    ldh [$cd], a

Call_000_0932:
    ret


    jr jr_000_08b9

    ret nz

    nop
    jr @-$72

    ret nz

    jr nz, jr_000_095c

    add h
    pop bc
    nop
    jr nz, @-$72

    pop bc
    jr nz, jr_000_095c

    add h
    xor [hl]
    nop
    jr @-$72

    xor [hl]
    jr nz, jr_000_096c

    add h
    xor a
    nop
    jr nz, @-$72

    xor a
    jr nz, jr_000_0992

    ld [$ffe0], sp
    xor a
    ldh [rIF], a
    ldh a, [$cb]

jr_000_095c:
    cp $29
    jp nz, Jump_000_0a65

jr_000_0961:
    call Call_000_0b07
    call Call_000_0b07
    xor a
    ldh [$cc], a
    ld a, $29

jr_000_096c:
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_0972:
    ldh a, [$cc]
    and a
    jr z, jr_000_0972

    ldh a, [rSB]
    cp $55
    jr nz, jr_000_0961

    ld de, $0016
    ld c, $0a
    ld hl, $c902

jr_000_0985:
    ld b, $0a

jr_000_0987:
    xor a
    ldh [$cc], a
    call Call_000_0b07
    ld a, [hl+]
    ldh [rSB], a
    ld a, $81

jr_000_0992:
    ldh [rSC], a

jr_000_0994:
    ldh a, [$cc]
    and a
    jr z, jr_000_0994

    dec b
    jr nz, jr_000_0987

    add hl, de
    dec c
    jr nz, jr_000_0985

    ldh a, [$ac]
    cp $05
    jr z, jr_000_09e3

    ld hl, $ca22
    ld de, $0040

jr_000_09ac:
    add hl, de
    inc a
    cp $05
    jr nz, jr_000_09ac

    ld de, $ca22
    ld c, $0a

jr_000_09b7:
    ld b, $0a

jr_000_09b9:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_09b9

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
    jr nz, jr_000_09b7

    ld de, $ffd6

jr_000_09d3:
    ld b, $0a
    ld a, h
    cp $c8
    jr z, jr_000_09e3

    ld a, $2f

jr_000_09dc:
    ld [hl+], a
    dec b
    jr nz, jr_000_09dc

    add hl, de
    jr jr_000_09d3

jr_000_09e3:
    call Call_000_0b07
    call Call_000_0b07
    xor a
    ldh [$cc], a
    ld a, $29
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_09f4:
    ldh a, [$cc]
    and a
    jr z, jr_000_09f4

    ldh a, [rSB]
    cp $55
    jr nz, jr_000_09e3

    ld hl, $c300
    ld b, $00

jr_000_0a04:
    xor a
    ldh [$cc], a
    ld a, [hl+]
    call Call_000_0b07
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_0a11:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a11

    inc b
    jr nz, jr_000_0a04

jr_000_0a19:
    call Call_000_0b07
    call Call_000_0b07
    xor a
    ldh [$cc], a
    ld a, $30
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a

jr_000_0a2a:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a2a

    ldh a, [rSB]
    cp $56
    jr nz, jr_000_0a19

Jump_000_0a35:
    call Call_000_0afb
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
    jr z, jr_000_0a53

    ld hl, $ff02
    set 7, [hl]

jr_000_0a53:
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


Jump_000_0a65:
    ldh a, [$ad]
    inc a
    ld b, a
    ld hl, $ca42
    ld de, $ffc0

jr_000_0a6f:
    dec b
    jr z, jr_000_0a75

    add hl, de
    jr jr_000_0a6f

jr_000_0a75:
    call Call_000_0b07
    xor a
    ldh [$cc], a
    ld a, $55
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0a83:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a83

    ldh a, [rSB]
    cp $29
    jr nz, jr_000_0a75

    ld de, $0016
    ld c, $0a

jr_000_0a93:
    ld b, $0a

jr_000_0a95:
    xor a
    ldh [$cc], a

Delay_routine::
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0a9e:
    ldh a, [$cc]
    and a
    jr z, jr_000_0a9e

    ldh a, [rSB]
    ld [hl+], a
    dec b
    jr nz, jr_000_0a95

    add hl, de
    dec c
    jr nz, jr_000_0a93

jr_000_0aad:
    call Call_000_0b07
    xor a
    ldh [$cc], a
    ld a, $55
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0abb:
    ldh a, [$cc]
    and a
    jr z, jr_000_0abb

    ldh a, [rSB]
    cp $29
    jr nz, jr_000_0aad

    ld b, $00
    ld hl, $c300

jr_000_0acb:
    xor a
    ldh [$cc], a
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0ad4:
    ldh a, [$cc]
    and a
    jr z, jr_000_0ad4

    ldh a, [rSB]
    ld [hl+], a
    inc b
    jr nz, jr_000_0acb

jr_000_0adf:
    call Call_000_0b07
    xor a
    ldh [$cc], a
    ld a, $56
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a

jr_000_0aed:
    ldh a, [$cc]
    and a
    jr z, jr_000_0aed

    ldh a, [rSB]
    cp $30
    jr nz, jr_000_0adf

    jp Jump_000_0a35


Call_000_0afb:
    ld hl, $ca42
    ld a, $80
    ld b, $0a

jr_000_0b02:
    ld [hl+], a
    dec b
    jr nz, jr_000_0b02

    ret


Call_000_0b07:
    push bc
    ld b, $fa

jr_000_0b0a:
    ld b, b
    dec b
    jr nz, jr_000_0b0a

    pop bc
    ret


Call_000_0b10:
    push hl
    push bc
    ldh a, [$fc]
    and $fc
    ld c, a
    ld h, $03

jr_000_0b19:
    ldh a, [rDIV]
    ld b, a

jr_000_0b1c:
    xor a

jr_000_0b1d:
    dec b
    jr z, jr_000_0b2a

    inc a
    inc a
    inc a
    inc a
    cp $1c
    jr z, jr_000_0b1c

    jr jr_000_0b1d

jr_000_0b2a:
    ld d, a
    ldh a, [$ae]
    ld e, a
    dec h
    jr z, jr_000_0b38

    or d
    or c
    and $fc
    cp c
    jr z, jr_000_0b19

jr_000_0b38:
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
    jr nz, jr_000_0b66

    ld b, $44
    ld c, $20
    call Call_000_11a3
    ld a, $02
    ldh [$cd], a
    call $26d7
    call $26ea
    call Display_TypeA_Level_Select_Top_Score_screen
    xor a
    ldh [$d6], a
    ld a, $1a
    ldh [$e1], a
    ret


jr_000_0b66:
    cp $05
    ret nz

    ld hl, $c030
    ld b, $12

jr_000_0b6e:
    ld [hl], $f0
    inc hl
    ld [hl], $10
    inc hl
    ld [hl], $b6
    inc hl
    ld [hl], $80
    inc hl
    dec b
    jr nz, jr_000_0b6e

    ld a, [$c3ff]

jr_000_0b80:
    ld b, $0a
    ld hl, $c400

jr_000_0b85:
    dec a
    jr z, jr_000_0b8e

    inc l
    dec b
    jr nz, jr_000_0b85

    jr jr_000_0b80

jr_000_0b8e:
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
    call Call_000_1c68
    call Call_000_1ce3
    call Call_000_2515
    call Call_000_20f7
    call Call_000_2199
    call Call_000_25f5
    call Call_000_22ad
    call Call_000_0bff
    ldh a, [$d5]
    and a
    jr z, jr_000_0bd7

    ld a, $77
    ldh [$cf], a
    ldh [$b1], a
    ld a, $aa
    ldh [$d1], a
    ld a, $1b
    ldh [$e1], a
    ld a, $05
    ldh [$a7], a
    jr jr_000_0be7

jr_000_0bd7:
    ldh a, [$e1]
    cp $01
    jr nz, jr_000_0bf8

    ld a, $aa
    ldh [$cf], a
    ldh [$b1], a
    ld a, $77
    ldh [$d1], a

jr_000_0be7:
    xor a
    ldh [$dc], a
    ldh [$d2], a
    ldh [$d3], a
    ldh [$d4], a
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_0bf8

    ldh [$ce], a

jr_000_0bf8:
    call Call_000_0c54
    call Call_000_0cf0
    ret


Call_000_0bff:
    ld de, $0020
    ld hl, $c802
    ld a, $2f
    ld c, $12

jr_000_0c09:
    ld b, $0a
    push hl

jr_000_0c0c:
    cp [hl]
    jr nz, jr_000_0c19

    inc hl
    dec b
    jr nz, jr_000_0c0c

    pop hl
    add hl, de
    dec c
    jr nz, jr_000_0c09

    push hl

jr_000_0c19:
    pop hl
    ld a, c
    ldh [$b1], a
    cp $0c
    ld a, [$dfe9]
    jr nc, jr_000_0c2b

    cp $08
    ret nz

    call Display_TypeA_Level_Select_Top_Score_screen
    ret


jr_000_0c2b:
    cp $08
    ret z

    ld a, [$dff0]
    cp $02
    ret z

    ld a, $08
    ld [$dfe8], a
    ret


jr_000_0c3a:
    ldh a, [$cb]
    cp $29
    jr z, jr_000_0c92

    ld a, $01
    ld [$df7f], a
    ldh [$ab], a
    ldh a, [$cf]
    ldh [$f1], a
    xor a
    ldh [$f2], a
    ldh [$cf], a
    call Call_000_1d26
    ret


Call_000_0c54:
    ldh a, [$cc]
    and a
    ret z

    ld hl, $c030
    ld de, $0004
    xor a
    ldh [$cc], a
    ldh a, [$d0]
    cp $aa
    jr z, jr_000_0cc8

    cp $77
    jr z, jr_000_0cb4

    cp $94
    jr z, jr_000_0c3a

    ld b, a
    and a
    jr z, jr_000_0cc4

    bit 7, a
    jr nz, jr_000_0ce6

    cp $13
    jr nc, jr_000_0c92

    ld a, $12
    sub b
    ld c, a
    inc c

jr_000_0c80:
    ld a, $98

jr_000_0c82:
    ld [hl], a
    add hl, de
    sub $08
    dec b
    jr nz, jr_000_0c82

jr_000_0c89:
    ld a, $f0

jr_000_0c8b:
    dec c
    jr z, jr_000_0c92

    ld [hl], a
    add hl, de
    jr jr_000_0c8b

jr_000_0c92:
    ldh a, [$dc]
    and a
    jr z, jr_000_0c9e

    or $80
    ldh [$b1], a
    xor a
    ldh [$dc], a

jr_000_0c9e:
    ld a, $ff
    ldh [$d0], a
    ldh a, [$cb]
    cp $29
    ldh a, [$b1]
    jr nz, jr_000_0cb1

    ldh [$cf], a
    ld a, $01
    ldh [$ce], a
    ret


jr_000_0cb1:
    ldh [$cf], a
    ret


jr_000_0cb4:
    ldh a, [$d1]
    cp $aa
    jr z, jr_000_0ce0

    ld a, $77
    ldh [$d1], a
    ld a, $01
    ldh [$e1], a
    jr jr_000_0c92

jr_000_0cc4:
    ld c, $13
    jr jr_000_0c89

jr_000_0cc8:
    ldh a, [$d1]
    cp $77
    jr z, jr_000_0ce0

    ld a, $aa
    ldh [$d1], a
    ld a, $1b
    ldh [$e1], a
    ld a, $05
    ldh [$a7], a
    ld c, $01
    ld b, $12
    jr jr_000_0c80

jr_000_0ce0:
    ld a, $01
    ldh [$ef], a
    jr jr_000_0c92

jr_000_0ce6:
    and $7f
    cp $05
    jr nc, jr_000_0c92

    ldh [$d2], a
    jr jr_000_0c9e

Call_000_0cf0:
    ldh a, [$d3]
    and a
    jr z, jr_000_0cfc

    bit 7, a
    ret z

    and $07
    jr jr_000_0d06

jr_000_0cfc:
    ldh a, [$d2]
    and a
    ret z

    ldh [$d3], a
    xor a
    ldh [$d2], a
    ret


jr_000_0d06:
    ld c, a
    push bc
    ld hl, $c822
    ld de, $ffe0

jr_000_0d0e:
    add hl, de
    dec c
    jr nz, jr_000_0d0e

    ld de, $c822
    ld c, $11

jr_000_0d17:
    ld b, $0a

jr_000_0d19:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_0d19

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
    jr nz, jr_000_0d17

    pop bc

jr_000_0d31:
    ld de, $c400
    ld b, $0a

jr_000_0d36:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_0d36

    push de
    ld de, $0016
    add hl, de
    pop de
    dec c
    jr nz, jr_000_0d31

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
    jr nz, jr_000_0d6d

    ldh a, [$d0]
    cp $aa
    jr nz, jr_000_0d77

jr_000_0d67:
    ld a, $01
    ldh [$ef], a
    jr jr_000_0d77

jr_000_0d6d:
    cp $aa
    jr nz, jr_000_0d77

    ldh a, [$d0]
    cp $77
    jr z, jr_000_0d67

jr_000_0d77:
    ld b, $34
    ld c, $43
    call Call_000_11a3
    xor a
    ldh [$e3], a
    ldh a, [$d1]
    cp $aa
    ld a, $1e
    jr nz, jr_000_0d8b

    ld a, $1d

jr_000_0d8b:
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
    jr nz, jr_000_0da4

    ldh a, [$d7]
    inc a
    ldh [$d7], a

jr_000_0da4:
    call Call_000_0fd3
    ld de, $274d
    ldh a, [$cb]
    cp $29
    jr z, jr_000_0db3

    ld de, $275f

jr_000_0db3:
    ld hl, $c200
    ld c, $03
    call Call_000_17da
    ld a, $19
    ldh [$a6], a
    ldh a, [$ef]
    and a
    jr z, jr_000_0dc9

    ld hl, $c220
    ld [hl], $80

jr_000_0dc9:
    ld a, $03
    call $26c7
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


jr_000_0de2:
    ldh a, [$d7]
    cp $05
    jr nz, jr_000_0def

    ldh a, [$c6]
    and a
    jr z, jr_000_0df5

    jr jr_000_0e11

jr_000_0def:
    ldh a, [$81]
    bit 3, a
    jr z, jr_000_0e11

jr_000_0df5:
    ld a, $60
    ldh [$cf], a
    ldh [$ce], a
    jr jr_000_0e1a

    ld a, $01
    ldh [rIE], a
    ldh a, [$cc]
    jr z, jr_000_0e11

    ldh a, [$cb]
    cp $29
    jr z, jr_000_0de2

    ldh a, [$d0]
    cp $60
    jr z, jr_000_0e1a

jr_000_0e11:
    call Call_000_0e21
    ld a, $03
    call $26c7
    ret


jr_000_0e1a:
    ld a, $1f
    ldh [$e1], a
    ldh [$cc], a
    ret


Call_000_0e21:
    ldh a, [$a6]
    and a
    jr nz, jr_000_0e49

    ld hl, $ffc6
    dec [hl]
    ld a, $19
    ldh [$a6], a
    call Call_000_0fc4
    ld hl, $c201
    ld a, [hl]
    xor $30
    ld [hl+], a
    cp $60
    call z, Call_000_0f7b
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

jr_000_0e49:
    ldh a, [$d7]
    cp $05
    jr nz, jr_000_0e77

    ldh a, [$c6]
    ld hl, $c221
    cp $06
    jr z, jr_000_0e73

    cp $08
    jr nc, jr_000_0e77

    ld a, [hl]
    cp $72
    jr nc, jr_000_0e67

    cp $69
    ret z

    inc [hl]
    inc [hl]
    ret


jr_000_0e67:
    ld [hl], $69
    inc l
    inc l
    ld [hl], $57
    ld a, $06
    ld [$dfe0], a
    ret


jr_000_0e73:
    dec l
    ld [hl], $80
    ret


jr_000_0e77:
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
    jr nz, jr_000_0e95

    ldh a, [$d8]
    inc a
    ldh [$d8], a

jr_000_0e95:
    call Call_000_0fd3
    ld de, $2771
    ldh a, [$cb]
    cp $29
    jr z, jr_000_0ea4

    ld de, $277d

jr_000_0ea4:
    ld hl, $c200
    ld c, $02
    call Call_000_17da
    ld a, $19
    ldh [$a6], a
    ldh a, [$ef]
    and a
    jr z, jr_000_0eba

    ld hl, $c210
    ld [hl], $80

jr_000_0eba:
    ld a, $02
    call $26c7
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


jr_000_0ed3:
    ldh a, [$d8]
    cp $05
    jr nz, jr_000_0ee0

    ldh a, [$c6]
    and a
    jr z, jr_000_0ee6

    jr jr_000_0f02

jr_000_0ee0:
    ldh a, [$81]
    bit 3, a
    jr z, jr_000_0f02

jr_000_0ee6:
    ld a, $60
    ldh [$cf], a
    ldh [$ce], a
    jr jr_000_0f0b

    ld a, $01
    ldh [rIE], a
    ldh a, [$cc]
    jr z, jr_000_0f02

    ldh a, [$cb]
    cp $29
    jr z, jr_000_0ed3

    ldh a, [$d0]
    cp $60
    jr z, jr_000_0f0b

jr_000_0f02:
    call Call_000_0f12
    ld a, $02
    call $26c7
    ret


jr_000_0f0b:
    ld a, $1f
    ldh [$e1], a
    ldh [$cc], a
    ret


Call_000_0f12:
    ldh a, [$a6]
    and a
    jr nz, jr_000_0f33

    ld hl, $ffc6
    dec [hl]
    ld a, $19
    ldh [$a6], a
    call Call_000_0fc4
    ld hl, $c211
    ld a, [hl]
    xor $08
    ld [hl+], a
    cp $68
    call z, Call_000_0f7b
    inc l
    ld a, [hl]
    xor $01
    ld [hl], a

jr_000_0f33:
    ldh a, [$d8]
    cp $05
    jr nz, jr_000_0f6b

    ldh a, [$c6]
    db $21

    db $01, $c2, $fe, $05, $28, $25, $fe, $06, $28, $11, $fe, $08, $30, $21, $7e, $fe
    db $72, $30, $18, $fe, $61, $c8, $34, $34, $34, $34, $c9, $2d, $36, $00, $2c, $36
    db $61, $2c, $2c, $36

    ld d, [hl]
    ld a, $06
    ld [$dfe0], a
    ret


    dec l
    ld [hl], $80
    ret


jr_000_0f6b:
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


Call_000_0f7b:
    push af
    push hl
    ldh a, [$d7]
    cp $05
    jr z, jr_000_0f9d

    ldh a, [$d8]
    cp $05
    jr z, jr_000_0f9d

    ldh a, [$cb]
    cp $29
    jr nz, jr_000_0f9d

    ld hl, $c060
    ld b, $24
    ld de, $0fa0

jr_000_0f97:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_0f97

jr_000_0f9d:
    pop hl
    pop af
    ret


    ld b, d
    jr nc, jr_000_0fb0

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

jr_000_0fb0:
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

Call_000_0fc4:
    ld hl, $c060
    ld de, $0004
    ld b, $09
    xor a

jr_000_0fcd:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_0fcd

    ret


Call_000_0fd3:
    call $2874
    ld hl, $55f4
    ld bc, $1000
    call Call_000_2838
    call $27e9
    ld hl, $9800
    ld de, $552c
    ld b, $04
    call $2844
    ld hl, $9980
    ld b, $06
    call $2844
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_101d

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

jr_000_101d:
    ldh a, [$ef]
    and a
    jr nz, jr_000_1025

    call Call_000_10e9

jr_000_1025:
    ldh a, [$d7]
    and a
    jr z, jr_000_1073

    cp $05
    jr nz, jr_000_1044

    ld hl, $98a5
    ld b, $0b
    ldh a, [$cb]
    cp $29
    ld de, $1157
    jr z, jr_000_103f

    ld de, $1162

jr_000_103f:
    call Call_000_113c
    ld a, $04

jr_000_1044:
    ld c, a
    ldh a, [$cb]
    cp $29
    ld a, $93
    jr nz, jr_000_104f

    ld a, $8f

jr_000_104f:
    ldh [$a0], a
    ld hl, $99e7
    call Call_000_10ce
    ldh a, [$d9]
    and a
    jr z, jr_000_1073

    ld a, $ac
    ldh [$a0], a
    ld hl, $99f0
    ld c, $01
    call Call_000_10ce
    ld hl, $98a6
    ld de, $116d
    ld b, $09
    call Call_000_113c

jr_000_1073:
    ldh a, [$d8]
    and a
    jr z, jr_000_10b6

    cp $05
    jr nz, jr_000_1092

    ld hl, $98a5
    ld b, $0b
    ldh a, [$cb]
    cp $29
    ld de, $1162
    jr z, jr_000_108d

    ld de, $1157

jr_000_108d:
    call Call_000_113c
    ld a, $04

jr_000_1092:
    ld c, a
    ldh a, [$cb]
    cp $29
    ld a, $8f
    jr nz, jr_000_109d

    ld a, $93

jr_000_109d:
    ldh [$a0], a
    ld hl, $9827
    call Call_000_10ce
    ldh a, [$da]
    and a

The_next_3_instructions_are_not_used::
    jr z, jr_000_10b6

    ld a, $ac
    ldh [$a0], a
    ld hl, $9830
    ld c, $01
    call Call_000_10ce

jr_000_10b6:
    ldh a, [$db]
    and a
    jr z, jr_000_10c6

    ld hl, $98a7
    ld de, $1151
    ld b, $06
    call Call_000_113c

jr_000_10c6:
    ld a, $d3
    ldh [rLCDC], a
    call Call_000_17ee
    ret


Call_000_10ce:
jr_000_10ce:
    ldh a, [$a0]
    push hl
    ld de, $0020
    ld b, $02

jr_000_10d6:
    push hl
    ld [hl+], a
    inc a
    ld [hl], a
    inc a
    pop hl
    add hl, de
    dec b
    jr nz, jr_000_10d6

    pop hl
    ld de, $0003
    add hl, de
    dec c
    jr nz, jr_000_10ce

    ret


Call_000_10e9:
    ld hl, $ffd7
    db $11

    db $d8, $ff, $f0, $d9, $a7, $20, $3a, $f0, $da, $a7, $20, $3c, $f0, $db, $a7, $20
    db $21, $7e, $fe, $04, $28, $11, $1a, $fe, $04, $c0, $3e, $05, $12, $18, $0a, $1a
    db $fe, $03, $c0, $3e, $03

    jr jr_000_1119

jr_000_1114:
    ld [hl], $05
    xor a
    ldh [$db], a

jr_000_1119:
    xor a
    ldh [$d9], a
    ldh [$da], a
    ret


    ld a, [hl]
    cp $04
    jr nz, jr_000_112a

    ldh [$d9], a

jr_000_1126:
    xor a
    ldh [$db], a
    ret


jr_000_112a:
    ldh [$da], a
    jr jr_000_1126

    ld a, [hl]
    cp $05
    jr z, jr_000_1114

    jr @-$23

    ld a, [de]
    cp $05
    jr z, @-$31

    jr @-$2a

Call_000_113c:
    push bc
    push hl

jr_000_113e:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_113e

    pop hl
    ld de, $0020
    add hl, de
    pop bc
    ld a, $b6

jr_000_114c:
    ld [hl+], a
    dec b
    jr nz, jr_000_114c

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

Call_000_1166:
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

    call Call_000_17ee
    xor a
    ldh [$ef], a
    ld b, $27
    ld c, $79
    call Call_000_11a3
    call $7ff3
    ldh a, [$d7]
    cp $05
    jr z, jr_000_119e

    ldh a, [$d8]
    cp $05
    jr z, jr_000_119e

    ld a, $01
    ldh [$d6], a

jr_000_119e:
    ld a, $16
    ldh [$e1], a
    ret


Call_000_11a3:
    ldh a, [$cc]
    and a
    jr z, jr_000_11bc

    xor a
    ldh [$cc], a
    ldh a, [$cb]
    cp $29
    ldh a, [$d0]
    jr nz, jr_000_11c4

    cp b
    jr z, jr_000_11be

    ld a, $02
    ldh [$cf], a
    ldh [$ce], a

jr_000_11bc:
    pop hl
    ret


jr_000_11be:
    ld a, c
    ldh [$cf], a
    ldh [$ce], a
    ret


jr_000_11c4:
    cp c
    ret z

    ld a, b
    ldh [$cf], a
    pop hl
    ret


    call Call_000_1216
    ld hl, $9ce6
    ld de, $147f
    ld b, $07
    call Call_000_149b
    ld hl, $9ce7
    ld de, $1486
    ld b, $07
    call Call_000_149b
    ld hl, $9d08
    ld [hl], $72
    inc l
    ld [hl], $c4
    ld hl, $9d28
    ld [hl], $b7
    inc l
    ld [hl], $b8
    ld de, $27c5
    ld hl, $c200
    ld c, $03
    call Call_000_17da
    ld a, $03
    call $26c7
    ld a, $db
    ldh [rLCDC], a
    ld a, $bb
    ldh [$a6], a
    ld a, $27
    ldh [$e1], a
    ld a, $10
    ld [$dfe8], a
    ret


Call_000_1216:
    call $2874
    ld hl, $55f4
    ld bc, $1000
    call Call_000_2838
    ld hl, $9fff
    call Call_000_27ec
    ld hl, $9dc0
    ld de, $520c
    ld b, $04
    call $2844
    ld hl, $9cec
    ld de, $148d
    ld b, $07
    call Call_000_149b
    ld hl, $9ced
    ld de, $1494
    ld b, $07
    call Call_000_149b
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
    jr z, jr_000_1269

    call Call_000_145e
    ret


jr_000_1269:
    ld a, $29
    ldh [$e1], a
    ld hl, $c213
    ld [hl], $35
    ld l, $23
    ld [hl], $35
    ld a, $ff
    ldh [$a6], a
    ld a, $2f
    call Call_000_2032
    ret


    ldh a, [$a6]
    and a
    jr z, jr_000_1289

    call Call_000_145e
    ret


jr_000_1289:
    ld a, $02
    ldh [$e1], a
    ld hl, $9d08
    ld b, $2f
    call Call_000_1a63
    ld hl, $9d09
    call Call_000_1a63
    ld hl, $9d28
    call Call_000_1a63
    ld hl, $9d29
    call Call_000_1a63
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_12db

    ld a, $0a
    ldh [$a6], a
    ld hl, $c201
    dec [hl]
    ld a, [hl]
    cp $58
    jr nz, jr_000_12db

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
    call $26c7
    ld a, $03
    ldh [$e1], a
    ld a, $04
    ld [$dff8], a
    ret


jr_000_12db:
    call Call_000_145e
    ret


    ldh a, [$a6]
    and a
    jr nz, @+$1f

    ld a, $0a
    ldh [$a6], a
    ld hl, $c211
    dec [hl]
    ld l, $01
    dec [hl]
    ld a, [hl]
    cp $d0
    jr nz, @+$0f

    db $3e

    db $9c, $e0, $c9, $3e, $82, $e0, $ca, $3e, $2c, $e0, $e1, $c9, $f0, $a7, $a7, $20

    dec bc
    ld a, $06
    ldh [$a7], a
    ld hl, $c213
    ld a, [hl]
    xor $01
    ld [hl], a
    ld a, $03
    call $26c7
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
    ld hl, $1359
    add hl, de
    push hl
    pop de
    ldh a, [$c9]
    ld h, a
    ldh a, [$ca]
    ld l, a
    ld a, [de]
    call Call_000_1a62
    push hl
    ld de, $0020
    add hl, de
    ld b, $b6
    call Call_000_1a63
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

    call $2874
    call Call_000_2801
    call Call_000_22f3
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


    call Call_000_1216
    ld de, Copy_character_set_to_character_ram
    ld hl, $c200
    ld c, $03
    call Call_000_17da
    ldh a, [$f3]
    ld [$c203], a
    ld a, $03
    call $26c7
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
    jr z, jr_000_13d4

    call Call_000_145e
    ret


jr_000_13d4:
    ld a, $31
    ldh [$e1], a
    ld a, $80
    ldh [$a6], a
    ld a, $2f
    call Call_000_2032
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_1415

    ld a, $0a
    ldh [$a6], a
    ld hl, $c201
    dec [hl]
    ld a, [hl]
    cp $6a
    jr nz, jr_000_1415

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
    call $26c7
    ld a, $32
    ldh [$e1], a
    ld a, $04
    ld [$dff8], a
    ret


jr_000_1415:
    call Call_000_145e
    ret


    ldh a, [$a6]

    db $a7, $20, $15, $3e, $0a, $e0, $a6, $21, $11, $c2, $35, $2e, $01, $35, $7e, $fe
    db $e0, $20, $05, $3e, $33, $e0, $e1, $c9, $f0, $a7, $a7, $20

    dec bc
    ld a, $06
    ldh [$a7], a
    ld hl, $c213
    ld a, [hl]
    xor $01
    ld [hl], a
    db $3e

Select_Game_and_Music_Type_screen::
    inc bc
    call $26c7
    ret


    call $2874
    call Call_000_2801
    call $7ff3
    call Call_000_22f3
    ld a, $93
    ldh [rLCDC], a
    ld a, $10
    ldh [$e1], a
    ret


Call_000_145e:
    ldh a, [$a7]
    and a
    ret nz

    ld a, $0a
    ldh [$a7], a
    ld a, $03
    ld [$dff8], a
    ld b, $02
    ld hl, $c210

jr_000_1470:
    ld a, [hl]
    xor $80
    ld [hl], a
    ld l, $20
    dec b
    jr nz, jr_000_1470

    ld a, $03
    call $26c7
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

Call_000_149b:
jr_000_149b:
    ld a, [de]
    ld [hl], a
    inc de
    push de
    ld de, $0020
    add hl, de
    pop de
    dec b
    jr nz, jr_000_149b

    ret


    db $3e, $01, $e0, $ff, $af, $e0, $01, $e0

    ld [bc], a
    ldh [rIF], a

Call_000_14b3:
    call $2874
    call Call_000_2801
    ld de, $4d1f
    call $283f
    call Call_000_17ee
    ld hl, $c200
    ld de, $2723
    ld c, $02
    call Call_000_17da
    ld de, $c201
    call Call_000_14f1
    ldh a, [$c0]
    ld e, $12
    ld [de], a
    inc de
    cp $37
    ld a, $1c
    jr z, jr_000_14e1

    ld a, $1d

jr_000_14e1:
    ld [de], a
    call $26c5
    call Display_TypeA_Level_Select_Top_Score_screen
    ld a, $d3
    ldh [rLCDC], a
    ld a, $0e
    ldh [$e1], a
    ret


Call_000_14f1:
    ld a, $01
    ld [$dfe0], a

Call_000_14f6:
    ldh a, [$c1]
    push af
    sub $1c
    add a
    ld c, a
    ld b, $00
    ld hl, $150c
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


    ld [hl], b
    scf
    ld [hl], b
    ld [hl], a
    add b
    scf
    add b
    ld [hl], a

Call_000_1514:
    ld de, $c200
    call Call_000_17ca
    ld hl, $ffc1
    ld a, [hl]
    bit 3, b
    jp nz, Jump_000_15c7

    bit 0, b
    jp nz, Jump_000_15c7

    bit 1, b
    jr nz, jr_000_156d

jr_000_152c:
    inc e
    bit 4, b
    jr nz, jr_000_1557

    bit 5, b
    jr nz, jr_000_1562

    bit 6, b
    jr nz, jr_000_154f

    bit 7, b
    jp z, Jump_000_15c3

    cp $1e
    jr nc, jr_000_154b

    add $02

jr_000_1544:
    ld [hl], a
    call Call_000_14f1
    call Display_TypeA_Level_Select_Top_Score_screen

jr_000_154b:
    call $26c5
    ret


jr_000_154f:
    cp $1e
    jr c, jr_000_154b

    sub $02
    jr jr_000_1544

jr_000_1557:
    cp $1d
    jr z, jr_000_154b

    cp $1f
    jr z, jr_000_154b

    inc a
    jr jr_000_1544

jr_000_1562:
    cp $1c
    jr z, jr_000_154b

    cp $1e
    jr z, jr_000_154b

    dec a
    jr jr_000_1544

jr_000_156d:
    push af
    ldh a, [$c5]
    and a
    jr z, jr_000_1576

    pop af
    jr jr_000_152c

jr_000_1576:
    pop af
    ld a, $0e
    jr jr_000_15d6

Display_TypeA_Level_Select_Top_Score_screen::
    ldh a, [$c1]
    sub $17
    cp $08
    jr nz, jr_000_1585

    ld a, $ff

jr_000_1585:
    ld [$dfe8], a
    ret


    ld de, $c210
    call Call_000_17ca
    ld hl, $ffc0
    ld a, [hl]
    bit 3, b
    jr nz, jr_000_15c7

    bit 0, b
    jr nz, jr_000_15db

    inc e
    inc e
    bit 4, b
    jr nz, jr_000_15af

    bit 5, b
    jr z, jr_000_15c3

    cp $37
    jr z, jr_000_15c3

    ld a, $37
    ld b, $1c
    jr jr_000_15b7

jr_000_15af:
    cp $77
    jr z, jr_000_15c3

    ld a, $77
    ld b, $1d

jr_000_15b7:
    ld [hl], a
    push af
    ld a, $01
    ld [$dfe0], a
    pop af
    ld [de], a
    inc de
    ld a, b

jr_000_15c2:
    ld [de], a

Jump_000_15c3:
jr_000_15c3:
    call $26c5
    ret


Jump_000_15c7:
jr_000_15c7:
    ld a, $02
    ld [$dfe0], a
    ldh a, [$c0]
    cp $37
    ld a, $10
    jr z, jr_000_15d6

    ld a, $12

jr_000_15d6:
    ldh [$e1], a
    xor a
    jr jr_000_15c2

jr_000_15db:
    ld a, $0f
    jr jr_000_15d6

    call $2874
    ld de, $4e87
    call $283f
    call Call_000_1960
    call Call_000_17ee
    ld hl, $c200
    ld de, $272f
    ld c, $01
    call Call_000_17da
    ld de, $c201
    ldh a, [$c2]
    ld hl, $1679
    call Call_000_17b2
    call $26c5
    call Call_000_17f9
    call Call_000_192e
    ld a, $d3
    ldh [rLCDC], a
    ld a, $11
    ldh [$e1], a

    db $f0, $c7, $a7, $20, $04, $cd, $7b, $15, $c9, $3e, $15, $e0, $e1, $c9, $11, $00
    db $c2, $cd, $ca, $17

Display_TypeB_Level_Select_High_Top_Score_screen::
    ld hl, $ffc2
    ld a, $0a
    bit 3, b
    jr nz, @-$10

    bit 0, b
    jr nz, @-$14

    ld a, $08
    bit 1, b
    jr nz, @-$1a

    ld a, [hl]
    bit 4, b
    jr nz, jr_000_1655

    bit 5, b
    jr nz, jr_000_166b

    bit 6, b
    jr nz, jr_000_1671

    bit 7, b
    jr z, jr_000_1667

    cp $05
    jr nc, jr_000_1667

    add $05
    jr jr_000_165a

jr_000_1655:
    cp $09
    jr z, jr_000_1667

    inc a

jr_000_165a:
    ld [hl], a
    ld de, $c201
    ld hl, $1679
    call Call_000_17b2
    call Call_000_17f9

jr_000_1667:
    call $26c5
    ret


jr_000_166b:
    and a
    jr z, jr_000_1667

    dec a
    jr jr_000_165a

jr_000_1671:
    cp $05
    jr c, jr_000_1667

    sub $05
    jr jr_000_165a

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
    jr nc, @+$52

    ld b, b
    ld d, b
    ld d, b
    ld d, b
    ld h, b
    ld d, b
    ld [hl], b
    call $2874
    ld de, $4fef
    call $283f
    call Call_000_17ee
    ld hl, $c200
    ld de, $2735
    ld c, $02
    call Call_000_17da
    ld de, $c201
    ldh a, [$c3]
    ld hl, $1736
    call Call_000_17b2
    ld de, $c211
    ldh a, [$c4]
    ld hl, $17a5
    call Call_000_17b2
    call $26c5
    call Call_000_1813
    call Call_000_192e
    ld a, $d3
    ldh [rLCDC], a
    ld a, $13
    ldh [$e1], a
    ldh a, [$c7]
    and a
    jr nz, @+$06

    db $cd
    ld a, e

    db $15, $c9, $3e, $15, $e0, $e1, $c9, $e0, $e1, $af, $12, $c9, $11, $00, $c2, $cd
    db $ca, $17, $21, $c3

    rst $38
    ld a, $0a
    bit 3, b
    jr nz, @-$12

    ld a, $14
    bit 0, b
    jr nz, @-$18

    ld a, $08
    bit 1, b
    jr nz, @-$1e

    ld a, [hl]
    bit 4, b
    jr nz, jr_000_1712

    bit 5, b
    jr nz, jr_000_1728

    bit 6, b
    jr nz, jr_000_172e

    bit 7, b
    jr z, jr_000_1724

    cp $05
    jr nc, jr_000_1724

    add $05
    jr jr_000_1717

jr_000_1712:
    cp $09
    jr z, jr_000_1724

    inc a

jr_000_1717:
    ld [hl], a
    ld de, $c201
    ld hl, $1736
    call Call_000_17b2
    call Call_000_1813

jr_000_1724:
    call $26c5
    ret


jr_000_1728:
    and a
    jr z, jr_000_1724

    dec a
    jr jr_000_1717

jr_000_172e:
    cp $05
    jr c, jr_000_1724

    sub $05
    jr jr_000_1717

    ld b, b
    jr jr_000_1779

    jr z, jr_000_177b

    jr c, jr_000_177d

    ld c, b
    ld b, b
    ld e, b
    ld d, b

    db $18, $50, $28, $50, $38, $50, $48, $50, $58, $e0, $e1, $af, $12

    ret


    ld de, $c210
    call Call_000_17ca
    ld hl, $ffc4
    ld a, $0a
    bit 3, b
    jr nz, @-$12

    bit 0, b
    jr nz, @-$16

    ld a, $13
    bit 1, b
    jr nz, @-$1c

    ld a, [hl]
    bit 4, b
    jr nz, jr_000_1781

    bit 5, b
    jr nz, jr_000_1797

    bit 6, b
    jr nz, jr_000_179d

    bit 7, b
    jr z, jr_000_1793

jr_000_1779:
    cp $03

jr_000_177b:
    jr nc, jr_000_1793

jr_000_177d:
    add $03
    jr jr_000_1786

jr_000_1781:
    cp $05
    jr z, jr_000_1793

    inc a

jr_000_1786:
    ld [hl], a
    ld de, $c211

Fill_c000_to_c09f_with_0::
    ld hl, $17a5
    call Call_000_17b2
    call Call_000_1813

jr_000_1793:
    call $26c5
    ret


jr_000_1797:
    and a
    jr z, jr_000_1793

    dec a
    jr jr_000_1786

jr_000_179d:
    cp $03
    jr c, jr_000_1793

    sub $03
    jr jr_000_1786

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

Call_000_17b2:
    push af
    ld a, $01
    ld [$dfe0], a
    pop af

Call_000_17b9:
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


Call_000_17ca:
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


Call_000_17da:
jr_000_17da:
    push hl
    ld b, $06

jr_000_17dd:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_17dd

    pop hl
    ld a, $10
    add l
    ld l, a
    dec c
    jr nz, jr_000_17da

    ld [hl], $80
    ret


Call_000_17ee:
    xor a
    ld hl, $c000
    ld b, $a0

jr_000_17f4:
    ld [hl+], a
    dec b
    jr nz, jr_000_17f4

    ret


Call_000_17f9:
    call Call_000_1960
    ldh a, [$c2]
    ld hl, $d654
    ld de, $001b

jr_000_1804:
    and a
    jr z, jr_000_180b

    dec a
    add hl, de
    jr jr_000_1804

jr_000_180b:
    inc hl
    inc hl
    push hl
    pop de
    call Call_000_1864
    ret


Call_000_1813:
    call Call_000_1960
    ldh a, [$c3]
    ld hl, $d000
    ld de, $00a2

jr_000_181e:
    and a
    jr z, jr_000_1825

    dec a
    add hl, de
    jr jr_000_181e

jr_000_1825:
    ldh a, [$c4]
    ld de, $001b

jr_000_182a:
    and a
    jr z, jr_000_1831

    dec a
    add hl, de
    jr jr_000_182a

jr_000_1831:
    inc hl
    inc hl
    push hl
    pop de
    call Call_000_1864
    ret


Call_000_1839:
    ld b, $03

jr_000_183b:
    ld a, [hl]
    and $f0
    jr nz, jr_000_184b

    inc e
    ld a, [hl-]
    and $0f
    jr nz, jr_000_1855

    inc e
    dec b
    jr nz, jr_000_183b

    ret


jr_000_184b:
    ld a, [hl]
    and $f0
    swap a
    ld [de], a
    inc e
    ld a, [hl-]
    and $0f

jr_000_1855:
    ld [de], a
    inc e
    dec b
    jr nz, jr_000_184b

    ret


Call_000_185b:
    ld b, $03

Call_000_185d:
jr_000_185d:
    ld a, [hl-]
    ld [de], a
    dec de
    dec b
    jr nz, jr_000_185d

    ret


Call_000_1864:
    ld a, d
    ldh [$fb], a
    ld a, e
    ldh [$fc], a
    ld c, $03

jr_000_186c:
    ld hl, $c0a2
    push de
    ld b, $03

jr_000_1872:
    ld a, [de]
    sub [hl]
    jr c, jr_000_1886

    jr nz, jr_000_187d

    dec l
    dec de
    dec b
    jr nz, jr_000_1872

jr_000_187d:
    pop de
    inc de
    inc de
    inc de
    dec c
    jr nz, jr_000_186c

    jr jr_000_18e4

jr_000_1886:
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

jr_000_1898:
    dec c
    jr z, jr_000_18a0

    call Call_000_185b
    jr jr_000_1898

jr_000_18a0:
    ld hl, $c0a2
    ld b, $03

jr_000_18a5:
    ld a, [hl-]
    ld [de], a
    dec e
    dec b
    jr nz, jr_000_18a5

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

jr_000_18bc:
    dec c
    jr z, jr_000_18c6

    ld b, $06
    call Call_000_185d
    jr jr_000_18bc

jr_000_18c6:
    ld a, $60
    ld b, $05

jr_000_18ca:
    ld [de], a
    dec de
    dec b
    jr nz, jr_000_18ca

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

jr_000_18e4:
    ld de, $c9ac
    ldh a, [$fb]
    ld h, a
    ldh a, [$fc]
    ld l, a
    ld b, $03

jr_000_18ef:
    push hl
    push de
    push bc
    call Call_000_1839
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
    jr nz, jr_000_18ef

    dec hl
    dec hl
    ld b, $03
    ld de, $c9a4

jr_000_190e:
    push de
    ld c, $06

jr_000_1911:
    ld a, [hl+]
    and a
    jr z, jr_000_191a

    ld [de], a
    inc de
    dec c
    jr nz, jr_000_1911

jr_000_191a:
    pop de
    push hl
    ld hl, $0020
    add hl, de
    push hl
    pop de
    pop hl
    dec b
    jr nz, jr_000_190e

    call Call_000_26a5
    ld a, $01
    ldh [$e8], a
    ret


Call_000_192e:
    ldh a, [$e8]
    and a
    ret z

    ld hl, $99a4
    ld de, $c9a4
    ld c, $06

jr_000_193a:
    push hl

jr_000_193b:
    ld b, $06

jr_000_193d:
    ld a, [de]
    ld [hl+], a
    inc e
    dec b
    jr nz, jr_000_193d

    inc e
    inc l
    inc e
    inc l
    dec c
    jr z, jr_000_195b

    bit 0, c
    jr nz, jr_000_193b

    pop hl
    ld de, $0020
    add hl, de
    push hl
    pop de
    ld a, $30
    add d
    ld d, a
    jr jr_000_193a

jr_000_195b:
    pop hl
    xor a
    ldh [$e8], a
    ret


Call_000_1960:
    ld hl, $c9a4
    ld de, $0020
    ld a, $60
    ld c, $03

jr_000_196a:
    ld b, $0e
    push hl

jr_000_196d:
    ld [hl+], a
    dec b
    jr nz, jr_000_196d

    pop hl
    add hl, de
    dec c
    jr nz, jr_000_196a

    ret


    ldh a, [$c8]
    ld hl, $99e4
    ld de, $ffe0

jr_000_197f:
    dec a
    jr z, jr_000_1985

    add hl, de
    jr jr_000_197f

jr_000_1985:
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
    jr nz, jr_000_19a8

    ld a, $07
    ldh [$a6], a
    ldh a, [$9c]
    xor $01
    ldh [$9c], a
    ld a, [de]
    jr z, jr_000_19a5

    ld a, $2f

jr_000_19a5:
    call Call_000_1a62

jr_000_19a8:
    ldh a, [$81]
    ld b, a
    ldh a, [$80]
    ld c, a
    ld a, $17
    bit 6, b
    jr nz, jr_000_19eb

    bit 6, c
    jr nz, jr_000_19e3

    bit 7, b
    jr nz, jr_000_1a14

    bit 7, c
    jr nz, jr_000_1a0c

    bit 0, b
    jr nz, jr_000_1a30

    bit 1, b
    jp nz, Jump_000_1a52

    bit 3, b
    ret z

jr_000_19cc:
    ld a, [de]
    call Call_000_1a62
    call Display_TypeA_Level_Select_Top_Score_screen
    xor a
    ldh [$c7], a
    ldh a, [$c0]
    cp $37
    ld a, $11
    jr z, jr_000_19e0

    ld a, $13

jr_000_19e0:
    ldh [$e1], a
    ret


jr_000_19e3:
    ldh a, [$aa]
    dec a
    ldh [$aa], a
    ret nz

    ld a, $09

jr_000_19eb:
    ldh [$aa], a
    ld b, $26
    ldh a, [$f4]
    and a
    jr z, jr_000_19f6

    ld b, $27

jr_000_19f6:
    ld a, [de]
    cp b
    jr nz, jr_000_1a04

    ld a, $2e

jr_000_19fc:
    inc a

jr_000_19fd:
    ld [de], a
    ld a, $01
    ld [$dfe0], a
    ret


jr_000_1a04:
    cp $2f
    jr nz, jr_000_19fc

    ld a, $0a
    jr jr_000_19fd

jr_000_1a0c:
    ldh a, [$aa]
    dec a
    ldh [$aa], a
    ret nz

    ld a, $09

jr_000_1a14:
    ldh [$aa], a
    ld b, $26
    ldh a, [$f4]
    and a
    jr z, jr_000_1a1f

    ld b, $27

jr_000_1a1f:
    ld a, [de]
    cp $0a
    jr nz, jr_000_1a29

    ld a, $30

jr_000_1a26:
    dec a
    jr jr_000_19fd

jr_000_1a29:
    cp $2f
    jr nz, jr_000_1a26

    ld a, b
    jr jr_000_19fd

jr_000_1a30:
    ld a, [de]
    call Call_000_1a62
    ld a, $02
    ld [$dfe0], a
    ldh a, [$c6]
    inc a
    cp $06
    jr z, jr_000_19cc

    ldh [$c6], a
    inc de
    ld a, [de]
    cp $60
    jr nz, jr_000_1a4b

    ld a, $0a
    ld [de], a

jr_000_1a4b:
    ld a, d
    ldh [$c9], a
    ld a, e
    ldh [$ca], a
    ret


Jump_000_1a52:
    ldh a, [$c6]
    and a
    ret z

    ld a, [de]
    call Call_000_1a62
    ldh a, [$c6]
    dec a
    ldh [$c6], a
    dec de
    jr jr_000_1a4b

Call_000_1a62:
    ld b, a

Call_000_1a63:
jr_000_1a63:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1a63

    ld [hl], b
    ret


    call $2874
    xor a
    ld [$c210], a
    ldh [$98], a
    ldh [$9c], a
    ldh [$9b], a
    ldh [$fb], a
    ldh [$9f], a
    ld a, $2f
    call Call_000_2032
    call Call_000_204d
    call Call_000_26a5
    xor a
    ldh [$e3], a
    ldh [$e7], a
    call Call_000_17ee
    ldh a, [$c0]
    ld de, $403f
    ld hl, $ffc3
    cp $77
    ld a, $50
    jr z, jr_000_1aa5

    ld a, $f1
    ld hl, $ffc2
    ld de, $3ed7

jr_000_1aa5:
    push de
    ldh [$e6], a
    ld a, [hl]
    ldh [$a9], a
    call $283f
    pop de
    ld hl, $9c00
    call $2842
    ld de, $288d
    ld hl, $9c63
    ld c, $0a
    call Call_000_1fd8
    ld h, $98
    ldh a, [$e6]
    ld l, a
    ldh a, [$a9]
    ld [hl], a
    ld h, $9c
    ld [hl], a
    ldh a, [$f4]
    and a
    jr z, jr_000_1ad7

    inc hl
    ld [hl], $27
    ld h, $98
    ld [hl], $27

jr_000_1ad7:
    ld hl, $c200
    ld de, $2713
    call $270a
    ld hl, $c210
    ld de, $271b
    call $270a
    ld hl, $9951
    ldh a, [$c0]
    cp $77
    ld a, $25
    jr z, jr_000_1af5

    xor a

jr_000_1af5:
    ldh [$9e], a
    and $0f
    ld [hl-], a
    jr z, jr_000_1afe

    ld [hl], $02

jr_000_1afe:
    call $1b43
    call Call_000_2062
    db $cd
    ld h, d

    db $20, $cd, $62, $20, $cd, $d7, $26, $af, $e0, $a0, $f0, $c0, $fe, $77, $20, $25
    db $3e, $34, $e0, $99, $f0

    call nz, $b021
    sbc b
    ld [hl], a
    ld h, $9c
    ld [hl], a
    and a
    jr z, jr_000_1b3b

    ld b, a
    ldh a, [$e4]
    and a
    jr z, jr_000_1b31

    call Call_000_1b76
    jr jr_000_1b3b

jr_000_1b31:
    ld a, b
    ld de, $ffc0
    ld hl, $9a02
    call Call_000_1bc3

jr_000_1b3b:
    ld a, $d3
    ldh [rLCDC], a
    xor a

    db $e0, $e1, $c9, $f0, $a9, $5f, $f0, $f4, $a7, $28, $0a, $3e, $0a, $83, $fe, $15
    db $38, $02, $3e, $14, $5f, $21, $61, $1b, $16, $00, $19, $7e, $e0, $99, $e0, $9a
    db $c9, $34, $30, $2c, $28, $24, $20, $1b

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

Call_000_1b76:
    ld hl, $99c2
    ld de, $1b9b
    ld c, $04

jr_000_1b7e:
    ld b, $0a
    push hl

jr_000_1b81:
    ld a, [de]
    ld [hl], a
    push hl
    ld a, h
    add $30
    ld h, a
    ld a, [de]
    ld [hl], a
    pop hl
    inc l
    inc de
    dec b
    jr nz, jr_000_1b81

    pop hl
    push de
    ld de, $0020
    add hl, de
    pop de
    dec c
    jr nz, jr_000_1b7e

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

Call_000_1bc3:
    ld b, a

jr_000_1bc4:
    dec b
    jr z, jr_000_1bca

    add hl, de
    jr jr_000_1bc4

jr_000_1bca:
    ldh a, [rDIV]
    ld b, a

jr_000_1bcd:
    ld a, $80

jr_000_1bcf:
    dec b
    jr z, jr_000_1bda

    cp $80
    jr nz, jr_000_1bcd

    ld a, $2f
    jr jr_000_1bcf

jr_000_1bda:
    cp $2f
    jr z, jr_000_1be6

    ldh a, [rDIV]
    and $07
    or $80
    jr jr_000_1be8

jr_000_1be6:
    ldh [$a0], a

jr_000_1be8:
    push af
    ld a, l
    and $0f
    cp $0b
    jr nz, jr_000_1bfb

    ldh a, [$a0]
    cp $2f
    jr z, jr_000_1bfb

    pop af
    ld a, $2f
    jr jr_000_1bfc

jr_000_1bfb:
    pop af

jr_000_1bfc:
    ld [hl], a
    push hl
    push af
    ldh a, [$c5]
    and a
    jr nz, jr_000_1c08

    ld de, $3000
    add hl, de

jr_000_1c08:
    pop af
    ld [hl], a
    pop hl
    inc hl
    ld a, l
    and $0f
    cp $0c
    jr nz, jr_000_1bca

    xor a
    ldh [$a0], a
    ld a, h
    and $0f
    cp $0a
    jr z, jr_000_1c23

jr_000_1c1d:
    ld de, $0016
    add hl, de
    jr jr_000_1bca

jr_000_1c23:
    ld a, l
    cp $2c
    jr nz, jr_000_1c1d

    ret


    call Call_000_1c68
    ldh a, [$ab]
    and a
    ret nz

    call Call_000_0579
    call Call_000_05af
    call Call_000_05f0
    call Call_000_2515
    call Call_000_20f7
    call Call_000_2199
    call Call_000_25f5
    call Call_000_22ad
    call Call_000_1fec
    call Call_000_0620
    ret


jr_000_1c4f:
    bit 2, a
    ret z

    ld a, [$c0de]
    xor $01
    ld [$c0de], a
    jr z, jr_000_1c65

    ld a, $80

jr_000_1c5e:
    ld [$c210], a
    call $26ea
    ret


jr_000_1c65:
    xor a
    jr jr_000_1c5e

Call_000_1c68:
    ldh a, [$80]
    and $0f
    cp $0f
    jp z, Jump_000_029a

    ldh a, [$e4]
    and a
    ret nz

    ldh a, [$81]
    bit 3, a
    jr z, jr_000_1c4f

    ldh a, [$c5]
    and a
    jr nz, jr_000_1cc5

    ld hl, $ff40
    ldh a, [$ab]
    xor $01
    ldh [$ab], a
    jr z, jr_000_1cb5

    set 3, [hl]
    ld a, $01
    ld [$df7f], a
    ld hl, $994e
    ld de, $9d4e
    ld b, $04

jr_000_1c9a:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_1c9a

    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_1c9a

    ld a, $80

jr_000_1ca8:
    ld [$c210], a

jr_000_1cab:
    ld [$c200], a
    call $26d7
    call $26ea
    ret


jr_000_1cb5:
    res 3, [hl]
    ld a, $02
    ld [$df7f], a
    ld a, [$c0de]
    and a
    jr z, jr_000_1ca8

    xor a
    jr jr_000_1cab

jr_000_1cc5:
    ldh a, [$cb]
    cp $29
    ret nz

    ldh a, [$ab]
    xor $01
    ldh [$ab], a
    jr z, jr_000_1d05

    ld a, $01
    ld [$df7f], a
    ldh a, [$d0]
    ldh [$f2], a
    ldh a, [$cf]

    db $e0, $f1, $cd, $26, $1d

    ret


Call_000_1ce3:
    ldh a, [$ab]
    and a
    ret z

    ldh a, [$cc]
    jr z, jr_000_1d24

    xor a
    ldh [$cc], a
    ldh a, [$cb]
    cp $29
    jr nz, jr_000_1cfc

    ld a, $94
    ldh [$cf], a
    ldh [$ce], a
    pop hl
    ret


jr_000_1cfc:
    xor a
    ldh [$cf], a
    ldh a, [$d0]
    cp $94
    jr z, jr_000_1d24

jr_000_1d05:
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

jr_000_1d1c:
    call Call_000_1a63
    inc l
    dec c
    jr nz, jr_000_1d1c

    ret


jr_000_1d24:
    pop hl
    ret


Call_000_1d26:
    ld hl, $98ee
    ld c, $05
    ld de, $1d38

jr_000_1d2e:
    ld a, [de]
    call Call_000_1a62
    inc de
    inc l
    dec c
    jr nz, jr_000_1d2e

    ret


    add hl, de
    ld a, [bc]
    ld e, $1c
    ld c, $3e
    add b
    ld [$c200], a
    ld [$c210], a
    call $26d7
    call $26ea
    xor a
    ldh [$98], a
    ldh [$9c], a
    call Call_000_22f3
    ld a, $87
    call Call_000_2032
    ld a, $46
    ldh [$a6], a
    ld a, $0d
    ldh [$e1], a
    ret


    ldh a, [$81]
    bit 0, a
    jr nz, jr_000_1d6a

    bit 3, a
    ret z

jr_000_1d6a:
    xor a
    ldh [$e3], a
    ldh a, [$c5]
    and a
    ld a, $16
    jr nz, jr_000_1d7e

    ldh a, [$c0]
    cp $37
    ld a, $10
    jr z, jr_000_1d7e

    ld a, $12

jr_000_1d7e:
    ldh [$e1], a
    ret


    ldh a, [$a6]
    and a
    ret nz

    ld hl, $c802
    ld de, $28dd
    call $2858
    ldh a, [$c3]
    and a
    jr z, jr_000_1dc1

    ld de, $0040
    ld hl, $c827
    call Call_000_1ddf
    ld de, $0100
    ld hl, $c887
    call Call_000_1ddf
    ld de, $0300
    ld hl, $c8e7
    call Call_000_1ddf
    ld de, $1200
    ld hl, $c947
    call Call_000_1ddf
    ld hl, $c0a0
    ld b, $03
    xor a

jr_000_1dbd:
    ld [hl+], a
    dec b
    jr nz, jr_000_1dbd

jr_000_1dc1:
    ld a, $80
    ldh [$a6], a
    ld a, $80
    ld [$c200], a
    ld [$c210], a
    call $26d7
    call $26ea
    call $7ff3
    ld a, $25
    ldh [$9e], a
    ld a, $0b
    ldh [$e1], a
    ret


Call_000_1ddf:
    push hl
    ld hl, $c0a0
    ld b, $03
    xor a

jr_000_1de6:
    ld [hl+], a
    dec b
    jr nz, jr_000_1de6

    ldh a, [$c3]
    ld b, a
    inc b

jr_000_1dee:
    ld hl, $c0a0
    call Stop_counting_if_score_reaches_999999
    dec b
    jr nz, jr_000_1dee

    pop hl
    ld b, $03
    ld de, $c0a2

jr_000_1dfd:
    ld a, [de]
    and $f0
    jr nz, jr_000_1e0c

    ld a, [de]
    and $0f
    jr nz, jr_000_1e12

    dec e
    dec b
    jr nz, jr_000_1dfd

    ret


jr_000_1e0c:
    ld a, [de]
    and $f0
    swap a
    ld [hl+], a

jr_000_1e12:
    ld a, [de]
    and $0f
    ld [hl+], a
    dec e
    dec b
    jr nz, jr_000_1e0c

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
    ld de, $5157
    call $2858
    call Call_000_17ee
    ld hl, $c200
    ld de, $2789
    ld c, $0a
    call Call_000_17da
    ld a, $10
    ld hl, $c266
    ld [hl], a
    ld l, $76
    ld [hl], a
    ld hl, $c20e
    ld de, $1e8c
    ld b, $0a

jr_000_1e55:
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    inc de
    push de
    ld de, $000e
    add hl, de
    pop de
    dec b
    jr nz, jr_000_1e55

    ldh a, [$c4]
    cp $05
    jr nz, jr_000_1e6a

    ld a, $09

jr_000_1e6a:
    inc a
    ld b, a
    ld hl, $c200
    ld de, $0010
    xor a

jr_000_1e73:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_000_1e73

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
    jr nz, jr_000_1eaa

    ld h, $1d
    jr z, jr_000_1ec1

jr_000_1e96:
    ld a, $0a
    call $26c7
    ret


    ldh a, [$a6]
    cp $14
    jr z, jr_000_1e96

    and a
    ret nz

    ld hl, $c20e
    ld de, $0010

jr_000_1eaa:
    ld b, $0a

jr_000_1eac:
    push hl
    dec [hl]
    jr nz, jr_000_1ec5

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
    jr z, jr_000_1ee4

jr_000_1ec1:
    cp $51
    jr z, jr_000_1eea

jr_000_1ec5:
    pop hl
    add hl, de
    dec b
    jr nz, jr_000_1eac

    ld a, $0a
    call $26c7
    ld a, [$dfe9]
    and a
    ret nz

    call Call_000_17ee
    ldh a, [$c4]
    cp $05
    ld a, $26
    jr z, jr_000_1ee1

    ld a, $05

jr_000_1ee1:
    ldh [$e1], a
    ret


jr_000_1ee4:
    dec l
    dec l
    ld [hl], $67
    jr jr_000_1ec5

jr_000_1eea:
    dec l
    dec l
    ld [hl], $5d
    jr jr_000_1ec5

jr_000_1ef0:
    xor a
    ld [$c0c6], a
    ld de, $c0c0
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    or l
    jp z, Jump_000_268e

    dec hl
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    ld de, $0001
    ld hl, $c0c2
    push de
    call Stop_counting_if_score_reaches_999999
    ld de, $c0c4
    ld hl, $99a5
    call Call_000_2a7e
    xor a
    ldh [$a6], a
    pop de
    ld hl, $c0a0
    call Stop_counting_if_score_reaches_999999
    ld de, $c0a2
    ld hl, $9a25
    call Call_000_2a82
    ld a, $02
    ld [$dfe0], a
    ret


Call_000_1f32:
    ld a, [$c0c6]
    and a
    ret z

    ld a, [$c0c5]
    cp $04
    jr z, jr_000_1ef0

    ld de, $0040
    ld bc, $9823
    ld hl, $c0ac
    and a
    jr z, jr_000_1f6d

    ld de, $0100
    ld bc, $9883
    ld hl, $c0b1
    cp $01
    jr z, jr_000_1f6d

    ld de, $0300
    ld bc, $98e3
    ld hl, $c0b6
    cp $02
    jr z, jr_000_1f6d

    ld de, $1200
    ld bc, $9943
    ld hl, $c0bb

jr_000_1f6d:
    call Call_000_262d
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
    jr z, jr_000_1f92

    ld a, $3f
    ldh [$a6], a
    ld a, $1b
    ldh [$cc], a
    jr jr_000_1fc9

jr_000_1f92:
    ld a, $2f
    call Call_000_2032
    ld hl, $c843
    ld de, $2992
    ld c, $07
    call Call_000_1fd8
    ld hl, $c983
    ld de, $29ca
    ld c, $06
    call Call_000_1fd8
    ldh a, [$c0]
    cp $37
    jr nz, jr_000_1fc7

    ld hl, $c0a2
    ld a, [hl]
    ld b, $58
    cp $15
    jr nc, jr_000_1fcc

    inc b
    cp $10
    jr nc, jr_000_1fcc

    inc b
    cp $05
    jr nc, jr_000_1fcc

jr_000_1fc7:
    ld a, $04

jr_000_1fc9:
    ldh [$e1], a
    ret


jr_000_1fcc:
    ld a, b
    ldh [$f3], a
    ld a, $90
    ldh [$a6], a
    ld a, $34
    ldh [$e1], a
    ret


Call_000_1fd8:
jr_000_1fd8:
    ld b, $08
    push hl

jr_000_1fdb:
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_000_1fdb

    pop hl
    push de
    ld de, $0020
    add hl, de
    pop de
    dec c
    jr nz, jr_000_1fd8

    ret


Call_000_1fec:
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
    jr nz, jr_000_201e

    add hl, bc
    ld a, [hl]
    ld de, $0100
    and a
    jr nz, jr_000_201e

    add hl, bc
    ld a, [hl]
    ld de, $0300
    and a
    jr nz, jr_000_201e

    add hl, bc
    ld de, $1200
    ld a, [hl]
    and a
    ret z

jr_000_201e:
    ld [hl], $00
    ldh a, [$a9]
    ld b, a
    inc b

jr_000_2024:
    push bc
    push de
    ld hl, $c0a0
    call Stop_counting_if_score_reaches_999999
    pop de
    pop bc
    dec b
    jr nz, jr_000_2024

    ret


Call_000_2032:
    push af
    ld a, $02
    ldh [$e3], a
    pop af
    ld hl, $c802
    ld c, $12
    ld de, $0020

jr_000_2040:
    push hl
    ld b, $0a

jr_000_2043:
    ld [hl+], a
    dec b
    jr nz, jr_000_2043

    pop hl
    add hl, de
    dec c
    jr nz, jr_000_2040

    ret


Call_000_204d:
    ld hl, $cbc2
    ld de, $0016
    ld c, $02
    ld a, $2f

jr_000_2057:
    ld b, $0a

jr_000_2059:
    ld [hl+], a
    dec b
    jr nz, jr_000_2059

    add hl, de
    dec c
    jr nz, jr_000_2057

    ret


Call_000_2062:
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
    jr nz, jr_000_207f

    ldh a, [$c5]
    and a
    jr z, jr_000_209c

jr_000_207f:
    ld h, $c3
    ldh a, [$b0]
    ld l, a
    ld e, [hl]
    inc hl
    ld a, h
    cp $c4
    jr nz, jr_000_208e

    ld hl, $c300

jr_000_208e:
    ld a, l
    ldh [$b0], a
    ldh a, [$d3]
    and a
    jr z, jr_000_20c0

    or $80
    ldh [$d3], a
    jr jr_000_20c0

jr_000_209c:
    ld h, $03

jr_000_209e:
    ldh a, [rDIV]
    ld b, a

jr_000_20a1:
    xor a

jr_000_20a2:
    dec b
    jr z, jr_000_20af

    inc a
    inc a
    inc a
    inc a
    cp $1c
    jr z, jr_000_20a1

    jr jr_000_20a2

jr_000_20af:
    ld d, a
    ldh a, [$ae]
    ld e, a
    dec h
    jr z, jr_000_20bd

    or d
    or c
    and $fc
    cp c
    jr z, jr_000_209e

jr_000_20bd:
    ld a, d
    ldh [$ae], a

jr_000_20c0:
    ld a, e
    ld [$c213], a
    call $26ea
    ldh a, [$9a]
    ldh [$99], a
    ret


jr_000_20cc:
    ld a, [$c0c7]
    and a
    jr z, jr_000_20de

    ldh a, [$81]
    and $b0
    cp $80
    jr nz, jr_000_20ff

    xor a
    ld [$c0c7], a

jr_000_20de:
    ldh a, [$a7]
    and a
    jr nz, jr_000_210c

    ldh a, [$98]
    and a
    jr nz, jr_000_210c

    ldh a, [$e3]
    and a
    jr nz, jr_000_210c

    ld a, $03
    ldh [$a7], a
    ld hl, $ffe5
    inc [hl]
    jr jr_000_211d

Call_000_20f7:
    ldh a, [$80]
    and $b0
    cp $80
    jr z, jr_000_20cc

jr_000_20ff:
    ld hl, $ffe5
    ld [hl], $00
    ldh a, [$99]
    and a
    jr z, jr_000_2110

    dec a
    ldh [$99], a

jr_000_210c:
    call $26d7
    ret


jr_000_2110:
    ldh a, [$98]
    cp $03
    ret z

    ldh a, [$e3]
    and a
    ret nz

    ldh a, [$9a]
    ldh [$99], a

jr_000_211d:
    ld hl, $c201
    ld a, [hl]
    ldh [$a0], a
    add $08
    ld [hl], a
    call $26d7
    call Call_000_25c7
    and a
    ret z

    ldh a, [$a0]
    ld hl, $c201
    ld [hl], a
    call $26d7
    ld a, $01
    ldh [$98], a
    ld [$c0c7], a
    ldh a, [$e5]
    and a
    jr z, jr_000_215e

    ld c, a
    ldh a, [$c0]
    cp $37
    jr z, jr_000_2181

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

jr_000_215b:
    xor a
    ldh [$e5], a

jr_000_215e:
    ld a, [$c201]
    cp $18
    ret nz

    ld a, [$c202]
    cp $3f
    ret nz

    ld hl, $fffb
    ld a, [hl]
    cp $01
    jr nz, jr_000_217f

    call $7ff3
    ld a, $01
    ldh [$e1], a
    ld a, $02
    ld [$dff0], a
    ret


jr_000_217f:
    inc [hl]
    ret


jr_000_2181:
    xor a

jr_000_2182:
    dec c
    jr z, jr_000_2189

    inc a
    daa
    jr jr_000_2182

jr_000_2189:
    ld e, a
    ld d, $00
    ld hl, $c0a0
    call Stop_counting_if_score_reaches_999999
    ld a, $01
    ld [$c0ce], a
    jr jr_000_215b

Call_000_2199:
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

jr_000_21ae:
    ld c, $0a
    push hl

jr_000_21b1:
    ld a, [hl+]
    cp $2f
    jp z, Jump_000_2238

    dec c
    jr nz, jr_000_21b1

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

jr_000_21c6:
    push de
    ld de, $0020
    add hl, de
    pop de
    dec b
    jr nz, jr_000_21ae

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
    jr z, jr_000_21fb

    ldh a, [$e7]
    add b
    ldh [$e7], a
    ld a, b
    add [hl]
    daa
    ld [hl+], a
    ld a, $00
    adc [hl]
    daa
    ld [hl], a
    jr nc, jr_000_220a

    ld [hl], $99
    dec hl
    ld [hl], $99
    jr jr_000_220a

jr_000_21fb:
    ld a, [hl]
    or a
    sub b
    jr z, jr_000_223b

    jr c, jr_000_223b

    daa
    ld [hl], a
    and $f0
    cp $90
    jr z, jr_000_223b

jr_000_220a:
    ld a, b
    ld c, $06
    ld hl, $c0ac
    ld b, $00
    cp $01
    jr z, jr_000_222f

    ld hl, $c0b1
    ld b, $01
    cp $02
    jr z, jr_000_222f

    ld hl, $c0b6
    ld b, $02
    cp $03
    jr z, jr_000_222f

    ld hl, $c0bb
    ld b, $04
    ld c, $07

jr_000_222f:
    inc [hl]
    ld a, b
    ldh [$dc], a
    ld a, c
    ld [$dfe0], a
    ret


Jump_000_2238:
    pop hl
    jr jr_000_21c6

jr_000_223b:
    xor a
    ldh [$9e], a
    jr jr_000_220a

Call_000_2240:
    ldh a, [$98]
    cp $03
    ret nz

    ldh a, [$a6]
    and a
    ret nz

    ld de, $c0a3
    ldh a, [$9c]
    bit 0, a
    jr nz, jr_000_228e

    ld a, [de]
    and a
    jr z, jr_000_22a8

jr_000_2256:
    sub $30
    ld h, a
    inc de
    ld a, [de]
    ld l, a
    ldh a, [$9c]
    cp $06
    ld a, $8c
    jr nz, jr_000_2266

    ld a, $2f

jr_000_2266:
    ld c, $0a

jr_000_2268:
    ld [hl+], a
    dec c
    jr nz, jr_000_2268

    inc de
    ld a, [de]
    and a
    jr nz, jr_000_2256

jr_000_2271:
    ldh a, [$9c]
    inc a
    ldh [$9c], a
    cp $07
    jr z, jr_000_227f

    ld a, $0a
    ldh [$a6], a
    ret


jr_000_227f:
    xor a
    ldh [$9c], a
    ld a, $0d
    ldh [$a6], a
    ld a, $01
    ldh [$e3], a

jr_000_228a:
    xor a
    ldh [$98], a
    ret


jr_000_228e:
    ld a, [de]
    ld h, a
    sub $30
    ld c, a
    inc de
    ld a, [de]
    ld l, a
    ld b, $0a

jr_000_2298:
    ld a, [hl]
    push hl
    ld h, c
    ld [hl], a
    pop hl
    inc hl
    dec b
    jr nz, jr_000_2298

    inc de
    ld a, [de]
    and a
    jr nz, jr_000_228e

    jr jr_000_2271

jr_000_22a8:
    call Call_000_2062
    jr jr_000_228a

Call_000_22ad:
    ldh a, [$a6]
    and a
    ret nz

    ldh a, [$e3]
    cp $01
    ret nz

    ld de, $c0a3
    ld a, [de]

jr_000_22ba:
    ld h, a
    inc de
    ld a, [de]
    ld l, a
    push de
    push hl
    ld bc, $ffe0
    add hl, bc
    pop de

jr_000_22c5:
    push hl
    ld b, $0a

jr_000_22c8:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_22c8

    pop hl
    push hl
    pop de
    ld bc, $ffe0
    add hl, bc
    ld a, h
    cp $c7
    jr nz, jr_000_22c5

    pop de
    inc de
    ld a, [de]
    and a
    jr nz, jr_000_22ba

    ld hl, $c802
    ld a, $2f
    ld b, $0a

jr_000_22e7:
    ld [hl+], a
    dec b
    jr nz, jr_000_22e7

    call Call_000_22f3
    ld a, $02
    ldh [$e3], a
    ret


Call_000_22f3:
    ld hl, $c0a3
    xor a
    ld b, $09

jr_000_22f9:
    ld [hl+], a
    dec b
    jr nz, jr_000_22f9

    ret


Call_000_22fe:
    ldh a, [$e3]
    cp $02
    ret nz

    ld hl, $9a22
    ld de, $ca22
    call Call_000_2506
    ret


Call_000_230d:
    ldh a, [$e3]
    cp $03
    ret nz

    ld hl, $9a02
    ld de, $ca02
    call Call_000_2506
    ret


Call_000_231c:
    ldh a, [$e3]
    cp $04
    ret nz

    ld hl, $99e2
    ld de, $c9e2
    call Call_000_2506
    ret


Call_000_232b:
    ldh a, [$e3]
    cp $05
    ret nz

    ld hl, $99c2
    ld de, $c9c2
    call Call_000_2506
    ret


Call_000_233a:
    ldh a, [$e3]
    cp $06
    ret nz

    ld hl, $99a2
    ld de, $c9a2
    call Call_000_2506
    ret


Call_000_2349:
    ldh a, [$e3]
    cp $07
    ret nz

    ld hl, $9982
    ld de, $c982
    call Call_000_2506
    ret


Call_000_2358:
    ldh a, [$e3]
    cp $08
    ret nz

    ld hl, $9962
    ld de, $c962
    call Call_000_2506
    ldh a, [$c5]
    and a
    ldh a, [$e1]
    jr nz, jr_000_2375

    and a
    ret nz

jr_000_236f:
    ld a, $01
    ld [$dff8], a
    ret


jr_000_2375:
    cp $1a
    ret nz

    ldh a, [$d4]
    and a
    jr z, jr_000_236f

    ld a, $05
    ld [$dfe0], a
    ret


Call_000_2383:
    ldh a, [$e3]
    cp $09
    ret nz

    ld hl, $9942
    ld de, $c942
    call Call_000_2506
    ret


Call_000_2392:
    ldh a, [$e3]
    cp $0a
    ret nz

    ld hl, $9922
    ld de, $c922
    call Call_000_2506
    ret


Call_000_23a1:
    ldh a, [$e3]
    cp $0b
    ret nz

    ld hl, $9902
    ld de, $c902
    call Call_000_2506
    ret


Call_000_23b0:
    ldh a, [$e3]
    cp $0c
    ret nz

    ld hl, $98e2
    ld de, $c8e2
    call Call_000_2506
    ret


Call_000_23bf:
    ldh a, [$e3]
    cp $0d
    ret nz

    ld hl, $98c2
    ld de, $c8c2
    call Call_000_2506
    ret


Call_000_23ce:
    ldh a, [$e3]
    cp $0e
    ret nz

    ld hl, $98a2
    ld de, $c8a2
    call Call_000_2506
    ret


Call_000_23dd:
    ldh a, [$e3]
    cp $0f
    ret nz

    ld hl, $9882
    ld de, $c882
    call Call_000_2506
    ret


Call_000_23ec:
    ldh a, [$e3]
    cp $10
    ret nz

    ld hl, $9862
    ld de, $c862
    call Call_000_2506
    call Call_000_24ab
    ret


Call_000_23fe:
    ldh a, [$e3]
    cp $11
    ret nz

    ld hl, $9842
    ld de, $c842
    call Call_000_2506
    ld hl, $9c6d
    call Call_000_249b
    ld a, $01
    ldh [$e0], a
    ret


Call_000_2417:
    ldh a, [$e3]
    cp $12
    ret nz

    ld hl, $9822
    ld de, $c822
    call Call_000_2506
    ld hl, $986d
    call Call_000_249b
    ret


Call_000_242c:
    ldh a, [$e3]
    cp $13
    ret nz

    ld [$c0c7], a
    ld hl, $9802
    ld de, $c802
    call Call_000_2506
    xor a
    ldh [$e3], a
    ldh a, [$c5]
    and a
    ldh a, [$e1]
    jr nz, jr_000_248f

    and a
    ret nz

jr_000_2449:
    ld hl, $994e
    ld de, $ff9f
    ld c, $02
    ldh a, [$c0]
    cp $37
    jr z, jr_000_245f

    ld hl, $9950
    ld de, $ff9e
    ld c, $01

jr_000_245f:
    call Call_000_2a84
    ldh a, [$c0]
    cp $37
    jr z, jr_000_248b

    ldh a, [$9e]
    and a
    jr nz, jr_000_248b

    ld a, $64
    ldh [$a6], a
    ld a, $02
    ld [$dfe8], a
    ldh a, [$c5]
    and a
    jr z, jr_000_247e

    ldh [$d5], a
    ret


jr_000_247e:
    ldh a, [$c3]
    cp $09
    ld a, $05
    jr nz, jr_000_2488

    ld a, $22

jr_000_2488:
    ldh [$e1], a
    ret


jr_000_248b:
    call Call_000_2062
    ret


jr_000_248f:
    cp $1a
    ret nz

    ldh a, [$d4]
    and a
    jr z, jr_000_2449

    xor a
    ldh [$d4], a
    ret


Call_000_249b:
    ldh a, [$e1]
    and a
    ret nz

    ldh a, [$c0]
    cp $37
    ret nz

    ld de, $c0a2
    call Call_000_2a7e
    ret


Call_000_24ab:
    ldh a, [$e1]
    and a
    ret nz

    ldh a, [$c0]
    cp $37
    ret nz

    ld hl, $ffa9
    ld a, [hl]
    cp $09
    jr nc, jr_000_24fd

    ldh a, [$e7]
    cp $0a
    ret c

    sub $0a

jr_000_24c3:
    ldh [$e7], a
    inc [hl]
    ld a, [hl]
    cp $15
    jr nz, jr_000_24cd

    ld [hl], $14

jr_000_24cd:
    ld b, [hl]
    xor a

jr_000_24cf:
    or a
    inc a
    daa
    dec b
    jr z, jr_000_24d7

    jr jr_000_24cf

jr_000_24d7:
    ld b, a
    and $0f
    ld c, a
    ld hl, $98f1

jr_000_24de:
    ld [hl], c
    ld h, $9c
    ld [hl], c
    ld a, b
    and $f0
    jr z, jr_000_24f4

    swap a
    ld c, a
    ld a, l
    cp $f0
    jr z, jr_000_24f4

    ld hl, $98f0
    jr jr_000_24de

jr_000_24f4:
    ld a, $02
    ld [$dfe0], a
    call $1b43
    ret


jr_000_24fd:
    ldh a, [$e7]
    cp $14
    ret c

    sub $14
    jr jr_000_24c3

Call_000_2506:
    ld b, $0a

jr_000_2508:
    ld a, [de]
    ld [hl], a
    inc l
    inc e
    dec b
    jr nz, jr_000_2508

    ldh a, [$e3]
    inc a
    ldh [$e3], a
    ret


Call_000_2515:
    ld hl, $c203
    ld a, [hl]
    ldh [$a0], a
    ldh a, [$81]
    ld b, a
    bit 1, b
    jr nz, jr_000_2534

    bit 0, b
    jr z, jr_000_255d

    ld a, [hl]
    and $03
    jr z, jr_000_252e

    dec [hl]
    jr jr_000_2542

jr_000_252e:
    ld a, [hl]
    or $03
    ld [hl], a
    jr jr_000_2542

jr_000_2534:
    ld a, [hl]
    and $03
    cp $03
    jr z, jr_000_253e

    inc [hl]
    jr jr_000_2542

jr_000_253e:
    ld a, [hl]
    and $fc
    ld [hl], a

jr_000_2542:
    ld a, $03
    ld [$dfe0], a
    call $26d7
    call Call_000_25c7
    and a
    jr z, jr_000_255d

    xor a
    ld [$dfe0], a
    ld hl, $c203
    ldh a, [$a0]
    ld [hl], a
    call $26d7

jr_000_255d:
    ld hl, $c202
    ldh a, [$81]
    ld b, a
    ldh a, [$80]
    ld c, a
    ld a, [hl]
    ldh [$a0], a
    bit 4, b
    ld a, $17
    jr nz, jr_000_257b

    bit 4, c
    jr z, jr_000_25a0

    ldh a, [$aa]
    dec a
    ldh [$aa], a
    ret nz

    ld a, $09

jr_000_257b:
    ldh [$aa], a
    ld a, [hl]
    add $08
    ld [hl], a
    call $26d7
    ld a, $04
    ld [$dfe0], a
    call Call_000_25c7
    and a
    ret z

jr_000_258e:
    ld hl, $c202
    xor a
    ld [$dfe0], a
    ldh a, [$a0]
    ld [hl], a
    call $26d7
    ld a, $01

jr_000_259d:
    ldh [$aa], a
    ret


jr_000_25a0:
    bit 5, b
    ld a, $17
    jr nz, jr_000_25b2

    bit 5, c
    jr z, jr_000_259d

    ldh a, [$aa]
    dec a
    ldh [$aa], a
    ret nz

    ld a, $09

jr_000_25b2:
    ldh [$aa], a
    ld a, [hl]
    sub $08
    ld [hl], a
    ld a, $04
    ld [$dfe0], a
    call $26d7
    call Call_000_25c7
    and a
    ret z

    jr jr_000_258e

Call_000_25c7:
    ld hl, $c010
    ld b, $04

jr_000_25cc:
    ld a, [hl+]
    ldh [$b2], a
    ld a, [hl+]
    and a
    jr z, jr_000_25ea

    ldh [$b3], a
    push hl
    push bc
    call Call_000_2a2b
    ld a, h
    add $30
    ld h, a
    ld a, [hl]
    cp $2f
    jr nz, jr_000_25ee

    pop bc
    pop hl
    inc l
    inc l
    dec b
    jr nz, jr_000_25cc

jr_000_25ea:
    xor a
    ldh [$9b], a
    ret


jr_000_25ee:
    pop bc
    pop hl
    ld a, $01
    ldh [$9b], a
    ret


Call_000_25f5:
    ldh a, [$98]
    cp $01
    ret nz

    ld hl, $c010
    ld b, $04

jr_000_25ff:
    ld a, [hl+]
    ldh [$b2], a
    ld a, [hl+]
    and a
    jr z, jr_000_2623

    ldh [$b3], a
    push hl
    push bc
    call Call_000_2a2b
    push hl
    pop de
    pop bc
    pop hl

jr_000_2611:
    ldh a, [rSTAT]
    and $03
    jr nz, jr_000_2611

    ld a, [hl]
    ld [de], a
    ld a, d
    add $30
    ld d, a
    ld a, [hl+]
    ld [de], a
    inc l
    dec b
    jr nz, jr_000_25ff

jr_000_2623:
    ld a, $02
    ldh [$98], a
    ld hl, $c200
    ld [hl], $80
    ret


Call_000_262d:
    ld a, [$c0c6]
    cp $02
    jr z, jr_000_267a

    push de
    ld a, [hl]
    or a
    jr z, jr_000_268d

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
    jr z, jr_000_264b

    ld [bc], a

jr_000_264b:
    push bc
    ldh a, [$c3]
    ld b, a
    inc b

jr_000_2650:
    push hl
    call Stop_counting_if_score_reaches_999999
    pop hl
    dec b
    jr nz, jr_000_2650

    pop bc
    inc hl
    inc hl
    push hl
    ld hl, $0023
    add hl, bc
    pop de
    call Call_000_2a82
    pop de

This_routine_is_not_used5::
    ldh a, [$c3]
    ld b, a
    inc b
    ld hl, $c0a0

jr_000_266c:
    push hl
    call Stop_counting_if_score_reaches_999999
    pop hl
    dec b
    jr nz, jr_000_266c

    ld a, $02
    ld [$c0c6], a
    ret


jr_000_267a:
    ld de, $c0a2
    ld hl, $9a25
    call Call_000_2a82
    ld a, $02
    ld [$dfe0], a
    xor a
    ld [$c0c6], a
    ret


jr_000_268d:
    pop de

Jump_000_268e:
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


Call_000_26a5:
    ld hl, $c0ac
    ld b, $1b
    xor a

jr_000_26ab:
    ld [hl+], a
    dec b
    jr nz, jr_000_26ab

    ld hl, $c0a0
    ld b, $03

jr_000_26b4:
    ld [hl+], a
    dec b
    jr nz, jr_000_26b4

    ret


    ld a, [hl]
    and $f0
    swap a
    ld [de], a

    db $7e, $e6, $0f, $1c, $12, $c9, $3e, $02, $e0, $8f, $af, $e0, $8e, $3e, $c0, $e0
    db $8d, $21, $00, $c2, $cd, $d1, $2a, $c9, $3e, $01, $e0, $8f, $3e, $10, $e0, $8e
    db $3e, $c0, $e0, $8d, $21, $00, $c2, $cd, $d1, $2a, $c9, $3e, $01, $e0, $8f, $3e
    db $20, $e0, $8e, $3e, $c0, $e0, $8d, $21, $10, $c2, $cd, $d1, $2a, $c9, $06, $20
    db $3e, $8e, $11, $20, $00, $77, $19, $05, $20, $fb, $c9, $1a, $fe, $ff, $c8, $22
    db $13, $18, $f8, $d9, $00, $18, $3f, $00, $80, $00, $00, $ff, $00, $80, $8f, $00
    db $80, $00, $00, $ff, $00, $70, $37, $1c, $00, $00, $00, $38, $37, $1c, $00, $00
    db $00, $40, $34, $20, $00, $00, $00, $40, $1c, $20, $00, $00, $00, $40, $74, $20
    db $00, $00, $00, $40, $68, $21, $00, $00, $00, $78, $68, $21, $00, $00, $00, $60
    db $60, $2a, $80, $00, $00, $60, $72, $2a, $80, $20, $00, $68, $38, $3e, $80, $00
    db $00, $60, $60, $36, $80, $00, $00, $60, $72, $36, $80, $20, $00, $68, $38, $32
    db $80, $00, $00, $60, $60, $2e, $80, $00, $00, $68, $38, $3c, $80, $00, $00, $60
    db $60, $3a, $80, $00, $00, $68, $38, $30, $80, $00, $80, $3f, $40, $44, $00, $00
    db $80, $3f, $20, $4a, $00, $00

Fill_9800_to_9bff_with_2f::
    add b
    ccf
    jr nc, jr_000_27df

    nop
    nop
    add b
    ld [hl], a
    jr nz, jr_000_27e7

    nop
    nop
    add b
    add a
    ld c, b

BC_is_Length_of_data::
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

Copy_characters_with_only_two_colors::
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
    jr nz, jr_000_27d8

jr_000_27d8:
    ld l, a
    ld d, a
    ld e, b
    nop
    nop
    add b
    add b

jr_000_27df:
    ld d, l
    inc [hl]

This_instruction_is_not_used::
    nop
    nop
    add b
    add b
    ld e, e
    inc [hl]

jr_000_27e7:
    nop
    jr nz, @+$23

    rst $38

Copy_a_screen_from_DE_to_screen_ram::
    sbc e

Call_000_27ec:
    ld bc, $0400

jr_000_27ef:
    ld a, $2f
    ld [hl-], a
    dec bc
    ld a, b
    or c
    jr nz, jr_000_27ef

    ret


Call_000_27f8:
jr_000_27f8:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_000_27f8

    ret


Call_000_2801:
    call Call_000_2817
    ld bc, $00a0
    call Call_000_27f8
    ld hl, $3287
    ld de, $8300
    ld bc, $0d00
    call Call_000_27f8
    ret


Call_000_2817:
    ld hl, $41a7
    ld bc, $0138
    ld de, $8000

Prepare_for_screen_memory_update_by_halting_LCD_controller::
    ld a, [hl+]
    ld [de], a
    inc de
    ld [de], a
    inc de
    dec bc

Disable_VBlank_interrupt::
    ld a, b
    or c
    jr nz, Prepare_for_screen_memory_update_by_halting_LCD_controller

    ret


Call_000_282b:
    call Call_000_2817
    ld bc, $0da0
    call Call_000_27f8
    ret


    ld bc, $1000

Call_000_2838:
    db $11

    db $00, $80, $cd, $f8, $27, $c9, $21, $00, $98, $06, $12, $e5, $0e, $14, $1a, $22
    db $13, $0d, $20, $fa, $e1, $d5, $11, $20, $00, $19, $d1, $05, $20, $ed, $c9, $06
    db $0a, $e5, $1a, $fe, $ff, $28, $0e, $22, $13, $05, $20, $f6, $e1, $d5, $11, $20
    db $00, $19, $d1, $18, $ea, $e1, $3e, $02, $e0, $e3, $c9, $f0, $ff, $e0, $a1, $cb
    db $87, $e0, $ff, $f0, $44, $fe, $91, $20, $fa, $f0, $40, $e6, $7f, $e0, $40, $f0
    db $a1, $e0, $ff, $c9, $2f, $2f, $11, $12, $1d, $2f, $2f, $2f, $2f, $2f, $29, $29
    db $29, $2f, $2f, $2f, $2f, $1c, $1d, $0a, $1b, $1d, $2f, $2f, $2f, $29, $29, $29
    db $29, $29, $2f, $2f, $2f, $2f, $2f, $1d, $18, $2f, $2f, $2f, $2f, $2f, $2f, $29
    db $29, $2f, $2f, $2f, $0c, $18, $17, $1d, $12, $17, $1e, $0e, $29, $29, $29, $29
    db $29, $29, $29, $29, $2f, $2f, $10, $0a, $16, $0e, $2f, $2f, $2f, $2f, $29, $29
    db $29, $29, $2f, $2f, $1c, $12, $17, $10, $15, $0e, $2f, $2f, $2f, $2f, $2f, $00
    db $2f, $26, $2f, $04, $00, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $00, $2f, $0d, $18, $1e, $0b, $15, $0e, $2f, $2f, $2f, $2f, $2f, $00, $2f, $26
    db $2f, $01, $00, $00, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f
    db $1d, $1b, $12, $19, $15, $0e, $2f, $2f, $2f, $2f, $2f, $00, $2f, $26, $2f, $03
    db $00, $00, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $1d, $0e
    db $1d, $1b, $12, $1c, $2f, $2f, $2f, $2f, $2f, $00, $2f, $26, $2f, $01, $02, $00
    db $00, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $0d, $1b, $18, $19
    db $1c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $29, $29, $29, $29, $29, $29
    db $29, $29, $29, $29, $1d, $11, $12, $1c, $2f, $1c, $1d, $0a, $10, $0e, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $ff, $61, $62, $62, $62, $62, $62, $62
    db $63, $64, $2f, $2f, $2f, $2f, $2f, $2f, $65, $64, $2f, $10, $0a

_10__A______1__Right::
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
    jr jr_000_29d5

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

debounce_keys_to_minimize_errors::
    add hl, hl

jr_000_29d5:
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

Call_000_29fa:
    ld a, $20
    ldh [rP1], a
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

This_routine_is_not_used6::
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
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


Call_000_2a2b:
    ldh a, [$b2]
    sub $10
    srl a
    srl a
    srl a
    ld de, $0000
    ld e, a
    ld hl, $9800
    ld b, $20

jr_000_2a3e:
    add hl, de
    dec b
    jr nz, jr_000_2a3e

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


    ldh a, [$b5]
    ld d, a
    ldh a, [$b4]
    ld e, a
    ld b, $04

jr_000_2a60:
    rr d
    rr e
    dec b
    jr nz, jr_000_2a60

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


Call_000_2a7e:
    ldh a, [$e0]
    and a
    ret z

Call_000_2a82:
    ld c, $03

Call_000_2a84:
    xor a
    ldh [$e0], a

jr_000_2a87:
    ld a, [de]
    ld b, a
    swap a
    and $0f
    jr nz, jr_000_2ab7

    ldh a, [$e0]
    and a
    ld a, $00
    jr nz, jr_000_2a98

    ld a, $2f

jr_000_2a98:
    ld [hl+], a
    ld a, b
    and $0f
    jr nz, jr_000_2abf

    ldh a, [$e0]
    and a
    ld a, $00
    jr nz, jr_000_2aae

    ld a, $01
    cp c
    ld a, $00
    jr z, jr_000_2aae

    ld a, $2f

jr_000_2aae:
    ld [hl+], a
    dec e
    dec c
    jr nz, jr_000_2a87

    xor a
    ldh [$e0], a
    ret


jr_000_2ab7:
    push af
    ld a, $01
    ldh [$e0], a
    pop af
    jr jr_000_2a98

jr_000_2abf:
    push af
    ld a, $01
    ldh [$e0], a
    pop af
    jr jr_000_2aae

    ld a, $c0
    ldh [rDMA], a
    ld a, $28

jr_000_2acd:
    dec a
    jr nz, jr_000_2acd

    ret


jr_000_2ad1:
    ld a, h
    ldh [$96], a
    ld a, l
    ldh [$97], a
    ld a, [hl]
    and a
    jr z, jr_000_2af8

    cp $80
    jr z, jr_000_2af6

jr_000_2adf:
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

    jr jr_000_2ad1

jr_000_2af1:
    xor a
    ldh [$95], a
    jr jr_000_2adf

jr_000_2af6:
    ldh [$95], a

jr_000_2af8:
    ld b, $07
    ld de, $ff86

jr_000_2afd:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_000_2afd

    ldh a, [$89]
    ld hl, $2bac
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

Jump_000_2b20:
jr_000_2b20:
    inc hl
    ldh a, [$8c]
    ldh [$94], a
    ld a, [hl]
    cp $ff
    jr z, jr_000_2af1

    cp $fd
    jr nz, jr_000_2b3c

    ldh a, [$8c]
    xor $20
    ldh [$94], a
    inc hl
    ld a, [hl]
    jr jr_000_2b40

jr_000_2b38:
    inc de
    inc de
    jr jr_000_2b20

jr_000_2b3c:
    cp $fe
    jr z, jr_000_2b38

jr_000_2b40:
    ldh [$89], a
    ldh a, [$87]
    ld b, a
    ld a, [de]
    ld c, a
    ldh a, [$8b]
    bit 6, a
    jr nz, jr_000_2b53

    ldh a, [$90]
    add b
    adc c
    jr jr_000_2b5d

jr_000_2b53:
    ld a, b
    push af
    ldh a, [$90]
    ld b, a
    pop af
    sub b
    sbc c
    sbc $08

jr_000_2b5d:
    ldh [$93], a
    ldh a, [$88]
    ld b, a
    inc de
    ld a, [de]
    inc de
    ld c, a
    ldh a, [$8b]
    bit 5, a
    jr nz, jr_000_2b72

    ldh a, [$91]
    add b
    adc c
    jr jr_000_2b7c

jr_000_2b72:
    ld a, b
    push af
    ldh a, [$91]
    ld b, a
    pop af
    sub b
    sbc c
    sbc $08

jr_000_2b7c:
    ldh [$92], a
    push hl
    ldh a, [$8d]
    ld h, a
    ldh a, [$8e]
    ld l, a
    ldh a, [$95]
    and a
    jr z, jr_000_2b8e

    ld a, $ff
    jr jr_000_2b90

jr_000_2b8e:
    ldh a, [$93]

jr_000_2b90:
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
    jp Jump_000_2b20


    ld l, b
    inc l
    ld l, h
    inc l
    ld [hl], b
    inc l
    ld [hl], h
    inc l
    ld a, b
    inc l
    ld a, h
    inc l
    add b
    inc l
    add h
    inc l
    adc b
    inc l
    adc h
    inc l
    sub b
    inc l
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
    inc l
    call z, $d02c
    inc l
    call nc, $d82c
    inc l
    call c, $e02c
    inc l
    db $e4
    inc l
    add sp, $2c
    db $ec
    inc l
    ldh a, [$2c]
    db $f4
    inc l
    ld hl, sp+$2c
    db $fc
    inc l
    nop
    dec l
    inc b
    dec l
    ld [$0c2d], sp
    dec l
    db $10
    dec l
    inc d
    dec l
    rrca
    ld sp, $2d14
    jr jr_000_2c37

    inc e
    dec l
    jr nz, jr_000_2c3b

    inc h
    dec l
    jr z, jr_000_2c3f

    inc l
    dec l
    ld [hl-], a
    ld sp, $3136
    jr nc, jr_000_2c47

    inc [hl]
    dec l
    ld a, [hl-]
    ld sp, $313e
    jr c, jr_000_2c4f

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
    ld b, d
    ld sp, $3146
    ld c, h
    dec l
    ld d, b
    dec l
    ld d, b
    dec l
    ld d, h

jr_000_2c37:
    dec l
    ld e, b
    dec l
    ld e, h

jr_000_2c3b:
    dec l
    ld h, b
    dec l
    ld h, h

jr_000_2c3f:
    dec l
    ld l, b
    dec l
    ld l, h
    dec l
    ld [hl], b
    dec l
    ld [hl], h

jr_000_2c47:
    dec l
    ld a, b
    dec l
    ld a, h
    dec l
    add b
    dec l
    add h

jr_000_2c4f:
    dec l
    adc b
    dec l
    adc h
    dec l
    sub b
    dec l
    sub h
    dec l
    sbc b
    dec l
    sbc h
    dec l
    ld d, d
    ld sp, $3156
    ld e, d
    ld sp, $315a
    ld c, d
    ld sp, $314e
    and b
    dec l
    rst $28
    ldh a, [$b0]
    dec l
    rst $28
    ldh a, [$c2]
    dec l
    rst $28
    ldh a, [$d1]
    dec l
    rst $28
    ldh a, [$e2]
    dec l
    rst $28
    ldh a, [$f4]
    dec l
    rst $28
    ldh a, [rTIMA]
    ld l, $ef
    ldh a, [rNR13]
    ld l, $ef
    ldh a, [rNR50]
    ld l, $ef
    ldh a, [$33]
    ld l, $ef
    ldh a, [rLY]
    ld l, $ef
    ldh a, [rHDMA3]
    ld l, $ef
    ldh a, [$64]
    ld l, $ef
    ldh a, [rPCM12]
    ld l, $ef
    ldh a, [$88]
    ld l, $ef
    ldh a, [$9a]
    ld l, $ef
    ldh a, [$ac]
    ld l, $ef
    ldh a, [$be]
    ld l, $ef
    ldh a, [$ce]
    ld l, $ef
    ldh a, [$e0]
    ld l, $ef
    ldh a, [$f0]
    ld l, $ef
    ldh a, [rSB]
    cpl
    rst $28
    ldh a, [rNR12]
    cpl
    rst $28
    ldh a, [rNR44]
    cpl
    rst $28
    ldh a, [rHDMA3]
    cpl
    rst $28
    ldh a, [$64]
    cpl
    rst $28
    ldh a, [$34]
    cpl
    rst $28
    ldh a, [rSCY]
    cpl
    rst $28
    ldh a, [$75]
    cpl
    nop
    add sp, $7e
    cpl
    nop
    add sp, -$79
    cpl
    nop
    add sp, -$70
    cpl
    nop
    add sp, -$67
    cpl
    nop
    nop
    sbc l
    cpl
    nop
    nop
    and c
    cpl
    nop
    nop
    and l
    cpl
    nop
    nop
    xor c
    cpl
    nop
    nop
    xor l
    cpl
    nop
    nop
    or c
    cpl
    nop
    nop
    or l
    cpl
    nop
    nop
    cp c
    cpl
    nop
    nop
    cp l
    cpl
    nop
    nop
    pop bc
    cpl
    ldh a, [$f8]
    call z, $f02f
    ld hl, sp-$29
    cpl
    ldh a, [$f0]
    db $eb
    cpl
    ldh a, [$f0]
    nop
    jr nc, @-$06

jr_000_2d23:
    ld hl, sp+$09
    jr nc, @-$06

jr_000_2d27:
    ld hl, sp+$12
    jr nc, jr_000_2d23

jr_000_2d2b:
    ld hl, sp+$19
    jr nc, jr_000_2d27

jr_000_2d2f:
    ld hl, sp+$20
    jr nc, jr_000_2d23

    ld hl, sp+$2b
    jr nc, jr_000_2d27

    ld hl, sp+$36
    jr nc, jr_000_2d2b

jr_000_2d3b:
    ldh a, [rWX]
    jr nc, jr_000_2d2f

jr_000_2d3f:
    ldh a, [$61]
    jr nc, jr_000_2d3b

jr_000_2d43:
    ld hl, sp+$6a
    jr nc, jr_000_2d3f

jr_000_2d47:
    ld hl, sp+$73
    jr nc, jr_000_2d43

jr_000_2d4b:
    ld hl, sp+$7a
    jr nc, jr_000_2d47

jr_000_2d4f:
    ld hl, sp-$7f
    jr nc, jr_000_2d4b

jr_000_2d53:
    ld hl, sp-$78
    jr nc, jr_000_2d4f

    ld hl, sp-$71
    db $30

    db $f8, $f8, $96, $30, $f8, $f8, $9d, $30, $f8, $f8, $a4, $30, $f8, $f8, $af, $30

    db $f8, $f8, $b6, $30, $f8, $f8, $bd, $30, $f8, $f8, $c4, $30, $f8, $f8, $cb, $30
    db $f8, $f8

    db $d4, $30, $f8, $f8, $dd, $30, $f8, $f8, $e6, $30, $f8, $f8, $ef, $30, $f8

    db $f8, $f8, $30, $f8, $f8, $01, $31, $f8, $f8, $08, $31, $f8, $f8, $8e, $31, $f0
    db $f0

    db $a5, $31, $f8, $f8, $f1, $31, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $84, $84
    db $84, $fe

    db $84, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $84, $fe, $fe, $fe, $84, $fe, $fe
    db $fe

    db $84, $84, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $fe, $84, $fe, $84

    db $84, $84, $fe, $ff, $f1, $31, $fe, $fe, $fe, $fe, $84, $84, $fe, $fe, $fe, $84
    db $fe

    db $fe, $fe, $84, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $81

    db $81, $81, $fe, $fe, $fe, $81, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $81, $81
    db $fe

    db $fe, $81, $fe, $fe, $fe, $81, $ff, $f1, $31, $fe, $fe, $fe, $fe, $81, $fe

    db $fe, $fe, $81, $81, $81, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $81, $fe, $fe
    db $fe

    db $81, $fe, $fe, $81, $81, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe
    db $8a, $8b

    db $8b, $8f, $ff, $f1, $31, $fe, $80, $fe, $fe, $fe, $88, $fe, $fe, $fe, $88, $fe
    db $fe, $fe

    db $89, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $8a, $8b, $8b, $8f
    db $ff, $f1

    db $31, $fe, $80, $fe, $fe, $fe, $88, $fe, $fe, $fe, $88, $fe, $fe, $fe, $89, $ff
    db $f1, $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $83, $83, $fe, $fe, $83, $83, $ff
    db $f1, $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $83, $83, $fe, $fe, $83, $83, $ff

    db $f1, $31, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $83, $83, $fe, $fe, $83
    db $83, $ff

    db $f1, $31, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $83, $83, $fe, $fe, $83

    db $83, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $82, $82, $fe, $fe
    db $fe

    db $82, $82, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $82, $fe, $fe, $82, $82, $fe
    db $fe

    db $82, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $82, $82, $fe, $fe
    db $fe

    db $82, $82, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $82, $fe, $fe, $82, $82, $fe
    db $fe

    db $82, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $86

    db $86, $fe, $86, $86, $ff, $f1, $31, $fe, $fe, $fe, $fe, $86, $fe, $fe, $fe, $86
    db $86

    db $fe, $fe, $fe, $86, $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe
    db $86

    db $86, $fe, $86, $86, $ff, $f1, $31, $fe, $fe, $fe, $fe, $86, $fe, $fe, $fe, $86
    db $86

    db $fe, $fe, $fe, $86, $ff, $f1, $31, $fe, $fe

    db $fe, $fe, $fe, $85, $fe, $fe, $85, $85, $85

    db $ff, $f1, $31, $fe, $fe, $fe, $fe, $fe, $85

    db $fe, $fe, $85, $85, $fe, $fe, $fe, $85, $ff

    db $f1, $31, $fe, $fe

    db $fe, $fe, $fe, $fe

    db $fe, $fe, $85, $85

    db $85, $fe, $fe, $85

    db $ff, $f1, $31, $fe

    db $fe, $fe, $fe, $fe

    db $85, $fe, $fe, $fe

    db $85, $85, $fe, $fe

    db $85, $ff, $11, $32

    db $0a, $25, $1d, $22

    db $19, $0e, $ff, $11, $32, $0b, $25, $1d, $22, $19, $0e

    db $ff, $11, $32, $0c, $25, $1d, $22, $19, $0e, $ff, $11

    db $32, $2f, $18, $0f, $0f, $2f, $2f, $ff, $11, $32, $00, $ff, $11, $32, $01, $ff
    db $11, $32, $02, $ff

    db $11, $32, $03, $ff, $11, $32, $04, $ff, $11, $32, $05, $ff, $11, $32, $06, $ff
    db $11, $32, $07, $ff, $11

    db $32, $08, $ff, $11, $32, $09, $ff, $21, $32

    db $2f, $01, $2f, $11, $20, $21, $30, $31, $ff

    db $21, $32, $2f, $03, $12, $13, $22

    db $23, $32, $33, $ff, $f1, $31, $2f

    db $05, $fd, $05, $2f, $2f, $15, $04, $17, $24, $25, $26

    db $27, $34, $35, $36, $2f, $ff, $f1, $31, $08, $37, $fd

    db $37, $fd, $08, $18, $19, $14, $1b, $28, $29, $2a, $2b, $60, $70, $36, $2f, $ff
    db $21, $32, $b9, $fd, $b9

    db $ba, $fd, $ba, $ff, $21, $32, $82, $fd, $82, $83, $fd, $83, $ff, $21, $32, $09
    db $0a, $3a, $3b, $ff, $21, $32

    db $0b, $40, $7c, $6f, $ff, $21, $32, $2f, $0f

    db $2f, $1f, $5f, $2c, $2f, $3f, $ff, $21, $32

    db $6c, $3c, $4b, $4c, $5b, $5c, $6b

    db $2f, $ff, $f1, $31, $2f, $4d, $fd

    db $4d, $2f, $2f, $5d, $5e, $4e, $5f

    db $6d, $6e, $2f, $2f, $7d, $fd, $7d

    db $2f, $ff, $f1, $31, $08, $77, $fd

    db $77, $fd, $08, $18, $78, $43, $53

    db $7a, $7b, $50, $2f, $2f, $02, $fd

    db $7d, $2f, $ff, $21, $32, $b9, $fd, $b9, $ba, $fd, $ba

    db $ff, $21, $32, $82, $fd, $82, $83

    db $fd, $83, $ff, $21, $32, $09, $0a

    db $3a, $3b, $ff, $21, $32, $0b, $40

    db $7c, $6f, $ff, $21, $32, $dc, $dd

    db $e0, $e1, $ff, $21, $32, $de, $df, $e0, $e1

    db $ff, $21, $32, $de, $e2, $e0, $e4, $ff, $21

    db $32, $dc, $ee, $e0, $e3, $ff, $21, $32, $e5

    db $e6, $e7, $e8, $ff, $21, $32, $fd, $e6, $fd

    db $e5, $fd, $e8, $fd, $e7, $ff, $21, $32, $e9

    db $ea, $eb, $ec, $ff, $21, $32, $ed, $ea, $eb

    db $ec, $ff, $21, $32, $f2, $f4, $f3

    db $bf, $ff, $21, $32, $f4, $f2, $bf

    db $f3, $ff, $21, $32

    db $c2, $fd, $c2, $c3, $fd, $c3, $ff, $21, $32, $c4, $fd, $c4, $c5, $fd, $c5, $ff
    db $21, $32, $dc, $fd, $dc, $ef, $fd, $ef, $ff, $21, $32, $f0, $fd, $f0, $f1

    db $fd, $f1, $ff, $21

    db $32, $dc, $fd, $f0

    db $f1, $fd, $ef, $ff

    db $21, $32, $f0, $fd

    db $dc, $ef, $fd, $f1

    db $ff, $21, $32, $bd

    db $be, $bb, $bc, $ff

    db $21, $32, $b9, $ba

    db $da, $db, $ff, $13

    db $31, $e0, $f0, $3d

    db $32, $c0, $c1, $c5

    db $c6, $cc, $cd, $75, $76, $a4

    db $a5, $a6, $a7, $54, $55, $56, $57, $44, $45

    db $46, $47, $a0, $a1, $a2, $a3

    db $9c, $9d, $9e, $9f, $ff, $5e

    db $31, $f8, $e8, $64, $31, $f0, $e8, $6d, $31

    db $00, $00, $73, $31, $00, $00, $79, $31, $00, $00, $82, $31

    db $00, $00, $e5, $31, $00, $00, $eb, $31, $00, $00, $ac, $31, $d8, $f8, $c4, $31
    db $e8, $f8, $d6, $31, $f0, $f8, $75

    db $32, $63, $64, $65, $ff, $75, $32

    db $63, $64, $65, $66, $67, $68, $ff, $75, $32, $41, $41, $41, $ff, $75, $32, $42
    db $42, $42, $ff, $75, $32, $52, $52, $52

    db $62, $62, $62, $ff, $75, $32, $51, $51, $51, $61, $61, $61, $71, $71, $71, $ff
    db $f1, $31

    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $63, $64, $fd, $64, $fd, $63, $66

    db $67, $fd, $67, $fd, $66, $ff

    db $21, $32, $2f, $2f, $63, $64, $ff, $21, $32, $00, $fd, $00, $10, $fd, $10, $4f
    db $fd, $4f, $80, $fd, $80, $80, $fd, $80, $81, $fd, $81, $97, $fd, $97, $ff, $21
    db $32, $98, $fd, $98, $99, $fd, $99, $80, $fd, $80, $9a, $fd, $9a, $9b, $fd, $9b
    db $ff, $21, $32, $a8, $fd, $a8, $a9, $fd, $a9, $aa, $fd, $aa, $ab, $fd, $ab, $ff
    db $21, $32, $41, $2f, $2f, $ff, $21, $32, $52, $2f, $62, $ff, $00, $00, $00, $08
    db $00, $10, $00, $18, $08, $00, $08, $08, $08, $10, $08, $18, $10, $00, $10, $08
    db $10, $10, $10, $18, $18, $00, $18, $08, $18, $10, $18, $18, $00, $00, $00, $08
    db $00, $10, $00, $18, $00, $20, $00, $28, $00, $30, $00, $38, $00, $00, $00, $08
    db $08, $00, $08, $08, $10, $00, $10, $08, $18, $00, $18, $08, $20, $00, $20, $08
    db $28, $00, $28, $08, $30, $00, $30, $08, $00, $08, $00, $10, $08, $08, $08, $10
    db $10, $00, $10, $08, $10, $10, $10, $18, $18, $00, $18, $08, $18, $10, $18, $18
    db $20, $00, $20, $08, $20, $10, $20, $18, $28, $00, $28, $08, $28, $10, $28, $18
    db $30, $00, $30, $08, $30, $10, $30, $18, $38, $00, $38, $08, $38, $10, $38, $18
    db $00, $00, $00, $08, $00, $10, $08, $00, $08, $08, $08, $10, $10, $00, $10, $08
    db $10, $10, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7c, $7c, $78, $79
    db $78, $7b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $ff
    db $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $3f, $3f, $1f, $9f
    db $1f, $df, $78, $7b, $78, $79, $7c, $7c, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f
    db $7f, $7f, $00, $00, $00, $ff, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $1f, $df, $1f, $9f, $3f, $3f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $78, $7a, $78, $7a, $78, $7a, $78, $7a, $78, $7a, $78, $7a, $78, $7a
    db $78, $7a, $1f, $5f, $1f, $5f, $1f, $5f, $1f, $5f, $1f, $5f, $1f, $5f, $1f, $5f
    db $1f, $5f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f8, $f8, $f0, $f2, $e1, $f5, $e3
    db $f2, $e6, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $ff, $ff, $ff
    db $00, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $1f, $1f, $0f, $4f, $87, $af, $c7
    db $4f, $67, $f2, $e6, $f2, $e6, $f2, $e6, $f2, $e6, $f2, $e6, $f2, $e6, $f2, $e6
    db $f2, $e6, $4f, $67, $4f, $67, $4f, $67, $4f, $67, $4f, $67, $4f, $67, $4f, $67
    db $4f, $67, $f2, $e6, $f5, $e3, $f2, $e1, $f8, $f0, $ff, $f8, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $00, $ff, $ff, $00, $ff, $00, $00, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $4f, $67, $af, $c7, $4f, $87, $1f, $0f, $ff, $1f, $ff, $ff, $ff, $ff
    db $ff, $ff, $78, $7b, $78, $79, $7c, $7c, $7f, $7f, $7f, $7f, $7c, $7c, $78, $79
    db $78, $7b, $1f, $df, $1f, $9f, $3f, $3f, $ff, $ff, $ff, $ff, $3f, $3f, $1f, $9f
    db $1f, $df, $00, $00, $00, $ff, $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $ff
    db $00, $00, $00, $00, $00, $7f, $00, $00, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f
    db $7f, $7f, $78, $7a, $78, $7a, $78, $7a, $78, $7a, $78, $7a, $00, $02, $00, $7a
    db $00, $7a, $1f, $5f, $1f, $5f, $1f, $5f, $1f, $5f, $1f, $5f, $00, $40, $00, $5f
    db $00, $5f, $00, $00, $00, $ff, $00, $00, $00, $ff, $00, $ff, $00, $00, $00, $ff
    db $00, $00, $00, $00, $00, $00, $3f, $3f, $3f, $3f, $30, $30, $30, $30, $33, $32
    db $33, $30, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $ff, $02
    db $ff, $20, $00, $00, $00, $00, $fc, $fc, $fc, $fc, $0c, $0c, $0c, $0c, $cc, $0c
    db $cc, $0c, $33, $30, $33, $30, $33, $30, $33, $30, $33, $30, $33, $30, $33, $32
    db $33, $30, $cc, $0c, $cc, $4c, $cc, $0c, $cc, $0c, $cc, $0c, $cc, $8c, $cc, $0c
    db $cc, $0c, $33, $30, $33, $30, $30, $30, $30, $30, $3f, $3f, $3f, $3f, $00, $00
    db $00, $00, $ff, $04, $ff, $40, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00
    db $00, $00, $cc, $0c, $cc, $4c, $0c, $0c, $0c, $0c, $fc, $fc, $fc, $fc, $00, $00
    db $00, $00, $00, $00, $ff, $ff, $ff, $00, $ff, $02, $ff, $20, $ff, $00, $ff, $04
    db $ff, $00, $ff, $00, $ff, $02, $ff, $40, $ff, $00, $ff, $08, $ff, $01, $ff, $43
    db $ff, $07, $ff, $04, $ff, $40, $ff, $02, $ff, $00, $ff, $00, $ff, $ff, $ff, $ff
    db $00, $00, $ff, $00, $ff, $40, $ff, $02, $ff, $00, $ff, $10, $ff, $80, $ff, $c2
    db $ff, $e0, $fe, $06, $fe, $46, $fe, $06, $fe, $06, $fe, $16, $fe, $86, $fe, $06
    db $fe, $06, $7f, $64, $7f, $60, $7f, $62, $7f, $60, $7f, $60, $7f, $68, $7f, $62
    db $7f, $60, $ff, $02, $ff, $40, $ff, $00, $ff, $00, $ff, $08, $ff, $80, $ff, $1f
    db $f0, $10, $ff, $02, $ff, $20, $ff, $00, $ff, $00, $ff, $04, $ff, $00, $ff, $ff
    db $00, $00, $ff, $07, $ff, $13, $ff, $01, $ff, $00, $ff, $40, $ff, $00, $ff, $ff
    db $08, $08, $00, $00, $ff, $ff, $ff, $ff, $ff, $00, $ff, $02, $ff, $20, $ff, $ff
    db $00, $00, $ff, $e0, $ff, $c8, $ff, $80, $ff, $00, $ff, $02, $ff, $00, $ff, $ff
    db $08, $08, $ff, $00, $ff, $02, $ff, $40, $ff, $00, $ff, $02, $ff, $00, $ff, $f8
    db $0f, $08, $f0, $10, $f0, $10, $f0, $10, $f0, $50, $f0, $10, $f0, $10, $f0, $10
    db $f0, $10, $0f, $08, $0f, $0a, $0f, $08, $0f, $08, $0f, $08, $0f, $08, $0f, $09
    db $0f, $08, $00, $00, $00, $7f, $00, $00, $7f, $7f, $7f, $7f, $7c, $7c, $78, $79
    db $78, $7b, $00, $00, $00, $ff, $00, $00, $ff, $ff, $ff, $ff, $3f, $3f, $1f, $9f
    db $1f, $df, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $00, $00, $00, $7f
    db $00, $00, $00, $00, $00, $00, $00, $00, $aa, $aa, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $0f, $0f, $1f, $1f, $38, $38, $33, $30, $36, $30
    db $34, $30, $00, $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00, $ff, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $f0, $f0, $f8, $f8, $1c, $1c, $cc, $0c, $6c, $0c
    db $2c, $0c, $34, $30, $34, $30, $34, $30, $34, $30, $34, $30, $34, $30, $34, $30
    db $34, $30, $2c, $0c, $2c, $0c, $2c, $0c, $2c, $0c, $2c, $0c, $2c, $0c, $2c, $0c
    db $2c, $0c, $34, $30, $36, $30, $33, $30, $38, $38, $1f, $1f, $0f, $0f, $00, $00
    db $00, $00, $00, $7b, $00, $79, $00, $7c, $00, $7f, $00, $7f, $00, $00, $00, $7f
    db $00, $00, $00, $df, $00, $9f, $00, $3f, $00, $ff, $00, $ff, $00, $00, $00, $ff
    db $00, $00, $00, $00, $00, $00, $ff, $00, $00, $00, $ff, $ff, $ff, $ff, $00, $00
    db $00, $00, $2c, $0c, $6c, $0c, $cc, $0c, $1c, $1c, $f8, $f8, $f0, $f0, $00, $00
    db $00, $00, $08, $08, $ff, $ff, $ff, $02, $ff, $00, $ff, $20, $ff, $00, $ff, $02
    db $ff, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $00, $ff, $02, $ff, $20, $ff, $ff
    db $08, $08, $ff, $07, $ff, $13, $ff, $01, $ff, $00, $ff, $40, $ff, $00, $ff, $ff
    db $00, $00, $ff, $e0, $ff, $c8, $ff, $80, $ff, $00, $ff, $02, $ff, $00, $ff, $ff
    db $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $ff, $00, $ff, $02, $ff, $00, $ff, $20, $ff, $02, $ff, $00, $ff, $ff
    db $08, $08, $f0, $10, $ff, $1f, $f0, $1f, $f0, $1f, $f0, $1f, $f0, $1f, $ff, $5f
    db $f0, $10, $00, $00, $ff, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $ff, $ff
    db $00, $00, $08, $08, $ff, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $ff, $ff
    db $08, $08, $0f, $08, $ff, $f8, $0f, $f8, $0f, $f8, $0f, $f8, $0f, $f8, $ff, $fa
    db $0f, $08, $ff, $07, $ff, $43, $ff, $01, $ff, $00, $ff, $00, $ff, $80, $ff, $1f
    db $f0, $10, $ff, $e0, $ff, $c2, $ff, $80, $ff, $00, $ff, $22, $ff, $00, $ff, $f8
    db $0f, $08, $00, $00, $00, $00, $00, $00, $3c, $00, $3c, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $3c, $00, $4e, $00, $4e, $00, $7e, $00, $4e, $00, $4e, $00
    db $00, $00, $00, $00, $7c, $00, $66, $00, $7c, $00, $66, $00, $66, $00, $7c, $00
    db $00, $00, $00, $00, $3c, $00, $66, $00, $60, $00, $60, $00, $66, $00, $3c, $00
    db $00, $00, $dd, $44, $ff, $44, $ff, $ff, $77, $11, $ff, $11, $ff, $ff, $dd, $44
    db $ff, $44, $ff, $ff, $77, $11, $ff, $11, $ff, $ff, $dd, $44, $ff, $44, $ff, $ff
    db $77, $11, $ff, $11, $ff, $ff, $dd, $44, $ff, $44, $ff, $ff, $77, $11, $ff, $11
    db $ff, $ff, $00, $00, $7e, $00, $18, $00, $18, $00, $18, $00, $18, $00, $18, $00
    db $00, $00, $00, $00, $66, $00, $66, $00, $3c, $00, $18, $00, $18, $00, $18, $00
    db $00, $00, $ff, $ff, $f7, $89, $dd, $a3, $ff, $81, $b7, $c9, $fd, $83, $d7, $a9
    db $ff, $81, $ff, $ff, $ff, $81, $ff, $bd, $e7, $a5, $e7, $a5, $ff, $bd, $ff, $81
    db $ff, $ff, $ff, $ff, $ff, $81, $ff, $81, $ff, $99, $ff, $99, $ff, $81, $ff, $81
    db $ff, $ff, $ff, $ff, $81, $81, $bd, $bd, $bd, $bd, $bd, $bd, $bd, $bd, $81, $81
    db $ff, $ff, $ff, $ff, $81, $ff, $81, $ff, $81, $ff, $81, $ff, $81, $ff, $81, $ff
    db $ff, $ff, $ff, $ff, $ff, $81, $c3, $81, $df, $85, $df, $85, $ff, $bd, $ff, $81
    db $ff, $ff, $ff, $ff, $81, $ff, $bd, $ff, $a5, $e7, $a5, $e7, $bd, $ff, $81, $ff
    db $ff, $ff, $ff, $ff, $81, $81, $bd, $83, $bd, $83, $bd, $83, $bd, $83, $81, $ff
    db $ff, $ff, $ed, $93, $bf, $c1, $f5, $8b, $df, $a1, $fd, $83, $af, $d1, $fb, $85
    db $df, $a1, $fd, $83, $ef, $91, $bb, $c5, $ef, $91, $bd, $c3, $f7, $89, $df, $a1
    db $ff, $ff, $ff, $ff, $db, $a4, $ff, $80, $b5, $ca, $ff, $80, $dd, $a2, $f7, $88
    db $ff, $ff, $ff, $ff, $57, $a8, $fd, $02, $df, $20, $7b, $84, $ee, $11, $bb, $44
    db $ff, $ff, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00
    db $ff, $00, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $77, $89, $df, $21, $fb, $05, $af, $51, $fd, $03, $d7, $29
    db $ff, $ff, $00, $00, $3c, $00, $66, $00, $66, $00, $66, $00, $66, $00, $3c, $00
    db $00, $00, $00, $00, $18, $00, $38, $00, $18, $00, $18, $00, $18, $00, $3c, $00
    db $00, $00, $00, $00, $3c, $00, $4e, $00, $0e, $00, $3c, $00, $70, $00, $7e, $00
    db $00, $00, $00, $00, $7c, $00, $0e, $00, $3c, $00, $0e, $00, $0e, $00, $7c, $00
    db $00, $00, $00, $00, $3c, $00, $6c, $00, $4c, $00, $4e, $00, $7e, $00, $0c, $00
    db $00, $00, $00, $00, $7c, $00, $60, $00, $7c, $00, $0e, $00, $4e, $00, $3c, $00
    db $00, $00, $00, $00, $3c, $00, $60, $00, $7c, $00, $66, $00, $66, $00, $3c, $00
    db $00, $00, $00, $00, $7e, $00, $06, $00, $0c, $00, $18, $00, $38, $00, $38, $00
    db $00, $00, $00, $00, $3c, $00, $4e, $00, $3c, $00, $4e, $00, $4e, $00, $3c, $00
    db $00, $00, $00, $00, $3c, $00, $4e, $00, $4e, $00, $3e, $00, $0e, $00, $3c, $00
    db $00, $00, $00, $00, $7c, $00, $66, $00, $66, $00, $7c, $00, $60, $00, $60, $00
    db $00, $00, $00, $00, $7e, $00, $60, $00, $7c, $00, $60, $00, $60, $00, $7e, $00
    db $00, $00, $00, $00, $7e, $00, $60, $00, $60, $00, $7c, $00, $60, $00, $60, $00
    db $00, $00, $00, $00, $3c, $00, $66, $00, $66, $00, $66, $00, $66, $00, $3c, $00
    db $00, $00, $00, $00, $3c, $00, $66, $00, $60, $00, $6e, $00, $66, $00, $3e, $00
    db $00, $00, $00, $00, $46, $00, $6e, $00, $7e, $00, $56, $00, $46, $00, $46, $00
    db $00, $00, $00, $00, $46, $00, $46, $00, $46, $00, $46, $00, $4e, $00, $3c, $00
    db $00, $00, $00, $00, $3c, $00, $60, $00, $3c, $00, $0e, $00, $4e, $00, $3c, $00
    db $00, $00, $00, $00, $3c, $00, $18, $00, $18, $00, $18, $00, $18, $00, $3c, $00
    db $00, $00, $00, $00, $60, $00, $60, $00, $60, $00, $60, $00, $60, $00, $7e, $00
    db $00, $00, $00, $00, $46, $00, $46, $00, $46, $00, $46, $00, $2c, $00, $18, $00
    db $00, $00, $00, $00, $7c, $00, $66, $00, $66, $00, $7c, $00, $68, $00, $66, $00
    db $00, $00, $00, $00, $46, $00, $66, $00, $76, $00, $5e, $00, $4e, $00, $46, $00
    db $00, $00, $00, $00, $7c, $00, $4e, $00, $4e, $00, $4e, $00, $4e, $00, $7c, $00
    db $00, $00, $ff, $ff, $ff, $00, $ff, $00, $ff, $00, $ff, $10, $ff, $80, $ff, $02
    db $ff, $00, $00, $00, $ff, $ff, $ff, $ff, $ff, $00, $ff, $02, $ff, $20, $ff, $ff
    db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
    db $80, $80, $80, $80, $ff, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $ff, $ff
    db $80, $80, $80, $80, $ff, $ff, $ff, $00, $ff, $02, $ff, $20, $ff, $00, $ff, $00
    db $ff, $00, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $07, $07, $18, $1f, $21, $3e, $47, $7f, $5f, $7f, $39, $30, $7b, $62
    db $fb, $b2, $ff, $a0, $ff, $c2, $7f, $54, $7f, $5c, $3f, $2e, $7f, $63, $bf, $f8
    db $37, $ff, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $83, $83, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $ff, $ff, $ff, $ff, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $83, $83, $ff, $ff, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87
    db $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87
    db $ff, $ff, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87
    db $d9, $87, $00, $38, $00, $38, $00, $38, $00, $38, $00, $38, $00, $38, $00, $38
    db $00, $38, $7c, $00, $7c, $00, $7c, $00, $7c, $00, $7c, $00, $7c, $00, $7f, $00
    db $ff, $00, $00, $00, $00, $00, $08, $00, $08, $00, $08, $00, $08, $00, $1c, $00
    db $1c, $00, $00, $00, $00, $0e, $01, $1d, $1e, $06, $2a, $2a, $27, $27, $10, $13
    db $0c, $0d, $00, $00, $c0, $c0, $20, $20, $10, $d0, $d0, $10, $f0, $30, $c8, $e8
    db $08, $e8, $04, $07, $03, $03, $0c, $0c, $10, $10, $35, $20, $2a, $20, $3f, $3f
    db $0c, $0c, $28, $e8, $d8, $c0, $40, $40, $20, $20, $50, $10, $b0, $10, $f0, $f0
    db $c0, $c0, $00, $e0, $01, $71, $32, $42, $34, $35, $55, $54, $4f, $4e, $21, $27
    db $18, $1b, $00, $00, $80, $80, $40, $40, $20, $a0, $a0, $20, $e0, $60, $90, $f0
    db $08, $c8, $b8, $b8, $84, $84, $84, $84, $fc, $fc, $92, $92, $92, $92, $6c, $6c
    db $ee, $ee, $07, $07, $1f, $18, $3e, $20, $7f, $4f, $7f, $5f, $70, $70, $a2, $a2
    db $b0, $b0, $b4, $b4, $64, $64, $3c, $3c, $2e, $2e, $27, $27, $10, $10, $6c, $7c
    db $cf, $b3, $03, $03, $03, $03, $03, $02, $07, $06, $09, $09, $16, $17, $12, $11
    db $0e, $0f, $08, $09, $08, $08, $0f, $0f, $08, $08, $09, $09, $0a, $0a, $06, $06
    db $0e, $0e, $03, $03, $03, $03, $03, $02, $1f, $1e, $21, $21, $4a, $55, $4a, $75
    db $0a, $35, $0a, $15, $08, $08, $0f, $0f, $08, $08, $09, $09, $0a, $0a, $06, $06
    db $0e, $0e, $00, $00, $66, $00, $6c, $00, $78, $00, $78, $00, $6c, $00, $66, $00
    db $00, $00, $00, $00, $46, $00, $2c, $00, $18, $00, $38, $00, $64, $00, $42, $00
    db $00, $00, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $f8, $00, $e0, $00, $c0, $00, $80, $00, $80, $00, $00, $00, $00, $00
    db $00, $00, $7f, $00, $1f, $00, $0f, $00, $07, $00, $07, $00, $03, $00, $03, $00
    db $03, $00, $00, $00, $80, $00, $80, $00, $c0, $00, $e0, $00, $f8, $00, $ff, $00
    db $ff, $00, $03, $00, $07, $00, $07, $00, $0f, $00, $1f, $00, $7f, $00, $ff, $00
    db $ff, $00, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $00, $ff, $ff, $00, $00, $ff
    db $ff, $00, $ff, $00, $ff, $00, $ff, $01, $fe, $02, $fe, $02, $fc, $04, $fc, $04
    db $fc, $04, $ff, $02, $ff, $01, $ff, $01, $01, $01, $ff, $01, $01, $01, $ff, $01
    db $01, $01, $02, $02, $02, $02, $03, $03, $04, $05, $08, $09, $11, $12, $21, $26
    db $43, $4c, $00, $00, $01, $01, $02, $02, $04, $04, $08, $09, $10, $13, $20, $27
    db $20, $2f, $87, $98, $06, $39, $0e, $71, $1e, $e1, $3c, $c3, $3c, $c3, $78, $87
    db $78, $87, $40, $4f, $40, $4f, $80, $9f, $80, $9f, $80, $9f, $80, $9f, $80, $9f
    db $80, $9f, $f8, $07, $f0, $0f, $f0, $0f, $f0, $0f, $f0, $0f, $f0, $0f, $f0, $0f
    db $f8, $07, $40, $5f, $40, $4f, $20, $2f, $20, $27, $10, $11, $0f, $0f, $04, $04
    db $07, $07, $78, $87, $7c, $83, $3c, $c3, $1e, $e1, $0f, $f0, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $00, $ff, $00, $ff, $00, $00, $00, $ff, $00, $00, $00, $ff, $00
    db $00, $00, $02, $00, $02, $00, $02, $00, $02, $00, $02, $00, $02, $00, $02, $00
    db $02, $00, $10, $00, $38, $00, $7c, $00, $fe, $00, $fe, $00, $fe, $00, $7c, $00
    db $00, $00, $02, $03, $01, $01, $02, $02, $04, $04, $0d, $08, $0a, $08, $0f, $0f
    db $03, $03, $28, $e8, $f0, $d0, $30, $30, $08, $08, $54, $04, $ac, $04, $fc, $fc
    db $30, $30, $00, $00, $03, $03, $03, $03, $03, $02, $07, $06, $09, $09, $08, $08
    db $0b, $0b, $00, $00, $c0, $c0, $c4, $c4, $e8, $68, $90, $f0, $a8, $f8, $48, $78
    db $f8, $b8, $00, $00, $07, $07, $07, $07, $07, $04, $07, $04, $0b, $0b, $10, $10
    db $17, $17, $00, $00, $80, $80, $80, $80, $e0, $e0, $90, $f0, $a8, $f8, $48, $78
    db $b8, $b8, $08, $08, $0f, $0f, $08, $08, $0f, $0f, $09, $09, $09, $09, $06, $06
    db $0e, $0e, $e4, $e4, $22, $22, $20, $20, $e0, $e0, $20, $20, $20, $20, $c0, $c0
    db $e0, $e0, $18, $18, $98, $98, $98, $98, $f8, $f8, $9c, $98, $3c, $3c, $3c, $3c
    db $7e, $7e, $7f, $00, $fe, $fe, $7e, $7e, $fe, $da, $7e, $5a, $7e, $7e, $fc, $fc
    db $f8, $f8, $fe, $0e, $fe, $fe, $7e, $7e, $fe, $da, $7e, $5a, $7e, $7e, $fc, $fc
    db $f8, $f8, $80, $80, $83, $83, $83, $83, $c3, $02, $ef, $2e, $97, $97, $47, $44
    db $24, $24, $00, $00, $c0, $c0, $c0, $c0, $c0, $40, $e0, $60, $f8, $f8, $e4, $24
    db $34, $34, $17, $14, $17, $14, $17, $14, $1c, $1f, $17, $17, $0f, $0f, $1e, $1e
    db $00, $00, $f4, $24, $f8, $28, $e8, $28, $38, $f8, $e8, $e8, $90, $90, $70, $70
    db $78, $78, $03, $03, $03, $03, $03, $02, $0f, $0e, $11, $11, $37, $37, $71, $52
    db $7d, $4e, $c0, $c0, $c0, $c0, $c0, $40, $c0, $40, $a0, $a0, $10, $10, $ff, $ff
    db $cf, $33, $7f, $40, $3f, $3f, $08, $08, $0f, $0f, $09, $09, $09, $09, $06, $06
    db $0e, $0e, $fc, $fc, $20, $20, $20, $20, $e0, $e0, $20, $20, $20, $20, $c0, $c0
    db $e0, $e0, $03, $03, $03, $03, $03, $02, $07, $06, $09, $09, $33, $33, $77, $54
    db $73, $4c, $18, $18, $d8, $d8, $d8, $d8, $f8, $78, $dc, $58, $bc, $bc, $3c, $3c
    db $7e, $7e, $09, $0e, $07, $07, $08, $0f, $08, $0f, $09, $0f, $0a, $0e, $06, $06
    db $0e, $0e, $00, $00, $03, $03, $03, $03, $03, $02

TypeA_Falling_Blocks_Screen_20x18_chars::
    db $ff, $7e, $c9, $3f, $78, $7f, $09, $0f, $04, $04, $07, $07, $b8, $bf, $c0, $ff
    db $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $78, $78, $78, $78, $7b, $48
    db $60, $5f, $b6, $b0, $84, $84, $b8, $b8, $84, $84, $84, $84, $84, $84, $fa, $fa
    db $92, $92, $9e, $9e, $67, $67, $e0, $e0, $00, $00, $00, $00, $78, $78, $78, $78
    db $78, $48, $40, $7e, $b4, $b0, $84, $84, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $7b, $30, $31, $31, $31, $31, $31, $32, $2a, $7c, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $44, $1c, $0c, $18, $1b, $0e, $45
    db $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $67, $46, $46
    db $46, $46, $46, $68, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $7b, $2f, $2f, $2f, $2f, $2f, $00, $2f, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $7c, $43, $34, $34, $34, $34, $34, $34, $2a, $7d, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $30, $31, $31, $31, $31, $31, $32
    db $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $36, $15, $0e
    db $1f, $0e, $15, $37, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $7c, $36, $2f, $2f, $2f, $2f, $2f, $37, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $7d, $40, $42, $42, $42, $42, $42, $41, $2a, $7b, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $36, $15, $12, $17, $0e, $1c, $37
    db $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $36, $2f, $2f
    db $2f, $2f, $2f, $37, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $7d, $33, $34, $34, $34, $34, $34, $35, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $7b, $2b, $38, $39, $39, $39, $39, $3a, $2a, $7c, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $2b, $3b, $2f, $2f, $2f, $2f, $3c
    db $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f

TypeB_Falling_Blocks_Screen_20x18_chars::
    db $2f, $2f, $2f, $2f, $7d, $2b, $3b, $2f, $2f

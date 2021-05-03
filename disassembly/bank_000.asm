; Disassembly of "tetris.gb"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

;ffcc_is_Set_to_1_on_serial_transfer_completion::
    jp Zero_d000_dfff


    db $00, $00, $00, $00, $00

RST_08::
    jp Zero_d000_dfff


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

;VBlank_IRQ::
    jp VBlank_Interrupt_Routine


    db $ff, $ff, $ff, $ff, $ff

;LCDC_Status_IRQ_Not_Used::
    jp Jump_000_26be


    db $ff, $ff, $ff, $ff, $ff

;Timer_Overflow_IRQ_Not_Used::
    jp Jump_000_26be


    db $ff, $ff, $ff, $ff, $ff

;Serial_Transfer_Completion_IRQ::
    jp Jump_000_005b


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
    db $ea
    daa

    ldh a, [$e1]
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
    ei
    call Delay_routine
    ld a, $80
    ldh [rSC], a
    ret


;This_routine_is_not_used::
    ldh a, [$cd]
    cp $02
    ret nz

    xor a
    ldh [rIF], a
    ei
    ret


    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff

Code_Begin::
    nop
    jp main


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
    db $01

Complement_Check::
    ld a, [bc]

Checksum::
    ld d, $bf

main::
    jp Zero_d000_dfff


;This_routine_is_not_used::
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

Send_byte_at_ffcf_out_serial_port_using_internal_clock::
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

Initiate_DMA_transfer::
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


Zero_d000_dfff::
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

Clear_Interrupt_Flag_and_Enable_Registers::
    ld a, $01
    di
    ldh [rIF], a
    ldh [rIE], a

Set_scroll_regs_LCDC_Status_and_Serial_port_to_0::
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [$a4], a
    ldh [rSTAT], a
    ldh [rSB], a
    ldh [rSC], a

Set_LCD_control_to_Operation::
    ld a, $80
    ldh [rLCDC], a

Loop_until_LCDC_Y_Coord_is_148::
    ldh a, [rLY]
    cp $94
    jr nz, Loop_until_LCDC_Y_Coord_is_148

Set_LCD_control_to_Stop_completely::
    ld a, $03
    ldh [rLCDC], a

Setup_colors_for_Background_and_Sprites::
    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ld a, $c4
    ldh [rOBP1], a

Setup_sound_channel_outputs::
    ld hl, $ff26
    ld a, $80
    ld [hl-], a
    ld a, $ff
    ld [hl-], a
    ld [hl], $77

Not_needed_since_the_original_has_no_MBC::
    ld a, $01
    ld [$2000], a

Initialize_stack_pointer::
    ld sp, $cfff

Set_ram_from_df00_to_dfff_to_0::
    xor a
    ld hl, $dfff
    ld b, $00

jr_000_0260:
    ld [hl-], a
    dec b
    jr nz, jr_000_0260

Set_ram_from_c000_to_cfff_to_0::
    ld hl, $cfff
    ld c, $10
    ld b, $00

jr_000_026b:
    ld [hl-], a
    dec b
    jr nz, jr_000_026b

    dec c
    jr nz, jr_000_026b

Set_ram_from_8000_to_9fff_to_0::
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

Set_ram_from_fe00_to_feff_to_0::
    ld hl, $feff
    ld b, $00

jr_000_0286:
    ld [hl-], a
    dec b
    jr nz, jr_000_0286

Set_ram_from_ff7f_to_fffe_to_0::
    ld hl, $fffe
    ld b, $80

jr_000_028f:
    ld [hl-], a
    dec b
    jr nz, jr_000_028f

Copy_DMA_transfer_routine_to_ffb6::
    ld c, $b6
    ld b, $0c
    ld hl, Initiate_DMA_transfer_from_c000_to_fe00

jr_000_029a:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_029a

Fill_screen_with_2f::
    call Fill_9800_to_9bff_with_2f

Reset_sound_registers::
    call $7ff3

Enable_serial_io_and_vblank_interrupts::
    ld a, $09
    ldh [rIE], a
    ld a, $37
    ldh [$c0], a
    ld a, $1c
    ldh [$c1], a

Setup_branch_point_for_routine_at_2f8::
    ld a, $24
    ldh [$e1], a

Set_LCD_control_to_Operation::
    ld a, $80
    ldh [rLCDC], a
    ei
    xor a

Clear_all_interrupt_flags::
    ldh [rIF], a

Set_window_x_and_y_position_to_0::
    ldh [rWY], a
    ldh [rWX], a

Set_timer_modulo_to_0::
    ldh [rTMA], a

Read_buttons_and_return_values::
    call Read_buttons_and_return_value_at_ff81
    call Call_000_02f8
    call $7ff0

If_all_arrow_keys_are_down_at_the_same_time_then_jump_to_21b::
    ldh a, [$80]
    and $0f
    cp $0f
    jp z, Clear_Interrupt_Flag_and_Enable_Registers

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
    jr z, Wait_for_a_VBlank_interrupt_to_occur

    ld a, $09
    ldh [rIE], a

Wait_for_a_VBlank_interrupt_to_occur::
    ldh a, [$85]
    and a
    jr z, Wait_for_a_VBlank_interrupt_to_occur

    xor a
    ldh [$85], a
    jp Read_buttons_and_return_values


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
    db $ea
    daa

Display_credits_screen::
    call Prepare_for_screen_memory_update_by_halting_LCD_controller
    call Copy_character_set_to_character_ram
    ld de, $4a07
    call Copy_a_screen_from_DE_to_screen_ram
    call Fill_c000_to_c09f_with_0
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

button_for_so_long_Lower_this_value_to_make_it_respond_sooner::
    ld a, $fa
    ldh [$a6], a
    ld a, $25
    ldh [$e1], a
    ret


Wait_for_initial_credit_screen_timer_to_run_out::
    ldh a, [$a6]
    and a
    ret nz

    ld a, $fa
    ldh [$a6], a
    ld a, $35
    ldh [$e1], a
    ret


screen_for_another_delay_period::
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


Display_Intro_Select_Players_Screen::
    call Prepare_for_screen_memory_update_by_halting_LCD_controller
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
    call Copy_character_set_to_character_ram
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
    call Copy_a_screen_from_DE_to_screen_ram
    call Fill_c000_to_c09f_with_0
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


Start_demo_mode::
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
    call Prepare_for_screen_memory_update_by_halting_LCD_controller
    call Call_000_27ad
    ld de, $4cd7
    call Copy_a_screen_from_DE_to_screen_ram
    call Fill_c000_to_c09f_with_0
    ld a, $d3
    ldh [rLCDC], a
    ret


;This_routine_is_not_used::
    ld a, $ff
    ldh [$e9], a
    ret


    ldh a, [$a6]
    and a
    jr nz, jr_000_0488

    ld hl, $ffc6
    dec [hl]
    jr z, Start_demo_mode

    ld a, $7d
    ldh [$a6], a

jr_000_0488:
    call Delay_routine

Send_55h_out_serial_port_using_external_clock::
    ld a, $55
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ldh a, [$cc]
    and a
    jr z, jr_000_04a2

Serial_Transfer_is_complete::
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

Test_for_Up_button::
    bit 2, b
    jr nz, jr_000_04f3

Test_for_A_button::
    bit 4, b
    jr nz, jr_000_0502

Test_for_B_button::
    bit 5, b
    jr nz, jr_000_0507

Test_for_Down_button::
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

Send_29h_out_serial_port_using_internal_clock::
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

    call Delay_routine
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


;This_routine_is_not_used::
    xor a
    ldh [$ed], a
    jr jr_000_0571

This_instruction_is_not_used::
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
    call Fill_c000_to_c09f_with_0
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

Display_Mario_VS_Luigi_screen::
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
    call Prepare_for_screen_memory_update_by_halting_LCD_controller
    call Call_000_27ad
    ld de, $5214
    call Copy_a_screen_from_DE_to_screen_ram
    call Fill_c000_to_c09f_with_0
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
    ld de, $0705
    ld b, $20
    call B_is_Length_of_data
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


    db $40, $28, $ae, $00, $40, $30, $ae, $20, $48, $28, $af, $00, $48, $30, $af, $20
    db $78, $28, $c0, $00, $78, $30, $c0, $20, $80, $28, $c1, $00, $80, $30, $c1, $20

B_is_Length_of_data::
    ld a, [de]
    ld [hl+], a
    inc de
    dec b
    jr nz, B_is_Length_of_data

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
    call Fill_c000_to_c09f_with_0

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

    db $40, $60, $40, $70, $40, $80, $50, $60, $50, $70, $50, $80, $78, $60, $78, $70
    db $78, $80, $88, $60, $88, $70, $88, $80

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


    call Prepare_for_screen_memory_update_by_halting_LCD_controller

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
    call Fill_c000_to_c09f_with_0
    ld de, $537c
    push de
    ld a, $01
    ldh [$a9], a
    ldh [$c5], a
    call Copy_a_screen_from_DE_to_screen_ram
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
    call B_is_Length_of_data
    ld a, $77
    ldh [$c0], a
    ld a, $d3
    ldh [rLCDC], a
    ld a, $19
    ldh [$e1], a
    ld a, $01
    ldh [$cd], a
    ret


    db $18, $84, $c0, $00, $18, $8c, $c0, $20, $20, $84, $c1, $00, $20, $8c, $c1, $20
    db $18, $84, $ae, $00, $18, $8c, $ae, $20, $20, $84, $af, $00, $20, $8c, $af, $20

    ld a, $08
    ldh [rIE], a
    xor a
    ldh [rIF], a
    ldh a, [$cb]
    cp $29
    jp nz, Jump_000_09f6

jr_000_08f2:
    call Delay_routine
    call Delay_routine
    xor a
    ldh [$cc], a
    ld a, $29
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
    call Delay_routine
    ld a, [hl+]
    ldh [rSB], a
    ld a, $81
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
    call Delay_routine
    call Delay_routine
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
    call Delay_routine
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
    call Delay_routine
    call Delay_routine
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
    call Delay_routine
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
    call Delay_routine
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
    call Delay_routine
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


Delay_routine::
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


    db $42, $30, $0d, $00, $42, $38, $b2, $00, $42, $40, $0e, $00, $42, $48, $1c, $00
    db $42, $58, $0e, $00, $42, $60, $1d, $00, $42, $68, $b5, $00, $42, $70, $bb, $00
    db $42, $78, $1d, $00

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
    call Prepare_for_screen_memory_update_by_halting_LCD_controller
    ld hl, $55ac
    ld bc, $1000
    call Call_000_27e4
    call Fill_9800_to_9bff_with_2f
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
    call Fill_c000_to_c09f_with_0
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

The_next_3_instructions_are_not_used::
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


    db $b0, $b1, $b2, $b3, $b1, $3e, $b4, $b5, $bb, $2e, $bc, $2f, $2d, $2e, $3d, $0e
    db $3e, $bd, $b2, $2e, $be, $2e, $2f, $2d, $2e, $3d, $0e, $3e, $b5, $b0, $41, $b5
    db $3d, $1d, $b5, $be, $b1

    ld a, $01
    ldh [rIE], a
    ldh a, [$a6]
    and a
    ret nz

    call Fill_c000_to_c09f_with_0
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
    call Prepare_for_screen_memory_update_by_halting_LCD_controller
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


    db $b3, $bc, $3d, $be, $bb, $b5, $1d, $b2, $bd, $b5, $1d, $2e, $bc, $3d, $0e, $3e

    ldh a, [$a6]
    and a
    ret nz

    call Prepare_for_screen_memory_update_by_halting_LCD_controller
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


    call Prepare_for_screen_memory_update_by_halting_LCD_controller
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


    db $c2, $ca, $ca, $ca, $ca, $ca, $ca, $c3, $cb, $58, $48, $48, $48, $48, $c8, $73
    db $73, $73, $73, $73, $73, $c9, $74, $74, $74, $74, $74, $74

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


Select_Game_and_Music_Type_screen::
    ld a, $01
    ldh [rIE], a
    xor a
    ldh [rSB], a
    ldh [rSC], a
    ldh [rIF], a

Call_000_144f:
    call Prepare_for_screen_memory_update_by_halting_LCD_controller
    call Call_000_27ad
    ld de, $4cd7
    call Copy_a_screen_from_DE_to_screen_ram
    call Fill_c000_to_c09f_with_0
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


    db $70, $37, $70, $77, $80, $37, $80, $77

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

Display_TypeA_Level_Select_Top_Score_screen::
    call Prepare_for_screen_memory_update_by_halting_LCD_controller
    ld de, $4e3f
    call Copy_a_screen_from_DE_to_screen_ram
    call Call_000_18fc
    call Fill_c000_to_c09f_with_0
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

    db $40, $30, $40, $40, $40, $50, $40, $60, $40, $70, $50, $30, $50, $40, $50, $50
    db $50, $60, $50, $70

Display_TypeB_Level_Select_High_Top_Score_screen::
    call Prepare_for_screen_memory_update_by_halting_LCD_controller
    ld de, $4fa7
    call Copy_a_screen_from_DE_to_screen_ram
    call Fill_c000_to_c09f_with_0
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

    db $40, $18, $40, $28, $40, $38, $40, $48, $40, $58, $50, $18, $50, $28, $50, $38
    db $50, $48, $50, $58

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

    cp $03
    jr nc, jr_000_172f

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

    db $40, $70, $40, $80, $40, $90, $50, $70, $50, $80, $50, $90, $00

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


Fill_c000_to_c09f_with_0::
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


Display_Falling_Blocks_screen::
    call Prepare_for_screen_memory_update_by_halting_LCD_controller
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
    call Fill_c000_to_c09f_with_0
    ldh a, [$c0]
    ld de, TypeB_Falling_Blocks_Screen_20x18_chars
    ld hl, $ffc3
    cp $77
    ld a, $50
    jr z, jr_000_1a3f

    ld a, $f1
    ld hl, $ffc2
    ld de, TypeA_Falling_Blocks_Screen_20x18_chars

jr_000_1a3f:
    push de
    ldh [$e6], a
    ld a, [hl]
    ldh [$a9], a
    call Copy_a_screen_from_DE_to_screen_ram
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


    db $34, $30, $2c, $28, $24, $20, $1b, $15, $10, $0a, $09, $08, $07, $06, $05, $05
    db $04, $04, $03, $03, $02

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
    jr nz, jr_000_1b26

    pop hl
    push de
    ld de, $0020
    add hl, de
    pop de
    dec c
    jr nz, jr_000_1b23

    ret


    db $85, $2f, $82, $86, $83, $2f, $2f, $80, $82, $85, $2f, $82, $84, $82, $83, $2f
    db $83, $2f, $87, $2f, $2f, $85, $2f, $83, $2f, $86, $82, $80, $81, $2f, $83, $2f
    db $86, $83, $2f, $85, $2f, $85, $2f, $2f

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
    jp z, Clear_Interrupt_Flag_and_Enable_Registers

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


    db $19, $0a, $1e, $1c, $0e

    ld a, $80
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
    call Stop_counting_if_score_reaches_999999
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
    call Fill_c000_to_c09f_with_0
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

    call Fill_c000_to_c09f_with_0
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
    call Stop_counting_if_score_reaches_999999
    ld de, $c0c4
    ld hl, $99a5
    call Call_000_2a36
    xor a
    ldh [$a6], a
    pop de
    ld hl, $c0a0
    call Stop_counting_if_score_reaches_999999
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
    call Stop_counting_if_score_reaches_999999
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
    call Stop_counting_if_score_reaches_999999
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

SLCDCSC_7::
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

SLCDCSC_5::
    ld de, $c942
    call Call_000_24ac
    ret


Call_000_2332:
    ldh a, [$e3]
    cp $0a
    ret nz

    ld hl, $9922

SLCDCSC_4::
    ld de, $c922
    call Call_000_24ac
    ret


Call_000_2341:
    ldh a, [$e3]
    cp $0b
    ret nz

    ld hl, $9902

SLCDCSC_3::
    ld de, $c902
    call Call_000_24ac
    ret


Call_000_2350:
    ldh a, [$e3]
    cp $0c
    ret nz

    ld hl, $98e2

SLCDCSC_2::
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

CIFER_7::
    ld de, $c822
    call Call_000_24ac
    ld hl, $986d
    call Call_000_243b
    ret


Call_000_23cc:
    ldh a, [$e3]

CIFER_6::
    cp $13
    ret nz

    ld [$c0c7], a
    ld hl, $9802
    ld de, $c802
    call Call_000_24ac

CIFER_5::
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

CIFER_4::
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
    call Stop_counting_if_score_reaches_999999
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
    call Stop_counting_if_score_reaches_999999
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


;This_routine_is_not_used::
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


    db $00, $18, $3f, $00, $80, $00, $00, $ff, $00, $80, $8f, $00, $80, $00, $00, $ff
    db $00, $70, $37, $1c, $00, $00, $00, $38, $37, $1c, $00, $00, $00, $40, $34, $20
    db $00, $00, $00, $40, $1c, $20, $00, $00, $00, $40, $74, $20, $00, $00, $00, $40
    db $68, $21, $00, $00, $00, $78, $68, $21, $00, $00, $00, $60, $60, $2a, $80, $00
    db $00, $60, $72, $2a, $80, $20, $00, $68, $38, $3e, $80, $00, $00, $60, $60, $36
    db $80, $00, $00, $60, $72, $36, $80, $20, $00, $68, $38, $32, $80, $00, $00, $60
    db $60, $2e, $80, $00, $00, $68, $38, $3c, $80, $00, $00, $60, $60, $3a, $80, $00
    db $00, $68, $38, $30, $80, $00, $80, $3f, $40, $44, $00, $00, $80, $3f, $20, $4a
    db $00, $00, $80, $3f, $30, $46, $00, $00, $80, $77, $20, $48, $00, $00, $80, $87
    db $48, $4c, $00, $00, $80, $87, $58, $4e, $00, $00, $80, $67, $4d, $50, $00, $00
    db $80, $67, $5d, $52, $00, $00, $80, $8f, $88, $54, $00, $00, $80, $8f, $98, $55
    db $00, $00, $00, $5f, $57, $2c, $00, $00, $80, $80, $50, $34, $00, $00, $80, $80
    db $60, $34, $00, $20, $00, $6f, $57, $58, $00, $00, $80, $80, $55, $34, $00, $00
    db $80, $80, $5b, $34, $00, $20

Fill_9800_to_9bff_with_2f::
    ld hl, $9bff

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


BC_is_Length_of_data::
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, BC_is_Length_of_data

    ret


Call_000_27ad:
    call Copy_characters_with_only_two_colors
    ld bc, $00a0
    call BC_is_Length_of_data
    ld hl, $323f
    ld de, $8300
    ld bc, $0d00
    call BC_is_Length_of_data
    ret


Copy_characters_with_only_two_colors::
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


Copy_character_set_to_character_ram::
    call Copy_characters_with_only_two_colors
    ld bc, $0da0
    call BC_is_Length_of_data
    ret


This_instruction_is_not_used::
    ld bc, $1000

Call_000_27e4:
    ld de, $8000
    call BC_is_Length_of_data
    ret


Copy_a_screen_from_DE_to_screen_ram::
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


Prepare_for_screen_memory_update_by_halting_LCD_controller::
    ldh a, [rIE]
    ldh [$a1], a
    res 0, a

Disable_VBlank_interrupt::
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


    db $2f, $2f, $11, $12, $1d, $2f, $2f, $2f, $2f, $2f, $29, $29, $29, $2f, $2f, $2f
    db $2f, $1c, $1d, $0a, $1b, $1d, $2f, $2f, $2f, $29, $29, $29, $29, $29, $2f, $2f
    db $2f, $2f, $2f, $1d, $18, $2f, $2f, $2f, $2f, $2f, $2f, $29, $29, $2f, $2f, $2f
    db $0c, $18, $17, $1d, $12, $17, $1e, $0e, $29, $29, $29, $29, $29, $29, $29, $29
    db $2f, $2f, $10, $0a, $16, $0e, $2f, $2f, $2f, $2f, $29, $29, $29, $29, $2f, $2f
    db $1c, $12, $17, $10, $15, $0e, $2f, $2f, $2f, $2f, $2f, $00, $2f, $26, $2f, $04
    db $00, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $0d, $18
    db $1e, $0b, $15, $0e, $2f, $2f, $2f, $2f, $2f, $00, $2f, $26, $2f, $01, $00, $00
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $1d, $1b, $12, $19
    db $15, $0e, $2f, $2f, $2f, $2f, $2f, $00, $2f, $26, $2f, $03, $00, $00, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $1d, $0e, $1d, $1b, $12, $1c
    db $2f, $2f, $2f, $2f, $2f, $00, $2f, $26, $2f, $01, $02, $00, $00, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $0d, $1b, $18, $19, $1c, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29
    db $1d, $11, $12, $1c, $2f, $1c, $1d, $0a, $10, $0e, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $00, $2f, $ff, $61, $62, $62, $62, $62, $62, $62, $63, $64, $2f, $2f
    db $2f, $2f, $2f, $2f, $65, $64, $2f, $10, $0a, $16, $0e, $2f, $65, $64, $2f, $ad
    db $ad, $ad, $ad, $2f, $65, $64, $2f, $18, $1f, $0e, $1b, $2f, $65, $64, $2f, $ad
    db $ad, $ad, $ad, $2f, $65, $66, $69, $69, $69, $69, $69, $69, $6a, $19, $15, $0e
    db $0a, $1c, $0e, $2f, $2f, $29, $29, $29, $29, $29, $29, $2f, $2f, $2f, $1d, $1b
    db $22, $2f, $2f, $2f, $2f, $2f, $29, $29, $29, $2f, $2f, $2f, $2f, $2f, $2f, $0a
    db $10, $0a, $12, $17, $27, $2f, $2f, $29, $29, $29, $29, $29, $2f

Read_buttons_and_return_value_at_ff81::
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

debounce_keys_to_minimize_errors::
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


;This_routine_is_not_used::
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

Initiate_DMA_transfer_from_c000_to_fe00::
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
    db $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $84, $84, $84, $fe, $84, $ff, $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $84, $fe, $fe, $fe, $84, $fe, $fe, $fe, $84, $84, $ff
    db $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $84, $fe, $84, $84, $84, $fe, $ff, $a9, $31

    db $fe, $fe, $fe, $fe, $84, $84, $fe, $fe, $fe, $84, $fe, $fe, $fe, $84, $ff, $a9
    db $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $81, $81, $81, $fe, $fe, $fe, $81, $ff
    db $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $81, $81, $fe, $fe, $81, $fe, $fe, $fe, $81, $ff, $a9
    db $31

    db $fe, $fe, $fe, $fe, $81, $fe, $fe, $fe, $81, $81, $81, $ff, $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $81, $fe, $fe, $fe, $81, $fe, $fe, $81, $81, $ff, $a9
    db $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $8a, $8b, $8b, $8f, $ff, $a9, $31

    db $fe, $80, $fe, $fe, $fe, $88, $fe, $fe, $fe, $88, $fe, $fe, $fe, $89, $ff, $a9
    db $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $8a, $8b, $8b, $8f, $ff, $a9, $31

    db $fe, $80, $fe, $fe, $fe, $88, $fe, $fe, $fe, $88, $fe, $fe, $fe, $89, $ff, $a9
    db $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $83, $83, $fe, $fe, $83, $83, $ff
    db $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $83, $83, $fe, $fe, $83, $83, $ff
    db $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $83, $83, $fe, $fe, $83, $83, $ff
    db $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $83, $83, $fe, $fe, $83, $83, $ff
    db $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $82, $82, $fe, $fe, $fe, $82, $82, $ff
    db $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $82, $fe, $fe, $82, $82, $fe, $fe, $82, $ff, $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $82, $82, $fe, $fe, $fe, $82, $82, $ff
    db $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $82, $fe, $fe, $82, $82, $fe, $fe, $82, $ff, $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $86, $86, $fe, $86, $86, $ff, $a9
    db $31

    db $fe, $fe, $fe, $fe, $86, $fe, $fe, $fe, $86, $86, $fe, $fe, $fe, $86, $ff, $a9
    db $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $86, $86, $fe, $86, $86, $ff, $a9
    db $31

    db $fe, $fe, $fe, $fe, $86, $fe, $fe, $fe, $86, $86, $fe, $fe, $fe, $86, $ff, $a9
    db $31

    db $fe, $fe, $fe, $fe, $fe, $85, $fe, $fe, $85, $85, $85, $ff, $a9, $31

    db $fe, $fe, $fe, $fe, $fe, $85, $fe, $fe, $85, $85, $fe, $fe, $fe, $85, $ff, $a9
    db $31

    db $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $85, $85, $85, $fe, $fe, $85, $ff, $a9
    db $31

    db $fe, $fe, $fe, $fe, $fe, $85, $fe, $fe, $fe, $85, $85, $fe, $fe, $85, $ff, $c9
    db $31

    db $0a, $25, $1d, $22, $19, $0e, $ff, $c9, $31

    db $0b, $25, $1d, $22, $19, $0e, $ff, $c9, $31

    db $0c, $25, $1d, $22, $19, $0e, $ff, $c9, $31

    db $2f, $18, $0f, $0f, $2f, $2f, $ff, $c9, $31

    db $00, $ff, $c9, $31

    db $01, $ff, $c9, $31

    db $02, $ff, $c9, $31

    db $03, $ff, $c9, $31

    db $04, $ff, $c9, $31

    db $05, $ff, $c9, $31

    db $06, $ff, $c9, $31

    db $07, $ff, $c9, $31

    db $08, $ff, $c9, $31

    db $09, $ff, $d9, $31

    db $2f, $01, $2f, $11, $20, $21, $30, $31, $ff, $d9, $31

    db $2f, $03, $12, $13, $22, $23, $32, $33, $ff, $a9, $31

    db $2f, $05, $fd, $05, $2f, $2f, $15, $04, $17, $24, $25, $26, $27, $34, $35, $36
    db $2f, $ff, $a9, $31

    db $08, $37, $fd, $37, $fd, $08, $18, $19, $14, $1b, $28, $29, $2a, $2b, $60, $70
    db $36, $2f, $ff, $d9, $31

    db $b9, $fd, $b9, $ba, $fd, $ba, $ff, $d9, $31

    db $82, $fd, $82, $83, $fd, $83, $ff, $d9, $31

    db $09, $0a, $3a, $3b, $ff, $d9, $31

    db $0b, $40, $7c, $6f, $ff, $d9, $31

    db $2f, $0f, $2f, $1f, $5f, $2c, $2f, $3f, $ff, $d9, $31

    db $6c, $3c, $4b, $4c, $5b, $5c, $6b, $2f, $ff, $a9, $31

    db $2f, $4d, $fd, $4d, $2f, $2f, $5d, $5e, $4e, $5f, $6d, $6e, $2f, $2f, $7d, $fd
    db $7d, $2f, $ff, $a9, $31

    db $08, $77, $fd, $77, $fd, $08, $18, $78, $43, $53, $7a, $7b, $50, $2f, $2f, $02
    db $fd, $7d, $2f, $ff, $d9, $31

    db $b9, $fd, $b9, $ba, $fd, $ba, $ff, $d9, $31

    db $82, $fd, $82, $83, $fd, $83, $ff, $d9, $31

    db $09, $0a, $3a, $3b, $ff, $d9, $31

    db $0b, $40, $7c, $6f, $ff, $d9, $31

    db $dc, $dd, $e0, $e1, $ff, $d9, $31

    db $de, $df, $e0, $e1, $ff, $d9, $31

    db $de, $e2, $e0, $e4, $ff, $d9, $31

    db $dc, $ee, $e0, $e3, $ff, $d9, $31

    db $e5, $e6, $e7, $e8, $ff, $d9, $31

    db $fd, $e6, $fd, $e5, $fd, $e8, $fd, $e7, $ff, $d9, $31

    db $e9, $ea, $eb, $ec, $ff, $d9, $31

    db $ed, $ea, $eb, $ec, $ff, $d9, $31

    db $f2, $f4, $f3, $bf, $ff, $d9, $31

    db $f4, $f2, $bf, $f3, $ff, $d9, $31

    db $c2, $fd, $c2, $c3, $fd, $c3, $ff, $d9, $31

    db $c4, $fd, $c4, $c5, $fd, $c5, $ff, $d9, $31

    db $dc, $fd, $dc, $ef, $fd, $ef, $ff, $d9, $31

    db $f0, $fd, $f0, $f1, $fd, $f1, $ff, $d9, $31

    db $dc, $fd, $f0, $f1, $fd, $ef, $ff, $d9, $31

    db $f0, $fd, $dc, $ef, $fd, $f1, $ff, $d9, $31

    db $bd, $be, $bb, $bc, $ff, $d9, $31

    db $b9, $ba, $da, $db, $ff, $cb, $30

    db $e0, $f0, $f5, $31

    db $c0, $c1, $c5, $c6, $cc, $cd, $75, $76, $a4, $a5, $a6, $a7, $54, $55, $56, $57
    db $44, $45, $46, $47, $a0, $a1, $a2, $a3, $9c, $9d, $9e, $9f, $ff, $16, $31

    db $f8, $e8, $1c, $31

    db $f0, $e8, $25, $31

    db $00, $00, $2b, $31

    db $00, $00, $31, $31

    db $00, $00, $3a, $31

    db $00, $00, $9d, $31

    db $00, $00, $a3, $31

    db $00, $00, $64, $31

    db $d8, $f8, $7c, $31

    db $e8, $f8, $8e, $31

    db $f0, $f8, $2d, $32

    db $63, $64, $65, $ff, $2d, $32

    db $63, $64, $65, $66, $67, $68, $ff, $2d, $32

    db $41, $41, $41, $ff, $2d, $32

    db $42, $42, $42, $ff, $2d, $32

    db $52, $52, $52, $62, $62, $62, $ff, $2d, $32

    db $51, $51, $51, $61, $61, $61, $71, $71, $71, $ff, $a9, $31

    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $63, $64, $fd, $64, $fd, $63, $66, $67
    db $fd, $67, $fd, $66, $ff, $d9, $31

    db $2f, $2f, $63, $64, $ff, $d9, $31

    db $00, $fd, $00, $10, $fd, $10, $4f, $fd, $4f, $80, $fd, $80, $80, $fd, $80, $81
    db $fd, $81, $97, $fd, $97, $ff, $d9, $31

    db $98, $fd, $98, $99, $fd, $99, $80, $fd, $80, $9a, $fd, $9a, $9b, $fd, $9b, $ff
    db $d9, $31

    db $a8, $fd, $a8, $a9, $fd, $a9, $aa, $fd, $aa, $ab, $fd, $ab, $ff, $d9, $31

    db $41, $2f, $2f, $ff, $d9, $31

    db $52, $2f, $62, $ff, $00, $00, $00, $08, $00, $10, $00, $18, $08, $00, $08, $08
    db $08, $10, $08, $18, $10, $00, $10, $08, $10, $10, $10, $18, $18, $00, $18, $08
    db $18, $10, $18, $18, $00, $00, $00, $08, $00, $10, $00, $18, $00, $20, $00, $28
    db $00, $30, $00, $38, $00, $00, $00, $08, $08, $00, $08, $08, $10, $00, $10, $08
    db $18, $00, $18, $08, $20, $00, $20, $08, $28, $00, $28, $08, $30, $00, $30, $08
    db $00, $08, $00, $10, $08, $08, $08, $10, $10, $00, $10, $08, $10, $10, $10, $18
    db $18, $00, $18, $08, $18, $10, $18, $18, $20, $00, $20, $08, $20, $10, $20, $18
    db $28, $00, $28, $08, $28, $10, $28, $18, $30, $00, $30, $08, $30, $10, $30, $18
    db $38, $00, $38, $08, $38, $10, $38, $18, $00, $00, $00, $08, $00, $10, $08, $00
    db $08, $08, $08, $10, $10, $00, $10, $08, $10, $10, $7f, $7f, $7f, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $7c, $7c, $78, $79, $78, $7b, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $00, $00, $ff, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $3f, $3f, $1f, $9f, $1f, $df, $78, $7b, $78, $79, $7c, $7c
    db $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $00, $00, $00, $ff, $00, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $1f, $df, $1f, $9f, $3f, $3f
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $78, $7a, $78, $7a, $78, $7a
    db $78, $7a, $78, $7a, $78, $7a, $78, $7a, $78, $7a, $1f, $5f, $1f, $5f, $1f, $5f
    db $1f, $5f, $1f, $5f, $1f, $5f, $1f, $5f, $1f, $5f, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $f8, $f8, $f0, $f2, $e1, $f5, $e3, $f2, $e6, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $00, $00, $00, $ff, $ff, $ff, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $1f, $1f, $0f, $4f, $87, $af, $c7, $4f, $67, $f2, $e6, $f2, $e6, $f2, $e6
    db $f2, $e6, $f2, $e6, $f2, $e6, $f2, $e6, $f2, $e6, $4f, $67, $4f, $67, $4f, $67
    db $4f, $67, $4f, $67, $4f, $67, $4f, $67, $4f, $67, $f2, $e6, $f5, $e3, $f2, $e1
    db $f8, $f0, $ff, $f8, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $ff, $ff, $00, $ff
    db $00, $00, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $4f, $67, $af, $c7, $4f, $87
    db $1f, $0f, $ff, $1f, $ff, $ff, $ff, $ff, $ff, $ff, $78, $7b, $78, $79, $7c, $7c
    db $7f, $7f, $7f, $7f, $7c, $7c, $78, $79, $78, $7b, $1f, $df, $1f, $9f, $3f, $3f
    db $ff, $ff, $ff, $ff, $3f, $3f, $1f, $9f, $1f, $df, $00, $00, $00, $ff, $00, $00
    db $ff, $ff, $ff, $ff, $00, $00, $00, $ff, $00, $00, $00, $00, $00, $7f, $00, $00
    db $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $78, $7a, $78, $7a, $78, $7a
    db $78, $7a, $78, $7a, $00, $02, $00, $7a, $00, $7a, $1f, $5f, $1f, $5f, $1f, $5f
    db $1f, $5f, $1f, $5f, $00, $40, $00, $5f, $00, $5f, $00, $00, $00, $ff, $00, $00
    db $00, $ff, $00, $ff, $00, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $3f, $3f
    db $3f, $3f, $30, $30, $30, $30, $33, $32, $33, $30, $00, $00, $00, $00, $ff, $ff
    db $ff, $ff, $00, $00, $00, $00, $ff, $02, $ff, $20, $00, $00, $00, $00, $fc, $fc
    db $fc, $fc, $0c, $0c, $0c, $0c, $cc, $0c, $cc, $0c, $33, $30, $33, $30, $33, $30
    db $33, $30, $33, $30, $33, $30, $33, $32, $33, $30, $cc, $0c, $cc, $4c, $cc, $0c
    db $cc, $0c, $cc, $0c, $cc, $8c, $cc, $0c, $cc, $0c, $33, $30, $33, $30, $30, $30
    db $30, $30, $3f, $3f, $3f, $3f, $00, $00, $00, $00, $ff, $04, $ff, $40, $00, $00
    db $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $cc, $0c, $cc, $4c, $0c, $0c
    db $0c, $0c, $fc, $fc, $fc, $fc, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $00
    db $ff, $02, $ff, $20, $ff, $00, $ff, $04, $ff, $00, $ff, $00, $ff, $02, $ff, $40
    db $ff, $00, $ff, $08, $ff, $01, $ff, $43, $ff, $07, $ff, $04, $ff, $40, $ff, $02
    db $ff, $00, $ff, $00, $ff, $ff, $ff, $ff, $00, $00, $ff, $00, $ff, $40, $ff, $02
    db $ff, $00, $ff, $10, $ff, $80, $ff, $c2, $ff, $e0, $fe, $06, $fe, $46, $fe, $06
    db $fe, $06, $fe, $16, $fe, $86, $fe, $06, $fe, $06, $7f, $64, $7f, $60, $7f, $62
    db $7f, $60, $7f, $60, $7f, $68, $7f, $62, $7f, $60, $ff, $02, $ff, $40, $ff, $00
    db $ff, $00, $ff, $08, $ff, $80, $ff, $1f, $f0, $10, $ff, $02, $ff, $20, $ff, $00
    db $ff, $00, $ff, $04, $ff, $00, $ff, $ff, $00, $00, $ff, $07, $ff, $13, $ff, $01
    db $ff, $00, $ff, $40, $ff, $00, $ff, $ff, $08, $08, $00, $00, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $02, $ff, $20, $ff, $ff, $00, $00, $ff, $e0, $ff, $c8, $ff, $80
    db $ff, $00, $ff, $02, $ff, $00, $ff, $ff, $08, $08, $ff, $00, $ff, $02, $ff, $40
    db $ff, $00, $ff, $02, $ff, $00, $ff, $f8, $0f, $08, $f0, $10, $f0, $10, $f0, $10
    db $f0, $50, $f0, $10, $f0, $10, $f0, $10, $f0, $10, $0f, $08, $0f, $0a, $0f, $08
    db $0f, $08, $0f, $08, $0f, $08, $0f, $09, $0f, $08, $00, $00, $00, $7f, $00, $00
    db $7f, $7f, $7f, $7f, $7c, $7c, $78, $79, $78, $7b, $00, $00, $00, $ff, $00, $00
    db $ff, $ff, $ff, $ff, $3f, $3f, $1f, $9f, $1f, $df, $7f, $7f, $7f, $7f, $7f, $7f
    db $7f, $7f, $7f, $7f, $00, $00, $00, $7f, $00, $00, $00, $00, $00, $00, $00, $00
    db $aa, $aa, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0f, $0f
    db $1f, $1f, $38, $38, $33, $30, $36, $30, $34, $30, $00, $00, $00, $00, $ff, $ff
    db $ff, $ff, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $f0, $f0
    db $f8, $f8, $1c, $1c, $cc, $0c, $6c, $0c, $2c, $0c, $34, $30, $34, $30, $34, $30
    db $34, $30, $34, $30, $34, $30, $34, $30, $34, $30, $2c, $0c, $2c, $0c, $2c, $0c
    db $2c, $0c, $2c, $0c, $2c, $0c, $2c, $0c, $2c, $0c, $34, $30, $36, $30, $33, $30
    db $38, $38, $1f, $1f, $0f, $0f, $00, $00, $00, $00, $00, $7b, $00, $79, $00, $7c
    db $00, $7f, $00, $7f, $00, $00, $00, $7f, $00, $00, $00, $df, $00, $9f, $00, $3f
    db $00, $ff, $00, $ff, $00, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $ff, $00
    db $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $2c, $0c, $6c, $0c, $cc, $0c
    db $1c, $1c, $f8, $f8, $f0, $f0, $00, $00, $00, $00, $08, $08, $ff, $ff, $ff, $02
    db $ff, $00, $ff, $20, $ff, $00, $ff, $02, $ff, $00, $00, $00, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $02, $ff, $20, $ff, $ff, $08, $08, $ff, $07, $ff, $13, $ff, $01
    db $ff, $00, $ff, $40, $ff, $00, $ff, $ff, $00, $00, $ff, $e0, $ff, $c8, $ff, $80
    db $ff, $00, $ff, $02, $ff, $00, $ff, $ff, $00, $00, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $ff, $00, $ff, $02, $ff, $00
    db $ff, $20, $ff, $02, $ff, $00, $ff, $ff, $08, $08, $f0, $10, $ff, $1f, $f0, $1f
    db $f0, $1f, $f0, $1f, $f0, $1f, $ff, $5f, $f0, $10, $00, $00, $ff, $ff, $00, $ff
    db $00, $ff, $00, $ff, $00, $ff, $ff, $ff, $00, $00, $08, $08, $ff, $ff, $00, $ff
    db $00, $ff, $00, $ff, $00, $ff, $ff, $ff, $08, $08, $0f, $08, $ff, $f8, $0f, $f8
    db $0f, $f8, $0f, $f8, $0f, $f8, $ff, $fa, $0f, $08, $ff, $07, $ff, $43, $ff, $01
    db $ff, $00, $ff, $00, $ff, $80, $ff, $1f, $f0, $10, $ff, $e0, $ff, $c2, $ff, $80
    db $ff, $00, $ff, $22, $ff, $00, $ff, $f8, $0f, $08, $00, $00, $00, $00, $00, $00
    db $3c, $00, $3c, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3c, $00, $4e, $00
    db $4e, $00, $7e, $00, $4e, $00, $4e, $00, $00, $00, $00, $00, $7c, $00, $66, $00
    db $7c, $00, $66, $00, $66, $00, $7c, $00, $00, $00, $00, $00, $3c, $00, $66, $00
    db $60, $00, $60, $00, $66, $00, $3c, $00, $00, $00, $dd, $44, $ff, $44, $ff, $ff
    db $77, $11, $ff, $11, $ff, $ff, $dd, $44, $ff, $44, $ff, $ff, $77, $11, $ff, $11
    db $ff, $ff, $dd, $44, $ff, $44, $ff, $ff, $77, $11, $ff, $11, $ff, $ff, $dd, $44
    db $ff, $44, $ff, $ff, $77, $11, $ff, $11, $ff, $ff, $00, $00, $7e, $00, $18, $00
    db $18, $00, $18, $00, $18, $00, $18, $00, $00, $00, $00, $00, $66, $00, $66, $00
    db $3c, $00, $18, $00, $18, $00, $18, $00, $00, $00, $ff, $ff, $f7, $89, $dd, $a3
    db $ff, $81, $b7, $c9, $fd, $83, $d7, $a9, $ff, $81, $ff, $ff, $ff, $81, $ff, $bd
    db $e7, $a5, $e7, $a5, $ff, $bd, $ff, $81, $ff, $ff, $ff, $ff, $ff, $81, $ff, $81
    db $ff, $99, $ff, $99, $ff, $81, $ff, $81, $ff, $ff, $ff, $ff, $81, $81, $bd, $bd
    db $bd, $bd, $bd, $bd, $bd, $bd, $81, $81, $ff, $ff, $ff, $ff, $81, $ff, $81, $ff
    db $81, $ff, $81, $ff, $81, $ff, $81, $ff, $ff, $ff, $ff, $ff, $ff, $81, $c3, $81
    db $df, $85, $df, $85, $ff, $bd, $ff, $81, $ff, $ff, $ff, $ff, $81, $ff, $bd, $ff
    db $a5, $e7, $a5, $e7, $bd, $ff, $81, $ff, $ff, $ff, $ff, $ff, $81, $81, $bd, $83
    db $bd, $83, $bd, $83, $bd, $83, $81, $ff, $ff, $ff, $ed, $93, $bf, $c1, $f5, $8b
    db $df, $a1, $fd, $83, $af, $d1, $fb, $85, $df, $a1, $fd, $83, $ef, $91, $bb, $c5
    db $ef, $91, $bd, $c3, $f7, $89, $df, $a1, $ff, $ff, $ff, $ff, $db, $a4, $ff, $80
    db $b5, $ca, $ff, $80, $dd, $a2, $f7, $88, $ff, $ff, $ff, $ff, $57, $a8, $fd, $02
    db $df, $20, $7b, $84, $ee, $11, $bb, $44, $ff, $ff, $ff, $00, $ff, $00, $ff, $00
    db $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $00, $ff, $00, $ff, $00, $ff
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $77, $89, $df, $21
    db $fb, $05, $af, $51, $fd, $03, $d7, $29, $ff, $ff, $00, $00, $3c, $00, $66, $00
    db $66, $00, $66, $00, $66, $00, $3c, $00, $00, $00, $00, $00, $18, $00, $38, $00
    db $18, $00, $18, $00, $18, $00, $3c, $00, $00, $00, $00, $00, $3c, $00, $4e, $00
    db $0e, $00, $3c, $00, $70, $00, $7e, $00, $00, $00, $00, $00, $7c, $00, $0e, $00
    db $3c, $00, $0e, $00, $0e, $00, $7c, $00, $00, $00, $00, $00, $3c, $00, $6c, $00
    db $4c, $00, $4e, $00, $7e, $00, $0c, $00, $00, $00, $00, $00, $7c, $00, $60, $00
    db $7c, $00, $0e, $00, $4e, $00, $3c, $00, $00, $00, $00, $00, $3c, $00, $60, $00
    db $7c, $00, $66, $00, $66, $00, $3c, $00, $00, $00, $00, $00, $7e, $00, $06, $00
    db $0c, $00, $18, $00, $38, $00, $38, $00, $00, $00, $00, $00, $3c, $00, $4e, $00
    db $3c, $00, $4e, $00, $4e, $00, $3c, $00, $00, $00, $00, $00, $3c, $00, $4e, $00
    db $4e, $00, $3e, $00, $0e, $00, $3c, $00, $00, $00, $00, $00, $7c, $00, $66, $00
    db $66, $00, $7c, $00, $60, $00, $60, $00, $00, $00, $00, $00, $7e, $00, $60, $00
    db $7c, $00, $60, $00, $60, $00, $7e, $00, $00, $00, $00, $00, $7e, $00, $60, $00
    db $60, $00, $7c, $00, $60, $00, $60, $00, $00, $00, $00, $00, $3c, $00, $66, $00
    db $66, $00, $66, $00, $66, $00, $3c, $00, $00, $00, $00, $00, $3c, $00, $66, $00
    db $60, $00, $6e, $00, $66, $00, $3e, $00, $00, $00, $00, $00, $46, $00, $6e, $00
    db $7e, $00, $56, $00, $46, $00, $46, $00, $00, $00, $00, $00, $46, $00, $46, $00
    db $46, $00, $46, $00, $4e, $00, $3c, $00, $00, $00, $00, $00, $3c, $00, $60, $00
    db $3c, $00, $0e, $00, $4e, $00, $3c, $00, $00, $00, $00, $00, $3c, $00, $18, $00
    db $18, $00, $18, $00, $18, $00, $3c, $00, $00, $00, $00, $00, $60, $00, $60, $00
    db $60, $00, $60, $00, $60, $00, $7e, $00, $00, $00, $00, $00, $46, $00, $46, $00
    db $46, $00, $46, $00, $2c, $00, $18, $00, $00, $00, $00, $00, $7c, $00, $66, $00
    db $66, $00, $7c, $00, $68, $00, $66, $00, $00, $00, $00, $00, $46, $00, $66, $00
    db $76, $00, $5e, $00, $4e, $00, $46, $00, $00, $00, $00, $00, $7c, $00, $4e, $00
    db $4e, $00, $4e, $00, $4e, $00, $7c, $00, $00, $00, $ff, $ff, $ff, $00, $ff, $00
    db $ff, $00, $ff, $10, $ff, $80, $ff, $02, $ff, $00, $00, $00, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $02, $ff, $20, $ff, $ff, $80, $80, $80, $80, $80, $80, $80, $80
    db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $ff, $ff, $00, $ff
    db $00, $ff, $00, $ff, $00, $ff, $ff, $ff, $80, $80, $80, $80, $ff, $ff, $ff, $00
    db $ff, $02, $ff, $20, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $18, $1f, $21, $3e
    db $47, $7f, $5f, $7f, $39, $30, $7b, $62, $fb, $b2, $ff, $a0, $ff, $c2, $7f, $54
    db $7f, $5c, $3f, $2e, $7f, $63, $bf, $f8, $37, $ff, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $83, $83, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $83, $83, $ff, $ff, $d9, $87, $d9, $87
    db $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87
    db $d9, $87, $d9, $87, $d9, $87, $d9, $87, $ff, $ff, $d9, $87, $d9, $87, $d9, $87
    db $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $00, $38, $00, $38, $00, $38
    db $00, $38, $00, $38, $00, $38, $00, $38, $00, $38, $7c, $00, $7c, $00, $7c, $00
    db $7c, $00, $7c, $00, $7c, $00, $7f, $00, $ff, $00, $00, $00, $00, $00, $08, $00
    db $08, $00, $08, $00, $08, $00, $1c, $00, $1c, $00, $00, $00, $00, $0e, $01, $1d
    db $1e, $06, $2a, $2a, $27, $27, $10, $13, $0c, $0d, $00, $00, $c0, $c0, $20, $20
    db $10, $d0, $d0, $10, $f0, $30, $c8, $e8, $08, $e8, $04, $07, $03, $03, $0c, $0c
    db $10, $10, $35, $20, $2a, $20, $3f, $3f, $0c, $0c, $28, $e8, $d8, $c0, $40, $40
    db $20, $20, $50, $10, $b0, $10, $f0, $f0, $c0, $c0, $00, $e0, $01, $71, $32, $42
    db $34, $35, $55, $54, $4f, $4e, $21, $27, $18, $1b, $00, $00, $80, $80, $40, $40
    db $20, $a0, $a0, $20, $e0, $60, $90, $f0, $08, $c8, $b8, $b8, $84, $84, $84, $84
    db $fc, $fc, $92, $92, $92, $92, $6c, $6c, $ee, $ee, $07, $07, $1f, $18, $3e, $20
    db $7f, $4f, $7f, $5f, $70, $70, $a2, $a2, $b0, $b0, $b4, $b4, $64, $64, $3c, $3c
    db $2e, $2e, $27, $27, $10, $10, $6c, $7c, $cf, $b3, $03, $03, $03, $03, $03, $02
    db $07, $06, $09, $09, $16, $17, $12, $11, $0e, $0f, $08, $09, $08, $08, $0f, $0f
    db $08, $08, $09, $09, $0a, $0a, $06, $06, $0e, $0e, $03, $03, $03, $03, $03, $02
    db $1f, $1e, $21, $21, $4a, $55, $4a, $75, $0a, $35, $0a, $15, $08, $08, $0f, $0f
    db $08, $08, $09, $09, $0a, $0a, $06, $06, $0e, $0e, $00, $00, $66, $00, $6c, $00
    db $78, $00, $78, $00, $6c, $00, $66, $00, $00, $00, $00, $00, $46, $00, $2c, $00
    db $18, $00, $38, $00, $64, $00, $42, $00, $00, $00, $fd, $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $f8, $00, $e0, $00, $c0, $00
    db $80, $00, $80, $00, $00, $00, $00, $00, $00, $00, $7f, $00, $1f, $00, $0f, $00
    db $07, $00, $07, $00, $03, $00, $03, $00, $03, $00, $00, $00, $80, $00, $80, $00
    db $c0, $00, $e0, $00, $f8, $00, $ff, $00, $ff, $00, $03, $00, $07, $00, $07, $00
    db $0f, $00, $1f, $00, $7f, $00, $ff, $00, $ff, $00, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $00, $ff, $ff, $00, $00, $ff, $ff, $00, $ff, $00, $ff, $00, $ff, $01
    db $fe, $02, $fe, $02, $fc, $04, $fc, $04, $fc, $04, $ff, $02, $ff, $01, $ff, $01
    db $01, $01, $ff, $01, $01, $01, $ff, $01, $01, $01, $02, $02, $02, $02, $03, $03
    db $04, $05, $08, $09, $11, $12, $21, $26, $43, $4c, $00, $00, $01, $01, $02, $02
    db $04, $04, $08, $09, $10, $13, $20, $27, $20, $2f, $87, $98, $06, $39, $0e, $71
    db $1e, $e1, $3c, $c3, $3c, $c3, $78, $87, $78, $87, $40, $4f, $40, $4f, $80, $9f
    db $80, $9f, $80, $9f, $80, $9f, $80, $9f, $80, $9f, $f8, $07, $f0, $0f, $f0, $0f
    db $f0, $0f, $f0, $0f, $f0, $0f, $f0, $0f, $f8, $07, $40, $5f, $40, $4f, $20, $2f
    db $20, $27, $10, $11, $0f, $0f, $04, $04, $07, $07, $78, $87, $7c, $83, $3c, $c3
    db $1e, $e1, $0f, $f0, $ff, $ff, $ff, $00, $ff, $ff, $ff, $00, $ff, $00, $ff, $00
    db $00, $00, $ff, $00, $00, $00, $ff, $00, $00, $00, $02, $00, $02, $00, $02, $00
    db $02, $00, $02, $00, $02, $00, $02, $00, $02, $00, $10, $00, $38, $00, $7c, $00
    db $fe, $00, $fe, $00, $fe, $00, $7c, $00, $00, $00, $02, $03, $01, $01, $02, $02
    db $04, $04, $0d, $08, $0a, $08, $0f, $0f, $03, $03, $28, $e8, $f0, $d0, $30, $30
    db $08, $08, $54, $04, $ac, $04, $fc, $fc, $30, $30, $00, $00, $03, $03, $03, $03
    db $03, $02, $07, $06, $09, $09, $08, $08, $0b, $0b, $00, $00, $c0, $c0, $c4, $c4
    db $e8, $68, $90, $f0, $a8, $f8, $48, $78, $f8, $b8, $00, $00, $07, $07, $07, $07
    db $07, $04, $07, $04, $0b, $0b, $10, $10, $17, $17, $00, $00, $80, $80, $80, $80
    db $e0, $e0, $90, $f0, $a8, $f8, $48, $78, $b8, $b8, $08, $08, $0f, $0f, $08, $08
    db $0f, $0f, $09, $09, $09, $09, $06, $06, $0e, $0e, $e4, $e4, $22, $22, $20, $20
    db $e0, $e0, $20, $20, $20, $20, $c0, $c0, $e0, $e0, $18, $18, $98, $98, $98, $98
    db $f8, $f8, $9c, $98, $3c, $3c, $3c, $3c, $7e, $7e, $7f, $00, $fe, $fe, $7e, $7e
    db $fe, $da, $7e, $5a, $7e, $7e, $fc, $fc, $f8, $f8, $fe, $0e, $fe, $fe, $7e, $7e
    db $fe, $da, $7e, $5a, $7e, $7e, $fc, $fc, $f8, $f8, $80, $80, $83, $83, $83, $83
    db $c3, $02, $ef, $2e, $97, $97, $47, $44, $24, $24, $00, $00, $c0, $c0, $c0, $c0
    db $c0, $40, $e0, $60, $f8, $f8, $e4, $24, $34, $34, $17, $14, $17, $14, $17, $14
    db $1c, $1f, $17, $17, $0f, $0f, $1e, $1e, $00, $00, $f4, $24, $f8, $28, $e8, $28
    db $38, $f8, $e8, $e8, $90, $90, $70, $70, $78, $78, $03, $03, $03, $03, $03, $02
    db $0f, $0e, $11, $11, $37, $37, $71, $52, $7d, $4e, $c0, $c0, $c0, $c0, $c0, $40
    db $c0, $40, $a0, $a0, $10, $10, $ff, $ff, $cf, $33, $7f, $40, $3f, $3f, $08, $08
    db $0f, $0f, $09, $09, $09, $09, $06, $06, $0e, $0e, $fc, $fc, $20, $20, $20, $20
    db $e0, $e0, $20, $20, $20, $20, $c0, $c0, $e0, $e0, $03, $03, $03, $03, $03, $02
    db $07, $06, $09, $09, $33, $33, $77, $54, $73, $4c, $18, $18, $d8, $d8, $d8, $d8
    db $f8, $78, $dc, $58, $bc, $bc, $3c, $3c, $7e, $7e, $09, $0e, $07, $07, $08, $0f
    db $08, $0f, $09, $0f, $0a, $0e, $06, $06, $0e, $0e, $00, $00, $03, $03, $03, $03
    db $03, $02, $ff, $7e, $c9, $3f, $78, $7f, $09, $0f, $04, $04, $07, $07, $b8, $bf
    db $c0, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $78, $78, $78, $78
    db $7b, $48, $60, $5f, $b6, $b0, $84, $84, $b8, $b8, $84, $84, $84, $84, $84, $84
    db $fa, $fa, $92, $92, $9e, $9e, $67, $67, $e0, $e0, $00, $00, $00, $00, $78, $78
    db $78, $78, $78, $48, $40, $7e, $b4, $b0, $84, $84

TypeA_Falling_Blocks_Screen_20x18_chars::
    db $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $30, $31, $31
    db $31, $31, $31, $32, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $7c, $44, $1c, $0c, $18, $1b, $0e, $45, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $7d, $67, $46, $46, $46, $46, $46, $68, $2a, $7b, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $2f, $2f, $2f, $2f, $2f, $00, $2f
    db $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $43, $34, $34
    db $34, $34, $34, $34, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $7d, $30, $31, $31, $31, $31, $31, $32, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $7b, $36, $15, $0e, $1f, $0e, $15, $37, $2a, $7c, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $36, $2f, $2f, $2f, $2f, $2f, $37
    db $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $40, $42, $42
    db $42, $42, $42, $41, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $7b, $36, $15, $12, $17, $0e, $1c, $37, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $7c, $36, $2f, $2f, $2f, $2f, $2f, $37, $2a, $7d, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $33, $34, $34, $34, $34, $34, $35
    db $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $2b, $38, $39
    db $39, $39, $39, $3a, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $7c, $2b, $3b, $2f, $2f, $2f, $2f, $3c, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $7d, $2b, $3b, $2f, $2f, $2f, $2f, $3c, $2a, $7b, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $2b, $3b, $2f, $2f, $2f, $2f, $3c
    db $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $2b, $3b, $2f
    db $2f, $2f, $2f, $3c, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $7d, $2b, $3d, $3e, $3e, $3e, $3e, $3f

TypeB_Falling_Blocks_Screen_20x18_chars::
    db $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f

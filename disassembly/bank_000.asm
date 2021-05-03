; Disassembly of "tetris.gb"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

;ffcc_is_Set_to_1_on_serial_transfer_completion::
	jp Zero_d000_dfff                                ; $0000: $c3 $0c $02


	DB $00, $00, $00, $00, $00

RST_08::
	jp Zero_d000_dfff                                ; $0008: $c3 $0c $02


	DB $ff, $ff, $ff, $ff, $ff

RST_10::
	rst $38                                          ; $0010: $ff
	rst $38                                          ; $0011: $ff
	rst $38                                          ; $0012: $ff
	rst $38                                          ; $0013: $ff
	rst $38                                          ; $0014: $ff
	rst $38                                          ; $0015: $ff
	rst $38                                          ; $0016: $ff
	rst $38                                          ; $0017: $ff

RST_18::
	rst $38                                          ; $0018: $ff
	rst $38                                          ; $0019: $ff
	rst $38                                          ; $001a: $ff
	rst $38                                          ; $001b: $ff
	rst $38                                          ; $001c: $ff
	rst $38                                          ; $001d: $ff
	rst $38                                          ; $001e: $ff
	rst $38                                          ; $001f: $ff

RST_20::
	rst $38                                          ; $0020: $ff
	rst $38                                          ; $0021: $ff
	rst $38                                          ; $0022: $ff
	rst $38                                          ; $0023: $ff
	rst $38                                          ; $0024: $ff
	rst $38                                          ; $0025: $ff
	rst $38                                          ; $0026: $ff
	rst $38                                          ; $0027: $ff

RST_28::
	add a                                            ; $0028: $87
	pop hl                                           ; $0029: $e1
	ld e, a                                          ; $002a: $5f
	ld d, $00                                        ; $002b: $16 $00
	add hl, de                                       ; $002d: $19
	ld e, [hl]                                       ; $002e: $5e
	inc hl                                           ; $002f: $23

RST_30::
	ld d, [hl]                                       ; $0030: $56
	push de                                          ; $0031: $d5
	pop hl                                           ; $0032: $e1
	jp hl                                            ; $0033: $e9


	DB $ff, $ff, $ff, $ff

RST_38::
	rst $38                                          ; $0038: $ff
	rst $38                                          ; $0039: $ff
	rst $38                                          ; $003a: $ff
	rst $38                                          ; $003b: $ff
	rst $38                                          ; $003c: $ff
	rst $38                                          ; $003d: $ff
	rst $38                                          ; $003e: $ff
	rst $38                                          ; $003f: $ff

;VBlank_IRQ::
	jp VBlank_Interrupt_Routine                      ; $0040: $c3 $7e $01


	DB $ff, $ff, $ff, $ff, $ff

;LCDC_Status_IRQ_Not_Used::
	jp Jump_000_26be                                 ; $0048: $c3 $be $26


	DB $ff, $ff, $ff, $ff, $ff

;Timer_Overflow_IRQ_Not_Used::
	jp Jump_000_26be                                 ; $0050: $c3 $be $26


	DB $ff, $ff, $ff, $ff, $ff

;Serial_Transfer_Completion_IRQ::
	jp Jump_000_005b                                 ; $0058: $c3 $5b $00


Jump_000_005b:
	push af                                          ; $005b: $f5
	push hl                                          ; $005c: $e5
	push de                                          ; $005d: $d5
	push bc                                          ; $005e: $c5
	DB $cd                                           ; $005f: $cd

JoypadTransitionInterrupt::
	ld l, e                                          ; $0060: $6b
	nop                                              ; $0061: $00
	ld a, $01                                        ; $0062: $3e $01
	ldh [$cc], a                                     ; $0064: $e0 $cc
	pop bc                                           ; $0066: $c1
	pop de                                           ; $0067: $d1

	pop hl                                           ; $0068: $e1
	pop af                                           ; $0069: $f1
	reti                                             ; $006a: $d9


Call_000_006b:
	ldh a, [$cd]                                     ; $006b: $f0 $cd
	rst $28                                          ; $006d: $ef
	ld a, b                                          ; $006e: $78
	nop                                              ; $006f: $00
	sbc a                                            ; $0070: $9f
	nop                                              ; $0071: $00
	and h                                            ; $0072: $a4
	nop                                              ; $0073: $00
	cp d                                             ; $0074: $ba
	nop                                              ; $0075: $00
	DB $ea                                           ; $0076: $ea
	daa                                              ; $0077: $27

	ldh a, [$e1]                                     ; $0078: $f0 $e1
	cp $07                                           ; $007a: $fe $07
	jr z, jr_000_0086                                ; $007c: $28 $08

	cp $06                                           ; $007e: $fe $06
	ret z                                            ; $0080: $c8

	ld a, $06                                        ; $0081: $3e $06
	ldh [$e1], a                                     ; $0083: $e0 $e1
	ret                                              ; $0085: $c9


jr_000_0086:
	ldh a, [rSB]                                     ; $0086: $f0 $01
	cp $55                                           ; $0088: $fe $55
	jr nz, jr_000_0094                               ; $008a: $20 $08

	ld a, $29                                        ; $008c: $3e $29
	ldh [$cb], a                                     ; $008e: $e0 $cb
	ld a, $01                                        ; $0090: $3e $01
	jr jr_000_009c                                   ; $0092: $18 $08

jr_000_0094:
	cp $29                                           ; $0094: $fe $29
	ret nz                                           ; $0096: $c0

	ld a, $55                                        ; $0097: $3e $55
	ldh [$cb], a                                     ; $0099: $e0 $cb
	xor a                                            ; $009b: $af

jr_000_009c:
	ldh [rSC], a                                     ; $009c: $e0 $02
	ret                                              ; $009e: $c9


	ldh a, [rSB]                                     ; $009f: $f0 $01
	ldh [$d0], a                                     ; $00a1: $e0 $d0
	ret                                              ; $00a3: $c9


	ldh a, [rSB]                                     ; $00a4: $f0 $01
	ldh [$d0], a                                     ; $00a6: $e0 $d0
	ldh a, [$cb]                                     ; $00a8: $f0 $cb
	cp $29                                           ; $00aa: $fe $29
	ret z                                            ; $00ac: $c8

	ldh a, [$cf]                                     ; $00ad: $f0 $cf
	ldh [rSB], a                                     ; $00af: $e0 $01
	ld a, $ff                                        ; $00b1: $3e $ff
	ldh [$cf], a                                     ; $00b3: $e0 $cf
	ld a, $80                                        ; $00b5: $3e $80
	ldh [rSC], a                                     ; $00b7: $e0 $02
	ret                                              ; $00b9: $c9


	ldh a, [rSB]                                     ; $00ba: $f0 $01
	ldh [$d0], a                                     ; $00bc: $e0 $d0
	ldh a, [$cb]                                     ; $00be: $f0 $cb
	cp $29                                           ; $00c0: $fe $29
	ret z                                            ; $00c2: $c8

	ldh a, [$cf]                                     ; $00c3: $f0 $cf
	ldh [rSB], a                                     ; $00c5: $e0 $01
	ei                                               ; $00c7: $fb
	call Delay_routine                               ; $00c8: $cd $98 $0a
	ld a, $80                                        ; $00cb: $3e $80
	ldh [rSC], a                                     ; $00cd: $e0 $02
	ret                                              ; $00cf: $c9


;This_routine_is_not_used::
	ldh a, [$cd]                                     ; $00d0: $f0 $cd
	cp $02                                           ; $00d2: $fe $02
	ret nz                                           ; $00d4: $c0

	xor a                                            ; $00d5: $af
	ldh [rIF], a                                     ; $00d6: $e0 $0f
	ei                                               ; $00d8: $fb
	ret                                              ; $00d9: $c9


	DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	DB $ff, $ff, $ff, $ff, $ff, $ff

;Code_Begin::
	nop                                              ; $0100: $00
	jp main                                          ; $0101: $c3 $50 $01


;Nintendo_Title_Character_Area::
	DB $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
	DB $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
	DB $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
	DB "TETRIS", $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

HeaderNewLicenseeCode::
	DB $00, $00

HeaderSGBFlag::
	DB $00

;Cartridge_type::
	DB $00

;Rom_Size::
	DB $00

;Ram_Size::
	DB $00

;Manufacturer_Code::
	DB $00

HeaderOldLicenseeCode::
	DB $01

;Version_Number::
	DB $01

;Complement_Check::
	ld a, [bc]                                       ; $014d: $0a

;Checksum::
	ld d, $bf                                        ; $014e: $16 $bf

main::
	jp Zero_d000_dfff                                ; $0150: $c3 $0c $02


;This_routine_is_not_used::
	call Call_000_29e3                               ; $0153: $cd $e3 $29

jr_000_0156:
	ldh a, [rSTAT]                                   ; $0156: $f0 $41
	and $03                                          ; $0158: $e6 $03
	jr nz, jr_000_0156                               ; $015a: $20 $fa

	ld b, [hl]                                       ; $015c: $46

jr_000_015d:
	ldh a, [rSTAT]                                   ; $015d: $f0 $41
	and $03                                          ; $015f: $e6 $03
	jr nz, jr_000_015d                               ; $0161: $20 $fa

	ld a, [hl]                                       ; $0163: $7e
	and b                                            ; $0164: $a0
	ret                                              ; $0165: $c9


Stop_counting_if_score_reaches_999999::
	ld a, e                                          ; $0166: $7b
	add [hl]                                         ; $0167: $86
	daa                                              ; $0168: $27
	ld [hl+], a                                      ; $0169: $22
	ld a, d                                          ; $016a: $7a
	adc [hl]                                         ; $016b: $8e
	daa                                              ; $016c: $27
	ld [hl+], a                                      ; $016d: $22
	ld a, $00                                        ; $016e: $3e $00
	adc [hl]                                         ; $0170: $8e
	daa                                              ; $0171: $27
	ld [hl], a                                       ; $0172: $77
	ld a, $01                                        ; $0173: $3e $01
	ldh [$e0], a                                     ; $0175: $e0 $e0
	ret nc                                           ; $0177: $d0

	ld a, $99                                        ; $0178: $3e $99
	ld [hl-], a                                      ; $017a: $32
	ld [hl-], a                                      ; $017b: $32
	ld [hl], a                                       ; $017c: $77
	ret                                              ; $017d: $c9


VBlank_Interrupt_Routine::
	push af                                          ; $017e: $f5
	push bc                                          ; $017f: $c5
	push de                                          ; $0180: $d5
	push hl                                          ; $0181: $e5
	ldh a, [$ce]                                     ; $0182: $f0 $ce
	and a                                            ; $0184: $a7
	jr z, Call_VBlank_procs                          ; $0185: $28 $12

	ldh a, [$cb]                                     ; $0187: $f0 $cb
	cp $29                                           ; $0189: $fe $29
	jr nz, Call_VBlank_procs                         ; $018b: $20 $0c

	xor a                                            ; $018d: $af
	ldh [$ce], a                                     ; $018e: $e0 $ce

;Send_byte_at_ffcf_out_serial_port_using_internal_clock::
	ldh a, [$cf]                                     ; $0190: $f0 $cf
	ldh [rSB], a                                     ; $0192: $e0 $01
	ld hl, $ff02                                     ; $0194: $21 $02 $ff
	ld [hl], $81                                     ; $0197: $36 $81

Call_VBlank_procs::
	call VBlank_proc_01                              ; $0199: $cd $e0 $21
	call VBlank_proc_02                              ; $019c: $cd $cc $23
	call VBlank_proc_03                              ; $019f: $cd $b7 $23
	call VBlank_proc_04                              ; $01a2: $cd $9e $23
	call VBlank_proc_05                              ; $01a5: $cd $8c $23
	call VBlank_proc_06                              ; $01a8: $cd $7d $23
	call VBlank_proc_07                              ; $01ab: $cd $6e $23
	call VBlank_proc_08                              ; $01ae: $cd $5f $23
	call VBlank_proc_09                              ; $01b1: $cd $50 $23
	call VBlank_proc_10                              ; $01b4: $cd $41 $23
	call VBlank_proc_11                              ; $01b7: $cd $32 $23
	call VBlank_proc_12                              ; $01ba: $cd $23 $23
	call VBlank_proc_13                              ; $01bd: $cd $f8 $22
	call VBlank_proc_14                              ; $01c0: $cd $e9 $22
	call VBlank_proc_15                              ; $01c3: $cd $da $22
	call VBlank_proc_16                              ; $01c6: $cd $cb $22
	call VBlank_proc_17                              ; $01c9: $cd $bc $22
	call VBlank_proc_18                              ; $01cc: $cd $ad $22
	call VBlank_proc_19                              ; $01cf: $cd $9e $22
	call VBlank_proc_20                              ; $01d2: $cd $d7 $1e

Initiate_DMA_transfer::
	call $ffb6                                       ; $01d5: $cd $b6 $ff
	call Call_000_18ca                               ; $01d8: $cd $ca $18
	ld a, [$c0ce]                                    ; $01db: $fa $ce $c0
	and a                                            ; $01de: $a7
	jr z, jr_000_01fb                                ; $01df: $28 $1a

	ldh a, [$98]                                     ; $01e1: $f0 $98
	cp $03                                           ; $01e3: $fe $03
	jr nz, jr_000_01fb                               ; $01e5: $20 $14

	ld hl, $986d                                     ; $01e7: $21 $6d $98
	call Call_000_243b                               ; $01ea: $cd $3b $24
	ld a, $01                                        ; $01ed: $3e $01
	ldh [$e0], a                                     ; $01ef: $e0 $e0
	ld hl, $9c6d                                     ; $01f1: $21 $6d $9c
	call Call_000_243b                               ; $01f4: $cd $3b $24
	xor a                                            ; $01f7: $af
	ld [$c0ce], a                                    ; $01f8: $ea $ce $c0

jr_000_01fb:
	ld hl, $ffe2                                     ; $01fb: $21 $e2 $ff
	inc [hl]                                         ; $01fe: $34
	xor a                                            ; $01ff: $af
	ldh [rSCX], a                                    ; $0200: $e0 $43
	ldh [rSCY], a                                    ; $0202: $e0 $42
	inc a                                            ; $0204: $3c
	ldh [$85], a                                     ; $0205: $e0 $85
	pop hl                                           ; $0207: $e1
	pop de                                           ; $0208: $d1
	pop bc                                           ; $0209: $c1
	pop af                                           ; $020a: $f1
	reti                                             ; $020b: $d9


Zero_d000_dfff::
	xor a                                            ; $020c: $af
	ld hl, $dfff                                     ; $020d: $21 $ff $df
	ld c, $10                                        ; $0210: $0e $10
	ld b, $00                                        ; $0212: $06 $00

jr_000_0214:
	ld [hl-], a                                      ; $0214: $32
	dec b                                            ; $0215: $05
	jr nz, jr_000_0214                               ; $0216: $20 $fc

	dec c                                            ; $0218: $0d
	jr nz, jr_000_0214                               ; $0219: $20 $f9

Clear_Interrupt_Flag_and_Enable_Registers::
	ld a, $01                                        ; $021b: $3e $01
	di                                               ; $021d: $f3
	ldh [rIF], a                                     ; $021e: $e0 $0f
	ldh [rIE], a                                     ; $0220: $e0 $ff

Zero_scroll_regs_LCDC_Status_and_Serial_port::
	xor a                                            ; $0222: $af
	ldh [rSCY], a                                    ; $0223: $e0 $42
	ldh [rSCX], a                                    ; $0225: $e0 $43
	ldh [$a4], a                                     ; $0227: $e0 $a4
	ldh [rSTAT], a                                   ; $0229: $e0 $41
	ldh [rSB], a                                     ; $022b: $e0 $01
	ldh [rSC], a                                     ; $022d: $e0 $02

Set_LCD_control_to_Operation::
	ld a, $80                                        ; $022f: $3e $80
	ldh [rLCDC], a                                   ; $0231: $e0 $40

Loop_until_LCDC_Y_Coord_is_148::
	ldh a, [rLY]                                     ; $0233: $f0 $44
	cp $94                                           ; $0235: $fe $94
	jr nz, Loop_until_LCDC_Y_Coord_is_148            ; $0237: $20 $fa

Set_LCD_control_to_Stop_completely::
	ld a, $03                                        ; $0239: $3e $03
	ldh [rLCDC], a                                   ; $023b: $e0 $40

Setup_colors_for_Background_and_Sprites::
	ld a, $e4                                        ; $023d: $3e $e4
	ldh [rBGP], a                                    ; $023f: $e0 $47
	ldh [rOBP0], a                                   ; $0241: $e0 $48
	ld a, $c4                                        ; $0243: $3e $c4
	ldh [rOBP1], a                                   ; $0245: $e0 $49

Setup_sound_channel_outputs::
	ld hl, $ff26                                     ; $0247: $21 $26 $ff
	ld a, $80                                        ; $024a: $3e $80
	ld [hl-], a                                      ; $024c: $32
	ld a, $ff                                        ; $024d: $3e $ff
	ld [hl-], a                                      ; $024f: $32
	ld [hl], $77                                     ; $0250: $36 $77

Not_needed_since_the_original_has_no_MBC::
	ld a, $01                                        ; $0252: $3e $01
	ld [$2000], a                                    ; $0254: $ea $00 $20

Initialize_stack_pointer::
	ld sp, $cfff                                     ; $0257: $31 $ff $cf

Zero_df00_dfff::
	xor a                                            ; $025a: $af
	ld hl, $dfff                                     ; $025b: $21 $ff $df
	ld b, $00                                        ; $025e: $06 $00

jr_000_0260:
	ld [hl-], a                                      ; $0260: $32
	dec b                                            ; $0261: $05
	jr nz, jr_000_0260                               ; $0262: $20 $fc

Zero_c000_cfff::
	ld hl, $cfff                                     ; $0264: $21 $ff $cf
	ld c, $10                                        ; $0267: $0e $10
	ld b, $00                                        ; $0269: $06 $00

jr_000_026b:
	ld [hl-], a                                      ; $026b: $32
	dec b                                            ; $026c: $05
	jr nz, jr_000_026b                               ; $026d: $20 $fc

	dec c                                            ; $026f: $0d
	jr nz, jr_000_026b                               ; $0270: $20 $f9

Zero_8000_9fff::
	ld hl, $9fff                                     ; $0272: $21 $ff $9f
	ld c, $20                                        ; $0275: $0e $20
	xor a                                            ; $0277: $af
	ld b, $00                                        ; $0278: $06 $00

jr_000_027a:
	ld [hl-], a                                      ; $027a: $32
	dec b                                            ; $027b: $05
	jr nz, jr_000_027a                               ; $027c: $20 $fc

	dec c                                            ; $027e: $0d
	jr nz, jr_000_027a                               ; $027f: $20 $f9

Zero_fe00_feff::
	ld hl, $feff                                     ; $0281: $21 $ff $fe
	ld b, $00                                        ; $0284: $06 $00

jr_000_0286:
	ld [hl-], a                                      ; $0286: $32
	dec b                                            ; $0287: $05
	jr nz, jr_000_0286                               ; $0288: $20 $fc

Zero_ff7f_fffe::
	ld hl, $fffe                                     ; $028a: $21 $fe $ff
	ld b, $80                                        ; $028d: $06 $80

jr_000_028f:
	ld [hl-], a                                      ; $028f: $32
	dec b                                            ; $0290: $05
	jr nz, jr_000_028f                               ; $0291: $20 $fc

;Copy_DMA_transfer_routine_to_ffb6::
	ld c, $b6                                        ; $0293: $0e $b6
	ld b, $0c                                        ; $0295: $06 $0c
	ld hl, Initiate_DMA_transfer_from_c000_to_fe00   ; $0297: $21 $7f $2a

jr_000_029a:
	ld a, [hl+]                                      ; $029a: $2a
	ld [c], a                                        ; $029b: $e2
	inc c                                            ; $029c: $0c
	dec b                                            ; $029d: $05
	jr nz, jr_000_029a                               ; $029e: $20 $fa

	call Fill_SCRN0_with_2f                          ; $02a0: $cd $95 $27

Reset_sound_registers::
	call $7ff3                                       ; $02a3: $cd $f3 $7f

Enable_serial_io_and_vblank_interrupts::
	ld a, $09                                        ; $02a6: $3e $09
	ldh [rIE], a                                     ; $02a8: $e0 $ff
	ld a, $37                                        ; $02aa: $3e $37
	ldh [$c0], a                                     ; $02ac: $e0 $c0
	ld a, $1c                                        ; $02ae: $3e $1c
	ldh [$c1], a                                     ; $02b0: $e0 $c1

Setup_branch_point_for_routine_at_2f8::
	ld a, $24                                        ; $02b2: $3e $24
	ldh [$e1], a                                     ; $02b4: $e0 $e1

Set_LCD_control_to_Operation::
	ld a, $80                                        ; $02b6: $3e $80
	ldh [rLCDC], a                                   ; $02b8: $e0 $40
	ei                                               ; $02ba: $fb
	xor a                                            ; $02bb: $af

;Clear_all_interrupt_flags::
	ldh [rIF], a                                     ; $02bc: $e0 $0f

;Zero_window_x_and_y_position::
	ldh [rWY], a                                     ; $02be: $e0 $4a
	ldh [rWX], a                                     ; $02c0: $e0 $4b

;Zero_timer_modulo::
	ldh [rTMA], a                                    ; $02c2: $e0 $06

Read_buttons_and_return_values::
	call Read_buttons_and_return_value_at_ff81       ; $02c4: $cd $a6 $29
	call Call_000_02f8                               ; $02c7: $cd $f8 $02
	call $7ff0                                       ; $02ca: $cd $f0 $7f

;If_all_arrow_keys_are_down_at_the_same_time_then_jump_to_21b::
	ldh a, [$80]                                     ; $02cd: $f0 $80
	and $0f                                          ; $02cf: $e6 $0f
	cp $0f                                           ; $02d1: $fe $0f
	jp z, Clear_Interrupt_Flag_and_Enable_Registers  ; $02d3: $ca $1b $02

	ld hl, $ffa6                                     ; $02d6: $21 $a6 $ff
	ld b, $02                                        ; $02d9: $06 $02

jr_000_02db:
	ld a, [hl]                                       ; $02db: $7e
	and a                                            ; $02dc: $a7
	jr z, jr_000_02e0                                ; $02dd: $28 $01

	dec [hl]                                         ; $02df: $35

jr_000_02e0:
	inc l                                            ; $02e0: $2c
	dec b                                            ; $02e1: $05
	jr nz, jr_000_02db                               ; $02e2: $20 $f7

	ldh a, [$c5]                                     ; $02e4: $f0 $c5
	and a                                            ; $02e6: $a7
	jr z, Wait_for_a_VBlank_interrupt_to_occur       ; $02e7: $28 $04

	ld a, $09                                        ; $02e9: $3e $09
	ldh [rIE], a                                     ; $02eb: $e0 $ff

Wait_for_a_VBlank_interrupt_to_occur::
	ldh a, [$85]                                     ; $02ed: $f0 $85
	and a                                            ; $02ef: $a7
	jr z, Wait_for_a_VBlank_interrupt_to_occur       ; $02f0: $28 $fb

	xor a                                            ; $02f2: $af
	ldh [$85], a                                     ; $02f3: $e0 $85
	jp Read_buttons_and_return_values                ; $02f5: $c3 $c4 $02


Call_000_02f8:
	ldh a, [$e1]                                     ; $02f8: $f0 $e1
	rst $28                                          ; $02fa: $ef
	adc $1b                                          ; $02fb: $ce $1b
	ld [c], a                                        ; $02fd: $e2
	inc e                                            ; $02fe: $1c
	ld b, h                                          ; $02ff: $44
	ld [de], a                                       ; $0300: $12
	ld a, e                                          ; $0301: $7b
	ld [de], a                                       ; $0302: $12
	ld b, $1d                                        ; $0303: $06 $1d
	ld h, $1d                                        ; $0305: $26 $1d
	xor [hl]                                         ; $0307: $ae
	inc bc                                           ; $0308: $03
	ld a, c                                          ; $0309: $79
	inc b                                            ; $030a: $04
	ld b, h                                          ; $030b: $44
	inc d                                            ; $030c: $14
	adc h                                            ; $030d: $8c
	inc d                                            ; $030e: $14
	rlca                                             ; $030f: $07
	ld a, [de]                                       ; $0310: $1a
	ret nz                                           ; $0311: $c0

	dec e                                            ; $0312: $1d
	ld d, $1f                                        ; $0313: $16 $1f
	rra                                              ; $0315: $1f
	rra                                              ; $0316: $1f
	dec h                                            ; $0317: $25
	dec d                                            ; $0318: $15
	or b                                             ; $0319: $b0
	inc d                                            ; $031a: $14
	ld a, e                                          ; $031b: $7b
	dec d                                            ; $031c: $15
	cp a                                             ; $031d: $bf
	dec d                                            ; $031e: $15
	add hl, hl                                       ; $031f: $29
	ld d, $7a                                        ; $0320: $16 $7a
	ld d, $eb                                        ; $0322: $16 $eb
	ld d, $13                                        ; $0324: $16 $13
	add hl, de                                       ; $0326: $19
	ld [hl], a                                       ; $0327: $77
	ld b, $2c                                        ; $0328: $06 $2c
	rlca                                             ; $032a: $07
	dec h                                            ; $032b: $25
	ld [$08e4], sp                                   ; $032c: $08 $e4 $08
	ld sp, $eb0b                                     ; $032f: $31 $0b $eb
	inc c                                            ; $0332: $0c
	jp nc, $320a                                     ; $0333: $d2 $0a $32

	dec c                                            ; $0336: $0d
	inc hl                                           ; $0337: $23
	ld c, $12                                        ; $0338: $0e $12
	ld de, $0d99                                     ; $033a: $11 $99 $0d
	adc d                                            ; $033d: $8a
	ld c, $ce                                        ; $033e: $0e $ce
	dec e                                            ; $0340: $1d
	ld b, c                                          ; $0341: $41
	ld e, $69                                        ; $0342: $1e $69
	inc bc                                           ; $0344: $03
	sub e                                            ; $0345: $93
	inc bc                                           ; $0346: $03
	ld h, a                                          ; $0347: $67
	ld de, $11e6                                     ; $0348: $11 $e6 $11
	DB $fc                                           ; $034b: $fc
	ld de, $121c                                     ; $034c: $11 $1c $12
	rst $00                                          ; $034f: $c7
	dec b                                            ; $0350: $05
	rst $30                                          ; $0351: $f7
	dec b                                            ; $0352: $05
	or e                                             ; $0353: $b3
	ld [de], a                                       ; $0354: $12
	dec b                                            ; $0355: $05
	inc de                                           ; $0356: $13
	inc h                                            ; $0357: $24
	inc de                                           ; $0358: $13
	ld d, c                                          ; $0359: $51
	inc de                                           ; $035a: $13
	ld h, a                                          ; $035b: $67
	inc de                                           ; $035c: $13
	ld a, [hl]                                       ; $035d: $7e
	inc de                                           ; $035e: $13
	or l                                             ; $035f: $b5
	inc de                                           ; $0360: $13
	push hl                                          ; $0361: $e5
	inc de                                           ; $0362: $13
	dec de                                           ; $0363: $1b
	inc de                                           ; $0364: $13
	and b                                            ; $0365: $a0
	inc bc                                           ; $0366: $03
	DB $ea                                           ; $0367: $ea
	daa                                              ; $0368: $27

Display_credits_screen::
	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $0369: $cd $20 $28
	call Copy_character_set_to_character_ram         ; $036c: $cd $d7 $27
	ld de, Initial_Credits_Screen_20x18_chars        ; $036f: $11 $07 $4a
	call Copy_a_screen_from_DE_to_screen_ram         ; $0372: $cd $eb $27
	call Zero_c000_c09f                              ; $0375: $cd $8a $17
	ld hl, $c300                                     ; $0378: $21 $00 $c3
	ld de, $6450                                     ; $037b: $11 $50 $64

jr_000_037e:
	ld a, [de]                                       ; $037e: $1a
	ld [hl+], a                                      ; $037f: $22
	inc de                                           ; $0380: $13
	ld a, h                                          ; $0381: $7c
	cp $c4                                           ; $0382: $fe $c4
	jr nz, jr_000_037e                               ; $0384: $20 $f8

	ld a, $d3                                        ; $0386: $3e $d3
	ldh [rLCDC], a                                   ; $0388: $e0 $40

;This_is_responsible_for_the_credit_screen_ignoring_the_start_button_for_so_long_Lower_this_value_to_make_it_respond_sooner::
	ld a, $fa                                        ; $038a: $3e $fa
	ldh [$a6], a                                     ; $038c: $e0 $a6
	ld a, $25                                        ; $038e: $3e $25
	ldh [$e1], a                                     ; $0390: $e0 $e1
	ret                                              ; $0392: $c9


;Wait_for_initial_credit_screen_timer_to_run_out::
	ldh a, [$a6]                                     ; $0393: $f0 $a6
	and a                                            ; $0395: $a7
	ret nz                                           ; $0396: $c0

	ld a, $fa                                        ; $0397: $3e $fa
	ldh [$a6], a                                     ; $0399: $e0 $a6
	ld a, $35                                        ; $039b: $3e $35
	ldh [$e1], a                                     ; $039d: $e0 $e1
	ret                                              ; $039f: $c9


;Look_for_user_pressing_a_button_If_not_found_continue_credit_screen_for_another_delay_period::
	ldh a, [$81]                                     ; $03a0: $f0 $81
	and a                                            ; $03a2: $a7
	jr nz, jr_000_03a9                               ; $03a3: $20 $04

	ldh a, [$a6]                                     ; $03a5: $f0 $a6
	and a                                            ; $03a7: $a7
	ret nz                                           ; $03a8: $c0

jr_000_03a9:
	ld a, $06                                        ; $03a9: $3e $06
	ldh [$e1], a                                     ; $03ab: $e0 $e1
	ret                                              ; $03ad: $c9


;Display_Intro_Select_Players_Screen::
	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $03ae: $cd $20 $28
	xor a                                            ; $03b1: $af
	ldh [$e9], a                                     ; $03b2: $e0 $e9
	ldh [$98], a                                     ; $03b4: $e0 $98
	ldh [$9c], a                                     ; $03b6: $e0 $9c
	ldh [$9b], a                                     ; $03b8: $e0 $9b
	ldh [$fb], a                                     ; $03ba: $e0 $fb
	ldh [$9f], a                                     ; $03bc: $e0 $9f
	ldh [$e3], a                                     ; $03be: $e0 $e3
	ldh [$c7], a                                     ; $03c0: $e0 $c7
	call Call_000_2293                               ; $03c2: $cd $93 $22
	call Call_000_2651                               ; $03c5: $cd $51 $26
	call Copy_character_set_to_character_ram         ; $03c8: $cd $d7 $27
	ld hl, $c800                                     ; $03cb: $21 $00 $c8

jr_000_03ce:
	ld a, $2f                                        ; $03ce: $3e $2f
	ld [hl+], a                                      ; $03d0: $22
	ld a, h                                          ; $03d1: $7c
	cp $cc                                           ; $03d2: $fe $cc
	jr nz, jr_000_03ce                               ; $03d4: $20 $f8

	ld hl, $c801                                     ; $03d6: $21 $01 $c8
	call Set_at_hl_span_20_to_8e                     ; $03d9: $cd $a9 $26
	ld hl, $c80c                                     ; $03dc: $21 $0c $c8
	call Set_at_hl_span_20_to_8e                     ; $03df: $cd $a9 $26
	ld hl, $ca41                                     ; $03e2: $21 $41 $ca
	ld b, $0c                                        ; $03e5: $06 $0c
	ld a, $8e                                        ; $03e7: $3e $8e

jr_000_03e9:
	ld [hl+], a                                      ; $03e9: $22
	dec b                                            ; $03ea: $05
	jr nz, jr_000_03e9                               ; $03eb: $20 $fc

	ld de, Intro_Player_Select_Screen_20x18_chars    ; $03ed: $11 $6f $4b
	call Copy_a_screen_from_DE_to_screen_ram         ; $03f0: $cd $eb $27
	call Zero_c000_c09f                              ; $03f3: $cd $8a $17
	ld hl, $c000                                     ; $03f6: $21 $00 $c0
	ld [hl], $80                                     ; $03f9: $36 $80
	inc l                                            ; $03fb: $2c
	ld [hl], $10                                     ; $03fc: $36 $10
	inc l                                            ; $03fe: $2c
	ld [hl], $58                                     ; $03ff: $36 $58
	ld a, $03                                        ; $0401: $3e $03
	ld [$dfe8], a                                    ; $0403: $ea $e8 $df
	ld a, $d3                                        ; $0406: $3e $d3
	ldh [rLCDC], a                                   ; $0408: $e0 $40
	ld a, $07                                        ; $040a: $3e $07
	ldh [$e1], a                                     ; $040c: $e0 $e1
	ld a, $7d                                        ; $040e: $3e $7d
	ldh [$a6], a                                     ; $0410: $e0 $a6
	ld a, $04                                        ; $0412: $3e $04
	ldh [$c6], a                                     ; $0414: $e0 $c6
	ldh a, [$e4]                                     ; $0416: $f0 $e4
	and a                                            ; $0418: $a7
	ret nz                                           ; $0419: $c0

	ld a, $13                                        ; $041a: $3e $13
	ldh [$c6], a                                     ; $041c: $e0 $c6
	ret                                              ; $041e: $c9


Start_demo_mode::
	ld a, $37                                        ; $041f: $3e $37
	ldh [$c0], a                                     ; $0421: $e0 $c0
	ld a, $09                                        ; $0423: $3e $09
	ldh [$c2], a                                     ; $0425: $e0 $c2
	xor a                                            ; $0427: $af
	ldh [$c5], a                                     ; $0428: $e0 $c5
	ldh [$b0], a                                     ; $042a: $e0 $b0
	ldh [$ed], a                                     ; $042c: $e0 $ed
	ldh [$ea], a                                     ; $042e: $e0 $ea
	ld a, $62                                        ; $0430: $3e $62
	ldh [$eb], a                                     ; $0432: $e0 $eb
	ld a, $b0                                        ; $0434: $3e $b0
	ldh [$ec], a                                     ; $0436: $e0 $ec
	ldh a, [$e4]                                     ; $0438: $f0 $e4
	cp $02                                           ; $043a: $fe $02
	ld a, $02                                        ; $043c: $3e $02
	jr nz, jr_000_045a                               ; $043e: $20 $1a

	ld a, $77                                        ; $0440: $3e $77
	ldh [$c0], a                                     ; $0442: $e0 $c0
	ld a, $09                                        ; $0444: $3e $09
	ldh [$c3], a                                     ; $0446: $e0 $c3
	ld a, $02                                        ; $0448: $3e $02
	ldh [$c4], a                                     ; $044a: $e0 $c4
	ld a, $63                                        ; $044c: $3e $63
	ldh [$eb], a                                     ; $044e: $e0 $eb
	ld a, $b0                                        ; $0450: $3e $b0
	ldh [$ec], a                                     ; $0452: $e0 $ec
	ld a, $11                                        ; $0454: $3e $11
	ldh [$b0], a                                     ; $0456: $e0 $b0
	ld a, $01                                        ; $0458: $3e $01

jr_000_045a:
	ldh [$e4], a                                     ; $045a: $e0 $e4
	ld a, $0a                                        ; $045c: $3e $0a
	ldh [$e1], a                                     ; $045e: $e0 $e1
	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $0460: $cd $20 $28
	call Screen_memory_update                        ; $0463: $cd $ad $27
	ld de, Select_Game_and_Music_Type_Screen_20x18_chars; $0466: $11 $d7 $4c
	call Copy_a_screen_from_DE_to_screen_ram         ; $0469: $cd $eb $27
	call Zero_c000_c09f                              ; $046c: $cd $8a $17
	ld a, $d3                                        ; $046f: $3e $d3
	ldh [rLCDC], a                                   ; $0471: $e0 $40
	ret                                              ; $0473: $c9


;This_routine_is_not_used::
	ld a, $ff                                        ; $0474: $3e $ff
	ldh [$e9], a                                     ; $0476: $e0 $e9
	ret                                              ; $0478: $c9


	ldh a, [$a6]                                     ; $0479: $f0 $a6
	and a                                            ; $047b: $a7
	jr nz, jr_000_0488                               ; $047c: $20 $0a

	ld hl, $ffc6                                     ; $047e: $21 $c6 $ff
	dec [hl]                                         ; $0481: $35
	jr z, Start_demo_mode                            ; $0482: $28 $9b

	ld a, $7d                                        ; $0484: $3e $7d
	ldh [$a6], a                                     ; $0486: $e0 $a6

jr_000_0488:
	call Delay_routine                               ; $0488: $cd $98 $0a

;Send_55h_out_serial_port_using_external_clock::
	ld a, $55                                        ; $048b: $3e $55
	ldh [rSB], a                                     ; $048d: $e0 $01
	ld a, $80                                        ; $048f: $3e $80
	ldh [rSC], a                                     ; $0491: $e0 $02
	ldh a, [$cc]                                     ; $0493: $f0 $cc
	and a                                            ; $0495: $a7
	jr z, jr_000_04a2                                ; $0496: $28 $0a

;Serial_Transfer_is_complete::
	ldh a, [$cb]                                     ; $0498: $f0 $cb
	and a                                            ; $049a: $a7
	jr nz, jr_000_04d7                               ; $049b: $20 $3a

	xor a                                            ; $049d: $af
	ldh [$cc], a                                     ; $049e: $e0 $cc
	jr jr_000_0509                                   ; $04a0: $18 $67

jr_000_04a2:
	ldh a, [$81]                                     ; $04a2: $f0 $81
	ld b, a                                          ; $04a4: $47
	ldh a, [$c5]                                     ; $04a5: $f0 $c5

;Test_for_Up_button::
	bit 2, b                                         ; $04a7: $cb $50
	jr nz, jr_000_04f3                               ; $04a9: $20 $48

;Test_for_A_button::
	bit 4, b                                         ; $04ab: $cb $60
	jr nz, jr_000_0502                               ; $04ad: $20 $53

;Test_for_B_button::
	bit 5, b                                         ; $04af: $cb $68
	jr nz, jr_000_0507                               ; $04b1: $20 $54

;Test_for_Down_button::
	bit 3, b                                         ; $04b3: $cb $58
	ret z                                            ; $04b5: $c8

	and a                                            ; $04b6: $a7
	ld a, $08                                        ; $04b7: $3e $08
	jr z, jr_000_04e7                                ; $04b9: $28 $2c

	ld a, b                                          ; $04bb: $78
	cp $08                                           ; $04bc: $fe $08
	ret nz                                           ; $04be: $c0

	ldh a, [$cb]                                     ; $04bf: $f0 $cb
	cp $29                                           ; $04c1: $fe $29
	jr z, jr_000_04d7                                ; $04c3: $28 $12

;Send_29h_out_serial_port_using_internal_clock::
	ld a, $29                                        ; $04c5: $3e $29
	ldh [rSB], a                                     ; $04c7: $e0 $01
	ld a, $81                                        ; $04c9: $3e $81
	ldh [rSC], a                                     ; $04cb: $e0 $02

jr_000_04cd:
	ldh a, [$cc]                                     ; $04cd: $f0 $cc
	and a                                            ; $04cf: $a7
	jr z, jr_000_04cd                                ; $04d0: $28 $fb

	ldh a, [$cb]                                     ; $04d2: $f0 $cb
	and a                                            ; $04d4: $a7
	jr z, jr_000_0509                                ; $04d5: $28 $32

jr_000_04d7:
	ld a, $2a                                        ; $04d7: $3e $2a

jr_000_04d9:
	ldh [$e1], a                                     ; $04d9: $e0 $e1
	xor a                                            ; $04db: $af
	ldh [$a6], a                                     ; $04dc: $e0 $a6
	ldh [$c2], a                                     ; $04de: $e0 $c2
	ldh [$c3], a                                     ; $04e0: $e0 $c3
	ldh [$c4], a                                     ; $04e2: $e0 $c4
	ldh [$e4], a                                     ; $04e4: $e0 $e4
	ret                                              ; $04e6: $c9


jr_000_04e7:
	push af                                          ; $04e7: $f5
	ldh a, [$80]                                     ; $04e8: $f0 $80
	bit 7, a                                         ; $04ea: $cb $7f
	jr z, jr_000_04f0                                ; $04ec: $28 $02

	ldh [$f4], a                                     ; $04ee: $e0 $f4

jr_000_04f0:
	pop af                                           ; $04f0: $f1
	jr jr_000_04d9                                   ; $04f1: $18 $e6

jr_000_04f3:
	xor $01                                          ; $04f3: $ee $01

jr_000_04f5:
	ldh [$c5], a                                     ; $04f5: $e0 $c5
	and a                                            ; $04f7: $a7
	ld a, $10                                        ; $04f8: $3e $10
	jr z, jr_000_04fe                                ; $04fa: $28 $02

	ld a, $60                                        ; $04fc: $3e $60

jr_000_04fe:
	ld [$c001], a                                    ; $04fe: $ea $01 $c0
	ret                                              ; $0501: $c9


jr_000_0502:
	and a                                            ; $0502: $a7
	ret nz                                           ; $0503: $c0

	xor a                                            ; $0504: $af
	jr jr_000_04f3                                   ; $0505: $18 $ec

jr_000_0507:
	and a                                            ; $0507: $a7
	ret z                                            ; $0508: $c8

jr_000_0509:
	xor a                                            ; $0509: $af
	jr jr_000_04f5                                   ; $050a: $18 $e9

Call_000_050c:
	ldh a, [$e4]                                     ; $050c: $f0 $e4
	and a                                            ; $050e: $a7
	ret z                                            ; $050f: $c8

	call Delay_routine                               ; $0510: $cd $98 $0a
	xor a                                            ; $0513: $af
	ldh [rSB], a                                     ; $0514: $e0 $01
	ld a, $80                                        ; $0516: $3e $80
	ldh [rSC], a                                     ; $0518: $e0 $02
	ldh a, [$81]                                     ; $051a: $f0 $81
	bit 3, a                                         ; $051c: $cb $5f
	jr z, jr_000_052d                                ; $051e: $28 $0d

	ld a, $33                                        ; $0520: $3e $33
	ldh [rSB], a                                     ; $0522: $e0 $01
	ld a, $81                                        ; $0524: $3e $81
	ldh [rSC], a                                     ; $0526: $e0 $02
	ld a, $06                                        ; $0528: $3e $06
	ldh [$e1], a                                     ; $052a: $e0 $e1
	ret                                              ; $052c: $c9


jr_000_052d:
	ld hl, $ffb0                                     ; $052d: $21 $b0 $ff
	ldh a, [$e4]                                     ; $0530: $f0 $e4
	cp $02                                           ; $0532: $fe $02
	ld b, $10                                        ; $0534: $06 $10
	jr z, jr_000_053a                                ; $0536: $28 $02

	ld b, $1d                                        ; $0538: $06 $1d

jr_000_053a:
	ld a, [hl]                                       ; $053a: $7e
	cp b                                             ; $053b: $b8
	ret nz                                           ; $053c: $c0

	ld a, $06                                        ; $053d: $3e $06
	ldh [$e1], a                                     ; $053f: $e0 $e1
	ret                                              ; $0541: $c9


Call_000_0542:
	ldh a, [$e4]                                     ; $0542: $f0 $e4
	and a                                            ; $0544: $a7
	ret z                                            ; $0545: $c8

	ldh a, [$e9]                                     ; $0546: $f0 $e9
	cp $ff                                           ; $0548: $fe $ff
	ret z                                            ; $054a: $c8

	ldh a, [$ea]                                     ; $054b: $f0 $ea
	and a                                            ; $054d: $a7
	jr z, jr_000_0555                                ; $054e: $28 $05

	dec a                                            ; $0550: $3d
	ldh [$ea], a                                     ; $0551: $e0 $ea
	jr jr_000_0571                                   ; $0553: $18 $1c

jr_000_0555:
	ldh a, [$eb]                                     ; $0555: $f0 $eb
	ld h, a                                          ; $0557: $67
	ldh a, [$ec]                                     ; $0558: $f0 $ec
	ld l, a                                          ; $055a: $6f
	ld a, [hl+]                                      ; $055b: $2a
	ld b, a                                          ; $055c: $47
	ldh a, [$ed]                                     ; $055d: $f0 $ed
	xor b                                            ; $055f: $a8
	and b                                            ; $0560: $a0
	ldh [$81], a                                     ; $0561: $e0 $81
	ld a, b                                          ; $0563: $78
	ldh [$ed], a                                     ; $0564: $e0 $ed
	ld a, [hl+]                                      ; $0566: $2a
	ldh [$ea], a                                     ; $0567: $e0 $ea
	ld a, h                                          ; $0569: $7c
	ldh [$eb], a                                     ; $056a: $e0 $eb
	ld a, l                                          ; $056c: $7d
	ldh [$ec], a                                     ; $056d: $e0 $ec
	jr jr_000_0574                                   ; $056f: $18 $03

jr_000_0571:
	xor a                                            ; $0571: $af
	ldh [$81], a                                     ; $0572: $e0 $81

jr_000_0574:
	ldh a, [$80]                                     ; $0574: $f0 $80
	ldh [$ee], a                                     ; $0576: $e0 $ee
	ldh a, [$ed]                                     ; $0578: $f0 $ed
	ldh [$80], a                                     ; $057a: $e0 $80
	ret                                              ; $057c: $c9


;This_routine_is_not_used::
	xor a                                            ; $057d: $af
	ldh [$ed], a                                     ; $057e: $e0 $ed
	jr jr_000_0571                                   ; $0580: $18 $ef

This_instruction_is_not_used::
	ret                                              ; $0582: $c9


Call_000_0583:
	ldh a, [$e4]                                     ; $0583: $f0 $e4
	and a                                            ; $0585: $a7
	ret z                                            ; $0586: $c8

	ldh a, [$e9]                                     ; $0587: $f0 $e9
	cp $ff                                           ; $0589: $fe $ff
	ret nz                                           ; $058b: $c0

	ldh a, [$80]                                     ; $058c: $f0 $80
	ld b, a                                          ; $058e: $47
	ldh a, [$ed]                                     ; $058f: $f0 $ed
	cp b                                             ; $0591: $b8
	jr z, jr_000_05ad                                ; $0592: $28 $19

	ldh a, [$eb]                                     ; $0594: $f0 $eb
	ld h, a                                          ; $0596: $67
	ldh a, [$ec]                                     ; $0597: $f0 $ec
	ld l, a                                          ; $0599: $6f
	ldh a, [$ed]                                     ; $059a: $f0 $ed
	ld [hl+], a                                      ; $059c: $22
	ldh a, [$ea]                                     ; $059d: $f0 $ea
	ld [hl+], a                                      ; $059f: $22
	ld a, h                                          ; $05a0: $7c
	ldh [$eb], a                                     ; $05a1: $e0 $eb
	ld a, l                                          ; $05a3: $7d
	ldh [$ec], a                                     ; $05a4: $e0 $ec
	ld a, b                                          ; $05a6: $78
	ldh [$ed], a                                     ; $05a7: $e0 $ed
	xor a                                            ; $05a9: $af
	ldh [$ea], a                                     ; $05aa: $e0 $ea
	ret                                              ; $05ac: $c9


jr_000_05ad:
	ldh a, [$ea]                                     ; $05ad: $f0 $ea
	inc a                                            ; $05af: $3c
	ldh [$ea], a                                     ; $05b0: $e0 $ea
	ret                                              ; $05b2: $c9


Call_000_05b3:
	ldh a, [$e4]                                     ; $05b3: $f0 $e4
	and a                                            ; $05b5: $a7
	ret z                                            ; $05b6: $c8

	ldh a, [$e9]                                     ; $05b7: $f0 $e9
	and a                                            ; $05b9: $a7
	ret nz                                           ; $05ba: $c0

	ldh a, [$ee]                                     ; $05bb: $f0 $ee
	ldh [$80], a                                     ; $05bd: $e0 $80
	ret                                              ; $05bf: $c9


jr_000_05c0:
	ld hl, $ff02                                     ; $05c0: $21 $02 $ff
	set 7, [hl]                                      ; $05c3: $cb $fe
	jr jr_000_05d1                                   ; $05c5: $18 $0a

	ld a, $03                                        ; $05c7: $3e $03
	ldh [$cd], a                                     ; $05c9: $e0 $cd
	ldh a, [$cb]                                     ; $05cb: $f0 $cb
	cp $29                                           ; $05cd: $fe $29
	jr nz, jr_000_05c0                               ; $05cf: $20 $ef

jr_000_05d1:
	call Call_000_144f                               ; $05d1: $cd $4f $14
	ld a, $80                                        ; $05d4: $3e $80
	ld [$c210], a                                    ; $05d6: $ea $10 $c2
	call Call_000_2671                               ; $05d9: $cd $71 $26
	ldh [$ce], a                                     ; $05dc: $e0 $ce
	xor a                                            ; $05de: $af
	ldh [rSB], a                                     ; $05df: $e0 $01
	ldh [$cf], a                                     ; $05e1: $e0 $cf
	ldh [$dc], a                                     ; $05e3: $e0 $dc
	ldh [$d2], a                                     ; $05e5: $e0 $d2
	ldh [$d3], a                                     ; $05e7: $e0 $d3
	ldh [$d4], a                                     ; $05e9: $e0 $d4
	ldh [$d5], a                                     ; $05eb: $e0 $d5
	ldh [$e3], a                                     ; $05ed: $e0 $e3
	call $7ff3                                       ; $05ef: $cd $f3 $7f
	ld a, $2b                                        ; $05f2: $3e $2b
	ldh [$e1], a                                     ; $05f4: $e0 $e1
	ret                                              ; $05f6: $c9


	ldh a, [$cb]                                     ; $05f7: $f0 $cb
	cp $29                                           ; $05f9: $fe $29
	jr z, jr_000_0613                                ; $05fb: $28 $16

	ldh a, [$f0]                                     ; $05fd: $f0 $f0
	and a                                            ; $05ff: $a7
	jr z, jr_000_0620                                ; $0600: $28 $1e

	xor a                                            ; $0602: $af
	ldh [$f0], a                                     ; $0603: $e0 $f0
	ld de, $c201                                     ; $0605: $11 $01 $c2
	call Call_000_1492                               ; $0608: $cd $92 $14
	call Call_000_1517                               ; $060b: $cd $17 $15
	call Call_000_2671                               ; $060e: $cd $71 $26
	jr jr_000_0620                                   ; $0611: $18 $0d

jr_000_0613:
	ldh a, [$81]                                     ; $0613: $f0 $81
	bit 0, a                                         ; $0615: $cb $47
	jr nz, jr_000_0620                               ; $0617: $20 $07

	bit 3, a                                         ; $0619: $cb $5f
	jr nz, jr_000_0620                               ; $061b: $20 $03

	call Call_000_14b0                               ; $061d: $cd $b0 $14

jr_000_0620:
	ldh a, [$cb]                                     ; $0620: $f0 $cb
	cp $29                                           ; $0622: $fe $29
	jr z, jr_000_0644                                ; $0624: $28 $1e

	ldh a, [$cc]                                     ; $0626: $f0 $cc
	and a                                            ; $0628: $a7
	ret z                                            ; $0629: $c8

	xor a                                            ; $062a: $af
	ldh [$cc], a                                     ; $062b: $e0 $cc
	ld a, $39                                        ; $062d: $3e $39
	ldh [$cf], a                                     ; $062f: $e0 $cf
	ldh a, [$d0]                                     ; $0631: $f0 $d0
	cp $50                                           ; $0633: $fe $50
	jr z, jr_000_0664                                ; $0635: $28 $2d

	ld b, a                                          ; $0637: $47
	ldh a, [$c1]                                     ; $0638: $f0 $c1
	cp b                                             ; $063a: $b8
	ret z                                            ; $063b: $c8

	ld a, b                                          ; $063c: $78
	ldh [$c1], a                                     ; $063d: $e0 $c1
	ld a, $01                                        ; $063f: $3e $01
	ldh [$f0], a                                     ; $0641: $e0 $f0
	ret                                              ; $0643: $c9


jr_000_0644:
	ldh a, [$81]                                     ; $0644: $f0 $81
	bit 3, a                                         ; $0646: $cb $5f
	jr nz, jr_000_066c                               ; $0648: $20 $22

	bit 0, a                                         ; $064a: $cb $47
	jr nz, jr_000_066c                               ; $064c: $20 $1e

	ldh a, [$cc]                                     ; $064e: $f0 $cc
	and a                                            ; $0650: $a7
	ret z                                            ; $0651: $c8

	xor a                                            ; $0652: $af
	ldh [$cc], a                                     ; $0653: $e0 $cc
	ldh a, [$cf]                                     ; $0655: $f0 $cf
	cp $50                                           ; $0657: $fe $50
	jr z, jr_000_0664                                ; $0659: $28 $09

	ldh a, [$c1]                                     ; $065b: $f0 $c1

jr_000_065d:
	ldh [$cf], a                                     ; $065d: $e0 $cf
	ld a, $01                                        ; $065f: $3e $01
	ldh [$ce], a                                     ; $0661: $e0 $ce
	ret                                              ; $0663: $c9


jr_000_0664:
	call Zero_c000_c09f                              ; $0664: $cd $8a $17
	ld a, $16                                        ; $0667: $3e $16
	ldh [$e1], a                                     ; $0669: $e0 $e1
	ret                                              ; $066b: $c9


jr_000_066c:
	ld a, $50                                        ; $066c: $3e $50
	jr jr_000_065d                                   ; $066e: $18 $ed

jr_000_0670:
	ld hl, $ff02                                     ; $0670: $21 $02 $ff
	set 7, [hl]                                      ; $0673: $cb $fe
	jr jr_000_0696                                   ; $0675: $18 $1f

Display_Mario_VS_Luigi_screen::
	ld a, $03                                        ; $0677: $3e $03
	ldh [$cd], a                                     ; $0679: $e0 $cd
	ldh a, [$cb]                                     ; $067b: $f0 $cb
	cp $29                                           ; $067d: $fe $29
	jr nz, jr_000_0670                               ; $067f: $20 $ef

	call Call_000_0aa1                               ; $0681: $cd $a1 $0a
	call Call_000_0aa1                               ; $0684: $cd $a1 $0a
	call Call_000_0aa1                               ; $0687: $cd $a1 $0a
	ld b, $00                                        ; $068a: $06 $00
	ld hl, $c300                                     ; $068c: $21 $00 $c3

jr_000_068f:
	call Call_000_0aa1                               ; $068f: $cd $a1 $0a
	ld [hl+], a                                      ; $0692: $22
	dec b                                            ; $0693: $05
	jr nz, jr_000_068f                               ; $0694: $20 $f9

jr_000_0696:
	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $0696: $cd $20 $28
	call Screen_memory_update                        ; $0699: $cd $ad $27
	ld de, Mario_VS_Luigi_Screen_20x18_chars         ; $069c: $11 $14 $52
	call Copy_a_screen_from_DE_to_screen_ram         ; $069f: $cd $eb $27
	call Zero_c000_c09f                              ; $06a2: $cd $8a $17
	ld a, $2f                                        ; $06a5: $3e $2f
	call Call_000_1fdd                               ; $06a7: $cd $dd $1f
	ld a, $03                                        ; $06aa: $3e $03
	ldh [$ce], a                                     ; $06ac: $e0 $ce
	xor a                                            ; $06ae: $af
	ldh [rSB], a                                     ; $06af: $e0 $01
	ldh [$cf], a                                     ; $06b1: $e0 $cf
	ldh [$dc], a                                     ; $06b3: $e0 $dc
	ldh [$d2], a                                     ; $06b5: $e0 $d2
	ldh [$d3], a                                     ; $06b7: $e0 $d3
	ldh [$d4], a                                     ; $06b9: $e0 $d4
	ldh [$d5], a                                     ; $06bb: $e0 $d5
	ldh [$e3], a                                     ; $06bd: $e0 $e3
	ldh [$cc], a                                     ; $06bf: $e0 $cc
	ld hl, $c400                                     ; $06c1: $21 $00 $c4
	ld b, $0a                                        ; $06c4: $06 $0a
	ld a, $28                                        ; $06c6: $3e $28

jr_000_06c8:
	ld [hl+], a                                      ; $06c8: $22
	dec b                                            ; $06c9: $05
	jr nz, jr_000_06c8                               ; $06ca: $20 $fc

	ldh a, [$d6]                                     ; $06cc: $f0 $d6
	and a                                            ; $06ce: $a7
	jp nz, Jump_000_076d                             ; $06cf: $c2 $6d $07

	call Call_000_1517                               ; $06d2: $cd $17 $15
	ld a, $d3                                        ; $06d5: $3e $d3
	ldh [rLCDC], a                                   ; $06d7: $e0 $40
	ld hl, $c080                                     ; $06d9: $21 $80 $c0
	ld de, $0705                                     ; $06dc: $11 $05 $07
	ld b, $20                                        ; $06df: $06 $20
	call B_is_Length_of_data                         ; $06e1: $cd $25 $07
	ld hl, $c200                                     ; $06e4: $21 $00 $c2
	ld de, $26ed                                     ; $06e7: $11 $ed $26
	ld c, $02                                        ; $06ea: $0e $02
	call Call_000_1776                               ; $06ec: $cd $76 $17
	call Call_000_080e                               ; $06ef: $cd $0e $08
	call Call_000_2671                               ; $06f2: $cd $71 $26
	xor a                                            ; $06f5: $af
	ldh [$d7], a                                     ; $06f6: $e0 $d7
	ldh [$d8], a                                     ; $06f8: $e0 $d8
	ldh [$d9], a                                     ; $06fa: $e0 $d9
	ldh [$da], a                                     ; $06fc: $e0 $da
	ldh [$db], a                                     ; $06fe: $e0 $db
	ld a, $17                                        ; $0700: $3e $17
	ldh [$e1], a                                     ; $0702: $e0 $e1
	ret                                              ; $0704: $c9


	DB $40, $28, $ae, $00, $40, $30, $ae, $20, $48, $28, $af, $00, $48, $30, $af, $20
	DB $78, $28, $c0, $00, $78, $30, $c0, $20, $80, $28, $c1, $00, $80, $30, $c1, $20

B_is_Length_of_data::
	ld a, [de]                                       ; $0725: $1a
	ld [hl+], a                                      ; $0726: $22
	inc de                                           ; $0727: $13
	dec b                                            ; $0728: $05
	jr nz, B_is_Length_of_data                       ; $0729: $20 $fa

	ret                                              ; $072b: $c9


	ldh a, [$cb]                                     ; $072c: $f0 $cb
	cp $29                                           ; $072e: $fe $29
	jr z, jr_000_0755                                ; $0730: $28 $23

	ldh a, [$cc]                                     ; $0732: $f0 $cc
	and a                                            ; $0734: $a7
	jr z, jr_000_074a                                ; $0735: $28 $13

	ldh a, [$d0]                                     ; $0737: $f0 $d0
	cp $60                                           ; $0739: $fe $60
	jr z, jr_000_076a                                ; $073b: $28 $2d

	cp $06                                           ; $073d: $fe $06
	jr nc, jr_000_0743                               ; $073f: $30 $02

	ldh [$ac], a                                     ; $0741: $e0 $ac

jr_000_0743:
	ldh a, [$ad]                                     ; $0743: $f0 $ad
	ldh [$cf], a                                     ; $0745: $e0 $cf
	xor a                                            ; $0747: $af
	ldh [$cc], a                                     ; $0748: $e0 $cc

jr_000_074a:
	ld de, $c210                                     ; $074a: $11 $10 $c2
	call Call_000_1766                               ; $074d: $cd $66 $17
	ld hl, $ffad                                     ; $0750: $21 $ad $ff
	jr jr_000_07bd                                   ; $0753: $18 $68

jr_000_0755:
	ldh a, [$81]                                     ; $0755: $f0 $81
	bit 3, a                                         ; $0757: $cb $5f
	jr z, jr_000_075f                                ; $0759: $28 $04

	ld a, $60                                        ; $075b: $3e $60
	jr jr_000_07ac                                   ; $075d: $18 $4d

jr_000_075f:
	ldh a, [$cc]                                     ; $075f: $f0 $cc
	and a                                            ; $0761: $a7
	jr z, jr_000_07b4                                ; $0762: $28 $50

	ldh a, [$cf]                                     ; $0764: $f0 $cf
	cp $60                                           ; $0766: $fe $60
	jr nz, jr_000_07a2                               ; $0768: $20 $38

jr_000_076a:
	call Zero_c000_c09f                              ; $076a: $cd $8a $17

Jump_000_076d:
	ldh a, [$d6]                                     ; $076d: $f0 $d6
	and a                                            ; $076f: $a7
	jr nz, jr_000_078a                               ; $0770: $20 $18

	ld a, $18                                        ; $0772: $3e $18
	ldh [$e1], a                                     ; $0774: $e0 $e1
	ldh a, [$cb]                                     ; $0776: $f0 $cb
	cp $29                                           ; $0778: $fe $29
	ret nz                                           ; $077a: $c0

	xor a                                            ; $077b: $af
	ldh [$a0], a                                     ; $077c: $e0 $a0
	ld a, $06                                        ; $077e: $3e $06
	ld de, $ffe0                                     ; $0780: $11 $e0 $ff
	ld hl, $c9a2                                     ; $0783: $21 $a2 $c9
	call Call_000_1b68                               ; $0786: $cd $68 $1b
	ret                                              ; $0789: $c9


jr_000_078a:
	ldh a, [$cb]                                     ; $078a: $f0 $cb
	cp $29                                           ; $078c: $fe $29
	jp nz, Jump_000_0828                             ; $078e: $c2 $28 $08

	xor a                                            ; $0791: $af
	ldh [$a0], a                                     ; $0792: $e0 $a0
	ld a, $06                                        ; $0794: $3e $06
	ld de, $ffe0                                     ; $0796: $11 $e0 $ff
	ld hl, $c9a2                                     ; $0799: $21 $a2 $c9
	call Call_000_1b68                               ; $079c: $cd $68 $1b
	jp Jump_000_0828                                 ; $079f: $c3 $28 $08


jr_000_07a2:
	ldh a, [$d0]                                     ; $07a2: $f0 $d0
	cp $06                                           ; $07a4: $fe $06
	jr nc, jr_000_07aa                               ; $07a6: $30 $02

	ldh [$ad], a                                     ; $07a8: $e0 $ad

jr_000_07aa:
	ldh a, [$ac]                                     ; $07aa: $f0 $ac

jr_000_07ac:
	ldh [$cf], a                                     ; $07ac: $e0 $cf
	xor a                                            ; $07ae: $af
	ldh [$cc], a                                     ; $07af: $e0 $cc
	inc a                                            ; $07b1: $3c
	ldh [$ce], a                                     ; $07b2: $e0 $ce

jr_000_07b4:
	ld de, $c200                                     ; $07b4: $11 $00 $c2
	call Call_000_1766                               ; $07b7: $cd $66 $17
	ld hl, $ffac                                     ; $07ba: $21 $ac $ff

jr_000_07bd:
	ld a, [hl]                                       ; $07bd: $7e
	bit 4, b                                         ; $07be: $cb $60
	jr nz, jr_000_07d6                               ; $07c0: $20 $14

	bit 5, b                                         ; $07c2: $cb $68
	jr nz, jr_000_07e8                               ; $07c4: $20 $22

	bit 6, b                                         ; $07c6: $cb $70
	jr nz, jr_000_07ee                               ; $07c8: $20 $24

	bit 7, b                                         ; $07ca: $cb $78
	jr z, jr_000_07e1                                ; $07cc: $28 $13

	cp $03                                           ; $07ce: $fe $03
	jr nc, jr_000_07e1                               ; $07d0: $30 $0f

	add $03                                          ; $07d2: $c6 $03
	jr jr_000_07db                                   ; $07d4: $18 $05

jr_000_07d6:
	cp $05                                           ; $07d6: $fe $05
	jr z, jr_000_07e1                                ; $07d8: $28 $07

	inc a                                            ; $07da: $3c

jr_000_07db:
	ld [hl], a                                       ; $07db: $77
	ld a, $01                                        ; $07dc: $3e $01
	ld [$dfe0], a                                    ; $07de: $ea $e0 $df

jr_000_07e1:
	call Call_000_080e                               ; $07e1: $cd $0e $08
	call Call_000_2671                               ; $07e4: $cd $71 $26
	ret                                              ; $07e7: $c9


jr_000_07e8:
	and a                                            ; $07e8: $a7
	jr z, jr_000_07e1                                ; $07e9: $28 $f6

	dec a                                            ; $07eb: $3d
	jr jr_000_07db                                   ; $07ec: $18 $ed

jr_000_07ee:
	cp $03                                           ; $07ee: $fe $03
	jr c, jr_000_07e1                                ; $07f0: $38 $ef

	sub $03                                          ; $07f2: $d6 $03
	jr jr_000_07db                                   ; $07f4: $18 $e5

	DB $40, $60, $40, $70, $40, $80, $50, $60, $50, $70, $50, $80, $78, $60, $78, $70
	DB $78, $80, $88, $60, $88, $70, $88, $80

Call_000_080e:
	ldh a, [$ac]                                     ; $080e: $f0 $ac
	ld de, $c201                                     ; $0810: $11 $01 $c2
	ld hl, $07f6                                     ; $0813: $21 $f6 $07
	call Call_000_1755                               ; $0816: $cd $55 $17
	ldh a, [$ad]                                     ; $0819: $f0 $ad
	ld de, $c211                                     ; $081b: $11 $11 $c2
	ld hl, $0802                                     ; $081e: $21 $02 $08
	call Call_000_1755                               ; $0821: $cd $55 $17
	ret                                              ; $0824: $c9


	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $0825: $cd $20 $28

Jump_000_0828:
	xor a                                            ; $0828: $af
	ld [$c210], a                                    ; $0829: $ea $10 $c2
	ldh [$98], a                                     ; $082c: $e0 $98
	ldh [$9c], a                                     ; $082e: $e0 $9c
	ldh [$9b], a                                     ; $0830: $e0 $9b
	ldh [$fb], a                                     ; $0832: $e0 $fb
	ldh [$9f], a                                     ; $0834: $e0 $9f
	ldh [$cc], a                                     ; $0836: $e0 $cc
	ldh [rSB], a                                     ; $0838: $e0 $01
	ldh [$ce], a                                     ; $083a: $e0 $ce
	ldh [$d0], a                                     ; $083c: $e0 $d0
	ldh [$cf], a                                     ; $083e: $e0 $cf
	ldh [$d1], a                                     ; $0840: $e0 $d1
	call Call_000_2651                               ; $0842: $cd $51 $26
	call Call_000_2293                               ; $0845: $cd $93 $22
	call Call_000_1ff2                               ; $0848: $cd $f2 $1f
	xor a                                            ; $084b: $af
	ldh [$e3], a                                     ; $084c: $e0 $e3
	call Zero_c000_c09f                              ; $084e: $cd $8a $17
	ld de, TypeB_Falling_Blocks_Screen_20x18_chars_same_as_3ff7_ish; $0851: $11 $7c $53
	push de                                          ; $0854: $d5
	ld a, $01                                        ; $0855: $3e $01
	ldh [$a9], a                                     ; $0857: $e0 $a9
	ldh [$c5], a                                     ; $0859: $e0 $c5
	call Copy_a_screen_from_DE_to_screen_ram         ; $085b: $cd $eb $27
	pop de                                           ; $085e: $d1
	ld hl, $9c00                                     ; $085f: $21 $00 $9c
	call Call_000_27ee                               ; $0862: $cd $ee $27
	ld de, $2839                                     ; $0865: $11 $39 $28
	ld hl, $9c63                                     ; $0868: $21 $63 $9c
	ld c, $0a                                        ; $086b: $0e $0a
	call Call_000_1f7d                               ; $086d: $cd $7d $1f
	ld hl, $c200                                     ; $0870: $21 $00 $c2
	ld de, $26bf                                     ; $0873: $11 $bf $26
	call Call_000_26b6                               ; $0876: $cd $b6 $26
	ld hl, $c210                                     ; $0879: $21 $10 $c2
	ld de, $26c7                                     ; $087c: $11 $c7 $26
	call Call_000_26b6                               ; $087f: $cd $b6 $26
	ld hl, $9951                                     ; $0882: $21 $51 $99
	ld a, $30                                        ; $0885: $3e $30
	ldh [$9e], a                                     ; $0887: $e0 $9e
	ld [hl], $00                                     ; $0889: $36 $00
	dec l                                            ; $088b: $2d
	ld [hl], $03                                     ; $088c: $36 $03
	call Call_000_1ae8                               ; $088e: $cd $e8 $1a
	xor a                                            ; $0891: $af
	ldh [$a0], a                                     ; $0892: $e0 $a0
	ldh a, [$cb]                                     ; $0894: $f0 $cb
	cp $29                                           ; $0896: $fe $29
	ld de, $08d4                                     ; $0898: $11 $d4 $08
	ldh a, [$ac]                                     ; $089b: $f0 $ac
	jr z, jr_000_08a4                                ; $089d: $28 $05

	ld de, $08c4                                     ; $089f: $11 $c4 $08
	ldh a, [$ad]                                     ; $08a2: $f0 $ad

jr_000_08a4:
	ld hl, $98b0                                     ; $08a4: $21 $b0 $98
	ld [hl], a                                       ; $08a7: $77
	ld h, $9c                                        ; $08a8: $26 $9c
	ld [hl], a                                       ; $08aa: $77
	ld hl, $c080                                     ; $08ab: $21 $80 $c0
	ld b, $10                                        ; $08ae: $06 $10
	call B_is_Length_of_data                         ; $08b0: $cd $25 $07
	ld a, $77                                        ; $08b3: $3e $77
	ldh [$c0], a                                     ; $08b5: $e0 $c0
	ld a, $d3                                        ; $08b7: $3e $d3
	ldh [rLCDC], a                                   ; $08b9: $e0 $40
	ld a, $19                                        ; $08bb: $3e $19
	ldh [$e1], a                                     ; $08bd: $e0 $e1
	ld a, $01                                        ; $08bf: $3e $01
	ldh [$cd], a                                     ; $08c1: $e0 $cd
	ret                                              ; $08c3: $c9


	DB $18, $84, $c0, $00, $18, $8c, $c0, $20, $20, $84, $c1, $00, $20, $8c, $c1, $20
	DB $18, $84, $ae, $00, $18, $8c, $ae, $20, $20, $84, $af, $00, $20, $8c, $af, $20

	ld a, $08                                        ; $08e4: $3e $08
	ldh [rIE], a                                     ; $08e6: $e0 $ff
	xor a                                            ; $08e8: $af
	ldh [rIF], a                                     ; $08e9: $e0 $0f
	ldh a, [$cb]                                     ; $08eb: $f0 $cb
	cp $29                                           ; $08ed: $fe $29
	jp nz, Jump_000_09f6                             ; $08ef: $c2 $f6 $09

jr_000_08f2:
	call Delay_routine                               ; $08f2: $cd $98 $0a
	call Delay_routine                               ; $08f5: $cd $98 $0a
	xor a                                            ; $08f8: $af
	ldh [$cc], a                                     ; $08f9: $e0 $cc
	ld a, $29                                        ; $08fb: $3e $29
	ldh [rSB], a                                     ; $08fd: $e0 $01
	ld a, $81                                        ; $08ff: $3e $81
	ldh [rSC], a                                     ; $0901: $e0 $02

jr_000_0903:
	ldh a, [$cc]                                     ; $0903: $f0 $cc
	and a                                            ; $0905: $a7
	jr z, jr_000_0903                                ; $0906: $28 $fb

	ldh a, [rSB]                                     ; $0908: $f0 $01
	cp $55                                           ; $090a: $fe $55
	jr nz, jr_000_08f2                               ; $090c: $20 $e4

	ld de, $0016                                     ; $090e: $11 $16 $00
	ld c, $0a                                        ; $0911: $0e $0a
	ld hl, $c902                                     ; $0913: $21 $02 $c9

jr_000_0916:
	ld b, $0a                                        ; $0916: $06 $0a

jr_000_0918:
	xor a                                            ; $0918: $af
	ldh [$cc], a                                     ; $0919: $e0 $cc
	call Delay_routine                               ; $091b: $cd $98 $0a
	ld a, [hl+]                                      ; $091e: $2a
	ldh [rSB], a                                     ; $091f: $e0 $01
	ld a, $81                                        ; $0921: $3e $81
	ldh [rSC], a                                     ; $0923: $e0 $02

jr_000_0925:
	ldh a, [$cc]                                     ; $0925: $f0 $cc
	and a                                            ; $0927: $a7
	jr z, jr_000_0925                                ; $0928: $28 $fb

	dec b                                            ; $092a: $05
	jr nz, jr_000_0918                               ; $092b: $20 $eb

	add hl, de                                       ; $092d: $19
	dec c                                            ; $092e: $0d
	jr nz, jr_000_0916                               ; $092f: $20 $e5

	ldh a, [$ac]                                     ; $0931: $f0 $ac
	cp $05                                           ; $0933: $fe $05
	jr z, jr_000_0974                                ; $0935: $28 $3d

	ld hl, $ca22                                     ; $0937: $21 $22 $ca
	ld de, $0040                                     ; $093a: $11 $40 $00

jr_000_093d:
	add hl, de                                       ; $093d: $19
	inc a                                            ; $093e: $3c
	cp $05                                           ; $093f: $fe $05
	jr nz, jr_000_093d                               ; $0941: $20 $fa

	ld de, $ca22                                     ; $0943: $11 $22 $ca
	ld c, $0a                                        ; $0946: $0e $0a

jr_000_0948:
	ld b, $0a                                        ; $0948: $06 $0a

jr_000_094a:
	ld a, [de]                                       ; $094a: $1a
	ld [hl+], a                                      ; $094b: $22
	inc e                                            ; $094c: $1c
	dec b                                            ; $094d: $05
	jr nz, jr_000_094a                               ; $094e: $20 $fa

	push de                                          ; $0950: $d5
	ld de, $ffd6                                     ; $0951: $11 $d6 $ff
	add hl, de                                       ; $0954: $19
	pop de                                           ; $0955: $d1
	push hl                                          ; $0956: $e5
	ld hl, $ffd6                                     ; $0957: $21 $d6 $ff
	add hl, de                                       ; $095a: $19
	push hl                                          ; $095b: $e5
	pop de                                           ; $095c: $d1
	pop hl                                           ; $095d: $e1
	dec c                                            ; $095e: $0d
	jr nz, jr_000_0948                               ; $095f: $20 $e7

	ld de, $ffd6                                     ; $0961: $11 $d6 $ff

jr_000_0964:
	ld b, $0a                                        ; $0964: $06 $0a
	ld a, h                                          ; $0966: $7c
	cp $c8                                           ; $0967: $fe $c8
	jr z, jr_000_0974                                ; $0969: $28 $09

	ld a, $2f                                        ; $096b: $3e $2f

jr_000_096d:
	ld [hl+], a                                      ; $096d: $22
	dec b                                            ; $096e: $05
	jr nz, jr_000_096d                               ; $096f: $20 $fc

	add hl, de                                       ; $0971: $19
	jr jr_000_0964                                   ; $0972: $18 $f0

jr_000_0974:
	call Delay_routine                               ; $0974: $cd $98 $0a
	call Delay_routine                               ; $0977: $cd $98 $0a
	xor a                                            ; $097a: $af
	ldh [$cc], a                                     ; $097b: $e0 $cc
	ld a, $29                                        ; $097d: $3e $29
	ldh [rSB], a                                     ; $097f: $e0 $01
	ld a, $81                                        ; $0981: $3e $81
	ldh [rSC], a                                     ; $0983: $e0 $02

jr_000_0985:
	ldh a, [$cc]                                     ; $0985: $f0 $cc
	and a                                            ; $0987: $a7
	jr z, jr_000_0985                                ; $0988: $28 $fb

	ldh a, [rSB]                                     ; $098a: $f0 $01
	cp $55                                           ; $098c: $fe $55
	jr nz, jr_000_0974                               ; $098e: $20 $e4

	ld hl, $c300                                     ; $0990: $21 $00 $c3
	ld b, $00                                        ; $0993: $06 $00

jr_000_0995:
	xor a                                            ; $0995: $af
	ldh [$cc], a                                     ; $0996: $e0 $cc
	ld a, [hl+]                                      ; $0998: $2a
	call Delay_routine                               ; $0999: $cd $98 $0a
	ldh [rSB], a                                     ; $099c: $e0 $01
	ld a, $81                                        ; $099e: $3e $81
	ldh [rSC], a                                     ; $09a0: $e0 $02

jr_000_09a2:
	ldh a, [$cc]                                     ; $09a2: $f0 $cc
	and a                                            ; $09a4: $a7
	jr z, jr_000_09a2                                ; $09a5: $28 $fb

	inc b                                            ; $09a7: $04
	jr nz, jr_000_0995                               ; $09a8: $20 $eb

jr_000_09aa:
	call Delay_routine                               ; $09aa: $cd $98 $0a
	call Delay_routine                               ; $09ad: $cd $98 $0a
	xor a                                            ; $09b0: $af
	ldh [$cc], a                                     ; $09b1: $e0 $cc
	ld a, $30                                        ; $09b3: $3e $30
	ldh [rSB], a                                     ; $09b5: $e0 $01
	ld a, $81                                        ; $09b7: $3e $81
	ldh [rSC], a                                     ; $09b9: $e0 $02

jr_000_09bb:
	ldh a, [$cc]                                     ; $09bb: $f0 $cc
	and a                                            ; $09bd: $a7
	jr z, jr_000_09bb                                ; $09be: $28 $fb

	ldh a, [rSB]                                     ; $09c0: $f0 $01
	cp $56                                           ; $09c2: $fe $56
	jr nz, jr_000_09aa                               ; $09c4: $20 $e4

Jump_000_09c6:
	call Call_000_0a8c                               ; $09c6: $cd $8c $0a
	ld a, $09                                        ; $09c9: $3e $09
	ldh [rIE], a                                     ; $09cb: $e0 $ff
	ld a, $1c                                        ; $09cd: $3e $1c
	ldh [$e1], a                                     ; $09cf: $e0 $e1
	ld a, $02                                        ; $09d1: $3e $02
	ldh [$e3], a                                     ; $09d3: $e0 $e3
	ld a, $03                                        ; $09d5: $3e $03
	ldh [$cd], a                                     ; $09d7: $e0 $cd
	ldh a, [$cb]                                     ; $09d9: $f0 $cb
	cp $29                                           ; $09db: $fe $29
	jr z, jr_000_09e4                                ; $09dd: $28 $05

	ld hl, $ff02                                     ; $09df: $21 $02 $ff
	set 7, [hl]                                      ; $09e2: $cb $fe

jr_000_09e4:
	ld hl, $c300                                     ; $09e4: $21 $00 $c3
	ld a, [hl+]                                      ; $09e7: $2a
	ld [$c203], a                                    ; $09e8: $ea $03 $c2
	ld a, [hl+]                                      ; $09eb: $2a
	ld [$c213], a                                    ; $09ec: $ea $13 $c2
	ld a, h                                          ; $09ef: $7c
	ldh [$af], a                                     ; $09f0: $e0 $af
	ld a, l                                          ; $09f2: $7d
	ldh [$b0], a                                     ; $09f3: $e0 $b0
	ret                                              ; $09f5: $c9


Jump_000_09f6:
	ldh a, [$ad]                                     ; $09f6: $f0 $ad
	inc a                                            ; $09f8: $3c
	ld b, a                                          ; $09f9: $47
	ld hl, $ca42                                     ; $09fa: $21 $42 $ca
	ld de, $ffc0                                     ; $09fd: $11 $c0 $ff

jr_000_0a00:
	dec b                                            ; $0a00: $05
	jr z, jr_000_0a06                                ; $0a01: $28 $03

	add hl, de                                       ; $0a03: $19
	jr jr_000_0a00                                   ; $0a04: $18 $fa

jr_000_0a06:
	call Delay_routine                               ; $0a06: $cd $98 $0a
	xor a                                            ; $0a09: $af
	ldh [$cc], a                                     ; $0a0a: $e0 $cc
	ld a, $55                                        ; $0a0c: $3e $55
	ldh [rSB], a                                     ; $0a0e: $e0 $01
	ld a, $80                                        ; $0a10: $3e $80
	ldh [rSC], a                                     ; $0a12: $e0 $02

jr_000_0a14:
	ldh a, [$cc]                                     ; $0a14: $f0 $cc
	and a                                            ; $0a16: $a7
	jr z, jr_000_0a14                                ; $0a17: $28 $fb

	ldh a, [rSB]                                     ; $0a19: $f0 $01
	cp $29                                           ; $0a1b: $fe $29
	jr nz, jr_000_0a06                               ; $0a1d: $20 $e7

	ld de, $0016                                     ; $0a1f: $11 $16 $00
	ld c, $0a                                        ; $0a22: $0e $0a

jr_000_0a24:
	ld b, $0a                                        ; $0a24: $06 $0a

jr_000_0a26:
	xor a                                            ; $0a26: $af
	ldh [$cc], a                                     ; $0a27: $e0 $cc
	ldh [rSB], a                                     ; $0a29: $e0 $01
	ld a, $80                                        ; $0a2b: $3e $80
	ldh [rSC], a                                     ; $0a2d: $e0 $02

jr_000_0a2f:
	ldh a, [$cc]                                     ; $0a2f: $f0 $cc
	and a                                            ; $0a31: $a7
	jr z, jr_000_0a2f                                ; $0a32: $28 $fb

	ldh a, [rSB]                                     ; $0a34: $f0 $01
	ld [hl+], a                                      ; $0a36: $22
	dec b                                            ; $0a37: $05
	jr nz, jr_000_0a26                               ; $0a38: $20 $ec

	add hl, de                                       ; $0a3a: $19
	dec c                                            ; $0a3b: $0d
	jr nz, jr_000_0a24                               ; $0a3c: $20 $e6

jr_000_0a3e:
	call Delay_routine                               ; $0a3e: $cd $98 $0a
	xor a                                            ; $0a41: $af
	ldh [$cc], a                                     ; $0a42: $e0 $cc
	ld a, $55                                        ; $0a44: $3e $55
	ldh [rSB], a                                     ; $0a46: $e0 $01
	ld a, $80                                        ; $0a48: $3e $80
	ldh [rSC], a                                     ; $0a4a: $e0 $02

jr_000_0a4c:
	ldh a, [$cc]                                     ; $0a4c: $f0 $cc
	and a                                            ; $0a4e: $a7
	jr z, jr_000_0a4c                                ; $0a4f: $28 $fb

	ldh a, [rSB]                                     ; $0a51: $f0 $01
	cp $29                                           ; $0a53: $fe $29
	jr nz, jr_000_0a3e                               ; $0a55: $20 $e7

	ld b, $00                                        ; $0a57: $06 $00
	ld hl, $c300                                     ; $0a59: $21 $00 $c3

jr_000_0a5c:
	xor a                                            ; $0a5c: $af
	ldh [$cc], a                                     ; $0a5d: $e0 $cc
	ldh [rSB], a                                     ; $0a5f: $e0 $01
	ld a, $80                                        ; $0a61: $3e $80
	ldh [rSC], a                                     ; $0a63: $e0 $02

jr_000_0a65:
	ldh a, [$cc]                                     ; $0a65: $f0 $cc
	and a                                            ; $0a67: $a7
	jr z, jr_000_0a65                                ; $0a68: $28 $fb

	ldh a, [rSB]                                     ; $0a6a: $f0 $01
	ld [hl+], a                                      ; $0a6c: $22
	inc b                                            ; $0a6d: $04
	jr nz, jr_000_0a5c                               ; $0a6e: $20 $ec

jr_000_0a70:
	call Delay_routine                               ; $0a70: $cd $98 $0a
	xor a                                            ; $0a73: $af
	ldh [$cc], a                                     ; $0a74: $e0 $cc
	ld a, $56                                        ; $0a76: $3e $56
	ldh [rSB], a                                     ; $0a78: $e0 $01
	ld a, $80                                        ; $0a7a: $3e $80
	ldh [rSC], a                                     ; $0a7c: $e0 $02

jr_000_0a7e:
	ldh a, [$cc]                                     ; $0a7e: $f0 $cc
	and a                                            ; $0a80: $a7
	jr z, jr_000_0a7e                                ; $0a81: $28 $fb

	ldh a, [rSB]                                     ; $0a83: $f0 $01
	cp $30                                           ; $0a85: $fe $30
	jr nz, jr_000_0a70                               ; $0a87: $20 $e7

	jp Jump_000_09c6                                 ; $0a89: $c3 $c6 $09


Call_000_0a8c:
	ld hl, $ca42                                     ; $0a8c: $21 $42 $ca
	ld a, $80                                        ; $0a8f: $3e $80
	ld b, $0a                                        ; $0a91: $06 $0a

jr_000_0a93:
	ld [hl+], a                                      ; $0a93: $22
	dec b                                            ; $0a94: $05
	jr nz, jr_000_0a93                               ; $0a95: $20 $fc

	ret                                              ; $0a97: $c9


Delay_routine::
	push bc                                          ; $0a98: $c5
	ld b, $fa                                        ; $0a99: $06 $fa

jr_000_0a9b:
	ld b, b                                          ; $0a9b: $40
	dec b                                            ; $0a9c: $05
	jr nz, jr_000_0a9b                               ; $0a9d: $20 $fc

	pop bc                                           ; $0a9f: $c1
	ret                                              ; $0aa0: $c9


Call_000_0aa1:
	push hl                                          ; $0aa1: $e5
	push bc                                          ; $0aa2: $c5
	ldh a, [$fc]                                     ; $0aa3: $f0 $fc
	and $fc                                          ; $0aa5: $e6 $fc
	ld c, a                                          ; $0aa7: $4f
	ld h, $03                                        ; $0aa8: $26 $03

jr_000_0aaa:
	ldh a, [rDIV]                                    ; $0aaa: $f0 $04
	ld b, a                                          ; $0aac: $47

jr_000_0aad:
	xor a                                            ; $0aad: $af

jr_000_0aae:
	dec b                                            ; $0aae: $05
	jr z, jr_000_0abb                                ; $0aaf: $28 $0a

	inc a                                            ; $0ab1: $3c
	inc a                                            ; $0ab2: $3c
	inc a                                            ; $0ab3: $3c
	inc a                                            ; $0ab4: $3c
	cp $1c                                           ; $0ab5: $fe $1c
	jr z, jr_000_0aad                                ; $0ab7: $28 $f4

	jr jr_000_0aae                                   ; $0ab9: $18 $f3

jr_000_0abb:
	ld d, a                                          ; $0abb: $57
	ldh a, [$ae]                                     ; $0abc: $f0 $ae
	ld e, a                                          ; $0abe: $5f
	dec h                                            ; $0abf: $25
	jr z, jr_000_0ac9                                ; $0ac0: $28 $07

	or d                                             ; $0ac2: $b2
	or c                                             ; $0ac3: $b1
	and $fc                                          ; $0ac4: $e6 $fc
	cp c                                             ; $0ac6: $b9
	jr z, jr_000_0aaa                                ; $0ac7: $28 $e1

jr_000_0ac9:
	ld a, d                                          ; $0ac9: $7a
	ldh [$ae], a                                     ; $0aca: $e0 $ae
	ld a, e                                          ; $0acc: $7b
	ldh [$fc], a                                     ; $0acd: $e0 $fc
	pop bc                                           ; $0acf: $c1
	pop hl                                           ; $0ad0: $e1
	ret                                              ; $0ad1: $c9


	ld a, $01                                        ; $0ad2: $3e $01
	ldh [rIE], a                                     ; $0ad4: $e0 $ff
	ldh a, [$e3]                                     ; $0ad6: $f0 $e3
	and a                                            ; $0ad8: $a7
	jr nz, jr_000_0b02                               ; $0ad9: $20 $27

	ld b, $44                                        ; $0adb: $06 $44
	ld c, $20                                        ; $0add: $0e $20
	call Call_000_113f                               ; $0adf: $cd $3f $11
	ld a, $02                                        ; $0ae2: $3e $02
	ldh [$cd], a                                     ; $0ae4: $e0 $cd
	ld a, [$c0de]                                    ; $0ae6: $fa $de $c0
	and a                                            ; $0ae9: $a7
	jr z, jr_000_0af1                                ; $0aea: $28 $05

	ld a, $80                                        ; $0aec: $3e $80
	ld [$c210], a                                    ; $0aee: $ea $10 $c2

jr_000_0af1:
	call Call_000_2683                               ; $0af1: $cd $83 $26
	call Call_000_2696                               ; $0af4: $cd $96 $26
	call Call_000_1517                               ; $0af7: $cd $17 $15
	xor a                                            ; $0afa: $af
	ldh [$d6], a                                     ; $0afb: $e0 $d6
	ld a, $1a                                        ; $0afd: $3e $1a
	ldh [$e1], a                                     ; $0aff: $e0 $e1
	ret                                              ; $0b01: $c9


jr_000_0b02:
	cp $05                                           ; $0b02: $fe $05
	ret nz                                           ; $0b04: $c0

	ld hl, $c030                                     ; $0b05: $21 $30 $c0
	ld b, $12                                        ; $0b08: $06 $12

jr_000_0b0a:
	ld [hl], $f0                                     ; $0b0a: $36 $f0
	inc hl                                           ; $0b0c: $23
	ld [hl], $10                                     ; $0b0d: $36 $10
	inc hl                                           ; $0b0f: $23
	ld [hl], $b6                                     ; $0b10: $36 $b6
	inc hl                                           ; $0b12: $23
	ld [hl], $80                                     ; $0b13: $36 $80
	inc hl                                           ; $0b15: $23
	dec b                                            ; $0b16: $05
	jr nz, jr_000_0b0a                               ; $0b17: $20 $f1

	ld a, [$c3ff]                                    ; $0b19: $fa $ff $c3

jr_000_0b1c:
	ld b, $0a                                        ; $0b1c: $06 $0a
	ld hl, $c400                                     ; $0b1e: $21 $00 $c4

jr_000_0b21:
	dec a                                            ; $0b21: $3d
	jr z, jr_000_0b2a                                ; $0b22: $28 $06

	inc l                                            ; $0b24: $2c
	dec b                                            ; $0b25: $05
	jr nz, jr_000_0b21                               ; $0b26: $20 $f9

	jr jr_000_0b1c                                   ; $0b28: $18 $f2

jr_000_0b2a:
	ld [hl], $2f                                     ; $0b2a: $36 $2f
	ld a, $03                                        ; $0b2c: $3e $03
	ldh [$ce], a                                     ; $0b2e: $e0 $ce
	ret                                              ; $0b30: $c9


	ld a, $01                                        ; $0b31: $3e $01
	ldh [rIE], a                                     ; $0b33: $e0 $ff
	ld hl, $c09c                                     ; $0b35: $21 $9c $c0
	xor a                                            ; $0b38: $af
	ld [hl+], a                                      ; $0b39: $22
	ld [hl], $50                                     ; $0b3a: $36 $50
	inc l                                            ; $0b3c: $2c
	ld [hl], $27                                     ; $0b3d: $36 $27
	inc l                                            ; $0b3f: $2c
	ld [hl], $00                                     ; $0b40: $36 $00
	call Call_000_1c0d                               ; $0b42: $cd $0d $1c
	call Call_000_1c88                               ; $0b45: $cd $88 $1c
	call Call_000_24bb                               ; $0b48: $cd $bb $24
	call Call_000_209c                               ; $0b4b: $cd $9c $20
	call Call_000_213e                               ; $0b4e: $cd $3e $21
	call Call_000_25a1                               ; $0b51: $cd $a1 $25
	call Call_000_224d                               ; $0b54: $cd $4d $22
	call Call_000_0b9b                               ; $0b57: $cd $9b $0b
	ldh a, [$d5]                                     ; $0b5a: $f0 $d5
	and a                                            ; $0b5c: $a7
	jr z, jr_000_0b73                                ; $0b5d: $28 $14

	ld a, $77                                        ; $0b5f: $3e $77
	ldh [$cf], a                                     ; $0b61: $e0 $cf
	ldh [$b1], a                                     ; $0b63: $e0 $b1
	ld a, $aa                                        ; $0b65: $3e $aa
	ldh [$d1], a                                     ; $0b67: $e0 $d1
	ld a, $1b                                        ; $0b69: $3e $1b
	ldh [$e1], a                                     ; $0b6b: $e0 $e1
	ld a, $05                                        ; $0b6d: $3e $05
	ldh [$a7], a                                     ; $0b6f: $e0 $a7
	jr jr_000_0b83                                   ; $0b71: $18 $10

jr_000_0b73:
	ldh a, [$e1]                                     ; $0b73: $f0 $e1
	cp $01                                           ; $0b75: $fe $01
	jr nz, jr_000_0b94                               ; $0b77: $20 $1b

	ld a, $aa                                        ; $0b79: $3e $aa
	ldh [$cf], a                                     ; $0b7b: $e0 $cf
	ldh [$b1], a                                     ; $0b7d: $e0 $b1
	ld a, $77                                        ; $0b7f: $3e $77
	ldh [$d1], a                                     ; $0b81: $e0 $d1

jr_000_0b83:
	xor a                                            ; $0b83: $af
	ldh [$dc], a                                     ; $0b84: $e0 $dc
	ldh [$d2], a                                     ; $0b86: $e0 $d2
	ldh [$d3], a                                     ; $0b88: $e0 $d3
	ldh [$d4], a                                     ; $0b8a: $e0 $d4
	ldh a, [$cb]                                     ; $0b8c: $f0 $cb
	cp $29                                           ; $0b8e: $fe $29
	jr nz, jr_000_0b94                               ; $0b90: $20 $02

	ldh [$ce], a                                     ; $0b92: $e0 $ce

jr_000_0b94:
	call Call_000_0bf0                               ; $0b94: $cd $f0 $0b
	call Call_000_0c8c                               ; $0b97: $cd $8c $0c
	ret                                              ; $0b9a: $c9


Call_000_0b9b:
	ld de, $0020                                     ; $0b9b: $11 $20 $00
	ld hl, $c802                                     ; $0b9e: $21 $02 $c8
	ld a, $2f                                        ; $0ba1: $3e $2f
	ld c, $12                                        ; $0ba3: $0e $12

jr_000_0ba5:
	ld b, $0a                                        ; $0ba5: $06 $0a
	push hl                                          ; $0ba7: $e5

jr_000_0ba8:
	cp [hl]                                          ; $0ba8: $be
	jr nz, jr_000_0bb5                               ; $0ba9: $20 $0a

	inc hl                                           ; $0bab: $23
	dec b                                            ; $0bac: $05
	jr nz, jr_000_0ba8                               ; $0bad: $20 $f9

	pop hl                                           ; $0baf: $e1
	add hl, de                                       ; $0bb0: $19
	dec c                                            ; $0bb1: $0d
	jr nz, jr_000_0ba5                               ; $0bb2: $20 $f1

	push hl                                          ; $0bb4: $e5

jr_000_0bb5:
	pop hl                                           ; $0bb5: $e1
	ld a, c                                          ; $0bb6: $79
	ldh [$b1], a                                     ; $0bb7: $e0 $b1
	cp $0c                                           ; $0bb9: $fe $0c
	ld a, [$dfe9]                                    ; $0bbb: $fa $e9 $df
	jr nc, jr_000_0bc7                               ; $0bbe: $30 $07

	cp $08                                           ; $0bc0: $fe $08
	ret nz                                           ; $0bc2: $c0

	call Call_000_1517                               ; $0bc3: $cd $17 $15
	ret                                              ; $0bc6: $c9


jr_000_0bc7:
	cp $08                                           ; $0bc7: $fe $08
	ret z                                            ; $0bc9: $c8

	ld a, [$dff0]                                    ; $0bca: $fa $f0 $df
	cp $02                                           ; $0bcd: $fe $02
	ret z                                            ; $0bcf: $c8

	ld a, $08                                        ; $0bd0: $3e $08
	ld [$dfe8], a                                    ; $0bd2: $ea $e8 $df
	ret                                              ; $0bd5: $c9


jr_000_0bd6:
	ldh a, [$cb]                                     ; $0bd6: $f0 $cb
	cp $29                                           ; $0bd8: $fe $29
	jr z, jr_000_0c2e                                ; $0bda: $28 $52

	ld a, $01                                        ; $0bdc: $3e $01
	ld [$df7f], a                                    ; $0bde: $ea $7f $df
	ldh [$ab], a                                     ; $0be1: $e0 $ab
	ldh a, [$cf]                                     ; $0be3: $f0 $cf
	ldh [$f1], a                                     ; $0be5: $e0 $f1
	xor a                                            ; $0be7: $af
	ldh [$f2], a                                     ; $0be8: $e0 $f2
	ldh [$cf], a                                     ; $0bea: $e0 $cf
	call Call_000_1ccb                               ; $0bec: $cd $cb $1c
	ret                                              ; $0bef: $c9


Call_000_0bf0:
	ldh a, [$cc]                                     ; $0bf0: $f0 $cc
	and a                                            ; $0bf2: $a7
	ret z                                            ; $0bf3: $c8

	ld hl, $c030                                     ; $0bf4: $21 $30 $c0
	ld de, $0004                                     ; $0bf7: $11 $04 $00
	xor a                                            ; $0bfa: $af
	ldh [$cc], a                                     ; $0bfb: $e0 $cc
	ldh a, [$d0]                                     ; $0bfd: $f0 $d0
	cp $aa                                           ; $0bff: $fe $aa
	jr z, jr_000_0c64                                ; $0c01: $28 $61

	cp $77                                           ; $0c03: $fe $77
	jr z, jr_000_0c50                                ; $0c05: $28 $49

	cp $94                                           ; $0c07: $fe $94
	jr z, jr_000_0bd6                                ; $0c09: $28 $cb

	ld b, a                                          ; $0c0b: $47
	and a                                            ; $0c0c: $a7
	jr z, jr_000_0c60                                ; $0c0d: $28 $51

	bit 7, a                                         ; $0c0f: $cb $7f
	jr nz, jr_000_0c82                               ; $0c11: $20 $6f

	cp $13                                           ; $0c13: $fe $13
	jr nc, jr_000_0c2e                               ; $0c15: $30 $17

	ld a, $12                                        ; $0c17: $3e $12
	sub b                                            ; $0c19: $90
	ld c, a                                          ; $0c1a: $4f
	inc c                                            ; $0c1b: $0c

jr_000_0c1c:
	ld a, $98                                        ; $0c1c: $3e $98

jr_000_0c1e:
	ld [hl], a                                       ; $0c1e: $77
	add hl, de                                       ; $0c1f: $19
	sub $08                                          ; $0c20: $d6 $08
	dec b                                            ; $0c22: $05
	jr nz, jr_000_0c1e                               ; $0c23: $20 $f9

jr_000_0c25:
	ld a, $f0                                        ; $0c25: $3e $f0

jr_000_0c27:
	dec c                                            ; $0c27: $0d
	jr z, jr_000_0c2e                                ; $0c28: $28 $04

	ld [hl], a                                       ; $0c2a: $77
	add hl, de                                       ; $0c2b: $19
	jr jr_000_0c27                                   ; $0c2c: $18 $f9

jr_000_0c2e:
	ldh a, [$dc]                                     ; $0c2e: $f0 $dc
	and a                                            ; $0c30: $a7
	jr z, jr_000_0c3a                                ; $0c31: $28 $07

	or $80                                           ; $0c33: $f6 $80
	ldh [$b1], a                                     ; $0c35: $e0 $b1
	xor a                                            ; $0c37: $af
	ldh [$dc], a                                     ; $0c38: $e0 $dc

jr_000_0c3a:
	ld a, $ff                                        ; $0c3a: $3e $ff
	ldh [$d0], a                                     ; $0c3c: $e0 $d0
	ldh a, [$cb]                                     ; $0c3e: $f0 $cb
	cp $29                                           ; $0c40: $fe $29
	ldh a, [$b1]                                     ; $0c42: $f0 $b1
	jr nz, jr_000_0c4d                               ; $0c44: $20 $07

	ldh [$cf], a                                     ; $0c46: $e0 $cf
	ld a, $01                                        ; $0c48: $3e $01
	ldh [$ce], a                                     ; $0c4a: $e0 $ce
	ret                                              ; $0c4c: $c9


jr_000_0c4d:
	ldh [$cf], a                                     ; $0c4d: $e0 $cf
	ret                                              ; $0c4f: $c9


jr_000_0c50:
	ldh a, [$d1]                                     ; $0c50: $f0 $d1
	cp $aa                                           ; $0c52: $fe $aa
	jr z, jr_000_0c7c                                ; $0c54: $28 $26

	ld a, $77                                        ; $0c56: $3e $77
	ldh [$d1], a                                     ; $0c58: $e0 $d1
	ld a, $01                                        ; $0c5a: $3e $01
	ldh [$e1], a                                     ; $0c5c: $e0 $e1
	jr jr_000_0c2e                                   ; $0c5e: $18 $ce

jr_000_0c60:
	ld c, $13                                        ; $0c60: $0e $13
	jr jr_000_0c25                                   ; $0c62: $18 $c1

jr_000_0c64:
	ldh a, [$d1]                                     ; $0c64: $f0 $d1
	cp $77                                           ; $0c66: $fe $77
	jr z, jr_000_0c7c                                ; $0c68: $28 $12

	ld a, $aa                                        ; $0c6a: $3e $aa
	ldh [$d1], a                                     ; $0c6c: $e0 $d1
	ld a, $1b                                        ; $0c6e: $3e $1b
	ldh [$e1], a                                     ; $0c70: $e0 $e1
	ld a, $05                                        ; $0c72: $3e $05
	ldh [$a7], a                                     ; $0c74: $e0 $a7
	ld c, $01                                        ; $0c76: $0e $01
	ld b, $12                                        ; $0c78: $06 $12
	jr jr_000_0c1c                                   ; $0c7a: $18 $a0

jr_000_0c7c:
	ld a, $01                                        ; $0c7c: $3e $01
	ldh [$ef], a                                     ; $0c7e: $e0 $ef
	jr jr_000_0c2e                                   ; $0c80: $18 $ac

jr_000_0c82:
	and $7f                                          ; $0c82: $e6 $7f
	cp $05                                           ; $0c84: $fe $05
	jr nc, jr_000_0c2e                               ; $0c86: $30 $a6

	ldh [$d2], a                                     ; $0c88: $e0 $d2
	jr jr_000_0c3a                                   ; $0c8a: $18 $ae

Call_000_0c8c:
	ldh a, [$d3]                                     ; $0c8c: $f0 $d3
	and a                                            ; $0c8e: $a7
	jr z, jr_000_0c98                                ; $0c8f: $28 $07

	bit 7, a                                         ; $0c91: $cb $7f
	ret z                                            ; $0c93: $c8

	and $07                                          ; $0c94: $e6 $07
	jr jr_000_0ca2                                   ; $0c96: $18 $0a

jr_000_0c98:
	ldh a, [$d2]                                     ; $0c98: $f0 $d2
	and a                                            ; $0c9a: $a7
	ret z                                            ; $0c9b: $c8

	ldh [$d3], a                                     ; $0c9c: $e0 $d3
	xor a                                            ; $0c9e: $af
	ldh [$d2], a                                     ; $0c9f: $e0 $d2
	ret                                              ; $0ca1: $c9


jr_000_0ca2:
	ld c, a                                          ; $0ca2: $4f
	push bc                                          ; $0ca3: $c5
	ld hl, $c822                                     ; $0ca4: $21 $22 $c8
	ld de, $ffe0                                     ; $0ca7: $11 $e0 $ff

jr_000_0caa:
	add hl, de                                       ; $0caa: $19
	dec c                                            ; $0cab: $0d
	jr nz, jr_000_0caa                               ; $0cac: $20 $fc

	ld de, $c822                                     ; $0cae: $11 $22 $c8
	ld c, $11                                        ; $0cb1: $0e $11

jr_000_0cb3:
	ld b, $0a                                        ; $0cb3: $06 $0a

jr_000_0cb5:
	ld a, [de]                                       ; $0cb5: $1a
	ld [hl+], a                                      ; $0cb6: $22
	inc e                                            ; $0cb7: $1c
	dec b                                            ; $0cb8: $05
	jr nz, jr_000_0cb5                               ; $0cb9: $20 $fa

	push de                                          ; $0cbb: $d5
	ld de, $0016                                     ; $0cbc: $11 $16 $00
	add hl, de                                       ; $0cbf: $19
	pop de                                           ; $0cc0: $d1
	push hl                                          ; $0cc1: $e5
	ld hl, $0016                                     ; $0cc2: $21 $16 $00
	add hl, de                                       ; $0cc5: $19
	push hl                                          ; $0cc6: $e5
	pop de                                           ; $0cc7: $d1
	pop hl                                           ; $0cc8: $e1
	dec c                                            ; $0cc9: $0d
	jr nz, jr_000_0cb3                               ; $0cca: $20 $e7

	pop bc                                           ; $0ccc: $c1

jr_000_0ccd:
	ld de, $c400                                     ; $0ccd: $11 $00 $c4
	ld b, $0a                                        ; $0cd0: $06 $0a

jr_000_0cd2:
	ld a, [de]                                       ; $0cd2: $1a
	ld [hl+], a                                      ; $0cd3: $22
	inc de                                           ; $0cd4: $13
	dec b                                            ; $0cd5: $05
	jr nz, jr_000_0cd2                               ; $0cd6: $20 $fa

	push de                                          ; $0cd8: $d5
	ld de, $0016                                     ; $0cd9: $11 $16 $00
	add hl, de                                       ; $0cdc: $19
	pop de                                           ; $0cdd: $d1
	dec c                                            ; $0cde: $0d
	jr nz, jr_000_0ccd                               ; $0cdf: $20 $ec

	ld a, $02                                        ; $0ce1: $3e $02
	ldh [$e3], a                                     ; $0ce3: $e0 $e3
	ldh [$d4], a                                     ; $0ce5: $e0 $d4
	xor a                                            ; $0ce7: $af
	ldh [$d3], a                                     ; $0ce8: $e0 $d3
	ret                                              ; $0cea: $c9


	ldh a, [$a6]                                     ; $0ceb: $f0 $a6
	and a                                            ; $0ced: $a7
	ret nz                                           ; $0cee: $c0

	ld a, $01                                        ; $0cef: $3e $01
	ldh [rIE], a                                     ; $0cf1: $e0 $ff
	ld a, $03                                        ; $0cf3: $3e $03
	ldh [$cd], a                                     ; $0cf5: $e0 $cd
	ldh a, [$d1]                                     ; $0cf7: $f0 $d1
	cp $77                                           ; $0cf9: $fe $77
	jr nz, jr_000_0d09                               ; $0cfb: $20 $0c

	ldh a, [$d0]                                     ; $0cfd: $f0 $d0
	cp $aa                                           ; $0cff: $fe $aa
	jr nz, jr_000_0d13                               ; $0d01: $20 $10

jr_000_0d03:
	ld a, $01                                        ; $0d03: $3e $01
	ldh [$ef], a                                     ; $0d05: $e0 $ef
	jr jr_000_0d13                                   ; $0d07: $18 $0a

jr_000_0d09:
	cp $aa                                           ; $0d09: $fe $aa
	jr nz, jr_000_0d13                               ; $0d0b: $20 $06

	ldh a, [$d0]                                     ; $0d0d: $f0 $d0
	cp $77                                           ; $0d0f: $fe $77
	jr z, jr_000_0d03                                ; $0d11: $28 $f0

jr_000_0d13:
	ld b, $34                                        ; $0d13: $06 $34
	ld c, $43                                        ; $0d15: $0e $43
	call Call_000_113f                               ; $0d17: $cd $3f $11
	xor a                                            ; $0d1a: $af
	ldh [$e3], a                                     ; $0d1b: $e0 $e3
	ldh a, [$d1]                                     ; $0d1d: $f0 $d1
	cp $aa                                           ; $0d1f: $fe $aa
	ld a, $1e                                        ; $0d21: $3e $1e
	jr nz, jr_000_0d27                               ; $0d23: $20 $02

	ld a, $1d                                        ; $0d25: $3e $1d

jr_000_0d27:
	ldh [$e1], a                                     ; $0d27: $e0 $e1
	ld a, $28                                        ; $0d29: $3e $28
	ldh [$a6], a                                     ; $0d2b: $e0 $a6
	ld a, $1d                                        ; $0d2d: $3e $1d
	ldh [$c6], a                                     ; $0d2f: $e0 $c6
	ret                                              ; $0d31: $c9


	ldh a, [$a6]                                     ; $0d32: $f0 $a6
	and a                                            ; $0d34: $a7
	ret nz                                           ; $0d35: $c0

	ldh a, [$ef]                                     ; $0d36: $f0 $ef
	and a                                            ; $0d38: $a7
	jr nz, jr_000_0d40                               ; $0d39: $20 $05

	ldh a, [$d7]                                     ; $0d3b: $f0 $d7
	inc a                                            ; $0d3d: $3c
	ldh [$d7], a                                     ; $0d3e: $e0 $d7

jr_000_0d40:
	call Call_000_0f6f                               ; $0d40: $cd $6f $0f
	ld de, $26f9                                     ; $0d43: $11 $f9 $26
	ldh a, [$cb]                                     ; $0d46: $f0 $cb
	cp $29                                           ; $0d48: $fe $29
	jr z, jr_000_0d4f                                ; $0d4a: $28 $03

	ld de, $270b                                     ; $0d4c: $11 $0b $27

jr_000_0d4f:
	ld hl, $c200                                     ; $0d4f: $21 $00 $c2
	ld c, $03                                        ; $0d52: $0e $03
	call Call_000_1776                               ; $0d54: $cd $76 $17
	ld a, $19                                        ; $0d57: $3e $19
	ldh [$a6], a                                     ; $0d59: $e0 $a6
	ldh a, [$ef]                                     ; $0d5b: $f0 $ef
	and a                                            ; $0d5d: $a7
	jr z, jr_000_0d65                                ; $0d5e: $28 $05

	ld hl, $c220                                     ; $0d60: $21 $20 $c2
	ld [hl], $80                                     ; $0d63: $36 $80

jr_000_0d65:
	ld a, $03                                        ; $0d65: $3e $03
	call Call_000_2673                               ; $0d67: $cd $73 $26
	ld a, $20                                        ; $0d6a: $3e $20
	ldh [$e1], a                                     ; $0d6c: $e0 $e1
	ld a, $09                                        ; $0d6e: $3e $09
	ld [$dfe8], a                                    ; $0d70: $ea $e8 $df
	ldh a, [$d7]                                     ; $0d73: $f0 $d7
	cp $05                                           ; $0d75: $fe $05
	ret nz                                           ; $0d77: $c0

	ld a, $11                                        ; $0d78: $3e $11
	ld [$dfe8], a                                    ; $0d7a: $ea $e8 $df
	ret                                              ; $0d7d: $c9


jr_000_0d7e:
	ldh a, [$d7]                                     ; $0d7e: $f0 $d7
	cp $05                                           ; $0d80: $fe $05
	jr nz, jr_000_0d8b                               ; $0d82: $20 $07

	ldh a, [$c6]                                     ; $0d84: $f0 $c6
	and a                                            ; $0d86: $a7
	jr z, jr_000_0d91                                ; $0d87: $28 $08

	jr jr_000_0dad                                   ; $0d89: $18 $22

jr_000_0d8b:
	ldh a, [$81]                                     ; $0d8b: $f0 $81
	bit 3, a                                         ; $0d8d: $cb $5f
	jr z, jr_000_0dad                                ; $0d8f: $28 $1c

jr_000_0d91:
	ld a, $60                                        ; $0d91: $3e $60
	ldh [$cf], a                                     ; $0d93: $e0 $cf
	ldh [$ce], a                                     ; $0d95: $e0 $ce
	jr jr_000_0db6                                   ; $0d97: $18 $1d

	ld a, $01                                        ; $0d99: $3e $01
	ldh [rIE], a                                     ; $0d9b: $e0 $ff
	ldh a, [$cc]                                     ; $0d9d: $f0 $cc
	jr z, jr_000_0dad                                ; $0d9f: $28 $0c

	ldh a, [$cb]                                     ; $0da1: $f0 $cb
	cp $29                                           ; $0da3: $fe $29
	jr z, jr_000_0d7e                                ; $0da5: $28 $d7

	ldh a, [$d0]                                     ; $0da7: $f0 $d0
	cp $60                                           ; $0da9: $fe $60
	jr z, jr_000_0db6                                ; $0dab: $28 $09

jr_000_0dad:
	call Call_000_0dbd                               ; $0dad: $cd $bd $0d
	ld a, $03                                        ; $0db0: $3e $03
	call Call_000_2673                               ; $0db2: $cd $73 $26
	ret                                              ; $0db5: $c9


jr_000_0db6:
	ld a, $1f                                        ; $0db6: $3e $1f
	ldh [$e1], a                                     ; $0db8: $e0 $e1
	ldh [$cc], a                                     ; $0dba: $e0 $cc
	ret                                              ; $0dbc: $c9


Call_000_0dbd:
	ldh a, [$a6]                                     ; $0dbd: $f0 $a6
	and a                                            ; $0dbf: $a7
	jr nz, jr_000_0de5                               ; $0dc0: $20 $23

	ld hl, $ffc6                                     ; $0dc2: $21 $c6 $ff
	dec [hl]                                         ; $0dc5: $35
	ld a, $19                                        ; $0dc6: $3e $19
	ldh [$a6], a                                     ; $0dc8: $e0 $a6
	call Call_000_0f60                               ; $0dca: $cd $60 $0f
	ld hl, $c201                                     ; $0dcd: $21 $01 $c2
	ld a, [hl]                                       ; $0dd0: $7e
	xor $30                                          ; $0dd1: $ee $30
	ld [hl+], a                                      ; $0dd3: $22
	cp $60                                           ; $0dd4: $fe $60
	call z, Call_000_0f17                            ; $0dd6: $cc $17 $0f
	inc l                                            ; $0dd9: $2c
	push af                                          ; $0dda: $f5
	ld a, [hl]                                       ; $0ddb: $7e
	xor $01                                          ; $0ddc: $ee $01
	ld [hl], a                                       ; $0dde: $77
	ld l, $13                                        ; $0ddf: $2e $13
	ld [hl-], a                                      ; $0de1: $32
	pop af                                           ; $0de2: $f1
	dec l                                            ; $0de3: $2d
	ld [hl], a                                       ; $0de4: $77

jr_000_0de5:
	ldh a, [$d7]                                     ; $0de5: $f0 $d7
	cp $05                                           ; $0de7: $fe $05
	jr nz, jr_000_0e13                               ; $0de9: $20 $28

	ldh a, [$c6]                                     ; $0deb: $f0 $c6
	ld hl, $c221                                     ; $0ded: $21 $21 $c2
	cp $06                                           ; $0df0: $fe $06
	jr z, jr_000_0e0f                                ; $0df2: $28 $1b

	cp $08                                           ; $0df4: $fe $08
	jr nc, jr_000_0e13                               ; $0df6: $30 $1b

	ld a, [hl]                                       ; $0df8: $7e
	cp $72                                           ; $0df9: $fe $72
	jr nc, jr_000_0e03                               ; $0dfb: $30 $06

	cp $69                                           ; $0dfd: $fe $69
	ret z                                            ; $0dff: $c8

	inc [hl]                                         ; $0e00: $34
	inc [hl]                                         ; $0e01: $34
	ret                                              ; $0e02: $c9


jr_000_0e03:
	ld [hl], $69                                     ; $0e03: $36 $69
	inc l                                            ; $0e05: $2c
	inc l                                            ; $0e06: $2c
	ld [hl], $57                                     ; $0e07: $36 $57
	ld a, $06                                        ; $0e09: $3e $06
	ld [$dfe0], a                                    ; $0e0b: $ea $e0 $df
	ret                                              ; $0e0e: $c9


jr_000_0e0f:
	dec l                                            ; $0e0f: $2d
	ld [hl], $80                                     ; $0e10: $36 $80
	ret                                              ; $0e12: $c9


jr_000_0e13:
	ldh a, [$a7]                                     ; $0e13: $f0 $a7
	and a                                            ; $0e15: $a7
	ret nz                                           ; $0e16: $c0

	ld a, $0f                                        ; $0e17: $3e $0f
	ldh [$a7], a                                     ; $0e19: $e0 $a7
	ld hl, $c223                                     ; $0e1b: $21 $23 $c2
	ld a, [hl]                                       ; $0e1e: $7e
	xor $01                                          ; $0e1f: $ee $01
	ld [hl], a                                       ; $0e21: $77
	ret                                              ; $0e22: $c9


	ldh a, [$a6]                                     ; $0e23: $f0 $a6
	and a                                            ; $0e25: $a7
	ret nz                                           ; $0e26: $c0

	ldh a, [$ef]                                     ; $0e27: $f0 $ef
	and a                                            ; $0e29: $a7
	jr nz, jr_000_0e31                               ; $0e2a: $20 $05

	ldh a, [$d8]                                     ; $0e2c: $f0 $d8
	inc a                                            ; $0e2e: $3c
	ldh [$d8], a                                     ; $0e2f: $e0 $d8

jr_000_0e31:
	call Call_000_0f6f                               ; $0e31: $cd $6f $0f
	ld de, $271d                                     ; $0e34: $11 $1d $27
	ldh a, [$cb]                                     ; $0e37: $f0 $cb
	cp $29                                           ; $0e39: $fe $29
	jr z, jr_000_0e40                                ; $0e3b: $28 $03

	ld de, $2729                                     ; $0e3d: $11 $29 $27

jr_000_0e40:
	ld hl, $c200                                     ; $0e40: $21 $00 $c2
	ld c, $02                                        ; $0e43: $0e $02
	call Call_000_1776                               ; $0e45: $cd $76 $17
	ld a, $19                                        ; $0e48: $3e $19
	ldh [$a6], a                                     ; $0e4a: $e0 $a6
	ldh a, [$ef]                                     ; $0e4c: $f0 $ef
	and a                                            ; $0e4e: $a7
	jr z, jr_000_0e56                                ; $0e4f: $28 $05

	ld hl, $c210                                     ; $0e51: $21 $10 $c2
	ld [hl], $80                                     ; $0e54: $36 $80

jr_000_0e56:
	ld a, $02                                        ; $0e56: $3e $02
	call Call_000_2673                               ; $0e58: $cd $73 $26
	ld a, $21                                        ; $0e5b: $3e $21
	ldh [$e1], a                                     ; $0e5d: $e0 $e1
	ld a, $09                                        ; $0e5f: $3e $09
	ld [$dfe8], a                                    ; $0e61: $ea $e8 $df
	ldh a, [$d8]                                     ; $0e64: $f0 $d8
	cp $05                                           ; $0e66: $fe $05
	ret nz                                           ; $0e68: $c0

	ld a, $11                                        ; $0e69: $3e $11
	ld [$dfe8], a                                    ; $0e6b: $ea $e8 $df
	ret                                              ; $0e6e: $c9


jr_000_0e6f:
	ldh a, [$d8]                                     ; $0e6f: $f0 $d8
	cp $05                                           ; $0e71: $fe $05
	jr nz, jr_000_0e7c                               ; $0e73: $20 $07

	ldh a, [$c6]                                     ; $0e75: $f0 $c6
	and a                                            ; $0e77: $a7
	jr z, jr_000_0e82                                ; $0e78: $28 $08

	jr jr_000_0e9e                                   ; $0e7a: $18 $22

jr_000_0e7c:
	ldh a, [$81]                                     ; $0e7c: $f0 $81
	bit 3, a                                         ; $0e7e: $cb $5f
	jr z, jr_000_0e9e                                ; $0e80: $28 $1c

jr_000_0e82:
	ld a, $60                                        ; $0e82: $3e $60
	ldh [$cf], a                                     ; $0e84: $e0 $cf
	ldh [$ce], a                                     ; $0e86: $e0 $ce
	jr jr_000_0ea7                                   ; $0e88: $18 $1d

	ld a, $01                                        ; $0e8a: $3e $01
	ldh [rIE], a                                     ; $0e8c: $e0 $ff
	ldh a, [$cc]                                     ; $0e8e: $f0 $cc
	jr z, jr_000_0e9e                                ; $0e90: $28 $0c

	ldh a, [$cb]                                     ; $0e92: $f0 $cb
	cp $29                                           ; $0e94: $fe $29
	jr z, jr_000_0e6f                                ; $0e96: $28 $d7

	ldh a, [$d0]                                     ; $0e98: $f0 $d0
	cp $60                                           ; $0e9a: $fe $60
	jr z, jr_000_0ea7                                ; $0e9c: $28 $09

jr_000_0e9e:
	call Call_000_0eae                               ; $0e9e: $cd $ae $0e
	ld a, $02                                        ; $0ea1: $3e $02
	call Call_000_2673                               ; $0ea3: $cd $73 $26
	ret                                              ; $0ea6: $c9


jr_000_0ea7:
	ld a, $1f                                        ; $0ea7: $3e $1f
	ldh [$e1], a                                     ; $0ea9: $e0 $e1
	ldh [$cc], a                                     ; $0eab: $e0 $cc
	ret                                              ; $0ead: $c9


Call_000_0eae:
	ldh a, [$a6]                                     ; $0eae: $f0 $a6
	and a                                            ; $0eb0: $a7
	jr nz, jr_000_0ecf                               ; $0eb1: $20 $1c

	ld hl, $ffc6                                     ; $0eb3: $21 $c6 $ff
	dec [hl]                                         ; $0eb6: $35
	ld a, $19                                        ; $0eb7: $3e $19
	ldh [$a6], a                                     ; $0eb9: $e0 $a6
	call Call_000_0f60                               ; $0ebb: $cd $60 $0f
	ld hl, $c211                                     ; $0ebe: $21 $11 $c2
	ld a, [hl]                                       ; $0ec1: $7e
	xor $08                                          ; $0ec2: $ee $08
	ld [hl+], a                                      ; $0ec4: $22
	cp $68                                           ; $0ec5: $fe $68
	call z, Call_000_0f17                            ; $0ec7: $cc $17 $0f
	inc l                                            ; $0eca: $2c
	ld a, [hl]                                       ; $0ecb: $7e
	xor $01                                          ; $0ecc: $ee $01
	ld [hl], a                                       ; $0ece: $77

jr_000_0ecf:
	ldh a, [$d8]                                     ; $0ecf: $f0 $d8
	cp $05                                           ; $0ed1: $fe $05
	jr nz, jr_000_0f07                               ; $0ed3: $20 $32

	ldh a, [$c6]                                     ; $0ed5: $f0 $c6
	ld hl, $c201                                     ; $0ed7: $21 $01 $c2
	cp $05                                           ; $0eda: $fe $05
	jr z, jr_000_0f03                                ; $0edc: $28 $25

	cp $06                                           ; $0ede: $fe $06
	jr z, jr_000_0ef3                                ; $0ee0: $28 $11

	cp $08                                           ; $0ee2: $fe $08
	jr nc, jr_000_0f07                               ; $0ee4: $30 $21

	ld a, [hl]                                       ; $0ee6: $7e
	cp $72                                           ; $0ee7: $fe $72
	jr nc, jr_000_0f03                               ; $0ee9: $30 $18

	cp $61                                           ; $0eeb: $fe $61
	ret z                                            ; $0eed: $c8

	inc [hl]                                         ; $0eee: $34
	inc [hl]                                         ; $0eef: $34
	inc [hl]                                         ; $0ef0: $34
	inc [hl]                                         ; $0ef1: $34
	ret                                              ; $0ef2: $c9


jr_000_0ef3:
	dec l                                            ; $0ef3: $2d
	ld [hl], $00                                     ; $0ef4: $36 $00
	inc l                                            ; $0ef6: $2c
	ld [hl], $61                                     ; $0ef7: $36 $61
	inc l                                            ; $0ef9: $2c
	inc l                                            ; $0efa: $2c
	ld [hl], $56                                     ; $0efb: $36 $56
	ld a, $06                                        ; $0efd: $3e $06
	ld [$dfe0], a                                    ; $0eff: $ea $e0 $df
	ret                                              ; $0f02: $c9


jr_000_0f03:
	dec l                                            ; $0f03: $2d
	ld [hl], $80                                     ; $0f04: $36 $80
	ret                                              ; $0f06: $c9


jr_000_0f07:
	ldh a, [$a7]                                     ; $0f07: $f0 $a7
	and a                                            ; $0f09: $a7
	ret nz                                           ; $0f0a: $c0

	ld a, $0f                                        ; $0f0b: $3e $0f
	ldh [$a7], a                                     ; $0f0d: $e0 $a7
	ld hl, $c203                                     ; $0f0f: $21 $03 $c2
	ld a, [hl]                                       ; $0f12: $7e
	xor $01                                          ; $0f13: $ee $01
	ld [hl], a                                       ; $0f15: $77
	ret                                              ; $0f16: $c9


Call_000_0f17:
	push af                                          ; $0f17: $f5
	push hl                                          ; $0f18: $e5
	ldh a, [$d7]                                     ; $0f19: $f0 $d7
	cp $05                                           ; $0f1b: $fe $05
	jr z, jr_000_0f39                                ; $0f1d: $28 $1a

	ldh a, [$d8]                                     ; $0f1f: $f0 $d8
	cp $05                                           ; $0f21: $fe $05
	jr z, jr_000_0f39                                ; $0f23: $28 $14

	ldh a, [$cb]                                     ; $0f25: $f0 $cb
	cp $29                                           ; $0f27: $fe $29
	jr nz, jr_000_0f39                               ; $0f29: $20 $0e

	ld hl, $c060                                     ; $0f2b: $21 $60 $c0
	ld b, $24                                        ; $0f2e: $06 $24
	ld de, $0f3c                                     ; $0f30: $11 $3c $0f

jr_000_0f33:
	ld a, [de]                                       ; $0f33: $1a
	ld [hl+], a                                      ; $0f34: $22
	inc de                                           ; $0f35: $13
	dec b                                            ; $0f36: $05
	jr nz, jr_000_0f33                               ; $0f37: $20 $fa

jr_000_0f39:
	pop hl                                           ; $0f39: $e1
	pop af                                           ; $0f3a: $f1
	ret                                              ; $0f3b: $c9


	DB $42, $30, $0d, $00, $42, $38, $b2, $00, $42, $40, $0e, $00, $42, $48, $1c, $00
	DB $42, $58, $0e, $00, $42, $60, $1d, $00, $42, $68, $b5, $00, $42, $70, $bb, $00
	DB $42, $78, $1d, $00

Call_000_0f60:
	ld hl, $c060                                     ; $0f60: $21 $60 $c0
	ld de, $0004                                     ; $0f63: $11 $04 $00
	ld b, $09                                        ; $0f66: $06 $09
	xor a                                            ; $0f68: $af

jr_000_0f69:
	ld [hl], a                                       ; $0f69: $77
	add hl, de                                       ; $0f6a: $19
	dec b                                            ; $0f6b: $05
	jr nz, jr_000_0f69                               ; $0f6c: $20 $fb

	ret                                              ; $0f6e: $c9


Call_000_0f6f:
	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $0f6f: $cd $20 $28
	ld hl, $55ac                                     ; $0f72: $21 $ac $55
	ld bc, $1000                                     ; $0f75: $01 $00 $10
	call Call_000_27e4                               ; $0f78: $cd $e4 $27
	call Fill_SCRN0_with_2f                          ; $0f7b: $cd $95 $27
	ld hl, $9800                                     ; $0f7e: $21 $00 $98
	ld de, $54e4                                     ; $0f81: $11 $e4 $54
	ld b, $04                                        ; $0f84: $06 $04
	call Call_000_27f0                               ; $0f86: $cd $f0 $27
	ld hl, $9980                                     ; $0f89: $21 $80 $99
	ld b, $06                                        ; $0f8c: $06 $06
	call Call_000_27f0                               ; $0f8e: $cd $f0 $27
	ldh a, [$cb]                                     ; $0f91: $f0 $cb
	cp $29                                           ; $0f93: $fe $29
	jr nz, jr_000_0fb9                               ; $0f95: $20 $22

	ld hl, $9841                                     ; $0f97: $21 $41 $98
	ld [hl], $bd                                     ; $0f9a: $36 $bd
	inc l                                            ; $0f9c: $2c
	ld [hl], $b2                                     ; $0f9d: $36 $b2
	inc l                                            ; $0f9f: $2c
	ld [hl], $2e                                     ; $0fa0: $36 $2e
	inc l                                            ; $0fa2: $2c
	ld [hl], $be                                     ; $0fa3: $36 $be
	inc l                                            ; $0fa5: $2c
	ld [hl], $2e                                     ; $0fa6: $36 $2e
	ld hl, $9a01                                     ; $0fa8: $21 $01 $9a
	ld [hl], $b4                                     ; $0fab: $36 $b4
	inc l                                            ; $0fad: $2c
	ld [hl], $b5                                     ; $0fae: $36 $b5
	inc l                                            ; $0fb0: $2c
	ld [hl], $bb                                     ; $0fb1: $36 $bb
	inc l                                            ; $0fb3: $2c
	ld [hl], $2e                                     ; $0fb4: $36 $2e
	inc l                                            ; $0fb6: $2c
	ld [hl], $bc                                     ; $0fb7: $36 $bc

jr_000_0fb9:
	ldh a, [$ef]                                     ; $0fb9: $f0 $ef
	and a                                            ; $0fbb: $a7
	jr nz, jr_000_0fc1                               ; $0fbc: $20 $03

	call Call_000_1085                               ; $0fbe: $cd $85 $10

jr_000_0fc1:
	ldh a, [$d7]                                     ; $0fc1: $f0 $d7
	and a                                            ; $0fc3: $a7
	jr z, jr_000_100f                                ; $0fc4: $28 $49

	cp $05                                           ; $0fc6: $fe $05
	jr nz, jr_000_0fe0                               ; $0fc8: $20 $16

	ld hl, $98a5                                     ; $0fca: $21 $a5 $98
	ld b, $0b                                        ; $0fcd: $06 $0b
	ldh a, [$cb]                                     ; $0fcf: $f0 $cb
	cp $29                                           ; $0fd1: $fe $29
	ld de, $10f3                                     ; $0fd3: $11 $f3 $10
	jr z, jr_000_0fdb                                ; $0fd6: $28 $03

	ld de, $10fe                                     ; $0fd8: $11 $fe $10

jr_000_0fdb:
	call Call_000_10d8                               ; $0fdb: $cd $d8 $10
	ld a, $04                                        ; $0fde: $3e $04

jr_000_0fe0:
	ld c, a                                          ; $0fe0: $4f
	ldh a, [$cb]                                     ; $0fe1: $f0 $cb
	cp $29                                           ; $0fe3: $fe $29
	ld a, $93                                        ; $0fe5: $3e $93
	jr nz, jr_000_0feb                               ; $0fe7: $20 $02

	ld a, $8f                                        ; $0fe9: $3e $8f

jr_000_0feb:
	ldh [$a0], a                                     ; $0feb: $e0 $a0
	ld hl, $99e7                                     ; $0fed: $21 $e7 $99
	call Call_000_106a                               ; $0ff0: $cd $6a $10
	ldh a, [$d9]                                     ; $0ff3: $f0 $d9
	and a                                            ; $0ff5: $a7
	jr z, jr_000_100f                                ; $0ff6: $28 $17

	ld a, $ac                                        ; $0ff8: $3e $ac
	ldh [$a0], a                                     ; $0ffa: $e0 $a0
	ld hl, $99f0                                     ; $0ffc: $21 $f0 $99
	ld c, $01                                        ; $0fff: $0e $01
	call Call_000_106a                               ; $1001: $cd $6a $10
	ld hl, $98a6                                     ; $1004: $21 $a6 $98
	ld de, $1109                                     ; $1007: $11 $09 $11
	ld b, $09                                        ; $100a: $06 $09
	call Call_000_10d8                               ; $100c: $cd $d8 $10

jr_000_100f:
	ldh a, [$d8]                                     ; $100f: $f0 $d8
	and a                                            ; $1011: $a7
	jr z, jr_000_1052                                ; $1012: $28 $3e

	cp $05                                           ; $1014: $fe $05
	jr nz, jr_000_102e                               ; $1016: $20 $16

	ld hl, $98a5                                     ; $1018: $21 $a5 $98
	ld b, $0b                                        ; $101b: $06 $0b
	ldh a, [$cb]                                     ; $101d: $f0 $cb
	cp $29                                           ; $101f: $fe $29
	ld de, $10fe                                     ; $1021: $11 $fe $10
	jr z, jr_000_1029                                ; $1024: $28 $03

	ld de, $10f3                                     ; $1026: $11 $f3 $10

jr_000_1029:
	call Call_000_10d8                               ; $1029: $cd $d8 $10
	ld a, $04                                        ; $102c: $3e $04

jr_000_102e:
	ld c, a                                          ; $102e: $4f
	ldh a, [$cb]                                     ; $102f: $f0 $cb
	cp $29                                           ; $1031: $fe $29
	ld a, $8f                                        ; $1033: $3e $8f
	jr nz, jr_000_1039                               ; $1035: $20 $02

	ld a, $93                                        ; $1037: $3e $93

jr_000_1039:
	ldh [$a0], a                                     ; $1039: $e0 $a0
	ld hl, $9827                                     ; $103b: $21 $27 $98
	call Call_000_106a                               ; $103e: $cd $6a $10
	ldh a, [$da]                                     ; $1041: $f0 $da
	and a                                            ; $1043: $a7
	jr z, jr_000_1052                                ; $1044: $28 $0c

	ld a, $ac                                        ; $1046: $3e $ac
	ldh [$a0], a                                     ; $1048: $e0 $a0
	ld hl, $9830                                     ; $104a: $21 $30 $98
	ld c, $01                                        ; $104d: $0e $01
	call Call_000_106a                               ; $104f: $cd $6a $10

jr_000_1052:
	ldh a, [$db]                                     ; $1052: $f0 $db
	and a                                            ; $1054: $a7
	jr z, jr_000_1062                                ; $1055: $28 $0b

	ld hl, $98a7                                     ; $1057: $21 $a7 $98
	ld de, $10ed                                     ; $105a: $11 $ed $10
	ld b, $06                                        ; $105d: $06 $06
	call Call_000_10d8                               ; $105f: $cd $d8 $10

jr_000_1062:
	ld a, $d3                                        ; $1062: $3e $d3
	ldh [rLCDC], a                                   ; $1064: $e0 $40
	call Zero_c000_c09f                              ; $1066: $cd $8a $17
	ret                                              ; $1069: $c9


Call_000_106a:
jr_000_106a:
	ldh a, [$a0]                                     ; $106a: $f0 $a0
	push hl                                          ; $106c: $e5
	ld de, $0020                                     ; $106d: $11 $20 $00
	ld b, $02                                        ; $1070: $06 $02

jr_000_1072:
	push hl                                          ; $1072: $e5
	ld [hl+], a                                      ; $1073: $22
	inc a                                            ; $1074: $3c
	ld [hl], a                                       ; $1075: $77
	inc a                                            ; $1076: $3c
	pop hl                                           ; $1077: $e1
	add hl, de                                       ; $1078: $19
	dec b                                            ; $1079: $05
	jr nz, jr_000_1072                               ; $107a: $20 $f6

	pop hl                                           ; $107c: $e1
	ld de, $0003                                     ; $107d: $11 $03 $00
	add hl, de                                       ; $1080: $19
	dec c                                            ; $1081: $0d
	jr nz, jr_000_106a                               ; $1082: $20 $e6

	ret                                              ; $1084: $c9


Call_000_1085:
	ld hl, $ffd7                                     ; $1085: $21 $d7 $ff
	ld de, $ffd8                                     ; $1088: $11 $d8 $ff
	ldh a, [$d9]                                     ; $108b: $f0 $d9
	and a                                            ; $108d: $a7
	jr nz, jr_000_10ca                               ; $108e: $20 $3a

	ldh a, [$da]                                     ; $1090: $f0 $da
	and a                                            ; $1092: $a7
	jr nz, jr_000_10d1                               ; $1093: $20 $3c

	ldh a, [$db]                                     ; $1095: $f0 $db
	and a                                            ; $1097: $a7
	jr nz, jr_000_10bb                               ; $1098: $20 $21

	ld a, [hl]                                       ; $109a: $7e
	cp $04                                           ; $109b: $fe $04
	jr z, jr_000_10b0                                ; $109d: $28 $11

	ld a, [de]                                       ; $109f: $1a
	cp $04                                           ; $10a0: $fe $04
	ret nz                                           ; $10a2: $c0

jr_000_10a3:
	ld a, $05                                        ; $10a3: $3e $05
	ld [de], a                                       ; $10a5: $12
	jr jr_000_10b2                                   ; $10a6: $18 $0a

The_next_3_instructions_are_not_used::
	ld a, [de]                                       ; $10a8: $1a
	cp $03                                           ; $10a9: $fe $03
	ret nz                                           ; $10ab: $c0

jr_000_10ac:
	ld a, $03                                        ; $10ac: $3e $03
	jr jr_000_10b5                                   ; $10ae: $18 $05

jr_000_10b0:
	ld [hl], $05                                     ; $10b0: $36 $05

jr_000_10b2:
	xor a                                            ; $10b2: $af
	ldh [$db], a                                     ; $10b3: $e0 $db

jr_000_10b5:
	xor a                                            ; $10b5: $af
	ldh [$d9], a                                     ; $10b6: $e0 $d9
	ldh [$da], a                                     ; $10b8: $e0 $da
	ret                                              ; $10ba: $c9


jr_000_10bb:
	ld a, [hl]                                       ; $10bb: $7e
	cp $04                                           ; $10bc: $fe $04
	jr nz, jr_000_10c6                               ; $10be: $20 $06

	ldh [$d9], a                                     ; $10c0: $e0 $d9

jr_000_10c2:
	xor a                                            ; $10c2: $af
	ldh [$db], a                                     ; $10c3: $e0 $db
	ret                                              ; $10c5: $c9


jr_000_10c6:
	ldh [$da], a                                     ; $10c6: $e0 $da
	jr jr_000_10c2                                   ; $10c8: $18 $f8

jr_000_10ca:
	ld a, [hl]                                       ; $10ca: $7e
	cp $05                                           ; $10cb: $fe $05
	jr z, jr_000_10b0                                ; $10cd: $28 $e1

	jr jr_000_10ac                                   ; $10cf: $18 $db

jr_000_10d1:
	ld a, [de]                                       ; $10d1: $1a
	cp $05                                           ; $10d2: $fe $05
	jr z, jr_000_10a3                                ; $10d4: $28 $cd

	jr jr_000_10ac                                   ; $10d6: $18 $d4

Call_000_10d8:
	push bc                                          ; $10d8: $c5
	push hl                                          ; $10d9: $e5

jr_000_10da:
	ld a, [de]                                       ; $10da: $1a
	ld [hl+], a                                      ; $10db: $22
	inc de                                           ; $10dc: $13
	dec b                                            ; $10dd: $05
	jr nz, jr_000_10da                               ; $10de: $20 $fa

	pop hl                                           ; $10e0: $e1
	ld de, $0020                                     ; $10e1: $11 $20 $00
	add hl, de                                       ; $10e4: $19
	pop bc                                           ; $10e5: $c1
	ld a, $b6                                        ; $10e6: $3e $b6

jr_000_10e8:
	ld [hl+], a                                      ; $10e8: $22
	dec b                                            ; $10e9: $05
	jr nz, jr_000_10e8                               ; $10ea: $20 $fc

	ret                                              ; $10ec: $c9


	DB $b0, $b1, $b2, $b3, $b1, $3e, $b4, $b5, $bb, $2e, $bc, $2f, $2d, $2e, $3d, $0e
	DB $3e, $bd, $b2, $2e, $be, $2e, $2f, $2d, $2e, $3d, $0e, $3e, $b5, $b0, $41, $b5
	DB $3d, $1d, $b5, $be, $b1

	ld a, $01                                        ; $1112: $3e $01
	ldh [rIE], a                                     ; $1114: $e0 $ff
	ldh a, [$a6]                                     ; $1116: $f0 $a6
	and a                                            ; $1118: $a7
	ret nz                                           ; $1119: $c0

	call Zero_c000_c09f                              ; $111a: $cd $8a $17
	xor a                                            ; $111d: $af
	ldh [$ef], a                                     ; $111e: $e0 $ef
	ld b, $27                                        ; $1120: $06 $27
	ld c, $79                                        ; $1122: $0e $79
	call Call_000_113f                               ; $1124: $cd $3f $11
	call $7ff3                                       ; $1127: $cd $f3 $7f
	ldh a, [$d7]                                     ; $112a: $f0 $d7
	cp $05                                           ; $112c: $fe $05
	jr z, jr_000_113a                                ; $112e: $28 $0a

	ldh a, [$d8]                                     ; $1130: $f0 $d8
	cp $05                                           ; $1132: $fe $05
	jr z, jr_000_113a                                ; $1134: $28 $04

	ld a, $01                                        ; $1136: $3e $01
	ldh [$d6], a                                     ; $1138: $e0 $d6

jr_000_113a:
	ld a, $16                                        ; $113a: $3e $16
	ldh [$e1], a                                     ; $113c: $e0 $e1
	ret                                              ; $113e: $c9


Call_000_113f:
	ldh a, [$cc]                                     ; $113f: $f0 $cc
	and a                                            ; $1141: $a7
	jr z, jr_000_1158                                ; $1142: $28 $14

	xor a                                            ; $1144: $af
	ldh [$cc], a                                     ; $1145: $e0 $cc
	ldh a, [$cb]                                     ; $1147: $f0 $cb
	cp $29                                           ; $1149: $fe $29
	ldh a, [$d0]                                     ; $114b: $f0 $d0
	jr nz, jr_000_1160                               ; $114d: $20 $11

	cp b                                             ; $114f: $b8
	jr z, jr_000_115a                                ; $1150: $28 $08

	ld a, $02                                        ; $1152: $3e $02
	ldh [$cf], a                                     ; $1154: $e0 $cf
	ldh [$ce], a                                     ; $1156: $e0 $ce

jr_000_1158:
	pop hl                                           ; $1158: $e1
	ret                                              ; $1159: $c9


jr_000_115a:
	ld a, c                                          ; $115a: $79
	ldh [$cf], a                                     ; $115b: $e0 $cf
	ldh [$ce], a                                     ; $115d: $e0 $ce
	ret                                              ; $115f: $c9


jr_000_1160:
	cp c                                             ; $1160: $b9
	ret z                                            ; $1161: $c8

	ld a, b                                          ; $1162: $78
	ldh [$cf], a                                     ; $1163: $e0 $cf
	pop hl                                           ; $1165: $e1
	ret                                              ; $1166: $c9


	call Call_000_11b2                               ; $1167: $cd $b2 $11
	ld hl, $9ce6                                     ; $116a: $21 $e6 $9c
	ld de, $141b                                     ; $116d: $11 $1b $14
	ld b, $07                                        ; $1170: $06 $07
	call Call_000_1437                               ; $1172: $cd $37 $14
	ld hl, $9ce7                                     ; $1175: $21 $e7 $9c
	ld de, $1422                                     ; $1178: $11 $22 $14
	ld b, $07                                        ; $117b: $06 $07
	call Call_000_1437                               ; $117d: $cd $37 $14
	ld hl, $9d08                                     ; $1180: $21 $08 $9d
	ld [hl], $72                                     ; $1183: $36 $72
	inc l                                            ; $1185: $2c
	ld [hl], $c4                                     ; $1186: $36 $c4
	ld hl, $9d28                                     ; $1188: $21 $28 $9d
	ld [hl], $b7                                     ; $118b: $36 $b7
	inc l                                            ; $118d: $2c
	ld [hl], $b8                                     ; $118e: $36 $b8
	ld de, $2771                                     ; $1190: $11 $71 $27
	ld hl, $c200                                     ; $1193: $21 $00 $c2
	ld c, $03                                        ; $1196: $0e $03
	call Call_000_1776                               ; $1198: $cd $76 $17
	ld a, $03                                        ; $119b: $3e $03
	call Call_000_2673                               ; $119d: $cd $73 $26
	ld a, $db                                        ; $11a0: $3e $db
	ldh [rLCDC], a                                   ; $11a2: $e0 $40
	ld a, $bb                                        ; $11a4: $3e $bb
	ldh [$a6], a                                     ; $11a6: $e0 $a6
	ld a, $27                                        ; $11a8: $3e $27
	ldh [$e1], a                                     ; $11aa: $e0 $e1
	ld a, $10                                        ; $11ac: $3e $10
	ld [$dfe8], a                                    ; $11ae: $ea $e8 $df
	ret                                              ; $11b1: $c9


Call_000_11b2:
	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $11b2: $cd $20 $28
	ld hl, $55ac                                     ; $11b5: $21 $ac $55
	ld bc, $1000                                     ; $11b8: $01 $00 $10
	call Call_000_27e4                               ; $11bb: $cd $e4 $27
	ld hl, $9fff                                     ; $11be: $21 $ff $9f
	call Call_000_2798                               ; $11c1: $cd $98 $27
	ld hl, $9dc0                                     ; $11c4: $21 $c0 $9d
	ld de, $51c4                                     ; $11c7: $11 $c4 $51
	ld b, $04                                        ; $11ca: $06 $04
	call Call_000_27f0                               ; $11cc: $cd $f0 $27
	ld hl, $9cec                                     ; $11cf: $21 $ec $9c
	ld de, $1429                                     ; $11d2: $11 $29 $14
	ld b, $07                                        ; $11d5: $06 $07
	call Call_000_1437                               ; $11d7: $cd $37 $14
	ld hl, $9ced                                     ; $11da: $21 $ed $9c
	ld de, $1430                                     ; $11dd: $11 $30 $14
	ld b, $07                                        ; $11e0: $06 $07
	call Call_000_1437                               ; $11e2: $cd $37 $14
	ret                                              ; $11e5: $c9


	ldh a, [$a6]                                     ; $11e6: $f0 $a6
	and a                                            ; $11e8: $a7
	ret nz                                           ; $11e9: $c0

	ld hl, $c210                                     ; $11ea: $21 $10 $c2
	ld [hl], $00                                     ; $11ed: $36 $00
	ld l, $20                                        ; $11ef: $2e $20
	ld [hl], $00                                     ; $11f1: $36 $00
	ld a, $ff                                        ; $11f3: $3e $ff
	ldh [$a6], a                                     ; $11f5: $e0 $a6
	ld a, $28                                        ; $11f7: $3e $28
	ldh [$e1], a                                     ; $11f9: $e0 $e1
	ret                                              ; $11fb: $c9


	ldh a, [$a6]                                     ; $11fc: $f0 $a6
	and a                                            ; $11fe: $a7
	jr z, jr_000_1205                                ; $11ff: $28 $04

	call Call_000_13fa                               ; $1201: $cd $fa $13
	ret                                              ; $1204: $c9


jr_000_1205:
	ld a, $29                                        ; $1205: $3e $29
	ldh [$e1], a                                     ; $1207: $e0 $e1
	ld hl, $c213                                     ; $1209: $21 $13 $c2
	ld [hl], $35                                     ; $120c: $36 $35
	ld l, $23                                        ; $120e: $2e $23
	ld [hl], $35                                     ; $1210: $36 $35
	ld a, $ff                                        ; $1212: $3e $ff
	ldh [$a6], a                                     ; $1214: $e0 $a6
	ld a, $2f                                        ; $1216: $3e $2f
	call Call_000_1fd7                               ; $1218: $cd $d7 $1f
	ret                                              ; $121b: $c9


	ldh a, [$a6]                                     ; $121c: $f0 $a6
	and a                                            ; $121e: $a7
	jr z, jr_000_1225                                ; $121f: $28 $04

	call Call_000_13fa                               ; $1221: $cd $fa $13
	ret                                              ; $1224: $c9


jr_000_1225:
	ld a, $02                                        ; $1225: $3e $02
	ldh [$e1], a                                     ; $1227: $e0 $e1
	ld hl, $9d08                                     ; $1229: $21 $08 $9d
	ld b, $2f                                        ; $122c: $06 $2f
	call Call_000_19ff                               ; $122e: $cd $ff $19
	ld hl, $9d09                                     ; $1231: $21 $09 $9d
	call Call_000_19ff                               ; $1234: $cd $ff $19
	ld hl, $9d28                                     ; $1237: $21 $28 $9d
	call Call_000_19ff                               ; $123a: $cd $ff $19
	ld hl, $9d29                                     ; $123d: $21 $29 $9d
	call Call_000_19ff                               ; $1240: $cd $ff $19
	ret                                              ; $1243: $c9


	ldh a, [$a6]                                     ; $1244: $f0 $a6
	and a                                            ; $1246: $a7
	jr nz, jr_000_1277                               ; $1247: $20 $2e

	ld a, $0a                                        ; $1249: $3e $0a
	ldh [$a6], a                                     ; $124b: $e0 $a6
	ld hl, $c201                                     ; $124d: $21 $01 $c2
	dec [hl]                                         ; $1250: $35
	ld a, [hl]                                       ; $1251: $7e
	cp $58                                           ; $1252: $fe $58
	jr nz, jr_000_1277                               ; $1254: $20 $21

	ld hl, $c210                                     ; $1256: $21 $10 $c2
	ld [hl], $00                                     ; $1259: $36 $00
	inc l                                            ; $125b: $2c
	add $20                                          ; $125c: $c6 $20
	ld [hl+], a                                      ; $125e: $22
	ld [hl], $4c                                     ; $125f: $36 $4c
	inc l                                            ; $1261: $2c
	ld [hl], $40                                     ; $1262: $36 $40
	ld l, $20                                        ; $1264: $2e $20
	ld [hl], $80                                     ; $1266: $36 $80
	ld a, $03                                        ; $1268: $3e $03
	call Call_000_2673                               ; $126a: $cd $73 $26
	ld a, $03                                        ; $126d: $3e $03
	ldh [$e1], a                                     ; $126f: $e0 $e1
	ld a, $04                                        ; $1271: $3e $04
	ld [$dff8], a                                    ; $1273: $ea $f8 $df
	ret                                              ; $1276: $c9


jr_000_1277:
	call Call_000_13fa                               ; $1277: $cd $fa $13
	ret                                              ; $127a: $c9


	ldh a, [$a6]                                     ; $127b: $f0 $a6
	and a                                            ; $127d: $a7
	jr nz, jr_000_129d                               ; $127e: $20 $1d

	ld a, $0a                                        ; $1280: $3e $0a
	ldh [$a6], a                                     ; $1282: $e0 $a6
	ld hl, $c211                                     ; $1284: $21 $11 $c2
	dec [hl]                                         ; $1287: $35
	ld l, $01                                        ; $1288: $2e $01
	dec [hl]                                         ; $128a: $35
	ld a, [hl]                                       ; $128b: $7e
	cp $d0                                           ; $128c: $fe $d0
	jr nz, jr_000_129d                               ; $128e: $20 $0d

	ld a, $9c                                        ; $1290: $3e $9c
	ldh [$c9], a                                     ; $1292: $e0 $c9
	ld a, $82                                        ; $1294: $3e $82
	ldh [$ca], a                                     ; $1296: $e0 $ca
	ld a, $2c                                        ; $1298: $3e $2c
	ldh [$e1], a                                     ; $129a: $e0 $e1
	ret                                              ; $129c: $c9


jr_000_129d:
	ldh a, [$a7]                                     ; $129d: $f0 $a7
	and a                                            ; $129f: $a7
	jr nz, jr_000_12ad                               ; $12a0: $20 $0b

	ld a, $06                                        ; $12a2: $3e $06
	ldh [$a7], a                                     ; $12a4: $e0 $a7
	ld hl, $c213                                     ; $12a6: $21 $13 $c2
	ld a, [hl]                                       ; $12a9: $7e
	xor $01                                          ; $12aa: $ee $01
	ld [hl], a                                       ; $12ac: $77

jr_000_12ad:
	ld a, $03                                        ; $12ad: $3e $03
	call Call_000_2673                               ; $12af: $cd $73 $26
	ret                                              ; $12b2: $c9


	ldh a, [$a6]                                     ; $12b3: $f0 $a6
	and a                                            ; $12b5: $a7
	ret nz                                           ; $12b6: $c0

	ld a, $06                                        ; $12b7: $3e $06
	ldh [$a6], a                                     ; $12b9: $e0 $a6
	ldh a, [$ca]                                     ; $12bb: $f0 $ca
	sub $82                                          ; $12bd: $d6 $82
	ld e, a                                          ; $12bf: $5f
	ld d, $00                                        ; $12c0: $16 $00
	ld hl, $12f5                                     ; $12c2: $21 $f5 $12
	add hl, de                                       ; $12c5: $19
	push hl                                          ; $12c6: $e5
	pop de                                           ; $12c7: $d1
	ldh a, [$c9]                                     ; $12c8: $f0 $c9
	ld h, a                                          ; $12ca: $67
	ldh a, [$ca]                                     ; $12cb: $f0 $ca
	ld l, a                                          ; $12cd: $6f
	ld a, [de]                                       ; $12ce: $1a
	call Call_000_19fe                               ; $12cf: $cd $fe $19
	push hl                                          ; $12d2: $e5
	ld de, $0020                                     ; $12d3: $11 $20 $00
	add hl, de                                       ; $12d6: $19
	ld b, $b6                                        ; $12d7: $06 $b6
	call Call_000_19ff                               ; $12d9: $cd $ff $19
	pop hl                                           ; $12dc: $e1
	inc hl                                           ; $12dd: $23
	ld a, $02                                        ; $12de: $3e $02
	ld [$dfe0], a                                    ; $12e0: $ea $e0 $df
	ld a, h                                          ; $12e3: $7c
	ldh [$c9], a                                     ; $12e4: $e0 $c9
	ld a, l                                          ; $12e6: $7d
	ldh [$ca], a                                     ; $12e7: $e0 $ca
	cp $92                                           ; $12e9: $fe $92
	ret nz                                           ; $12eb: $c0

	ld a, $ff                                        ; $12ec: $3e $ff
	ldh [$a6], a                                     ; $12ee: $e0 $a6
	ld a, $2d                                        ; $12f0: $3e $2d
	ldh [$e1], a                                     ; $12f2: $e0 $e1
	ret                                              ; $12f4: $c9


	DB $b3, $bc, $3d, $be, $bb, $b5, $1d, $b2, $bd, $b5, $1d, $2e, $bc, $3d, $0e, $3e

	ldh a, [$a6]                                     ; $1305: $f0 $a6
	and a                                            ; $1307: $a7
	ret nz                                           ; $1308: $c0

	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $1309: $cd $20 $28
	call Screen_memory_update                        ; $130c: $cd $ad $27
	call Call_000_2293                               ; $130f: $cd $93 $22
	ld a, $93                                        ; $1312: $3e $93
	ldh [rLCDC], a                                   ; $1314: $e0 $40
	ld a, $05                                        ; $1316: $3e $05
	ldh [$e1], a                                     ; $1318: $e0 $e1
	ret                                              ; $131a: $c9


	ldh a, [$a6]                                     ; $131b: $f0 $a6
	and a                                            ; $131d: $a7
	ret nz                                           ; $131e: $c0

	ld a, $2e                                        ; $131f: $3e $2e
	ldh [$e1], a                                     ; $1321: $e0 $e1
	ret                                              ; $1323: $c9


	call Call_000_11b2                               ; $1324: $cd $b2 $11
	ld de, $2783                                     ; $1327: $11 $83 $27
	ld hl, $c200                                     ; $132a: $21 $00 $c2
	ld c, $03                                        ; $132d: $0e $03
	call Call_000_1776                               ; $132f: $cd $76 $17
	ldh a, [$f3]                                     ; $1332: $f0 $f3
	ld [$c203], a                                    ; $1334: $ea $03 $c2
	ld a, $03                                        ; $1337: $3e $03
	call Call_000_2673                               ; $1339: $cd $73 $26
	xor a                                            ; $133c: $af
	ldh [$f3], a                                     ; $133d: $e0 $f3
	ld a, $db                                        ; $133f: $3e $db
	ldh [rLCDC], a                                   ; $1341: $e0 $40
	ld a, $bb                                        ; $1343: $3e $bb
	ldh [$a6], a                                     ; $1345: $e0 $a6
	ld a, $2f                                        ; $1347: $3e $2f
	ldh [$e1], a                                     ; $1349: $e0 $e1
	ld a, $10                                        ; $134b: $3e $10
	ld [$dfe8], a                                    ; $134d: $ea $e8 $df
	ret                                              ; $1350: $c9


	ldh a, [$a6]                                     ; $1351: $f0 $a6
	and a                                            ; $1353: $a7
	ret nz                                           ; $1354: $c0

	ld hl, $c210                                     ; $1355: $21 $10 $c2
	ld [hl], $00                                     ; $1358: $36 $00
	ld l, $20                                        ; $135a: $2e $20
	ld [hl], $00                                     ; $135c: $36 $00
	ld a, $a0                                        ; $135e: $3e $a0
	ldh [$a6], a                                     ; $1360: $e0 $a6
	ld a, $30                                        ; $1362: $3e $30
	ldh [$e1], a                                     ; $1364: $e0 $e1
	ret                                              ; $1366: $c9


	ldh a, [$a6]                                     ; $1367: $f0 $a6
	and a                                            ; $1369: $a7
	jr z, jr_000_1370                                ; $136a: $28 $04

	call Call_000_13fa                               ; $136c: $cd $fa $13
	ret                                              ; $136f: $c9


jr_000_1370:
	ld a, $31                                        ; $1370: $3e $31
	ldh [$e1], a                                     ; $1372: $e0 $e1
	ld a, $80                                        ; $1374: $3e $80
	ldh [$a6], a                                     ; $1376: $e0 $a6
	ld a, $2f                                        ; $1378: $3e $2f
	call Call_000_1fd7                               ; $137a: $cd $d7 $1f
	ret                                              ; $137d: $c9


	ldh a, [$a6]                                     ; $137e: $f0 $a6
	and a                                            ; $1380: $a7
	jr nz, jr_000_13b1                               ; $1381: $20 $2e

	ld a, $0a                                        ; $1383: $3e $0a
	ldh [$a6], a                                     ; $1385: $e0 $a6
	ld hl, $c201                                     ; $1387: $21 $01 $c2
	dec [hl]                                         ; $138a: $35
	ld a, [hl]                                       ; $138b: $7e
	cp $6a                                           ; $138c: $fe $6a
	jr nz, jr_000_13b1                               ; $138e: $20 $21

	ld hl, $c210                                     ; $1390: $21 $10 $c2
	ld [hl], $00                                     ; $1393: $36 $00
	inc l                                            ; $1395: $2c
	add $10                                          ; $1396: $c6 $10
	ld [hl+], a                                      ; $1398: $22
	ld [hl], $54                                     ; $1399: $36 $54
	inc l                                            ; $139b: $2c
	ld [hl], $5c                                     ; $139c: $36 $5c
	ld l, $20                                        ; $139e: $2e $20
	ld [hl], $80                                     ; $13a0: $36 $80
	ld a, $03                                        ; $13a2: $3e $03
	call Call_000_2673                               ; $13a4: $cd $73 $26
	ld a, $32                                        ; $13a7: $3e $32
	ldh [$e1], a                                     ; $13a9: $e0 $e1
	ld a, $04                                        ; $13ab: $3e $04
	ld [$dff8], a                                    ; $13ad: $ea $f8 $df
	ret                                              ; $13b0: $c9


jr_000_13b1:
	call Call_000_13fa                               ; $13b1: $cd $fa $13
	ret                                              ; $13b4: $c9


	ldh a, [$a6]                                     ; $13b5: $f0 $a6
	and a                                            ; $13b7: $a7
	jr nz, jr_000_13cf                               ; $13b8: $20 $15

	ld a, $0a                                        ; $13ba: $3e $0a
	ldh [$a6], a                                     ; $13bc: $e0 $a6
	ld hl, $c211                                     ; $13be: $21 $11 $c2
	dec [hl]                                         ; $13c1: $35
	ld l, $01                                        ; $13c2: $2e $01
	dec [hl]                                         ; $13c4: $35
	ld a, [hl]                                       ; $13c5: $7e
	cp $e0                                           ; $13c6: $fe $e0
	jr nz, jr_000_13cf                               ; $13c8: $20 $05

	ld a, $33                                        ; $13ca: $3e $33
	ldh [$e1], a                                     ; $13cc: $e0 $e1
	ret                                              ; $13ce: $c9


jr_000_13cf:
	ldh a, [$a7]                                     ; $13cf: $f0 $a7
	and a                                            ; $13d1: $a7
	jr nz, jr_000_13df                               ; $13d2: $20 $0b

	ld a, $06                                        ; $13d4: $3e $06
	ldh [$a7], a                                     ; $13d6: $e0 $a7
	ld hl, $c213                                     ; $13d8: $21 $13 $c2
	ld a, [hl]                                       ; $13db: $7e
	xor $01                                          ; $13dc: $ee $01
	ld [hl], a                                       ; $13de: $77

jr_000_13df:
	ld a, $03                                        ; $13df: $3e $03
	call Call_000_2673                               ; $13e1: $cd $73 $26
	ret                                              ; $13e4: $c9


	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $13e5: $cd $20 $28
	call Screen_memory_update                        ; $13e8: $cd $ad $27
	call $7ff3                                       ; $13eb: $cd $f3 $7f
	call Call_000_2293                               ; $13ee: $cd $93 $22
	ld a, $93                                        ; $13f1: $3e $93
	ldh [rLCDC], a                                   ; $13f3: $e0 $40
	ld a, $10                                        ; $13f5: $3e $10
	ldh [$e1], a                                     ; $13f7: $e0 $e1
	ret                                              ; $13f9: $c9


Call_000_13fa:
	ldh a, [$a7]                                     ; $13fa: $f0 $a7
	and a                                            ; $13fc: $a7
	ret nz                                           ; $13fd: $c0

	ld a, $0a                                        ; $13fe: $3e $0a
	ldh [$a7], a                                     ; $1400: $e0 $a7
	ld a, $03                                        ; $1402: $3e $03
	ld [$dff8], a                                    ; $1404: $ea $f8 $df
	ld b, $02                                        ; $1407: $06 $02
	ld hl, $c210                                     ; $1409: $21 $10 $c2

jr_000_140c:
	ld a, [hl]                                       ; $140c: $7e
	xor $80                                          ; $140d: $ee $80
	ld [hl], a                                       ; $140f: $77
	ld l, $20                                        ; $1410: $2e $20
	dec b                                            ; $1412: $05
	jr nz, jr_000_140c                               ; $1413: $20 $f7

	ld a, $03                                        ; $1415: $3e $03
	call Call_000_2673                               ; $1417: $cd $73 $26
	ret                                              ; $141a: $c9


	DB $c2, $ca, $ca, $ca, $ca, $ca, $ca, $c3, $cb, $58, $48, $48, $48, $48, $c8, $73
	DB $73, $73, $73, $73, $73, $c9, $74, $74, $74, $74, $74, $74

Call_000_1437:
jr_000_1437:
	ld a, [de]                                       ; $1437: $1a
	ld [hl], a                                       ; $1438: $77
	inc de                                           ; $1439: $13
	push de                                          ; $143a: $d5
	ld de, $0020                                     ; $143b: $11 $20 $00
	add hl, de                                       ; $143e: $19
	pop de                                           ; $143f: $d1
	dec b                                            ; $1440: $05
	jr nz, jr_000_1437                               ; $1441: $20 $f4

	ret                                              ; $1443: $c9


Select_Game_and_Music_Type_screen::
	ld a, $01                                        ; $1444: $3e $01
	ldh [rIE], a                                     ; $1446: $e0 $ff
	xor a                                            ; $1448: $af
	ldh [rSB], a                                     ; $1449: $e0 $01
	ldh [rSC], a                                     ; $144b: $e0 $02
	ldh [rIF], a                                     ; $144d: $e0 $0f

Call_000_144f:
	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $144f: $cd $20 $28
	call Screen_memory_update                        ; $1452: $cd $ad $27
	ld de, Select_Game_and_Music_Type_Screen_20x18_chars; $1455: $11 $d7 $4c
	call Copy_a_screen_from_DE_to_screen_ram         ; $1458: $cd $eb $27
	call Zero_c000_c09f                              ; $145b: $cd $8a $17
	ld hl, $c200                                     ; $145e: $21 $00 $c2
	ld de, $26cf                                     ; $1461: $11 $cf $26
	ld c, $02                                        ; $1464: $0e $02
	call Call_000_1776                               ; $1466: $cd $76 $17
	ld de, $c201                                     ; $1469: $11 $01 $c2
	call Call_000_148d                               ; $146c: $cd $8d $14
	ldh a, [$c0]                                     ; $146f: $f0 $c0
	ld e, $12                                        ; $1471: $1e $12
	ld [de], a                                       ; $1473: $12
	inc de                                           ; $1474: $13
	cp $37                                           ; $1475: $fe $37
	ld a, $1c                                        ; $1477: $3e $1c
	jr z, jr_000_147d                                ; $1479: $28 $02

	ld a, $1d                                        ; $147b: $3e $1d

jr_000_147d:
	ld [de], a                                       ; $147d: $12
	call Call_000_2671                               ; $147e: $cd $71 $26
	call Call_000_1517                               ; $1481: $cd $17 $15
	ld a, $d3                                        ; $1484: $3e $d3
	ldh [rLCDC], a                                   ; $1486: $e0 $40
	ld a, $0e                                        ; $1488: $3e $0e
	ldh [$e1], a                                     ; $148a: $e0 $e1
	ret                                              ; $148c: $c9


Call_000_148d:
	ld a, $01                                        ; $148d: $3e $01
	ld [$dfe0], a                                    ; $148f: $ea $e0 $df

Call_000_1492:
	ldh a, [$c1]                                     ; $1492: $f0 $c1
	push af                                          ; $1494: $f5
	sub $1c                                          ; $1495: $d6 $1c
	add a                                            ; $1497: $87
	ld c, a                                          ; $1498: $4f
	ld b, $00                                        ; $1499: $06 $00
	ld hl, $14a8                                     ; $149b: $21 $a8 $14
	add hl, bc                                       ; $149e: $09
	ld a, [hl+]                                      ; $149f: $2a
	ld [de], a                                       ; $14a0: $12
	inc de                                           ; $14a1: $13
	ld a, [hl]                                       ; $14a2: $7e
	ld [de], a                                       ; $14a3: $12
	inc de                                           ; $14a4: $13
	pop af                                           ; $14a5: $f1
	ld [de], a                                       ; $14a6: $12
	ret                                              ; $14a7: $c9


	DB $70, $37, $70, $77, $80, $37, $80, $77

Call_000_14b0:
	ld de, $c200                                     ; $14b0: $11 $00 $c2
	call Call_000_1766                               ; $14b3: $cd $66 $17
	ld hl, $ffc1                                     ; $14b6: $21 $c1 $ff
	ld a, [hl]                                       ; $14b9: $7e
	bit 3, b                                         ; $14ba: $cb $58
	jp nz, Jump_000_1563                             ; $14bc: $c2 $63 $15

	bit 0, b                                         ; $14bf: $cb $40
	jp nz, Jump_000_1563                             ; $14c1: $c2 $63 $15

	bit 1, b                                         ; $14c4: $cb $48
	jr nz, jr_000_1509                               ; $14c6: $20 $41

jr_000_14c8:
	inc e                                            ; $14c8: $1c
	bit 4, b                                         ; $14c9: $cb $60
	jr nz, jr_000_14f3                               ; $14cb: $20 $26

	bit 5, b                                         ; $14cd: $cb $68
	jr nz, jr_000_14fe                               ; $14cf: $20 $2d

	bit 6, b                                         ; $14d1: $cb $70
	jr nz, jr_000_14eb                               ; $14d3: $20 $16

	bit 7, b                                         ; $14d5: $cb $78
	jp z, Jump_000_155f                              ; $14d7: $ca $5f $15

	cp $1e                                           ; $14da: $fe $1e
	jr nc, jr_000_14e7                               ; $14dc: $30 $09

	add $02                                          ; $14de: $c6 $02

jr_000_14e0:
	ld [hl], a                                       ; $14e0: $77
	call Call_000_148d                               ; $14e1: $cd $8d $14
	call Call_000_1517                               ; $14e4: $cd $17 $15

jr_000_14e7:
	call Call_000_2671                               ; $14e7: $cd $71 $26
	ret                                              ; $14ea: $c9


jr_000_14eb:
	cp $1e                                           ; $14eb: $fe $1e
	jr c, jr_000_14e7                                ; $14ed: $38 $f8

	sub $02                                          ; $14ef: $d6 $02
	jr jr_000_14e0                                   ; $14f1: $18 $ed

jr_000_14f3:
	cp $1d                                           ; $14f3: $fe $1d
	jr z, jr_000_14e7                                ; $14f5: $28 $f0

	cp $1f                                           ; $14f7: $fe $1f
	jr z, jr_000_14e7                                ; $14f9: $28 $ec

	inc a                                            ; $14fb: $3c
	jr jr_000_14e0                                   ; $14fc: $18 $e2

jr_000_14fe:
	cp $1c                                           ; $14fe: $fe $1c
	jr z, jr_000_14e7                                ; $1500: $28 $e5

	cp $1e                                           ; $1502: $fe $1e
	jr z, jr_000_14e7                                ; $1504: $28 $e1

	dec a                                            ; $1506: $3d
	jr jr_000_14e0                                   ; $1507: $18 $d7

jr_000_1509:
	push af                                          ; $1509: $f5
	ldh a, [$c5]                                     ; $150a: $f0 $c5
	and a                                            ; $150c: $a7
	jr z, jr_000_1512                                ; $150d: $28 $03

	pop af                                           ; $150f: $f1
	jr jr_000_14c8                                   ; $1510: $18 $b6

jr_000_1512:
	pop af                                           ; $1512: $f1
	ld a, $0e                                        ; $1513: $3e $0e
	jr jr_000_1572                                   ; $1515: $18 $5b

Call_000_1517:
	ldh a, [$c1]                                     ; $1517: $f0 $c1
	sub $17                                          ; $1519: $d6 $17
	cp $08                                           ; $151b: $fe $08
	jr nz, jr_000_1521                               ; $151d: $20 $02

	ld a, $ff                                        ; $151f: $3e $ff

jr_000_1521:
	ld [$dfe8], a                                    ; $1521: $ea $e8 $df
	ret                                              ; $1524: $c9


	ld de, $c210                                     ; $1525: $11 $10 $c2
	call Call_000_1766                               ; $1528: $cd $66 $17
	ld hl, $ffc0                                     ; $152b: $21 $c0 $ff
	ld a, [hl]                                       ; $152e: $7e
	bit 3, b                                         ; $152f: $cb $58
	jr nz, jr_000_1563                               ; $1531: $20 $30

	bit 0, b                                         ; $1533: $cb $40
	jr nz, jr_000_1577                               ; $1535: $20 $40

	inc e                                            ; $1537: $1c
	inc e                                            ; $1538: $1c
	bit 4, b                                         ; $1539: $cb $60
	jr nz, jr_000_154b                               ; $153b: $20 $0e

	bit 5, b                                         ; $153d: $cb $68
	jr z, jr_000_155f                                ; $153f: $28 $1e

	cp $37                                           ; $1541: $fe $37
	jr z, jr_000_155f                                ; $1543: $28 $1a

	ld a, $37                                        ; $1545: $3e $37
	ld b, $1c                                        ; $1547: $06 $1c
	jr jr_000_1553                                   ; $1549: $18 $08

jr_000_154b:
	cp $77                                           ; $154b: $fe $77
	jr z, jr_000_155f                                ; $154d: $28 $10

	ld a, $77                                        ; $154f: $3e $77
	ld b, $1d                                        ; $1551: $06 $1d

jr_000_1553:
	ld [hl], a                                       ; $1553: $77
	push af                                          ; $1554: $f5
	ld a, $01                                        ; $1555: $3e $01
	ld [$dfe0], a                                    ; $1557: $ea $e0 $df
	pop af                                           ; $155a: $f1
	ld [de], a                                       ; $155b: $12
	inc de                                           ; $155c: $13
	ld a, b                                          ; $155d: $78

jr_000_155e:
	ld [de], a                                       ; $155e: $12

Jump_000_155f:
jr_000_155f:
	call Call_000_2671                               ; $155f: $cd $71 $26
	ret                                              ; $1562: $c9


Jump_000_1563:
jr_000_1563:
	ld a, $02                                        ; $1563: $3e $02
	ld [$dfe0], a                                    ; $1565: $ea $e0 $df
	ldh a, [$c0]                                     ; $1568: $f0 $c0
	cp $37                                           ; $156a: $fe $37
	ld a, $10                                        ; $156c: $3e $10
	jr z, jr_000_1572                                ; $156e: $28 $02

	ld a, $12                                        ; $1570: $3e $12

jr_000_1572:
	ldh [$e1], a                                     ; $1572: $e0 $e1
	xor a                                            ; $1574: $af
	jr jr_000_155e                                   ; $1575: $18 $e7

jr_000_1577:
	ld a, $0f                                        ; $1577: $3e $0f
	jr jr_000_1572                                   ; $1579: $18 $f7

Display_TypeA_Level_Select_Top_Score_screen::
	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $157b: $cd $20 $28
	ld de, TypeA_Select_Level__Top_Score_Screen_20x18_chars; $157e: $11 $3f $4e
	call Copy_a_screen_from_DE_to_screen_ram         ; $1581: $cd $eb $27
	call Call_000_18fc                               ; $1584: $cd $fc $18
	call Zero_c000_c09f                              ; $1587: $cd $8a $17
	ld hl, $c200                                     ; $158a: $21 $00 $c2
	ld de, $26db                                     ; $158d: $11 $db $26
	ld c, $01                                        ; $1590: $0e $01
	call Call_000_1776                               ; $1592: $cd $76 $17
	ld de, $c201                                     ; $1595: $11 $01 $c2
	ldh a, [$c2]                                     ; $1598: $f0 $c2
	ld hl, $1615                                     ; $159a: $21 $15 $16
	call Call_000_174e                               ; $159d: $cd $4e $17
	call Call_000_2671                               ; $15a0: $cd $71 $26
	call Call_000_1795                               ; $15a3: $cd $95 $17
	call Call_000_18ca                               ; $15a6: $cd $ca $18
	ld a, $d3                                        ; $15a9: $3e $d3
	ldh [rLCDC], a                                   ; $15ab: $e0 $40
	ld a, $11                                        ; $15ad: $3e $11
	ldh [$e1], a                                     ; $15af: $e0 $e1
	ldh a, [$c7]                                     ; $15b1: $f0 $c7
	and a                                            ; $15b3: $a7
	jr nz, jr_000_15ba                               ; $15b4: $20 $04

	call Call_000_1517                               ; $15b6: $cd $17 $15
	ret                                              ; $15b9: $c9


jr_000_15ba:
	ld a, $15                                        ; $15ba: $3e $15

jr_000_15bc:
	ldh [$e1], a                                     ; $15bc: $e0 $e1
	ret                                              ; $15be: $c9


	ld de, $c200                                     ; $15bf: $11 $00 $c2
	call Call_000_1766                               ; $15c2: $cd $66 $17
	ld hl, $ffc2                                     ; $15c5: $21 $c2 $ff
	ld a, $0a                                        ; $15c8: $3e $0a
	bit 3, b                                         ; $15ca: $cb $58
	jr nz, jr_000_15bc                               ; $15cc: $20 $ee

	bit 0, b                                         ; $15ce: $cb $40
	jr nz, jr_000_15bc                               ; $15d0: $20 $ea

	ld a, $08                                        ; $15d2: $3e $08
	bit 1, b                                         ; $15d4: $cb $48
	jr nz, jr_000_15bc                               ; $15d6: $20 $e4

	ld a, [hl]                                       ; $15d8: $7e
	bit 4, b                                         ; $15d9: $cb $60
	jr nz, jr_000_15f1                               ; $15db: $20 $14

	bit 5, b                                         ; $15dd: $cb $68
	jr nz, jr_000_1607                               ; $15df: $20 $26

	bit 6, b                                         ; $15e1: $cb $70
	jr nz, jr_000_160d                               ; $15e3: $20 $28

	bit 7, b                                         ; $15e5: $cb $78
	jr z, jr_000_1603                                ; $15e7: $28 $1a

	cp $05                                           ; $15e9: $fe $05
	jr nc, jr_000_1603                               ; $15eb: $30 $16

	add $05                                          ; $15ed: $c6 $05
	jr jr_000_15f6                                   ; $15ef: $18 $05

jr_000_15f1:
	cp $09                                           ; $15f1: $fe $09
	jr z, jr_000_1603                                ; $15f3: $28 $0e

	inc a                                            ; $15f5: $3c

jr_000_15f6:
	ld [hl], a                                       ; $15f6: $77
	ld de, $c201                                     ; $15f7: $11 $01 $c2
	ld hl, $1615                                     ; $15fa: $21 $15 $16
	call Call_000_174e                               ; $15fd: $cd $4e $17
	call Call_000_1795                               ; $1600: $cd $95 $17

jr_000_1603:
	call Call_000_2671                               ; $1603: $cd $71 $26
	ret                                              ; $1606: $c9


jr_000_1607:
	and a                                            ; $1607: $a7
	jr z, jr_000_1603                                ; $1608: $28 $f9

	dec a                                            ; $160a: $3d
	jr jr_000_15f6                                   ; $160b: $18 $e9

jr_000_160d:
	cp $05                                           ; $160d: $fe $05
	jr c, jr_000_1603                                ; $160f: $38 $f2

	sub $05                                          ; $1611: $d6 $05
	jr jr_000_15f6                                   ; $1613: $18 $e1

	DB $40, $30, $40, $40, $40, $50, $40, $60, $40, $70, $50, $30, $50, $40, $50, $50
	DB $50, $60, $50, $70

Display_TypeB_Level_Select_High_Top_Score_screen::
	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $1629: $cd $20 $28
	ld de, TypeB_Select_Level__High__Top_Score_Screen_20x18_chars; $162c: $11 $a7 $4f
	call Copy_a_screen_from_DE_to_screen_ram         ; $162f: $cd $eb $27
	call Zero_c000_c09f                              ; $1632: $cd $8a $17
	ld hl, $c200                                     ; $1635: $21 $00 $c2
	ld de, $26e1                                     ; $1638: $11 $e1 $26
	ld c, $02                                        ; $163b: $0e $02
	call Call_000_1776                               ; $163d: $cd $76 $17
	ld de, $c201                                     ; $1640: $11 $01 $c2
	ldh a, [$c3]                                     ; $1643: $f0 $c3
	ld hl, $16d2                                     ; $1645: $21 $d2 $16
	call Call_000_174e                               ; $1648: $cd $4e $17
	ld de, $c211                                     ; $164b: $11 $11 $c2
	ldh a, [$c4]                                     ; $164e: $f0 $c4
	ld hl, $1741                                     ; $1650: $21 $41 $17
	call Call_000_174e                               ; $1653: $cd $4e $17
	call Call_000_2671                               ; $1656: $cd $71 $26
	call Call_000_17af                               ; $1659: $cd $af $17
	call Call_000_18ca                               ; $165c: $cd $ca $18
	ld a, $d3                                        ; $165f: $3e $d3
	ldh [rLCDC], a                                   ; $1661: $e0 $40
	ld a, $13                                        ; $1663: $3e $13
	ldh [$e1], a                                     ; $1665: $e0 $e1
	ldh a, [$c7]                                     ; $1667: $f0 $c7
	and a                                            ; $1669: $a7
	jr nz, jr_000_1670                               ; $166a: $20 $04

	call Call_000_1517                               ; $166c: $cd $17 $15
	ret                                              ; $166f: $c9


jr_000_1670:
	ld a, $15                                        ; $1670: $3e $15
	ldh [$e1], a                                     ; $1672: $e0 $e1
	ret                                              ; $1674: $c9


jr_000_1675:
	ldh [$e1], a                                     ; $1675: $e0 $e1
	xor a                                            ; $1677: $af
	ld [de], a                                       ; $1678: $12
	ret                                              ; $1679: $c9


	ld de, $c200                                     ; $167a: $11 $00 $c2
	call Call_000_1766                               ; $167d: $cd $66 $17
	ld hl, $ffc3                                     ; $1680: $21 $c3 $ff
	ld a, $0a                                        ; $1683: $3e $0a
	bit 3, b                                         ; $1685: $cb $58
	jr nz, jr_000_1675                               ; $1687: $20 $ec

	ld a, $14                                        ; $1689: $3e $14
	bit 0, b                                         ; $168b: $cb $40
	jr nz, jr_000_1675                               ; $168d: $20 $e6

	ld a, $08                                        ; $168f: $3e $08
	bit 1, b                                         ; $1691: $cb $48
	jr nz, jr_000_1675                               ; $1693: $20 $e0

	ld a, [hl]                                       ; $1695: $7e
	bit 4, b                                         ; $1696: $cb $60
	jr nz, jr_000_16ae                               ; $1698: $20 $14

	bit 5, b                                         ; $169a: $cb $68
	jr nz, jr_000_16c4                               ; $169c: $20 $26

	bit 6, b                                         ; $169e: $cb $70
	jr nz, jr_000_16ca                               ; $16a0: $20 $28

	bit 7, b                                         ; $16a2: $cb $78
	jr z, jr_000_16c0                                ; $16a4: $28 $1a

	cp $05                                           ; $16a6: $fe $05
	jr nc, jr_000_16c0                               ; $16a8: $30 $16

	add $05                                          ; $16aa: $c6 $05
	jr jr_000_16b3                                   ; $16ac: $18 $05

jr_000_16ae:
	cp $09                                           ; $16ae: $fe $09
	jr z, jr_000_16c0                                ; $16b0: $28 $0e

	inc a                                            ; $16b2: $3c

jr_000_16b3:
	ld [hl], a                                       ; $16b3: $77
	ld de, $c201                                     ; $16b4: $11 $01 $c2
	ld hl, $16d2                                     ; $16b7: $21 $d2 $16
	call Call_000_174e                               ; $16ba: $cd $4e $17
	call Call_000_17af                               ; $16bd: $cd $af $17

jr_000_16c0:
	call Call_000_2671                               ; $16c0: $cd $71 $26
	ret                                              ; $16c3: $c9


jr_000_16c4:
	and a                                            ; $16c4: $a7
	jr z, jr_000_16c0                                ; $16c5: $28 $f9

	dec a                                            ; $16c7: $3d
	jr jr_000_16b3                                   ; $16c8: $18 $e9

jr_000_16ca:
	cp $05                                           ; $16ca: $fe $05
	jr c, jr_000_16c0                                ; $16cc: $38 $f2

	sub $05                                          ; $16ce: $d6 $05
	jr jr_000_16b3                                   ; $16d0: $18 $e1

	DB $40, $18, $40, $28, $40, $38, $40, $48, $40, $58, $50, $18, $50, $28, $50, $38
	DB $50, $48, $50, $58

jr_000_16e6:
	ldh [$e1], a                                     ; $16e6: $e0 $e1
	xor a                                            ; $16e8: $af
	ld [de], a                                       ; $16e9: $12
	ret                                              ; $16ea: $c9


	ld de, $c210                                     ; $16eb: $11 $10 $c2
	call Call_000_1766                               ; $16ee: $cd $66 $17
	ld hl, $ffc4                                     ; $16f1: $21 $c4 $ff
	ld a, $0a                                        ; $16f4: $3e $0a
	bit 3, b                                         ; $16f6: $cb $58
	jr nz, jr_000_16e6                               ; $16f8: $20 $ec

	bit 0, b                                         ; $16fa: $cb $40
	jr nz, jr_000_16e6                               ; $16fc: $20 $e8

	ld a, $13                                        ; $16fe: $3e $13
	bit 1, b                                         ; $1700: $cb $48
	jr nz, jr_000_16e6                               ; $1702: $20 $e2

	ld a, [hl]                                       ; $1704: $7e
	bit 4, b                                         ; $1705: $cb $60
	jr nz, jr_000_171d                               ; $1707: $20 $14

	bit 5, b                                         ; $1709: $cb $68
	jr nz, jr_000_1733                               ; $170b: $20 $26

	bit 6, b                                         ; $170d: $cb $70
	jr nz, jr_000_1739                               ; $170f: $20 $28

	bit 7, b                                         ; $1711: $cb $78
	jr z, jr_000_172f                                ; $1713: $28 $1a

	cp $03                                           ; $1715: $fe $03
	jr nc, jr_000_172f                               ; $1717: $30 $16

	add $03                                          ; $1719: $c6 $03
	jr jr_000_1722                                   ; $171b: $18 $05

jr_000_171d:
	cp $05                                           ; $171d: $fe $05
	jr z, jr_000_172f                                ; $171f: $28 $0e

	inc a                                            ; $1721: $3c

jr_000_1722:
	ld [hl], a                                       ; $1722: $77
	ld de, $c211                                     ; $1723: $11 $11 $c2
	ld hl, $1741                                     ; $1726: $21 $41 $17
	call Call_000_174e                               ; $1729: $cd $4e $17
	call Call_000_17af                               ; $172c: $cd $af $17

jr_000_172f:
	call Call_000_2671                               ; $172f: $cd $71 $26
	ret                                              ; $1732: $c9


jr_000_1733:
	and a                                            ; $1733: $a7
	jr z, jr_000_172f                                ; $1734: $28 $f9

	dec a                                            ; $1736: $3d
	jr jr_000_1722                                   ; $1737: $18 $e9

jr_000_1739:
	cp $03                                           ; $1739: $fe $03
	jr c, jr_000_172f                                ; $173b: $38 $f2

	sub $03                                          ; $173d: $d6 $03
	jr jr_000_1722                                   ; $173f: $18 $e1

	DB $40, $70, $40, $80, $40, $90, $50, $70, $50, $80, $50, $90, $00

Call_000_174e:
	push af                                          ; $174e: $f5
	ld a, $01                                        ; $174f: $3e $01
	ld [$dfe0], a                                    ; $1751: $ea $e0 $df
	pop af                                           ; $1754: $f1

Call_000_1755:
	push af                                          ; $1755: $f5
	add a                                            ; $1756: $87
	ld c, a                                          ; $1757: $4f
	ld b, $00                                        ; $1758: $06 $00
	add hl, bc                                       ; $175a: $09
	ld a, [hl+]                                      ; $175b: $2a
	ld [de], a                                       ; $175c: $12
	inc de                                           ; $175d: $13
	ld a, [hl]                                       ; $175e: $7e
	ld [de], a                                       ; $175f: $12
	inc de                                           ; $1760: $13
	pop af                                           ; $1761: $f1
	add $20                                          ; $1762: $c6 $20
	ld [de], a                                       ; $1764: $12
	ret                                              ; $1765: $c9


Call_000_1766:
	ldh a, [$81]                                     ; $1766: $f0 $81
	ld b, a                                          ; $1768: $47
	ldh a, [$a6]                                     ; $1769: $f0 $a6
	and a                                            ; $176b: $a7
	ret nz                                           ; $176c: $c0

	ld a, $10                                        ; $176d: $3e $10
	ldh [$a6], a                                     ; $176f: $e0 $a6
	ld a, [de]                                       ; $1771: $1a
	xor $80                                          ; $1772: $ee $80
	ld [de], a                                       ; $1774: $12
	ret                                              ; $1775: $c9


Call_000_1776:
jr_000_1776:
	push hl                                          ; $1776: $e5
	ld b, $06                                        ; $1777: $06 $06

jr_000_1779:
	ld a, [de]                                       ; $1779: $1a
	ld [hl+], a                                      ; $177a: $22
	inc de                                           ; $177b: $13
	dec b                                            ; $177c: $05
	jr nz, jr_000_1779                               ; $177d: $20 $fa

	pop hl                                           ; $177f: $e1
	ld a, $10                                        ; $1780: $3e $10
	add l                                            ; $1782: $85
	ld l, a                                          ; $1783: $6f
	dec c                                            ; $1784: $0d
	jr nz, jr_000_1776                               ; $1785: $20 $ef

	ld [hl], $80                                     ; $1787: $36 $80
	ret                                              ; $1789: $c9


Zero_c000_c09f::
	xor a                                            ; $178a: $af
	ld hl, $c000                                     ; $178b: $21 $00 $c0
	ld b, $a0                                        ; $178e: $06 $a0

jr_000_1790:
	ld [hl+], a                                      ; $1790: $22
	dec b                                            ; $1791: $05
	jr nz, jr_000_1790                               ; $1792: $20 $fc

	ret                                              ; $1794: $c9


Call_000_1795:
	call Call_000_18fc                               ; $1795: $cd $fc $18
	ldh a, [$c2]                                     ; $1798: $f0 $c2
	ld hl, $d654                                     ; $179a: $21 $54 $d6
	ld de, $001b                                     ; $179d: $11 $1b $00

jr_000_17a0:
	and a                                            ; $17a0: $a7
	jr z, jr_000_17a7                                ; $17a1: $28 $04

	dec a                                            ; $17a3: $3d
	add hl, de                                       ; $17a4: $19
	jr jr_000_17a0                                   ; $17a5: $18 $f9

jr_000_17a7:
	inc hl                                           ; $17a7: $23
	inc hl                                           ; $17a8: $23
	push hl                                          ; $17a9: $e5
	pop de                                           ; $17aa: $d1
	call Call_000_1800                               ; $17ab: $cd $00 $18
	ret                                              ; $17ae: $c9


Call_000_17af:
	call Call_000_18fc                               ; $17af: $cd $fc $18
	ldh a, [$c3]                                     ; $17b2: $f0 $c3
	ld hl, $d000                                     ; $17b4: $21 $00 $d0
	ld de, $00a2                                     ; $17b7: $11 $a2 $00

jr_000_17ba:
	and a                                            ; $17ba: $a7
	jr z, jr_000_17c1                                ; $17bb: $28 $04

	dec a                                            ; $17bd: $3d
	add hl, de                                       ; $17be: $19
	jr jr_000_17ba                                   ; $17bf: $18 $f9

jr_000_17c1:
	ldh a, [$c4]                                     ; $17c1: $f0 $c4
	ld de, $001b                                     ; $17c3: $11 $1b $00

jr_000_17c6:
	and a                                            ; $17c6: $a7
	jr z, jr_000_17cd                                ; $17c7: $28 $04

	dec a                                            ; $17c9: $3d
	add hl, de                                       ; $17ca: $19
	jr jr_000_17c6                                   ; $17cb: $18 $f9

jr_000_17cd:
	inc hl                                           ; $17cd: $23
	inc hl                                           ; $17ce: $23
	push hl                                          ; $17cf: $e5
	pop de                                           ; $17d0: $d1
	call Call_000_1800                               ; $17d1: $cd $00 $18
	ret                                              ; $17d4: $c9


Call_000_17d5:
	ld b, $03                                        ; $17d5: $06 $03

jr_000_17d7:
	ld a, [hl]                                       ; $17d7: $7e
	and $f0                                          ; $17d8: $e6 $f0
	jr nz, jr_000_17e7                               ; $17da: $20 $0b

	inc e                                            ; $17dc: $1c
	ld a, [hl-]                                      ; $17dd: $3a
	and $0f                                          ; $17de: $e6 $0f
	jr nz, jr_000_17f1                               ; $17e0: $20 $0f

	inc e                                            ; $17e2: $1c
	dec b                                            ; $17e3: $05
	jr nz, jr_000_17d7                               ; $17e4: $20 $f1

	ret                                              ; $17e6: $c9


jr_000_17e7:
	ld a, [hl]                                       ; $17e7: $7e
	and $f0                                          ; $17e8: $e6 $f0
	swap a                                           ; $17ea: $cb $37
	ld [de], a                                       ; $17ec: $12
	inc e                                            ; $17ed: $1c
	ld a, [hl-]                                      ; $17ee: $3a
	and $0f                                          ; $17ef: $e6 $0f

jr_000_17f1:
	ld [de], a                                       ; $17f1: $12
	inc e                                            ; $17f2: $1c
	dec b                                            ; $17f3: $05
	jr nz, jr_000_17e7                               ; $17f4: $20 $f1

	ret                                              ; $17f6: $c9


Call_000_17f7:
	ld b, $03                                        ; $17f7: $06 $03

Call_000_17f9:
jr_000_17f9:
	ld a, [hl-]                                      ; $17f9: $3a
	ld [de], a                                       ; $17fa: $12
	dec de                                           ; $17fb: $1b
	dec b                                            ; $17fc: $05
	jr nz, jr_000_17f9                               ; $17fd: $20 $fa

	ret                                              ; $17ff: $c9


Call_000_1800:
	ld a, d                                          ; $1800: $7a
	ldh [$fb], a                                     ; $1801: $e0 $fb
	ld a, e                                          ; $1803: $7b
	ldh [$fc], a                                     ; $1804: $e0 $fc
	ld c, $03                                        ; $1806: $0e $03

jr_000_1808:
	ld hl, $c0a2                                     ; $1808: $21 $a2 $c0
	push de                                          ; $180b: $d5
	ld b, $03                                        ; $180c: $06 $03

jr_000_180e:
	ld a, [de]                                       ; $180e: $1a
	sub [hl]                                         ; $180f: $96
	jr c, jr_000_1822                                ; $1810: $38 $10

	jr nz, jr_000_1819                               ; $1812: $20 $05

	dec l                                            ; $1814: $2d
	dec de                                           ; $1815: $1b
	dec b                                            ; $1816: $05
	jr nz, jr_000_180e                               ; $1817: $20 $f5

jr_000_1819:
	pop de                                           ; $1819: $d1
	inc de                                           ; $181a: $13
	inc de                                           ; $181b: $13
	inc de                                           ; $181c: $13
	dec c                                            ; $181d: $0d
	jr nz, jr_000_1808                               ; $181e: $20 $e8

	jr jr_000_1880                                   ; $1820: $18 $5e

jr_000_1822:
	pop de                                           ; $1822: $d1
	ldh a, [$fb]                                     ; $1823: $f0 $fb
	ld d, a                                          ; $1825: $57
	ldh a, [$fc]                                     ; $1826: $f0 $fc
	ld e, a                                          ; $1828: $5f
	push de                                          ; $1829: $d5
	push bc                                          ; $182a: $c5
	ld hl, $0006                                     ; $182b: $21 $06 $00
	add hl, de                                       ; $182e: $19
	push hl                                          ; $182f: $e5
	pop de                                           ; $1830: $d1
	dec hl                                           ; $1831: $2b
	dec hl                                           ; $1832: $2b
	dec hl                                           ; $1833: $2b

jr_000_1834:
	dec c                                            ; $1834: $0d
	jr z, jr_000_183c                                ; $1835: $28 $05

	call Call_000_17f7                               ; $1837: $cd $f7 $17
	jr jr_000_1834                                   ; $183a: $18 $f8

jr_000_183c:
	ld hl, $c0a2                                     ; $183c: $21 $a2 $c0
	ld b, $03                                        ; $183f: $06 $03

jr_000_1841:
	ld a, [hl-]                                      ; $1841: $3a
	ld [de], a                                       ; $1842: $12
	dec e                                            ; $1843: $1d
	dec b                                            ; $1844: $05
	jr nz, jr_000_1841                               ; $1845: $20 $fa

	pop bc                                           ; $1847: $c1
	pop de                                           ; $1848: $d1
	ld a, c                                          ; $1849: $79
	ldh [$c8], a                                     ; $184a: $e0 $c8
	ld hl, $0012                                     ; $184c: $21 $12 $00
	add hl, de                                       ; $184f: $19
	push hl                                          ; $1850: $e5
	ld de, $0006                                     ; $1851: $11 $06 $00
	add hl, de                                       ; $1854: $19
	push hl                                          ; $1855: $e5
	pop de                                           ; $1856: $d1
	pop hl                                           ; $1857: $e1

jr_000_1858:
	dec c                                            ; $1858: $0d
	jr z, jr_000_1862                                ; $1859: $28 $07

	ld b, $06                                        ; $185b: $06 $06
	call Call_000_17f9                               ; $185d: $cd $f9 $17
	jr jr_000_1858                                   ; $1860: $18 $f6

jr_000_1862:
	ld a, $60                                        ; $1862: $3e $60
	ld b, $05                                        ; $1864: $06 $05

jr_000_1866:
	ld [de], a                                       ; $1866: $12
	dec de                                           ; $1867: $1b
	dec b                                            ; $1868: $05
	jr nz, jr_000_1866                               ; $1869: $20 $fb

	ld a, $0a                                        ; $186b: $3e $0a
	ld [de], a                                       ; $186d: $12
	ld a, d                                          ; $186e: $7a
	ldh [$c9], a                                     ; $186f: $e0 $c9
	ld a, e                                          ; $1871: $7b
	ldh [$ca], a                                     ; $1872: $e0 $ca
	xor a                                            ; $1874: $af
	ldh [$9c], a                                     ; $1875: $e0 $9c
	ldh [$c6], a                                     ; $1877: $e0 $c6
	ld a, $01                                        ; $1879: $3e $01
	ld [$dfe8], a                                    ; $187b: $ea $e8 $df
	ldh [$c7], a                                     ; $187e: $e0 $c7

jr_000_1880:
	ld de, $c9ac                                     ; $1880: $11 $ac $c9
	ldh a, [$fb]                                     ; $1883: $f0 $fb
	ld h, a                                          ; $1885: $67
	ldh a, [$fc]                                     ; $1886: $f0 $fc
	ld l, a                                          ; $1888: $6f
	ld b, $03                                        ; $1889: $06 $03

jr_000_188b:
	push hl                                          ; $188b: $e5
	push de                                          ; $188c: $d5
	push bc                                          ; $188d: $c5
	call Call_000_17d5                               ; $188e: $cd $d5 $17
	pop bc                                           ; $1891: $c1
	pop de                                           ; $1892: $d1
	ld hl, $0020                                     ; $1893: $21 $20 $00
	add hl, de                                       ; $1896: $19
	push hl                                          ; $1897: $e5
	pop de                                           ; $1898: $d1
	pop hl                                           ; $1899: $e1
	push de                                          ; $189a: $d5
	ld de, $0003                                     ; $189b: $11 $03 $00
	add hl, de                                       ; $189e: $19
	pop de                                           ; $189f: $d1
	dec b                                            ; $18a0: $05
	jr nz, jr_000_188b                               ; $18a1: $20 $e8

	dec hl                                           ; $18a3: $2b
	dec hl                                           ; $18a4: $2b
	ld b, $03                                        ; $18a5: $06 $03
	ld de, $c9a4                                     ; $18a7: $11 $a4 $c9

jr_000_18aa:
	push de                                          ; $18aa: $d5
	ld c, $06                                        ; $18ab: $0e $06

jr_000_18ad:
	ld a, [hl+]                                      ; $18ad: $2a
	and a                                            ; $18ae: $a7
	jr z, jr_000_18b6                                ; $18af: $28 $05

	ld [de], a                                       ; $18b1: $12
	inc de                                           ; $18b2: $13
	dec c                                            ; $18b3: $0d
	jr nz, jr_000_18ad                               ; $18b4: $20 $f7

jr_000_18b6:
	pop de                                           ; $18b6: $d1
	push hl                                          ; $18b7: $e5
	ld hl, $0020                                     ; $18b8: $21 $20 $00
	add hl, de                                       ; $18bb: $19
	push hl                                          ; $18bc: $e5
	pop de                                           ; $18bd: $d1
	pop hl                                           ; $18be: $e1
	dec b                                            ; $18bf: $05
	jr nz, jr_000_18aa                               ; $18c0: $20 $e8

	call Call_000_2651                               ; $18c2: $cd $51 $26
	ld a, $01                                        ; $18c5: $3e $01
	ldh [$e8], a                                     ; $18c7: $e0 $e8
	ret                                              ; $18c9: $c9


Call_000_18ca:
	ldh a, [$e8]                                     ; $18ca: $f0 $e8
	and a                                            ; $18cc: $a7
	ret z                                            ; $18cd: $c8

	ld hl, $99a4                                     ; $18ce: $21 $a4 $99
	ld de, $c9a4                                     ; $18d1: $11 $a4 $c9
	ld c, $06                                        ; $18d4: $0e $06

jr_000_18d6:
	push hl                                          ; $18d6: $e5

jr_000_18d7:
	ld b, $06                                        ; $18d7: $06 $06

jr_000_18d9:
	ld a, [de]                                       ; $18d9: $1a
	ld [hl+], a                                      ; $18da: $22
	inc e                                            ; $18db: $1c
	dec b                                            ; $18dc: $05
	jr nz, jr_000_18d9                               ; $18dd: $20 $fa

	inc e                                            ; $18df: $1c
	inc l                                            ; $18e0: $2c
	inc e                                            ; $18e1: $1c
	inc l                                            ; $18e2: $2c
	dec c                                            ; $18e3: $0d
	jr z, jr_000_18f7                                ; $18e4: $28 $11

	bit 0, c                                         ; $18e6: $cb $41
	jr nz, jr_000_18d7                               ; $18e8: $20 $ed

	pop hl                                           ; $18ea: $e1
	ld de, $0020                                     ; $18eb: $11 $20 $00
	add hl, de                                       ; $18ee: $19
	push hl                                          ; $18ef: $e5
	pop de                                           ; $18f0: $d1
	ld a, $30                                        ; $18f1: $3e $30
	add d                                            ; $18f3: $82
	ld d, a                                          ; $18f4: $57
	jr jr_000_18d6                                   ; $18f5: $18 $df

jr_000_18f7:
	pop hl                                           ; $18f7: $e1
	xor a                                            ; $18f8: $af
	ldh [$e8], a                                     ; $18f9: $e0 $e8
	ret                                              ; $18fb: $c9


Call_000_18fc:
	ld hl, $c9a4                                     ; $18fc: $21 $a4 $c9
	ld de, $0020                                     ; $18ff: $11 $20 $00
	ld a, $60                                        ; $1902: $3e $60
	ld c, $03                                        ; $1904: $0e $03

jr_000_1906:
	ld b, $0e                                        ; $1906: $06 $0e
	push hl                                          ; $1908: $e5

jr_000_1909:
	ld [hl+], a                                      ; $1909: $22
	dec b                                            ; $190a: $05
	jr nz, jr_000_1909                               ; $190b: $20 $fc

	pop hl                                           ; $190d: $e1
	add hl, de                                       ; $190e: $19
	dec c                                            ; $190f: $0d
	jr nz, jr_000_1906                               ; $1910: $20 $f4

	ret                                              ; $1912: $c9


	ldh a, [$c8]                                     ; $1913: $f0 $c8
	ld hl, $99e4                                     ; $1915: $21 $e4 $99
	ld de, $ffe0                                     ; $1918: $11 $e0 $ff

jr_000_191b:
	dec a                                            ; $191b: $3d
	jr z, jr_000_1921                                ; $191c: $28 $03

	add hl, de                                       ; $191e: $19
	jr jr_000_191b                                   ; $191f: $18 $fa

jr_000_1921:
	ldh a, [$c6]                                     ; $1921: $f0 $c6
	ld e, a                                          ; $1923: $5f
	ld d, $00                                        ; $1924: $16 $00
	add hl, de                                       ; $1926: $19
	ldh a, [$c9]                                     ; $1927: $f0 $c9
	ld d, a                                          ; $1929: $57
	ldh a, [$ca]                                     ; $192a: $f0 $ca
	ld e, a                                          ; $192c: $5f
	ldh a, [$a6]                                     ; $192d: $f0 $a6
	and a                                            ; $192f: $a7
	jr nz, jr_000_1944                               ; $1930: $20 $12

	ld a, $07                                        ; $1932: $3e $07
	ldh [$a6], a                                     ; $1934: $e0 $a6
	ldh a, [$9c]                                     ; $1936: $f0 $9c
	xor $01                                          ; $1938: $ee $01
	ldh [$9c], a                                     ; $193a: $e0 $9c
	ld a, [de]                                       ; $193c: $1a
	jr z, jr_000_1941                                ; $193d: $28 $02

	ld a, $2f                                        ; $193f: $3e $2f

jr_000_1941:
	call Call_000_19fe                               ; $1941: $cd $fe $19

jr_000_1944:
	ldh a, [$81]                                     ; $1944: $f0 $81
	ld b, a                                          ; $1946: $47
	ldh a, [$80]                                     ; $1947: $f0 $80
	ld c, a                                          ; $1949: $4f
	ld a, $17                                        ; $194a: $3e $17
	bit 6, b                                         ; $194c: $cb $70
	jr nz, jr_000_1987                               ; $194e: $20 $37

	bit 6, c                                         ; $1950: $cb $71
	jr nz, jr_000_197f                               ; $1952: $20 $2b

	bit 7, b                                         ; $1954: $cb $78
	jr nz, jr_000_19b0                               ; $1956: $20 $58

	bit 7, c                                         ; $1958: $cb $79
	jr nz, jr_000_19a8                               ; $195a: $20 $4c

	bit 0, b                                         ; $195c: $cb $40
	jr nz, jr_000_19cc                               ; $195e: $20 $6c

	bit 1, b                                         ; $1960: $cb $48
	jp nz, Jump_000_19ee                             ; $1962: $c2 $ee $19

	bit 3, b                                         ; $1965: $cb $58
	ret z                                            ; $1967: $c8

jr_000_1968:
	ld a, [de]                                       ; $1968: $1a
	call Call_000_19fe                               ; $1969: $cd $fe $19
	call Call_000_1517                               ; $196c: $cd $17 $15
	xor a                                            ; $196f: $af
	ldh [$c7], a                                     ; $1970: $e0 $c7
	ldh a, [$c0]                                     ; $1972: $f0 $c0
	cp $37                                           ; $1974: $fe $37
	ld a, $11                                        ; $1976: $3e $11
	jr z, jr_000_197c                                ; $1978: $28 $02

	ld a, $13                                        ; $197a: $3e $13

jr_000_197c:
	ldh [$e1], a                                     ; $197c: $e0 $e1
	ret                                              ; $197e: $c9


jr_000_197f:
	ldh a, [$aa]                                     ; $197f: $f0 $aa
	dec a                                            ; $1981: $3d
	ldh [$aa], a                                     ; $1982: $e0 $aa
	ret nz                                           ; $1984: $c0

	ld a, $09                                        ; $1985: $3e $09

jr_000_1987:
	ldh [$aa], a                                     ; $1987: $e0 $aa
	ld b, $26                                        ; $1989: $06 $26
	ldh a, [$f4]                                     ; $198b: $f0 $f4
	and a                                            ; $198d: $a7
	jr z, jr_000_1992                                ; $198e: $28 $02

	ld b, $27                                        ; $1990: $06 $27

jr_000_1992:
	ld a, [de]                                       ; $1992: $1a
	cp b                                             ; $1993: $b8
	jr nz, jr_000_19a0                               ; $1994: $20 $0a

	ld a, $2e                                        ; $1996: $3e $2e

jr_000_1998:
	inc a                                            ; $1998: $3c

jr_000_1999:
	ld [de], a                                       ; $1999: $12
	ld a, $01                                        ; $199a: $3e $01
	ld [$dfe0], a                                    ; $199c: $ea $e0 $df
	ret                                              ; $199f: $c9


jr_000_19a0:
	cp $2f                                           ; $19a0: $fe $2f
	jr nz, jr_000_1998                               ; $19a2: $20 $f4

	ld a, $0a                                        ; $19a4: $3e $0a
	jr jr_000_1999                                   ; $19a6: $18 $f1

jr_000_19a8:
	ldh a, [$aa]                                     ; $19a8: $f0 $aa
	dec a                                            ; $19aa: $3d
	ldh [$aa], a                                     ; $19ab: $e0 $aa
	ret nz                                           ; $19ad: $c0

	ld a, $09                                        ; $19ae: $3e $09

jr_000_19b0:
	ldh [$aa], a                                     ; $19b0: $e0 $aa
	ld b, $26                                        ; $19b2: $06 $26
	ldh a, [$f4]                                     ; $19b4: $f0 $f4
	and a                                            ; $19b6: $a7
	jr z, jr_000_19bb                                ; $19b7: $28 $02

	ld b, $27                                        ; $19b9: $06 $27

jr_000_19bb:
	ld a, [de]                                       ; $19bb: $1a
	cp $0a                                           ; $19bc: $fe $0a
	jr nz, jr_000_19c5                               ; $19be: $20 $05

	ld a, $30                                        ; $19c0: $3e $30

jr_000_19c2:
	dec a                                            ; $19c2: $3d
	jr jr_000_1999                                   ; $19c3: $18 $d4

jr_000_19c5:
	cp $2f                                           ; $19c5: $fe $2f
	jr nz, jr_000_19c2                               ; $19c7: $20 $f9

	ld a, b                                          ; $19c9: $78
	jr jr_000_1999                                   ; $19ca: $18 $cd

jr_000_19cc:
	ld a, [de]                                       ; $19cc: $1a
	call Call_000_19fe                               ; $19cd: $cd $fe $19
	ld a, $02                                        ; $19d0: $3e $02
	ld [$dfe0], a                                    ; $19d2: $ea $e0 $df
	ldh a, [$c6]                                     ; $19d5: $f0 $c6
	inc a                                            ; $19d7: $3c
	cp $06                                           ; $19d8: $fe $06
	jr z, jr_000_1968                                ; $19da: $28 $8c

	ldh [$c6], a                                     ; $19dc: $e0 $c6
	inc de                                           ; $19de: $13
	ld a, [de]                                       ; $19df: $1a
	cp $60                                           ; $19e0: $fe $60
	jr nz, jr_000_19e7                               ; $19e2: $20 $03

	ld a, $0a                                        ; $19e4: $3e $0a
	ld [de], a                                       ; $19e6: $12

jr_000_19e7:
	ld a, d                                          ; $19e7: $7a
	ldh [$c9], a                                     ; $19e8: $e0 $c9
	ld a, e                                          ; $19ea: $7b
	ldh [$ca], a                                     ; $19eb: $e0 $ca
	ret                                              ; $19ed: $c9


Jump_000_19ee:
	ldh a, [$c6]                                     ; $19ee: $f0 $c6
	and a                                            ; $19f0: $a7
	ret z                                            ; $19f1: $c8

	ld a, [de]                                       ; $19f2: $1a
	call Call_000_19fe                               ; $19f3: $cd $fe $19
	ldh a, [$c6]                                     ; $19f6: $f0 $c6
	dec a                                            ; $19f8: $3d
	ldh [$c6], a                                     ; $19f9: $e0 $c6
	dec de                                           ; $19fb: $1b
	jr jr_000_19e7                                   ; $19fc: $18 $e9

Call_000_19fe:
	ld b, a                                          ; $19fe: $47

Call_000_19ff:
jr_000_19ff:
	ldh a, [rSTAT]                                   ; $19ff: $f0 $41
	and $03                                          ; $1a01: $e6 $03
	jr nz, jr_000_19ff                               ; $1a03: $20 $fa

	ld [hl], b                                       ; $1a05: $70
	ret                                              ; $1a06: $c9


Display_Falling_Blocks_screen::
	call Prepare_for_screen_memory_update_by_halting_LCD_controller; $1a07: $cd $20 $28
	xor a                                            ; $1a0a: $af
	ld [$c210], a                                    ; $1a0b: $ea $10 $c2
	ldh [$98], a                                     ; $1a0e: $e0 $98
	ldh [$9c], a                                     ; $1a10: $e0 $9c
	ldh [$9b], a                                     ; $1a12: $e0 $9b
	ldh [$fb], a                                     ; $1a14: $e0 $fb
	ldh [$9f], a                                     ; $1a16: $e0 $9f
	ld a, $2f                                        ; $1a18: $3e $2f
	call Call_000_1fd7                               ; $1a1a: $cd $d7 $1f
	call Call_000_1ff2                               ; $1a1d: $cd $f2 $1f
	call Call_000_2651                               ; $1a20: $cd $51 $26
	xor a                                            ; $1a23: $af
	ldh [$e3], a                                     ; $1a24: $e0 $e3
	call Zero_c000_c09f                              ; $1a26: $cd $8a $17
	ldh a, [$c0]                                     ; $1a29: $f0 $c0
	ld de, TypeB_Falling_Blocks_Screen_20x18_chars   ; $1a2b: $11 $f7 $3f
	ld hl, $ffc3                                     ; $1a2e: $21 $c3 $ff
	cp $77                                           ; $1a31: $fe $77
	ld a, $50                                        ; $1a33: $3e $50
	jr z, jr_000_1a3f                                ; $1a35: $28 $08

	ld a, $f1                                        ; $1a37: $3e $f1
	ld hl, $ffc2                                     ; $1a39: $21 $c2 $ff
	ld de, TypeA_Falling_Blocks_Screen_20x18_chars   ; $1a3c: $11 $8f $3e

jr_000_1a3f:
	push de                                          ; $1a3f: $d5
	ldh [$e6], a                                     ; $1a40: $e0 $e6
	ld a, [hl]                                       ; $1a42: $7e
	ldh [$a9], a                                     ; $1a43: $e0 $a9
	call Copy_a_screen_from_DE_to_screen_ram         ; $1a45: $cd $eb $27
	pop de                                           ; $1a48: $d1
	ld hl, $9c00                                     ; $1a49: $21 $00 $9c
	call Call_000_27ee                               ; $1a4c: $cd $ee $27
	ld de, $2839                                     ; $1a4f: $11 $39 $28
	ld hl, $9c63                                     ; $1a52: $21 $63 $9c
	ld c, $0a                                        ; $1a55: $0e $0a
	call Call_000_1f7d                               ; $1a57: $cd $7d $1f
	ld h, $98                                        ; $1a5a: $26 $98
	ldh a, [$e6]                                     ; $1a5c: $f0 $e6
	ld l, a                                          ; $1a5e: $6f
	ldh a, [$a9]                                     ; $1a5f: $f0 $a9
	ld [hl], a                                       ; $1a61: $77
	ld h, $9c                                        ; $1a62: $26 $9c
	ld [hl], a                                       ; $1a64: $77
	ldh a, [$f4]                                     ; $1a65: $f0 $f4
	and a                                            ; $1a67: $a7
	jr z, jr_000_1a71                                ; $1a68: $28 $07

	inc hl                                           ; $1a6a: $23
	ld [hl], $27                                     ; $1a6b: $36 $27
	ld h, $98                                        ; $1a6d: $26 $98
	ld [hl], $27                                     ; $1a6f: $36 $27

jr_000_1a71:
	ld hl, $c200                                     ; $1a71: $21 $00 $c2
	ld de, $26bf                                     ; $1a74: $11 $bf $26
	call Call_000_26b6                               ; $1a77: $cd $b6 $26
	ld hl, $c210                                     ; $1a7a: $21 $10 $c2
	ld de, $26c7                                     ; $1a7d: $11 $c7 $26
	call Call_000_26b6                               ; $1a80: $cd $b6 $26
	ld hl, $9951                                     ; $1a83: $21 $51 $99
	ldh a, [$c0]                                     ; $1a86: $f0 $c0
	cp $77                                           ; $1a88: $fe $77
	ld a, $25                                        ; $1a8a: $3e $25
	jr z, jr_000_1a8f                                ; $1a8c: $28 $01

	xor a                                            ; $1a8e: $af

jr_000_1a8f:
	ldh [$9e], a                                     ; $1a8f: $e0 $9e
	and $0f                                          ; $1a91: $e6 $0f
	ld [hl-], a                                      ; $1a93: $32
	jr z, jr_000_1a98                                ; $1a94: $28 $02

	ld [hl], $02                                     ; $1a96: $36 $02

jr_000_1a98:
	call Call_000_1ae8                               ; $1a98: $cd $e8 $1a
	ld a, [$c0de]                                    ; $1a9b: $fa $de $c0
	and a                                            ; $1a9e: $a7
	jr z, jr_000_1aa6                                ; $1a9f: $28 $05

	ld a, $80                                        ; $1aa1: $3e $80
	ld [$c210], a                                    ; $1aa3: $ea $10 $c2

jr_000_1aa6:
	call Call_000_2007                               ; $1aa6: $cd $07 $20
	call Call_000_2007                               ; $1aa9: $cd $07 $20
	call Call_000_2007                               ; $1aac: $cd $07 $20
	call Call_000_2683                               ; $1aaf: $cd $83 $26
	xor a                                            ; $1ab2: $af
	ldh [$a0], a                                     ; $1ab3: $e0 $a0
	ldh a, [$c0]                                     ; $1ab5: $f0 $c0
	cp $77                                           ; $1ab7: $fe $77
	jr nz, jr_000_1ae0                               ; $1ab9: $20 $25

	ld a, $34                                        ; $1abb: $3e $34
	ldh [$99], a                                     ; $1abd: $e0 $99
	ldh a, [$c4]                                     ; $1abf: $f0 $c4
	ld hl, $98b0                                     ; $1ac1: $21 $b0 $98
	ld [hl], a                                       ; $1ac4: $77
	ld h, $9c                                        ; $1ac5: $26 $9c
	ld [hl], a                                       ; $1ac7: $77
	and a                                            ; $1ac8: $a7
	jr z, jr_000_1ae0                                ; $1ac9: $28 $15

	ld b, a                                          ; $1acb: $47
	ldh a, [$e4]                                     ; $1acc: $f0 $e4
	and a                                            ; $1ace: $a7
	jr z, jr_000_1ad6                                ; $1acf: $28 $05

	call Call_000_1b1b                               ; $1ad1: $cd $1b $1b
	jr jr_000_1ae0                                   ; $1ad4: $18 $0a

jr_000_1ad6:
	ld a, b                                          ; $1ad6: $78
	ld de, $ffc0                                     ; $1ad7: $11 $c0 $ff
	ld hl, $9a02                                     ; $1ada: $21 $02 $9a
	call Call_000_1b68                               ; $1add: $cd $68 $1b

jr_000_1ae0:
	ld a, $d3                                        ; $1ae0: $3e $d3
	ldh [rLCDC], a                                   ; $1ae2: $e0 $40
	xor a                                            ; $1ae4: $af
	ldh [$e1], a                                     ; $1ae5: $e0 $e1
	ret                                              ; $1ae7: $c9


Call_000_1ae8:
	ldh a, [$a9]                                     ; $1ae8: $f0 $a9
	ld e, a                                          ; $1aea: $5f
	ldh a, [$f4]                                     ; $1aeb: $f0 $f4
	and a                                            ; $1aed: $a7
	jr z, jr_000_1afa                                ; $1aee: $28 $0a

	ld a, $0a                                        ; $1af0: $3e $0a
	add e                                            ; $1af2: $83
	cp $15                                           ; $1af3: $fe $15
	jr c, jr_000_1af9                                ; $1af5: $38 $02

	ld a, $14                                        ; $1af7: $3e $14

jr_000_1af9:
	ld e, a                                          ; $1af9: $5f

jr_000_1afa:
	ld hl, $1b06                                     ; $1afa: $21 $06 $1b
	ld d, $00                                        ; $1afd: $16 $00
	add hl, de                                       ; $1aff: $19
	ld a, [hl]                                       ; $1b00: $7e
	ldh [$99], a                                     ; $1b01: $e0 $99
	ldh [$9a], a                                     ; $1b03: $e0 $9a
	ret                                              ; $1b05: $c9


	DB $34, $30, $2c, $28, $24, $20, $1b, $15, $10, $0a, $09, $08, $07, $06, $05, $05
	DB $04, $04, $03, $03, $02

Call_000_1b1b:
	ld hl, $99c2                                     ; $1b1b: $21 $c2 $99
	ld de, $1b40                                     ; $1b1e: $11 $40 $1b
	ld c, $04                                        ; $1b21: $0e $04

jr_000_1b23:
	ld b, $0a                                        ; $1b23: $06 $0a
	push hl                                          ; $1b25: $e5

jr_000_1b26:
	ld a, [de]                                       ; $1b26: $1a
	ld [hl], a                                       ; $1b27: $77
	push hl                                          ; $1b28: $e5
	ld a, h                                          ; $1b29: $7c
	add $30                                          ; $1b2a: $c6 $30
	ld h, a                                          ; $1b2c: $67
	ld a, [de]                                       ; $1b2d: $1a
	ld [hl], a                                       ; $1b2e: $77
	pop hl                                           ; $1b2f: $e1
	inc l                                            ; $1b30: $2c
	inc de                                           ; $1b31: $13
	dec b                                            ; $1b32: $05
	jr nz, jr_000_1b26                               ; $1b33: $20 $f1

	pop hl                                           ; $1b35: $e1
	push de                                          ; $1b36: $d5
	ld de, $0020                                     ; $1b37: $11 $20 $00
	add hl, de                                       ; $1b3a: $19
	pop de                                           ; $1b3b: $d1
	dec c                                            ; $1b3c: $0d
	jr nz, jr_000_1b23                               ; $1b3d: $20 $e4

	ret                                              ; $1b3f: $c9


	DB $85, $2f, $82, $86, $83, $2f, $2f, $80, $82, $85, $2f, $82, $84, $82, $83, $2f
	DB $83, $2f, $87, $2f, $2f, $85, $2f, $83, $2f, $86, $82, $80, $81, $2f, $83, $2f
	DB $86, $83, $2f, $85, $2f, $85, $2f, $2f

Call_000_1b68:
	ld b, a                                          ; $1b68: $47

jr_000_1b69:
	dec b                                            ; $1b69: $05
	jr z, jr_000_1b6f                                ; $1b6a: $28 $03

	add hl, de                                       ; $1b6c: $19
	jr jr_000_1b69                                   ; $1b6d: $18 $fa

jr_000_1b6f:
	ldh a, [rDIV]                                    ; $1b6f: $f0 $04
	ld b, a                                          ; $1b71: $47

jr_000_1b72:
	ld a, $80                                        ; $1b72: $3e $80

jr_000_1b74:
	dec b                                            ; $1b74: $05
	jr z, jr_000_1b7f                                ; $1b75: $28 $08

	cp $80                                           ; $1b77: $fe $80
	jr nz, jr_000_1b72                               ; $1b79: $20 $f7

	ld a, $2f                                        ; $1b7b: $3e $2f
	jr jr_000_1b74                                   ; $1b7d: $18 $f5

jr_000_1b7f:
	cp $2f                                           ; $1b7f: $fe $2f
	jr z, jr_000_1b8b                                ; $1b81: $28 $08

	ldh a, [rDIV]                                    ; $1b83: $f0 $04
	and $07                                          ; $1b85: $e6 $07
	or $80                                           ; $1b87: $f6 $80
	jr jr_000_1b8d                                   ; $1b89: $18 $02

jr_000_1b8b:
	ldh [$a0], a                                     ; $1b8b: $e0 $a0

jr_000_1b8d:
	push af                                          ; $1b8d: $f5
	ld a, l                                          ; $1b8e: $7d
	and $0f                                          ; $1b8f: $e6 $0f
	cp $0b                                           ; $1b91: $fe $0b
	jr nz, jr_000_1ba0                               ; $1b93: $20 $0b

	ldh a, [$a0]                                     ; $1b95: $f0 $a0
	cp $2f                                           ; $1b97: $fe $2f
	jr z, jr_000_1ba0                                ; $1b99: $28 $05

	pop af                                           ; $1b9b: $f1
	ld a, $2f                                        ; $1b9c: $3e $2f
	jr jr_000_1ba1                                   ; $1b9e: $18 $01

jr_000_1ba0:
	pop af                                           ; $1ba0: $f1

jr_000_1ba1:
	ld [hl], a                                       ; $1ba1: $77
	push hl                                          ; $1ba2: $e5
	push af                                          ; $1ba3: $f5
	ldh a, [$c5]                                     ; $1ba4: $f0 $c5
	and a                                            ; $1ba6: $a7
	jr nz, jr_000_1bad                               ; $1ba7: $20 $04

	ld de, $3000                                     ; $1ba9: $11 $00 $30
	add hl, de                                       ; $1bac: $19

jr_000_1bad:
	pop af                                           ; $1bad: $f1
	ld [hl], a                                       ; $1bae: $77
	pop hl                                           ; $1baf: $e1
	inc hl                                           ; $1bb0: $23
	ld a, l                                          ; $1bb1: $7d
	and $0f                                          ; $1bb2: $e6 $0f
	cp $0c                                           ; $1bb4: $fe $0c
	jr nz, jr_000_1b6f                               ; $1bb6: $20 $b7

	xor a                                            ; $1bb8: $af
	ldh [$a0], a                                     ; $1bb9: $e0 $a0
	ld a, h                                          ; $1bbb: $7c
	and $0f                                          ; $1bbc: $e6 $0f
	cp $0a                                           ; $1bbe: $fe $0a
	jr z, jr_000_1bc8                                ; $1bc0: $28 $06

jr_000_1bc2:
	ld de, $0016                                     ; $1bc2: $11 $16 $00
	add hl, de                                       ; $1bc5: $19
	jr jr_000_1b6f                                   ; $1bc6: $18 $a7

jr_000_1bc8:
	ld a, l                                          ; $1bc8: $7d
	cp $2c                                           ; $1bc9: $fe $2c
	jr nz, jr_000_1bc2                               ; $1bcb: $20 $f5

	ret                                              ; $1bcd: $c9


	call Call_000_1c0d                               ; $1bce: $cd $0d $1c
	ldh a, [$ab]                                     ; $1bd1: $f0 $ab
	and a                                            ; $1bd3: $a7
	ret nz                                           ; $1bd4: $c0

	call Call_000_050c                               ; $1bd5: $cd $0c $05
	call Call_000_0542                               ; $1bd8: $cd $42 $05
	call Call_000_0583                               ; $1bdb: $cd $83 $05
	call Call_000_24bb                               ; $1bde: $cd $bb $24
	call Call_000_209c                               ; $1be1: $cd $9c $20
	call Call_000_213e                               ; $1be4: $cd $3e $21
	call Call_000_25a1                               ; $1be7: $cd $a1 $25
	call Call_000_224d                               ; $1bea: $cd $4d $22
	call Call_000_1f91                               ; $1bed: $cd $91 $1f
	call Call_000_05b3                               ; $1bf0: $cd $b3 $05
	ret                                              ; $1bf3: $c9


jr_000_1bf4:
	bit 2, a                                         ; $1bf4: $cb $57
	ret z                                            ; $1bf6: $c8

	ld a, [$c0de]                                    ; $1bf7: $fa $de $c0
	xor $01                                          ; $1bfa: $ee $01
	ld [$c0de], a                                    ; $1bfc: $ea $de $c0
	jr z, jr_000_1c0a                                ; $1bff: $28 $09

	ld a, $80                                        ; $1c01: $3e $80

jr_000_1c03:
	ld [$c210], a                                    ; $1c03: $ea $10 $c2
	call Call_000_2696                               ; $1c06: $cd $96 $26
	ret                                              ; $1c09: $c9


jr_000_1c0a:
	xor a                                            ; $1c0a: $af
	jr jr_000_1c03                                   ; $1c0b: $18 $f6

Call_000_1c0d:
	ldh a, [$80]                                     ; $1c0d: $f0 $80
	and $0f                                          ; $1c0f: $e6 $0f
	cp $0f                                           ; $1c11: $fe $0f
	jp z, Clear_Interrupt_Flag_and_Enable_Registers  ; $1c13: $ca $1b $02

	ldh a, [$e4]                                     ; $1c16: $f0 $e4
	and a                                            ; $1c18: $a7
	ret nz                                           ; $1c19: $c0

	ldh a, [$81]                                     ; $1c1a: $f0 $81
	bit 3, a                                         ; $1c1c: $cb $5f
	jr z, jr_000_1bf4                                ; $1c1e: $28 $d4

	ldh a, [$c5]                                     ; $1c20: $f0 $c5
	and a                                            ; $1c22: $a7
	jr nz, jr_000_1c6a                               ; $1c23: $20 $45

	ld hl, $ff40                                     ; $1c25: $21 $40 $ff
	ldh a, [$ab]                                     ; $1c28: $f0 $ab
	xor $01                                          ; $1c2a: $ee $01
	ldh [$ab], a                                     ; $1c2c: $e0 $ab
	jr z, jr_000_1c5a                                ; $1c2e: $28 $2a

	set 3, [hl]                                      ; $1c30: $cb $de
	ld a, $01                                        ; $1c32: $3e $01
	ld [$df7f], a                                    ; $1c34: $ea $7f $df
	ld hl, $994e                                     ; $1c37: $21 $4e $99
	ld de, $9d4e                                     ; $1c3a: $11 $4e $9d
	ld b, $04                                        ; $1c3d: $06 $04

jr_000_1c3f:
	ldh a, [rSTAT]                                   ; $1c3f: $f0 $41
	and $03                                          ; $1c41: $e6 $03
	jr nz, jr_000_1c3f                               ; $1c43: $20 $fa

	ld a, [hl+]                                      ; $1c45: $2a
	ld [de], a                                       ; $1c46: $12
	inc de                                           ; $1c47: $13
	dec b                                            ; $1c48: $05
	jr nz, jr_000_1c3f                               ; $1c49: $20 $f4

	ld a, $80                                        ; $1c4b: $3e $80

jr_000_1c4d:
	ld [$c210], a                                    ; $1c4d: $ea $10 $c2

jr_000_1c50:
	ld [$c200], a                                    ; $1c50: $ea $00 $c2
	call Call_000_2683                               ; $1c53: $cd $83 $26
	call Call_000_2696                               ; $1c56: $cd $96 $26
	ret                                              ; $1c59: $c9


jr_000_1c5a:
	res 3, [hl]                                      ; $1c5a: $cb $9e
	ld a, $02                                        ; $1c5c: $3e $02
	ld [$df7f], a                                    ; $1c5e: $ea $7f $df
	ld a, [$c0de]                                    ; $1c61: $fa $de $c0
	and a                                            ; $1c64: $a7
	jr z, jr_000_1c4d                                ; $1c65: $28 $e6

	xor a                                            ; $1c67: $af
	jr jr_000_1c50                                   ; $1c68: $18 $e6

jr_000_1c6a:
	ldh a, [$cb]                                     ; $1c6a: $f0 $cb
	cp $29                                           ; $1c6c: $fe $29
	ret nz                                           ; $1c6e: $c0

	ldh a, [$ab]                                     ; $1c6f: $f0 $ab
	xor $01                                          ; $1c71: $ee $01
	ldh [$ab], a                                     ; $1c73: $e0 $ab
	jr z, jr_000_1caa                                ; $1c75: $28 $33

	ld a, $01                                        ; $1c77: $3e $01
	ld [$df7f], a                                    ; $1c79: $ea $7f $df
	ldh a, [$d0]                                     ; $1c7c: $f0 $d0
	ldh [$f2], a                                     ; $1c7e: $e0 $f2
	ldh a, [$cf]                                     ; $1c80: $f0 $cf
	ldh [$f1], a                                     ; $1c82: $e0 $f1
	call Call_000_1ccb                               ; $1c84: $cd $cb $1c
	ret                                              ; $1c87: $c9


Call_000_1c88:
	ldh a, [$ab]                                     ; $1c88: $f0 $ab
	and a                                            ; $1c8a: $a7
	ret z                                            ; $1c8b: $c8

	ldh a, [$cc]                                     ; $1c8c: $f0 $cc
	jr z, jr_000_1cc9                                ; $1c8e: $28 $39

	xor a                                            ; $1c90: $af
	ldh [$cc], a                                     ; $1c91: $e0 $cc
	ldh a, [$cb]                                     ; $1c93: $f0 $cb
	cp $29                                           ; $1c95: $fe $29
	jr nz, jr_000_1ca1                               ; $1c97: $20 $08

	ld a, $94                                        ; $1c99: $3e $94
	ldh [$cf], a                                     ; $1c9b: $e0 $cf
	ldh [$ce], a                                     ; $1c9d: $e0 $ce
	pop hl                                           ; $1c9f: $e1
	ret                                              ; $1ca0: $c9


jr_000_1ca1:
	xor a                                            ; $1ca1: $af
	ldh [$cf], a                                     ; $1ca2: $e0 $cf
	ldh a, [$d0]                                     ; $1ca4: $f0 $d0
	cp $94                                           ; $1ca6: $fe $94
	jr z, jr_000_1cc9                                ; $1ca8: $28 $1f

jr_000_1caa:
	ldh a, [$f2]                                     ; $1caa: $f0 $f2
	ldh [$d0], a                                     ; $1cac: $e0 $d0
	ldh a, [$f1]                                     ; $1cae: $f0 $f1
	ldh [$cf], a                                     ; $1cb0: $e0 $cf
	ld a, $02                                        ; $1cb2: $3e $02
	ld [$df7f], a                                    ; $1cb4: $ea $7f $df
	xor a                                            ; $1cb7: $af
	ldh [$ab], a                                     ; $1cb8: $e0 $ab
	ld hl, $98ee                                     ; $1cba: $21 $ee $98
	ld b, $8e                                        ; $1cbd: $06 $8e
	ld c, $05                                        ; $1cbf: $0e $05

jr_000_1cc1:
	call Call_000_19ff                               ; $1cc1: $cd $ff $19
	inc l                                            ; $1cc4: $2c
	dec c                                            ; $1cc5: $0d
	jr nz, jr_000_1cc1                               ; $1cc6: $20 $f9

	ret                                              ; $1cc8: $c9


jr_000_1cc9:
	pop hl                                           ; $1cc9: $e1
	ret                                              ; $1cca: $c9


Call_000_1ccb:
	ld hl, $98ee                                     ; $1ccb: $21 $ee $98
	ld c, $05                                        ; $1cce: $0e $05
	ld de, $1cdd                                     ; $1cd0: $11 $dd $1c

jr_000_1cd3:
	ld a, [de]                                       ; $1cd3: $1a
	call Call_000_19fe                               ; $1cd4: $cd $fe $19
	inc de                                           ; $1cd7: $13
	inc l                                            ; $1cd8: $2c
	dec c                                            ; $1cd9: $0d
	jr nz, jr_000_1cd3                               ; $1cda: $20 $f7

	ret                                              ; $1cdc: $c9


	DB $19, $0a, $1e, $1c, $0e

	ld a, $80                                        ; $1ce2: $3e $80
	ld [$c200], a                                    ; $1ce4: $ea $00 $c2
	ld [$c210], a                                    ; $1ce7: $ea $10 $c2
	call Call_000_2683                               ; $1cea: $cd $83 $26
	call Call_000_2696                               ; $1ced: $cd $96 $26
	xor a                                            ; $1cf0: $af
	ldh [$98], a                                     ; $1cf1: $e0 $98
	ldh [$9c], a                                     ; $1cf3: $e0 $9c
	call Call_000_2293                               ; $1cf5: $cd $93 $22
	ld a, $87                                        ; $1cf8: $3e $87
	call Call_000_1fd7                               ; $1cfa: $cd $d7 $1f
	ld a, $46                                        ; $1cfd: $3e $46
	ldh [$a6], a                                     ; $1cff: $e0 $a6
	ld a, $0d                                        ; $1d01: $3e $0d
	ldh [$e1], a                                     ; $1d03: $e0 $e1
	ret                                              ; $1d05: $c9


	ldh a, [$81]                                     ; $1d06: $f0 $81
	bit 0, a                                         ; $1d08: $cb $47
	jr nz, jr_000_1d0f                               ; $1d0a: $20 $03

	bit 3, a                                         ; $1d0c: $cb $5f
	ret z                                            ; $1d0e: $c8

jr_000_1d0f:
	xor a                                            ; $1d0f: $af
	ldh [$e3], a                                     ; $1d10: $e0 $e3
	ldh a, [$c5]                                     ; $1d12: $f0 $c5
	and a                                            ; $1d14: $a7
	ld a, $16                                        ; $1d15: $3e $16
	jr nz, jr_000_1d23                               ; $1d17: $20 $0a

	ldh a, [$c0]                                     ; $1d19: $f0 $c0
	cp $37                                           ; $1d1b: $fe $37
	ld a, $10                                        ; $1d1d: $3e $10
	jr z, jr_000_1d23                                ; $1d1f: $28 $02

	ld a, $12                                        ; $1d21: $3e $12

jr_000_1d23:
	ldh [$e1], a                                     ; $1d23: $e0 $e1
	ret                                              ; $1d25: $c9


	ldh a, [$a6]                                     ; $1d26: $f0 $a6
	and a                                            ; $1d28: $a7
	ret nz                                           ; $1d29: $c0

	ld hl, $c802                                     ; $1d2a: $21 $02 $c8
	ld de, $2889                                     ; $1d2d: $11 $89 $28
	call Call_000_2804                               ; $1d30: $cd $04 $28
	ldh a, [$c3]                                     ; $1d33: $f0 $c3
	and a                                            ; $1d35: $a7
	jr z, jr_000_1d66                                ; $1d36: $28 $2e

	ld de, $0040                                     ; $1d38: $11 $40 $00
	ld hl, $c827                                     ; $1d3b: $21 $27 $c8
	call Call_000_1d84                               ; $1d3e: $cd $84 $1d
	ld de, $0100                                     ; $1d41: $11 $00 $01
	ld hl, $c887                                     ; $1d44: $21 $87 $c8
	call Call_000_1d84                               ; $1d47: $cd $84 $1d
	ld de, $0300                                     ; $1d4a: $11 $00 $03
	ld hl, $c8e7                                     ; $1d4d: $21 $e7 $c8
	call Call_000_1d84                               ; $1d50: $cd $84 $1d
	ld de, $1200                                     ; $1d53: $11 $00 $12
	ld hl, $c947                                     ; $1d56: $21 $47 $c9
	call Call_000_1d84                               ; $1d59: $cd $84 $1d
	ld hl, $c0a0                                     ; $1d5c: $21 $a0 $c0
	ld b, $03                                        ; $1d5f: $06 $03
	xor a                                            ; $1d61: $af

jr_000_1d62:
	ld [hl+], a                                      ; $1d62: $22
	dec b                                            ; $1d63: $05
	jr nz, jr_000_1d62                               ; $1d64: $20 $fc

jr_000_1d66:
	ld a, $80                                        ; $1d66: $3e $80
	ldh [$a6], a                                     ; $1d68: $e0 $a6
	ld a, $80                                        ; $1d6a: $3e $80
	ld [$c200], a                                    ; $1d6c: $ea $00 $c2
	ld [$c210], a                                    ; $1d6f: $ea $10 $c2
	call Call_000_2683                               ; $1d72: $cd $83 $26
	call Call_000_2696                               ; $1d75: $cd $96 $26
	call $7ff3                                       ; $1d78: $cd $f3 $7f
	ld a, $25                                        ; $1d7b: $3e $25
	ldh [$9e], a                                     ; $1d7d: $e0 $9e
	ld a, $0b                                        ; $1d7f: $3e $0b
	ldh [$e1], a                                     ; $1d81: $e0 $e1
	ret                                              ; $1d83: $c9


Call_000_1d84:
	push hl                                          ; $1d84: $e5
	ld hl, $c0a0                                     ; $1d85: $21 $a0 $c0
	ld b, $03                                        ; $1d88: $06 $03
	xor a                                            ; $1d8a: $af

jr_000_1d8b:
	ld [hl+], a                                      ; $1d8b: $22
	dec b                                            ; $1d8c: $05
	jr nz, jr_000_1d8b                               ; $1d8d: $20 $fc

	ldh a, [$c3]                                     ; $1d8f: $f0 $c3
	ld b, a                                          ; $1d91: $47
	inc b                                            ; $1d92: $04

jr_000_1d93:
	ld hl, $c0a0                                     ; $1d93: $21 $a0 $c0
	call Stop_counting_if_score_reaches_999999       ; $1d96: $cd $66 $01
	dec b                                            ; $1d99: $05
	jr nz, jr_000_1d93                               ; $1d9a: $20 $f7

	pop hl                                           ; $1d9c: $e1
	ld b, $03                                        ; $1d9d: $06 $03
	ld de, $c0a2                                     ; $1d9f: $11 $a2 $c0

jr_000_1da2:
	ld a, [de]                                       ; $1da2: $1a
	and $f0                                          ; $1da3: $e6 $f0
	jr nz, jr_000_1db1                               ; $1da5: $20 $0a

	ld a, [de]                                       ; $1da7: $1a
	and $0f                                          ; $1da8: $e6 $0f
	jr nz, jr_000_1db7                               ; $1daa: $20 $0b

	dec e                                            ; $1dac: $1d
	dec b                                            ; $1dad: $05
	jr nz, jr_000_1da2                               ; $1dae: $20 $f2

	ret                                              ; $1db0: $c9


jr_000_1db1:
	ld a, [de]                                       ; $1db1: $1a
	and $f0                                          ; $1db2: $e6 $f0
	swap a                                           ; $1db4: $cb $37
	ld [hl+], a                                      ; $1db6: $22

jr_000_1db7:
	ld a, [de]                                       ; $1db7: $1a
	and $0f                                          ; $1db8: $e6 $0f
	ld [hl+], a                                      ; $1dba: $22
	dec e                                            ; $1dbb: $1d
	dec b                                            ; $1dbc: $05
	jr nz, jr_000_1db1                               ; $1dbd: $20 $f2

	ret                                              ; $1dbf: $c9


	ldh a, [$a6]                                     ; $1dc0: $f0 $a6
	and a                                            ; $1dc2: $a7
	ret nz                                           ; $1dc3: $c0

	ld a, $01                                        ; $1dc4: $3e $01
	ld [$c0c6], a                                    ; $1dc6: $ea $c6 $c0
	ld a, $05                                        ; $1dc9: $3e $05
	ldh [$a6], a                                     ; $1dcb: $e0 $a6
	ret                                              ; $1dcd: $c9


	ldh a, [$a6]                                     ; $1dce: $f0 $a6
	and a                                            ; $1dd0: $a7
	ret nz                                           ; $1dd1: $c0

	ld hl, $c802                                     ; $1dd2: $21 $02 $c8
	ld de, $510f                                     ; $1dd5: $11 $0f $51
	call Call_000_2804                               ; $1dd8: $cd $04 $28
	call Zero_c000_c09f                              ; $1ddb: $cd $8a $17
	ld hl, $c200                                     ; $1dde: $21 $00 $c2
	ld de, $2735                                     ; $1de1: $11 $35 $27
	ld c, $0a                                        ; $1de4: $0e $0a
	call Call_000_1776                               ; $1de6: $cd $76 $17
	ld a, $10                                        ; $1de9: $3e $10
	ld hl, $c266                                     ; $1deb: $21 $66 $c2
	ld [hl], a                                       ; $1dee: $77
	ld l, $76                                        ; $1def: $2e $76
	ld [hl], a                                       ; $1df1: $77
	ld hl, $c20e                                     ; $1df2: $21 $0e $c2
	ld de, $1e31                                     ; $1df5: $11 $31 $1e
	ld b, $0a                                        ; $1df8: $06 $0a

jr_000_1dfa:
	ld a, [de]                                       ; $1dfa: $1a
	ld [hl+], a                                      ; $1dfb: $22
	ld [hl+], a                                      ; $1dfc: $22
	inc de                                           ; $1dfd: $13
	push de                                          ; $1dfe: $d5
	ld de, $000e                                     ; $1dff: $11 $0e $00
	add hl, de                                       ; $1e02: $19
	pop de                                           ; $1e03: $d1
	dec b                                            ; $1e04: $05
	jr nz, jr_000_1dfa                               ; $1e05: $20 $f3

	ldh a, [$c4]                                     ; $1e07: $f0 $c4
	cp $05                                           ; $1e09: $fe $05
	jr nz, jr_000_1e0f                               ; $1e0b: $20 $02

	ld a, $09                                        ; $1e0d: $3e $09

jr_000_1e0f:
	inc a                                            ; $1e0f: $3c
	ld b, a                                          ; $1e10: $47
	ld hl, $c200                                     ; $1e11: $21 $00 $c2
	ld de, $0010                                     ; $1e14: $11 $10 $00
	xor a                                            ; $1e17: $af

jr_000_1e18:
	ld [hl], a                                       ; $1e18: $77
	add hl, de                                       ; $1e19: $19
	dec b                                            ; $1e1a: $05
	jr nz, jr_000_1e18                               ; $1e1b: $20 $fb

	ldh a, [$c4]                                     ; $1e1d: $f0 $c4
	add $0a                                          ; $1e1f: $c6 $0a
	ld [$dfe8], a                                    ; $1e21: $ea $e8 $df
	ld a, $25                                        ; $1e24: $3e $25
	ldh [$9e], a                                     ; $1e26: $e0 $9e
	ld a, $1b                                        ; $1e28: $3e $1b
	ldh [$a6], a                                     ; $1e2a: $e0 $a6
	ld a, $23                                        ; $1e2c: $3e $23
	ldh [$e1], a                                     ; $1e2e: $e0 $e1
	ret                                              ; $1e30: $c9


	inc e                                            ; $1e31: $1c
	rrca                                             ; $1e32: $0f
	ld e, $32                                        ; $1e33: $1e $32
	jr nz, jr_000_1e4f                               ; $1e35: $20 $18

	ld h, $1d                                        ; $1e37: $26 $1d
	jr z, jr_000_1e66                                ; $1e39: $28 $2b

jr_000_1e3b:
	ld a, $0a                                        ; $1e3b: $3e $0a
	call Call_000_2673                               ; $1e3d: $cd $73 $26
	ret                                              ; $1e40: $c9


	ldh a, [$a6]                                     ; $1e41: $f0 $a6
	cp $14                                           ; $1e43: $fe $14
	jr z, jr_000_1e3b                                ; $1e45: $28 $f4

	and a                                            ; $1e47: $a7
	ret nz                                           ; $1e48: $c0

	ld hl, $c20e                                     ; $1e49: $21 $0e $c2
	ld de, $0010                                     ; $1e4c: $11 $10 $00

jr_000_1e4f:
	ld b, $0a                                        ; $1e4f: $06 $0a

jr_000_1e51:
	push hl                                          ; $1e51: $e5
	dec [hl]                                         ; $1e52: $35
	jr nz, jr_000_1e6a                               ; $1e53: $20 $15

	inc l                                            ; $1e55: $2c
	ld a, [hl-]                                      ; $1e56: $3a
	ld [hl], a                                       ; $1e57: $77
	ld a, l                                          ; $1e58: $7d
	and $f0                                          ; $1e59: $e6 $f0
	or $03                                           ; $1e5b: $f6 $03
	ld l, a                                          ; $1e5d: $6f
	ld a, [hl]                                       ; $1e5e: $7e
	xor $01                                          ; $1e5f: $ee $01
	ld [hl], a                                       ; $1e61: $77
	cp $50                                           ; $1e62: $fe $50
	jr z, jr_000_1e89                                ; $1e64: $28 $23

jr_000_1e66:
	cp $51                                           ; $1e66: $fe $51
	jr z, jr_000_1e8f                                ; $1e68: $28 $25

jr_000_1e6a:
	pop hl                                           ; $1e6a: $e1
	add hl, de                                       ; $1e6b: $19
	dec b                                            ; $1e6c: $05
	jr nz, jr_000_1e51                               ; $1e6d: $20 $e2

	ld a, $0a                                        ; $1e6f: $3e $0a
	call Call_000_2673                               ; $1e71: $cd $73 $26
	ld a, [$dfe9]                                    ; $1e74: $fa $e9 $df
	and a                                            ; $1e77: $a7
	ret nz                                           ; $1e78: $c0

	call Zero_c000_c09f                              ; $1e79: $cd $8a $17
	ldh a, [$c4]                                     ; $1e7c: $f0 $c4
	cp $05                                           ; $1e7e: $fe $05
	ld a, $26                                        ; $1e80: $3e $26
	jr z, jr_000_1e86                                ; $1e82: $28 $02

	ld a, $05                                        ; $1e84: $3e $05

jr_000_1e86:
	ldh [$e1], a                                     ; $1e86: $e0 $e1
	ret                                              ; $1e88: $c9


jr_000_1e89:
	dec l                                            ; $1e89: $2d
	dec l                                            ; $1e8a: $2d
	ld [hl], $67                                     ; $1e8b: $36 $67
	jr jr_000_1e6a                                   ; $1e8d: $18 $db

jr_000_1e8f:
	dec l                                            ; $1e8f: $2d
	dec l                                            ; $1e90: $2d
	ld [hl], $5d                                     ; $1e91: $36 $5d
	jr jr_000_1e6a                                   ; $1e93: $18 $d5

jr_000_1e95:
	xor a                                            ; $1e95: $af
	ld [$c0c6], a                                    ; $1e96: $ea $c6 $c0
	ld de, $c0c0                                     ; $1e99: $11 $c0 $c0
	ld a, [de]                                       ; $1e9c: $1a
	ld l, a                                          ; $1e9d: $6f
	inc de                                           ; $1e9e: $13
	ld a, [de]                                       ; $1e9f: $1a
	ld h, a                                          ; $1ea0: $67
	or l                                             ; $1ea1: $b5
	jp z, Jump_000_263a                              ; $1ea2: $ca $3a $26

	dec hl                                           ; $1ea5: $2b
	ld a, h                                          ; $1ea6: $7c
	ld [de], a                                       ; $1ea7: $12
	dec de                                           ; $1ea8: $1b
	ld a, l                                          ; $1ea9: $7d
	ld [de], a                                       ; $1eaa: $12
	ld de, $0001                                     ; $1eab: $11 $01 $00
	ld hl, $c0c2                                     ; $1eae: $21 $c2 $c0
	push de                                          ; $1eb1: $d5
	call Stop_counting_if_score_reaches_999999       ; $1eb2: $cd $66 $01
	ld de, $c0c4                                     ; $1eb5: $11 $c4 $c0
	ld hl, $99a5                                     ; $1eb8: $21 $a5 $99
	call Call_000_2a36                               ; $1ebb: $cd $36 $2a
	xor a                                            ; $1ebe: $af
	ldh [$a6], a                                     ; $1ebf: $e0 $a6
	pop de                                           ; $1ec1: $d1
	ld hl, $c0a0                                     ; $1ec2: $21 $a0 $c0
	call Stop_counting_if_score_reaches_999999       ; $1ec5: $cd $66 $01
	ld de, $c0a2                                     ; $1ec8: $11 $a2 $c0
	ld hl, $9a25                                     ; $1ecb: $21 $25 $9a
	call Call_000_2a3a                               ; $1ece: $cd $3a $2a
	ld a, $02                                        ; $1ed1: $3e $02
	ld [$dfe0], a                                    ; $1ed3: $ea $e0 $df
	ret                                              ; $1ed6: $c9


VBlank_proc_20::
	ld a, [$c0c6]                                    ; $1ed7: $fa $c6 $c0
	and a                                            ; $1eda: $a7
	ret z                                            ; $1edb: $c8

	ld a, [$c0c5]                                    ; $1edc: $fa $c5 $c0
	cp $04                                           ; $1edf: $fe $04
	jr z, jr_000_1e95                                ; $1ee1: $28 $b2

	ld de, $0040                                     ; $1ee3: $11 $40 $00
	ld bc, $9823                                     ; $1ee6: $01 $23 $98
	ld hl, $c0ac                                     ; $1ee9: $21 $ac $c0
	and a                                            ; $1eec: $a7
	jr z, jr_000_1f12                                ; $1eed: $28 $23

	ld de, $0100                                     ; $1eef: $11 $00 $01
	ld bc, $9883                                     ; $1ef2: $01 $83 $98
	ld hl, $c0b1                                     ; $1ef5: $21 $b1 $c0
	cp $01                                           ; $1ef8: $fe $01
	jr z, jr_000_1f12                                ; $1efa: $28 $16

	ld de, $0300                                     ; $1efc: $11 $00 $03
	ld bc, $98e3                                     ; $1eff: $01 $e3 $98
	ld hl, $c0b6                                     ; $1f02: $21 $b6 $c0
	cp $02                                           ; $1f05: $fe $02
	jr z, jr_000_1f12                                ; $1f07: $28 $09

	ld de, $1200                                     ; $1f09: $11 $00 $12
	ld bc, $9943                                     ; $1f0c: $01 $43 $99
	ld hl, $c0bb                                     ; $1f0f: $21 $bb $c0

jr_000_1f12:
	call Call_000_25d9                               ; $1f12: $cd $d9 $25
	ret                                              ; $1f15: $c9


	ldh a, [$81]                                     ; $1f16: $f0 $81
	and a                                            ; $1f18: $a7
	ret z                                            ; $1f19: $c8

	ld a, $02                                        ; $1f1a: $3e $02
	ldh [$e1], a                                     ; $1f1c: $e0 $e1
	ret                                              ; $1f1e: $c9


	ldh a, [$a6]                                     ; $1f1f: $f0 $a6
	and a                                            ; $1f21: $a7
	ret nz                                           ; $1f22: $c0

	ld a, $04                                        ; $1f23: $3e $04
	ld [$dfe8], a                                    ; $1f25: $ea $e8 $df
	ldh a, [$c5]                                     ; $1f28: $f0 $c5
	and a                                            ; $1f2a: $a7
	jr z, jr_000_1f37                                ; $1f2b: $28 $0a

	ld a, $3f                                        ; $1f2d: $3e $3f
	ldh [$a6], a                                     ; $1f2f: $e0 $a6
	ld a, $1b                                        ; $1f31: $3e $1b
	ldh [$cc], a                                     ; $1f33: $e0 $cc
	jr jr_000_1f6e                                   ; $1f35: $18 $37

jr_000_1f37:
	ld a, $2f                                        ; $1f37: $3e $2f
	call Call_000_1fd7                               ; $1f39: $cd $d7 $1f
	ld hl, $c843                                     ; $1f3c: $21 $43 $c8
	ld de, $293e                                     ; $1f3f: $11 $3e $29
	ld c, $07                                        ; $1f42: $0e $07
	call Call_000_1f7d                               ; $1f44: $cd $7d $1f
	ld hl, $c983                                     ; $1f47: $21 $83 $c9
	ld de, $2976                                     ; $1f4a: $11 $76 $29
	ld c, $06                                        ; $1f4d: $0e $06
	call Call_000_1f7d                               ; $1f4f: $cd $7d $1f
	ldh a, [$c0]                                     ; $1f52: $f0 $c0
	cp $37                                           ; $1f54: $fe $37
	jr nz, jr_000_1f6c                               ; $1f56: $20 $14

	ld hl, $c0a2                                     ; $1f58: $21 $a2 $c0
	ld a, [hl]                                       ; $1f5b: $7e
	ld b, $58                                        ; $1f5c: $06 $58
	cp $20                                           ; $1f5e: $fe $20
	jr nc, jr_000_1f71                               ; $1f60: $30 $0f

	inc b                                            ; $1f62: $04
	cp $15                                           ; $1f63: $fe $15
	jr nc, jr_000_1f71                               ; $1f65: $30 $0a

	inc b                                            ; $1f67: $04
	cp $10                                           ; $1f68: $fe $10
	jr nc, jr_000_1f71                               ; $1f6a: $30 $05

jr_000_1f6c:
	ld a, $04                                        ; $1f6c: $3e $04

jr_000_1f6e:
	ldh [$e1], a                                     ; $1f6e: $e0 $e1
	ret                                              ; $1f70: $c9


jr_000_1f71:
	ld a, b                                          ; $1f71: $78
	ldh [$f3], a                                     ; $1f72: $e0 $f3
	ld a, $90                                        ; $1f74: $3e $90
	ldh [$a6], a                                     ; $1f76: $e0 $a6
	ld a, $34                                        ; $1f78: $3e $34
	ldh [$e1], a                                     ; $1f7a: $e0 $e1
	ret                                              ; $1f7c: $c9


Call_000_1f7d:
jr_000_1f7d:
	ld b, $08                                        ; $1f7d: $06 $08
	push hl                                          ; $1f7f: $e5

jr_000_1f80:
	ld a, [de]                                       ; $1f80: $1a
	ld [hl+], a                                      ; $1f81: $22
	inc de                                           ; $1f82: $13
	dec b                                            ; $1f83: $05
	jr nz, jr_000_1f80                               ; $1f84: $20 $fa

	pop hl                                           ; $1f86: $e1
	push de                                          ; $1f87: $d5
	ld de, $0020                                     ; $1f88: $11 $20 $00
	add hl, de                                       ; $1f8b: $19
	pop de                                           ; $1f8c: $d1
	dec c                                            ; $1f8d: $0d
	jr nz, jr_000_1f7d                               ; $1f8e: $20 $ed

	ret                                              ; $1f90: $c9


Call_000_1f91:
	ldh a, [$c0]                                     ; $1f91: $f0 $c0
	cp $37                                           ; $1f93: $fe $37
	ret nz                                           ; $1f95: $c0

	ldh a, [$e1]                                     ; $1f96: $f0 $e1
	and a                                            ; $1f98: $a7
	ret nz                                           ; $1f99: $c0

	ldh a, [$e3]                                     ; $1f9a: $f0 $e3
	cp $05                                           ; $1f9c: $fe $05
	ret nz                                           ; $1f9e: $c0

	ld hl, $c0ac                                     ; $1f9f: $21 $ac $c0
	ld bc, $0005                                     ; $1fa2: $01 $05 $00
	ld a, [hl]                                       ; $1fa5: $7e
	ld de, $0040                                     ; $1fa6: $11 $40 $00
	and a                                            ; $1fa9: $a7
	jr nz, jr_000_1fc3                               ; $1faa: $20 $17

	add hl, bc                                       ; $1fac: $09
	ld a, [hl]                                       ; $1fad: $7e
	ld de, $0100                                     ; $1fae: $11 $00 $01
	and a                                            ; $1fb1: $a7
	jr nz, jr_000_1fc3                               ; $1fb2: $20 $0f

	add hl, bc                                       ; $1fb4: $09
	ld a, [hl]                                       ; $1fb5: $7e
	ld de, $0300                                     ; $1fb6: $11 $00 $03
	and a                                            ; $1fb9: $a7
	jr nz, jr_000_1fc3                               ; $1fba: $20 $07

	add hl, bc                                       ; $1fbc: $09
	ld de, $1200                                     ; $1fbd: $11 $00 $12
	ld a, [hl]                                       ; $1fc0: $7e
	and a                                            ; $1fc1: $a7
	ret z                                            ; $1fc2: $c8

jr_000_1fc3:
	ld [hl], $00                                     ; $1fc3: $36 $00
	ldh a, [$a9]                                     ; $1fc5: $f0 $a9
	ld b, a                                          ; $1fc7: $47
	inc b                                            ; $1fc8: $04

jr_000_1fc9:
	push bc                                          ; $1fc9: $c5
	push de                                          ; $1fca: $d5
	ld hl, $c0a0                                     ; $1fcb: $21 $a0 $c0
	call Stop_counting_if_score_reaches_999999       ; $1fce: $cd $66 $01
	pop de                                           ; $1fd1: $d1
	pop bc                                           ; $1fd2: $c1
	dec b                                            ; $1fd3: $05
	jr nz, jr_000_1fc9                               ; $1fd4: $20 $f3

	ret                                              ; $1fd6: $c9


Call_000_1fd7:
	push af                                          ; $1fd7: $f5
	ld a, $02                                        ; $1fd8: $3e $02
	ldh [$e3], a                                     ; $1fda: $e0 $e3
	pop af                                           ; $1fdc: $f1

Call_000_1fdd:
	ld hl, $c802                                     ; $1fdd: $21 $02 $c8
	ld c, $12                                        ; $1fe0: $0e $12
	ld de, $0020                                     ; $1fe2: $11 $20 $00

jr_000_1fe5:
	push hl                                          ; $1fe5: $e5
	ld b, $0a                                        ; $1fe6: $06 $0a

jr_000_1fe8:
	ld [hl+], a                                      ; $1fe8: $22
	dec b                                            ; $1fe9: $05
	jr nz, jr_000_1fe8                               ; $1fea: $20 $fc

	pop hl                                           ; $1fec: $e1
	add hl, de                                       ; $1fed: $19
	dec c                                            ; $1fee: $0d
	jr nz, jr_000_1fe5                               ; $1fef: $20 $f4

	ret                                              ; $1ff1: $c9


Call_000_1ff2:
	ld hl, $cbc2                                     ; $1ff2: $21 $c2 $cb
	ld de, $0016                                     ; $1ff5: $11 $16 $00
	ld c, $02                                        ; $1ff8: $0e $02
	ld a, $2f                                        ; $1ffa: $3e $2f

jr_000_1ffc:
	ld b, $0a                                        ; $1ffc: $06 $0a

jr_000_1ffe:
	ld [hl+], a                                      ; $1ffe: $22
	dec b                                            ; $1fff: $05
	jr nz, jr_000_1ffe                               ; $2000: $20 $fc

	add hl, de                                       ; $2002: $19
	dec c                                            ; $2003: $0d
	jr nz, jr_000_1ffc                               ; $2004: $20 $f6

	ret                                              ; $2006: $c9


Call_000_2007:
	ld hl, $c200                                     ; $2007: $21 $00 $c2
	ld [hl], $00                                     ; $200a: $36 $00
	inc l                                            ; $200c: $2c
	ld [hl], $18                                     ; $200d: $36 $18
	inc l                                            ; $200f: $2c
	ld [hl], $3f                                     ; $2010: $36 $3f
	inc l                                            ; $2012: $2c
	ld a, [$c213]                                    ; $2013: $fa $13 $c2
	ld [hl], a                                       ; $2016: $77
	and $fc                                          ; $2017: $e6 $fc
	ld c, a                                          ; $2019: $4f
	ldh a, [$e4]                                     ; $201a: $f0 $e4
	and a                                            ; $201c: $a7
	jr nz, jr_000_2024                               ; $201d: $20 $05

	ldh a, [$c5]                                     ; $201f: $f0 $c5
	and a                                            ; $2021: $a7
	jr z, jr_000_2041                                ; $2022: $28 $1d

jr_000_2024:
	ld h, $c3                                        ; $2024: $26 $c3
	ldh a, [$b0]                                     ; $2026: $f0 $b0
	ld l, a                                          ; $2028: $6f
	ld e, [hl]                                       ; $2029: $5e
	inc hl                                           ; $202a: $23
	ld a, h                                          ; $202b: $7c
	cp $c4                                           ; $202c: $fe $c4
	jr nz, jr_000_2033                               ; $202e: $20 $03

	ld hl, $c300                                     ; $2030: $21 $00 $c3

jr_000_2033:
	ld a, l                                          ; $2033: $7d
	ldh [$b0], a                                     ; $2034: $e0 $b0
	ldh a, [$d3]                                     ; $2036: $f0 $d3
	and a                                            ; $2038: $a7
	jr z, jr_000_2065                                ; $2039: $28 $2a

	or $80                                           ; $203b: $f6 $80
	ldh [$d3], a                                     ; $203d: $e0 $d3
	jr jr_000_2065                                   ; $203f: $18 $24

jr_000_2041:
	ld h, $03                                        ; $2041: $26 $03

jr_000_2043:
	ldh a, [rDIV]                                    ; $2043: $f0 $04
	ld b, a                                          ; $2045: $47

jr_000_2046:
	xor a                                            ; $2046: $af

jr_000_2047:
	dec b                                            ; $2047: $05
	jr z, jr_000_2054                                ; $2048: $28 $0a

	inc a                                            ; $204a: $3c
	inc a                                            ; $204b: $3c
	inc a                                            ; $204c: $3c
	inc a                                            ; $204d: $3c
	cp $1c                                           ; $204e: $fe $1c
	jr z, jr_000_2046                                ; $2050: $28 $f4

	jr jr_000_2047                                   ; $2052: $18 $f3

jr_000_2054:
	ld d, a                                          ; $2054: $57
	ldh a, [$ae]                                     ; $2055: $f0 $ae
	ld e, a                                          ; $2057: $5f
	dec h                                            ; $2058: $25
	jr z, jr_000_2062                                ; $2059: $28 $07

	or d                                             ; $205b: $b2
	or c                                             ; $205c: $b1
	and $fc                                          ; $205d: $e6 $fc
	cp c                                             ; $205f: $b9
	jr z, jr_000_2043                                ; $2060: $28 $e1

jr_000_2062:
	ld a, d                                          ; $2062: $7a
	ldh [$ae], a                                     ; $2063: $e0 $ae

jr_000_2065:
	ld a, e                                          ; $2065: $7b
	ld [$c213], a                                    ; $2066: $ea $13 $c2
	call Call_000_2696                               ; $2069: $cd $96 $26
	ldh a, [$9a]                                     ; $206c: $f0 $9a
	ldh [$99], a                                     ; $206e: $e0 $99
	ret                                              ; $2070: $c9


jr_000_2071:
	ld a, [$c0c7]                                    ; $2071: $fa $c7 $c0
	and a                                            ; $2074: $a7
	jr z, jr_000_2083                                ; $2075: $28 $0c

	ldh a, [$81]                                     ; $2077: $f0 $81
	and $b0                                          ; $2079: $e6 $b0
	cp $80                                           ; $207b: $fe $80
	jr nz, jr_000_20a4                               ; $207d: $20 $25

	xor a                                            ; $207f: $af
	ld [$c0c7], a                                    ; $2080: $ea $c7 $c0

jr_000_2083:
	ldh a, [$a7]                                     ; $2083: $f0 $a7
	and a                                            ; $2085: $a7
	jr nz, jr_000_20b1                               ; $2086: $20 $29

	ldh a, [$98]                                     ; $2088: $f0 $98
	and a                                            ; $208a: $a7
	jr nz, jr_000_20b1                               ; $208b: $20 $24

	ldh a, [$e3]                                     ; $208d: $f0 $e3
	and a                                            ; $208f: $a7
	jr nz, jr_000_20b1                               ; $2090: $20 $1f

	ld a, $03                                        ; $2092: $3e $03
	ldh [$a7], a                                     ; $2094: $e0 $a7
	ld hl, $ffe5                                     ; $2096: $21 $e5 $ff
	inc [hl]                                         ; $2099: $34
	jr jr_000_20c2                                   ; $209a: $18 $26

Call_000_209c:
	ldh a, [$80]                                     ; $209c: $f0 $80
	and $b0                                          ; $209e: $e6 $b0
	cp $80                                           ; $20a0: $fe $80
	jr z, jr_000_2071                                ; $20a2: $28 $cd

jr_000_20a4:
	ld hl, $ffe5                                     ; $20a4: $21 $e5 $ff
	ld [hl], $00                                     ; $20a7: $36 $00
	ldh a, [$99]                                     ; $20a9: $f0 $99
	and a                                            ; $20ab: $a7
	jr z, jr_000_20b5                                ; $20ac: $28 $07

	dec a                                            ; $20ae: $3d
	ldh [$99], a                                     ; $20af: $e0 $99

jr_000_20b1:
	call Call_000_2683                               ; $20b1: $cd $83 $26
	ret                                              ; $20b4: $c9


jr_000_20b5:
	ldh a, [$98]                                     ; $20b5: $f0 $98
	cp $03                                           ; $20b7: $fe $03
	ret z                                            ; $20b9: $c8

	ldh a, [$e3]                                     ; $20ba: $f0 $e3
	and a                                            ; $20bc: $a7
	ret nz                                           ; $20bd: $c0

	ldh a, [$9a]                                     ; $20be: $f0 $9a
	ldh [$99], a                                     ; $20c0: $e0 $99

jr_000_20c2:
	ld hl, $c201                                     ; $20c2: $21 $01 $c2
	ld a, [hl]                                       ; $20c5: $7e
	ldh [$a0], a                                     ; $20c6: $e0 $a0
	add $08                                          ; $20c8: $c6 $08
	ld [hl], a                                       ; $20ca: $77
	call Call_000_2683                               ; $20cb: $cd $83 $26
	call Call_000_2573                               ; $20ce: $cd $73 $25
	and a                                            ; $20d1: $a7
	ret z                                            ; $20d2: $c8

	ldh a, [$a0]                                     ; $20d3: $f0 $a0
	ld hl, $c201                                     ; $20d5: $21 $01 $c2
	ld [hl], a                                       ; $20d8: $77
	call Call_000_2683                               ; $20d9: $cd $83 $26
	ld a, $01                                        ; $20dc: $3e $01
	ldh [$98], a                                     ; $20de: $e0 $98
	ld [$c0c7], a                                    ; $20e0: $ea $c7 $c0
	ldh a, [$e5]                                     ; $20e3: $f0 $e5
	and a                                            ; $20e5: $a7
	jr z, jr_000_2103                                ; $20e6: $28 $1b

	ld c, a                                          ; $20e8: $4f
	ldh a, [$c0]                                     ; $20e9: $f0 $c0
	cp $37                                           ; $20eb: $fe $37
	jr z, jr_000_2126                                ; $20ed: $28 $37

	ld de, $c0c0                                     ; $20ef: $11 $c0 $c0
	ld a, [de]                                       ; $20f2: $1a
	ld l, a                                          ; $20f3: $6f
	inc de                                           ; $20f4: $13
	ld a, [de]                                       ; $20f5: $1a
	ld h, a                                          ; $20f6: $67
	ld b, $00                                        ; $20f7: $06 $00
	dec c                                            ; $20f9: $0d
	add hl, bc                                       ; $20fa: $09
	ld a, h                                          ; $20fb: $7c
	ld [de], a                                       ; $20fc: $12
	ld a, l                                          ; $20fd: $7d
	dec de                                           ; $20fe: $1b
	ld [de], a                                       ; $20ff: $12

jr_000_2100:
	xor a                                            ; $2100: $af
	ldh [$e5], a                                     ; $2101: $e0 $e5

jr_000_2103:
	ld a, [$c201]                                    ; $2103: $fa $01 $c2
	cp $18                                           ; $2106: $fe $18
	ret nz                                           ; $2108: $c0

	ld a, [$c202]                                    ; $2109: $fa $02 $c2
	cp $3f                                           ; $210c: $fe $3f
	ret nz                                           ; $210e: $c0

	ld hl, $fffb                                     ; $210f: $21 $fb $ff
	ld a, [hl]                                       ; $2112: $7e
	cp $01                                           ; $2113: $fe $01
	jr nz, jr_000_2124                               ; $2115: $20 $0d

	call $7ff3                                       ; $2117: $cd $f3 $7f
	ld a, $01                                        ; $211a: $3e $01
	ldh [$e1], a                                     ; $211c: $e0 $e1
	ld a, $02                                        ; $211e: $3e $02
	ld [$dff0], a                                    ; $2120: $ea $f0 $df
	ret                                              ; $2123: $c9


jr_000_2124:
	inc [hl]                                         ; $2124: $34
	ret                                              ; $2125: $c9


jr_000_2126:
	xor a                                            ; $2126: $af

jr_000_2127:
	dec c                                            ; $2127: $0d
	jr z, jr_000_212e                                ; $2128: $28 $04

	inc a                                            ; $212a: $3c
	daa                                              ; $212b: $27
	jr jr_000_2127                                   ; $212c: $18 $f9

jr_000_212e:
	ld e, a                                          ; $212e: $5f
	ld d, $00                                        ; $212f: $16 $00
	ld hl, $c0a0                                     ; $2131: $21 $a0 $c0
	call Stop_counting_if_score_reaches_999999       ; $2134: $cd $66 $01
	ld a, $01                                        ; $2137: $3e $01
	ld [$c0ce], a                                    ; $2139: $ea $ce $c0
	jr jr_000_2100                                   ; $213c: $18 $c2

Call_000_213e:
	ldh a, [$98]                                     ; $213e: $f0 $98
	cp $02                                           ; $2140: $fe $02
	ret nz                                           ; $2142: $c0

	ld a, $02                                        ; $2143: $3e $02
	ld [$dff8], a                                    ; $2145: $ea $f8 $df
	xor a                                            ; $2148: $af
	ldh [$a0], a                                     ; $2149: $e0 $a0
	ld de, $c0a3                                     ; $214b: $11 $a3 $c0
	ld hl, $c842                                     ; $214e: $21 $42 $c8
	ld b, $10                                        ; $2151: $06 $10

jr_000_2153:
	ld c, $0a                                        ; $2153: $0e $0a
	push hl                                          ; $2155: $e5

jr_000_2156:
	ld a, [hl+]                                      ; $2156: $2a
	cp $2f                                           ; $2157: $fe $2f
	jp z, Jump_000_21d8                              ; $2159: $ca $d8 $21

	dec c                                            ; $215c: $0d
	jr nz, jr_000_2156                               ; $215d: $20 $f7

	pop hl                                           ; $215f: $e1
	ld a, h                                          ; $2160: $7c
	ld [de], a                                       ; $2161: $12
	inc de                                           ; $2162: $13
	ld a, l                                          ; $2163: $7d
	ld [de], a                                       ; $2164: $12
	inc de                                           ; $2165: $13
	ldh a, [$a0]                                     ; $2166: $f0 $a0
	inc a                                            ; $2168: $3c
	ldh [$a0], a                                     ; $2169: $e0 $a0

jr_000_216b:
	push de                                          ; $216b: $d5
	ld de, $0020                                     ; $216c: $11 $20 $00
	add hl, de                                       ; $216f: $19
	pop de                                           ; $2170: $d1
	dec b                                            ; $2171: $05
	jr nz, jr_000_2153                               ; $2172: $20 $df

	ld a, $03                                        ; $2174: $3e $03
	ldh [$98], a                                     ; $2176: $e0 $98
	dec a                                            ; $2178: $3d
	ldh [$a6], a                                     ; $2179: $e0 $a6
	ldh a, [$a0]                                     ; $217b: $f0 $a0
	and a                                            ; $217d: $a7
	ret z                                            ; $217e: $c8

	ld b, a                                          ; $217f: $47
	ld hl, $ff9e                                     ; $2180: $21 $9e $ff
	ldh a, [$c0]                                     ; $2183: $f0 $c0
	cp $77                                           ; $2185: $fe $77
	jr z, jr_000_219b                                ; $2187: $28 $12

	ld a, b                                          ; $2189: $78
	add [hl]                                         ; $218a: $86
	daa                                              ; $218b: $27
	ld [hl+], a                                      ; $218c: $22
	ld a, $00                                        ; $218d: $3e $00
	adc [hl]                                         ; $218f: $8e
	daa                                              ; $2190: $27
	ld [hl], a                                       ; $2191: $77
	jr nc, jr_000_21aa                               ; $2192: $30 $16

	ld [hl], $99                                     ; $2194: $36 $99
	dec hl                                           ; $2196: $2b
	ld [hl], $99                                     ; $2197: $36 $99
	jr jr_000_21aa                                   ; $2199: $18 $0f

jr_000_219b:
	ld a, [hl]                                       ; $219b: $7e
	or a                                             ; $219c: $b7
	sub b                                            ; $219d: $90
	jr z, jr_000_21db                                ; $219e: $28 $3b

	jr c, jr_000_21db                                ; $21a0: $38 $39

	daa                                              ; $21a2: $27
	ld [hl], a                                       ; $21a3: $77
	and $f0                                          ; $21a4: $e6 $f0
	cp $90                                           ; $21a6: $fe $90
	jr z, jr_000_21db                                ; $21a8: $28 $31

jr_000_21aa:
	ld a, b                                          ; $21aa: $78
	ld c, $06                                        ; $21ab: $0e $06
	ld hl, $c0ac                                     ; $21ad: $21 $ac $c0
	ld b, $00                                        ; $21b0: $06 $00
	cp $01                                           ; $21b2: $fe $01
	jr z, jr_000_21cf                                ; $21b4: $28 $19

	ld hl, $c0b1                                     ; $21b6: $21 $b1 $c0
	ld b, $01                                        ; $21b9: $06 $01
	cp $02                                           ; $21bb: $fe $02
	jr z, jr_000_21cf                                ; $21bd: $28 $10

	ld hl, $c0b6                                     ; $21bf: $21 $b6 $c0
	ld b, $02                                        ; $21c2: $06 $02
	cp $03                                           ; $21c4: $fe $03
	jr z, jr_000_21cf                                ; $21c6: $28 $07

	ld hl, $c0bb                                     ; $21c8: $21 $bb $c0
	ld b, $04                                        ; $21cb: $06 $04
	ld c, $07                                        ; $21cd: $0e $07

jr_000_21cf:
	inc [hl]                                         ; $21cf: $34
	ld a, b                                          ; $21d0: $78
	ldh [$dc], a                                     ; $21d1: $e0 $dc
	ld a, c                                          ; $21d3: $79
	ld [$dfe0], a                                    ; $21d4: $ea $e0 $df
	ret                                              ; $21d7: $c9


Jump_000_21d8:
	pop hl                                           ; $21d8: $e1
	jr jr_000_216b                                   ; $21d9: $18 $90

jr_000_21db:
	xor a                                            ; $21db: $af
	ldh [$9e], a                                     ; $21dc: $e0 $9e
	jr jr_000_21aa                                   ; $21de: $18 $ca

VBlank_proc_01::
	ldh a, [$98]                                     ; $21e0: $f0 $98
	cp $03                                           ; $21e2: $fe $03
	ret nz                                           ; $21e4: $c0

	ldh a, [$a6]                                     ; $21e5: $f0 $a6
	and a                                            ; $21e7: $a7
	ret nz                                           ; $21e8: $c0

	ld de, $c0a3                                     ; $21e9: $11 $a3 $c0
	ldh a, [$9c]                                     ; $21ec: $f0 $9c
	bit 0, a                                         ; $21ee: $cb $47
	jr nz, jr_000_222e                               ; $21f0: $20 $3c

	ld a, [de]                                       ; $21f2: $1a
	and a                                            ; $21f3: $a7
	jr z, jr_000_2248                                ; $21f4: $28 $52

jr_000_21f6:
	sub $30                                          ; $21f6: $d6 $30
	ld h, a                                          ; $21f8: $67
	inc de                                           ; $21f9: $13
	ld a, [de]                                       ; $21fa: $1a
	ld l, a                                          ; $21fb: $6f
	ldh a, [$9c]                                     ; $21fc: $f0 $9c
	cp $06                                           ; $21fe: $fe $06
	ld a, $8c                                        ; $2200: $3e $8c
	jr nz, jr_000_2206                               ; $2202: $20 $02

	ld a, $2f                                        ; $2204: $3e $2f

jr_000_2206:
	ld c, $0a                                        ; $2206: $0e $0a

jr_000_2208:
	ld [hl+], a                                      ; $2208: $22
	dec c                                            ; $2209: $0d
	jr nz, jr_000_2208                               ; $220a: $20 $fc

	inc de                                           ; $220c: $13
	ld a, [de]                                       ; $220d: $1a
	and a                                            ; $220e: $a7
	jr nz, jr_000_21f6                               ; $220f: $20 $e5

jr_000_2211:
	ldh a, [$9c]                                     ; $2211: $f0 $9c
	inc a                                            ; $2213: $3c
	ldh [$9c], a                                     ; $2214: $e0 $9c
	cp $07                                           ; $2216: $fe $07
	jr z, jr_000_221f                                ; $2218: $28 $05

	ld a, $0a                                        ; $221a: $3e $0a
	ldh [$a6], a                                     ; $221c: $e0 $a6
	ret                                              ; $221e: $c9


jr_000_221f:
	xor a                                            ; $221f: $af
	ldh [$9c], a                                     ; $2220: $e0 $9c
	ld a, $0d                                        ; $2222: $3e $0d
	ldh [$a6], a                                     ; $2224: $e0 $a6
	ld a, $01                                        ; $2226: $3e $01
	ldh [$e3], a                                     ; $2228: $e0 $e3

jr_000_222a:
	xor a                                            ; $222a: $af
	ldh [$98], a                                     ; $222b: $e0 $98
	ret                                              ; $222d: $c9


jr_000_222e:
	ld a, [de]                                       ; $222e: $1a
	ld h, a                                          ; $222f: $67
	sub $30                                          ; $2230: $d6 $30
	ld c, a                                          ; $2232: $4f
	inc de                                           ; $2233: $13
	ld a, [de]                                       ; $2234: $1a
	ld l, a                                          ; $2235: $6f
	ld b, $0a                                        ; $2236: $06 $0a

jr_000_2238:
	ld a, [hl]                                       ; $2238: $7e
	push hl                                          ; $2239: $e5
	ld h, c                                          ; $223a: $61
	ld [hl], a                                       ; $223b: $77
	pop hl                                           ; $223c: $e1
	inc hl                                           ; $223d: $23
	dec b                                            ; $223e: $05
	jr nz, jr_000_2238                               ; $223f: $20 $f7

	inc de                                           ; $2241: $13
	ld a, [de]                                       ; $2242: $1a
	and a                                            ; $2243: $a7
	jr nz, jr_000_222e                               ; $2244: $20 $e8

	jr jr_000_2211                                   ; $2246: $18 $c9

jr_000_2248:
	call Call_000_2007                               ; $2248: $cd $07 $20
	jr jr_000_222a                                   ; $224b: $18 $dd

Call_000_224d:
	ldh a, [$a6]                                     ; $224d: $f0 $a6
	and a                                            ; $224f: $a7
	ret nz                                           ; $2250: $c0

	ldh a, [$e3]                                     ; $2251: $f0 $e3
	cp $01                                           ; $2253: $fe $01
	ret nz                                           ; $2255: $c0

	ld de, $c0a3                                     ; $2256: $11 $a3 $c0
	ld a, [de]                                       ; $2259: $1a

jr_000_225a:
	ld h, a                                          ; $225a: $67
	inc de                                           ; $225b: $13
	ld a, [de]                                       ; $225c: $1a
	ld l, a                                          ; $225d: $6f
	push de                                          ; $225e: $d5
	push hl                                          ; $225f: $e5
	ld bc, $ffe0                                     ; $2260: $01 $e0 $ff
	add hl, bc                                       ; $2263: $09
	pop de                                           ; $2264: $d1

jr_000_2265:
	push hl                                          ; $2265: $e5
	ld b, $0a                                        ; $2266: $06 $0a

jr_000_2268:
	ld a, [hl+]                                      ; $2268: $2a
	ld [de], a                                       ; $2269: $12
	inc de                                           ; $226a: $13
	dec b                                            ; $226b: $05
	jr nz, jr_000_2268                               ; $226c: $20 $fa

	pop hl                                           ; $226e: $e1
	push hl                                          ; $226f: $e5
	pop de                                           ; $2270: $d1
	ld bc, $ffe0                                     ; $2271: $01 $e0 $ff
	add hl, bc                                       ; $2274: $09
	ld a, h                                          ; $2275: $7c
	cp $c7                                           ; $2276: $fe $c7
	jr nz, jr_000_2265                               ; $2278: $20 $eb

	pop de                                           ; $227a: $d1
	inc de                                           ; $227b: $13
	ld a, [de]                                       ; $227c: $1a
	and a                                            ; $227d: $a7
	jr nz, jr_000_225a                               ; $227e: $20 $da

	ld hl, $c802                                     ; $2280: $21 $02 $c8
	ld a, $2f                                        ; $2283: $3e $2f
	ld b, $0a                                        ; $2285: $06 $0a

jr_000_2287:
	ld [hl+], a                                      ; $2287: $22
	dec b                                            ; $2288: $05
	jr nz, jr_000_2287                               ; $2289: $20 $fc

	call Call_000_2293                               ; $228b: $cd $93 $22
	ld a, $02                                        ; $228e: $3e $02
	ldh [$e3], a                                     ; $2290: $e0 $e3
	ret                                              ; $2292: $c9


Call_000_2293:
	ld hl, $c0a3                                     ; $2293: $21 $a3 $c0
	xor a                                            ; $2296: $af
	ld b, $09                                        ; $2297: $06 $09

Countdown_from_9::
	ld [hl+], a                                      ; $2299: $22
	dec b                                            ; $229a: $05
	jr nz, Countdown_from_9                          ; $229b: $20 $fc

	ret                                              ; $229d: $c9


VBlank_proc_19::
	ldh a, [$e3]                                     ; $229e: $f0 $e3
	cp $02                                           ; $22a0: $fe $02
	ret nz                                           ; $22a2: $c0

	ld hl, $9a22                                     ; $22a3: $21 $22 $9a
	ld de, $ca22                                     ; $22a6: $11 $22 $ca
	call Call_000_24ac                               ; $22a9: $cd $ac $24
	ret                                              ; $22ac: $c9


VBlank_proc_18::
	ldh a, [$e3]                                     ; $22ad: $f0 $e3
	cp $03                                           ; $22af: $fe $03
	ret nz                                           ; $22b1: $c0

	ld hl, $9a02                                     ; $22b2: $21 $02 $9a
	ld de, $ca02                                     ; $22b5: $11 $02 $ca
	call Call_000_24ac                               ; $22b8: $cd $ac $24
	ret                                              ; $22bb: $c9


VBlank_proc_17::
	ldh a, [$e3]                                     ; $22bc: $f0 $e3
	cp $04                                           ; $22be: $fe $04
	ret nz                                           ; $22c0: $c0

	ld hl, $99e2                                     ; $22c1: $21 $e2 $99
	ld de, $c9e2                                     ; $22c4: $11 $e2 $c9
	call Call_000_24ac                               ; $22c7: $cd $ac $24
	ret                                              ; $22ca: $c9


VBlank_proc_16::
	ldh a, [$e3]                                     ; $22cb: $f0 $e3
	cp $05                                           ; $22cd: $fe $05
	ret nz                                           ; $22cf: $c0

	ld hl, $99c2                                     ; $22d0: $21 $c2 $99
	ld de, $c9c2                                     ; $22d3: $11 $c2 $c9
	call Call_000_24ac                               ; $22d6: $cd $ac $24
	ret                                              ; $22d9: $c9


VBlank_proc_15::
	ldh a, [$e3]                                     ; $22da: $f0 $e3
	cp $06                                           ; $22dc: $fe $06
	ret nz                                           ; $22de: $c0

	ld hl, $99a2                                     ; $22df: $21 $a2 $99
	ld de, $c9a2                                     ; $22e2: $11 $a2 $c9
	call Call_000_24ac                               ; $22e5: $cd $ac $24
	ret                                              ; $22e8: $c9


VBlank_proc_14::
	ldh a, [$e3]                                     ; $22e9: $f0 $e3
	cp $07                                           ; $22eb: $fe $07
	ret nz                                           ; $22ed: $c0

	ld hl, $9982                                     ; $22ee: $21 $82 $99
	ld de, $c982                                     ; $22f1: $11 $82 $c9
	call Call_000_24ac                               ; $22f4: $cd $ac $24
	ret                                              ; $22f7: $c9


VBlank_proc_13::
	ldh a, [$e3]                                     ; $22f8: $f0 $e3
	cp $08                                           ; $22fa: $fe $08
	ret nz                                           ; $22fc: $c0

	ld hl, $9962                                     ; $22fd: $21 $62 $99
	ld de, $c962                                     ; $2300: $11 $62 $c9
	call Call_000_24ac                               ; $2303: $cd $ac $24
	ldh a, [$c5]                                     ; $2306: $f0 $c5
	and a                                            ; $2308: $a7
	ldh a, [$e1]                                     ; $2309: $f0 $e1
	jr nz, jr_000_2315                               ; $230b: $20 $08

	and a                                            ; $230d: $a7
	ret nz                                           ; $230e: $c0

jr_000_230f:
	ld a, $01                                        ; $230f: $3e $01
	ld [$dff8], a                                    ; $2311: $ea $f8 $df
	ret                                              ; $2314: $c9


jr_000_2315:
	cp $1a                                           ; $2315: $fe $1a
	ret nz                                           ; $2317: $c0

	ldh a, [$d4]                                     ; $2318: $f0 $d4
	and a                                            ; $231a: $a7
	jr z, jr_000_230f                                ; $231b: $28 $f2

	ld a, $05                                        ; $231d: $3e $05
	ld [$dfe0], a                                    ; $231f: $ea $e0 $df
	ret                                              ; $2322: $c9


VBlank_proc_12::
	ldh a, [$e3]                                     ; $2323: $f0 $e3
	cp $09                                           ; $2325: $fe $09
	ret nz                                           ; $2327: $c0

	ld hl, $9942                                     ; $2328: $21 $42 $99
	ld de, $c942                                     ; $232b: $11 $42 $c9
	call Call_000_24ac                               ; $232e: $cd $ac $24
	ret                                              ; $2331: $c9


VBlank_proc_11::
	ldh a, [$e3]                                     ; $2332: $f0 $e3
	cp $0a                                           ; $2334: $fe $0a
	ret nz                                           ; $2336: $c0

	ld hl, $9922                                     ; $2337: $21 $22 $99
	ld de, $c922                                     ; $233a: $11 $22 $c9
	call Call_000_24ac                               ; $233d: $cd $ac $24
	ret                                              ; $2340: $c9


VBlank_proc_10::
	ldh a, [$e3]                                     ; $2341: $f0 $e3
	cp $0b                                           ; $2343: $fe $0b
	ret nz                                           ; $2345: $c0

	ld hl, $9902                                     ; $2346: $21 $02 $99
	ld de, $c902                                     ; $2349: $11 $02 $c9
	call Call_000_24ac                               ; $234c: $cd $ac $24
	ret                                              ; $234f: $c9


VBlank_proc_09::
	ldh a, [$e3]                                     ; $2350: $f0 $e3
	cp $0c                                           ; $2352: $fe $0c
	ret nz                                           ; $2354: $c0

	ld hl, $98e2                                     ; $2355: $21 $e2 $98
	ld de, $c8e2                                     ; $2358: $11 $e2 $c8
	call Call_000_24ac                               ; $235b: $cd $ac $24
	ret                                              ; $235e: $c9


VBlank_proc_08::
	ldh a, [$e3]                                     ; $235f: $f0 $e3
	cp $0d                                           ; $2361: $fe $0d
	ret nz                                           ; $2363: $c0

	ld hl, $98c2                                     ; $2364: $21 $c2 $98
	ld de, $c8c2                                     ; $2367: $11 $c2 $c8
	call Call_000_24ac                               ; $236a: $cd $ac $24
	ret                                              ; $236d: $c9


VBlank_proc_07::
	ldh a, [$e3]                                     ; $236e: $f0 $e3
	cp $0e                                           ; $2370: $fe $0e
	ret nz                                           ; $2372: $c0

	ld hl, $98a2                                     ; $2373: $21 $a2 $98
	ld de, $c8a2                                     ; $2376: $11 $a2 $c8
	call Call_000_24ac                               ; $2379: $cd $ac $24
	ret                                              ; $237c: $c9


VBlank_proc_06::
	ldh a, [$e3]                                     ; $237d: $f0 $e3
	cp $0f                                           ; $237f: $fe $0f
	ret nz                                           ; $2381: $c0

	ld hl, $9882                                     ; $2382: $21 $82 $98
	ld de, $c882                                     ; $2385: $11 $82 $c8
	call Call_000_24ac                               ; $2388: $cd $ac $24
	ret                                              ; $238b: $c9


VBlank_proc_05::
	ldh a, [$e3]                                     ; $238c: $f0 $e3
	cp $10                                           ; $238e: $fe $10
	ret nz                                           ; $2390: $c0

	ld hl, $9862                                     ; $2391: $21 $62 $98
	ld de, $c862                                     ; $2394: $11 $62 $c8
	call Call_000_24ac                               ; $2397: $cd $ac $24
	call Call_000_244b                               ; $239a: $cd $4b $24
	ret                                              ; $239d: $c9


VBlank_proc_04::
	ldh a, [$e3]                                     ; $239e: $f0 $e3
	cp $11                                           ; $23a0: $fe $11
	ret nz                                           ; $23a2: $c0

	ld hl, $9842                                     ; $23a3: $21 $42 $98
	ld de, $c842                                     ; $23a6: $11 $42 $c8
	call Call_000_24ac                               ; $23a9: $cd $ac $24
	ld hl, $9c6d                                     ; $23ac: $21 $6d $9c
	call Call_000_243b                               ; $23af: $cd $3b $24
	ld a, $01                                        ; $23b2: $3e $01
	ldh [$e0], a                                     ; $23b4: $e0 $e0
	ret                                              ; $23b6: $c9


VBlank_proc_03::
	ldh a, [$e3]                                     ; $23b7: $f0 $e3
	cp $12                                           ; $23b9: $fe $12
	ret nz                                           ; $23bb: $c0

	ld hl, $9822                                     ; $23bc: $21 $22 $98
	ld de, $c822                                     ; $23bf: $11 $22 $c8
	call Call_000_24ac                               ; $23c2: $cd $ac $24
	ld hl, $986d                                     ; $23c5: $21 $6d $98
	call Call_000_243b                               ; $23c8: $cd $3b $24
	ret                                              ; $23cb: $c9


VBlank_proc_02::
	ldh a, [$e3]                                     ; $23cc: $f0 $e3
	cp $13                                           ; $23ce: $fe $13
	ret nz                                           ; $23d0: $c0

	ld [$c0c7], a                                    ; $23d1: $ea $c7 $c0
	ld hl, $9802                                     ; $23d4: $21 $02 $98
	ld de, $c802                                     ; $23d7: $11 $02 $c8
	call Call_000_24ac                               ; $23da: $cd $ac $24
	xor a                                            ; $23dd: $af
	ldh [$e3], a                                     ; $23de: $e0 $e3
	ldh a, [$c5]                                     ; $23e0: $f0 $c5
	and a                                            ; $23e2: $a7
	ldh a, [$e1]                                     ; $23e3: $f0 $e1
	jr nz, jr_000_242f                               ; $23e5: $20 $48

	and a                                            ; $23e7: $a7
	ret nz                                           ; $23e8: $c0

jr_000_23e9:
	ld hl, $994e                                     ; $23e9: $21 $4e $99
	ld de, $ff9f                                     ; $23ec: $11 $9f $ff
	ld c, $02                                        ; $23ef: $0e $02
	ldh a, [$c0]                                     ; $23f1: $f0 $c0
	cp $37                                           ; $23f3: $fe $37
	jr z, jr_000_23ff                                ; $23f5: $28 $08

	ld hl, $9950                                     ; $23f7: $21 $50 $99
	ld de, $ff9e                                     ; $23fa: $11 $9e $ff
	ld c, $01                                        ; $23fd: $0e $01

jr_000_23ff:
	call Call_000_2a3c                               ; $23ff: $cd $3c $2a
	ldh a, [$c0]                                     ; $2402: $f0 $c0
	cp $37                                           ; $2404: $fe $37
	jr z, jr_000_242b                                ; $2406: $28 $23

	ldh a, [$9e]                                     ; $2408: $f0 $9e
	and a                                            ; $240a: $a7
	jr nz, jr_000_242b                               ; $240b: $20 $1e

	ld a, $64                                        ; $240d: $3e $64
	ldh [$a6], a                                     ; $240f: $e0 $a6
	ld a, $02                                        ; $2411: $3e $02
	ld [$dfe8], a                                    ; $2413: $ea $e8 $df
	ldh a, [$c5]                                     ; $2416: $f0 $c5
	and a                                            ; $2418: $a7
	jr z, jr_000_241e                                ; $2419: $28 $03

	ldh [$d5], a                                     ; $241b: $e0 $d5
	ret                                              ; $241d: $c9


jr_000_241e:
	ldh a, [$c3]                                     ; $241e: $f0 $c3
	cp $09                                           ; $2420: $fe $09
	ld a, $05                                        ; $2422: $3e $05
	jr nz, jr_000_2428                               ; $2424: $20 $02

	ld a, $22                                        ; $2426: $3e $22

jr_000_2428:
	ldh [$e1], a                                     ; $2428: $e0 $e1
	ret                                              ; $242a: $c9


jr_000_242b:
	call Call_000_2007                               ; $242b: $cd $07 $20
	ret                                              ; $242e: $c9


jr_000_242f:
	cp $1a                                           ; $242f: $fe $1a
	ret nz                                           ; $2431: $c0

	ldh a, [$d4]                                     ; $2432: $f0 $d4
	and a                                            ; $2434: $a7
	jr z, jr_000_23e9                                ; $2435: $28 $b2

	xor a                                            ; $2437: $af
	ldh [$d4], a                                     ; $2438: $e0 $d4
	ret                                              ; $243a: $c9


Call_000_243b:
	ldh a, [$e1]                                     ; $243b: $f0 $e1
	and a                                            ; $243d: $a7
	ret nz                                           ; $243e: $c0

	ldh a, [$c0]                                     ; $243f: $f0 $c0
	cp $37                                           ; $2441: $fe $37
	ret nz                                           ; $2443: $c0

	ld de, $c0a2                                     ; $2444: $11 $a2 $c0
	call Call_000_2a36                               ; $2447: $cd $36 $2a
	ret                                              ; $244a: $c9


Call_000_244b:
	ldh a, [$e1]                                     ; $244b: $f0 $e1
	and a                                            ; $244d: $a7
	ret nz                                           ; $244e: $c0

	ldh a, [$c0]                                     ; $244f: $f0 $c0
	cp $37                                           ; $2451: $fe $37
	ret nz                                           ; $2453: $c0

	ld hl, $ffa9                                     ; $2454: $21 $a9 $ff
	ld a, [hl]                                       ; $2457: $7e
	cp $14                                           ; $2458: $fe $14
	ret z                                            ; $245a: $c8

	call Call_000_249d                               ; $245b: $cd $9d $24
	ldh a, [$9f]                                     ; $245e: $f0 $9f
	ld d, a                                          ; $2460: $57
	and $f0                                          ; $2461: $e6 $f0
	ret nz                                           ; $2463: $c0

	ld a, d                                          ; $2464: $7a
	and $0f                                          ; $2465: $e6 $0f
	swap a                                           ; $2467: $cb $37
	ld d, a                                          ; $2469: $57
	ldh a, [$9e]                                     ; $246a: $f0 $9e
	and $f0                                          ; $246c: $e6 $f0
	swap a                                           ; $246e: $cb $37
	or d                                             ; $2470: $b2
	cp b                                             ; $2471: $b8
	ret c                                            ; $2472: $d8

	ret z                                            ; $2473: $c8

	inc [hl]                                         ; $2474: $34
	call Call_000_249d                               ; $2475: $cd $9d $24
	and $0f                                          ; $2478: $e6 $0f
	ld c, a                                          ; $247a: $4f
	ld hl, $98f1                                     ; $247b: $21 $f1 $98

jr_000_247e:
	ld [hl], c                                       ; $247e: $71
	ld h, $9c                                        ; $247f: $26 $9c
	ld [hl], c                                       ; $2481: $71
	ld a, b                                          ; $2482: $78
	and $f0                                          ; $2483: $e6 $f0
	jr z, jr_000_2494                                ; $2485: $28 $0d

	swap a                                           ; $2487: $cb $37
	ld c, a                                          ; $2489: $4f
	ld a, l                                          ; $248a: $7d
	cp $f0                                           ; $248b: $fe $f0
	jr z, jr_000_2494                                ; $248d: $28 $05

	ld hl, $98f0                                     ; $248f: $21 $f0 $98
	jr jr_000_247e                                   ; $2492: $18 $ea

jr_000_2494:
	ld a, $08                                        ; $2494: $3e $08
	ld [$dfe0], a                                    ; $2496: $ea $e0 $df
	call Call_000_1ae8                               ; $2499: $cd $e8 $1a
	ret                                              ; $249c: $c9


Call_000_249d:
	ld a, [hl]                                       ; $249d: $7e
	ld b, a                                          ; $249e: $47
	and a                                            ; $249f: $a7
	ret z                                            ; $24a0: $c8

	xor a                                            ; $24a1: $af

jr_000_24a2:
	or a                                             ; $24a2: $b7
	inc a                                            ; $24a3: $3c
	daa                                              ; $24a4: $27
	dec b                                            ; $24a5: $05
	jr z, jr_000_24aa                                ; $24a6: $28 $02

	jr jr_000_24a2                                   ; $24a8: $18 $f8

jr_000_24aa:
	ld b, a                                          ; $24aa: $47
	ret                                              ; $24ab: $c9


Call_000_24ac:
	ld b, $0a                                        ; $24ac: $06 $0a

jr_000_24ae:
	ld a, [de]                                       ; $24ae: $1a
	ld [hl], a                                       ; $24af: $77
	inc l                                            ; $24b0: $2c
	inc e                                            ; $24b1: $1c
	dec b                                            ; $24b2: $05
	jr nz, jr_000_24ae                               ; $24b3: $20 $f9

	ldh a, [$e3]                                     ; $24b5: $f0 $e3
	inc a                                            ; $24b7: $3c
	ldh [$e3], a                                     ; $24b8: $e0 $e3
	ret                                              ; $24ba: $c9


Call_000_24bb:
	ld hl, $c200                                     ; $24bb: $21 $00 $c2
	ld a, [hl]                                       ; $24be: $7e
	cp $80                                           ; $24bf: $fe $80
	ret z                                            ; $24c1: $c8

	ld l, $03                                        ; $24c2: $2e $03
	ld a, [hl]                                       ; $24c4: $7e
	ldh [$a0], a                                     ; $24c5: $e0 $a0
	ldh a, [$81]                                     ; $24c7: $f0 $81
	ld b, a                                          ; $24c9: $47
	bit 1, b                                         ; $24ca: $cb $48
	jr nz, jr_000_24e0                               ; $24cc: $20 $12

	bit 0, b                                         ; $24ce: $cb $40
	jr z, jr_000_2509                                ; $24d0: $28 $37

	ld a, [hl]                                       ; $24d2: $7e
	and $03                                          ; $24d3: $e6 $03
	jr z, jr_000_24da                                ; $24d5: $28 $03

	dec [hl]                                         ; $24d7: $35
	jr jr_000_24ee                                   ; $24d8: $18 $14

jr_000_24da:
	ld a, [hl]                                       ; $24da: $7e
	or $03                                           ; $24db: $f6 $03
	ld [hl], a                                       ; $24dd: $77
	jr jr_000_24ee                                   ; $24de: $18 $0e

jr_000_24e0:
	ld a, [hl]                                       ; $24e0: $7e
	and $03                                          ; $24e1: $e6 $03
	cp $03                                           ; $24e3: $fe $03
	jr z, jr_000_24ea                                ; $24e5: $28 $03

	inc [hl]                                         ; $24e7: $34
	jr jr_000_24ee                                   ; $24e8: $18 $04

jr_000_24ea:
	ld a, [hl]                                       ; $24ea: $7e
	and $fc                                          ; $24eb: $e6 $fc
	ld [hl], a                                       ; $24ed: $77

jr_000_24ee:
	ld a, $03                                        ; $24ee: $3e $03
	ld [$dfe0], a                                    ; $24f0: $ea $e0 $df
	call Call_000_2683                               ; $24f3: $cd $83 $26
	call Call_000_2573                               ; $24f6: $cd $73 $25
	and a                                            ; $24f9: $a7
	jr z, jr_000_2509                                ; $24fa: $28 $0d

	xor a                                            ; $24fc: $af
	ld [$dfe0], a                                    ; $24fd: $ea $e0 $df
	ld hl, $c203                                     ; $2500: $21 $03 $c2
	ldh a, [$a0]                                     ; $2503: $f0 $a0
	ld [hl], a                                       ; $2505: $77
	call Call_000_2683                               ; $2506: $cd $83 $26

jr_000_2509:
	ld hl, $c202                                     ; $2509: $21 $02 $c2
	ldh a, [$81]                                     ; $250c: $f0 $81
	ld b, a                                          ; $250e: $47
	ldh a, [$80]                                     ; $250f: $f0 $80
	ld c, a                                          ; $2511: $4f
	ld a, [hl]                                       ; $2512: $7e
	ldh [$a0], a                                     ; $2513: $e0 $a0
	bit 4, b                                         ; $2515: $cb $60
	ld a, $17                                        ; $2517: $3e $17
	jr nz, jr_000_2527                               ; $2519: $20 $0c

	bit 4, c                                         ; $251b: $cb $61
	jr z, jr_000_254c                                ; $251d: $28 $2d

	ldh a, [$aa]                                     ; $251f: $f0 $aa
	dec a                                            ; $2521: $3d
	ldh [$aa], a                                     ; $2522: $e0 $aa
	ret nz                                           ; $2524: $c0

	ld a, $09                                        ; $2525: $3e $09

jr_000_2527:
	ldh [$aa], a                                     ; $2527: $e0 $aa
	ld a, [hl]                                       ; $2529: $7e
	add $08                                          ; $252a: $c6 $08
	ld [hl], a                                       ; $252c: $77
	call Call_000_2683                               ; $252d: $cd $83 $26
	ld a, $04                                        ; $2530: $3e $04
	ld [$dfe0], a                                    ; $2532: $ea $e0 $df
	call Call_000_2573                               ; $2535: $cd $73 $25
	and a                                            ; $2538: $a7
	ret z                                            ; $2539: $c8

jr_000_253a:
	ld hl, $c202                                     ; $253a: $21 $02 $c2
	xor a                                            ; $253d: $af
	ld [$dfe0], a                                    ; $253e: $ea $e0 $df
	ldh a, [$a0]                                     ; $2541: $f0 $a0
	ld [hl], a                                       ; $2543: $77
	call Call_000_2683                               ; $2544: $cd $83 $26
	ld a, $01                                        ; $2547: $3e $01

jr_000_2549:
	ldh [$aa], a                                     ; $2549: $e0 $aa
	ret                                              ; $254b: $c9


jr_000_254c:
	bit 5, b                                         ; $254c: $cb $68
	ld a, $17                                        ; $254e: $3e $17
	jr nz, jr_000_255e                               ; $2550: $20 $0c

	bit 5, c                                         ; $2552: $cb $69
	jr z, jr_000_2549                                ; $2554: $28 $f3

	ldh a, [$aa]                                     ; $2556: $f0 $aa
	dec a                                            ; $2558: $3d
	ldh [$aa], a                                     ; $2559: $e0 $aa
	ret nz                                           ; $255b: $c0

	ld a, $09                                        ; $255c: $3e $09

jr_000_255e:
	ldh [$aa], a                                     ; $255e: $e0 $aa
	ld a, [hl]                                       ; $2560: $7e
	sub $08                                          ; $2561: $d6 $08
	ld [hl], a                                       ; $2563: $77
	ld a, $04                                        ; $2564: $3e $04
	ld [$dfe0], a                                    ; $2566: $ea $e0 $df
	call Call_000_2683                               ; $2569: $cd $83 $26
	call Call_000_2573                               ; $256c: $cd $73 $25
	and a                                            ; $256f: $a7
	ret z                                            ; $2570: $c8

	jr jr_000_253a                                   ; $2571: $18 $c7

Call_000_2573:
	ld hl, $c010                                     ; $2573: $21 $10 $c0
	ld b, $04                                        ; $2576: $06 $04

jr_000_2578:
	ld a, [hl+]                                      ; $2578: $2a
	ldh [$b2], a                                     ; $2579: $e0 $b2
	ld a, [hl+]                                      ; $257b: $2a
	and a                                            ; $257c: $a7
	jr z, jr_000_2596                                ; $257d: $28 $17

	ldh [$b3], a                                     ; $257f: $e0 $b3
	push hl                                          ; $2581: $e5
	push bc                                          ; $2582: $c5
	call Call_000_29e3                               ; $2583: $cd $e3 $29
	ld a, h                                          ; $2586: $7c
	add $30                                          ; $2587: $c6 $30
	ld h, a                                          ; $2589: $67
	ld a, [hl]                                       ; $258a: $7e
	cp $2f                                           ; $258b: $fe $2f
	jr nz, jr_000_259a                               ; $258d: $20 $0b

	pop bc                                           ; $258f: $c1
	pop hl                                           ; $2590: $e1
	inc l                                            ; $2591: $2c
	inc l                                            ; $2592: $2c
	dec b                                            ; $2593: $05
	jr nz, jr_000_2578                               ; $2594: $20 $e2

jr_000_2596:
	xor a                                            ; $2596: $af
	ldh [$9b], a                                     ; $2597: $e0 $9b
	ret                                              ; $2599: $c9


jr_000_259a:
	pop bc                                           ; $259a: $c1
	pop hl                                           ; $259b: $e1
	ld a, $01                                        ; $259c: $3e $01
	ldh [$9b], a                                     ; $259e: $e0 $9b
	ret                                              ; $25a0: $c9


Call_000_25a1:
	ldh a, [$98]                                     ; $25a1: $f0 $98
	cp $01                                           ; $25a3: $fe $01
	ret nz                                           ; $25a5: $c0

	ld hl, $c010                                     ; $25a6: $21 $10 $c0
	ld b, $04                                        ; $25a9: $06 $04

jr_000_25ab:
	ld a, [hl+]                                      ; $25ab: $2a
	ldh [$b2], a                                     ; $25ac: $e0 $b2
	ld a, [hl+]                                      ; $25ae: $2a
	and a                                            ; $25af: $a7
	jr z, jr_000_25cf                                ; $25b0: $28 $1d

	ldh [$b3], a                                     ; $25b2: $e0 $b3
	push hl                                          ; $25b4: $e5
	push bc                                          ; $25b5: $c5
	call Call_000_29e3                               ; $25b6: $cd $e3 $29
	push hl                                          ; $25b9: $e5
	pop de                                           ; $25ba: $d1
	pop bc                                           ; $25bb: $c1
	pop hl                                           ; $25bc: $e1

jr_000_25bd:
	ldh a, [rSTAT]                                   ; $25bd: $f0 $41
	and $03                                          ; $25bf: $e6 $03
	jr nz, jr_000_25bd                               ; $25c1: $20 $fa

	ld a, [hl]                                       ; $25c3: $7e
	ld [de], a                                       ; $25c4: $12
	ld a, d                                          ; $25c5: $7a
	add $30                                          ; $25c6: $c6 $30
	ld d, a                                          ; $25c8: $57
	ld a, [hl+]                                      ; $25c9: $2a
	ld [de], a                                       ; $25ca: $12
	inc l                                            ; $25cb: $2c
	dec b                                            ; $25cc: $05
	jr nz, jr_000_25ab                               ; $25cd: $20 $dc

jr_000_25cf:
	ld a, $02                                        ; $25cf: $3e $02
	ldh [$98], a                                     ; $25d1: $e0 $98
	ld hl, $c200                                     ; $25d3: $21 $00 $c2
	ld [hl], $80                                     ; $25d6: $36 $80
	ret                                              ; $25d8: $c9


Call_000_25d9:
	ld a, [$c0c6]                                    ; $25d9: $fa $c6 $c0
	cp $02                                           ; $25dc: $fe $02
	jr z, jr_000_2626                                ; $25de: $28 $46

	push de                                          ; $25e0: $d5
	ld a, [hl]                                       ; $25e1: $7e
	or a                                             ; $25e2: $b7
	jr z, jr_000_2639                                ; $25e3: $28 $54

	dec a                                            ; $25e5: $3d
	ld [hl+], a                                      ; $25e6: $22
	ld a, [hl]                                       ; $25e7: $7e
	inc a                                            ; $25e8: $3c
	daa                                              ; $25e9: $27
	ld [hl], a                                       ; $25ea: $77
	and $0f                                          ; $25eb: $e6 $0f
	ld [bc], a                                       ; $25ed: $02
	dec c                                            ; $25ee: $0d
	ld a, [hl+]                                      ; $25ef: $2a
	swap a                                           ; $25f0: $cb $37
	and $0f                                          ; $25f2: $e6 $0f
	jr z, jr_000_25f7                                ; $25f4: $28 $01

	ld [bc], a                                       ; $25f6: $02

jr_000_25f7:
	push bc                                          ; $25f7: $c5
	ldh a, [$c3]                                     ; $25f8: $f0 $c3
	ld b, a                                          ; $25fa: $47
	inc b                                            ; $25fb: $04

jr_000_25fc:
	push hl                                          ; $25fc: $e5
	call Stop_counting_if_score_reaches_999999       ; $25fd: $cd $66 $01
	pop hl                                           ; $2600: $e1
	dec b                                            ; $2601: $05
	jr nz, jr_000_25fc                               ; $2602: $20 $f8

	pop bc                                           ; $2604: $c1
	inc hl                                           ; $2605: $23
	inc hl                                           ; $2606: $23
	push hl                                          ; $2607: $e5
	ld hl, $0023                                     ; $2608: $21 $23 $00
	add hl, bc                                       ; $260b: $09
	pop de                                           ; $260c: $d1
	call Call_000_2a3a                               ; $260d: $cd $3a $2a
	pop de                                           ; $2610: $d1
	ldh a, [$c3]                                     ; $2611: $f0 $c3
	ld b, a                                          ; $2613: $47
	inc b                                            ; $2614: $04
	ld hl, $c0a0                                     ; $2615: $21 $a0 $c0

jr_000_2618:
	push hl                                          ; $2618: $e5
	call Stop_counting_if_score_reaches_999999       ; $2619: $cd $66 $01
	pop hl                                           ; $261c: $e1
	dec b                                            ; $261d: $05
	jr nz, jr_000_2618                               ; $261e: $20 $f8

	ld a, $02                                        ; $2620: $3e $02
	ld [$c0c6], a                                    ; $2622: $ea $c6 $c0
	ret                                              ; $2625: $c9


jr_000_2626:
	ld de, $c0a2                                     ; $2626: $11 $a2 $c0
	ld hl, $9a25                                     ; $2629: $21 $25 $9a
	call Call_000_2a3a                               ; $262c: $cd $3a $2a
	ld a, $02                                        ; $262f: $3e $02
	ld [$dfe0], a                                    ; $2631: $ea $e0 $df
	xor a                                            ; $2634: $af
	ld [$c0c6], a                                    ; $2635: $ea $c6 $c0
	ret                                              ; $2638: $c9


jr_000_2639:
	pop de                                           ; $2639: $d1

Jump_000_263a:
	ld a, $21                                        ; $263a: $3e $21
	ldh [$a6], a                                     ; $263c: $e0 $a6
	xor a                                            ; $263e: $af
	ld [$c0c6], a                                    ; $263f: $ea $c6 $c0
	ld a, [$c0c5]                                    ; $2642: $fa $c5 $c0
	inc a                                            ; $2645: $3c
	ld [$c0c5], a                                    ; $2646: $ea $c5 $c0
	cp $05                                           ; $2649: $fe $05
	ret nz                                           ; $264b: $c0

	ld a, $04                                        ; $264c: $3e $04
	ldh [$e1], a                                     ; $264e: $e0 $e1
	ret                                              ; $2650: $c9


Call_000_2651:
	ld hl, $c0ac                                     ; $2651: $21 $ac $c0
	ld b, $1b                                        ; $2654: $06 $1b
	xor a                                            ; $2656: $af

jr_000_2657:
	ld [hl+], a                                      ; $2657: $22
	dec b                                            ; $2658: $05
	jr nz, jr_000_2657                               ; $2659: $20 $fc

	ld hl, $c0a0                                     ; $265b: $21 $a0 $c0
	ld b, $03                                        ; $265e: $06 $03

jr_000_2660:
	ld [hl+], a                                      ; $2660: $22
	dec b                                            ; $2661: $05
	jr nz, jr_000_2660                               ; $2662: $20 $fc

	ret                                              ; $2664: $c9


;This_routine_is_not_used::
	ld a, [hl]                                       ; $2665: $7e
	and $f0                                          ; $2666: $e6 $f0
	swap a                                           ; $2668: $cb $37
	ld [de], a                                       ; $266a: $12
	ld a, [hl]                                       ; $266b: $7e
	and $0f                                          ; $266c: $e6 $0f
	inc e                                            ; $266e: $1c
	ld [de], a                                       ; $266f: $12
	ret                                              ; $2670: $c9


Call_000_2671:
	ld a, $02                                        ; $2671: $3e $02

Call_000_2673:
	ldh [$8f], a                                     ; $2673: $e0 $8f
	xor a                                            ; $2675: $af
	ldh [$8e], a                                     ; $2676: $e0 $8e
	ld a, $c0                                        ; $2678: $3e $c0
	ldh [$8d], a                                     ; $267a: $e0 $8d
	ld hl, $c200                                     ; $267c: $21 $00 $c2
	call Call_000_2a89                               ; $267f: $cd $89 $2a
	ret                                              ; $2682: $c9


Call_000_2683:
	ld a, $01                                        ; $2683: $3e $01
	ldh [$8f], a                                     ; $2685: $e0 $8f
	ld a, $10                                        ; $2687: $3e $10
	ldh [$8e], a                                     ; $2689: $e0 $8e
	ld a, $c0                                        ; $268b: $3e $c0
	ldh [$8d], a                                     ; $268d: $e0 $8d
	ld hl, $c200                                     ; $268f: $21 $00 $c2
	call Call_000_2a89                               ; $2692: $cd $89 $2a
	ret                                              ; $2695: $c9


Call_000_2696:
	ld a, $01                                        ; $2696: $3e $01
	ldh [$8f], a                                     ; $2698: $e0 $8f
	ld a, $20                                        ; $269a: $3e $20
	ldh [$8e], a                                     ; $269c: $e0 $8e
	ld a, $c0                                        ; $269e: $3e $c0
	ldh [$8d], a                                     ; $26a0: $e0 $8d
	ld hl, $c210                                     ; $26a2: $21 $10 $c2
	call Call_000_2a89                               ; $26a5: $cd $89 $2a
	ret                                              ; $26a8: $c9


Set_at_hl_span_20_to_8e::
	ld b, $20                                        ; $26a9: $06 $20
	ld a, $8e                                        ; $26ab: $3e $8e
	ld de, $0020                                     ; $26ad: $11 $20 $00

Countdown_from_0x20::
	ld [hl], a                                       ; $26b0: $77
	add hl, de                                       ; $26b1: $19
	dec b                                            ; $26b2: $05
	jr nz, Countdown_from_0x20                       ; $26b3: $20 $fb

	ret                                              ; $26b5: $c9


Call_000_26b6:
jr_000_26b6:
	ld a, [de]                                       ; $26b6: $1a
	cp $ff                                           ; $26b7: $fe $ff
	ret z                                            ; $26b9: $c8

	ld [hl+], a                                      ; $26ba: $22
	inc de                                           ; $26bb: $13
	jr jr_000_26b6                                   ; $26bc: $18 $f8

Jump_000_26be:
	reti                                             ; $26be: $d9


	DB $00, $18, $3f, $00, $80, $00, $00, $ff, $00, $80, $8f, $00, $80, $00, $00, $ff
	DB $00, $70, $37, $1c, $00, $00, $00, $38, $37, $1c, $00, $00, $00, $40, $34, $20
	DB $00, $00, $00, $40, $1c, $20, $00, $00, $00, $40, $74, $20, $00, $00, $00, $40
	DB $68, $21, $00, $00, $00, $78, $68, $21, $00, $00, $00, $60, $60, $2a, $80, $00
	DB $00, $60, $72, $2a, $80, $20, $00, $68, $38, $3e, $80, $00, $00, $60, $60, $36
	DB $80, $00, $00, $60, $72, $36, $80, $20, $00, $68, $38, $32, $80, $00, $00, $60
	DB $60, $2e, $80, $00, $00, $68, $38, $3c, $80, $00, $00, $60, $60, $3a, $80, $00
	DB $00, $68, $38, $30, $80, $00, $80, $3f, $40, $44, $00, $00, $80, $3f, $20, $4a
	DB $00, $00, $80, $3f, $30, $46, $00, $00, $80, $77, $20, $48, $00, $00, $80, $87
	DB $48, $4c, $00, $00, $80, $87, $58, $4e, $00, $00, $80, $67, $4d, $50, $00, $00
	DB $80, $67, $5d, $52, $00, $00, $80, $8f, $88, $54, $00, $00, $80, $8f, $98, $55
	DB $00, $00, $00, $5f, $57, $2c, $00, $00, $80, $80, $50, $34, $00, $00, $80, $80
	DB $60, $34, $00, $20, $00, $6f, $57, $58, $00, $00, $80, $80, $55, $34, $00, $00
	DB $80, $80, $5b, $34, $00, $20

Fill_SCRN0_with_2f::
	ld hl, $9bff                                     ; $2795: $21 $ff $9b

Call_000_2798:
	ld bc, $0400                                     ; $2798: $01 $00 $04

jr_000_279b:
	ld a, $2f                                        ; $279b: $3e $2f
	ld [hl-], a                                      ; $279d: $32
	dec bc                                           ; $279e: $0b
	ld a, b                                          ; $279f: $78
	or c                                             ; $27a0: $b1
	jr nz, jr_000_279b                               ; $27a1: $20 $f8

	ret                                              ; $27a3: $c9


BC_is_Length_of_data::
	ld a, [hl+]                                      ; $27a4: $2a
	ld [de], a                                       ; $27a5: $12
	inc de                                           ; $27a6: $13
	dec bc                                           ; $27a7: $0b
	ld a, b                                          ; $27a8: $78
	or c                                             ; $27a9: $b1
	jr nz, BC_is_Length_of_data                      ; $27aa: $20 $f8

	ret                                              ; $27ac: $c9


Screen_memory_update::
	call Copy_characters_with_only_two_colors        ; $27ad: $cd $c3 $27
	ld bc, $00a0                                     ; $27b0: $01 $a0 $00
	call BC_is_Length_of_data                        ; $27b3: $cd $a4 $27
	ld hl, $323f                                     ; $27b6: $21 $3f $32
	ld de, $8300                                     ; $27b9: $11 $00 $83
	ld bc, $0d00                                     ; $27bc: $01 $00 $0d
	call BC_is_Length_of_data                        ; $27bf: $cd $a4 $27
	ret                                              ; $27c2: $c9


Copy_characters_with_only_two_colors::
	ld hl, Character_Set                             ; $27c3: $21 $5f $41
	ld bc, $0138                                     ; $27c6: $01 $38 $01
	ld de, $8000                                     ; $27c9: $11 $00 $80

jr_000_27cc:
	ld a, [hl+]                                      ; $27cc: $2a
	ld [de], a                                       ; $27cd: $12
	inc de                                           ; $27ce: $13
	ld [de], a                                       ; $27cf: $12
	inc de                                           ; $27d0: $13
	dec bc                                           ; $27d1: $0b
	ld a, b                                          ; $27d2: $78
	or c                                             ; $27d3: $b1
	jr nz, jr_000_27cc                               ; $27d4: $20 $f6

	ret                                              ; $27d6: $c9


Copy_character_set_to_character_ram::
	call Copy_characters_with_only_two_colors        ; $27d7: $cd $c3 $27
	ld bc, $0da0                                     ; $27da: $01 $a0 $0d
	call BC_is_Length_of_data                        ; $27dd: $cd $a4 $27
	ret                                              ; $27e0: $c9


This_instruction_is_not_used::
	ld bc, $1000                                     ; $27e1: $01 $00 $10

Call_000_27e4:
	ld de, $8000                                     ; $27e4: $11 $00 $80
	call BC_is_Length_of_data                        ; $27e7: $cd $a4 $27
	ret                                              ; $27ea: $c9


Copy_a_screen_from_DE_to_screen_ram::
	ld hl, $9800                                     ; $27eb: $21 $00 $98

Call_000_27ee:
	ld b, $12                                        ; $27ee: $06 $12

Call_000_27f0:
jr_000_27f0:
	push hl                                          ; $27f0: $e5
	ld c, $14                                        ; $27f1: $0e $14

jr_000_27f3:
	ld a, [de]                                       ; $27f3: $1a
	ld [hl+], a                                      ; $27f4: $22
	inc de                                           ; $27f5: $13
	dec c                                            ; $27f6: $0d
	jr nz, jr_000_27f3                               ; $27f7: $20 $fa

	pop hl                                           ; $27f9: $e1
	push de                                          ; $27fa: $d5
	ld de, $0020                                     ; $27fb: $11 $20 $00
	add hl, de                                       ; $27fe: $19
	pop de                                           ; $27ff: $d1
	dec b                                            ; $2800: $05
	jr nz, jr_000_27f0                               ; $2801: $20 $ed

	ret                                              ; $2803: $c9


Call_000_2804:
jr_000_2804:
	ld b, $0a                                        ; $2804: $06 $0a
	push hl                                          ; $2806: $e5

jr_000_2807:
	ld a, [de]                                       ; $2807: $1a
	cp $ff                                           ; $2808: $fe $ff
	jr z, jr_000_281a                                ; $280a: $28 $0e

	ld [hl+], a                                      ; $280c: $22
	inc de                                           ; $280d: $13
	dec b                                            ; $280e: $05
	jr nz, jr_000_2807                               ; $280f: $20 $f6

	pop hl                                           ; $2811: $e1
	push de                                          ; $2812: $d5
	ld de, $0020                                     ; $2813: $11 $20 $00
	add hl, de                                       ; $2816: $19
	pop de                                           ; $2817: $d1
	jr jr_000_2804                                   ; $2818: $18 $ea

jr_000_281a:
	pop hl                                           ; $281a: $e1
	ld a, $02                                        ; $281b: $3e $02
	ldh [$e3], a                                     ; $281d: $e0 $e3
	ret                                              ; $281f: $c9


Prepare_for_screen_memory_update_by_halting_LCD_controller::
	ldh a, [rIE]                                     ; $2820: $f0 $ff
	ldh [$a1], a                                     ; $2822: $e0 $a1
	res 0, a                                         ; $2824: $cb $87

Disable_VBlank_interrupt::
	ldh [rIE], a                                     ; $2826: $e0 $ff

jr_000_2828:
	ldh a, [rLY]                                     ; $2828: $f0 $44
	cp $91                                           ; $282a: $fe $91
	jr nz, jr_000_2828                               ; $282c: $20 $fa

	ldh a, [rLCDC]                                   ; $282e: $f0 $40
	and $7f                                          ; $2830: $e6 $7f
	ldh [rLCDC], a                                   ; $2832: $e0 $40
	ldh a, [$a1]                                     ; $2834: $f0 $a1
	ldh [rIE], a                                     ; $2836: $e0 $ff
	ret                                              ; $2838: $c9


	DB $2f, $2f, $11, $12, $1d, $2f, $2f, $2f, $2f, $2f, $29, $29, $29, $2f, $2f, $2f
	DB $2f, $1c, $1d, $0a, $1b, $1d, $2f, $2f, $2f, $29, $29, $29, $29, $29, $2f, $2f
	DB $2f, $2f, $2f, $1d, $18, $2f, $2f, $2f, $2f, $2f, $2f, $29, $29, $2f, $2f, $2f
	DB $0c, $18, $17, $1d, $12, $17, $1e, $0e, $29, $29, $29, $29, $29, $29, $29, $29
	DB $2f, $2f, $10, $0a, $16, $0e, $2f, $2f, $2f, $2f, $29, $29, $29, $29, $2f, $2f
	DB $1c, $12, $17, $10, $15, $0e, $2f, $2f, $2f, $2f, $2f, $00, $2f, $26, $2f, $04
	DB $00, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $0d, $18
	DB $1e, $0b, $15, $0e, $2f, $2f, $2f, $2f, $2f, $00, $2f, $26, $2f, $01, $00, $00
	DB $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $1d, $1b, $12, $19
	DB $15, $0e, $2f, $2f, $2f, $2f, $2f, $00, $2f, $26, $2f, $03, $00, $00, $2f, $2f
	DB $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $1d, $0e, $1d, $1b, $12, $1c
	DB $2f, $2f, $2f, $2f, $2f, $00, $2f, $26, $2f, $01, $02, $00, $00, $2f, $2f, $2f
	DB $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $0d, $1b, $18, $19, $1c, $2f, $2f, $2f
	DB $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $00, $2f, $2f, $2f, $2f, $2f
	DB $2f, $2f, $2f, $2f, $2f, $2f, $29, $29, $29, $29, $29, $29, $29, $29, $29, $29
	DB $1d, $11, $12, $1c, $2f, $1c, $1d, $0a, $10, $0e, $2f, $2f, $2f, $2f, $2f, $2f
	DB $2f, $2f, $00, $2f, $ff, $61, $62, $62, $62, $62, $62, $62, $63, $64, $2f, $2f
	DB $2f, $2f, $2f, $2f, $65, $64, $2f, $10, $0a, $16, $0e, $2f, $65, $64, $2f, $ad
	DB $ad, $ad, $ad, $2f, $65, $64, $2f, $18, $1f, $0e, $1b, $2f, $65, $64, $2f, $ad
	DB $ad, $ad, $ad, $2f, $65, $66, $69, $69, $69, $69, $69, $69, $6a, $19, $15, $0e
	DB $0a, $1c, $0e, $2f, $2f, $29, $29, $29, $29, $29, $29, $2f, $2f, $2f, $1d, $1b
	DB $22, $2f, $2f, $2f, $2f, $2f, $29, $29, $29, $2f, $2f, $2f, $2f, $2f, $2f, $0a
	DB $10, $0a, $12, $17, $27, $2f, $2f, $29, $29, $29, $29, $29, $2f

Read_buttons_and_return_value_at_ff81::
	ld a, $20                                        ; $29a6: $3e $20
	ldh [rP1], a                                     ; $29a8: $e0 $00
	ldh a, [rP1]                                     ; $29aa: $f0 $00
	ldh a, [rP1]                                     ; $29ac: $f0 $00
	ldh a, [rP1]                                     ; $29ae: $f0 $00
	ldh a, [rP1]                                     ; $29b0: $f0 $00
	cpl                                              ; $29b2: $2f
	and $0f                                          ; $29b3: $e6 $0f
	swap a                                           ; $29b5: $cb $37
	ld b, a                                          ; $29b7: $47
	ld a, $10                                        ; $29b8: $3e $10
	ldh [rP1], a                                     ; $29ba: $e0 $00
	ldh a, [rP1]                                     ; $29bc: $f0 $00
	ldh a, [rP1]                                     ; $29be: $f0 $00
	ldh a, [rP1]                                     ; $29c0: $f0 $00
	ldh a, [rP1]                                     ; $29c2: $f0 $00
	ldh a, [rP1]                                     ; $29c4: $f0 $00
	ldh a, [rP1]                                     ; $29c6: $f0 $00
	ldh a, [rP1]                                     ; $29c8: $f0 $00
	ldh a, [rP1]                                     ; $29ca: $f0 $00
	ldh a, [rP1]                                     ; $29cc: $f0 $00
	ldh a, [rP1]                                     ; $29ce: $f0 $00
	cpl                                              ; $29d0: $2f
	and $0f                                          ; $29d1: $e6 $0f
	or b                                             ; $29d3: $b0

	ld c, a                                          ; $29d4: $4f
	ldh a, [$80]                                     ; $29d5: $f0 $80
	xor c                                            ; $29d7: $a9
	and c                                            ; $29d8: $a1
	ldh [$81], a                                     ; $29d9: $e0 $81
	ld a, c                                          ; $29db: $79
	ldh [$80], a                                     ; $29dc: $e0 $80
	ld a, $30                                        ; $29de: $3e $30
	ldh [rP1], a                                     ; $29e0: $e0 $00
	ret                                              ; $29e2: $c9


Call_000_29e3:
	ldh a, [$b2]                                     ; $29e3: $f0 $b2
	sub $10                                          ; $29e5: $d6 $10
	srl a                                            ; $29e7: $cb $3f
	srl a                                            ; $29e9: $cb $3f
	srl a                                            ; $29eb: $cb $3f
	ld de, $0000                                     ; $29ed: $11 $00 $00
	ld e, a                                          ; $29f0: $5f
	ld hl, $9800                                     ; $29f1: $21 $00 $98
	ld b, $20                                        ; $29f4: $06 $20

jr_000_29f6:
	add hl, de                                       ; $29f6: $19
	dec b                                            ; $29f7: $05
	jr nz, jr_000_29f6                               ; $29f8: $20 $fc

	ldh a, [$b3]                                     ; $29fa: $f0 $b3
	sub $08                                          ; $29fc: $d6 $08
	srl a                                            ; $29fe: $cb $3f
	srl a                                            ; $2a00: $cb $3f
	srl a                                            ; $2a02: $cb $3f
	ld de, $0000                                     ; $2a04: $11 $00 $00
	ld e, a                                          ; $2a07: $5f
	add hl, de                                       ; $2a08: $19
	ld a, h                                          ; $2a09: $7c
	ldh [$b5], a                                     ; $2a0a: $e0 $b5
	ld a, l                                          ; $2a0c: $7d
	ldh [$b4], a                                     ; $2a0d: $e0 $b4
	ret                                              ; $2a0f: $c9


;This_routine_is_not_used::
	ldh a, [$b5]                                     ; $2a10: $f0 $b5
	ld d, a                                          ; $2a12: $57
	ldh a, [$b4]                                     ; $2a13: $f0 $b4
	ld e, a                                          ; $2a15: $5f
	ld b, $04                                        ; $2a16: $06 $04

jr_000_2a18:
	rr d                                             ; $2a18: $cb $1a
	rr e                                             ; $2a1a: $cb $1b
	dec b                                            ; $2a1c: $05
	jr nz, jr_000_2a18                               ; $2a1d: $20 $f9

	ld a, e                                          ; $2a1f: $7b
	sub $84                                          ; $2a20: $d6 $84
	and $fe                                          ; $2a22: $e6 $fe
	rlca                                             ; $2a24: $07
	rlca                                             ; $2a25: $07
	add $08                                          ; $2a26: $c6 $08
	ldh [$b2], a                                     ; $2a28: $e0 $b2
	ldh a, [$b4]                                     ; $2a2a: $f0 $b4
	and $1f                                          ; $2a2c: $e6 $1f
	rla                                              ; $2a2e: $17
	rla                                              ; $2a2f: $17
	rla                                              ; $2a30: $17
	add $08                                          ; $2a31: $c6 $08
	ldh [$b3], a                                     ; $2a33: $e0 $b3
	ret                                              ; $2a35: $c9


Call_000_2a36:
	ldh a, [$e0]                                     ; $2a36: $f0 $e0
	and a                                            ; $2a38: $a7
	ret z                                            ; $2a39: $c8

Call_000_2a3a:
	ld c, $03                                        ; $2a3a: $0e $03

Call_000_2a3c:
	xor a                                            ; $2a3c: $af
	ldh [$e0], a                                     ; $2a3d: $e0 $e0

jr_000_2a3f:
	ld a, [de]                                       ; $2a3f: $1a
	ld b, a                                          ; $2a40: $47
	swap a                                           ; $2a41: $cb $37
	and $0f                                          ; $2a43: $e6 $0f
	jr nz, jr_000_2a6f                               ; $2a45: $20 $28

	ldh a, [$e0]                                     ; $2a47: $f0 $e0
	and a                                            ; $2a49: $a7
	ld a, $00                                        ; $2a4a: $3e $00
	jr nz, jr_000_2a50                               ; $2a4c: $20 $02

	ld a, $2f                                        ; $2a4e: $3e $2f

jr_000_2a50:
	ld [hl+], a                                      ; $2a50: $22
	ld a, b                                          ; $2a51: $78
	and $0f                                          ; $2a52: $e6 $0f
	jr nz, jr_000_2a77                               ; $2a54: $20 $21

	ldh a, [$e0]                                     ; $2a56: $f0 $e0
	and a                                            ; $2a58: $a7
	ld a, $00                                        ; $2a59: $3e $00
	jr nz, jr_000_2a66                               ; $2a5b: $20 $09

	ld a, $01                                        ; $2a5d: $3e $01
	cp c                                             ; $2a5f: $b9
	ld a, $00                                        ; $2a60: $3e $00
	jr z, jr_000_2a66                                ; $2a62: $28 $02

	ld a, $2f                                        ; $2a64: $3e $2f

jr_000_2a66:
	ld [hl+], a                                      ; $2a66: $22
	dec e                                            ; $2a67: $1d
	dec c                                            ; $2a68: $0d
	jr nz, jr_000_2a3f                               ; $2a69: $20 $d4

	xor a                                            ; $2a6b: $af
	ldh [$e0], a                                     ; $2a6c: $e0 $e0
	ret                                              ; $2a6e: $c9


jr_000_2a6f:
	push af                                          ; $2a6f: $f5
	ld a, $01                                        ; $2a70: $3e $01
	ldh [$e0], a                                     ; $2a72: $e0 $e0
	pop af                                           ; $2a74: $f1
	jr jr_000_2a50                                   ; $2a75: $18 $d9

jr_000_2a77:
	push af                                          ; $2a77: $f5
	ld a, $01                                        ; $2a78: $3e $01
	ldh [$e0], a                                     ; $2a7a: $e0 $e0
	pop af                                           ; $2a7c: $f1
	jr jr_000_2a66                                   ; $2a7d: $18 $e7

Initiate_DMA_transfer_from_c000_to_fe00::
	ld a, $c0                                        ; $2a7f: $3e $c0
	ldh [rDMA], a                                    ; $2a81: $e0 $46
	ld a, $28                                        ; $2a83: $3e $28

jr_000_2a85:
	dec a                                            ; $2a85: $3d
	jr nz, jr_000_2a85                               ; $2a86: $20 $fd

	ret                                              ; $2a88: $c9


Call_000_2a89:
jr_000_2a89:
	ld a, h                                          ; $2a89: $7c
	ldh [$96], a                                     ; $2a8a: $e0 $96
	ld a, l                                          ; $2a8c: $7d
	ldh [$97], a                                     ; $2a8d: $e0 $97
	ld a, [hl]                                       ; $2a8f: $7e
	and a                                            ; $2a90: $a7
	jr z, jr_000_2ab0                                ; $2a91: $28 $1d

	cp $80                                           ; $2a93: $fe $80
	jr z, jr_000_2aae                                ; $2a95: $28 $17

jr_000_2a97:
	ldh a, [$96]                                     ; $2a97: $f0 $96
	ld h, a                                          ; $2a99: $67
	ldh a, [$97]                                     ; $2a9a: $f0 $97
	ld l, a                                          ; $2a9c: $6f
	ld de, $0010                                     ; $2a9d: $11 $10 $00
	add hl, de                                       ; $2aa0: $19
	ldh a, [$8f]                                     ; $2aa1: $f0 $8f
	dec a                                            ; $2aa3: $3d
	ldh [$8f], a                                     ; $2aa4: $e0 $8f
	ret z                                            ; $2aa6: $c8

	jr jr_000_2a89                                   ; $2aa7: $18 $e0

jr_000_2aa9:
	xor a                                            ; $2aa9: $af
	ldh [$95], a                                     ; $2aaa: $e0 $95
	jr jr_000_2a97                                   ; $2aac: $18 $e9

jr_000_2aae:
	ldh [$95], a                                     ; $2aae: $e0 $95

jr_000_2ab0:
	ld b, $07                                        ; $2ab0: $06 $07
	ld de, $ff86                                     ; $2ab2: $11 $86 $ff

jr_000_2ab5:
	ld a, [hl+]                                      ; $2ab5: $2a
	ld [de], a                                       ; $2ab6: $12
	inc de                                           ; $2ab7: $13
	dec b                                            ; $2ab8: $05
	jr nz, jr_000_2ab5                               ; $2ab9: $20 $fa

	ldh a, [$89]                                     ; $2abb: $f0 $89
	ld hl, $2b64                                     ; $2abd: $21 $64 $2b
	rlca                                             ; $2ac0: $07
	ld e, a                                          ; $2ac1: $5f
	ld d, $00                                        ; $2ac2: $16 $00
	add hl, de                                       ; $2ac4: $19
	ld e, [hl]                                       ; $2ac5: $5e
	inc hl                                           ; $2ac6: $23
	ld d, [hl]                                       ; $2ac7: $56
	ld a, [de]                                       ; $2ac8: $1a
	ld l, a                                          ; $2ac9: $6f
	inc de                                           ; $2aca: $13
	ld a, [de]                                       ; $2acb: $1a
	ld h, a                                          ; $2acc: $67
	inc de                                           ; $2acd: $13
	ld a, [de]                                       ; $2ace: $1a
	ldh [$90], a                                     ; $2acf: $e0 $90
	inc de                                           ; $2ad1: $13
	ld a, [de]                                       ; $2ad2: $1a
	ldh [$91], a                                     ; $2ad3: $e0 $91
	ld e, [hl]                                       ; $2ad5: $5e
	inc hl                                           ; $2ad6: $23
	ld d, [hl]                                       ; $2ad7: $56

Jump_000_2ad8:
jr_000_2ad8:
	inc hl                                           ; $2ad8: $23
	ldh a, [$8c]                                     ; $2ad9: $f0 $8c
	ldh [$94], a                                     ; $2adb: $e0 $94
	ld a, [hl]                                       ; $2add: $7e
	cp $ff                                           ; $2ade: $fe $ff
	jr z, jr_000_2aa9                                ; $2ae0: $28 $c7

	cp $fd                                           ; $2ae2: $fe $fd
	jr nz, jr_000_2af4                               ; $2ae4: $20 $0e

	ldh a, [$8c]                                     ; $2ae6: $f0 $8c
	xor $20                                          ; $2ae8: $ee $20
	ldh [$94], a                                     ; $2aea: $e0 $94
	inc hl                                           ; $2aec: $23
	ld a, [hl]                                       ; $2aed: $7e
	jr jr_000_2af8                                   ; $2aee: $18 $08

jr_000_2af0:
	inc de                                           ; $2af0: $13
	inc de                                           ; $2af1: $13
	jr jr_000_2ad8                                   ; $2af2: $18 $e4

jr_000_2af4:
	cp $fe                                           ; $2af4: $fe $fe
	jr z, jr_000_2af0                                ; $2af6: $28 $f8

jr_000_2af8:
	ldh [$89], a                                     ; $2af8: $e0 $89
	ldh a, [$87]                                     ; $2afa: $f0 $87
	ld b, a                                          ; $2afc: $47
	ld a, [de]                                       ; $2afd: $1a
	ld c, a                                          ; $2afe: $4f
	ldh a, [$8b]                                     ; $2aff: $f0 $8b
	bit 6, a                                         ; $2b01: $cb $77
	jr nz, jr_000_2b0b                               ; $2b03: $20 $06

	ldh a, [$90]                                     ; $2b05: $f0 $90
	add b                                            ; $2b07: $80
	adc c                                            ; $2b08: $89
	jr jr_000_2b15                                   ; $2b09: $18 $0a

jr_000_2b0b:
	ld a, b                                          ; $2b0b: $78
	push af                                          ; $2b0c: $f5
	ldh a, [$90]                                     ; $2b0d: $f0 $90
	ld b, a                                          ; $2b0f: $47
	pop af                                           ; $2b10: $f1
	sub b                                            ; $2b11: $90
	sbc c                                            ; $2b12: $99
	sbc $08                                          ; $2b13: $de $08

jr_000_2b15:
	ldh [$93], a                                     ; $2b15: $e0 $93
	ldh a, [$88]                                     ; $2b17: $f0 $88
	ld b, a                                          ; $2b19: $47
	inc de                                           ; $2b1a: $13
	ld a, [de]                                       ; $2b1b: $1a
	inc de                                           ; $2b1c: $13
	ld c, a                                          ; $2b1d: $4f
	ldh a, [$8b]                                     ; $2b1e: $f0 $8b
	bit 5, a                                         ; $2b20: $cb $6f
	jr nz, jr_000_2b2a                               ; $2b22: $20 $06

	ldh a, [$91]                                     ; $2b24: $f0 $91
	add b                                            ; $2b26: $80
	adc c                                            ; $2b27: $89
	jr jr_000_2b34                                   ; $2b28: $18 $0a

jr_000_2b2a:
	ld a, b                                          ; $2b2a: $78
	push af                                          ; $2b2b: $f5
	ldh a, [$91]                                     ; $2b2c: $f0 $91
	ld b, a                                          ; $2b2e: $47
	pop af                                           ; $2b2f: $f1
	sub b                                            ; $2b30: $90
	sbc c                                            ; $2b31: $99
	sbc $08                                          ; $2b32: $de $08

jr_000_2b34:
	ldh [$92], a                                     ; $2b34: $e0 $92
	push hl                                          ; $2b36: $e5
	ldh a, [$8d]                                     ; $2b37: $f0 $8d
	ld h, a                                          ; $2b39: $67
	ldh a, [$8e]                                     ; $2b3a: $f0 $8e
	ld l, a                                          ; $2b3c: $6f
	ldh a, [$95]                                     ; $2b3d: $f0 $95
	and a                                            ; $2b3f: $a7
	jr z, jr_000_2b46                                ; $2b40: $28 $04

	ld a, $ff                                        ; $2b42: $3e $ff
	jr jr_000_2b48                                   ; $2b44: $18 $02

jr_000_2b46:
	ldh a, [$93]                                     ; $2b46: $f0 $93

jr_000_2b48:
	ld [hl+], a                                      ; $2b48: $22
	ldh a, [$92]                                     ; $2b49: $f0 $92
	ld [hl+], a                                      ; $2b4b: $22
	ldh a, [$89]                                     ; $2b4c: $f0 $89
	ld [hl+], a                                      ; $2b4e: $22
	ldh a, [$94]                                     ; $2b4f: $f0 $94
	ld b, a                                          ; $2b51: $47
	ldh a, [$8b]                                     ; $2b52: $f0 $8b
	or b                                             ; $2b54: $b0
	ld b, a                                          ; $2b55: $47
	ldh a, [$8a]                                     ; $2b56: $f0 $8a
	or b                                             ; $2b58: $b0
	ld [hl+], a                                      ; $2b59: $22
	ld a, h                                          ; $2b5a: $7c
	ldh [$8d], a                                     ; $2b5b: $e0 $8d
	ld a, l                                          ; $2b5d: $7d
	ldh [$8e], a                                     ; $2b5e: $e0 $8e
	pop hl                                           ; $2b60: $e1
	jp Jump_000_2ad8                                 ; $2b61: $c3 $d8 $2a


	jr nz, jr_000_2b92                               ; $2b64: $20 $2c

	inc h                                            ; $2b66: $24
	inc l                                            ; $2b67: $2c
	jr z, jr_000_2b96                                ; $2b68: $28 $2c

	inc l                                            ; $2b6a: $2c
	inc l                                            ; $2b6b: $2c
	jr nc, jr_000_2b9a                               ; $2b6c: $30 $2c

	inc [hl]                                         ; $2b6e: $34
	inc l                                            ; $2b6f: $2c
	jr c, jr_000_2b9e                                ; $2b70: $38 $2c

	inc a                                            ; $2b72: $3c
	inc l                                            ; $2b73: $2c
	ld b, b                                          ; $2b74: $40
	inc l                                            ; $2b75: $2c
	ld b, h                                          ; $2b76: $44
	inc l                                            ; $2b77: $2c
	ld c, b                                          ; $2b78: $48
	inc l                                            ; $2b79: $2c
	ld c, h                                          ; $2b7a: $4c
	inc l                                            ; $2b7b: $2c
	ld d, b                                          ; $2b7c: $50
	inc l                                            ; $2b7d: $2c
	ld d, h                                          ; $2b7e: $54
	inc l                                            ; $2b7f: $2c
	ld e, b                                          ; $2b80: $58
	inc l                                            ; $2b81: $2c
	ld e, h                                          ; $2b82: $5c
	inc l                                            ; $2b83: $2c
	ld h, b                                          ; $2b84: $60
	inc l                                            ; $2b85: $2c
	ld h, h                                          ; $2b86: $64
	inc l                                            ; $2b87: $2c
	ld l, b                                          ; $2b88: $68
	inc l                                            ; $2b89: $2c
	ld l, h                                          ; $2b8a: $6c

jr_000_2b8b:
	inc l                                            ; $2b8b: $2c
	ld [hl], b                                       ; $2b8c: $70
	inc l                                            ; $2b8d: $2c
	ld [hl], h                                       ; $2b8e: $74
	inc l                                            ; $2b8f: $2c
	ld a, b                                          ; $2b90: $78
	inc l                                            ; $2b91: $2c

jr_000_2b92:
	ld a, h                                          ; $2b92: $7c
	inc l                                            ; $2b93: $2c
	add b                                            ; $2b94: $80
	inc l                                            ; $2b95: $2c

jr_000_2b96:
	add h                                            ; $2b96: $84
	inc l                                            ; $2b97: $2c
	adc b                                            ; $2b98: $88
	inc l                                            ; $2b99: $2c

jr_000_2b9a:
	adc h                                            ; $2b9a: $8c
	inc l                                            ; $2b9b: $2c
	sub b                                            ; $2b9c: $90
	inc l                                            ; $2b9d: $2c

jr_000_2b9e:
	sub h                                            ; $2b9e: $94
	inc l                                            ; $2b9f: $2c
	sbc b                                            ; $2ba0: $98
	inc l                                            ; $2ba1: $2c
	sbc h                                            ; $2ba2: $9c
	inc l                                            ; $2ba3: $2c
	and b                                            ; $2ba4: $a0
	inc l                                            ; $2ba5: $2c
	and h                                            ; $2ba6: $a4
	inc l                                            ; $2ba7: $2c
	xor b                                            ; $2ba8: $a8
	inc l                                            ; $2ba9: $2c
	xor h                                            ; $2baa: $ac
	inc l                                            ; $2bab: $2c
	or b                                             ; $2bac: $b0
	inc l                                            ; $2bad: $2c
	or h                                             ; $2bae: $b4
	inc l                                            ; $2baf: $2c
	cp b                                             ; $2bb0: $b8
	inc l                                            ; $2bb1: $2c
	cp h                                             ; $2bb2: $bc
	inc l                                            ; $2bb3: $2c
	ret nz                                           ; $2bb4: $c0

	inc l                                            ; $2bb5: $2c
	call nz, $c82c                                   ; $2bb6: $c4 $2c $c8

jr_000_2bb9:
	inc l                                            ; $2bb9: $2c
	call z, $c72c                                    ; $2bba: $cc $2c $c7
	jr nc, jr_000_2b8b                               ; $2bbd: $30 $cc

	inc l                                            ; $2bbf: $2c
	ret nc                                           ; $2bc0: $d0

	inc l                                            ; $2bc1: $2c
	call nc, $d82c                                   ; $2bc2: $d4 $2c $d8
	inc l                                            ; $2bc5: $2c
	call c, $e02c                                    ; $2bc6: $dc $2c $e0

jr_000_2bc9:
	inc l                                            ; $2bc9: $2c
	DB $e4                                           ; $2bca: $e4
	inc l                                            ; $2bcb: $2c
	ld [$ee30], a                                    ; $2bcc: $ea $30 $ee
	jr nc, jr_000_2bb9                               ; $2bcf: $30 $e8

	inc l                                            ; $2bd1: $2c
	DB $ec                                           ; $2bd2: $ec
	inc l                                            ; $2bd3: $2c
	ld a, [c]                                        ; $2bd4: $f2
	jr nc, @-$08                                     ; $2bd5: $30 $f6

	jr nc, jr_000_2bc9                               ; $2bd7: $30 $f0

	inc l                                            ; $2bd9: $2c
	DB $f4                                           ; $2bda: $f4
	inc l                                            ; $2bdb: $2c
	ld hl, sp+$2c                                    ; $2bdc: $f8 $2c
	DB $fc                                           ; $2bde: $fc
	inc l                                            ; $2bdf: $2c
	nop                                              ; $2be0: $00
	dec l                                            ; $2be1: $2d
	inc b                                            ; $2be2: $04
	dec l                                            ; $2be3: $2d
	ld a, [$fe30]                                    ; $2be4: $fa $30 $fe
	jr nc, jr_000_2bed                               ; $2be7: $30 $04

	dec l                                            ; $2be9: $2d
	ld [$082d], sp                                   ; $2bea: $08 $2d $08

jr_000_2bed:
	dec l                                            ; $2bed: $2d
	inc c                                            ; $2bee: $0c
	dec l                                            ; $2bef: $2d
	DB $10                                           ; $2bf0: $10
	dec l                                            ; $2bf1: $2d
	inc d                                            ; $2bf2: $14
	dec l                                            ; $2bf3: $2d
	jr jr_000_2c23                                   ; $2bf4: $18 $2d

	inc e                                            ; $2bf6: $1c
	dec l                                            ; $2bf7: $2d
	jr nz, jr_000_2c27                               ; $2bf8: $20 $2d

	inc h                                            ; $2bfa: $24
	dec l                                            ; $2bfb: $2d
	jr z, jr_000_2c2b                                ; $2bfc: $28 $2d

	inc l                                            ; $2bfe: $2c
	dec l                                            ; $2bff: $2d
	jr nc, jr_000_2c2f                               ; $2c00: $30 $2d

	inc [hl]                                         ; $2c02: $34
	dec l                                            ; $2c03: $2d
	jr c, jr_000_2c33                                ; $2c04: $38 $2d

	inc a                                            ; $2c06: $3c
	dec l                                            ; $2c07: $2d
	ld b, b                                          ; $2c08: $40
	dec l                                            ; $2c09: $2d
	ld b, h                                          ; $2c0a: $44
	dec l                                            ; $2c0b: $2d
	ld c, b                                          ; $2c0c: $48
	dec l                                            ; $2c0d: $2d
	ld c, h                                          ; $2c0e: $4c
	dec l                                            ; $2c0f: $2d
	ld d, b                                          ; $2c10: $50
	dec l                                            ; $2c11: $2d
	ld d, h                                          ; $2c12: $54
	dec l                                            ; $2c13: $2d
	ld a, [bc]                                       ; $2c14: $0a
	ld sp, $310e                                     ; $2c15: $31 $0e $31
	ld [de], a                                       ; $2c18: $12
	ld sp, $3112                                     ; $2c19: $31 $12 $31
	ld [bc], a                                       ; $2c1c: $02
	ld sp, $3106                                     ; $2c1d: $31 $06 $31
	ld e, b                                          ; $2c20: $58
	dec l                                            ; $2c21: $2d
	rst $28                                          ; $2c22: $ef

jr_000_2c23:
	ldh a, [rBCPS]                                   ; $2c23: $f0 $68
	dec l                                            ; $2c25: $2d
	rst $28                                          ; $2c26: $ef

jr_000_2c27:
	ldh a, [$7a]                                     ; $2c27: $f0 $7a
	dec l                                            ; $2c29: $2d
	rst $28                                          ; $2c2a: $ef

jr_000_2c2b:
	ldh a, [$89]                                     ; $2c2b: $f0 $89
	dec l                                            ; $2c2d: $2d
	rst $28                                          ; $2c2e: $ef

jr_000_2c2f:
	ldh a, [$9a]                                     ; $2c2f: $f0 $9a
	dec l                                            ; $2c31: $2d
	rst $28                                          ; $2c32: $ef

jr_000_2c33:
	ldh a, [$ac]                                     ; $2c33: $f0 $ac
	dec l                                            ; $2c35: $2d
	rst $28                                          ; $2c36: $ef
	ldh a, [$bd]                                     ; $2c37: $f0 $bd
	dec l                                            ; $2c39: $2d
	rst $28                                          ; $2c3a: $ef
	ldh a, [$cb]                                     ; $2c3b: $f0 $cb
	dec l                                            ; $2c3d: $2d
	rst $28                                          ; $2c3e: $ef
	ldh a, [$dc]                                     ; $2c3f: $f0 $dc
	dec l                                            ; $2c41: $2d
	rst $28                                          ; $2c42: $ef
	ldh a, [$eb]                                     ; $2c43: $f0 $eb
	dec l                                            ; $2c45: $2d
	rst $28                                          ; $2c46: $ef
	ldh a, [$fc]                                     ; $2c47: $f0 $fc
	dec l                                            ; $2c49: $2d
	rst $28                                          ; $2c4a: $ef
	ldh a, [$0b]                                     ; $2c4b: $f0 $0b
	ld l, $ef                                        ; $2c4d: $2e $ef
	ldh a, [rNR32]                                   ; $2c4f: $f0 $1c
	ld l, $ef                                        ; $2c51: $2e $ef
	ldh a, [$2e]                                     ; $2c53: $f0 $2e
	ld l, $ef                                        ; $2c55: $2e $ef
	ldh a, [rLCDC]                                   ; $2c57: $f0 $40
	ld l, $ef                                        ; $2c59: $2e $ef
	ldh a, [rHDMA2]                                  ; $2c5b: $f0 $52
	ld l, $ef                                        ; $2c5d: $2e $ef
	ldh a, [$64]                                     ; $2c5f: $f0 $64
	ld l, $ef                                        ; $2c61: $2e $ef
	ldh a, [rPCM12]                                  ; $2c63: $f0 $76
	ld l, $ef                                        ; $2c65: $2e $ef
	ldh a, [$86]                                     ; $2c67: $f0 $86
	ld l, $ef                                        ; $2c69: $2e $ef
	ldh a, [$98]                                     ; $2c6b: $f0 $98
	ld l, $ef                                        ; $2c6d: $2e $ef
	ldh a, [$a8]                                     ; $2c6f: $f0 $a8
	ld l, $ef                                        ; $2c71: $2e $ef
	ldh a, [$b9]                                     ; $2c73: $f0 $b9
	ld l, $ef                                        ; $2c75: $2e $ef
	ldh a, [$ca]                                     ; $2c77: $f0 $ca
	ld l, $ef                                        ; $2c79: $2e $ef
	ldh a, [$db]                                     ; $2c7b: $f0 $db
	ld l, $ef                                        ; $2c7d: $2e $ef
	ldh a, [$0b]                                     ; $2c7f: $f0 $0b
	cpl                                              ; $2c81: $2f
	rst $28                                          ; $2c82: $ef
	ldh a, [rNR32]                                   ; $2c83: $f0 $1c
	cpl                                              ; $2c85: $2f
	rst $28                                          ; $2c86: $ef
	ldh a, [$ec]                                     ; $2c87: $f0 $ec
	ld l, $ef                                        ; $2c89: $2e $ef
	ldh a, [$fa]                                     ; $2c8b: $f0 $fa
	ld l, $ef                                        ; $2c8d: $2e $ef
	ldh a, [$2d]                                     ; $2c8f: $f0 $2d
	cpl                                              ; $2c91: $2f
	nop                                              ; $2c92: $00
	add sp, $36                                      ; $2c93: $e8 $36
	cpl                                              ; $2c95: $2f
	nop                                              ; $2c96: $00
	add sp, $3f                                      ; $2c97: $e8 $3f
	cpl                                              ; $2c99: $2f
	nop                                              ; $2c9a: $00
	add sp, $48                                      ; $2c9b: $e8 $48
	cpl                                              ; $2c9d: $2f
	nop                                              ; $2c9e: $00
	add sp, $51                                      ; $2c9f: $e8 $51
	cpl                                              ; $2ca1: $2f
	nop                                              ; $2ca2: $00
	nop                                              ; $2ca3: $00
	ld d, l                                          ; $2ca4: $55
	cpl                                              ; $2ca5: $2f
	nop                                              ; $2ca6: $00
	nop                                              ; $2ca7: $00
	ld e, c                                          ; $2ca8: $59
	cpl                                              ; $2ca9: $2f
	nop                                              ; $2caa: $00
	nop                                              ; $2cab: $00
	ld e, l                                          ; $2cac: $5d
	cpl                                              ; $2cad: $2f
	nop                                              ; $2cae: $00
	nop                                              ; $2caf: $00
	ld h, c                                          ; $2cb0: $61
	cpl                                              ; $2cb1: $2f
	nop                                              ; $2cb2: $00
	nop                                              ; $2cb3: $00
	ld h, l                                          ; $2cb4: $65
	cpl                                              ; $2cb5: $2f
	nop                                              ; $2cb6: $00
	nop                                              ; $2cb7: $00
	ld l, c                                          ; $2cb8: $69
	cpl                                              ; $2cb9: $2f
	nop                                              ; $2cba: $00
	nop                                              ; $2cbb: $00
	ld l, l                                          ; $2cbc: $6d
	cpl                                              ; $2cbd: $2f
	nop                                              ; $2cbe: $00
	nop                                              ; $2cbf: $00
	ld [hl], c                                       ; $2cc0: $71
	cpl                                              ; $2cc1: $2f
	nop                                              ; $2cc2: $00
	nop                                              ; $2cc3: $00
	ld [hl], l                                       ; $2cc4: $75
	cpl                                              ; $2cc5: $2f
	nop                                              ; $2cc6: $00
	nop                                              ; $2cc7: $00
	ld a, c                                          ; $2cc8: $79
	cpl                                              ; $2cc9: $2f
	ldh a, [$f8]                                     ; $2cca: $f0 $f8
	add h                                            ; $2ccc: $84
	cpl                                              ; $2ccd: $2f
	ldh a, [$f8]                                     ; $2cce: $f0 $f8
	adc a                                            ; $2cd0: $8f
	cpl                                              ; $2cd1: $2f
	ldh a, [$f0]                                     ; $2cd2: $f0 $f0
	and e                                            ; $2cd4: $a3
	cpl                                              ; $2cd5: $2f
	ldh a, [$f0]                                     ; $2cd6: $f0 $f0
	cp b                                             ; $2cd8: $b8
	cpl                                              ; $2cd9: $2f
	ld hl, sp-$08                                    ; $2cda: $f8 $f8
	pop bc                                           ; $2cdc: $c1
	cpl                                              ; $2cdd: $2f
	ld hl, sp-$08                                    ; $2cde: $f8 $f8
	jp z, $f82f                                      ; $2ce0: $ca $2f $f8

	ld hl, sp-$2f                                    ; $2ce3: $f8 $d1
	cpl                                              ; $2ce5: $2f
	ld hl, sp-$08                                    ; $2ce6: $f8 $f8
	ret c                                            ; $2ce8: $d8

	cpl                                              ; $2ce9: $2f
	ldh a, [$f8]                                     ; $2cea: $f0 $f8
	DB $e3                                           ; $2cec: $e3
	cpl                                              ; $2ced: $2f
	ldh a, [$f8]                                     ; $2cee: $f0 $f8
	xor $2f                                          ; $2cf0: $ee $2f
	ldh a, [$f0]                                     ; $2cf2: $f0 $f0
	inc bc                                           ; $2cf4: $03
	jr nc, @-$0e                                     ; $2cf5: $30 $f0

jr_000_2cf7:
	ldh a, [rNR24]                                   ; $2cf7: $f0 $19
	jr nc, @-$06                                     ; $2cf9: $30 $f8

jr_000_2cfb:
	ld hl, sp+$22                                    ; $2cfb: $f8 $22
	jr nc, jr_000_2cf7                               ; $2cfd: $30 $f8

jr_000_2cff:
	ld hl, sp+$2b                                    ; $2cff: $f8 $2b
	jr nc, jr_000_2cfb                               ; $2d01: $30 $f8

jr_000_2d03:
	ld hl, sp+$32                                    ; $2d03: $f8 $32
	jr nc, jr_000_2cff                               ; $2d05: $30 $f8

jr_000_2d07:
	ld hl, sp+$39                                    ; $2d07: $f8 $39
	jr nc, jr_000_2d03                               ; $2d09: $30 $f8

jr_000_2d0b:
	ld hl, sp+$40                                    ; $2d0b: $f8 $40
	jr nc, jr_000_2d07                               ; $2d0d: $30 $f8

jr_000_2d0f:
	ld hl, sp+$47                                    ; $2d0f: $f8 $47
	jr nc, jr_000_2d0b                               ; $2d11: $30 $f8

jr_000_2d13:
	ld hl, sp+$4e                                    ; $2d13: $f8 $4e
	jr nc, jr_000_2d0f                               ; $2d15: $30 $f8

jr_000_2d17:
	ld hl, sp+$55                                    ; $2d17: $f8 $55
	jr nc, jr_000_2d13                               ; $2d19: $30 $f8

jr_000_2d1b:
	ld hl, sp+$5c                                    ; $2d1b: $f8 $5c
	jr nc, jr_000_2d17                               ; $2d1d: $30 $f8

jr_000_2d1f:
	ld hl, sp+$67                                    ; $2d1f: $f8 $67
	jr nc, jr_000_2d1b                               ; $2d21: $30 $f8

jr_000_2d23:
	ld hl, sp+$6e                                    ; $2d23: $f8 $6e
	jr nc, jr_000_2d1f                               ; $2d25: $30 $f8

jr_000_2d27:
	ld hl, sp+$75                                    ; $2d27: $f8 $75
	jr nc, jr_000_2d23                               ; $2d29: $30 $f8

jr_000_2d2b:
	ld hl, sp+$7c                                    ; $2d2b: $f8 $7c
	jr nc, jr_000_2d27                               ; $2d2d: $30 $f8

jr_000_2d2f:
	ld hl, sp-$7d                                    ; $2d2f: $f8 $83
	jr nc, jr_000_2d2b                               ; $2d31: $30 $f8

jr_000_2d33:
	ld hl, sp-$74                                    ; $2d33: $f8 $8c
	jr nc, jr_000_2d2f                               ; $2d35: $30 $f8

jr_000_2d37:
	ld hl, sp-$6b                                    ; $2d37: $f8 $95
	jr nc, jr_000_2d33                               ; $2d39: $30 $f8

jr_000_2d3b:
	ld hl, sp-$62                                    ; $2d3b: $f8 $9e
	jr nc, jr_000_2d37                               ; $2d3d: $30 $f8

jr_000_2d3f:
	ld hl, sp-$59                                    ; $2d3f: $f8 $a7
	jr nc, jr_000_2d3b                               ; $2d41: $30 $f8

jr_000_2d43:
	ld hl, sp-$50                                    ; $2d43: $f8 $b0
	jr nc, jr_000_2d3f                               ; $2d45: $30 $f8

jr_000_2d47:
	ld hl, sp-$47                                    ; $2d47: $f8 $b9
	jr nc, jr_000_2d43                               ; $2d49: $30 $f8

	ld hl, sp-$40                                    ; $2d4b: $f8 $c0
	jr nc, jr_000_2d47                               ; $2d4d: $30 $f8

	ld hl, sp+$46                                    ; $2d4f: $f8 $46
	ld sp, $f0f0                                     ; $2d51: $31 $f0 $f0
	ld e, l                                          ; $2d54: $5d
	ld sp, $f8f8                                     ; $2d55: $31 $f8 $f8
	xor c                                            ; $2d58: $a9
	DB $31                                           ; $2d59: $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $84, $84, $84, $fe, $84, $ff, $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $84, $fe, $fe, $fe, $84, $fe, $fe, $fe, $84, $84, $ff
	DB $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $84, $fe, $84, $84, $84, $fe, $ff, $a9, $31

	DB $fe, $fe, $fe, $fe, $84, $84, $fe, $fe, $fe, $84, $fe, $fe, $fe, $84, $ff, $a9
	DB $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $81, $81, $81, $fe, $fe, $fe, $81, $ff
	DB $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $81, $81, $fe, $fe, $81, $fe, $fe, $fe, $81, $ff, $a9
	DB $31

	DB $fe, $fe, $fe, $fe, $81, $fe, $fe, $fe, $81, $81, $81, $ff, $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $81, $fe, $fe, $fe, $81, $fe, $fe, $81, $81, $ff, $a9
	DB $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $8a, $8b, $8b, $8f, $ff, $a9, $31

	DB $fe, $80, $fe, $fe, $fe, $88, $fe, $fe, $fe, $88, $fe, $fe, $fe, $89, $ff, $a9
	DB $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $8a, $8b, $8b, $8f, $ff, $a9, $31

	DB $fe, $80, $fe, $fe, $fe, $88, $fe, $fe, $fe, $88, $fe, $fe, $fe, $89, $ff, $a9
	DB $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $83, $83, $fe, $fe, $83, $83, $ff
	DB $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $83, $83, $fe, $fe, $83, $83, $ff
	DB $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $83, $83, $fe, $fe, $83, $83, $ff
	DB $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $83, $83, $fe, $fe, $83, $83, $ff
	DB $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $82, $82, $fe, $fe, $fe, $82, $82, $ff
	DB $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $82, $fe, $fe, $82, $82, $fe, $fe, $82, $ff, $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $82, $82, $fe, $fe, $fe, $82, $82, $ff
	DB $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $82, $fe, $fe, $82, $82, $fe, $fe, $82, $ff, $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $86, $86, $fe, $86, $86, $ff, $a9
	DB $31

	DB $fe, $fe, $fe, $fe, $86, $fe, $fe, $fe, $86, $86, $fe, $fe, $fe, $86, $ff, $a9
	DB $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $86, $86, $fe, $86, $86, $ff, $a9
	DB $31

	DB $fe, $fe, $fe, $fe, $86, $fe, $fe, $fe, $86, $86, $fe, $fe, $fe, $86, $ff, $a9
	DB $31

	DB $fe, $fe, $fe, $fe, $fe, $85, $fe, $fe, $85, $85, $85, $ff, $a9, $31

	DB $fe, $fe, $fe, $fe, $fe, $85, $fe, $fe, $85, $85, $fe, $fe, $fe, $85, $ff, $a9
	DB $31

	DB $fe, $fe, $fe, $fe, $fe, $fe, $fe, $fe, $85, $85, $85, $fe, $fe, $85, $ff, $a9
	DB $31

	DB $fe, $fe, $fe, $fe, $fe, $85, $fe, $fe, $fe, $85, $85, $fe, $fe, $85, $ff, $c9
	DB $31

	DB $0a, $25, $1d, $22, $19, $0e, $ff, $c9, $31

	DB $0b, $25, $1d, $22, $19, $0e, $ff, $c9, $31

	DB $0c, $25, $1d, $22, $19, $0e, $ff, $c9, $31

	DB $2f, $18, $0f, $0f, $2f, $2f, $ff, $c9, $31

	DB $00, $ff, $c9, $31

	DB $01, $ff, $c9, $31

	DB $02, $ff, $c9, $31

	DB $03, $ff, $c9, $31

	DB $04, $ff, $c9, $31

	DB $05, $ff, $c9, $31

	DB $06, $ff, $c9, $31

	DB $07, $ff, $c9, $31

	DB $08, $ff, $c9, $31

	DB $09, $ff, $d9, $31

	DB $2f, $01, $2f, $11, $20, $21, $30, $31, $ff, $d9, $31

	DB $2f, $03, $12, $13, $22, $23, $32, $33, $ff, $a9, $31

	DB $2f, $05, $fd, $05, $2f, $2f, $15, $04, $17, $24, $25, $26, $27, $34, $35, $36
	DB $2f, $ff, $a9, $31

	DB $08, $37, $fd, $37, $fd, $08, $18, $19, $14, $1b, $28, $29, $2a, $2b, $60, $70
	DB $36, $2f, $ff, $d9, $31

	DB $b9, $fd, $b9, $ba, $fd, $ba, $ff, $d9, $31

	DB $82, $fd, $82, $83, $fd, $83, $ff, $d9, $31

	DB $09, $0a, $3a, $3b, $ff, $d9, $31

	DB $0b, $40, $7c, $6f, $ff, $d9, $31

	DB $2f, $0f, $2f, $1f, $5f, $2c, $2f, $3f, $ff, $d9, $31

	DB $6c, $3c, $4b, $4c, $5b, $5c, $6b, $2f, $ff, $a9, $31

	DB $2f, $4d, $fd, $4d, $2f, $2f, $5d, $5e, $4e, $5f, $6d, $6e, $2f, $2f, $7d, $fd
	DB $7d, $2f, $ff, $a9, $31

	DB $08, $77, $fd, $77, $fd, $08, $18, $78, $43, $53, $7a, $7b, $50, $2f, $2f, $02
	DB $fd, $7d, $2f, $ff, $d9, $31

	DB $b9, $fd, $b9, $ba, $fd, $ba, $ff, $d9, $31

	DB $82, $fd, $82, $83, $fd, $83, $ff, $d9, $31

	DB $09, $0a, $3a, $3b, $ff, $d9, $31

	DB $0b, $40, $7c, $6f, $ff, $d9, $31

	DB $dc, $dd, $e0, $e1, $ff, $d9, $31

	DB $de, $df, $e0, $e1, $ff, $d9, $31

	DB $de, $e2, $e0, $e4, $ff, $d9, $31

	DB $dc, $ee, $e0, $e3, $ff, $d9, $31

	DB $e5, $e6, $e7, $e8, $ff, $d9, $31

	DB $fd, $e6, $fd, $e5, $fd, $e8, $fd, $e7, $ff, $d9, $31

	DB $e9, $ea, $eb, $ec, $ff, $d9, $31

	DB $ed, $ea, $eb, $ec, $ff, $d9, $31

	DB $f2, $f4, $f3, $bf, $ff, $d9, $31

	DB $f4, $f2, $bf, $f3, $ff, $d9, $31

	DB $c2, $fd, $c2, $c3, $fd, $c3, $ff, $d9, $31

	DB $c4, $fd, $c4, $c5, $fd, $c5, $ff, $d9, $31

	DB $dc, $fd, $dc, $ef, $fd, $ef, $ff, $d9, $31

	DB $f0, $fd, $f0, $f1, $fd, $f1, $ff, $d9, $31

	DB $dc, $fd, $f0, $f1, $fd, $ef, $ff, $d9, $31

	DB $f0, $fd, $dc, $ef, $fd, $f1, $ff, $d9, $31

	DB $bd, $be, $bb, $bc, $ff, $d9, $31

	DB $b9, $ba, $da, $db, $ff, $cb, $30

	DB $e0, $f0, $f5, $31

	DB $c0, $c1, $c5, $c6, $cc, $cd, $75, $76, $a4, $a5, $a6, $a7, $54, $55, $56, $57
	DB $44, $45, $46, $47, $a0, $a1, $a2, $a3, $9c, $9d, $9e, $9f, $ff, $16, $31

	DB $f8, $e8, $1c, $31

	DB $f0, $e8, $25, $31

	DB $00, $00, $2b, $31

	DB $00, $00, $31, $31

	DB $00, $00, $3a, $31

	DB $00, $00, $9d, $31

	DB $00, $00, $a3, $31

	DB $00, $00, $64, $31

	DB $d8, $f8, $7c, $31

	DB $e8, $f8, $8e, $31

	DB $f0, $f8, $2d, $32

	DB $63, $64, $65, $ff, $2d, $32

	DB $63, $64, $65, $66, $67, $68, $ff, $2d, $32

	DB $41, $41, $41, $ff, $2d, $32

	DB $42, $42, $42, $ff, $2d, $32

	DB $52, $52, $52, $62, $62, $62, $ff, $2d, $32

	DB $51, $51, $51, $61, $61, $61, $71, $71, $71, $ff, $a9, $31

	DB $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $63, $64, $fd, $64, $fd, $63, $66, $67
	DB $fd, $67, $fd, $66, $ff, $d9, $31

	DB $2f, $2f, $63, $64, $ff, $d9, $31

	DB $00, $fd, $00, $10, $fd, $10, $4f, $fd, $4f, $80, $fd, $80, $80, $fd, $80, $81
	DB $fd, $81, $97, $fd, $97, $ff, $d9, $31

	DB $98, $fd, $98, $99, $fd, $99, $80, $fd, $80, $9a, $fd, $9a, $9b, $fd, $9b, $ff
	DB $d9, $31

	DB $a8, $fd, $a8, $a9, $fd, $a9, $aa, $fd, $aa, $ab, $fd, $ab, $ff, $d9, $31

	DB $41, $2f, $2f, $ff, $d9, $31

	DB $52, $2f, $62, $ff, $00, $00, $00, $08, $00, $10, $00, $18, $08, $00, $08, $08
	DB $08, $10, $08, $18, $10, $00, $10, $08, $10, $10, $10, $18, $18, $00, $18, $08
	DB $18, $10, $18, $18, $00, $00, $00, $08, $00, $10, $00, $18, $00, $20, $00, $28
	DB $00, $30, $00, $38, $00, $00, $00, $08, $08, $00, $08, $08, $10, $00, $10, $08
	DB $18, $00, $18, $08, $20, $00, $20, $08, $28, $00, $28, $08, $30, $00, $30, $08
	DB $00, $08, $00, $10, $08, $08, $08, $10, $10, $00, $10, $08, $10, $10, $10, $18
	DB $18, $00, $18, $08, $18, $10, $18, $18, $20, $00, $20, $08, $20, $10, $20, $18
	DB $28, $00, $28, $08, $28, $10, $28, $18, $30, $00, $30, $08, $30, $10, $30, $18
	DB $38, $00, $38, $08, $38, $10, $38, $18, $00, $00, $00, $08, $00, $10, $08, $00
	DB $08, $08, $08, $10, $10, $00, $10, $08, $10, $10, $7f, $7f, $7f, $7f, $7f, $7f
	DB $7f, $7f, $7f, $7f, $7c, $7c, $78, $79, $78, $7b, $ff, $ff, $ff, $ff, $ff, $ff
	DB $ff, $ff, $ff, $ff, $00, $00, $00, $ff, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff
	DB $ff, $ff, $ff, $ff, $3f, $3f, $1f, $9f, $1f, $df, $78, $7b, $78, $79, $7c, $7c
	DB $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $00, $00, $00, $ff, $00, $00
	DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $1f, $df, $1f, $9f, $3f, $3f
	DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $78, $7a, $78, $7a, $78, $7a
	DB $78, $7a, $78, $7a, $78, $7a, $78, $7a, $78, $7a, $1f, $5f, $1f, $5f, $1f, $5f
	DB $1f, $5f, $1f, $5f, $1f, $5f, $1f, $5f, $1f, $5f, $ff, $ff, $ff, $ff, $ff, $ff
	DB $ff, $f8, $f8, $f0, $f2, $e1, $f5, $e3, $f2, $e6, $ff, $ff, $ff, $ff, $ff, $ff
	DB $ff, $00, $00, $00, $00, $ff, $ff, $ff, $00, $00, $ff, $ff, $ff, $ff, $ff, $ff
	DB $ff, $1f, $1f, $0f, $4f, $87, $af, $c7, $4f, $67, $f2, $e6, $f2, $e6, $f2, $e6
	DB $f2, $e6, $f2, $e6, $f2, $e6, $f2, $e6, $f2, $e6, $4f, $67, $4f, $67, $4f, $67
	DB $4f, $67, $4f, $67, $4f, $67, $4f, $67, $4f, $67, $f2, $e6, $f5, $e3, $f2, $e1
	DB $f8, $f0, $ff, $f8, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00, $ff, $ff, $00, $ff
	DB $00, $00, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $4f, $67, $af, $c7, $4f, $87
	DB $1f, $0f, $ff, $1f, $ff, $ff, $ff, $ff, $ff, $ff, $78, $7b, $78, $79, $7c, $7c
	DB $7f, $7f, $7f, $7f, $7c, $7c, $78, $79, $78, $7b, $1f, $df, $1f, $9f, $3f, $3f
	DB $ff, $ff, $ff, $ff, $3f, $3f, $1f, $9f, $1f, $df, $00, $00, $00, $ff, $00, $00
	DB $ff, $ff, $ff, $ff, $00, $00, $00, $ff, $00, $00, $00, $00, $00, $7f, $00, $00
	DB $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $7f, $78, $7a, $78, $7a, $78, $7a
	DB $78, $7a, $78, $7a, $00, $02, $00, $7a, $00, $7a, $1f, $5f, $1f, $5f, $1f, $5f
	DB $1f, $5f, $1f, $5f, $00, $40, $00, $5f, $00, $5f, $00, $00, $00, $ff, $00, $00
	DB $00, $ff, $00, $ff, $00, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $3f, $3f
	DB $3f, $3f, $30, $30, $30, $30, $33, $32, $33, $30, $00, $00, $00, $00, $ff, $ff
	DB $ff, $ff, $00, $00, $00, $00, $ff, $02, $ff, $20, $00, $00, $00, $00, $fc, $fc
	DB $fc, $fc, $0c, $0c, $0c, $0c, $cc, $0c, $cc, $0c, $33, $30, $33, $30, $33, $30
	DB $33, $30, $33, $30, $33, $30, $33, $32, $33, $30, $cc, $0c, $cc, $4c, $cc, $0c
	DB $cc, $0c, $cc, $0c, $cc, $8c, $cc, $0c, $cc, $0c, $33, $30, $33, $30, $30, $30
	DB $30, $30, $3f, $3f, $3f, $3f, $00, $00, $00, $00, $ff, $04, $ff, $40, $00, $00
	DB $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $cc, $0c, $cc, $4c, $0c, $0c
	DB $0c, $0c, $fc, $fc, $fc, $fc, $00, $00, $00, $00, $00, $00, $ff, $ff, $ff, $00
	DB $ff, $02, $ff, $20, $ff, $00, $ff, $04, $ff, $00, $ff, $00, $ff, $02, $ff, $40
	DB $ff, $00, $ff, $08, $ff, $01, $ff, $43, $ff, $07, $ff, $04, $ff, $40, $ff, $02
	DB $ff, $00, $ff, $00, $ff, $ff, $ff, $ff, $00, $00, $ff, $00, $ff, $40, $ff, $02
	DB $ff, $00, $ff, $10, $ff, $80, $ff, $c2, $ff, $e0, $fe, $06, $fe, $46, $fe, $06
	DB $fe, $06, $fe, $16, $fe, $86, $fe, $06, $fe, $06, $7f, $64, $7f, $60, $7f, $62
	DB $7f, $60, $7f, $60, $7f, $68, $7f, $62, $7f, $60, $ff, $02, $ff, $40, $ff, $00
	DB $ff, $00, $ff, $08, $ff, $80, $ff, $1f, $f0, $10, $ff, $02, $ff, $20, $ff, $00
	DB $ff, $00, $ff, $04, $ff, $00, $ff, $ff, $00, $00, $ff, $07, $ff, $13, $ff, $01
	DB $ff, $00, $ff, $40, $ff, $00, $ff, $ff, $08, $08, $00, $00, $ff, $ff, $ff, $ff
	DB $ff, $00, $ff, $02, $ff, $20, $ff, $ff, $00, $00, $ff, $e0, $ff, $c8, $ff, $80
	DB $ff, $00, $ff, $02, $ff, $00, $ff, $ff, $08, $08, $ff, $00, $ff, $02, $ff, $40
	DB $ff, $00, $ff, $02, $ff, $00, $ff, $f8, $0f, $08, $f0, $10, $f0, $10, $f0, $10
	DB $f0, $50, $f0, $10, $f0, $10, $f0, $10, $f0, $10, $0f, $08, $0f, $0a, $0f, $08
	DB $0f, $08, $0f, $08, $0f, $08, $0f, $09, $0f, $08, $00, $00, $00, $7f, $00, $00
	DB $7f, $7f, $7f, $7f, $7c, $7c, $78, $79, $78, $7b, $00, $00, $00, $ff, $00, $00
	DB $ff, $ff, $ff, $ff, $3f, $3f, $1f, $9f, $1f, $df, $7f, $7f, $7f, $7f, $7f, $7f
	DB $7f, $7f, $7f, $7f, $00, $00, $00, $7f, $00, $00, $00, $00, $00, $00, $00, $00
	DB $aa, $aa, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0f, $0f
	DB $1f, $1f, $38, $38, $33, $30, $36, $30, $34, $30, $00, $00, $00, $00, $ff, $ff
	DB $ff, $ff, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $00, $f0, $f0
	DB $f8, $f8, $1c, $1c, $cc, $0c, $6c, $0c, $2c, $0c, $34, $30, $34, $30, $34, $30
	DB $34, $30, $34, $30, $34, $30, $34, $30, $34, $30, $2c, $0c, $2c, $0c, $2c, $0c
	DB $2c, $0c, $2c, $0c, $2c, $0c, $2c, $0c, $2c, $0c, $34, $30, $36, $30, $33, $30
	DB $38, $38, $1f, $1f, $0f, $0f, $00, $00, $00, $00, $00, $7b, $00, $79, $00, $7c
	DB $00, $7f, $00, $7f, $00, $00, $00, $7f, $00, $00, $00, $df, $00, $9f, $00, $3f
	DB $00, $ff, $00, $ff, $00, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $ff, $00
	DB $00, $00, $ff, $ff, $ff, $ff, $00, $00, $00, $00, $2c, $0c, $6c, $0c, $cc, $0c
	DB $1c, $1c, $f8, $f8, $f0, $f0, $00, $00, $00, $00, $08, $08, $ff, $ff, $ff, $02
	DB $ff, $00, $ff, $20, $ff, $00, $ff, $02, $ff, $00, $00, $00, $ff, $ff, $ff, $ff
	DB $ff, $00, $ff, $02, $ff, $20, $ff, $ff, $08, $08, $ff, $07, $ff, $13, $ff, $01
	DB $ff, $00, $ff, $40, $ff, $00, $ff, $ff, $00, $00, $ff, $e0, $ff, $c8, $ff, $80
	DB $ff, $00, $ff, $02, $ff, $00, $ff, $ff, $00, $00, $08, $08, $08, $08, $08, $08
	DB $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $ff, $00, $ff, $02, $ff, $00
	DB $ff, $20, $ff, $02, $ff, $00, $ff, $ff, $08, $08, $f0, $10, $ff, $1f, $f0, $1f
	DB $f0, $1f, $f0, $1f, $f0, $1f, $ff, $5f, $f0, $10, $00, $00, $ff, $ff, $00, $ff
	DB $00, $ff, $00, $ff, $00, $ff, $ff, $ff, $00, $00, $08, $08, $ff, $ff, $00, $ff
	DB $00, $ff, $00, $ff, $00, $ff, $ff, $ff, $08, $08, $0f, $08, $ff, $f8, $0f, $f8
	DB $0f, $f8, $0f, $f8, $0f, $f8, $ff, $fa, $0f, $08, $ff, $07, $ff, $43, $ff, $01
	DB $ff, $00, $ff, $00, $ff, $80, $ff, $1f, $f0, $10, $ff, $e0, $ff, $c2, $ff, $80
	DB $ff, $00, $ff, $22, $ff, $00, $ff, $f8, $0f, $08, $00, $00, $00, $00, $00, $00
	DB $3c, $00, $3c, $00, $00, $00, $00, $00, $00, $00, $00, $00, $3c, $00, $4e, $00
	DB $4e, $00, $7e, $00, $4e, $00, $4e, $00, $00, $00, $00, $00, $7c, $00, $66, $00
	DB $7c, $00, $66, $00, $66, $00, $7c, $00, $00, $00, $00, $00, $3c, $00, $66, $00
	DB $60, $00, $60, $00, $66, $00, $3c, $00, $00, $00, $dd, $44, $ff, $44, $ff, $ff
	DB $77, $11, $ff, $11, $ff, $ff, $dd, $44, $ff, $44, $ff, $ff, $77, $11, $ff, $11
	DB $ff, $ff, $dd, $44, $ff, $44, $ff, $ff, $77, $11, $ff, $11, $ff, $ff, $dd, $44
	DB $ff, $44, $ff, $ff, $77, $11, $ff, $11, $ff, $ff, $00, $00, $7e, $00, $18, $00
	DB $18, $00, $18, $00, $18, $00, $18, $00, $00, $00, $00, $00, $66, $00, $66, $00
	DB $3c, $00, $18, $00, $18, $00, $18, $00, $00, $00, $ff, $ff, $f7, $89, $dd, $a3
	DB $ff, $81, $b7, $c9, $fd, $83, $d7, $a9, $ff, $81, $ff, $ff, $ff, $81, $ff, $bd
	DB $e7, $a5, $e7, $a5, $ff, $bd, $ff, $81, $ff, $ff, $ff, $ff, $ff, $81, $ff, $81
	DB $ff, $99, $ff, $99, $ff, $81, $ff, $81, $ff, $ff, $ff, $ff, $81, $81, $bd, $bd
	DB $bd, $bd, $bd, $bd, $bd, $bd, $81, $81, $ff, $ff, $ff, $ff, $81, $ff, $81, $ff
	DB $81, $ff, $81, $ff, $81, $ff, $81, $ff, $ff, $ff, $ff, $ff, $ff, $81, $c3, $81
	DB $df, $85, $df, $85, $ff, $bd, $ff, $81, $ff, $ff, $ff, $ff, $81, $ff, $bd, $ff
	DB $a5, $e7, $a5, $e7, $bd, $ff, $81, $ff, $ff, $ff, $ff, $ff, $81, $81, $bd, $83
	DB $bd, $83, $bd, $83, $bd, $83, $81, $ff, $ff, $ff, $ed, $93, $bf, $c1, $f5, $8b
	DB $df, $a1, $fd, $83, $af, $d1, $fb, $85, $df, $a1, $fd, $83, $ef, $91, $bb, $c5
	DB $ef, $91, $bd, $c3, $f7, $89, $df, $a1, $ff, $ff, $ff, $ff, $db, $a4, $ff, $80
	DB $b5, $ca, $ff, $80, $dd, $a2, $f7, $88, $ff, $ff, $ff, $ff, $57, $a8, $fd, $02
	DB $df, $20, $7b, $84, $ee, $11, $bb, $44, $ff, $ff, $ff, $00, $ff, $00, $ff, $00
	DB $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $00, $ff, $00, $ff, $00, $ff
	DB $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	DB $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $77, $89, $df, $21
	DB $fb, $05, $af, $51, $fd, $03, $d7, $29, $ff, $ff, $00, $00, $3c, $00, $66, $00
	DB $66, $00, $66, $00, $66, $00, $3c, $00, $00, $00, $00, $00, $18, $00, $38, $00
	DB $18, $00, $18, $00, $18, $00, $3c, $00, $00, $00, $00, $00, $3c, $00, $4e, $00
	DB $0e, $00, $3c, $00, $70, $00, $7e, $00, $00, $00, $00, $00, $7c, $00, $0e, $00
	DB $3c, $00, $0e, $00, $0e, $00, $7c, $00, $00, $00, $00, $00, $3c, $00, $6c, $00
	DB $4c, $00, $4e, $00, $7e, $00, $0c, $00, $00, $00, $00, $00, $7c, $00, $60, $00
	DB $7c, $00, $0e, $00, $4e, $00, $3c, $00, $00, $00, $00, $00, $3c, $00, $60, $00
	DB $7c, $00, $66, $00, $66, $00, $3c, $00, $00, $00, $00, $00, $7e, $00, $06, $00
	DB $0c, $00, $18, $00, $38, $00, $38, $00, $00, $00, $00, $00, $3c, $00, $4e, $00
	DB $3c, $00, $4e, $00, $4e, $00, $3c, $00, $00, $00, $00, $00, $3c, $00, $4e, $00
	DB $4e, $00, $3e, $00, $0e, $00, $3c, $00, $00, $00, $00, $00, $7c, $00, $66, $00
	DB $66, $00, $7c, $00, $60, $00, $60, $00, $00, $00, $00, $00, $7e, $00, $60, $00
	DB $7c, $00, $60, $00, $60, $00, $7e, $00, $00, $00, $00, $00, $7e, $00, $60, $00
	DB $60, $00, $7c, $00, $60, $00, $60, $00, $00, $00, $00, $00, $3c, $00, $66, $00
	DB $66, $00, $66, $00, $66, $00, $3c, $00, $00, $00, $00, $00, $3c, $00, $66, $00
	DB $60, $00, $6e, $00, $66, $00, $3e, $00, $00, $00, $00, $00, $46, $00, $6e, $00
	DB $7e, $00, $56, $00, $46, $00, $46, $00, $00, $00, $00, $00, $46, $00, $46, $00
	DB $46, $00, $46, $00, $4e, $00, $3c, $00, $00, $00, $00, $00, $3c, $00, $60, $00
	DB $3c, $00, $0e, $00, $4e, $00, $3c, $00, $00, $00, $00, $00, $3c, $00, $18, $00
	DB $18, $00, $18, $00, $18, $00, $3c, $00, $00, $00, $00, $00, $60, $00, $60, $00
	DB $60, $00, $60, $00, $60, $00, $7e, $00, $00, $00, $00, $00, $46, $00, $46, $00
	DB $46, $00, $46, $00, $2c, $00, $18, $00, $00, $00, $00, $00, $7c, $00, $66, $00
	DB $66, $00, $7c, $00, $68, $00, $66, $00, $00, $00, $00, $00, $46, $00, $66, $00
	DB $76, $00, $5e, $00, $4e, $00, $46, $00, $00, $00, $00, $00, $7c, $00, $4e, $00
	DB $4e, $00, $4e, $00, $4e, $00, $7c, $00, $00, $00, $ff, $ff, $ff, $00, $ff, $00
	DB $ff, $00, $ff, $10, $ff, $80, $ff, $02, $ff, $00, $00, $00, $ff, $ff, $ff, $ff
	DB $ff, $00, $ff, $02, $ff, $20, $ff, $ff, $80, $80, $80, $80, $80, $80, $80, $80
	DB $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $ff, $ff, $00, $ff
	DB $00, $ff, $00, $ff, $00, $ff, $ff, $ff, $80, $80, $80, $80, $ff, $ff, $ff, $00
	DB $ff, $02, $ff, $20, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $00, $00, $00, $00
	DB $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $07, $18, $1f, $21, $3e
	DB $47, $7f, $5f, $7f, $39, $30, $7b, $62, $fb, $b2, $ff, $a0, $ff, $c2, $7f, $54
	DB $7f, $5c, $3f, $2e, $7f, $63, $bf, $f8, $37, $ff, $01, $01, $01, $01, $01, $01
	DB $01, $01, $01, $01, $01, $01, $01, $01, $83, $83, $01, $01, $01, $01, $01, $01
	DB $01, $01, $01, $01, $01, $01, $01, $01, $ff, $ff, $ff, $ff, $01, $01, $01, $01
	DB $01, $01, $01, $01, $01, $01, $01, $01, $83, $83, $ff, $ff, $d9, $87, $d9, $87
	DB $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87
	DB $d9, $87, $d9, $87, $d9, $87, $d9, $87, $ff, $ff, $d9, $87, $d9, $87, $d9, $87
	DB $d9, $87, $d9, $87, $d9, $87, $d9, $87, $d9, $87, $00, $38, $00, $38, $00, $38
	DB $00, $38, $00, $38, $00, $38, $00, $38, $00, $38, $7c, $00, $7c, $00, $7c, $00
	DB $7c, $00, $7c, $00, $7c, $00, $7f, $00, $ff, $00, $00, $00, $00, $00, $08, $00
	DB $08, $00, $08, $00, $08, $00, $1c, $00, $1c, $00, $00, $00, $00, $0e, $01, $1d
	DB $1e, $06, $2a, $2a, $27, $27, $10, $13, $0c, $0d, $00, $00, $c0, $c0, $20, $20
	DB $10, $d0, $d0, $10, $f0, $30, $c8, $e8, $08, $e8, $04, $07, $03, $03, $0c, $0c
	DB $10, $10, $35, $20, $2a, $20, $3f, $3f, $0c, $0c, $28, $e8, $d8, $c0, $40, $40
	DB $20, $20, $50, $10, $b0, $10, $f0, $f0, $c0, $c0, $00, $e0, $01, $71, $32, $42
	DB $34, $35, $55, $54, $4f, $4e, $21, $27, $18, $1b, $00, $00, $80, $80, $40, $40
	DB $20, $a0, $a0, $20, $e0, $60, $90, $f0, $08, $c8, $b8, $b8, $84, $84, $84, $84
	DB $fc, $fc, $92, $92, $92, $92, $6c, $6c, $ee, $ee, $07, $07, $1f, $18, $3e, $20
	DB $7f, $4f, $7f, $5f, $70, $70, $a2, $a2, $b0, $b0, $b4, $b4, $64, $64, $3c, $3c
	DB $2e, $2e, $27, $27, $10, $10, $6c, $7c, $cf, $b3, $03, $03, $03, $03, $03, $02
	DB $07, $06, $09, $09, $16, $17, $12, $11, $0e, $0f, $08, $09, $08, $08, $0f, $0f
	DB $08, $08, $09, $09, $0a, $0a, $06, $06, $0e, $0e, $03, $03, $03, $03, $03, $02
	DB $1f, $1e, $21, $21, $4a, $55, $4a, $75, $0a, $35, $0a, $15, $08, $08, $0f, $0f
	DB $08, $08, $09, $09, $0a, $0a, $06, $06, $0e, $0e, $00, $00, $66, $00, $6c, $00
	DB $78, $00, $78, $00, $6c, $00, $66, $00, $00, $00, $00, $00, $46, $00, $2c, $00
	DB $18, $00, $38, $00, $64, $00, $42, $00, $00, $00, $fd, $fd, $fd, $fd, $fd, $fd
	DB $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $f8, $00, $e0, $00, $c0, $00
	DB $80, $00, $80, $00, $00, $00, $00, $00, $00, $00, $7f, $00, $1f, $00, $0f, $00
	DB $07, $00, $07, $00, $03, $00, $03, $00, $03, $00, $00, $00, $80, $00, $80, $00
	DB $c0, $00, $e0, $00, $f8, $00, $ff, $00, $ff, $00, $03, $00, $07, $00, $07, $00
	DB $0f, $00, $1f, $00, $7f, $00, $ff, $00, $ff, $00, $ff, $ff, $ff, $ff, $00, $ff
	DB $ff, $ff, $00, $ff, $ff, $00, $00, $ff, $ff, $00, $ff, $00, $ff, $00, $ff, $01
	DB $fe, $02, $fe, $02, $fc, $04, $fc, $04, $fc, $04, $ff, $02, $ff, $01, $ff, $01
	DB $01, $01, $ff, $01, $01, $01, $ff, $01, $01, $01, $02, $02, $02, $02, $03, $03
	DB $04, $05, $08, $09, $11, $12, $21, $26, $43, $4c, $00, $00, $01, $01, $02, $02
	DB $04, $04, $08, $09, $10, $13, $20, $27, $20, $2f, $87, $98, $06, $39, $0e, $71
	DB $1e, $e1, $3c, $c3, $3c, $c3, $78, $87, $78, $87, $40, $4f, $40, $4f, $80, $9f
	DB $80, $9f, $80, $9f, $80, $9f, $80, $9f, $80, $9f, $f8, $07, $f0, $0f, $f0, $0f
	DB $f0, $0f, $f0, $0f, $f0, $0f, $f0, $0f, $f8, $07, $40, $5f, $40, $4f, $20, $2f
	DB $20, $27, $10, $11, $0f, $0f, $04, $04, $07, $07, $78, $87, $7c, $83, $3c, $c3
	DB $1e, $e1, $0f, $f0, $ff, $ff, $ff, $00, $ff, $ff, $ff, $00, $ff, $00, $ff, $00
	DB $00, $00, $ff, $00, $00, $00, $ff, $00, $00, $00, $02, $00, $02, $00, $02, $00
	DB $02, $00, $02, $00, $02, $00, $02, $00, $02, $00, $10, $00, $38, $00, $7c, $00
	DB $fe, $00, $fe, $00, $fe, $00, $7c, $00, $00, $00, $02, $03, $01, $01, $02, $02
	DB $04, $04, $0d, $08, $0a, $08, $0f, $0f, $03, $03, $28, $e8, $f0, $d0, $30, $30
	DB $08, $08, $54, $04, $ac, $04, $fc, $fc, $30, $30, $00, $00, $03, $03, $03, $03
	DB $03, $02, $07, $06, $09, $09, $08, $08, $0b, $0b, $00, $00, $c0, $c0, $c4, $c4
	DB $e8, $68, $90, $f0, $a8, $f8, $48, $78, $f8, $b8, $00, $00, $07, $07, $07, $07
	DB $07, $04, $07, $04, $0b, $0b, $10, $10, $17, $17, $00, $00, $80, $80, $80, $80
	DB $e0, $e0, $90, $f0, $a8, $f8, $48, $78, $b8, $b8, $08, $08, $0f, $0f, $08, $08
	DB $0f, $0f, $09, $09, $09, $09, $06, $06, $0e, $0e, $e4, $e4, $22, $22, $20, $20
	DB $e0, $e0, $20, $20, $20, $20, $c0, $c0, $e0, $e0, $18, $18, $98, $98, $98, $98
	DB $f8, $f8, $9c, $98, $3c, $3c, $3c, $3c, $7e, $7e, $7f, $00, $fe, $fe, $7e, $7e
	DB $fe, $da, $7e, $5a, $7e, $7e, $fc, $fc, $f8, $f8, $fe, $0e, $fe, $fe, $7e, $7e
	DB $fe, $da, $7e, $5a, $7e, $7e, $fc, $fc, $f8, $f8, $80, $80, $83, $83, $83, $83
	DB $c3, $02, $ef, $2e, $97, $97, $47, $44, $24, $24, $00, $00, $c0, $c0, $c0, $c0
	DB $c0, $40, $e0, $60, $f8, $f8, $e4, $24, $34, $34, $17, $14, $17, $14, $17, $14
	DB $1c, $1f, $17, $17, $0f, $0f, $1e, $1e, $00, $00, $f4, $24, $f8, $28, $e8, $28
	DB $38, $f8, $e8, $e8, $90, $90, $70, $70, $78, $78, $03, $03, $03, $03, $03, $02
	DB $0f, $0e, $11, $11, $37, $37, $71, $52, $7d, $4e, $c0, $c0, $c0, $c0, $c0, $40
	DB $c0, $40, $a0, $a0, $10, $10, $ff, $ff, $cf, $33, $7f, $40, $3f, $3f, $08, $08
	DB $0f, $0f, $09, $09, $09, $09, $06, $06, $0e, $0e, $fc, $fc, $20, $20, $20, $20
	DB $e0, $e0, $20, $20, $20, $20, $c0, $c0, $e0, $e0, $03, $03, $03, $03, $03, $02
	DB $07, $06, $09, $09, $33, $33, $77, $54, $73, $4c, $18, $18, $d8, $d8, $d8, $d8
	DB $f8, $78, $dc, $58, $bc, $bc, $3c, $3c, $7e, $7e, $09, $0e, $07, $07, $08, $0f
	DB $08, $0f, $09, $0f, $0a, $0e, $06, $06, $0e, $0e, $00, $00, $03, $03, $03, $03
	DB $03, $02, $ff, $7e, $c9, $3f, $78, $7f, $09, $0f, $04, $04, $07, $07, $b8, $bf
	DB $c0, $ff, $ff, $ff, $00, $00, $00, $00, $00, $00, $00, $00, $78, $78, $78, $78
	DB $7b, $48, $60, $5f, $b6, $b0, $84, $84, $b8, $b8, $84, $84, $84, $84, $84, $84
	DB $fa, $fa, $92, $92, $9e, $9e, $67, $67, $e0, $e0, $00, $00, $00, $00, $78, $78
	DB $78, $78, $78, $48, $40, $7e, $b4, $b0, $84, $84

TypeA_Falling_Blocks_Screen_20x18_chars::
	DB $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $30, $31, $31
	DB $31, $31, $31, $32, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
	DB $7c, $44, $1c, $0c, $18, $1b, $0e, $45, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f
	DB $2f, $2f, $2f, $2f, $7d, $67, $46, $46, $46, $46, $46, $68, $2a, $7b, $2f, $2f
	DB $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $2f, $2f, $2f, $2f, $2f, $00, $2f
	DB $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $43, $34, $34
	DB $34, $34, $34, $34, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
	DB $7d, $30, $31, $31, $31, $31, $31, $32, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f
	DB $2f, $2f, $2f, $2f, $7b, $36, $15, $0e, $1f, $0e, $15, $37, $2a, $7c, $2f, $2f
	DB $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $36, $2f, $2f, $2f, $2f, $2f, $37
	DB $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $40, $42, $42
	DB $42, $42, $42, $41, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
	DB $7b, $36, $15, $12, $17, $0e, $1c, $37, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f
	DB $2f, $2f, $2f, $2f, $7c, $36, $2f, $2f, $2f, $2f, $2f, $37, $2a, $7d, $2f, $2f
	DB $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $33, $34, $34, $34, $34, $34, $35
	DB $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $2b, $38, $39
	DB $39, $39, $39, $3a, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
	DB $7c, $2b, $3b, $2f, $2f, $2f, $2f, $3c, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f
	DB $2f, $2f, $2f, $2f, $7d, $2b, $3b, $2f, $2f, $2f, $2f, $3c, $2a, $7b, $2f, $2f
	DB $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $2b, $3b, $2f, $2f, $2f, $2f, $3c
	DB $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $2b, $3b, $2f
	DB $2f, $2f, $2f, $3c, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
	DB $7d, $2b, $3d, $3e, $3e, $3e, $3e, $3f

TypeB_Falling_Blocks_Screen_20x18_chars::
	DB $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f

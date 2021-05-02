; Disassembly of "Tetris (Japan) (En).gb"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    db $2f, $2f, $3c, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b
    db $2b, $3b, $2f, $2f, $2f, $2f, $3c, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $7c, $2b, $3b, $2f, $2f, $2f, $2f, $3c, $2a, $7d, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $2b, $3d, $3e, $3e, $3e, $3e, $3f, $2a
    db $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $30, $31, $31, $31
    db $31, $31, $32, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c
    db $36, $15, $0e, $1f, $0e, $15, $37, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $7d, $36, $2f, $2f, $2f, $2f, $2f, $37, $2a, $7b, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $40, $42, $42, $42, $42, $42, $41, $2a
    db $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $36, $11, $12, $10
    db $11, $2f, $37, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d
    db $36, $2f, $2f, $2f, $2f, $2f, $37, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $7b, $33, $34, $34, $34, $34, $34, $35, $2a, $7c, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $2b, $8e, $8e, $8e, $8e, $8e, $8e, $2a
    db $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $30, $31, $31, $31
    db $31, $31, $32, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b
    db $36, $15, $12, $17, $0e, $1c, $37, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $7c, $36, $2f, $2f, $02, $05, $2f, $37, $2a, $7d, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $33, $34, $34, $34, $34, $34, $35, $2a
    db $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $2b, $38, $39, $39
    db $39, $39, $3a, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c
    db $2b, $3b, $2f, $2f, $2f, $2f, $3c, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f

Character_Set::
    INCBIN "gfx/Character_Set.1bpp"

Initial_Credits_Screen_20x18_chars::
    db $78, $78, $e0, $e0, $fc, $fc, $00, $00, $ff, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $1b, $1b, $1b, $1b, $09, $09, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $60, $60, $60, $60, $20, $20, $00, $00, $1b, $1b, $1b, $1b, $09, $09, $00, $00
    db $00, $00, $60, $60, $60, $60, $00, $00, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $9b, $1d, $16, $2f
    db $0a, $17, $0d, $2f, $33, $01, $09, $08, $07, $2f, $0e, $15, $18, $1b, $10, $9c
    db $2f, $1d, $0e, $1d, $1b, $12, $1c, $2f, $15, $12, $0c, $0e, $17, $1c, $0e, $0d
    db $2f, $1d, $18, $2f, $2f, $2f, $2f, $2f, $0b, $1e, $15, $15, $0e, $1d, $2f, $19
    db $1b, $18, $18, $0f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $1c, $18, $0f, $1d
    db $20, $0a, $1b, $0e, $2f, $0a, $17, $0d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $1c
    db $1e, $0b, $25, $15, $12, $0c, $0e, $17, $1c, $0e, $0d, $2f, $1d, $18, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $17, $12, $17, $1d, $0e, $17, $0d, $18, $24, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $33, $01, $09, $08, $09, $2f, $0b
    db $1e, $15, $15, $0e, $1d, $2f, $19, $1b, $18, $18, $0f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $1c, $18, $0f, $1d, $20, $0a, $1b, $0e, $24, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $33, $30, $31, $32, $31, $2f, $34, $35, $36, $37, $38, $39, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $0a, $15, $15, $2f, $1b, $12, $10, $11
    db $1d, $1c, $2f, $1b, $0e, $1c, $0e, $1b, $1f, $0e, $0d, $24, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $18, $1b, $12, $10, $12, $17

Intro_Player_Select_Screen_20x18_chars::
    db $0a, $15, $2f, $0c, $18, $17, $0c, $0e, $19, $1d, $9c, $2f, $2f, $0d, $0e, $1c
    db $12, $10, $17, $2f, $0a, $17, $0d, $2f, $19, $1b, $18, $10, $1b, $0a, $16, $2f
    db $0b, $22, $2f, $0a, $15, $0e, $21, $0e, $22, $2f, $19, $0a, $23, $11, $12, $1d
    db $17, $18, $1f, $9d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e
    db $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $5a, $5b, $5b, $5b
    db $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5c
    db $5d, $80, $81, $82, $83, $90, $91, $92, $81, $82, $83, $90, $6c, $6d, $6e, $6f
    db $70, $71, $72, $5e, $5d, $84, $85, $86, $87, $93, $94, $95, $85, $86, $87, $93
    db $73, $74, $75, $76, $77, $78, $2f, $5e, $5d, $2f, $88, $89, $2f, $96, $97, $98
    db $88, $89, $2f, $96, $79, $7a, $7b, $7c, $7d, $7e, $2f, $5e, $5d, $2f, $8a, $8b
    db $2f, $8e, $8f, $6b, $8a, $8b, $2f, $8e, $7f, $66, $67, $68, $69, $6a, $2f, $5e
    db $5f, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60
    db $60, $60, $60, $61, $8e, $3c, $3c, $3c, $3c, $3c, $3c, $3c, $3c, $3c, $3c, $3c
    db $3c, $3c, $3d, $3e, $3c, $3c, $3c, $8e, $8e, $8c, $8c, $62, $63, $8c, $8c, $3a
    db $8c, $8c, $8c, $8c, $8c, $3a, $42, $43, $3b, $8c, $8c, $8e, $8e, $3a, $8c, $64
    db $65, $8c, $8c, $8c, $8c, $3b, $8c, $8c, $8c, $8c, $44, $45, $8c, $8c, $8c, $8e
    db $8e, $8c, $8c, $8c, $8c, $8c, $8c, $8c, $8c, $8c, $8c, $8c, $8c, $46, $47, $48
    db $49, $3f, $40, $8e, $8e, $8c, $8c, $8c, $8c, $3a, $8c, $8c, $8c, $8c, $53, $54
    db $8c, $4a, $4b, $4c, $4d, $42, $43, $8e, $8e, $8c, $8c, $8c, $8c, $8c, $8c, $8c
    db $8c, $54, $55, $56, $57, $4e, $4f, $50, $51, $52, $45, $8e, $41, $41, $41, $41
    db $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41
    db $2f, $2f, $59, $19, $15, $0a, $22, $0e

Select_Game_and_Music_Type_Screen_20x18_chars::
    db $1b, $2f, $2f, $2f, $99, $19, $15, $0a, $22, $0e, $1b, $2f, $2f, $2f, $9a, $9a
    db $9a, $9a, $9a, $9a, $9a, $2f, $2f, $2f, $9a, $9a, $9a, $9a, $9a, $9a, $9a, $2f
    db $2f, $2f, $2f, $2f, $33, $30, $31, $32, $31, $2f, $34, $35, $36, $37, $38, $39
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $47, $48, $48, $48, $48, $48, $48, $48
    db $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $49, $4a, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b
    db $4a, $2c, $2c, $2c, $50, $51, $51, $51, $51, $51, $51, $51, $51, $51, $52, $2c
    db $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $53, $10, $0a, $16, $0e, $2f, $1d, $22
    db $19, $0e, $54, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $55, $56, $6d, $58, $58, $58
    db $58, $58, $a9, $58, $58, $58, $6e, $56, $56, $5a, $2c, $4b, $4a, $2c, $5b, $78
    db $77, $7e, $7f, $9a, $9b, $2f, $aa, $79, $77, $7e, $7f, $9a, $9b, $5c, $2c, $4b
    db $4a, $2c, $2d, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $ac, $4f, $4f, $4f, $4f, $4f
    db $4f, $2e, $2c, $4b, $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c
    db $50, $51, $51, $51, $51, $51, $51, $51, $51, $51, $51, $52, $2c, $2c, $2c, $4b
    db $4a, $2c, $2c, $2c, $53, $16, $1e, $1c, $12, $0c, $2f, $1d, $22, $19, $0e, $54
    db $2c, $2c, $2c, $4b, $4a, $2c, $55, $56, $6d, $58, $58, $58, $58, $58, $a9, $58
    db $58, $58, $58, $6e, $56, $5a, $2c, $4b, $4a, $2c, $5b, $78, $77, $7e, $7f, $9a
    db $9b, $2f, $aa, $79, $77, $7e, $7f, $9a, $9b, $5c, $2c, $4b, $4a, $2c, $71, $72
    db $72, $72, $72, $72, $72, $72, $ab, $72, $72, $72, $72, $72, $72, $74, $2c, $4b
    db $4a, $2c, $5b, $7a, $77, $7e, $7f, $9a

TypeA_Select_Level__Top_Score_Screen_20x18_chars::
    db $9b, $2f, $aa, $2f, $9d, $9c, $9c, $2f, $2f, $5c, $2c, $4b, $4a, $2c, $2d, $4f
    db $4f, $4f, $4f, $4f, $4f, $4f, $ac, $4f, $4f, $4f, $4f, $4f, $4f, $2e, $2c, $4b
    db $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $2c, $4b, $4c, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d
    db $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4e, $47, $48, $48, $48, $48, $48, $48, $48
    db $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $49, $4a, $2f, $0a, $25
    db $1d, $22, $19, $0e, $2f, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b
    db $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $2c, $2c, $50, $51, $51, $51, $51, $51
    db $52, $2c, $2c, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $2c, $2c, $53, $15
    db $0e, $1f, $0e, $15, $54, $2c, $2c, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c
    db $55, $56, $57, $58, $6c, $58, $6c, $58, $59, $56, $5a, $2c, $2c, $2c, $2c, $4b
    db $4a, $2c, $2c, $2c, $5b, $90, $6f, $91, $6f, $92, $6f, $93, $6f, $94, $5c, $2c
    db $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $71, $72, $73, $72, $73, $72, $73, $72
    db $73, $72, $74, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $5b, $95, $6f, $96
    db $6f, $97, $6f, $98, $6f, $99, $5c, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c
    db $2d, $4f, $6b, $4f, $6b, $4f, $6b, $4f, $6b, $4f, $2e, $2c, $2c, $2c, $2c, $4b
    db $4a, $2c, $2c, $2c, $50, $51, $51, $51, $51, $51, $51, $51, $51, $51, $52, $2c
    db $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $53, $1d, $18, $19, $25, $1c, $0c, $18
    db $1b, $0e, $54, $2c, $2c, $2c, $2c, $4b, $4a, $55, $56, $70, $6d, $58, $58, $58
    db $58, $58, $58, $58, $58, $58, $6e, $56, $56, $56, $5a, $4b, $4a, $5b, $01, $6f
    db $60, $60, $60, $60, $60, $60, $2f, $2f, $60, $60, $60, $60, $60, $60, $5c, $4b
    db $4a, $5b, $02, $6f, $60, $60, $60, $60

TypeB_Select_Level__High__Top_Score_Screen_20x18_chars::
    db $60, $60, $2f, $2f, $60, $60, $60, $60, $60, $60, $5c, $4b, $4a, $5b, $03, $6f
    db $60, $60, $60, $60, $60, $60, $2f, $2f, $60, $60, $60, $60, $60, $60, $5c, $4b
    db $4a, $2d, $4f, $6b, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f
    db $4f, $4f, $2e, $4b, $4c, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d
    db $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4e, $47, $48, $48, $48, $48, $48, $48, $48
    db $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $49, $4a, $2f, $0b, $25
    db $1d, $22, $19, $0e, $2f, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b
    db $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $2c, $4b, $4a, $2c, $2c, $50, $51, $51, $51, $51, $51, $52, $2c, $2c
    db $50, $51, $51, $51, $51, $52, $2c, $4b, $4a, $2c, $2c, $53, $15, $0e, $1f, $0e
    db $15, $54, $2c, $2c, $53, $11, $12, $10, $11, $54, $2c, $4b, $4a, $55, $56, $57
    db $58, $6c, $58, $6c, $58, $59, $56, $5a, $75, $58, $6c, $58, $6c, $6e, $5a, $4b
    db $4a, $5b, $90, $6f, $91, $6f, $92, $6f, $93, $6f, $94, $5c, $5b, $90, $6f, $91
    db $6f, $92, $5c, $4b, $4a, $71, $72, $73, $72, $73, $72, $73, $72, $73, $72, $74
    db $71, $72, $73, $72, $73, $72, $74, $4b, $4a, $5b, $95, $6f, $96, $6f, $97, $6f
    db $98, $6f, $99, $5c, $5b, $93, $6f, $94, $6f, $95, $5c, $4b, $4a, $2d, $4f, $6b
    db $4f, $6b, $4f, $6b, $4f, $6b, $4f, $2e, $2d, $4f, $6b, $4f, $6b, $4f, $2e, $4b
    db $4a, $2c, $2c, $2c, $50, $51, $51, $51, $51, $51, $51, $51, $51, $51, $52, $2c
    db $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $53, $1d, $18, $19, $25, $1c, $0c, $18
    db $1b, $0e, $54, $2c, $2c, $2c, $2c, $4b, $4a, $55, $56, $70, $6d, $58, $58, $58
    db $58, $58, $58, $58, $58, $58, $6e, $56, $56, $56, $5a, $4b, $4a, $5b, $01, $6f
    db $60, $60, $60, $60, $60, $60, $2f, $2f, $60, $60, $60, $60, $60, $60, $5c, $4b
    db $4a, $5b, $02, $6f, $60, $60, $60, $60

    db $60, $60, $2f, $2f, $60, $60, $60, $60, $60, $60, $5c, $4b, $4a, $5b, $03, $6f
    db $60, $60, $60, $60, $60, $60, $2f, $2f, $60, $60, $60, $60, $60, $60, $5c, $4b
    db $4a, $2d, $4f, $6b, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f
    db $4f, $4f, $2e, $4b, $4c, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d
    db $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4e, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd
    db $cd, $cd, $8c, $c9, $ca, $8c, $8c, $8c, $8c, $8c, $8c, $8c, $8c, $cb, $cc, $8c
    db $8c, $8c, $8c, $8c, $8c, $ce, $d7, $d7, $d7, $d7, $d7, $d7, $d7, $d7, $d7, $cf
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $d0, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $d1, $d2, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $d3, $d4, $7c, $7c
    db $7c, $7c, $7c, $7c, $2f, $2f, $d5, $d6, $7d, $7d, $7d, $7d, $2f, $2f, $2f, $2f
    db $d8, $2f, $7b, $7b, $7b, $7b, $2f, $2f, $2f, $2f, $d8, $2f, $7c, $7c, $7c, $7c
    db $2f, $2f, $2f, $2f, $d8, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $d8, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $7c, $7c, $7c, $7c, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $7c, $7d, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $2f, $2f
    db $2f, $d9, $2f, $2f, $2f, $2f, $2f, $7b, $b7, $b8, $d9, $b7, $2f, $7c, $7c, $7c
    db $7c, $7c, $7d, $7d, $7d, $7d, $7d, $7d, $7d, $7d, $7d, $7d, $ff, $4a, $4a, $4a
    db $4a, $4a, $4a, $59, $69

Mario_VS_Luigi_Screen_20x18_chars::
    db $69, $69, $69, $69, $69, $49, $4a, $4a, $4a, $4a, $4a, $4a, $5a, $5a, $5a, $5a
    db $5a, $5a, $85, $85, $85, $85, $85, $85, $85, $85, $5a, $5a, $38, $39, $38, $5a
    db $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a
    db $6a, $6a, $6a, $6a, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $47, $48, $48, $48, $48, $48, $48, $48
    db $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $49, $4a, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b
    db $4a, $2c, $2c, $16, $0a, $1b, $12, $18, $2f, $1f, $1c, $24, $15, $1e, $12, $10
    db $12, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $50, $51
    db $51, $51, $51, $52, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $53, $11, $12, $10, $11, $54, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $55
    db $56, $56, $5a, $2c, $2c, $2c, $75, $58, $6c, $58, $6c, $6e, $5a, $2c, $2c, $4b
    db $4a, $2c, $2c, $5b, $2f, $2f, $5c, $2c, $2c, $2c, $5b, $90, $6f, $91, $6f, $92
    db $5c, $2c, $2c, $4b, $4a, $2c, $2c, $5b, $2f, $2f, $5c, $2c, $2c, $2c, $71, $72
    db $73, $72, $73, $72, $74, $2c, $2c, $4b, $4a, $2c, $2c, $2d, $4f, $4f, $2e, $2c
    db $2c, $2c, $5b, $93, $6f, $94, $6f, $95, $5c, $2c, $2c, $4b, $4a, $2c, $2c, $16
    db $0a, $1b, $12, $18, $2c, $2c, $2d, $4f, $6b, $4f, $6b, $4f, $2e, $2c, $2c, $4b
    db $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $50, $51, $51, $51, $51, $52
    db $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $53, $11
    db $12, $10, $11, $54, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $55, $56, $56, $5a, $2c
    db $2c, $2c, $75, $58, $6c, $58, $6c, $6e, $5a, $2c, $2c, $4b, $4a, $2c, $2c, $5b
    db $2f, $2f, $5c, $2c, $2c, $2c, $5b, $90, $6f, $91, $6f, $92, $5c, $2c, $2c, $4b
    db $4a, $2c, $2c, $5b, $2f, $2f, $5c, $2c

TypeB_Falling_Blocks_Screen_20x18_chars_same_as_3ff7_ish::
    db $2c, $2c, $71, $72, $73, $72, $73, $72, $74, $2c, $2c, $4b, $4a, $2c, $2c, $2d
    db $4f, $4f, $2e, $2c, $2c, $2c, $5b, $93, $6f, $94, $6f, $95, $5c, $2c, $2c, $4b
    db $4a, $2c, $2c, $15, $1e, $12, $10, $12, $2c, $2c, $2d, $4f, $6b, $4f, $6b, $4f
    db $2e, $2c, $2c, $4b, $4c, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d
    db $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4e, $8e, $b2, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $b3, $30, $31, $31, $31, $31, $31, $32, $8e, $b0, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $36, $2f, $2f, $2f, $2f, $2f, $37
    db $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $36, $2f, $2f
    db $2f, $2f, $2f, $37, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $b5, $40, $42, $42, $42, $42, $42, $41, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $b5, $36, $11, $12, $10, $11, $2f, $37, $8e, $b0, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $36, $2f, $2f, $2f, $2f, $2f, $37
    db $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $33, $34, $34
    db $34, $34, $34, $35, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $b5, $2b, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $b5, $30, $31, $31, $31, $31, $31, $32, $8e, $b0, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $36, $15, $12, $17, $0e, $1c, $37
    db $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $36, $2f, $2f
    db $2f, $2f, $2f, $37, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $b5, $33, $34, $34, $34, $34, $34, $35, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $b5, $2b, $38, $39, $39, $39, $39, $3a, $8e, $b0, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $2b, $3b, $2f, $2f, $2f, $2f, $3c
    db $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f

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
    jr jr_001_564f

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

jr_001_564f:
    nop
    rlca
    rlca
    jr jr_001_5673

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

jr_001_5673:
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
    jr jr_001_5698

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

jr_001_5694:
    db $10
    db $10
    ld [bc], a
    ld [bc], a

jr_001_5698:
    ldh [$e0], a
    jr jr_001_5694

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
    jr jr_001_56c9

    jr nz, jr_001_56eb

    jr nc, jr_001_56ed

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

jr_001_56c9:
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
    jr jr_001_5727

    jr nz, jr_001_576a

jr_001_56eb:
    ld c, a
    ld a, a

jr_001_56ed:
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
    jp nz, $547f

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

jr_001_5727:
    jr nc, jr_001_57a4

    ld h, d
    ei
    or d
    rst $38
    and b

jr_001_572e:
    rst $38
    jp nz, $547f

    ld a, a
    ld e, h
    jr jr_001_572e

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

jr_001_576a:
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
    jr nz, jr_001_57c7

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

jr_001_57a4:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_57cc

    db $10
    db $10
    jr c, jr_001_57d8

    jr z, jr_001_57da

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

jr_001_57c7:
    ld a, [hl]
    jr jr_001_57e2

    jr @+$1a

jr_001_57cc:
    jr jr_001_57e6

    jr jr_001_57e8

    jr jr_001_57ea

    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_001_57d8:
    rst $38
    rst $38

jr_001_57da:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop

jr_001_57e2:
    nop
    xor $b4
    or h

jr_001_57e6:
    ld h, h
    ld h, h

jr_001_57e8:
    inc a
    inc a

jr_001_57ea:
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

jr_001_5822:
    rlca
    rlca
    rst $38
    xor [hl]
    rst $38
    inc hl
    rst $38
    jr jr_001_5822

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

jr_001_586a:
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
    jr nz, jr_001_58d3

    rst $38
    db $f4
    rst $38
    ld a, $ef
    jr c, jr_001_586a

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

jr_001_58d3:
    nop
    nop
    nop
    inc a
    inc a
    jr jr_001_58f2

    jr jr_001_58f4

    jr jr_001_58f6

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

jr_001_58f2:
    nop
    nop

jr_001_58f4:
    ld [bc], a
    ld [bc], a

jr_001_58f6:
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
    jr nz, jr_001_5989

    jr nz, jr_001_598b

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
    call Call_000_0932
    or $08
    rst $30
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38

jr_001_5989:
    nop
    rst $38

jr_001_598b:
    nop
    rst $38
    nop
    db $fc
    inc bc
    call z, Call_000_0833
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

    jr nz, jr_001_5a3a

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
    jr jr_001_59f0

    jr jr_001_59f2

    jr jr_001_59f4

    jr jr_001_59f6

    nop
    nop
    jr jr_001_59fa

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

jr_001_59f0:
    rst $38
    add c

jr_001_59f2:
    rst $38
    rst $38

jr_001_59f4:
    nop
    nop

jr_001_59f6:
    ldh [$e0], a
    jr jr_001_59f2

jr_001_59fa:
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

jr_001_5a07:
    ld b, [hl]
    ld b, [hl]

jr_001_5a09:
    ld b, [hl]
    ld b, [hl]

jr_001_5a0b:
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    inc l
    inc l
    jr jr_001_5a2a

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

jr_001_5a22:
    ld [$fe08], sp
    ld [bc], a
    db $fd
    dec b
    db $fd
    dec b

jr_001_5a2a:
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    cp $ef
    jr c, jr_001_5a22

    add hl, sp
    nop
    inc b
    nop
    inc b
    nop
    inc b

jr_001_5a3a:
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
    jr nz, jr_001_5a07

    jr nz, jr_001_5a09

    jr nz, jr_001_5a0b

    and b
    and b
    and b
    ldh [$e0], a
    ld h, b
    ld h, b
    jr nc, jr_001_5aa4

    ld [$08a8], sp
    jr jr_001_5a81

    xor b
    ld [$0848], sp
    xor b
    ld [$0818], sp

jr_001_5a81:
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

jr_001_5aa4:
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

    jr nz, jr_001_5b4e

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

jr_001_5b0f:
    jp $c324


    inc [hl]

jr_001_5b13:
    jp $3c00


    nop
    ld h, [hl]
    nop
    rst $20
    inc l
    jp $c33c


    inc a
    jp $423c


    jr jr_001_5b8a

    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_5b4c

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
    jr z, jr_001_5ba8

    ld a, [hl+]
    ld h, b
    jr z, jr_001_5bac

jr_001_5b4c:
    ld a, [hl+]
    ld h, b

jr_001_5b4e:
    jr z, jr_001_5bb0

    jr z, jr_001_5bb9

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

    jr nz, jr_001_5b0f

    jr nz, @-$5e

    jr nz, jr_001_5b13

    jr nz, jr_001_5b7d

    xor b
    ld [$0818], sp
    xor b
    ld [$0848], sp

jr_001_5b7d:
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

jr_001_5b8a:
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

jr_001_5ba8:
    inc [hl]
    inc h
    inc a
    inc h

jr_001_5bac:
    ccf
    daa
    inc a
    daa

jr_001_5bb0:
    inc a
    daa
    ccf
    cpl
    scf
    inc a
    rla
    inc d
    rla

jr_001_5bb9:
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

jr_001_5bd2:
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
    jr c, jr_001_5bd2

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
    jp $433c


    inc a
    ld b, e
    jr jr_001_5c72

    jr jr_001_5c74

    ld [$0876], sp
    ld [hl], $08
    inc [hl]
    jr jr_001_5c3c

    jr jr_001_5c3c

    jr jr_001_5c3e

    ld [$0034], sp
    jr jr_001_5c1f

jr_001_5c1f:
    ld [$0800], sp
    nop
    ld [$0000], sp
    rrca
    rrca
    rra
    db $10
    inc a
    jr nz, jr_001_5c9d

    ld b, b
    ld [hl], e
    ld b, e
    ld h, a
    ld c, h
    ccf
    jr z, jr_001_5c35

jr_001_5c35:
    nop
    add b
    add b
    call c, $3e5c
    ld [hl+], a

jr_001_5c3c:
    ld [hl-], a
    ld [c], a

jr_001_5c3e:
    or c
    pop bc
    jp $274b


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
    jr nc, jr_001_5cd7

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

jr_001_5c72:
    sbc h
    ld h, b

jr_001_5c74:
    sub b

jr_001_5c75:
    db $10
    ld [$1808], sp
    jr jr_001_5cb7

    ld h, h
    ld a, [c]
    jp nz, Jump_001_60e3

    add hl, sp
    jr nz, jr_001_5c75

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

jr_001_5c9d:
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

jr_001_5cb7:
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
    jr nc, jr_001_5d11

    pop af
    rst $38
    rst $08
    ei
    inc c

jr_001_5cd7:
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
    jr nz, jr_001_5d3b

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
    jr jr_001_5d0d

jr_001_5d0d:
    ld [$0000], sp
    nop

jr_001_5d11:
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
    jr jr_001_5d29

jr_001_5d29:
    dec d
    nop
    ld [de], a
    nop
    dec d
    nop
    jr jr_001_5d31

jr_001_5d31:
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

jr_001_5d3b:
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
    jr jr_001_5dae

    jr nz, jr_001_5df0

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

jr_001_5dae:
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

jr_001_5df0:
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
    jr jr_001_5f07

    ld hl, $473e
    ld a, a
    ld e, a
    ld a, a
    add hl, sp
    jr nc, jr_001_5f6c

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

jr_001_5f07:
    jp nz, $547f

    ld a, a
    ld e, h
    ccf
    ld l, $3f
    inc hl
    rra
    jr jr_001_5f1a

    rlca
    rst $38
    dec b
    rst $38
    ld b, e
    cp $2a

jr_001_5f1a:
    cp $3a
    db $fc
    ld [hl], h
    db $fc
    call nz, $18f8
    ldh [$e0], a
    rlca
    rlca
    rra
    jr jr_001_5f67

    jr nz, jr_001_5faa

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

jr_001_5f67:
    inc h
    cpl
    inc h
    cpl
    inc h

jr_001_5f6c:
    ld h, a
    ld a, h
    cp h
    and a
    rst $38
    db $e4

jr_001_5f72:
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

jr_001_5faa:
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

jr_001_5fd0:
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
    jp nc, $7fef

jr_001_5fe3:
    ld a, a
    ld hl, sp-$08
    jr jr_001_5fd0

    jr c, jr_001_5f72

    cp b
    ld [$10b0], sp
    ldh [$e0], a
    ret nc

    jr nc, jr_001_5fe3

    ldh a, [rNR23]
    jr jr_001_6027

jr_001_5ff7:
    jr nc, jr_001_6059

    ld h, b
    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    rst $38
    add e

jr_001_6001:
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
    jr jr_001_603e

    inc c

jr_001_6027:
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

jr_001_603e:
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

jr_001_6059:
    sub e
    cp $d3
    ld a, [hl]
    ld d, e
    ld a, $0b
    ld a, [hl]
    ld c, e
    ld a, $0b
    and b
    jr nz, jr_001_5ff7

    jr nc, jr_001_6001

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
    jr nz, jr_001_613c

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

Jump_001_60e3:
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

jr_001_613c:
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
    jr jr_001_61ab

    jr nz, jr_001_61cd

    jr nc, jr_001_61cf

    jr jr_001_61a9

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

jr_001_61a9:
    ld h, [hl]
    ld h, [hl]

jr_001_61ab:
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

jr_001_61cd:
    ld h, b
    ld h, b

jr_001_61cf:
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
    jr nc, jr_001_625e

    jr nc, jr_001_6260

    jr c, jr_001_625a

    jr jr_001_623c

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
    jr jr_001_6239

    xor b
    ld [$0048], sp
    add b
    nop
    add b
    nop

jr_001_6239:
    add b
    nop
    add b

jr_001_623c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_6247

jr_001_6247:
    jr nz, jr_001_6249

jr_001_6249:
    jr nz, jr_001_626a

    jr nz, jr_001_624d

jr_001_624d:
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

jr_001_625a:
    inc b
    db $fc
    ld c, $32

jr_001_625e:
    ld c, $32

jr_001_6260:
    ld c, $32
    ld c, $32
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_626a:
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
    jr jr_001_6281

jr_001_6281:
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
    jr jr_001_62b9

    xor b
    ld [$0048], sp
    nop
    nop
    nop
    nop

jr_001_62b9:
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
    nop
    ld a, [hl+]
    jr nz, jr_001_6335

    nop

jr_001_6335:
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
    jr nz, jr_001_6387

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

jr_001_6387:
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
    jr nz, jr_001_639d

    nop

jr_001_639d:
    add hl, bc
    jr nz, jr_001_63a2

    nop
    inc d

jr_001_63a2:
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
    jr nz, jr_001_63c6

    nop
    inc bc

jr_001_63c6:
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
    jr nz, jr_001_63e2

    nop
    inc e

jr_001_63e2:
    jr nz, jr_001_63e7

    nop
    ld c, $80

jr_001_63e7:
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
    jr nz, jr_001_6411

jr_001_6411:
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
    jr nz, jr_001_643c

    ld hl, $2006
    dec bc
    nop
    rlca
    jr nz, @+$08

jr_001_643c:
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
    jr nz, jr_001_6451

    nop
    ld b, $20
    ld b, $00

jr_001_6451:
    db $10
    add b
    jr jr_001_6455

jr_001_6455:
    inc [hl]
    ld bc, $0005
    ld bc, $0e10
    ld de, $1006
    jr nz, jr_001_6461

jr_001_6461:
    ld a, [bc]
    add b
    ld a, [bc]
    nop
    dec hl
    jr nz, jr_001_646e

    nop
    ld b, $20
    dec b
    nop
    dec b

jr_001_646e:
    jr nz, jr_001_6476

    nop
    ld a, [bc]
    add b
    inc c
    nop
    ld a, [bc]

jr_001_6476:
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
    db $18

    nop

jr_001_64d3:
    inc b
    ld [$0400], sp
    ld [$0008], sp
    inc b
    inc d
    db $10
    ld [$1010], sp
    inc d
    jr jr_001_64f7

    nop
    inc c
    inc b
    jr jr_001_64e8

jr_001_64e8:
    inc d
    inc d
    ld [$0404], sp
    inc c
    nop
    jr jr_001_64f5

    nop
    ld [$0c0c], sp

jr_001_64f5:
    jr jr_001_64f7

jr_001_64f7:
    inc c
    ld [$1800], sp
    db $10
    inc d
    inc d
    jr jr_001_6508

    inc h
    ld h, [hl]
    ld b, c
    ld h, [hl]
    dec a
    ld h, a
    and e
    ld h, [hl]

jr_001_6508:
    ld [hl], c
    ld h, a
    db $f4
    ld h, [hl]
    ld l, h
    ld h, [hl]
    cp h
    ld h, [hl]
    inc l
    ld h, [hl]
    ld c, c
    ld h, [hl]
    ld d, c
    ld h, a
    ld c, c
    ld h, [hl]
    ld c, c
    ld h, [hl]
    inc b
    ld h, a
    ld [hl], d
    ld h, [hl]
    call nz, Call_000_1166
    ld l, b
    add hl, de
    ld l, b
    jp c, $e267

    ld h, a
    ld hl, $2168
    ld l, b
    ld hl, $ea68
    ld h, a
    ld [hl], b
    ld l, a
    ld a, e
    ld l, a
    add [hl]
    ld l, a
    sub c
    ld l, a
    sbc h
    ld l, a
    and a
    ld l, a
    or d
    ld l, a
    cp l
    ld l, a
    ret z

    ld l, a
    db $d3
    ld l, a
    sbc $6f
    jp hl


    ld l, a
    db $f4
    ld l, a
    rst $38
    ld l, a
    ld a, [bc]
    ld [hl], b
    dec d
    ld [hl], b
    jr nz, @+$72

Call_001_6552:
    ret


Jump_001_6553:
    push af
    push bc
    push de
    push hl
    ld a, [$df7f]
    cp $01
    jr z, @+$48

    cp $02
    jr z, jr_001_65dd

    ld a, [$df7e]
    and a
    jr nz, jr_001_65e3

jr_001_6568:
    ldh a, [$e4]
    and a
    jr z, jr_001_657a

    xor a
    ld [$dfe0], a
    ld [$dfe8], a
    ld [$dff0], a
    ld [$dff8], a

jr_001_657a:
    db $cd

    db $52, $65, $cd, $0e, $6a, $cd, $2e, $6a

    call Call_001_6879
    call Call_001_6a52
    call Call_001_6c75
    call Call_001_6a96

jr_001_658f:
    xor a
    ld [$dfe0], a
    ld [$dfe8], a
    ld [$dff0], a
    db $ea
    db $f8

    db $df, $ea, $7f, $df, $e1, $d1, $c1, $f1, $c9, $cd, $f8, $69, $af, $ea, $e1

    rst $18
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
    ld hl, $6f1a
    call Call_001_69c9
    ld a, $30
    ld [$df7e], a
    ld hl, $65fb

jr_001_65d3:
    call Call_001_698e
    jr jr_001_658f

    ld hl, $65ff
    jr jr_001_65d3

jr_001_65dd:
    xor a
    ld [$df7e], a
    jr jr_001_6568

jr_001_65e3:
    ld hl, $df7e
    dec [hl]

    db $7e, $fe, $28, $28, $ec, $fe, $20, $28, $e0, $fe

    jr jr_001_661b

    db $e4
    cp $10
    jr nz, jr_001_658f

    inc [hl]
    jr jr_001_658f

    or d
    db $e3
    add e
    rst $00
    or d
    db $e3
    pop bc
    rst $00

Call_001_6603:
    ld a, [$dff1]
    cp $01
    ret


    ld a, [$dfe1]
    cp $05
    ret


    ld a, [$dfe1]
    cp $07
    ret


    nop
    or l
    ret nc

    ld b, b
    rst $00
    nop

jr_001_661b:
    or l
    jr nz, @+$42

    rst $00
    nop
    or [hl]
    and c
    add b

    db $c7, $3e, $05, $21, $15

    ld h, [hl]
    jp Jump_001_6967


    call Call_001_69bc
    and a
    ret nz

    ld hl, $dfe4
    inc [hl]
    ld a, [hl]
    cp $02
    jp z, $664e

    ld hl, $661a
    db $c3
    add a

    db $69, $3e, $03, $21, $1f, $66, $c3, $67, $69, $cd, $bc, $69, $a7, $c0, $af, $ea
    db $e1, $df, $e0, $10

    ld a, $08
    ldh [rNR12], a
    ld a, $80
    ldh [rNR14], a
    ld hl, $df9f
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
    ld hl, $6662
    jp Jump_001_6967


    ld hl, $dfe4
    inc [hl]
    ld a, [hl]
    cp $04
    jr z, jr_001_6692

    cp $0b
    jr z, @+$1b

    cp $0f
    jr z, jr_001_6692

    cp $18
    jp z, Jump_001_6689

    ret


Jump_001_6689:
    ld a, $01
    ld hl, $dff0
    ld [hl], a
    jp $664e


jr_001_6692:
    ld hl, $6667

    db $c3, $87, $69, $21, $62, $66, $c3, $87, $69, $48, $bc, $42, $66, $87, $cd, $03
    db $66, $c8, $cd, $0f, $66, $c8, $cd, $09, $66, $c8

    ld a, $02
    ld hl, $669e
    jp Jump_001_6967


    nop
    or b
    pop hl
    or b
    rst $00
    ld a, $07
    ld hl, $66b7
    jp Jump_001_6967


    call Call_001_69bc
    and a
    ret nz

    ld hl, $66b7
    call Call_001_6987
    ld hl, $dfe4
    inc [hl]
    ld a, [hl]
    cp $03
    jp z, $664e

    ret


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

    db $43, $63, $83, $a3, $c3, $d3, $e3, $ff, $cd, $03, $66, $c8, $cd, $0f, $66, $c8

    ld a, $06
    ld hl, $66da
    jp Jump_001_6967


    call Call_001_69bc
    and a
    ret nz

    ld hl, $dfe4
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld hl, $66df
    add hl, bc
    ld a, [hl]
    and a
    jp z, $664e

    ld e, a
    ld hl, $66ea
    add hl, bc
    ld a, [hl]
    ld d, a
    ld b, $86
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
    call Call_001_6603

    db $c8, $cd, $0f, $66, $c8, $cd, $09, $66, $c8, $3e, $03, $21, $2d, $67, $c3, $67
    db $69, $cd, $bc, $69, $a7, $c0, $21, $e4, $df, $4e, $34, $06, $00, $21, $32, $67
    db $09, $7e, $a7, $ca, $4e, $66, $5f, $21, $38, $67, $09, $7e, $57, $06, $87, $18
    db $b1, $cd, $0f, $66, $c8, $3e, $28, $21, $7d, $67, $c3, $67, $69, $b7, $80, $90
    db $ff, $83, $00, $d1, $45, $80, $00, $f1, $54, $80, $00, $d5, $65, $80, $00, $70
    db $66, $80, $65, $65, $65, $64, $57, $56, $55, $54, $54, $54, $54

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
    jr nc, @+$32

    jr nz, jr_001_67ef

    jr nz, @+$22

    jr nz, jr_001_67f3

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$12

    db $10
    ld a, $30
    ld hl, $678a
    jp Jump_001_6967


    ld a, $30
    ld hl, $678e
    jp Jump_001_6967


    call Call_001_69bc
    and a
    ret nz

jr_001_67ef:
    ld hl, $dffc
    ld a, [hl]

jr_001_67f3:
    ld c, a
    cp $24
    jp z, Jump_001_6826

    inc [hl]
    db $06

    db $00, $c5, $21, $92, $67

    add hl, bc
    ld a, [hl]
    ldh [rNR43], a
    pop bc
    ld hl, $67b6
    add hl, bc
    ld a, [hl]
    ldh [rNR42], a
    ld a, $80
    ldh [rNR44], a
    ret


    ld a, $20
    ld hl, $6786
    jp Jump_001_6967


    ld a, $12
    ld hl, $6782
    jp Jump_001_6967


    call Call_001_69bc
    and a
    ret nz

Jump_001_6826:
    xor a
    ld [$dff9], a
    ld a, $08
    ldh [rNR42], a
    ld a, $80
    ldh [rNR44], a
    ld hl, $dfcf

jr_001_6835:
    res 7, [hl]
    ret


jr_001_6838:
    add b
    ld a, [hl-]
    jr nz, jr_001_689c

    add $21
    ld a, [bc]
    ld l, a
    call Call_001_693e
    ldh a, [rDIV]
    and $1f
    ld b, a
    ld a, $d0
    add b
    ld [$dff5], a
    ld hl, $6838
    jp Jump_001_6995


Jump_001_6854:
    ldh a, [rDIV]
    db $e6

    db $0f, $47, $21, $f4, $df, $34, $7e, $21, $f5, $df, $fe, $0e, $30, $0a, $34, $34
    db $7e, $e6, $f0, $b0

    ld c, $1d
    ld [c], a
    ret


    cp $1e
    jp z, Jump_001_691f

    dec [hl]
    dec [hl]
    dec [hl]
    jr @-$10

Call_001_6879:
    ld a, [$dff0]
    cp $01
    jp z, Jump_001_68a8

    cp $02
    jp z, $683d

    ld a, [$dff1]
    cp $01
    jp z, Jump_001_68f3

    cp $02
    jp z, Jump_001_6854

    ret


    add b
    add b
    jr nz, jr_001_6835

    add a
    add b
    ld hl, sp+$20

jr_001_689c:
    sbc b
    add a
    add b
    ei
    jr nz, jr_001_6838

    add a
    add b
    or $20
    sub l
    add a

Jump_001_68a8:
    ld hl, $6eda
    call Call_001_693e
    ld hl, $6897
    ld a, [hl]
    ld [$dff6], a
    ld a, $01
    ld [$dff5], a
    ld hl, $6894

jr_001_68bd:
    jp Jump_001_6995


jr_001_68c0:
    ld a, $00
    ld [$dff5], a
    ld hl, $689c
    ld a, [hl]
    ld [$dff6], a
    ld hl, $6899
    jr jr_001_68bd

jr_001_68d1:
    ld a, $01
    ld [$dff5], a
    ld hl, $68a1
    ld a, [hl]
    ld [$dff6], a
    ld hl, $689e
    jr jr_001_68bd

jr_001_68e2:
    ld a, $02
    ld [$dff5], a
    ld hl, $68a6
    ld a, [hl]
    ld [$dff6], a
    ld hl, $68a3
    jr jr_001_68bd

Jump_001_68f3:
    ld hl, $dff4
    inc [hl]
    ld a, [hl+]
    cp $09
    jr z, jr_001_68c0

    cp $13
    jr z, jr_001_68d1

    cp $17
    jr z, jr_001_68e2

    cp $20
    jr z, jr_001_691f

    ld a, [hl+]
    cp $00
    ret z

    cp $01
    jr z, jr_001_6915

    cp $02
    jr z, jr_001_6919

    ret


jr_001_6915:
    inc [hl]
    inc [hl]
    jr jr_001_691b

jr_001_6919:
    dec [hl]
    dec [hl]

jr_001_691b:
    ld a, [hl]
    ldh [rNR33], a
    ret


Jump_001_691f:
jr_001_691f:
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
    ld hl, $6f1a
    jr jr_001_6963

Call_001_693e:
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

Set_sound_1_regs::
    set 7, [hl]
    ld hl, $dfaf
    set 7, [hl]

Set_sound_2_regs::
    ld hl, $dfcf
    set 7, [hl]
    pop hl

jr_001_6963:
    call Call_001_69c9
    ret


Jump_001_6967:
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
    jr z, jr_001_6987

    cp $f5
    jr z, jr_001_6995

    cp $fd
    jr z, jr_001_699c

    ret


Call_001_6987:
Jump_001_6987:
jr_001_6987:
    push bc
    ld c, $10
    ld b, $05
    jr jr_001_69a1

Call_001_698e:
    push bc
    ld c, $16
    ld b, $04
    jr jr_001_69a1

Jump_001_6995:
jr_001_6995:
    push bc
    ld c, $1a

Copy_from_hl_to_sound_wave_pattern_ram::
    ld b, $05
    jr jr_001_69a1

jr_001_699c:
    push bc
    ld c, $20
    ld b, $04

jr_001_69a1:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b

Reset_some_sound_registers::
    jr nz, jr_001_69a1

    pop bc
    ret


Call_001_69a9:
    inc e
    ld [$df71], a

Call_001_69ad:
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


Call_001_69bc:
    push de
    ld l, e
    ld h, d
    inc [hl]
    ld a, [hl+]
    cp [hl]
    jr nz, jr_001_69c7

    dec l
    xor a
    ld [hl], a

jr_001_69c7:
    pop de
    ret


Call_001_69c9:
    push bc
    ld c, $30

jr_001_69cc:
    ld a, [hl+]
    ld [c], a
    inc c
    ld a, c
    cp $40
    jr nz, jr_001_69cc

    pop bc
    ret


Call_001_69d6:
Jump_001_69d6:
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

Call_001_69f8:
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


    ld de, $dfe0
    ld a, [de]
    and a
    jr z, jr_001_6a21

    ld hl, $df9f
    set 7, [hl]
    ld hl, $6500
    call Call_001_69a9
    jp hl


jr_001_6a21:
    inc e
    ld a, [de]
    and a
    jr z, jr_001_6a2d

    ld hl, $6510
    call Call_001_69ad
    jp hl


jr_001_6a2d:
    ret


    ld de, $dff8
    ld a, [de]
    and a
    jr z, jr_001_6a41

    ld hl, $dfcf
    set 7, [hl]
    ld hl, $6520
    call Call_001_69a9
    jp hl


jr_001_6a41:
    inc e
    ld a, [de]
    and a
    jr z, jr_001_6a4d

    ld hl, $6528
    call Call_001_69ad
    jp hl


jr_001_6a4d:
    ret


jr_001_6a4e:
    call Call_001_69d6
    ret


Call_001_6a52:
    ld hl, $dfe8
    ld a, [hl+]
    and a
    ret z

    cp $ff
    jr z, jr_001_6a4e

    ld [hl], a
    ld b, a
    ld hl, $6530
    and $1f
    call Call_001_69ad
    call Call_001_6b44
    call Call_001_6a6d
    ret


Call_001_6a6d:
    ld a, [$dfe9]
    and a
    ret z

    ld hl, $6aef

jr_001_6a75:
    dec a
    jr z, jr_001_6a7e

    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_001_6a75

jr_001_6a7e:
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


Call_001_6a96:
    ld a, [$dfe9]
    and a
    jr z, @+$3f

    ld hl, $df75
    ld a, [$df78]
    cp $01
    jr z, @+$39

    cp $03
    jr z, @+$31

    inc [hl]
    ld a, [hl+]
    cp [hl]
    jr nz, @+$35

    dec l
    ld [hl], $00
    inc l
    inc l
    inc [hl]
    ld a, [$df79]
    bit 0, [hl]
    jp z, $6ac0

    db $fa

    db $7a, $df, $47, $fa, $f1, $df, $a7, $28, $04, $cb, $d0, $cb, $f0, $fa, $f9, $df
    db $a7, $28, $04, $cb, $d8, $cb, $f8, $78, $e0, $25, $c9, $3e, $ff, $18, $f9, $fa
    db $79, $df, $18, $de, $fa, $f9, $df, $a7, $20, $f1, $fa, $f1, $df, $a7, $20, $eb
    db $c9, $01, $24, $ef, $56, $01, $00, $e5, $00, $01, $20, $fd, $00, $01, $20, $de
    db $f7, $02, $18, $7f

    rst $30
    inc bc
    jr @-$07

    ld a, a
    inc bc
    ld c, b
    rst $18
    ld e, e
    db $01
    db $18

Copy_cannot_cross_page_boundary::
    db $db
    rst $20
    ld bc, $fd00
    rst $30
    inc bc
    jr nz, jr_001_6b95

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

Call_001_6b33:
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


Call_001_6b3e:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    ret


Call_001_6b44:
    call Call_001_69f8
    xor a
    ld [$df75], a
    ld [$df77], a
    ld de, $df80
    ld b, $00
    ld a, [hl+]
    ld [de], a
    inc e
    call Call_001_6b3e
    ld de, $df90
    call Call_001_6b3e
    ld de, $dfa0
    call Call_001_6b3e
    ld de, $dfb0
    call Call_001_6b3e
    ld de, $dfc0
    call Call_001_6b3e
    ld hl, $df90
    ld de, $df94
    call Call_001_6b33
    ld hl, $dfa0
    ld de, $dfa4
    call Call_001_6b33
    ld hl, $dfb0
    ld de, $dfb4
    call Call_001_6b33
    ld hl, $dfc0
    ld de, $dfc4
    call Call_001_6b33

jr_001_6b95:
    ld bc, $0410
    ld hl, $df92

jr_001_6b9b:
    ld [hl], $01
    ld a, c
    add l
    ld l, a
    dec b
    jr nz, jr_001_6b9b

    xor a
    ld [$df9e], a
    ld [$dfae], a
    ld [$dfbe], a
    ret


jr_001_6bae:
    push hl
    xor a
    ldh [rNR30], a
    ld l, e
    ld h, d
    call Call_001_69c9
    pop hl
    jr jr_001_6be4

Jump_001_6bba:
    call Call_001_6bea
    call Call_001_6bff
    ld e, a
    call Call_001_6bea
    call Call_001_6bff
    ld d, a
    call Call_001_6bea
    call Call_001_6bff

b_is_ind_hl::
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
    jr z, jr_001_6bae

jr_001_6be4:
    call Call_001_6bea
    jp Jump_001_6c8f


Call_001_6bea:
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    inc de

jr_001_6bf0:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl-], a
    pop de
    ret


Call_001_6bf6:
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    inc de
    inc de
    jr jr_001_6bf0

Call_001_6bff:
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    ld a, [bc]
    ld b, a
    ret


jr_001_6c06:
    pop hl
    jr jr_001_6c35

Jump_001_6c09:
    ld a, [$df70]
    cp $03
    jr nz, jr_001_6c20

    ld a, [$dfb8]
    bit 7, a
    jr z, jr_001_6c20

    ld a, [hl]
    cp $06
    jr nz, jr_001_6c20

    ld a, $40
    ldh [rNR32], a

jr_001_6c20:
    push hl
    ld a, l
    add $09
    ld l, a
    ld a, [hl]
    and a
    jr nz, jr_001_6c06

    ld a, l
    add $04
    ld l, a
    bit 7, [hl]
    jr nz, jr_001_6c06

    pop hl
    call Call_001_6d98

Jump_001_6c35:
jr_001_6c35:
    dec l
    dec l
    jp Jump_001_6d6a


Jump_001_6c3a:
    dec l
    dec l
    dec l
    dec l
    call Call_001_6bf6

jr_001_6c41:
    ld a, l
    add $04
    ld e, a
    ld d, h
    call Call_001_6b33
    cp $00
    jr z, jr_001_6c6c

    cp $ff
    jr z, jr_001_6c55

    inc l
    jp Jump_001_6c8d


jr_001_6c55:
    dec l
    push hl
    call Call_001_6bf6
    call Call_001_6bff
    ld e, a
    call Call_001_6bea
    call Call_001_6bff
    ld d, a
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl-], a
    jr jr_001_6c41

jr_001_6c6c:
    ld hl, $dfe9
    ld [hl], $00
    call Call_001_69d6
    ret


Call_001_6c75:
    ld hl, $dfe9
    ld a, [hl]
    and a
    ret z

    ld a, $01
    ld [$df70], a
    ld hl, $df90

Jump_001_6c83:
    inc l
    ld a, [hl+]
    and a
    jp z, Jump_001_6c35

    dec [hl]
    jp nz, Jump_001_6c09

Jump_001_6c8d:
    inc l
    inc l

Jump_001_6c8f:
    call Call_001_6bff
    cp $00
    jp z, Jump_001_6c3a

    cp $9d
    jp z, Jump_001_6bba

    and $f0
    cp $a0
    jr nz, jr_001_6cbc

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
    call Call_001_6bea
    call Call_001_6bff

jr_001_6cbc:
    ld a, b
    ld c, a
    ld b, $00
    call Call_001_6bea
    ld a, [$df70]
    cp $04
    jp z, Jump_001_6ced

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
    jr z, jr_001_6ce8

    ld [hl], $00
    ld hl, $6e33
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    pop hl
    jp Jump_001_6d04


jr_001_6ce8:
    ld [hl], $01
    pop hl
    jr jr_001_6d04

Jump_001_6ced:
    push hl
    ld de, $dfc6
    ld hl, $6ec5
    add hl, bc

jr_001_6cf5:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, e
    cp $cb
    jr nz, jr_001_6cf5

    ld c, $20
    ld hl, $dfc4
    jr jr_001_6d32

Jump_001_6d04:
jr_001_6d04:
    push hl
    ld a, [$df70]
    cp $01
    jr z, jr_001_6d2d

    cp $02
    jr z, jr_001_6d29

    ld c, $1a
    ld a, [$dfbf]
    bit 7, a
    jr nz, jr_001_6d1e

    xor a
    ld [c], a
    ld a, $80
    ld [c], a

jr_001_6d1e:
    inc c
    inc l
    inc l
    inc l
    inc l
    ld a, [hl+]
    ld e, a
    ld d, $00
    jr jr_001_6d3e

jr_001_6d29:
    ld c, $16
    jr jr_001_6d32

jr_001_6d2d:
    ld c, $10
    ld a, $00
    inc c

jr_001_6d32:
    inc l
    inc l
    inc l
    ld a, [hl-]
    and a
    jr nz, jr_001_6d88

    ld a, [hl+]
    ld e, a

jr_001_6d3b:
    inc l
    ld a, [hl+]
    ld d, a

jr_001_6d3e:
    push hl
    inc l
    inc l
    ld a, [hl+]
    and a
    jr z, jr_001_6d47

    ld e, $01

jr_001_6d47:
    inc l
    inc l
    ld [hl], $00
    inc l
    ld a, [hl]
    pop hl
    bit 7, a
    jr nz, jr_001_6d65

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

jr_001_6d65:
    pop hl
    dec l
    ld a, [hl-]
    ld [hl-], a
    dec l

Jump_001_6d6a:
    ld de, $df70
    ld a, [de]
    cp $04
    jr z, jr_001_6d7b

    inc a
    ld [de], a
    ld de, $0010
    add hl, de
    jp Jump_001_6c83


jr_001_6d7b:
    ld hl, $df9e
    inc [hl]
    ld hl, $dfae
    inc [hl]
    ld hl, $dfbe
    inc [hl]
    ret


jr_001_6d88:
    ld b, $00
    push hl
    pop hl
    inc l
    jr jr_001_6d3b

    ld a, b
    srl a
    ld l, a
    ld h, $00
    add hl, de
    ld e, [hl]
    ret


Call_001_6d98:
    push hl
    ld a, l
    add $06
    ld l, a

The_next_4_instructions_are_not_used::
    ld a, [hl]
    and $0f
    jr z, jr_001_6dba

    ld [$df71], a
    ld a, [$df70]
    ld c, $13
    cp $01
    jr z, jr_001_6dbc

    ld c, $18
    cp $02
    jr z, jr_001_6dbc

    ld c, $1d
    cp $03
    jr z, jr_001_6dbc

jr_001_6dba:
    pop hl
    ret


jr_001_6dbc:
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
    db $fe

    db $01, $18, $09, $fe, $03, $18, $00, $21, $ff, $ff, $18, $1c, $11, $fc, $6d, $cd
    db $8f, $6d, $cb, $40, $20, $02, $cb, $33, $7b, $e6, $0f, $cb, $5f, $28, $06, $26
    db $ff, $f6, $f0, $18, $02, $26, $00, $6f, $d1, $19, $7d, $e2, $0c, $7c, $e2, $18
    db $be, $00, $00, $00, $00, $00, $00, $10, $00

comprise_a_72_data_word_tabl::
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
    jp c, $1603

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

    db $07, $83, $07, $8a, $07, $90, $07, $97, $07, $9d, $07, $a2, $07, $a7, $07, $ac
    db $07, $b1, $07, $b6, $07, $ba, $07, $be, $07, $c1, $07, $c4, $07, $c8, $07, $cb
    db $07, $ce, $07, $d1, $07, $d4, $07, $d6, $07, $d9, $07, $db, $07, $dd, $07, $df
    db $07, $00, $00, $00, $00, $00, $c0, $a1, $00, $3a, $00, $c0, $b1, $00, $29, $01
    db $c0, $61, $00, $3a, $00, $c0, $12, $34, $45, $67, $9a, $bc, $de, $fe, $98, $7a
    db $b7, $be, $a8, $76, $54, $31, $01, $23, $44, $55, $67, $88, $9a, $bb, $a9, $88
    db $76, $55, $44, $33, $22, $11, $01, $23, $45, $67, $89, $ab, $cd, $ef, $fe, $dc
    db $ba, $98, $76, $54, $32, $10, $a1, $82, $23, $34, $45, $56, $67, $78, $89, $9a
    db $ab, $bc, $cd, $64, $32, $10, $11, $23, $56, $78, $99, $98, $76, $67, $9a, $df
    db $fe, $c9, $85, $42, $11, $31, $02, $04, $08, $10, $20, $40, $0c, $18, $30, $05
    db $00, $01, $03, $05, $0a, $14, $28, $50, $0f, $1e, $3c, $03, $06, $0c, $18, $30
    db $60, $12, $24, $48, $08, $10

    db $00, $07, $0e, $1c, $38, $70, $15, $2a, $54, $04, $08

    db $10, $20, $40, $80, $18, $30, $60, $04, $09, $12, $24

    db $48, $90, $1b, $36, $6c, $0c, $18, $04, $0a, $14, $28

    db $50, $a0, $1e, $3c, $78, $00, $3f, $6f, $f4, $7c, $fa

    db $7c, $0c, $7d, $1c, $7d, $00, $36, $6f, $43, $7e, $3f

    db $7e, $45, $7e, $47, $7e, $00, $3f, $6f, $36, $76, $2e

    db $76, $3c, $76, $5e, $76, $00, $2a, $6f, $fb, $75, $f7

    db $75, $fd, $75, $00, $00, $00, $3f, $6f, $8d, $71, $73

    db $71, $a7, $71, $c1, $71, $00, $3f, $6f, $c1, $72, $b3

    db $72, $cf, $72, $fd, $72, $00, $3f, $6f, $39, $70, $2b

    db $70, $00, $00, $00, $00, $00, $36, $6f, $98, $7e, $8c

    db $7e, $a4, $7e, $b0, $7e, $00, $3f, $6f, $23, $7c, $1f

    db $7c, $25, $7c, $27, $7c, $00, $3f, $6f, $00, $00, $fb

    db $79, $00, $00, $00, $00, $00, $3f, $6f, $00, $00, $21

    db $7a, $25, $7a, $00, $00, $00, $3f, $6f, $6e, $7a, $6a

    db $7a, $70, $7a, $00, $00, $00, $3f, $6f, $da, $7a, $de, $7a, $e0, $7a, $e2, $7a
    db $00, $3f, $6f, $60, $7b, $66, $7b, $6a, $7b, $6e, $7b, $00, $3f, $6f, $67, $78
    db $71, $78, $79, $78, $81, $78, $00, $5c, $6f

    db $3e, $75, $46, $75, $4c, $75, $00, $00, $00, $3f, $6f, $88, $75, $90, $75, $96
    db $75, $00, $00, $47, $70, $65, $70, $47, $70, $7e, $70, $c4, $70, $ff, $ff, $2b
    db $70, $93, $70, $a5, $70, $93, $70, $b6, $70, $25, $71, $ff, $ff, $39, $70, $9d
    db $74, $00, $41, $a2, $44, $4c, $56, $4c, $42, $4c, $44, $4c, $3e, $4c, $3c, $4c
    db $44, $4c, $56, $4c, $42, $4c, $44, $4c, $3e, $4c, $3c, $4c, $00, $44, $4c, $44
    db $3e, $4e, $48, $42, $48, $42, $3a, $4c, $44, $3e, $4c, $48, $44, $42, $3e, $3c
    db $34, $3c, $42, $4c, $48, $00, $44, $4c, $44, $3e, $4e, $48, $42, $48, $42, $3a
    db $52, $48, $4c, $52, $4c, $44, $3a, $42, $a8, $44, $00, $9d, $64, $00, $41, $a3
    db $26, $3e, $3c, $26, $2c, $34, $3e, $36, $34, $3e, $2c, $34, $00, $26, $3e, $30
    db $22, $3a, $2c, $1e, $36, $30, $a2, $34, $36, $34, $30, $2c, $2a, $00, $a3, $26
    db $3e, $30, $22, $3a, $2a, $2c, $34, $34, $2c, $22, $14, $00, $a2, $52, $4e, $4c
    db $48, $44, $42, $44, $48, $4c, $44, $48, $4e, $4c, $4e, $a3, $52, $42, $a2, $44
    db $48, $a3, $4c, $48, $4c, $56, $50, $a2, $56, $5a, $a3, $5c, $5a, $a2, $56, $52
    db $50, $4c, $50, $4a, $a8, $4c, $a7, $52, $a1, $56, $58, $a3, $56, $a2, $52, $4e
    db $52, $4c, $4e, $48, $a7, $56, $a1, $5a, $5c, $a3, $5a, $a2, $56, $54, $56, $50
    db $54, $4c, $5a, $54, $4c, $54, $5a, $60, $66, $54, $64, $54, $60, $54, $a3, $5c
    db $a2, $60, $5c, $5a, $5c, $a1, $56, $5a, $a4, $56, $a2, $01, $00, $a2, $34, $3a
    db $44, $3a, $30, $3a, $34, $3a, $2c, $3a, $2a, $3a, $2c, $3a, $44, $3a, $30, $3a
    db $34, $3a, $2c, $3a, $2a, $3a, $2c, $34, $2c, $26, $3e, $38, $32, $38, $2a, $38
    db $32, $38, $a3, $34, $42, $2a, $a2, $34, $3a, $42, $3a, $30, $3a, $2e, $34, $26
    db $34, $2e, $34, $a8, $30, $a2, $32, $38, $2a, $38, $32, $38, $a8, $34, $a3, $34

    db $2a, $24, $1c, $20, $24, $2c, $30, $34, $a8, $26, $00, $c7, $71, $d6, $71, $0f
    db $72, $d6, $71, $41, $72, $a4, $72, $d6, $71, $0f, $72, $c7, $71, $d6, $71, $76
    db $72, $ff, $ff, $73, $71, $cc, $71, $ee, $71, $27, $72, $ee, $71, $55, $72, $a9
    db $72, $ee, $71, $27, $72, $cc, $71, $ee, $71, $8a, $72, $ff, $ff, $8d, $71, $d1
    db $71, $fc, $71, $34, $72, $fc, $71, $64, $72, $ae, $72, $fc, $71, $34, $72, $d1
    db $71, $fc, $71, $97, $72, $ff, $ff, $a7, $71, $0a, $72, $ff, $ff, $c1, $71, $9d
    db $84, $00, $80, $00, $9d, $54, $00, $80, $00, $9d, $1a, $6f, $a0, $00, $a2, $44
    db $48, $44, $42, $44, $48, $4c, $4e, $a3, $52, $a2, $01, $56, $a3, $5c, $01, $a9
    db $58, $5c, $58, $a8, $48, $00, $a3, $01, $3e, $3e, $01, $44, $44, $01, $48, $48
    db $01, $40, $40, $00, $a3, $4e, $4e, $4e, $44, $56, $56, $52, $58, $58, $40, $52
    db $52, $00, $a3, $06, $0b, $0b, $00, $a2, $40, $44, $40, $3e, $40, $44, $48, $4c
    db $a3, $4e, $a2, $01, $52, $a3, $58, $01, $a9, $56, $58, $56, $a8, $44, $00, $01
    db $3a, $3a, $01, $40, $40, $01, $44, $44, $01, $40, $40, $00, $44, $4c, $4c, $44
    db $52, $52, $4e, $56, $56, $44, $4c, $4c, $00, $a3, $58, $a7, $56, $a2, $52, $a3
    db $56, $a7, $4e, $a2, $48, $4c, $4c, $a3, $4c, $4e, $a8, $52, $00, $01, $46, $46
    db $01, $44, $44, $a2, $40, $40, $a3, $40, $40, $a8, $40, $00, $46, $4e, $4e, $44
    db $56, $56, $a2, $52, $52, $a3, $52, $48, $4c, $a7, $48, $a2, $46, $00, $a3, $52
    db $a7, $58, $a2, $56, $a3, $56, $a7, $5c, $a2, $66, $60, $60, $a3, $60, $64, $a8
    db $66, $00, $01, $46, $46, $01, $44, $44, $01, $40, $3a, $01, $46, $44, $00, $46
    db $4e, $4e, $44, $56, $56, $40, $52, $44, $4e, $58, $56, $00, $9d, $63, $00, $80
    db $00, $9d, $44, $00, $80, $00, $9d, $1a, $6f, $a0, $00, $06, $73, $3a, $73, $62
    db $73, $62, $73, $c4, $73, $ff, $ff, $b3, $72, $03, $73, $37, $73, $89, $73, $89
    db $73, $46, $74, $ff, $ff, $c1, $72, $1a, $73, $4e, $73, $b0, $73, $b0, $73, $b0
    db $73, $b0, $73, $b0, $73, $b0, $73, $bb, $74, $d9, $74, $d9, $74, $d9, $74, $e9
    db $74, $f9, $74, $f9, $74, $09, $75, $09, $75, $19, $75, $19, $75, $09, $75, $29
    db $75, $ff, $ff, $cf, $72, $2e, $73, $ff, $ff, $fd, $72, $a5, $01, $00, $9d, $62

    db $00, $80, $a2, $3a, $a1, $3a, $3a, $a2, $30, $30, $3a, $a1, $3a, $3a, $a2, $30
    db $30, $00, $9d, $1a, $6f, $a0, $a2, $3a, $a1, $3a, $3a, $a2, $30, $30, $3a, $a1
    db $3a, $3a, $a2, $30, $30, $00, $a2, $06, $a1, $06, $06, $a2, $06, $06, $00, $a5
    db $01, $00, $9d, $32, $00, $80, $a2, $3a, $a1, $3a, $3a, $a2, $30, $30, $3a, $a1
    db $3a, $3a, $a2, $30, $30, $00, $9d, $1a, $6f, $a0, $a2, $3a, $a1, $3a, $3a, $a2
    db $30, $30, $3a, $a1, $3a, $3a, $a2, $30, $30, $00, $9d, $82, $00, $80, $a2, $3a
    db $48, $52, $50, $52, $a1, $48, $48, $a2, $4a, $44, $48, $a1, $40, $40, $a2, $44
    db $3e, $40, $a1, $3a, $3a, $a2, $3e, $38, $3a, $30, $32, $38, $3a, $30, $32, $3e
    db $00, $9d, $53, $00, $40, $a2, $30, $40, $40, $44, $40, $a1, $3e, $40, $a2, $44
    db $3e, $40, $a1, $38, $3a, $a2, $3e, $38, $3a, $a1, $2e, $30, $a2, $38, $30, $30
    db $28, $2c, $2c, $30, $28, $2c, $38, $00, $9d, $1a, $6f, $a0, $a2, $3a, $a1, $3a
    db $3a, $a2, $30, $30, $3a, $a1, $3a, $3a, $a2, $30, $30, $00, $a8, $3a, $a2, $3e
    db $38, $a8, $3a, $a3, $3e, $a2, $40, $a1, $40, $40, $a2, $44, $3e, $40, $a1, $40
    db $40, $a2, $44, $3e, $a8, $40, $a3, $44, $a2, $48, $a1, $48, $48, $a2, $4a, $44
    db $48, $a1, $48, $48, $a2, $4a, $44, $a8, $48, $a3, $4c, $a2, $4e, $a1, $4e, $4e
    db $a2, $4e, $4e, $52, $4e, $4e, $4c, $4e, $a1, $4e, $4e, $a2, $4e, $4e, $52, $4e
    db $4e, $4c, $4e, $a1, $4e, $4e, $a2, $4e, $4e, $4c, $a1, $4c, $4c, $a2, $4c, $4c
    db $4a, $a1, $4a, $4a, $a2, $4a, $44, $3e, $40, $44, $36, $44, $a1, $40, $40, $a2
    db $36, $a3, $40, $a1, $36, $3a, $a2, $36, $30, $44, $a1, $40, $40, $a2, $36, $a3
    db $40, $a1, $36, $3a, $a2, $36, $2e, $a5, $36, $a8, $01, $a3, $38, $00, $a8, $30
    db $a2, $30, $30, $a8, $30, $a3, $36, $a5, $01, $a8, $01, $a3, $3e, $a2, $40, $a1
    db $40, $40, $a2, $44, $3e, $40, $a1, $40, $40, $a2, $44, $3e, $a8, $36, $a3, $3a
    db $a2, $3e, $a1, $40, $44, $a2, $3e, $44, $48, $48, $48, $3a, $3e, $a1, $40, $44
    db $a2, $3e, $44, $46, $46, $46, $3a, $3e, $a1, $40, $44, $a2, $3e, $44, $3a, $a1
    db $3e, $40, $a2, $3a, $40, $3a, $a1, $3e, $40, $a2, $3e, $3e, $2c, $3a, $3e, $26
    db $30, $a1, $30, $30, $a2, $30, $a3, $30, $a1, $30, $34, $a2, $30, $28, $2e, $a1
    db $2e, $2e, $a2, $2e, $a3, $2e, $a1, $2e, $32, $a2, $2e, $28, $a5, $26, $a8, $01
    db $a3, $2c, $00, $a2, $3a, $a1, $3a, $3a, $a2, $32, $2c, $3a, $a1, $3a, $3a, $a2
    db $38, $30, $3a, $a1, $3a, $3a, $a2, $32, $2c, $3a, $a1, $3a, $3a, $a2, $2c, $1e
    db $00, $a2, $28, $a1, $40, $28, $a2, $1e, $36, $28, $a1, $40, $28, $a2, $1e, $36
    db $00, $a2, $28, $a1, $40, $28, $a2, $1e, $36, $28, $a1, $40, $28, $a2, $2c, $44
    db $00, $a2, $1e, $a1, $36, $1e, $a2, $1e, $36, $28, $a1, $40, $28, $a2, $28, $40
    db $00, $a2, $1e, $a1, $36, $1e, $a2, $1e, $36, $1e, $a1, $36, $1e, $a2, $1e, $36
    db $00, $a2, $22, $a1, $3a, $22, $a2, $22, $3a, $22, $a1, $3a, $22, $a2, $22, $3a
    db $00, $a2, $1e, $a1, $36, $1e, $a2, $1e, $36, $1e, $a1, $36, $1e, $a2, $a4, $3e
    db $00, $36, $3e, $44, $a4, $44, $52, $75, $5d, $75, $ff, $ff, $40, $75, $59, $75
    db $ff, $ff, $46, $75, $77, $75, $ff, $ff, $4c, $75, $9d, $20, $00, $81, $aa

    db $01, $00, $9d, $70, $00, $81, $a2, $42, $32, $38, $42, $46, $34, $3c, $46, $4a
    db $38, $42, $4a, $4c, $3c, $42, $4c, $46, $34, $3c, $46, $40, $2e, $34, $40, $00
    db $9d, $1a, $6f, $21, $a8, $42, $a3, $2a, $a8, $42, $a3, $2a, $a8, $42, $a3, $2a
    db $00, $9c, $75, $a7, $75, $ff, $ff, $8a, $75, $a3, $75, $ff, $ff, $90, $75, $e9
    db $75, $ff, $ff, $96, $75, $9d, $20, $00, $81, $aa

    db $01, $00, $9d, $70, $00, $81, $a2, $4c, $42, $50, $42, $54, $42, $50, $42, $56
    db $42, $54, $42, $50, $42, $54, $42, $4c, $42, $50, $42, $54, $42, $50, $42, $56
    db $42, $54, $42, $50, $42, $54, $42, $5a, $46, $56, $46, $54, $46, $50, $46, $4e
    db $46, $50, $46, $54, $46, $50, $46, $50, $3e, $4c, $3e, $4c, $3e, $4a, $3e, $4a
    db $3e, $46, $3e, $4a, $3e, $50, $3e, $00, $9d, $1a, $6f, $21, $a5, $4c, $4a, $46
    db $42, $38, $3e, $42, $42, $00, $ff, $75, $00, $00, $0f, $76, $1e, $76, $9d, $b2
    db $00, $80, $a2

    db $60, $5c, $60, $5c, $60, $62, $60, $5c, $a4, $60, $00, $9d, $92, $00, $80, $a2
    db $52, $4e, $52, $4e, $52, $54, $52, $4e, $a4, $52, $9d, $1a, $6f, $20, $a2, $62
    db $60, $62, $60, $62, $66, $62, $60, $a3, $62, $01, $6a, $76, $64, $77, $64, $77
    db $00, $00, $ba, $76, $a5, $77, $37, $78, $07, $77, $e6, $77, $e6, $77, $f0, $77
    db $e6, $77, $e6, $77, $f9, $77, $f0, $77, $e6, $77, $e6, $77, $f9, $77, $f0, $77
    db $02, $78, $0c, $78, $f9, $77, $f0, $77, $e6, $77, $56, $77, $56, $77, $15, $78
    db $15, $78, $15, $78, $15, $78, $9d, $c3, $00, $80, $a2

    db $3c, $3e, $3c, $3e, $38, $50, $a3, $01, $a2, $3c, $3e, $3c, $3e, $38, $50, $a3
    db $01, $a2, $01, $48, $01, $46, $01, $42, $01, $46, $a1, $42, $46, $a2, $42, $42
    db $38, $a3, $3c, $01, $a2, $3e, $42, $3e, $42, $3c, $54, $a3, $01, $a2, $3e, $42
    db $3e, $42, $3c, $54, $a3, $01, $a2, $01, $56, $01, $54, $01, $54, $01, $50, $a2
    db $01, $a1, $50, $54, $a2, $50, $4e, $a3, $50, $01, $00, $9d, $74, $00, $80, $a2
    db $36, $38, $36, $38, $2e, $3e, $a3, $01, $a2, $36, $38, $36, $38, $2e, $3e, $a3
    db $01, $a2, $01, $36, $01, $36, $01, $32, $01, $36, $36, $32, $32, $30, $a3, $36
    db $01, $a2, $38, $3c, $38, $3c, $36, $4e, $a3, $01, $a2, $38, $3c, $38, $3c, $36
    db $4e, $a3, $01, $a2, $01, $50, $01, $4e, $01, $46, $01, $46, $a2, $01, $a1, $48
    db $4e, $a2, $48, $46, $a3, $40, $01, $00, $9d, $1a, $6f, $20, $a2, $48, $46, $48
    db $46, $3e, $20, $a3, $01, $a2, $48, $46, $48, $46, $3e, $20, $a3, $01, $a2, $2e
    db $3c, $2e, $24, $24, $24, $24, $3c, $2a, $3e, $2a, $3e, $a6, $2e, $a3, $01, $a1
    db $01, $a2, $48, $46, $48, $46, $2e, $2e, $a3, $01, $a2, $48, $46, $48, $46, $2e
    db $2e, $a3, $01, $a2, $2a, $3c, $2a, $3c, $2e, $3e, $2e, $3e, $2e, $42, $2e, $42
    db $a6, $38, $a3, $01, $a1, $01, $00, $a8, $01, $a2, $06, $0b, $a8, $01, $a2, $06
    db $0b, $a5, $01, $01, $00, $9d, $c5, $00, $80, $a1, $46, $4a, $a4, $46, $a2, $01
    db $a3, $50, $a8, $4a, $a3, $01, $a1, $42, $46, $a4, $42, $a2, $01, $a3, $4e, $a1
    db $4e, $50, $a4, $46, $a7, $01, $a1, $40, $46, $a4, $40, $a2, $01, $a3, $46, $a1
    db $46, $4a, $a4, $42, $a7, $01, $a1, $36, $38, $a4, $36, $a2, $01, $a3, $3c, $a7
    db $42, $a4, $40, $a2, $01, $00, $9d, $84, $00, $41, $a1, $40, $42, $a4, $40, $a2
    db $01, $a3, $40, $a8, $42, $a3, $01, $a1, $3c, $40, $a4, $3c, $a2, $01, $a3, $3c
    db $a1, $3c, $40, $a4, $40, $a7, $01, $a1, $36, $32, $a4, $2e, $a2, $01, $a3, $40
    db $a1, $36, $38, $a4, $32, $a7, $01, $a1, $2e, $32, $a4, $2e, $a2, $01, $a3, $2a
    db $a7, $30, $a4, $2e, $a2, $01, $00, $a2, $38, $38, $01, $38, $38, $38, $01, $38
    db $00, $2e, $2e, $01, $2e, $2e, $2e, $01, $2e, $00, $2a, $2a, $01, $2a, $2a, $2a
    db $01, $2a, $00, $a2, $38, $38, $01, $38, $36, $36, $01, $36, $00, $32, $32, $01
    db $32, $2e, $2e, $01, $2e, $00, $a2, $06, $0b, $01, $06, $06, $0b, $01, $06, $06
    db $0b, $01, $06, $06, $0b, $01, $06, $06, $0b, $01, $06, $06, $0b, $01, $06, $06
    db $0b, $01, $06, $01, $0b, $01, $0b, $00, $9d, $66, $00, $81, $a7, $58, $5a, $a3
    db $58, $a7, $5e, $a4, $5a, $a2, $01, $a7, $50, $54, $a3, $58, $a7, $5a, $a4, $58
    db $a2, $01, $a7, $50, $a3, $4e, $a7, $4e, $58, $54, $a3, $4a, $a7, $5a, $5e, $a3
    db $5a, $a7, $54, $a4, $50, $a2, $01, $00, $89, $78, $0c, $79, $89, $78, $91, $79
    db $00, $00, $a8, $78, $33, $79, $a8, $78, $b5, $79, $d0, $78, $59, $79, $d0, $78
    db $d8, $79, $f9, $78, $7f, $79, $f9, $78, $7f, $79, $9d, $d1, $00, $80, $a2

    db $5c, $a1, $5c, $5a, $a2, $5c, $5c, $56, $52, $4e, $56, $a2, $52, $a1, $52, $50
    db $a2, $52, $52, $4c, $48, $44, $a1, $4c, $52, $00, $9d, $b2, $00, $80, $a2, $52
    db $a1, $52, $52, $a2, $52, $a1, $52, $52, $a2, $44, $a1, $44, $44, $a2, $44, $01
    db $4c, $a1, $4c, $4c, $a2, $4c, $a1, $4c, $4c, $a2, $3a, $a1, $3a, $3a, $a2, $3a
    db $01, $00, $9d, $1a, $6f, $20, $a2, $5c, $a1, $5c, $5c, $a2, $5c, $a1, $5c, $5c
    db $a2, $4e, $a1, $52, $52, $a2, $56, $01, $a2, $5c, $a1, $5c, $5c, $a2, $5c, $a1
    db $5c, $5c, $a2, $44, $a1, $48, $48, $a2, $4c, $01, $00, $a2, $06, $a7, $01, $a2
    db $0b, $0b, $0b, $01, $a2, $06, $a7, $01, $a2, $0b, $0b, $0b, $01, $00, $a2, $48
    db $a1, $48, $52, $a2, $44, $a1, $44, $52, $a2, $42, $a1, $42, $52, $a2, $48, $a1
    db $48, $52, $a2, $4c, $a1, $4c, $52, $a2, $44, $a1, $44, $52, $a2, $48, $44, $a1
    db $48, $52, $56, $5a, $00, $3a, $a1, $3a, $3a, $a2, $3a, $a1, $3a, $3a, $a2, $3a
    db $a1, $3a, $3a, $a2, $3a, $a1, $3a, $3a, $a2, $3a, $a1, $3a, $3a, $a2, $3a, $a1
    db $3a, $3a, $a2, $36, $a1, $36, $36, $a2, $36, $01, $00, $48, $a1, $48, $48, $a2
    db $48, $a1, $48, $48, $a2, $48, $a1, $48, $48, $a2, $48, $a1, $48, $48, $a2, $44
    db $a1, $44, $44, $a2, $44, $a1, $44, $44, $a2, $42, $a1, $42, $42, $a2, $42, $01
    db $00, $a2, $01, $0b, $01, $0b, $01, $0b, $01, $0b, $01, $0b, $01, $0b, $01, $0b
    db $0b, $01, $00, $a2, $48, $a1, $48, $52, $a2, $44, $a1, $44, $52, $a2, $42, $a1
    db $42, $52, $a2, $48, $a1, $48, $52, $a2, $4c, $a1, $4c, $52, $a2, $48, $a1, $48
    db $52, $a2, $44, $52, $a3, $5c, $00, $3a, $a1, $3a, $3a, $a2, $3a, $a1, $3a, $3a
    db $a2, $3a, $a1, $3a, $3a, $a2, $3a, $a1, $3a, $3a, $a2, $3a, $a1, $3a, $3a, $a2
    db $3a, $a1, $3a, $3a, $a2, $01, $3a, $a3, $4c, $00, $48, $a1, $48, $48, $a2, $48
    db $a1, $48, $48, $a2, $48, $a1, $48, $48, $a2, $48, $a1, $48, $48, $a2, $44, $a1
    db $44, $44, $a2, $44, $a1, $44, $44, $a2, $01, $4c, $a3, $44, $00, $ff, $79, $00
    db $00, $9d, $c2, $00, $40, $a2

    db $5c, $a1, $5c, $5a, $a2, $5c, $5c, $56, $52, $4e, $56, $a2, $52, $a1, $52, $50
    db $a2, $52, $52, $4c, $48, $a1, $44, $42, $a2, $44, $a4, $01, $00, $27, $7a, $00
    db $00, $46, $7a, $9d, $c2, $00, $80, $a2

    db $5c, $a1, $5c, $5a, $a2, $5c, $5c, $56, $52, $4e, $56, $a2, $52, $a1, $52, $50
    db $a2, $52, $4c, $44, $52, $a3, $5c, $a4, $01, $00, $9d, $1a, $6f, $20, $a2, $5c
    db $a1, $5c, $5c, $a2, $5c, $a1, $5c, $5c, $a2, $4e, $52, $56, $01, $a2, $5c, $a1
    db $5c, $5c, $a2, $5c, $a1, $5c, $5c, $a2, $52, $4c, $44, $01, $a5, $01, $72, $7a
    db $00, $00, $91, $7a, $af, $7a, $9d, $c2, $00, $80, $a2

    db $5c, $a1, $5c, $5a, $a2, $5c, $5c, $56, $52, $4e, $56, $a2, $52, $a1, $52, $50
    db $a2, $52, $4c, $44, $52, $a3, $5c, $a4, $01, $00, $9d, $c2, $00, $40, $a2, $4e
    db $a1, $4e, $52, $a2, $56, $4e, $a3, $48, $48, $a2, $4c, $a1, $4c, $4a, $a2, $4c
    db $44, $34, $4c, $a3, $4c, $a5, $01, $00, $9d, $1a, $6f, $20, $a2, $5c, $a1, $5c
    db $5c, $a2, $5c, $a1, $5c, $5c, $a2, $4e, $52, $a1, $56, $56, $a2, $56, $a2, $5c
    db $a1, $5c, $5c, $a2, $5c, $a1, $5c, $5c, $a2, $52, $4c, $a1, $44, $44, $a2, $01
    db $a5, $01, $00, $e4, $7a, $00, $00, $03, $7b, $20, $7b, $4a, $7b, $9d, $c2, $00
    db $80, $a2

    db $5c, $a1, $5c, $5a, $a2, $5c, $5c, $56, $52, $4e, $56, $a2, $52, $a1, $52, $50
    db $a2, $52, $4c, $44, $52, $a3, $5c, $a4, $01, $00, $9d, $b2, $00, $80, $a2, $4e
    db $a1, $4e, $52, $a2, $56, $4e, $a3, $48, $48, $a2, $4c, $a1, $4c, $4a, $a2, $4c
    db $44, $34, $4c, $a3, $4c, $a5, $01, $9d, $1a, $6f, $20, $a2, $5c, $a1, $5c, $5c
    db $a2, $5c, $a1, $5c, $5c, $4e, $56, $5c, $56, $4e, $44, $3e, $44, $a2, $5c, $a1
    db $5c, $5c, $a2, $5c, $a1, $5c, $5c, $52, $4c, $44, $4c, $5c, $01, $a2, $01, $a5
    db $01, $a2, $0b, $0b, $0b, $0b, $a2, $0b, $0b, $0b, $01, $a2, $0b, $0b, $0b, $0b
    db $a2, $0b, $0b, $0b, $01, $a5, $01, $72, $7b, $c9, $7b, $00, $00, $91, $7b, $ed
    db $7b, $a3, $7b, $fd, $7b, $b6, $7b, $0d, $7c, $9d, $d1, $00, $80, $a2

    db $5c, $a1, $5c, $5a, $a2, $5c, $5c, $56, $52, $4e, $56, $a2, $52, $a1, $52, $50
    db $a2, $52, $52, $4c, $48, $44, $a1, $4c, $52, $00, $a2, $52, $a7, $01, $a2, $44
    db $44, $44, $01, $4c, $a7, $01, $a2, $3a, $3a, $3a, $01, $00, $a2, $5c, $a7, $01
    db $a2, $4e, $52, $56, $01, $a2, $5c, $a7, $01, $a2, $44, $48, $4c, $01, $00, $a2
    db $06, $a7, $01, $a2, $0b, $0b, $0b, $01, $a2, $06, $a7, $01, $a2, $0b, $0b, $0b
    db $01, $00, $a2, $48, $a1, $48, $52, $a2, $44, $a1, $44, $52, $a2, $42, $a1, $42
    db $52, $a2, $48, $a1, $48, $52, $a2, $4c, $a1, $4c, $52, $a2, $48, $a1, $48, $52
    db $a2, $5c, $52, $a3, $5c, $00, $01, $3a, $01, $3a, $01, $3a, $01, $3a, $01, $3a
    db $01, $3a, $01, $3a, $a3, $34, $01, $48, $01, $48, $01, $48, $01, $48, $01, $44
    db $01, $44, $01, $4c, $a3, $44, $a2, $01, $0b, $01, $0b, $01, $0b, $01, $0b, $01
    db $0b, $01, $0b, $a2, $01, $0b, $0b, $01, $29, $7c, $00, $00, $5e, $7c, $92, $7c
    db $c6, $7c, $9d, $b3, $00, $80, $a6

    db $52, $a1, $50, $a6, $52, $a1, $50, $a6, $52, $a1, $48, $a3, $01, $a6, $4c, $a1
    db $4a, $a6, $4c, $a1, $4a, $a6, $4c, $a1, $42, $a3, $01, $a6, $3e, $a1, $42, $a6
    db $44, $a1, $48, $a6, $4c, $a1, $50, $a6, $52, $a1, $56, $a6, $52, $a1, $6a, $00
    db $9d, $93, $00, $c0, $a6, $42, $a1, $40, $a6, $42, $a1, $40, $a6, $42, $a1, $42
    db $a3, $01, $a6, $3a, $a1, $38, $a6, $3a, $a1, $38, $a6, $3a, $a1, $3a, $a3, $01
    db $a6, $38, $a1, $38, $a6, $3a, $a1, $3e, $a6, $42, $a1, $44, $a6, $48, $a1, $4c
    db $a6, $42, $a1, $42, $9d, $1a, $6f, $a0, $a6, $48, $a1, $46, $a6, $48, $a1, $46
    db $a6, $48, $a1, $52, $a3, $01, $a6, $44, $a1, $42, $a6, $44, $a1, $42, $a6, $44
    db $a1, $4c, $a3, $01, $a6, $48, $a1, $3a, $a6, $3e, $a1, $42, $a6, $44, $a1, $48
    db $a6, $4c, $a1, $50, $a6, $52, $a1, $3a, $a6, $0b, $a1, $06, $a6, $0b, $a1, $06
    db $a6, $0b, $a1, $06, $a3, $01, $a6, $0b, $a1, $06, $a6, $0b, $a1, $06, $a6, $0b
    db $a1, $06, $a3, $01, $a6, $0b, $a1, $06, $a6, $0b, $a1, $06, $a6, $0b, $a1, $06
    db $a3, $01, $a6, $0b, $a1, $06, $29, $7d, $ff, $ff, $fc, $7c, $24, $7d, $30, $7d
    db $56, $7d, $7d, $7d, $56, $7d, $9f, $7d, $c1, $7d, $ff, $ff, $fe, $7c, $36, $7d
    db $67, $7d, $8e, $7d, $67, $7d, $b0, $7d, $02, $7e, $ff, $ff, $0e, $7d, $39, $7d
    db $3c, $7d, $ff, $ff, $1e, $7d, $9d, $60, $00, $81, $00

    db $9d, $20, $00, $81, $aa, $01, $00, $a3, $01, $50, $54, $58, $00, $a5, $01, $00
    db $a5, $01, $00, $a3, $01, $06, $01, $06, $01, $a2, $06, $06, $a3, $01, $06, $a3
    db $01, $06, $01, $06, $01, $a2, $06, $06, $01, $01, $06, $06, $00, $a7, $5a, $a2
    db $5e, $a7, $5a, $a2, $58, $a7, $58, $a2, $54, $a7, $58, $a2, $54, $00, $9d, $fa
    db $6e, $20, $a2, $5a, $62, $68, $70, $5a, $62, $68, $70, $5a, $64, $66, $6c, $5a
    db $64, $66, $6c, $00, $a7, $54, $a2, $50, $a7, $54, $a2, $50, $a7, $50, $a2, $4c
    db $a7, $4a, $a2, $50, $00, $58, $5e, $64, $6c, $58, $5e, $64, $6c, $50, $54, $58
    db $5e, $50, $58, $5e, $64, $00, $a7, $54, $a2, $50, $a7, $54, $a2, $50, $a7, $50
    db $a2, $4c, $a7, $4a, $a2, $46, $00, $58, $5e, $64, $6c, $58, $5e, $64, $6c, $50
    db $54, $58, $5e, $50, $58, $5e, $64, $00, $a7, $4a, $a2, $4c, $a7, $4a, $a2, $46
    db $a7, $46, $a2, $44, $a7, $46, $a2, $4a, $a7, $4c, $a2, $50, $a7, $4c, $a2, $4a
    db $a7, $4a, $a2, $46, $a7, $4a, $a2, $4c, $a7, $50, $a2, $4e, $a7, $50, $a2, $52
    db $a7, $58, $a2, $54, $a7, $5a, $a2, $54, $a7, $52, $a2, $50, $a7, $4c, $a2, $4a
    db $a2, $42, $38, $3c, $4a, $a3, $42, $01, $00, $4a, $52, $58, $5e, $4a, $58, $5e
    db $62, $54, $62, $68, $6c, $54, $62, $68, $6c, $46, $4c, $54, $5e, $46, $4c, $54
    db $5a, $50, $58, $5e, $64, $50, $5e, $64, $6c, $4a, $50, $58, $5e, $4a, $58, $5e
    db $62, $4e, $54, $5a, $62, $4e, $54, $5a, $66, $50, $58, $5e, $64, $50, $5e, $64
    db $68, $a8, $5a, $a3, $01, $00, $49, $7e, $00, $00, $59, $7e, $68, $7e, $78, $7e
    db $9d, $b1, $00, $80, $a7

    db $01, $a1, $5e, $5e, $a6, $68, $a1, $5e, $a4, $68, $00, $9d, $91, $00, $80, $a7
    db $01, $a1, $54, $54, $a6, $5e, $a1, $58, $a4, $5e, $9d, $1a, $6f, $20, $a7, $01
    db $a1, $4e, $4e, $a6, $58, $a1, $50, $a3, $58, $01, $a7, $01, $a1, $06, $06, $a6
    db $0b, $a1, $06, $a0, $06, $06, $06, $06, $06, $06, $06, $06, $a3, $01, $b6, $7e
    db $23, $7f, $b6, $7e, $6e, $7f, $ff, $ff, $8c, $7e, $e0, $7e, $4a, $7f, $e0, $7e
    db $91, $7f, $ff, $ff, $98, $7e, $f6, $7e, $5c, $7f, $f6, $7e, $a9, $7f, $ff, $ff
    db $a4, $7e, $0c, $7f, $ff, $ff, $b0, $7e, $9d, $82, $00, $80, $a2

    db $54, $a1, $54, $54, $54, $4a, $46, $4a, $a2, $54, $a1, $54, $54, $54, $58, $5c
    db $58, $a2, $54, $a1, $54, $54, $58, $54, $52, $54, $a1, $58, $5c, $58, $5c, $a2
    db $58, $a1, $56, $58, $00, $9d, $62, $00, $80, $a2, $01, $44, $01, $40, $01, $44
    db $01, $46, $01, $44, $01, $44, $01, $40, $01, $40, $00, $9d, $1a, $6f, $20, $a2
    db $54, $54, $4a, $52, $54, $54, $4a, $58, $54, $54, $52, $54, $4e, $54, $4a, $52
    db $00, $a2, $06, $0b, $06, $0b, $06, $0b, $06, $0b, $06, $0b, $06, $0b, $06, $a1
    db $0b, $0b, $06, $a2, $0b, $a1, $06, $00, $a2, $5e, $a1, $5e, $5e, $5e, $54, $50
    db $54, $a2, $5e, $a1, $5e, $5e, $5e, $62, $66, $62, $a2, $5e, $a1, $5e, $5c, $a2
    db $58, $a1, $58, $54, $a1, $52, $54, $52, $54, $a2, $52, $a1, $4e, $52, $00, $a2
    db $01, $46, $01, $4a, $01, $46, $01, $4a, $01, $46, $01, $46, $01, $46, $01, $46
    db $00, $a2, $46, $54, $54, $54, $46, $54, $54, $54, $46, $54, $52, $58, $44, $52
    db $4a, $58, $00, $a2, $62, $a1, $62, $62, $62, $5e, $5a, $5e, $a2, $62, $a1, $62
    db $62, $62, $5e, $5a, $5e, $a2, $62, $a1, $4a, $4e, $a2, $52, $a1, $4a, $5c, $a3
    db $58, $a1, $54, $a6, $6c, $00, $a2, $01, $4a, $01, $4a, $01, $4a, $01, $4a, $01
    db $a1, $46, $46, $a2, $46, $a1, $46, $46, $a3, $46, $a2, $44, $01, $00, $a2, $42
    db $5a, $50, $5a, $42, $5a, $50, $5a, $4a, $a1, $52, $52, $a2, $52, $a1, $52, $52
    db $a3, $52, $a2, $54, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00

    jp Jump_001_6553


    jp Jump_001_69d6


    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

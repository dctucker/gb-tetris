; Disassembly of "tetris.gb"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    db $2f, $2f, $2f, $7b, $30, $31, $31, $31, $31, $31, $32, $2a, $7c, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $36, $15, $0e, $1f, $0e, $15, $37, $2a
    db $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $36, $2f, $2f, $2f
    db $2f, $2f, $37, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b
    db $40, $42, $42, $42, $42, $42, $41, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $7c, $36, $11, $12, $10, $11, $2f, $37, $2a, $7d, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $36, $2f, $2f, $2f, $2f, $2f, $37, $2a
    db $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $33, $34, $34, $34
    db $34, $34, $35, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c
    db $2b, $8e, $8e, $8e, $8e, $8e, $8e, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $7d, $30, $31, $31, $31, $31, $31, $32, $2a, $7b, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b, $36, $15, $12, $17, $0e, $1c, $37, $2a
    db $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $36, $2f, $2f, $02
    db $05, $2f, $37, $2a, $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d
    db $33, $34, $34, $34, $34, $34, $35, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $7b, $2b, $38, $39, $39, $39, $39, $3a, $2a, $7c, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $2b, $3b, $2f, $2f, $2f, $2f, $3c, $2a
    db $7d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $2b, $3b, $2f, $2f
    db $2f, $2f, $3c, $2a, $7b, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7b
    db $2b, $3b, $2f, $2f, $2f, $2f, $3c, $2a, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $7c, $2b, $3b, $2f, $2f, $2f, $2f, $3c, $2a, $7d, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7d, $2b, $3d, $3e, $3e, $3e, $3e, $3f

Character_Set::
    INCBIN "gfx/Character_Set.1bpp"

Initial_Credits_Screen_20x18_chars::
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $9b, $1d, $16, $2f, $0a, $17, $0d, $2f, $33, $01, $09, $08
    db $07, $2f, $0e, $15, $18, $1b, $10, $9c, $2f, $1d, $0e, $1d, $1b, $12, $1c, $2f
    db $15, $12, $0c, $0e, $17, $1c, $0e, $0d, $2f, $1d, $18, $2f, $2f, $2f, $2f, $2f
    db $0b, $1e, $15, $15, $0e, $1d, $25, $19, $1b, $18, $18, $0f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $1c, $18, $0f, $1d, $20, $0a, $1b, $0e, $2f, $0a, $17, $0d
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $1c, $1e, $0b, $25, $15, $12, $0c, $0e, $17
    db $1c, $0e, $0d, $2f, $1d, $18, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $17, $12
    db $17, $1d, $0e, $17, $0d, $18, $24, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $33, $01, $09, $08, $09, $2f, $0b, $1e, $15, $15, $0e, $1d, $25, $19, $1b
    db $18, $18, $0f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $1c, $18, $0f, $1d, $20, $0a
    db $1b, $0e, $24, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $33, $30, $31, $32, $31
    db $2f, $34, $35, $36, $37, $38, $39, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $0a, $15, $15, $2f, $1b, $12, $10, $11, $1d, $1c, $2f, $1b, $0e, $1c, $0e, $1b
    db $1f, $0e, $0d, $24, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $18, $1b, $12, $10, $12, $17
    db $0a, $15, $2f, $0c, $18, $17, $0c, $0e, $19, $1d, $9c, $2f, $2f, $0d, $0e, $1c
    db $12, $10, $17, $2f, $0a, $17, $0d, $2f, $19, $1b, $18, $10, $1b, $0a, $16, $2f
    db $0b, $22, $2f, $0a, $15, $0e, $21, $0e, $22, $2f, $19, $0a, $23, $11, $12, $1d
    db $17, $18, $1f, $9d, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f

Intro_Player_Select_Screen_20x18_chars::
    db $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e, $8e
    db $8e, $8e, $8e, $8e, $5a, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5b
    db $5b, $5b, $5b, $5b, $5b, $5b, $5b, $5c, $5d, $80, $81, $82, $83, $90, $91, $92
    db $81, $82, $83, $90, $6c, $6d, $6e, $6f, $70, $71, $72, $5e, $5d, $84, $85, $86
    db $87, $93, $94, $95, $85, $86, $87, $93, $73, $74, $75, $76, $77, $78, $2f, $5e
    db $5d, $2f, $88, $89, $2f, $96, $97, $98, $88, $89, $2f, $96, $79, $7a, $7b, $7c
    db $7d, $7e, $2f, $5e, $5d, $2f, $8a, $8b, $2f, $8e, $8f, $6b, $8a, $8b, $2f, $8e
    db $7f, $66, $67, $68, $69, $6a, $2f, $5e, $5f, $60, $60, $60, $60, $60, $60, $60
    db $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $61, $8e, $3c, $3c, $3c
    db $3c, $3c, $3c, $3c, $3c, $3c, $3c, $3c, $3c, $3c, $3d, $3e, $3c, $3c, $3c, $8e
    db $8e, $8c, $8c, $62, $63, $8c, $8c, $3a, $8c, $8c, $8c, $8c, $8c, $3a, $42, $43
    db $3b, $8c, $8c, $8e, $8e, $3a, $8c, $64, $65, $8c, $8c, $8c, $8c, $3b, $8c, $8c
    db $8c, $8c, $44, $45, $8c, $8c, $8c, $8e, $8e, $8c, $8c, $8c, $8c, $8c, $8c, $8c
    db $8c, $8c, $8c, $8c, $8c, $46, $47, $48, $49, $3f, $40, $8e, $8e, $8c, $8c, $8c
    db $8c, $3a, $8c, $8c, $8c, $8c, $53, $54, $8c, $4a, $4b, $4c, $4d, $42, $43, $8e
    db $8e, $8c, $8c, $8c, $8c, $8c, $8c, $8c, $8c, $54, $55, $56, $57, $4e, $4f, $50
    db $51, $52, $45, $8e, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41
    db $41, $41, $41, $41, $41, $41, $41, $41, $2f, $2f, $59, $19, $15, $0a, $22, $0e
    db $1b, $2f, $2f, $2f, $99, $19, $15, $0a, $22, $0e, $1b, $2f, $2f, $2f, $9a, $9a
    db $9a, $9a, $9a, $9a, $9a, $2f, $2f, $2f, $9a, $9a, $9a, $9a, $9a, $9a, $9a, $2f
    db $2f, $2f, $2f, $2f, $33, $30, $31, $32, $31, $2f, $34, $35, $36, $37, $38, $39
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f

Select_Game_and_Music_Type_Screen_20x18_chars::
    db $47, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48
    db $48, $48, $48, $49, $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $50, $51, $51, $51
    db $51, $51, $51, $51, $51, $51, $52, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c
    db $53, $10, $0a, $16, $0e, $2f, $1d, $22, $19, $0e, $54, $2c, $2c, $2c, $2c, $4b
    db $4a, $2c, $55, $56, $6d, $58, $58, $58, $58, $58, $a9, $58, $58, $58, $6e, $56
    db $56, $5a, $2c, $4b, $4a, $2c, $5b, $78, $77, $7e, $7f, $9a, $9b, $2f, $aa, $79
    db $77, $7e, $7f, $9a, $9b, $5c, $2c, $4b, $4a, $2c, $2d, $4f, $4f, $4f, $4f, $4f
    db $4f, $4f, $ac, $4f, $4f, $4f, $4f, $4f, $4f, $2e, $2c, $4b, $4a, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b
    db $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $50, $51, $51, $51, $51, $51, $51, $51
    db $51, $51, $51, $52, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $53, $16, $1e, $1c
    db $12, $0c, $2f, $1d, $22, $19, $0e, $54, $2c, $2c, $2c, $4b, $4a, $2c, $55, $56
    db $6d, $58, $58, $58, $58, $58, $a9, $58, $58, $58, $58, $6e, $56, $5a, $2c, $4b
    db $4a, $2c, $5b, $78, $77, $7e, $7f, $9a, $9b, $2f, $aa, $79, $77, $7e, $7f, $9a
    db $9b, $5c, $2c, $4b, $4a, $2c, $71, $72, $72, $72, $72, $72, $72, $72, $ab, $72
    db $72, $72, $72, $72, $72, $74, $2c, $4b, $4a, $2c, $5b, $7a, $77, $7e, $7f, $9a
    db $9b, $2f, $aa, $2f, $9d, $9c, $9c, $2f, $2f, $5c, $2c, $4b, $4a, $2c, $2d, $4f
    db $4f, $4f, $4f, $4f, $4f, $4f, $ac, $4f, $4f, $4f, $4f, $4f, $4f, $2e, $2c, $4b
    db $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $2c, $4b, $4c, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d
    db $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4e

TypeA_Select_Level__Top_Score_Screen_20x18_chars::
    db $47, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48
    db $48, $48, $48, $49, $4a, $2f, $0a, $25, $1d, $22, $19, $0e, $2f, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c
    db $2c, $2c, $50, $51, $51, $51, $51, $51, $52, $2c, $2c, $2c, $2c, $2c, $2c, $4b
    db $4a, $2c, $2c, $2c, $2c, $2c, $53, $15, $0e, $1f, $0e, $15, $54, $2c, $2c, $2c
    db $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $55, $56, $57, $58, $6c, $58, $6c, $58
    db $59, $56, $5a, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $5b, $90, $6f, $91
    db $6f, $92, $6f, $93, $6f, $94, $5c, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c
    db $71, $72, $73, $72, $73, $72, $73, $72, $73, $72, $74, $2c, $2c, $2c, $2c, $4b
    db $4a, $2c, $2c, $2c, $5b, $95, $6f, $96, $6f, $97, $6f, $98, $6f, $99, $5c, $2c
    db $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $2d, $4f, $6b, $4f, $6b, $4f, $6b, $4f
    db $6b, $4f, $2e, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $50, $51, $51, $51
    db $51, $51, $51, $51, $51, $51, $52, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c
    db $53, $1d, $18, $19, $25, $1c, $0c, $18, $1b, $0e, $54, $2c, $2c, $2c, $2c, $4b
    db $4a, $55, $56, $70, $6d, $58, $58, $58, $58, $58, $58, $58, $58, $58, $6e, $56
    db $56, $56, $5a, $4b, $4a, $5b, $01, $6f, $60, $60, $60, $60, $60, $60, $2f, $2f
    db $60, $60, $60, $60, $60, $60, $5c, $4b, $4a, $5b, $02, $6f, $60, $60, $60, $60
    db $60, $60, $2f, $2f, $60, $60, $60, $60, $60, $60, $5c, $4b, $4a, $5b, $03, $6f
    db $60, $60, $60, $60, $60, $60, $2f, $2f, $60, $60, $60, $60, $60, $60, $5c, $4b
    db $4a, $2d, $4f, $6b, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f
    db $4f, $4f, $2e, $4b, $4c, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d
    db $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4e

TypeB_Select_Level__High__Top_Score_Screen_20x18_chars::
    db $47, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48
    db $48, $48, $48, $49, $4a, $2f, $0b, $25, $1d, $22, $19, $0e, $2f, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $50
    db $51, $51, $51, $51, $51, $52, $2c, $2c, $50, $51, $51, $51, $51, $52, $2c, $4b
    db $4a, $2c, $2c, $53, $15, $0e, $1f, $0e, $15, $54, $2c, $2c, $53, $11, $12, $10
    db $11, $54, $2c, $4b, $4a, $55, $56, $57, $58, $6c, $58, $6c, $58, $59, $56, $5a
    db $75, $58, $6c, $58, $6c, $6e, $5a, $4b, $4a, $5b, $90, $6f, $91, $6f, $92, $6f
    db $93, $6f, $94, $5c, $5b, $90, $6f, $91, $6f, $92, $5c, $4b, $4a, $71, $72, $73
    db $72, $73, $72, $73, $72, $73, $72, $74, $71, $72, $73, $72, $73, $72, $74, $4b
    db $4a, $5b, $95, $6f, $96, $6f, $97, $6f, $98, $6f, $99, $5c, $5b, $93, $6f, $94
    db $6f, $95, $5c, $4b, $4a, $2d, $4f, $6b, $4f, $6b, $4f, $6b, $4f, $6b, $4f, $2e
    db $2d, $4f, $6b, $4f, $6b, $4f, $2e, $4b, $4a, $2c, $2c, $2c, $50, $51, $51, $51
    db $51, $51, $51, $51, $51, $51, $52, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c
    db $53, $1d, $18, $19, $25, $1c, $0c, $18, $1b, $0e, $54, $2c, $2c, $2c, $2c, $4b
    db $4a, $55, $56, $70, $6d, $58, $58, $58, $58, $58, $58, $58, $58, $58, $6e, $56
    db $56, $56, $5a, $4b, $4a, $5b, $01, $6f, $60, $60, $60, $60, $60, $60, $2f, $2f
    db $60, $60, $60, $60, $60, $60, $5c, $4b, $4a, $5b, $02, $6f, $60, $60, $60, $60
    db $60, $60, $2f, $2f, $60, $60, $60, $60, $60, $60, $5c, $4b, $4a, $5b, $03, $6f
    db $60, $60, $60, $60, $60, $60, $2f, $2f, $60, $60, $60, $60, $60, $60, $5c, $4b
    db $4a, $2d, $4f, $6b, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f, $4f
    db $4f, $4f, $2e, $4b, $4c, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d
    db $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4e

    db $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $cd, $8c, $c9, $ca, $8c, $8c, $8c
    db $8c, $8c, $8c, $8c, $8c, $cb, $cc, $8c, $8c, $8c, $8c, $8c, $8c, $ce, $d7, $d7
    db $d7, $d7, $d7, $d7, $d7, $d7, $d7, $cf, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $d0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $d1, $d2, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $d3, $d4, $7c, $7c, $7c, $7c, $7c, $7c, $2f, $2f, $d5, $d6
    db $7d, $7d, $7d, $7d, $2f, $2f, $2f, $2f, $d8, $2f, $7b, $7b, $7b, $7b, $2f, $2f
    db $2f, $2f, $d8, $2f, $7c, $7c, $7c, $7c, $2f, $2f, $2f, $2f, $d8, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $d8, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $7c
    db $7c, $7c, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $7c, $7d, $7d, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $7d, $2f, $2f, $2f, $d9, $2f, $2f, $2f, $2f, $2f, $7b
    db $b7, $b8, $d9, $b7, $2f, $7c, $7c, $7c, $7c, $7c, $7d, $7d, $7d, $7d, $7d, $7d
    db $7d, $7d, $7d, $7d, $ff, $4a, $4a, $4a, $4a, $4a, $4a, $59, $69, $69, $69, $69
    db $69, $69, $49, $4a, $4a, $4a, $4a, $4a, $4a, $5a, $5a, $5a, $5a, $5a, $5a, $85
    db $85, $85, $85, $85, $85, $85, $85, $5a, $5a, $38, $39, $38, $5a, $6a, $6a, $6a
    db $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a, $6a
    db $6a, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07

Mario_VS_Luigi_Screen_20x18_chars::
    db $47, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48, $48
    db $48, $48, $48, $49, $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $16, $0a, $1b, $12, $18
    db $2f, $1f, $1c, $24, $15, $1e, $12, $10, $12, $2c, $2c, $4b, $4a, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $50, $51, $51, $51, $51, $52, $2c, $2c, $2c, $4b
    db $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c, $53, $11, $12, $10, $11, $54
    db $2c, $2c, $2c, $4b, $4a, $2c, $2c, $55, $56, $56, $5a, $2c, $2c, $2c, $75, $58
    db $6c, $58, $6c, $6e, $5a, $2c, $2c, $4b, $4a, $2c, $2c, $5b, $2f, $2f, $5c, $2c
    db $2c, $2c, $5b, $90, $6f, $91, $6f, $92, $5c, $2c, $2c, $4b, $4a, $2c, $2c, $5b
    db $2f, $2f, $5c, $2c, $2c, $2c, $71, $72, $73, $72, $73, $72, $74, $2c, $2c, $4b
    db $4a, $2c, $2c, $2d, $4f, $4f, $2e, $2c, $2c, $2c, $5b, $93, $6f, $94, $6f, $95
    db $5c, $2c, $2c, $4b, $4a, $2c, $2c, $16, $0a, $1b, $12, $18, $2c, $2c, $2d, $4f
    db $6b, $4f, $6b, $4f, $2e, $2c, $2c, $4b, $4a, $2c, $2c, $2c, $2c, $2c, $2c, $2c
    db $2c, $2c, $50, $51, $51, $51, $51, $52, $2c, $2c, $2c, $4b, $4a, $2c, $2c, $2c
    db $2c, $2c, $2c, $2c, $2c, $2c, $53, $11, $12, $10, $11, $54, $2c, $2c, $2c, $4b
    db $4a, $2c, $2c, $55, $56, $56, $5a, $2c, $2c, $2c, $75, $58, $6c, $58, $6c, $6e
    db $5a, $2c, $2c, $4b, $4a, $2c, $2c, $5b, $2f, $2f, $5c, $2c, $2c, $2c, $5b, $90
    db $6f, $91, $6f, $92, $5c, $2c, $2c, $4b, $4a, $2c, $2c, $5b, $2f, $2f, $5c, $2c
    db $2c, $2c, $71, $72, $73, $72, $73, $72, $74, $2c, $2c, $4b, $4a, $2c, $2c, $2d
    db $4f, $4f, $2e, $2c, $2c, $2c, $5b, $93, $6f, $94, $6f, $95, $5c, $2c, $2c, $4b
    db $4a, $2c, $2c, $15, $1e, $12, $10, $12, $2c, $2c, $2d, $4f, $6b, $4f, $6b, $4f
    db $2e, $2c, $2c, $4b, $4c, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d
    db $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4e

TypeB_Falling_Blocks_Screen_20x18_chars_same_as_3ff7_ish::
    db $8e, $b2, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b3, $30, $31, $31
    db $31, $31, $31, $32, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $b5, $36, $2f, $2f, $2f, $2f, $2f, $37, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $b5, $36, $2f, $2f, $2f, $2f, $2f, $37, $8e, $b0, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $40, $42, $42, $42, $42, $42, $41
    db $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $36, $11, $12
    db $10, $11, $2f, $37, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $b5, $36, $2f, $2f, $2f, $2f, $2f, $37, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $b5, $33, $34, $34, $34, $34, $34, $35, $8e, $b0, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $2b, $8e, $8e, $8e, $8e, $8e, $8e
    db $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $30, $31, $31
    db $31, $31, $31, $32, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $b5, $36, $15, $12, $17, $0e, $1c, $37, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $b5, $36, $2f, $2f, $2f, $2f, $2f, $37, $8e, $b0, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $33, $34, $34, $34, $34, $34, $35
    db $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $2b, $38, $39
    db $39, $39, $39, $3a, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $b5, $2b, $3b, $2f, $2f, $2f, $2f, $3c, $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f
    db $2f, $2f, $2f, $2f, $b5, $2b, $3b, $2f, $2f, $2f, $2f, $3c, $8e, $b0, $2f, $2f
    db $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $2b, $3b, $2f, $2f, $2f, $2f, $3c
    db $8e, $b0, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $b5, $2b, $3b, $2f
    db $2f, $2f, $2f, $3c, $8e, $b1, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f, $2f
    db $b4, $2b, $3d, $3e, $3e, $3e, $3e, $3f

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

jr_001_56df:
    jr nc, jr_001_575c

    ld h, d
    ei
    or d
    rst $38
    and b

jr_001_56e6:
    rst $38
    jp nz, $547f

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
    jp $3c00


    nop
    ld h, [hl]
    nop
    rst $20
    inc l
    jp $c33c


    inc a
    jp $423c


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
    jp $433c


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
    call c, $3e5c
    ld [hl+], a

jr_001_5bf4:
    ld [hl-], a
    ld [c], a

jr_001_5bf6:
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
    jp nz, $547f

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
    jp nc, $7fef

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
    call Copy_from_hl_to_sound_wave_pattern_ram
    ld a, $30
    ld [$df7e], a

jr_001_6550:
    ld hl, $657b

jr_001_6553:
    call Set_sound_2_regs
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

    db $b2, $e3, $83, $c7, $b2, $e3, $c1, $c7

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


    db $00, $b5, $d0, $40, $c7, $00, $b5, $20, $40, $c7, $00, $b6, $a1, $80, $c7

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
    jp Set_sound_1_regs


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
    res 7, [hl]
    ret


    db $00, $80, $e1, $c1, $87, $00, $80, $e1, $ac, $87

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
    jp Set_sound_1_regs


jr_001_661d:
    ld hl, $65e7
    jp Set_sound_1_regs


    db $48, $bc, $42, $66, $87

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


    db $00, $b0, $f1, $b6, $c7, $00, $b0, $f1, $c4, $c7, $00, $b0, $f1, $ce, $c7, $00
    db $b0, $f1, $db, $c7

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
    jp Set_sound_1_regs


    db $3e, $80, $e3, $00, $c4, $93, $83, $83, $73, $63, $53, $43, $33, $23, $13, $00
    db $00, $23, $43, $63, $83, $a3, $c3, $d3, $e3, $ff

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


    db $3b, $80, $b2, $87, $87, $a2, $93, $62, $43, $23, $00, $80, $40, $80, $40, $80

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


    db $b7, $80, $90, $ff, $83, $00, $d1, $45, $80, $00, $f1, $54, $80, $00, $d5, $65
    db $80, $00, $70, $66, $80, $65, $65, $65, $64, $57, $56, $55, $54, $54, $54, $54
    db $54, $47, $46, $46, $45, $45, $45, $44, $44, $44, $34, $34, $34, $34, $34, $34
    db $34, $34, $34, $34, $34, $34, $34, $34, $34, $70, $60, $70, $70, $70, $80, $90
    db $a0, $d0, $f0, $e0, $d0, $c0, $b0, $a0, $90, $80, $70, $60, $50, $40, $30, $30
    db $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $20, $10, $10

    ld a, $30
    ld hl, $674d
    jp Jump_001_6936


    ld a, $30
    ld hl, $6751
    jp Jump_001_6936


    call Call_001_698b
    and a
    ret nz

    ld hl, $dffc
    ld a, [hl]
    ld c, a
    cp $24
    jp z, Jump_001_67e9

    inc [hl]
    ld b, $00
    push bc
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
    res 7, [hl]
    ret


    db $80, $3a, $20, $60, $c6

Jump_001_6800:
    ld hl, $6ed9
    call Call_001_690d
    ldh a, [rDIV]
    and $1f
    ld b, a
    ld a, $d0
    add b
    ld [$dff5], a
    ld hl, $67fb
    jp Set_sound_3_regs


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
    jp z, Jump_001_6800

    ld a, [$dff1]
    cp $01
    jp z, Jump_001_68b6

    cp $02
    jp z, Jump_001_6817

    ret


    db $80, $80, $20, $9d, $87, $80, $f8, $20, $98, $87, $80, $fb, $20, $96, $87, $80
    db $f6, $20, $95, $87

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
    jp Set_sound_3_regs


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
    call Copy_from_hl_to_sound_wave_pattern_ram
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
    jr z, Set_sound_1_regs

    cp $f5
    jr z, Set_sound_3_regs

    cp $fd
    jr z, Set_sound_4_regs

    ret


Set_sound_1_regs::
    push bc
    ld c, $10
    ld b, $05
    jr jr_001_6970

Set_sound_2_regs::
    push bc
    ld c, $16
    ld b, $04
    jr jr_001_6970

Set_sound_3_regs::
    push bc
    ld c, $1a
    ld b, $05
    jr jr_001_6970

Set_sound_4_regs::
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


Copy_from_hl_to_sound_wave_pattern_ram::
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


Reset_some_sound_registers::
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
    call Reset_some_sound_registers
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


    db $01, $24, $ef, $56, $01, $00, $e5, $00, $01, $20, $fd, $00, $01, $20, $de, $f7
    db $03, $18, $7f, $f7, $03, $18, $f7, $7f, $03, $48, $df, $5b, $01, $18, $db, $e7
    db $01, $00, $fd, $f7, $03, $20, $7f, $f7, $01, $20, $ed, $f7, $01, $20, $ed, $f7
    db $01, $20, $ed, $f7, $01, $20, $ed, $f7, $01, $20, $ed, $f7, $01, $20, $ef, $f7
    db $01, $20, $ef, $f7

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


Copy_cannot_cross_page_boundary::
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
    call Copy_cannot_cross_page_boundary
    ld de, $df90
    call Copy_cannot_cross_page_boundary
    ld de, $dfa0
    call Copy_cannot_cross_page_boundary
    ld de, $dfb0
    call Copy_cannot_cross_page_boundary
    ld de, $dfc0
    call Copy_cannot_cross_page_boundary
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
    call Copy_from_hl_to_sound_wave_pattern_ram
    pop hl
    jr jr_001_6bb3

Jump_001_6b89:
    call Increment_16bit_number_pointed_to_by_hl
    call b_is_ind_hl
    ld e, a
    call Increment_16bit_number_pointed_to_by_hl
    call b_is_ind_hl
    ld d, a
    call Increment_16bit_number_pointed_to_by_hl
    call b_is_ind_hl
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
    call Increment_16bit_number_pointed_to_by_hl
    jp Jump_001_6c5e


Increment_16bit_number_pointed_to_by_hl::
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


Increment_twice_16bit_number_pointed_to_by_hl::
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    inc de
    inc de
    jr jr_001_6bbf

b_is_ind_hl::
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
    call Increment_twice_16bit_number_pointed_to_by_hl

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
    call Increment_twice_16bit_number_pointed_to_by_hl
    call b_is_ind_hl
    ld e, a
    call Increment_16bit_number_pointed_to_by_hl
    call b_is_ind_hl
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
    call Reset_some_sound_registers
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
    call b_is_ind_hl
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
    call Increment_16bit_number_pointed_to_by_hl
    call b_is_ind_hl

jr_001_6c8b:
    ld a, b
    ld c, a
    ld b, $00
    call Increment_16bit_number_pointed_to_by_hl
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

The_next_4_instructions_are_not_used::
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

    db $00, $00, $00, $00, $00, $00, $10, $00, $0f, $00, $00, $11, $00, $0f, $f0, $01
    db $12, $10, $ff, $ef, $01, $12, $10, $ff, $ef, $01, $12, $10, $ff, $ef, $01, $12
    db $10, $ff, $ef, $01, $12, $10, $ff, $ef, $01, $12, $10, $ff, $ef, $01, $12, $10
    db $ff, $ef, $01, $12, $10, $ff, $ef, $00, $0f

comprise_a_72_data_word_tabl::
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

    db $00, $00, $00, $00, $00, $c0, $a1, $00, $3a, $00, $c0, $b1, $00, $29, $01, $c0
    db $61, $00, $3a, $00, $c0, $12, $34, $45, $67, $9a, $bc, $de, $fe, $98, $7a, $b7
    db $be, $a8, $76, $54, $31, $01, $23, $44, $55, $67, $88, $9a, $bb, $a9, $88, $76
    db $55, $44, $33, $22, $11, $01, $23, $45, $67, $89, $ab, $cd, $ef, $fe, $dc, $ba
    db $98, $76, $54, $32, $10, $a1, $82, $23, $34, $45, $56, $67, $78, $89, $9a, $ab
    db $bc, $cd, $64, $32, $10, $11, $23, $56, $78, $99, $98, $76, $67, $9a, $df, $fe
    db $c9, $85, $42, $11, $31, $02, $04, $08, $10, $20, $40, $0c, $18, $30, $05, $00
    db $01, $03, $05, $0a, $14, $28, $50, $0f, $1e, $3c, $03, $06, $0c, $18, $30, $60
    db $12, $24, $48, $08, $10, $00, $07, $0e, $1c, $38, $70, $15, $2a, $54, $04, $08
    db $10, $20, $40, $80, $18, $30, $60, $04, $09, $12, $24, $48, $90, $1b, $36, $6c
    db $0c, $18, $04, $0a, $14, $28, $50, $a0, $1e, $3c, $78, $00, $0e, $6f, $f9, $7c
    db $ff, $7c, $11, $7d, $21, $7d

    db $00, $05, $6f, $48, $7e, $44, $7e, $4a, $7e, $4c, $7e

    db $00, $0e, $6f, $3b, $76, $33, $76, $41, $76, $63, $76

    db $00, $f9, $6e, $00, $76, $fc, $75, $02, $76, $00, $00

    db $00, $0e, $6f, $4c, $71, $42, $71, $56, $71, $62, $71

    db $00, $0e, $6f, $c6, $72, $b8, $72, $d4, $72, $02, $73

    db $00, $0e, $6f, $08, $70, $fa, $6f, $00, $00, $00, $00

    db $00, $05, $6f, $9d, $7e, $91, $7e, $a9, $7e, $b5, $7e

    db $00, $0e, $6f, $28, $7c, $24, $7c, $2a, $7c, $2c, $7c

    db $00, $0e, $6f, $00, $00, $00, $7a, $00, $00, $00, $00

    db $00, $0e, $6f, $00, $00, $26, $7a, $2a, $7a, $00, $00

    db $00, $0e, $6f, $73, $7a, $6f, $7a, $75, $7a, $00, $00

    db $00, $0e, $6f, $df, $7a, $e3, $7a, $e5, $7a, $e7, $7a

    db $00, $0e, $6f, $65, $7b, $6b, $7b, $6f, $7b, $73, $7b

    db $00, $0e, $6f, $6c, $78, $76, $78, $7e, $78, $86, $78

    db $00, $2b, $6f, $43, $75, $4b, $75, $51, $75, $00, $00

    db $00, $0e, $6f, $8d, $75, $95, $75, $9b, $75, $00, $00, $16, $70, $34, $70, $16
    db $70, $4d, $70, $93, $70, $ff, $ff, $fa, $6f, $62, $70, $74, $70, $62, $70, $85
    db $70, $f4, $70, $ff, $ff, $08, $70, $9d, $74

    db $00, $41, $a2, $44, $4c, $56, $4c, $42, $4c, $44, $4c, $3e, $4c, $3c, $4c, $44
    db $4c, $56, $4c, $42, $4c, $44, $4c, $3e, $4c, $3c, $4c, $00, $44, $4c, $44, $3e
    db $4e, $48, $42, $48, $42, $3a, $4c, $44, $3e, $4c, $48, $44, $42, $3e, $3c, $34
    db $3c, $42, $4c, $48, $00, $44, $4c, $44, $3e, $4e, $48, $42, $48, $42, $3a, $52
    db $48, $4c, $52, $4c, $44, $3a, $42, $a8, $44, $00, $9d, $64, $00, $41, $a3, $26
    db $3e, $3c, $26, $2c, $34, $3e, $36, $34, $3e, $2c, $34, $00, $26, $3e, $30, $22
    db $3a, $2c, $1e, $36, $30, $a2, $34, $36, $34, $30, $2c, $2a, $00, $a3, $26, $3e
    db $30, $22, $3a, $2a, $2c, $34, $34, $2c, $22, $14, $00, $a2, $52, $4e, $4c, $48
    db $44, $42, $44, $48, $4c, $44, $48, $4e, $4c, $4e, $a3, $52, $42, $a2, $44, $48
    db $a3, $4c, $48, $4c, $56, $50, $a2, $56, $5a, $a3, $5c, $5a, $a2, $56, $52, $50
    db $4c, $50, $4a, $a8, $4c, $a7, $52, $a1, $56, $58, $a3, $56, $a2, $52, $4e, $52
    db $4c, $4e, $48, $a7, $56, $a1, $5a, $5c, $a3, $5a, $a2, $56, $54, $56, $50, $54
    db $4c, $5a, $54, $4c, $54, $5a, $60, $66, $54, $64, $54, $60, $54, $a3, $5c, $a2
    db $60, $5c, $5a, $5c, $a1, $56, $5a, $a4, $56, $a2, $01, $00, $a2, $34, $3a, $44
    db $3a, $30, $3a, $34, $3a, $2c, $3a, $2a, $3a, $2c, $3a, $44, $3a, $30, $3a, $34
    db $3a, $2c, $3a, $2a, $3a, $2c, $34, $2c, $26, $3e, $38, $32, $38, $2a, $38, $32
    db $38, $a3, $34, $42, $2a, $a2, $34, $3a, $42, $3a, $30, $3a, $2e, $34, $26, $34
    db $2e, $34, $a8, $30, $a2, $32, $38, $2a, $38, $32, $38, $a8, $34, $a3, $34, $2a
    db $24, $1c, $20, $24, $2c, $30, $34, $a8, $26, $00, $68, $71, $68, $71, $ae, $71
    db $ff, $ff, $42, $71, $cb, $71, $cb, $71, $1d, $72, $ff, $ff, $4c, $71, $3a, $72
    db $3a, $72, $7f, $72, $7f, $72, $ff, $ff, $56, $71, $a3, $72, $ff, $ff, $62, $71

    db $9d, $84, $00, $81, $a3, $52, $a2, $48, $4a, $a3, $4e, $a2, $4a, $48, $a3, $44
    db $a2, $44, $4a, $a3, $52, $a2, $4e, $4a, $a7, $48, $a2, $4a, $a3, $4e, $52, $a3
    db $4a, $44, $44, $01, $a2, $01, $a3, $4e, $a2, $54, $a3, $5c, $a2, $58, $54, $a7
    db $52, $a2, $4a, $a3, $52, $a2, $4e, $4a, $a3, $48, $a2, $48, $4a, $a3, $4e, $52
    db $a3, $4a, $44, $44, $01, $00, $9d, $50, $00, $81, $a4, $3a, $32, $36, $30, $a4
    db $32, $2c, $a8, $2a, $a3, $01, $a4, $3a, $32, $36, $30, $a3, $32, $3a, $a4, $44
    db $42, $01, $00, $9d, $43, $00, $81, $a3, $48, $a2, $42, $44, $48, $a1, $52, $4e
    db $a2, $44, $42, $a7, $3a, $a2, $44, $4a, $01, $a2, $48, $44, $a1, $42, $42, $a2
    db $3a, $42, $44, $a3, $48, $4a, $a3, $44, $3a, $3a, $01, $a2, $1e, $a3, $3c, $a2
    db $44, $4a, $a1, $4a, $4a, $a2, $48, $44, $a7, $40, $a2, $3a, $40, $a1, $44, $40
    db $a2, $3c, $3a, $42, $3a, $42, $44, $48, $42, $4a, $42, $a1, $44, $4a, $3a, $01
    db $a3, $3a, $3a, $01, $00, $9d, $30, $00, $81, $a4, $32, $2c, $30, $2a, $2c, $22
    db $a4, $22, $a3, $30, $01, $a4, $32, $2c, $30, $2a, $a3, $2c, $32, $a4, $3a, $36
    db $01, $00, $9d, $c9, $6e, $20, $a2, $22, $3a, $22, $3a, $22, $3a, $22, $3a, $2c
    db $44, $2c, $44, $2c, $44, $2c, $44, $2a, $42, $2a, $42, $22, $3a, $22, $3a, $2c
    db $44, $2c, $44, $2c, $44, $30, $32, $36, $1e, $01, $1e, $01, $1e, $2c, $24, $1a
    db $32, $01, $32, $1a, $28, $28, $01, $30, $48, $01, $48, $01, $3a, $01, $42, $2c
    db $3a, $2c, $3a, $a3, $2c, $01, $00, $9d, $c9, $6e, $20, $a2, $44, $52, $44, $52
    db $44, $52, $44, $52, $42, $52, $42, $52, $42, $52, $42, $52, $44, $52, $44, $52
    db $44, $52, $44, $52, $42, $52, $42, $52, $a4, $01, $00, $a2, $01, $06, $01, $06
    db $01, $a1, $06, $06, $a2, $01, $06, $01, $06, $01, $06, $01, $06, $06, $06, $00
    db $0b, $73, $3f, $73, $67, $73, $67, $73, $c9, $73, $ff, $ff, $b8, $72, $08, $73
    db $3c, $73, $8e, $73, $8e, $73, $4b, $74, $ff, $ff, $c6, $72, $1f, $73, $53, $73
    db $b5, $73, $b5, $73, $b5, $73, $b5, $73, $b5, $73, $b5, $73, $c0, $74, $de, $74
    db $de, $74, $de, $74, $ee, $74, $fe, $74, $fe, $74, $0e, $75, $0e, $75, $1e, $75
    db $1e, $75, $0e, $75, $2e, $75, $ff, $ff, $d4, $72, $33, $73, $ff, $ff, $02, $73

    db $a5, $01, $00, $9d, $62, $00, $80, $a2, $3a, $a1, $3a, $3a, $a2, $30, $30, $3a
    db $a1, $3a, $3a, $a2, $30, $30, $00, $9d, $e9, $6e, $a0, $a2, $3a, $a1, $3a, $3a
    db $a2, $30, $30, $3a, $a1, $3a, $3a, $a2, $30, $30, $00, $a2, $06, $a1, $06, $06
    db $a2, $06, $06, $00, $a5, $01, $00, $9d, $32, $00, $80, $a2, $3a, $a1, $3a, $3a
    db $a2, $30, $30, $3a, $a1, $3a, $3a, $a2, $30, $30, $00, $9d, $e9, $6e, $a0, $a2
    db $3a, $a1, $3a, $3a, $a2, $30, $30, $3a, $a1, $3a, $3a, $a2, $30, $30, $00, $9d
    db $82, $00, $80, $a2, $3a, $48, $52, $50, $52, $a1, $48, $48, $a2, $4a, $44, $48
    db $a1, $40, $40, $a2, $44, $3e, $40, $a1, $3a, $3a, $a2, $3e, $38, $3a, $30, $32
    db $38, $3a, $30, $32, $3e, $00, $9d, $53, $00, $40, $a2, $30, $40, $40, $44, $40
    db $a1, $3e, $40, $a2, $44, $3e, $40, $a1, $38, $3a, $a2, $3e, $38, $3a, $a1, $2e
    db $30, $a2, $38, $30, $30, $28, $2c, $2c, $30, $28, $2c, $38, $00, $9d, $e9, $6e
    db $a0, $a2, $3a, $a1, $3a, $3a, $a2, $30, $30, $3a, $a1, $3a, $3a, $a2, $30, $30
    db $00, $a8, $3a, $a2, $3e, $38, $a8, $3a, $a3, $3e, $a2, $40, $a1, $40, $40, $a2
    db $44, $3e, $40, $a1, $40, $40, $a2, $44, $3e, $a8, $40, $a3, $44, $a2, $48, $a1
    db $48, $48, $a2, $4a, $44, $48, $a1, $48, $48, $a2, $4a, $44, $a8, $48, $a3, $4c
    db $a2, $4e, $a1, $4e, $4e, $a2, $4e, $4e, $52, $4e, $4e, $4c, $4e, $a1, $4e, $4e
    db $a2, $4e, $4e, $52, $4e, $4e, $4c, $4e, $a1, $4e, $4e, $a2, $4e, $4e, $4c, $a1
    db $4c, $4c, $a2, $4c, $4c, $4a, $a1, $4a, $4a, $a2, $4a, $44, $3e, $40, $44, $36
    db $44, $a1, $40, $40, $a2, $36, $a3, $40, $a1, $36, $3a, $a2, $36, $30, $44, $a1
    db $40, $40, $a2, $36, $a3, $40, $a1, $36, $3a, $a2, $36, $2e, $a5, $36, $a8, $01
    db $a3, $38, $00, $a8, $30, $a2, $30, $30, $a8, $30, $a3, $36, $a5, $01, $a8, $01
    db $a3, $3e, $a2, $40, $a1, $40, $40, $a2, $44, $3e, $40, $a1, $40, $40, $a2, $44
    db $3e, $a8, $36, $a3, $3a, $a2, $3e, $a1, $40, $44, $a2, $3e, $44, $48, $48, $48
    db $3a, $3e, $a1, $40, $44, $a2, $3e, $44, $46, $46, $46, $3a, $3e, $a1, $40, $44
    db $a2, $3e, $44, $3a, $a1, $3e, $40, $a2, $3a, $40, $3a, $a1, $3e, $40, $a2, $3e
    db $3e, $2c, $3a, $3e, $26, $30, $a1, $30, $30, $a2, $30, $a3, $30, $a1, $30, $34
    db $a2, $30, $28, $2e, $a1, $2e, $2e, $a2, $2e, $a3, $2e, $a1, $2e, $32, $a2, $2e
    db $28, $a5, $26, $a8, $01, $a3, $2c, $00, $a2, $3a, $a1, $3a, $3a, $a2, $32, $2c
    db $3a, $a1, $3a, $3a, $a2, $38, $30, $3a, $a1, $3a, $3a, $a2, $32, $2c, $3a, $a1
    db $3a, $3a, $a2, $2c, $1e, $00, $a2, $28, $a1, $40, $28, $a2, $1e, $36, $28, $a1
    db $40, $28, $a2, $1e, $36, $00, $a2, $28, $a1, $40, $28, $a2, $1e, $36, $28, $a1
    db $40, $28, $a2, $2c, $44, $00, $a2, $1e, $a1, $36, $1e, $a2, $1e, $36, $28, $a1
    db $40, $28, $a2, $28, $40, $00, $a2, $1e, $a1, $36, $1e, $a2, $1e, $36, $1e, $a1
    db $36, $1e, $a2, $1e, $36, $00, $a2, $22, $a1, $3a, $22, $a2, $22, $3a, $22, $a1
    db $3a, $22, $a2, $22, $3a, $00, $a2, $1e, $a1, $36, $1e, $a2, $1e, $36, $1e, $a1
    db $36, $1e, $a2, $a4, $3e, $00, $36, $3e, $44, $a4, $44, $57, $75, $62, $75, $ff
    db $ff, $45, $75, $5e, $75, $ff, $ff, $4b, $75, $7c, $75, $ff, $ff, $51, $75

    db $9d, $20, $00, $81, $aa, $01, $00, $9d, $70, $00, $81, $a2, $42, $32, $38, $42
    db $46, $34, $3c, $46, $4a, $38, $42, $4a, $4c, $3c, $42, $4c, $46, $34, $3c, $46
    db $40, $2e, $34, $40, $00, $9d, $e9, $6e, $21, $a8, $42, $a3, $2a, $a8, $42, $a3
    db $2a, $a8, $42, $a3, $2a, $00, $a1, $75, $ac, $75, $ff, $ff, $8f, $75, $a8, $75
    db $ff, $ff, $95, $75, $ee, $75, $ff, $ff, $9b, $75

    db $9d, $20, $00, $81, $aa, $01, $00, $9d, $70, $00, $81, $a2, $4c, $42, $50, $42
    db $54, $42, $50, $42, $56, $42, $54, $42, $50, $42, $54, $42, $4c, $42, $50, $42
    db $54, $42, $50, $42, $56, $42, $54, $42, $50, $42, $54, $42, $5a, $46, $56, $46
    db $54, $46, $50, $46, $4e, $46, $50, $46, $54, $46, $50, $46, $50, $3e, $4c, $3e
    db $4c, $3e, $4a, $3e, $4a, $3e, $46, $3e, $4a, $3e, $50, $3e, $00, $9d, $e9, $6e
    db $21, $a5, $4c, $4a, $46, $42, $38, $3e, $42, $42, $00, $04, $76, $00, $00, $14
    db $76, $23, $76

    db $9d, $b2, $00, $80, $a2, $60, $5c, $60, $5c, $60, $62, $60, $5c, $a4, $60, $00
    db $9d, $92, $00, $80, $a2, $52, $4e, $52, $4e, $52, $54, $52, $4e, $a4, $52, $9d
    db $e9, $6e, $20, $a2, $62, $60, $62, $60, $62, $66, $62, $60, $a3, $62, $01, $6f
    db $76, $69, $77, $69, $77, $00, $00, $bf, $76, $aa, $77, $3c, $78, $0c, $77, $eb
    db $77, $eb, $77, $f5, $77, $eb, $77, $eb, $77, $fe, $77, $f5, $77, $eb, $77, $eb
    db $77, $fe, $77, $f5, $77, $07, $78, $11, $78, $fe, $77, $f5, $77, $eb, $77, $5b
    db $77, $5b, $77, $1a, $78, $1a, $78, $1a, $78, $1a, $78

    db $9d, $c3, $00, $80, $a2, $3c, $3e, $3c, $3e, $38, $50, $a3, $01, $a2, $3c, $3e
    db $3c, $3e, $38, $50, $a3, $01, $a2, $01, $48, $01, $46, $01, $42, $01, $46, $a1
    db $42, $46, $a2, $42, $42, $38, $a3, $3c, $01, $a2, $3e, $42, $3e, $42, $3c, $54
    db $a3, $01, $a2, $3e, $42, $3e, $42, $3c, $54, $a3, $01, $a2, $01, $56, $01, $54
    db $01, $54, $01, $50, $a2, $01, $a1, $50, $54, $a2, $50, $4e, $a3, $50, $01, $00
    db $9d, $74, $00, $80, $a2, $36, $38, $36, $38, $2e, $3e, $a3, $01, $a2, $36, $38
    db $36, $38, $2e, $3e, $a3, $01, $a2, $01, $36, $01, $36, $01, $32, $01, $36, $36
    db $32, $32, $30, $a3, $36, $01, $a2, $38, $3c, $38, $3c, $36, $4e, $a3, $01, $a2
    db $38, $3c, $38, $3c, $36, $4e, $a3, $01, $a2, $01, $50, $01, $4e, $01, $46, $01
    db $46, $a2, $01, $a1, $48, $4e, $a2, $48, $46, $a3, $40, $01, $00, $9d, $e9, $6e
    db $20, $a2, $48, $46, $48, $46, $3e, $20, $a3, $01, $a2, $48, $46, $48, $46, $3e
    db $20, $a3, $01, $a2, $2e, $3c, $2e, $24, $24, $24, $24, $3c, $2a, $3e, $2a, $3e
    db $a6, $2e, $a3, $01, $a1, $01, $a2, $48, $46, $48, $46, $2e, $2e, $a3, $01, $a2
    db $48, $46, $48, $46, $2e, $2e, $a3, $01, $a2, $2a, $3c, $2a, $3c, $2e, $3e, $2e
    db $3e, $2e, $42, $2e, $42, $a6, $38, $a3, $01, $a1, $01, $00, $a8, $01, $a2, $06
    db $0b, $a8, $01, $a2, $06, $0b, $a5, $01, $01, $00, $9d, $c5, $00, $80, $a1, $46
    db $4a, $a4, $46, $a2, $01, $a3, $50, $a8, $4a, $a3, $01, $a1, $42, $46, $a4, $42
    db $a2, $01, $a3, $4e, $a1, $4e, $50, $a4, $46, $a7, $01, $a1, $40, $46, $a4, $40
    db $a2, $01, $a3, $46, $a1, $46, $4a, $a4, $42, $a7, $01, $a1, $36, $38, $a4, $36
    db $a2, $01, $a3, $3c, $a7, $42, $a4, $40, $a2, $01, $00, $9d, $84, $00, $41, $a1
    db $40, $42, $a4, $40, $a2, $01, $a3, $40, $a8, $42, $a3, $01, $a1, $3c, $40, $a4
    db $3c, $a2, $01, $a3, $3c, $a1, $3c, $40, $a4, $40, $a7, $01, $a1, $36, $32, $a4
    db $2e, $a2, $01, $a3, $40, $a1, $36, $38, $a4, $32, $a7, $01, $a1, $2e, $32, $a4
    db $2e, $a2, $01, $a3, $2a, $a7, $30, $a4, $2e, $a2, $01, $00, $a2, $38, $38, $01
    db $38, $38, $38, $01, $38, $00, $2e, $2e, $01, $2e, $2e, $2e, $01, $2e, $00, $2a
    db $2a, $01, $2a, $2a, $2a, $01, $2a, $00, $a2, $38, $38, $01, $38, $36, $36, $01
    db $36, $00, $32, $32, $01, $32, $2e, $2e, $01, $2e, $00, $a2, $06, $0b, $01, $06
    db $06, $0b, $01, $06, $06, $0b, $01, $06, $06, $0b, $01, $06, $06, $0b, $01, $06
    db $06, $0b, $01, $06, $06, $0b, $01, $06, $01, $0b, $01, $0b, $00, $9d, $66, $00
    db $81, $a7, $58, $5a, $a3, $58, $a7, $5e, $a4, $5a, $a2, $01, $a7, $50, $54, $a3
    db $58, $a7, $5a, $a4, $58, $a2, $01, $a7, $50, $a3, $4e, $a7, $4e, $58, $54, $a3
    db $4a, $a7, $5a, $5e, $a3, $5a, $a7, $54, $a4, $50, $a2, $01, $00, $8e, $78, $11
    db $79, $8e, $78, $96, $79, $00, $00, $ad, $78, $38, $79, $ad, $78, $ba, $79, $d5
    db $78, $5e, $79, $d5, $78, $dd, $79, $fe, $78, $84, $79, $fe, $78, $84, $79

    db $9d, $d1, $00, $80, $a2, $5c, $a1, $5c, $5a, $a2, $5c, $5c, $56, $52, $4e, $56
    db $a2, $52, $a1, $52, $50, $a2, $52, $52, $4c, $48, $44, $a1, $4c, $52, $00, $9d
    db $b2, $00, $80, $a2, $52, $a1, $52, $52, $a2, $52, $a1, $52, $52, $a2, $44, $a1
    db $44, $44, $a2, $44, $01, $4c, $a1, $4c, $4c, $a2, $4c, $a1, $4c, $4c, $a2, $3a
    db $a1, $3a, $3a, $a2, $3a, $01, $00, $9d, $e9, $6e, $20, $a2, $5c, $a1, $5c, $5c
    db $a2, $5c, $a1, $5c, $5c, $a2, $4e, $a1, $52, $52, $a2, $56, $01, $a2, $5c, $a1
    db $5c, $5c, $a2, $5c, $a1, $5c, $5c, $a2, $44, $a1, $48, $48, $a2, $4c, $01, $00
    db $a2, $06, $a7, $01, $a2, $0b, $0b, $0b, $01, $a2, $06, $a7, $01, $a2, $0b, $0b
    db $0b, $01, $00, $a2, $48, $a1, $48, $52, $a2, $44, $a1, $44, $52, $a2, $42, $a1
    db $42, $52, $a2, $48, $a1, $48, $52, $a2, $4c, $a1, $4c, $52, $a2, $44, $a1, $44
    db $52, $a2, $48, $44, $a1, $48, $52, $56, $5a, $00, $3a, $a1, $3a, $3a, $a2, $3a
    db $a1, $3a, $3a, $a2, $3a, $a1, $3a, $3a, $a2, $3a, $a1, $3a, $3a, $a2, $3a, $a1
    db $3a, $3a, $a2, $3a, $a1, $3a, $3a, $a2, $36, $a1, $36, $36, $a2, $36, $01, $00
    db $48, $a1, $48, $48, $a2, $48, $a1, $48, $48, $a2, $48, $a1, $48, $48, $a2, $48
    db $a1, $48, $48, $a2, $44, $a1, $44, $44, $a2, $44, $a1, $44, $44, $a2, $42, $a1
    db $42, $42, $a2, $42, $01, $00, $a2, $01, $0b, $01, $0b, $01, $0b, $01, $0b, $01
    db $0b, $01, $0b, $01, $0b, $0b, $01, $00, $a2, $48, $a1, $48, $52, $a2, $44, $a1
    db $44, $52, $a2, $42, $a1, $42, $52, $a2, $48, $a1, $48, $52, $a2, $4c, $a1, $4c
    db $52, $a2, $48, $a1, $48, $52, $a2, $44, $52, $a3, $5c, $00, $3a, $a1, $3a, $3a
    db $a2, $3a, $a1, $3a, $3a, $a2, $3a, $a1, $3a, $3a, $a2, $3a, $a1, $3a, $3a, $a2
    db $3a, $a1, $3a, $3a, $a2, $3a, $a1, $3a, $3a, $a2, $01, $3a, $a3, $4c, $00, $48
    db $a1, $48, $48, $a2, $48, $a1, $48, $48, $a2, $48, $a1, $48, $48, $a2, $48, $a1
    db $48, $48, $a2, $44, $a1, $44, $44, $a2, $44, $a1, $44, $44, $a2, $01, $4c, $a3
    db $44, $00, $04, $7a, $00, $00

    db $9d, $c2, $00, $40, $a2, $5c, $a1, $5c, $5a, $a2, $5c, $5c, $56, $52, $4e, $56
    db $a2, $52, $a1, $52, $50, $a2, $52, $52, $4c, $48, $a1, $44, $42, $a2, $44, $a4
    db $01, $00, $2c, $7a, $00, $00, $4b, $7a

    db $9d, $c2, $00, $80, $a2, $5c, $a1, $5c, $5a, $a2, $5c, $5c, $56, $52, $4e, $56
    db $a2, $52, $a1, $52, $50, $a2, $52, $4c, $44, $52, $a3, $5c, $a4, $01, $00, $9d
    db $e9, $6e, $20, $a2, $5c, $a1, $5c, $5c, $a2, $5c, $a1, $5c, $5c, $a2, $4e, $52
    db $56, $01, $a2, $5c, $a1, $5c, $5c, $a2, $5c, $a1, $5c, $5c, $a2, $52, $4c, $44
    db $01, $a5, $01, $77, $7a, $00, $00, $96, $7a, $b4, $7a

    db $9d, $c2, $00, $80, $a2, $5c, $a1, $5c, $5a, $a2, $5c, $5c, $56, $52, $4e, $56
    db $a2, $52, $a1, $52, $50, $a2, $52, $4c, $44, $52, $a3, $5c, $a4, $01, $00, $9d
    db $c2, $00, $40, $a2, $4e, $a1, $4e, $52, $a2, $56, $4e, $a3, $48, $48, $a2, $4c
    db $a1, $4c, $4a, $a2, $4c, $44, $34, $4c, $a3, $4c, $a5, $01, $00, $9d, $e9, $6e
    db $20, $a2, $5c, $a1, $5c, $5c, $a2, $5c, $a1, $5c, $5c, $a2, $4e, $52, $a1, $56
    db $56, $a2, $56, $a2, $5c, $a1, $5c, $5c, $a2, $5c, $a1, $5c, $5c, $a2, $52, $4c
    db $a1, $44, $44, $a2, $01, $a5, $01, $00, $e9, $7a, $00, $00, $08, $7b, $25, $7b
    db $4f, $7b

    db $9d, $c2, $00, $80, $a2, $5c, $a1, $5c, $5a, $a2, $5c, $5c, $56, $52, $4e, $56
    db $a2, $52, $a1, $52, $50, $a2, $52, $4c, $44, $52, $a3, $5c, $a4, $01, $00, $9d
    db $b2, $00, $80, $a2, $4e, $a1, $4e, $52, $a2, $56, $4e, $a3, $48, $48, $a2, $4c
    db $a1, $4c, $4a, $a2, $4c, $44, $34, $4c, $a3, $4c, $a5, $01, $9d, $e9, $6e, $20
    db $a2, $5c, $a1, $5c, $5c, $a2, $5c, $a1, $5c, $5c, $4e, $56, $5c, $56, $4e, $44
    db $3e, $44, $a2, $5c, $a1, $5c, $5c, $a2, $5c, $a1, $5c, $5c, $52, $4c, $44, $4c
    db $5c, $01, $a2, $01, $a5, $01, $a2, $0b, $0b, $0b, $0b, $a2, $0b, $0b, $0b, $01
    db $a2, $0b, $0b, $0b, $0b, $a2, $0b, $0b, $0b, $01, $a5, $01, $77, $7b, $ce, $7b
    db $00, $00, $96, $7b, $f2, $7b, $a8, $7b, $02, $7c, $bb, $7b, $12, $7c

    db $9d, $d1, $00, $80, $a2, $5c, $a1, $5c, $5a, $a2, $5c, $5c, $56, $52, $4e, $56
    db $a2, $52, $a1, $52, $50, $a2, $52, $52, $4c, $48, $44, $a1, $4c, $52, $00, $a2
    db $52, $a7, $01, $a2, $44, $44, $44, $01, $4c, $a7, $01, $a2, $3a, $3a, $3a, $01
    db $00, $a2, $5c, $a7, $01, $a2, $4e, $52, $56, $01, $a2, $5c, $a7, $01, $a2, $44
    db $48, $4c, $01, $00, $a2, $06, $a7, $01, $a2, $0b, $0b, $0b, $01, $a2, $06, $a7
    db $01, $a2, $0b, $0b, $0b, $01, $00, $a2, $48, $a1, $48, $52, $a2, $44, $a1, $44
    db $52, $a2, $42, $a1, $42, $52, $a2, $48, $a1, $48, $52, $a2, $4c, $a1, $4c, $52
    db $a2, $48, $a1, $48, $52, $a2, $5c, $52, $a3, $5c, $00, $01, $3a, $01, $3a, $01
    db $3a, $01, $3a, $01, $3a, $01, $3a, $01, $3a, $a3, $34, $01, $48, $01, $48, $01
    db $48, $01, $48, $01, $44, $01, $44, $01, $4c, $a3, $44, $a2, $01, $0b, $01, $0b
    db $01, $0b, $01, $0b, $01, $0b, $01, $0b, $a2, $01, $0b, $0b, $01, $2e, $7c, $00
    db $00, $63, $7c, $97, $7c, $cb, $7c

    db $9d, $b3, $00, $80, $a6, $52, $a1, $50, $a6, $52, $a1, $50, $a6, $52, $a1, $48
    db $a3, $01, $a6, $4c, $a1, $4a, $a6, $4c, $a1, $4a, $a6, $4c, $a1, $42, $a3, $01
    db $a6, $3e, $a1, $42, $a6, $44, $a1, $48, $a6, $4c, $a1, $50, $a6, $52, $a1, $56
    db $a6, $52, $a1, $6a, $00, $9d, $93, $00, $c0, $a6, $42, $a1, $40, $a6, $42, $a1
    db $40, $a6, $42, $a1, $42, $a3, $01, $a6, $3a, $a1, $38, $a6, $3a, $a1, $38, $a6
    db $3a, $a1, $3a, $a3, $01, $a6, $38, $a1, $38, $a6, $3a, $a1, $3e, $a6, $42, $a1
    db $44, $a6, $48, $a1, $4c, $a6, $42, $a1, $42, $9d, $e9, $6e, $a0, $a6, $48, $a1
    db $46, $a6, $48, $a1, $46, $a6, $48, $a1, $52, $a3, $01, $a6, $44, $a1, $42, $a6
    db $44, $a1, $42, $a6, $44, $a1, $4c, $a3, $01, $a6, $48, $a1, $3a, $a6, $3e, $a1
    db $42, $a6, $44, $a1, $48, $a6, $4c, $a1, $50, $a6, $52, $a1, $3a, $a6, $0b, $a1
    db $06, $a6, $0b, $a1, $06, $a6, $0b, $a1, $06, $a3, $01, $a6, $0b, $a1, $06, $a6
    db $0b, $a1, $06, $a6, $0b, $a1, $06, $a3, $01, $a6, $0b, $a1, $06, $a6, $0b, $a1
    db $06, $a6, $0b, $a1, $06, $a3, $01, $a6, $0b, $a1, $06, $2e, $7d, $ff, $ff, $01
    db $7d, $29, $7d, $35, $7d, $5b, $7d, $82, $7d, $5b, $7d, $a4, $7d, $c6, $7d, $ff
    db $ff, $03, $7d, $3b, $7d, $6c, $7d, $93, $7d, $6c, $7d, $b5, $7d, $07, $7e, $ff
    db $ff, $13, $7d, $3e, $7d, $41, $7d, $ff, $ff, $23, $7d

    db $9d, $60, $00, $81, $00, $9d, $20, $00, $81, $aa, $01, $00, $a3, $01, $50, $54
    db $58, $00, $a5, $01, $00, $a5, $01, $00, $a3, $01, $06, $01, $06, $01, $a2, $06
    db $06, $a3, $01, $06, $a3, $01, $06, $01, $06, $01, $a2, $06, $06, $01, $01, $06
    db $06, $00, $a7, $5a, $a2, $5e, $a7, $5a, $a2, $58, $a7, $58, $a2, $54, $a7, $58
    db $a2, $54, $00, $9d, $c9, $6e, $20, $a2, $5a, $62, $68, $70, $5a, $62, $68, $70
    db $5a, $64, $66, $6c, $5a, $64, $66, $6c, $00, $a7, $54, $a2, $50, $a7, $54, $a2
    db $50, $a7, $50, $a2, $4c, $a7, $4a, $a2, $50, $00, $58, $5e, $64, $6c, $58, $5e
    db $64, $6c, $50, $54, $58, $5e, $50, $58, $5e, $64, $00, $a7, $54, $a2, $50, $a7
    db $54, $a2, $50, $a7, $50, $a2, $4c, $a7, $4a, $a2, $46, $00, $58, $5e, $64, $6c
    db $58, $5e, $64, $6c, $50, $54, $58, $5e, $50, $58, $5e, $64, $00, $a7, $4a, $a2
    db $4c, $a7, $4a, $a2, $46, $a7, $46, $a2, $44, $a7, $46, $a2, $4a, $a7, $4c, $a2
    db $50, $a7, $4c, $a2, $4a, $a7, $4a, $a2, $46, $a7, $4a, $a2, $4c, $a7, $50, $a2
    db $4e, $a7, $50, $a2, $52, $a7, $58, $a2, $54, $a7, $5a, $a2, $54, $a7, $52, $a2
    db $50, $a7, $4c, $a2, $4a, $a2, $42, $38, $3c, $4a, $a3, $42, $01, $00, $4a, $52
    db $58, $5e, $4a, $58, $5e, $62, $54, $62, $68, $6c, $54, $62, $68, $6c, $46, $4c
    db $54, $5e, $46, $4c, $54, $5a, $50, $58, $5e, $64, $50, $5e, $64, $6c, $4a, $50
    db $58, $5e, $4a, $58, $5e, $62, $4e, $54, $5a, $62, $4e, $54, $5a, $66, $50, $58
    db $5e, $64, $50, $5e, $64, $68, $a8, $5a, $a3, $01, $00, $4e, $7e, $00, $00, $5e
    db $7e, $6d, $7e, $7d, $7e

    db $9d, $b1, $00, $80, $a7, $01, $a1, $5e, $5e, $a6, $68, $a1, $5e, $a4, $68, $00
    db $9d, $91, $00, $80, $a7, $01, $a1, $54, $54, $a6, $5e, $a1, $58, $a4, $5e, $9d
    db $e9, $6e, $20, $a7, $01, $a1, $4e, $4e, $a6, $58, $a1, $50, $a3, $58, $01, $a7
    db $01, $a1, $06, $06, $a6, $0b, $a1, $06, $a0, $06, $06, $06, $06, $06, $06, $06
    db $06, $a3, $01, $bb, $7e, $28, $7f, $bb, $7e, $73, $7f, $ff, $ff, $91, $7e, $e5
    db $7e, $4f, $7f, $e5, $7e, $96, $7f, $ff, $ff, $9d, $7e, $fb, $7e, $61, $7f, $fb
    db $7e, $ae, $7f, $ff, $ff, $a9, $7e, $11, $7f, $ff, $ff, $b5, $7e

    db $9d, $82, $00, $80, $a2, $54, $a1, $54, $54, $54, $4a, $46, $4a, $a2, $54, $a1
    db $54, $54, $54, $58, $5c, $58, $a2, $54, $a1, $54, $54, $58, $54, $52, $54, $a1
    db $58, $5c, $58, $5c, $a2, $58, $a1, $56, $58, $00, $9d, $62, $00, $80, $a2, $01
    db $44, $01, $40, $01, $44, $01, $46, $01, $44, $01, $44, $01, $40, $01, $40, $00
    db $9d, $e9, $6e, $20, $a2, $54, $54, $4a, $52, $54, $54, $4a, $58, $54, $54, $52
    db $54, $4e, $54, $4a, $52, $00, $a2, $06, $0b, $06, $0b, $06, $0b, $06, $0b, $06
    db $0b, $06, $0b, $06, $a1, $0b, $0b, $06, $a2, $0b, $a1, $06, $00, $a2, $5e, $a1
    db $5e, $5e, $5e, $54, $50, $54, $a2, $5e, $a1, $5e, $5e, $5e, $62, $66, $62, $a2
    db $5e, $a1, $5e, $5c, $a2, $58, $a1, $58, $54, $a1, $52, $54, $52, $54, $a2, $52
    db $a1, $4e, $52, $00, $a2, $01, $46, $01, $4a, $01, $46, $01, $4a, $01, $46, $01
    db $46, $01, $46, $01, $46, $00, $a2, $46, $54, $54, $54, $46, $54, $54, $54, $46
    db $54, $52, $58, $44, $52, $4a, $58, $00, $a2, $62, $a1, $62, $62, $62, $5e, $5a
    db $5e, $a2, $62, $a1, $62, $62, $62, $5e, $5a, $5e, $a2, $62, $a1, $4a, $4e, $a2
    db $52, $a1, $4a, $5c, $a3, $58, $a1, $54, $a6, $6c, $00, $a2, $01, $4a, $01, $4a
    db $01, $4a, $01, $4a, $01, $a1, $46, $46, $a2, $46, $a1, $46, $46, $a3, $46, $a2
    db $44, $01, $00, $a2, $42, $5a, $50, $5a, $42, $5a, $50, $5a, $4a, $a1, $52, $52
    db $a2, $52, $a1, $52, $52, $a3, $52, $a2, $54, $01, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00

    jp Jump_001_64d3


    jp Reset_some_sound_registers


    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

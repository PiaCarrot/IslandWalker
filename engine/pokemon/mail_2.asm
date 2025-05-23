; MailGFXPointers indexes
; LoadMailPalettes.MailPals indexes (see gfx/mail/mail.pal)
	const_def
	const FLOWER_MAIL_INDEX  ; 0
	const SURF_MAIL_INDEX    ; 1
	const LITEBLUEMAIL_INDEX ; 2
	const PORTRAITMAIL_INDEX ; 3
	const LOVELY_MAIL_INDEX  ; 4
	const EON_MAIL_INDEX     ; 5
	const MORPH_MAIL_INDEX   ; 6
	const BLUESKY_MAIL_INDEX ; 7
	const MUSIC_MAIL_INDEX   ; 8
	const MIRAGE_MAIL_INDEX  ; 9
	const GLITTER_MAIL_INDEX ; 10
	const TROPIC_MAIL_INDEX  ; 11
	const BREEZE_MAIL_INDEX  ; 12
	const ROCKET_MAIL_INDEX  ; 13
	const GOLD_MAIL_INDEX    ; 14
	const ZIGZAG_MAIL_INDEX  ; 15
DEF CUSTOM_PALETTES_MAIL EQU const_value
	const POSTCARD_INDEX     ; 16
DEF NUM_MAIL EQU const_value

ReadPartyMonMail:
	ld a, [wCurPartyMon]
	ld hl, sPartyMail
	ld bc, MAIL_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
ReadAnyMail:
	push de
	call ClearBGPalettes
	call ClearSprites
	call ClearTilemap
	call DisableLCD
	call LoadFontsExtra
	pop de
	push de
	ld a, BANK(sPartyMail)
	call OpenSRAM
	farcall ParseMailLanguage
	call CloseSRAM
	ld a, c
	ld de, StandardEnglishFont
	or a ; MAIL_LANG_ENGLISH
	jr z, .got_font
	ld de, FrenchGermanFont
	sub MAIL_LANG_ITALIAN
	jr c, .got_font
	ld de, SpanishItalianFont

.got_font
	ld hl, vTiles1
	lb bc, BANK(StandardEnglishFont), $80
	call Get1bpp
	pop de
	call .LoadGFX
	call EnableLCD
	call WaitBGMap
	ld a, [wCurMailIndex]
	ld e, a
	farcall LoadMailPalettes
	call SetDefaultBGPAndOBP
	xor a
	ldh [hJoyPressed], a
	call .loop
	call ClearBGPalettes
	call DisableLCD
	call LoadStandardFont
	jmp EnableLCD

.loop
	call GetJoypad
	ldh a, [hJoyPressed]
	and A_BUTTON | B_BUTTON | START
	jr z, .loop
	vc_patch Forbid_printing_mail
if DEF(_CRYSTAL_VC)
	and NO_INPUT
else
	and START
endc
	vc_patch_end
	ret z
	ld a, [wJumptableIndex]
	push af
	farcall PrintMailAndExit ; printer
	pop af
	ld [wJumptableIndex], a
	jr .loop

.LoadGFX:
	ld h, d
	ld l, e
	push hl
	ld a, BANK(sPartyMail)
	call OpenSRAM
	ld de, sPartyMon1MailAuthorID - sPartyMon1Mail
	add hl, de
	ld a, [hli] ; author id
	ld [wCurMailAuthorID], a
	ld a, [hli]
	ld [wCurMailAuthorID + 1], a
	ld a, [hli] ; species
	ld [wCurPartySpecies], a
	ld b, [hl] ; type
	call CloseSRAM
	ld hl, MailGFXPointers
	ld c, 0
.loop2
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call GetItemIDFromIndex
	pop hl
	cp b
	jr z, .got_pointer
	ld a, [hli]
	cp -1
	jr z, .invalid
	inc c
	inc hl
	inc hl
	jr .loop2

.invalid
	ld hl, MailGFXPointers + 1

.got_pointer
	inc hl
	ld a, c
	ld [wCurMailIndex], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, .done
	pop bc
	push de
	jp hl
.done
	ret ; no-optimize Stub function (used to push ret to stack for return)

MailGFXPointers:
; entries correspond to *MAIL_INDEX constants
	table_width 4
	dw FLOWER_MAIL,  LoadFlowerMailGFX
	dw SURF_MAIL,    LoadSurfMailGFX
	dw LITEBLUEMAIL, LoadLiteBlueMailGFX
	dw PORTRAITMAIL, LoadPortraitMailGFX
	dw LOVELY_MAIL,  LoadLovelyMailGFX
	dw EON_MAIL,     LoadEonMailGFX
	dw MORPH_MAIL,   LoadMorphMailGFX
	dw BLUESKY_MAIL, LoadBlueSkyMailGFX
	dw MUSIC_MAIL,   LoadMusicMailGFX
	dw MIRAGE_MAIL,  LoadMirageMailGFX
	dw GLITTER_MAIL, LoadGlitterMailGFX
	dw TROPIC_MAIL,  LoadTropicMailGFX
	dw BREEZE_MAIL,  LoadBreezeMailGFX
	dw ROCKET_MAIL,  LoadRocketMailGFX
	dw GOLD_MAIL,    LoadGoldMailGFX
	dw ZIGZAG_MAIL,  LoadZigZagMailGFX
	dw POSTCARD,     LoadPostcardGFX
	assert_table_length NUM_MAIL
	dw -1 ; end

LoadSurfMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld de, SurfMailBorderGFX
	ld c, 8 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, MailLaprasGFX
	ld c, 6 * LEN_1BPP_TILE
	call LoadMailGFX_Color3
	ld de, SurfMailWaveGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	jr FinishLoadingSurfLiteBlueMailGFX

LoadLiteBlueMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld de, LiteBlueMailBorderGFX
	ld c, 8 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, MailDratiniGFX
	ld c, 6 * LEN_1BPP_TILE
	call LoadMailGFX_Color3
	ld de, PortraitMailUnderlineGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2

FinishLoadingSurfLiteBlueMailGFX:
	ld de, SurfLiteBlueMailSmallShapesGFX
	ld c, 2 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld c, 2 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, SurfLiteBlueMailLargeShapesGFX
	ld c, 8 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld c, 8 * LEN_1BPP_TILE
	call LoadMailGFX_Color2

	call DrawMailBorder
	hlcoord 2, 15
	ld a, $3f
	call Mail_Draw16TileRow
	ld a, $39
	hlcoord 15, 14
	call Mail_Draw3x2Graphic
	ld a, $44
	hlcoord 2, 2
	call Mail_Draw2x2Graphic
	hlcoord 15, 11
	call Mail_Draw2x2Graphic
	ld a, $4c
	hlcoord 3, 12
	call Mail_Draw2x2Graphic
	hlcoord 15, 2
	call Mail_Draw2x2Graphic
	ld a, $50
	hlcoord 6, 3
	call Mail_Draw2x2Graphic
	ld a, $40
	hlcoord 13, 2
	ld [hli], a
	hlcoord 6, 14
	ld [hl], a
	ld a, $41
	hlcoord 4, 5
	ld [hli], a
	hlcoord 17, 5
	ld [hli], a
	hlcoord 13, 12
	ld [hl], a
	ld a, $42
	hlcoord 9, 2
	ld [hli], a
	hlcoord 14, 5
	ld [hli], a
	hlcoord 3, 10
	ld [hl], a
	ld a, $43
	hlcoord 6, 11
	ld [hli], a
	pop hl
	jmp MailGFX_PlaceMessage

LoadEonMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld de, EonMailBorder1GFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, EonMailBorder2GFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, EonMailBorder2GFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, EonMailBorder1GFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, SurfMailBorderGFX + 6 * LEN_1BPP_TILE
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, MailEeveeGFX
	ld c, 6 * LEN_1BPP_TILE
	call LoadMailGFX_Color3
	ld hl, vTiles2 tile $3d
	ld de, MailLargeCircleGFX
	ld c, 4 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, EonMailBorder2GFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2

	ld a, $31
	hlcoord 0, 0
	call Mail_Place18TileAlternatingRow
	hlcoord 1, 17
	call Mail_Place18TileAlternatingRow
	ld a, $33
	hlcoord 0, 1
	call Mail_Place16TileAlternatingColumn
	hlcoord 19, 0
	call Mail_Place16TileAlternatingColumn
	hlcoord 2, 15
	ld a, $35
	call Mail_Draw16TileRow
	inc a
	hlcoord 15, 14
	call Mail_Draw3x2Graphic
	call LovelyEonMail_PlaceIcons
	pop hl
	jmp MailGFX_PlaceMessage

LoadLovelyMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld de, LovelyMailBorderGFX
	ld c, 5 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, MailPoliwagGFX
	ld c, 6 * LEN_1BPP_TILE
	call LoadMailGFX_Color3
	ld de, LovelyMailUnderlineGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, LovelyMailLargeHeartGFX
	ld c, 4 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, LovelyMailSmallHeartGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1

	call DrawMailBorder2
	hlcoord 2, 15
	ld a, $3c
	call Mail_Draw16TileRow
	ld a, $36
	hlcoord 15, 14
	call Mail_Draw3x2Graphic
	call LovelyEonMail_PlaceIcons
	pop hl
	jmp MailGFX_PlaceMessage

LovelyEonMail_PlaceIcons:
	ld a, $3d
	hlcoord 2, 2
	call Mail_Draw2x2Graphic
	hlcoord 16, 2
	call Mail_Draw2x2Graphic
	hlcoord 9, 4
	call Mail_Draw2x2Graphic
	hlcoord 2, 11
	call Mail_Draw2x2Graphic
	hlcoord 6, 12
	call Mail_Draw2x2Graphic
	hlcoord 12, 11
	call Mail_Draw2x2Graphic
	ld a, $41
	hlcoord 5, 4
	ld [hl], a
	hlcoord 6, 2
	ld [hl], a
	hlcoord 12, 4
	ld [hl], a
	hlcoord 14, 2
	ld [hl], a
	hlcoord 3, 13
	ld [hl], a
	hlcoord 9, 11
	ld [hl], a
	hlcoord 16, 12
	ld [hl], a
	ret

LoadMorphMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld bc, 5 * LEN_1BPP_TILE
	call MailGFX_GenerateMonochromeTilesColor2
	ld de, MorphMailBorderCornerGFX + 3 * LEN_1BPP_TILE
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, MorphMailBorderCornerGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, MorphMailBorderGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, EonMailBorder1GFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, MorphMailDividerGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, MailDittoGFX
	ld c, 6 * LEN_1BPP_TILE
	call LoadMailGFX_Color3
	call DrawMailBorder2
	ld a, $31
	hlcoord 1, 1
	call Mail_Draw2x2Graphic
	hlcoord 17, 15
	call Mail_Draw2x2Graphic
	hlcoord 1, 3
	ld [hl], a
	hlcoord 3, 1
	ld [hl], a
	hlcoord 16, 16
	ld [hl], a
	hlcoord 18, 14
	ld [hl], a
	ld a, $36
	hlcoord 1, 4
	ld [hl], a
	hlcoord 2, 3
	ld [hl], a
	hlcoord 3, 2
	ld [hl], a
	hlcoord 4, 1
	ld [hl], a
	inc a
	hlcoord 15, 16
	ld [hl], a
	hlcoord 16, 15
	ld [hl], a
	hlcoord 17, 14
	ld [hl], a
	hlcoord 18, 13
	ld [hl], a
	inc a
	hlcoord 2, 15
	ld b, $e
	call Mail_DrawRowLoop
	inc a
	hlcoord 2, 11
	call Mail_Draw16TileRow
	hlcoord 2, 5
	call Mail_Draw16TileRow
	inc a
	hlcoord 6, 1
	call Mail_Draw13TileRow
	hlcoord 1, 16
	call Mail_Draw13TileRow
	inc a
	hlcoord 3, 13
	call Mail_Draw3x2Graphic
	pop hl
	jmp MailGFX_PlaceMessage

LoadBlueSkyMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld de, EonMailBorder1GFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld a, $ff
	ld bc, 1 tiles
	rst ByteFill
	ld de, BlueSkyMailGrassGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color3
	ld de, MailDragoniteAndSentretGFX
	ld c, 23 * LEN_1BPP_TILE
	call LoadMailGFX_Color3
	ld de, MailCloudGFX
	ld c, 6 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, FlowerMailBorderGFX + 6 * LEN_1BPP_TILE
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, MailCloudGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, MailCloudGFX + 2 * LEN_1BPP_TILE
	ld c, 2 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, MailCloudGFX + 5 * LEN_1BPP_TILE
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1

	ld a, $31
	hlcoord 0, 0
	call Mail_DrawFullWidthBorder
	hlcoord 0, 1
	call Mail_DrawLeftRightBorder
	hlcoord 19, 1
	call Mail_DrawLeftRightBorder
	inc a
	hlcoord 0, 17
	call Mail_DrawFullWidthBorder
	inc a
	hlcoord 0, 16
	call Mail_DrawFullWidthBorder
	inc a
	hlcoord 2, 2
	call Mail_Place6TileRow
	hlcoord 3, 3
	call Mail_Place6TileRow
	hlcoord 4, 4
	call Mail_Place6TileRow
	dec hl
	ld [hl], $7f
	dec a
	hlcoord 15, 14
	call Mail_Draw2x2Graphic
	add $4
	hlcoord 15, 16
	ld [hli], a
	inc a
	ld [hl], a
	inc a
	push af
	hlcoord 12, 1
	call Mail_Draw3x2Graphic
	pop af
	hlcoord 15, 4
	call Mail_Draw3x2Graphic
	inc a
	hlcoord 2, 11
	call Mail_Draw16TileRow
	inc a
	hlcoord 10, 3
	call Mail_Draw2x2Graphic
	pop hl
	jmp MailGFX_PlaceMessage

Mail_Place6TileRow:
	ld b, $6
.loop
	ld [hli], a
	inc a
	dec b
	jr nz, .loop
	ret

LoadFlowerMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld de, FlowerMailBorderGFX
	ld c, 8 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, MailOddishGFX
	ld c, 4 * LEN_1BPP_TILE
	call LoadMailGFX_Color3
	ld de, FlowerMailBorderGFX + 6 * LEN_1BPP_TILE
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, FlowerMailFlowerGFX
	ld c, 4 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld c, 4 * LEN_1BPP_TILE
	call LoadMailGFX_Color2

	call DrawMailBorder
	hlcoord 2, 15
	ld a, $3d ; underline
	call Mail_Draw16TileRow
	ld a, $39 ; oddish
	hlcoord 16, 13
	call Mail_Draw2x2Graphic
	hlcoord 2, 13
	call Mail_Draw2x2Graphic
	ld a, $3e
	hlcoord 2, 2
	call Mail_Draw2x2Graphic
	hlcoord 5, 3
	call Mail_Draw2x2Graphic
	hlcoord 10, 2
	call Mail_Draw2x2Graphic
	hlcoord 16, 3
	call Mail_Draw2x2Graphic
	hlcoord 5, 11
	call Mail_Draw2x2Graphic
	hlcoord 16, 10
	call Mail_Draw2x2Graphic
	ld a, $42
	hlcoord 3, 4
	call Mail_Draw2x2Graphic
	hlcoord 12, 3
	call Mail_Draw2x2Graphic
	hlcoord 14, 2
	call Mail_Draw2x2Graphic
	hlcoord 2, 10
	call Mail_Draw2x2Graphic
	hlcoord 14, 11
	call Mail_Draw2x2Graphic
	pop hl
	jmp MailGFX_PlaceMessage

LoadPortraitMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld de, PortraitMailBorderGFX
	ld c, 5 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, PortraitMailUnderlineGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld hl, vTiles2 tile $3d
	ld de, PortraitMailLargePokeballGFX
	ld c, 4 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, PortraitMailSmallPokeballGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2

	call DrawMailBorder2
	hlcoord 8, 15
	ld a, $36
	ld b, $a
	call Mail_DrawRowLoop
	call LovelyEonMail_PlaceIcons
	ld a, $1
	ld [wUnownLetter], a
	hlcoord 1, 10
	call PrepMonFrontpic
	pop hl
	jmp MailGFX_PlaceMessage

LoadMusicMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld de, MusicMailBorderGFX
	ld c, 4 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, MorphMailBorderGFX
	ld c, 2 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, MailNatuGFX
	ld c, 6 * LEN_1BPP_TILE
	call LoadMailGFX_Color3
	xor a
	ld bc, 1 tiles
	rst ByteFill
	ld de, MusicMailLargeNoteGFX
	ld c, 3 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, MusicMailSmallNoteGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1

	ld a, $31
	hlcoord 0, 0
	call Mail_Place18TileAlternatingRow
	hlcoord 1, 17
	call Mail_Place18TileAlternatingRow
	ld a, $33
	hlcoord 0, 1
	call Mail_Place16TileAlternatingColumn
	hlcoord 19, 0
	call Mail_Place16TileAlternatingColumn
	ld a, $35
	hlcoord 2, 15
	call Mail_Place14TileAlternatingRow
	ld a, $37
	hlcoord 15, 14
	call Mail_Draw3x2Graphic
	call LovelyEonMail_PlaceIcons
	pop hl
	jmp MailGFX_PlaceMessage

LoadMirageMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld bc, 5 * LEN_1BPP_TILE
	call MailGFX_GenerateMonochromeTilesColor2
	ld de, BlueSkyMailGrassGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, MailMewGFX
	ld c, 18 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, LiteBlueMailBorderGFX + 1 * LEN_1BPP_TILE
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, LiteBlueMailBorderGFX + 6 * LEN_1BPP_TILE
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1

	call DrawMailBorder2
	ld a, $36
	hlcoord 1, 16
	call Mail_DrawTopBottomBorder
	inc a
	hlcoord 15, 14
	call Mail_Draw3x2Graphic
	inc a
	hlcoord 15, 16
	ld [hli], a
	inc a
	ld [hl], a
	ld a, $3f
	hlcoord 1, 1
	call Mail_Place18TileAlternatingRow
	ld a, $41
	hlcoord 0, 2
	call Mail_Place14TileAlternatingColumn
	ld a, $43
	hlcoord 19, 2
	call Mail_Place14TileAlternatingColumn
	ld a, $45
	hlcoord 0, 1
	ld [hl], a
	inc a
	hlcoord 19, 1
	ld [hl], a
	inc a
	hlcoord 0, 16
	ld [hl], a
	inc a
	hlcoord 19, 16
	ld [hl], a
	inc a
	hlcoord 2, 5
	call Mail_Draw16TileRow
	inc a
	hlcoord 2, 11
	call Mail_Draw16TileRow
	pop hl
	jp MailGFX_PlaceMessage
	
LoadGlitterMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld de, GlitterMailBorderGFX
	ld c, 4 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, GlitterMailNameLineGFX
	ld c, 2 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	ld de, MailPikachuStarGFX
	ld c, 20 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	xor a
	ld bc, 1 tiles
	rst ByteFill
	ld de, GlitterMailLargeStarGFX
	ld c, 4 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, GlitterMailSmallStarGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	call DisableLCD
	ld hl, MailPikachuStar2BPPGFX
	ld de, vTiles2 tile $37
	call Decompress
	call EnableLCD

	ld a, $31
	hlcoord 0, 0
	call Mail_Place18TileAlternatingRow
	hlcoord 1, 17
	call Mail_Place18TileAlternatingRow
	ld a, $33
	hlcoord 0, 1
	call Mail_Place16TileAlternatingColumn
	hlcoord 19, 0
	call Mail_Place16TileAlternatingColumn
	ld a, $35
	hlcoord 2, 15
	call Mail_Draw13TileRow
	ld a, $37
	hlcoord 15, 12
	call Mail_Draw4x2Graphic
	ld a, $3F
	hlcoord 15, 14
	call Mail_Draw4x2Graphic
	ld a, $47
	hlcoord 15, 16
	call Mail_Draw4x1Graphic
	call GlitterMail_PlaceIcons
	pop hl
	jmp MailGFX_PlaceMessage
	
GlitterMail_PlaceIcons:
	ld a, $4c
	hlcoord 2, 2
	call Mail_Draw2x2Graphic
	hlcoord 16, 2
	call Mail_Draw2x2Graphic
	hlcoord 9, 4
	call Mail_Draw2x2Graphic
	ld a, $50
	hlcoord 5, 4
	ld [hl], a
	hlcoord 6, 2
	ld [hl], a
	hlcoord 12, 4
	ld [hl], a
	hlcoord 14, 2
	ld [hl], a
	ret
	
LoadTropicMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld de, TropicMailBorderGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld hl, vTiles2 tile $32
	ld de, TropicMailBorderGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld hl, vTiles2 tile $3C
	ld de, TropicMailTextTileGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld hl, vTiles2 tile $45
	ld de, Mail_BlankTileGFX
	ld c, 1 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	call DisableLCD
	ld hl, TropicMailBellossomGFX
	ld de, vTiles2 tile $33
	call Decompress
	ld hl, LargeFlower2bppGFX
	ld de, vTiles2 tile $3D
	call Decompress
	ld hl, SmallFlower2bppGFX
	ld de, vTiles2 tile $41
	call Decompress
	call EnableLCD

	hlcoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, $45
	rst ByteFill
	ld a, $31
	hlcoord 0, 0
	call Mail_Draw20TileRow
	hlcoord 0, 17
	call Mail_Draw20TileRow
	hlcoord 0, 15
	call Mail_Draw20TileRow
	hlcoord 0, 0
	call MailPlace18TileColumn
	hlcoord 19, 0
	call MailPlace18TileColumn
	hlcoord 1, 16
	ld a, $3c ; underline
	call Mail_Draw16TileRow
	hlcoord 2, 5
	call Mail_Draw16TileRow
	hlcoord 2, 6
	call Mail_Draw16TileRow
	hlcoord 2, 7
	call Mail_Draw16TileRow
	hlcoord 2, 8
	call Mail_Draw16TileRow
	hlcoord 2, 9
	call Mail_Draw16TileRow
	hlcoord 2, 10
	call Mail_Draw16TileRow
	hlcoord 2, 11
	call Mail_Draw16TileRow
	hlcoord 2, 12
	call Mail_Draw16TileRow
	hlcoord 2, 13
	call Mail_Draw16TileRow
	ld a, $33
	hlcoord 16, 14
	call Mail_Draw3x2Graphic
	ld a, $39
	hlcoord 16, 16
	call Mail_Draw3x1Graphic
	ld a, $3D
	hlcoord 2, 2
	call Mail_Draw2x2Graphic
	hlcoord 6, 1
	call Mail_Draw2x2Graphic
	hlcoord 12, 2
	call Mail_Draw2x2Graphic
	hlcoord 17, 2
	call Mail_Draw2x2Graphic
	ld a, $41
	hlcoord 4, 3
	call Mail_Draw2x2Graphic
	hlcoord 14, 3
	call Mail_Draw2x2Graphic
	hlcoord 15, 1
	call Mail_Draw2x2Graphic
	pop hl
	jmp MailGFX_PlaceMessage

LoadBreezeMailGFX:
	push bc
	ld hl, Mail_BetaHoppipPal
	ld de, wBGPals1 palette 7
	ld bc, 1 palettes
	ld a, BANK(wBGPals1)
	call FarCopyWRAM
	ld hl, vTiles2 tile $31
	ld de, Mail_BreezeCloudGFX
	ld c, 5 * LEN_1BPP_TILE
	call LoadMailGFX_Color3
	ld hl, vTiles2 tile $36
	ld de, Mail_BreezeGrassGFX
	ld c, 3 * LEN_1BPP_TILE
	call LoadMailGFX_Color2
	call DisableLCD
	ld hl, Mail_Hoppip2bppGFX
	ld de, vTiles2 tile $39
	call Decompress
	ld hl, Mail_BetaHoppip2bppGFX
	ld de, vTiles2 tile $45
	call Decompress
	call EnableLCD

	ld a, $31
	hlcoord 0, 0
	call Mail_Place20Tile3AlternatingRow
	ld a, $32
	hlcoord 19, 0
	ld [hl], a

	ld a, $37
	hlcoord 0, 17
	call Mail_Draw20TileRow
	ld a, $36
	hlcoord 0, 17
	ld [hl], a
	ld a, $38
	hlcoord 19, 17
	ld [hl], a
	ld a, $39
	hlcoord 6, 2
	call Mail_Draw2x2Graphic
	ld a, $3D
	hlcoord 12, 1
	call Mail_Draw2x2Graphic
	ld a, $41
	hlcoord 12, 4
	call Mail_Draw2x2Graphic
	ld a, $34
	hlcoord 9, 2
	call Mail_Draw2x1Graphic
	ld a, $34
	hlcoord 10, 3
	call Mail_Draw2x1Graphic
	ld a, $34
	hlcoord 8, 4
	call Mail_Draw2x1Graphic
	ld a, $45
	hlcoord 17, 16
	call Mail_Draw2x2Graphic
	pop hl
	jmp MailGFX_PlaceMessage
	
LoadRocketMailGFX:
	push bc
	ld hl, vTiles2 tile $31
	ld de, RocketMailBorderGFX
	ld c, 4 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, MailMeowthGFX
	ld c, 16 * LEN_1BPP_TILE
	call LoadMailGFX_Color3
	ld de, MailMeowthGFX
	ld c, 16 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld hl, vTiles2 tile $01
	ld de, MailBigRGFX
	ld c, 18 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, MailBigRBottomGFX
	ld c, 18 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, MailSmallRGFX
	ld c, 2 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	xor a
	ld bc, 1 tiles
	rst ByteFill

	ld a, $31
	hlcoord 0, 0
	call Mail_Place18TileAlternatingRow
	hlcoord 1, 17
	call Mail_Place18TileAlternatingRow
	ld a, $33
	hlcoord 0, 1
	call Mail_Place16TileAlternatingColumn
	hlcoord 19, 0
	call Mail_Place16TileAlternatingColumn
	ld a, $35
	hlcoord 2, 2
	call Mail_Draw4x2Graphic
	ld a, $35
	hlcoord 14, 2
	call Mail_Draw4x2Graphic
	ld a, $3D
	hlcoord 2, 4
	call Mail_Draw4x2Graphic
	ld a, $3D
	hlcoord 14, 4
	call Mail_Draw4x2Graphic
	ld a, $45
	hlcoord 8, 2
	call Mail_Draw4x2Graphic
	ld a, $4D
	hlcoord 8, 4
	call Mail_Draw4x2Graphic
	ld a, $01
	hlcoord 13, 11
	call Mail_Draw6x6Graphic
	ld a, $25
	hlcoord 2, 15
	ld [hl], a
	ld a, $26
	hlcoord 3, 15
	ld [hl], a
	pop hl
	jmp MailGFX_PlaceMessage
	

LoadGoldMailGFX:
	push bc
	ld hl, vTiles2 tile $35
	ld de, MailMeowthGFX
	ld c, 16 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, MailMeowthGFX
	ld c, 16 * LEN_1BPP_TILE
	call LoadMailGFX_Color3
	ld hl, vTiles2 tile $01
	ld de, MailBigYenGFX
	ld c, 18 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, MailBigYenBottomGFX
	ld c, 18 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	ld de, MailSmallYenGFX
	ld c, 2 * LEN_1BPP_TILE
	call LoadMailGFX_Color1
	call DisableLCD
	ld hl, Mail_GoldMailBorder2bppGFX
	ld de, vTiles2 tile $31
	call Decompress
	call EnableLCD
	xor a
	ld bc, 1 tiles
	rst ByteFill

	ld a, $31
	hlcoord 0, 0
	call Mail_Place18TileAlternatingRow
	hlcoord 1, 17
	call Mail_Place18TileAlternatingRow
	ld a, $33
	hlcoord 0, 1
	call Mail_Place16TileAlternatingColumn
	hlcoord 19, 0
	call Mail_Place16TileAlternatingColumn
	ld a, $35
	hlcoord 2, 2
	call Mail_Draw4x2Graphic
	ld a, $35
	hlcoord 14, 2
	call Mail_Draw4x2Graphic
	ld a, $3D
	hlcoord 2, 4
	call Mail_Draw4x2Graphic
	ld a, $3D
	hlcoord 14, 4
	call Mail_Draw4x2Graphic
	ld a, $45
	hlcoord 8, 2
	call Mail_Draw4x2Graphic
	ld a, $4D
	hlcoord 8, 4
	call Mail_Draw4x2Graphic
	ld a, $01
	hlcoord 13, 11
	call Mail_Draw6x6Graphic
	ld a, $25
	hlcoord 2, 15
	ld [hl], a
	ld a, $26
	hlcoord 3, 15
	ld [hl], a
	pop hl
	jmp MailGFX_PlaceMessage

LoadZigZagMailGFX:
	push bc

	ld hl, ZigZagMailGFX
	ld de, vTiles2
	call Decompress

	call ClearTilemap

	ld hl, ZigZagMailTilemap
	ld bc, ZigZagMailTilemapEnd - ZigZagMailTilemap
	decoord 0, 0
	rst CopyBytes

	pop hl
	jmp MailGFX_PlaceMessage

ZigZagMailTilemap:
INCBIN "gfx/mail/zigzag_mail.tilemap"
ZigZagMailTilemapEnd:

LoadPostcardGFX:
	push bc

	ld hl, PostcardGFX
	ld de, vTiles2
	call Decompress

	call ClearTilemap
	farcall WipeAttrmap

	ld hl, PostcardTilemap
	ld bc, PostcardTilemapEnd - PostcardTilemap
	decoord 0, 0
	rst CopyBytes

	ld hl, PostcardPalettes
	ld de, wBGPals1
	ld bc, 7 palettes
	call FarCopyColorWRAM
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a

	ld hl, PostcardAttrmap
	ld bc, PostcardAttrmapEnd - PostcardAttrmap
	decoord 0, 0, wAttrmap
	rst CopyBytes
	farcall ApplyAttrmap

	pop hl
	jmp MailGFX_PlaceMessage

PostcardTilemap:
INCBIN "gfx/mail/Postcard.tilemap"
PostcardTilemapEnd:

PostcardAttrmap:
INCBIN "gfx/mail/Postcard.attrmap"
PostcardAttrmapEnd:

PostcardPalettes:
INCLUDE "gfx/mail/Postcard.pal"

MailGFX_GenerateMonochromeTilesColor2:
.loop
	xor a
	ld [hli], a
	ld a, $ff
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret

MailGFX_PlaceMessage:
	ld bc, MAIL_STRUCT_LENGTH
	ld de, wTempMail
	ld a, BANK(sPartyMail)
	call OpenSRAM
	rst CopyBytes
	call CloseSRAM
	ld hl, wTempMailAuthor
	ld de, wMonOrItemNameBuffer
	ld bc, NAME_LENGTH - 1
	rst CopyBytes
	ld a, "@"
	ld [wTempMailAuthor], a
	ld [wMonOrItemNameBuffer + NAME_LENGTH - 1], a
	ld de, wTempMailMessage
	ld a, [wCurMailIndex]
	hlcoord 1, 7
	cp POSTCARD_INDEX
	jr z, .continue
	hlcoord 2, 9
	cp ZIGZAG_MAIL_INDEX
	jr z, .continue
	hlcoord 2, 7
.continue
	rst PlaceString
	ld de, wMonOrItemNameBuffer
	ld a, [de]
	and a
	ret z
	ld a, [wCurMailIndex]
	hlcoord 7, 16
	cp ZIGZAG_MAIL_INDEX
	jr z, .place_author
	hlcoord 8, 14
	cp PORTRAITMAIL_INDEX
	jr z, .place_author
	hlcoord 6, 14
	cp MORPH_MAIL_INDEX
	jr z, .place_author
	hlcoord 6, 11
	cp POSTCARD_INDEX
	jr z, .place_author
	hlcoord 4, 15
	cp ROCKET_MAIL_INDEX
	jr z, .place_author
	cp GOLD_MAIL_INDEX
	jr z, .place_author
	hlcoord 6, 16
	cp TROPIC_MAIL_INDEX
	jr z, .place_author
	cp BREEZE_MAIL_INDEX
	jr z, .place_author
	hlcoord 5, 14

.place_author
	jmp PlaceString

DrawMailBorder:
	hlcoord 0, 0
	ld a, $31
	ld [hli], a
	inc a
	call Mail_DrawTopBottomBorder
	inc a
	ld [hli], a
	inc a
	call Mail_DrawLeftRightBorder
	ld a, $36
	ld [hli], a
	inc a
	call Mail_DrawTopBottomBorder
	hlcoord 19, 1
	ld a, $35
	call Mail_DrawLeftRightBorder
	ld [hl], $38
	ret

DrawMailBorder2:
	hlcoord 0, 0
	ld a, $31
	ld [hli], a
	inc a
	call Mail_DrawTopBottomBorder
	ld [hl], $31 ; no-optimize *hl++|*hl-- = N (a is used.)
	inc hl
	inc a
	call Mail_DrawLeftRightBorder
	ld [hl], $31 ; no-optimize *hl++|*hl-- = N (a is used.)
	inc hl
	inc a
	call Mail_DrawTopBottomBorder
	hlcoord 19, 1
	ld a, $35
	call Mail_DrawLeftRightBorder
	ld [hl], $31
	ret

Mail_Place14TileAlternatingRow:
	push af
	ld b, 14 / 2
	jr Mail_PlaceAlternatingRow

Mail_Place18TileAlternatingRow:
	push af
	ld b, 18 / 2
	jr Mail_PlaceAlternatingRow

Mail_Place20Tile3AlternatingRow:
	push af
	ld b, 20 / 3
	; fallthrough

Mail_Place3AlternatingRow:
.loop
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	dec a
	dec a
	dec b
	jr nz, .loop
	ld [hl], a
	pop af
	ret

Mail_PlaceAlternatingRow:
.loop
	ld [hli], a
	inc a
	ld [hli], a
	dec a
	dec b
	jr nz, .loop
	ld [hl], a
	pop af
	ret
	
MailPlace18TileColumn:
	push af
	ld b, 18
.loop
	ld [hl], a
	ld de, SCREEN_WIDTH
	add hl, de
	inc a
	ld [hl], a
	add hl, de
	dec a
	dec b
	jr nz, .loop
	ld [hl], a
	pop af
	ret

Mail_Place14TileAlternatingColumn:
	push af
	ld b, 14 / 2
	jr Mail_PlaceAlternatingColumn

Mail_Place16TileAlternatingColumn:
	push af
	ld b, 16 / 2

Mail_PlaceAlternatingColumn:
.loop
	ld [hl], a
	ld de, SCREEN_WIDTH
	add hl, de
	inc a
	ld [hl], a
	add hl, de
	dec a
	dec b
	jr nz, .loop
	ld [hl], a
	pop af
	ret

Mail_Draw13TileRow:
	ld b, 13
	jr Mail_DrawRowLoop

Mail_Draw16TileRow:
	ld b, 16
	jr Mail_DrawRowLoop

Mail_Draw20TileRow:
	ld b, 20
	jr Mail_DrawRowLoop

Mail_DrawTopBottomBorder:
	ld b, SCREEN_WIDTH - 2
	jr Mail_DrawRowLoop

Mail_DrawFullWidthBorder:
	ld b, SCREEN_WIDTH
	; fallthrough

Mail_DrawRowLoop:
.loop
	ld [hli], a
	dec b
	jr nz, .loop
	ret

Mail_DrawLeftRightBorder:
	ld b, SCREEN_HEIGHT - 2
	ld de, SCREEN_WIDTH
.loop
	ld [hl], a
	add hl, de
	dec b
	jr nz, .loop
	ret

Mail_Draw2x2Graphic:
	push af
	ld [hli], a
	inc a
	ld [hl], a
	ld bc, SCREEN_WIDTH - 1
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	pop af
	ret
	
Mail_Draw2x1Graphic:
    push af
    ld [hli], a        ; tile 1 (first column of the 2x1 graphic)
    inc a              ; next tile (tile 2)
    ld [hl], a
    ld bc, SCREEN_WIDTH - 1
    add hl, bc         ; move to the next line (go down by 1 row)
    pop af
    ret


Mail_Draw3x1Graphic:
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	ld bc, SCREEN_WIDTH - 2
	add hl, bc
	ret

Mail_Draw3x2Graphic:
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	ld bc, SCREEN_WIDTH - 2
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	ret

Mail_Draw4x2Graphic:
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	ld bc, SCREEN_WIDTH - 3
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	ret

Mail_Draw6x6Graphic:
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	ld bc, SCREEN_WIDTH - 5
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	add hl, bc
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	ret

Mail_Draw4x1Graphic:
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	ld bc, SCREEN_WIDTH - 3
	add hl, bc
	ret

LoadMailGFX_Color1:
.loop
	ld a, [de]
	inc de
	ld [hli], a
	xor a
	ld [hli], a
	dec c
	jr nz, .loop
	ret

LoadMailGFX_Color2:
.loop
	xor a
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .loop
	ret

LoadMailGFX_Color3:
.loop
	ld a, [de]
	inc de
	ld [hli], a
	ld [hli], a
	dec c
	jr nz, .loop
	ret

INCLUDE "gfx/mail.asm"

ItemIsMail::
	push bc
	ld a, d
	call GetItemIndexFromID
	ld b, h
	ld c, l
	ld hl, MailItems
	ld de, 2
	call IsInWordArray
	pop bc
	ret

INCLUDE "data/items/mail_items.asm"

Mail_BetaHoppipPal:
	RGB 07, 26, 31
	RGB 00, 21, 00
	RGB 00, 00, 00
	RGB 29, 29, 29

_TitleScreen:
	call ClearBGPalettes
	call ClearTilemap
	call DisableLCD
	call ClearSprites

; Turn BG Map update off
	xor a
	ldh [hBGMapMode], a
	
; Reset timing variables
	ld hl, wJumptableIndex
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wTitleScreenSelectedOption
	ld [hli], a ; wTitleScreenTimer
	ld [hl], a  ; wTitleScreenTimer + 1

	ldh [hMapAnims], a
	ldh [hSCY], a
	ldh [hSCX], a
	
	farcall ClearSpriteAnims

	ld hl, OrangeTitleGFX
	ld de, vTiles2
	call Decompress

	ld hl, OrangeTitle2GFX
	ld de, vTiles0
	call Decompress
	
	ld hl, OrangeTitleOBPalettes
	ld de, wOBPals1
	ld bc, 3 palettes
	call FarCopyColorWRAM
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	
; VRAM bank 1
	ld a, 1
	ldh [rVBK], a

; Decompress logo
	ld hl, OrangeLogoGFX
	ld de, vTiles2
	call Decompress
	
; Back to VRAM bank 0
	xor a
	ldh [rVBK], a

	hlbgcoord 0, 0
	ld bc, BG_MAP_WIDTH * BG_MAP_HEIGHT
	xor a
	rst ByteFill

	ld hl, OrangeTitleTilemap
	ld bc, OrangeTitleTilemapEnd - OrangeTitleTilemap
	call Title_CopyMapTilesOrAttr

	ld hl, OrangeTitlePalettes
	ld de, wBGPals1
	ld bc, 5 palettes
	call FarCopyColorWRAM
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	
	ld a, [rVBK]
	push af
	ld a, 1
	ldh [rVBK], a
	ld hl, OrangeTitleAttrmap
	ld bc, OrangeTitleAttrmapEnd - OrangeTitleAttrmap
	call Title_CopyMapTilesOrAttr
	pop af
	ldh [rVBK], a
	
	xor a
	ldh [hSCX], a
	ld a, 256 - SCREEN_HEIGHT_PX - (2 * TILE_WIDTH)
	ldh [hSCY], a
	
	ld hl, wSpriteAnimDict
	xor a ; SPRITE_ANIM_DICT_DEFAULT and tile offset $00
	ld [hli], a
	ld [hl], a
	ld hl, rLCDC
	res rLCDC_SPRITE_SIZE, [hl] ; 8x8
	call EnableLCD

; Reset audio
	call ChannelsOff
	ld hl, wLYOverrides
	ld bc, wLYOverridesEnd - wLYOverrides
	xor a
	call ByteFill
	farcall CheckSave
	jr nz, .NoMarillSpawn
	call Title_InitMarillWait
	call Title_InitMarillTail
.NoMarillSpawn
	call Title_InitPressA
	jmp SFXChannelsOff

DrawTitleGraphic:
; input:
;   hl: draw location
;   b: height
;   c: width
;   d: tile to start drawing from
;   e: number of tiles to advance for each bgrows
.bgrows
	push de
	push bc
	push hl
.col
	ld a, d
	ld [hli], a
	inc d
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	pop de
	ld a, e
	add d
	ld d, a
	dec b
	jr nz, .bgrows
	ret

InitializeBackground:
	ld hl, wShadowOAMSprite00
	lb de, -$22, $0
	ld c, 5
.loop
	push bc
	call .InitColumn
	pop bc
	ld a, $10
	add d
	ld d, a
	dec c
	jr nz, .loop
	ret

.InitColumn:
	lb bc, $40, $6
.loop2
	ld a, d
	ld [hli], a ; y
	ld a, b
	ld [hli], a ; x
	add $8
	ld b, a
	ld a, e
	ld [hli], a ; tile id
	inc e
	inc e
	ld a, 0 | PRIORITY
	ld [hli], a ; attributes
	dec c
	jr nz, .loop2
	ret
	
Title_CopyMapTilesOrAttr:
	debgcoord 0, 0
.loop_tile_copy_2
	push bc
	ld c, 20
.loop_tile_copy
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop_tile_copy
	pop bc
	push hl
	ld hl, -20
	add hl, bc
	ld b, h
	ld c, l
	ld hl, BG_MAP_WIDTH - 20
	add hl, de
	ld d, h
	ld e, l
	pop hl
	ld a, b
	or c
	jr nz, .loop_tile_copy_2
	ret
	
Title_InitPressA:
	depixel 17, 10
	ld a, SPRITE_ANIM_OBJ_TITLE_PRESS_A
	call InitSpriteAnimStruct
	ret
	
Title_InitLogoPalmLeft:
	depixel 8, 6
	ld a, SPRITE_ANIM_OBJ_TITLE_LOGO_PALM_LEFT
	call InitSpriteAnimStruct
	ret

Title_InitLogoPalmRight:
	depixel 8, 17
	ld a, SPRITE_ANIM_OBJ_TITLE_LOGO_PALM_RIGHT
	call InitSpriteAnimStruct
	ret

Title_InitMarillWait:
	depixel 19, 12
	ld a, SPRITE_ANIM_OBJ_TITLE_MARILL_WAIT
	call InitSpriteAnimStruct
	ret
	
_TitleScreenPressedA:
; Marill presses the a button
	farcall CheckSave
	jr nz, .NoMarillCry
	ld hl, MARILL
	call GetPokemonIDFromIndex
	call PlayMonCry
	jp .Scroll
.NoMarillCry
	ld de, SFX_TWINKLE
	call PlaySFX
.Scroll
	; ld c, 31
	; call DelayFrames
	farcall ClearSpriteAnims
	ld a, 12 ; fade time
	ld [wMusicFade], a
	ld de, MUSIC_NONE
	ld a, e
	ld [wMusicFadeID], a
	ld a, d
	ld [wMusicFadeID + 1], a


; Scroll to top of the screen
    ld a, 1
    ld [wGlobalAnimYOffset], a
.loop_scy
    call DelayFrame
    farcall DoNextFrameForAllSprites
    ld hl, hSCY
    dec [hl]   
    jr nz, .loop_scy
	call Title_InitDragonite
	ld de, MUSIC_GET_BADGE
	ld a, e
	ld [wMapMusic], a
	call PlayMusic
	ld c, 50
	call DelayFrames
	ret
	
Title_InitMarillTail:
	depixel 18, 13
	ld a, SPRITE_ANIM_OBJ_TITLE_MARILL_TAIL
	call InitSpriteAnimStruct
	ret
	
Title_InitDragonite:
	depixel 7, 24
	ld a, SPRITE_ANIM_OBJ_TITLE_DRAGONITE
	call InitSpriteAnimStruct
	ret

OrangeLogoGFX:
INCBIN "gfx/title/logo.2bpp.lz"

OrangeLogoTilemap:
INCBIN "gfx/title/orangelogo.tilemap"
OrangeLogoTilemapEnd:

OrangeTitleGFX:
INCBIN "gfx/title/orangetitle.2bpp.lz"

OrangeTitle2GFX:
INCBIN "gfx/title/orangetitle2.2bpp.lz"

OrangeTitleTilemap:
INCBIN "gfx/title/orangetitle.tilemap"
OrangeTitleTilemapEnd:

OrangeTitleAttrmap:
INCBIN "gfx/title/orangetitle.attrmap"
OrangeTitleAttrmapEnd:

OrangeTitlePalettes:
INCLUDE "gfx/title/orangetitle.pal"

OrangeTitleOBPalettes:
INCLUDE "gfx/title/orangetitle_ob.pal"

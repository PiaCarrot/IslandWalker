_TitleScreen:
	call ClearBGPalettes
	call ClearTilemap
	call DisableLCD
	call ClearSprites
	farcall ClearSpriteAnims

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
	ld de, vTiles1
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
	ld bc, 3 palettes
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

; Suicune gfx
	; hlbgcoord 0, 12
	; ld bc, 6 * BG_MAP_WIDTH ; the rest of the screen
	; ld a, 0 | VRAM_BANK_1
	; rst ByteFill
	

	
; Draw Pokemon logo
	; hlcoord 0, $0C, vBGMap1
	; ld bc, 6 * 20
	; ld a, 0 | VRAM_BANK_1
	; rst ByteFill
	
; Draw copyright text
	; hlbgcoord 3, 0, vBGMap1
	; lb bc, 1, 13
	; lb de, $c, 16
	; call DrawTitleGraphic

; Initialize running Suicune?
;	ld d, $0
;	call LoadSuicuneFrame

; Initialize background crystal
;	call InitializeBackground

; Update palette colors
	; ldh a, [rSVBK]
	; push af
	; ld a, BANK(wBGPals1)
	; ldh [rSVBK], a

	; ld hl, TitleScreenPalettes
	; ld de, wBGPals1
	; ld bc, 16 palettes
	; rst CopyBytes

	; ld hl, TitleScreenPalettes
	; ld de, wBGPals2
	; ld bc, 16 palettes
	; rst CopyBytes

	; pop af
	; ldh [rSVBK], a

; LY/SCX trickery starts here

	; a = [rSVBK]
	; push af
	; ld a, BANK(wLYOverrides)
	; ldh [rSVBK], a

; Make sure the LYOverrides buffer is empty
	; ld hl, wLYOverrides
	; xor a
	; ld bc, wLYOverridesEnd - wLYOverrides
	; rst ByteFill

; Let LCD Stat know we're messing around with SCX
	; ld hl, rIE
	; set LCD_STAT, [hl]
	; ld a, LOW(rSCX)
	; ldh [hLCDCPointer], a

	; pop af
	; ldh [rSVBK], a

; Reset audio
	call ChannelsOff
	call EnableLCD

; Set sprite size to 8x16
	; ldh a, [rLCDC]
	; set rLCDC_SPRITE_SIZE, a
	; ldh [rLCDC], a

	; ld a, +112
	; ldh [hSCX], a
	; ld a, 8
	; ldh [hSCY], a
	; ld a, 7
	; ldh [hWX], a
	; ld a, -112
	; ldh [hWY], a

	; ld a, TRUE
	; ldh [hCGBPalUpdate], a

; Update BG Map 0 (bank 0)
	ldh [hBGMapMode], a

	xor a
	; ld [wSuicuneFrame], a

; Play starting sound effect
	jmp SFXChannelsOff
	; ld de, SFX_TITLE_SCREEN_ENTRANCE
	; jmp PlaySFX

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

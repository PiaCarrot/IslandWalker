GoldSilverIntro:
	ldh a, [rIE]
	push af
	call NormalSpeed
	pop af
	ldh [rIE], a
	call .Init
.Loop:
	call .PlayFrame
	jr nc, .Loop
	ldh a, [rIE]
	push af
	call DoubleSpeed
	pop af
	ldh [rIE], a
	ret

.Init:
	ld a, BANK(wLYOverrides)
	ldh [rSVBK], a
	farcall ClearSpriteAnims
	xor a
	ld [wIntroJumptableIndex], a
	ldh [hBGMapMode], a
	ret

.PlayFrame:
	call JoyTextDelay
	ldh a, [hJoyLast]
	and BUTTONS
	jr nz, .Finish

; check done flag
	ld a, [wIntroJumptableIndex]
	bit 7, a
	jr nz, .Finish

	farcall PlaySpriteAnimations
	call IntroSceneJumper
	call DelayFrame
	and a
	ret

.Finish:
	ld a, 1
	ldh [rSVBK], a
	farcall ClearSpriteAnims
	call ClearSprites
	call DelayFrame
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	ld hl, rIE
	res LCD_STAT, [hl]
	ldh [hLCDCPointer], a
	ldh [hLYOverrideStart], a
	ldh [hLYOverrideEnd], a
	ld a, %11100100
	call DmgToCgbBGPals
	depixel 28, 28, 4, 4
	call DmgToCgbObjPals
	scf
	ret

IntroSceneJumper:
	jumptable .scenes, wIntroJumptableIndex

.scenes
	dw IntroScene1
	dw IntroScene2
	dw IntroScene3
	dw IntroScene4
	dw IntroScene5
	dw IntroScene6
	dw IntroScene6_5
	dw IntroScene6_6
	dw IntroScene6_7
	dw IntroScene7
	dw IntroScene7_5
	dw IntroScene8
	dw IntroScene8_1
	dw IntroScene8_2
	dw IntroScene9
	dw IntroScene9_5
	dw IntroScene9_6
	dw IntroScene10
	dw IntroScene11
	dw IntroScene12
	dw IntroScene16
	dw IntroScene17

IntroScene1:
; Set up water cutscene (Shellders/Magikarp/Lapras)
	call ClearBGPalettes
	call ClearTilemap
	ld hl, wIntroJumptableIndex
	inc [hl] ; only run once
	call DisableLCD

	xor a
	ldh [hBGMapMode], a
	farcall ClearSpriteAnims
	ld a, 1
	ldh [rVBK], a
	hlbgcoord 0, 0, vBGMap2
	lb bc, 4, 0

	xor a
	call ByteFill
	ld a, 0
	ldh [rVBK], a
	call Intro_ResetLYOverrides
	ld de, vTiles2 tile $00
	ld hl, Intro_WaterGFX1
	call Decompress
	ld a, LOW(Intro_WaterMeta)
	ld [wIntroTilesPointer + 0], a
	ld a, HIGH(Intro_WaterMeta)
	ld [wIntroTilesPointer + 1], a
	hlbgcoord 0, 0, vBGMap2
	ld a, l
	ld [wIntroBGMapPointer + 0], a
	ld a, h
	ld [wIntroBGMapPointer + 1], a
	ld de, Intro_WaterTilemap + 15 tiles
	ld a, e
	ld [wIntroTilemapPointer + 0], a
	ld a, d
	ld [wIntroTilemapPointer + 1], a
	call Intro_DrawBackground

	ld de, vTiles0 tile $00
	ld hl, Intro_WaterGFX2
	call Decompress
	ld hl, wSpriteAnimDict
	ld a, SPRITE_ANIM_DICT_DEFAULT
	ld [hli], a
	ld a, $00
	ld [hli], a
	xor a
	ldh [hSCY], a
	ld [wGlobalAnimYOffset], a
	ld [wGlobalAnimXOffset], a
	ld a, $58
	ldh [hSCX], a
	xor a
	ld [wIntroFrameCounter2], a
	ld a, $80
	ld [wIntroFrameCounter1], a
	ld hl, rIE
	set LCD_STAT, [hl]
	ld a, $42
	ldh [hLCDCPointer], a
	call Intro_InitSineLYOverrides

	xor a ; FALSE
	ld [wIntroSpriteStateFlag], a
	call EnableLCD
	call DelayFrame
	ld b, SCGB_GS_INTRO
	ld c, 0
	call GetSGBLayout
	ld a, %11100100
	call DmgToCgbBGPals
	depixel 28, 28
	call DmgToCgbObjPals
	call Intro_InitShellders
	call Intro_InitShelldersEyes
	call Intro_InitLuvDisc
	ld de, MUSIC_NONE
	call PlayMusic
	ret

IntroScene2:
; shellders underwater
	call Intro_UpdateLYOverrides
	ld hl, wIntroFrameCounter1
	ld a, [hl]
	and a
	jr z, .skip_intro
	dec [hl]
	call Intro_InitBubble
	ret

.skip_intro
	ld [hl], $10
	ld hl, wIntroJumptableIndex
	inc [hl]

IntroScene3:
; rise towards the surface
	call IntroScene3_Jumper
	call IntroScene3_ScrollToSurface
	ret nc
; next scene if carry flag is set
	call Intro_ResetLYOverrides
	ld hl, hSCY
	inc [hl]
	ld hl, wIntroJumptableIndex
	inc [hl]

IntroScene4:
; at surface; Lapras surfs to left of screen
	ld a, [wIntroSpriteStateFlag]
	and a
	jr nz, .next
	ld hl, wIntroFrameCounter2
	inc [hl]
	ld a, [hl]
	and $f
	jr nz, .skip_move_left
	ld hl, hSCX
	dec [hl]
	dec [hl]

.skip_move_left
	call Intro_AnimateOceanWaves
	ret

.next
	farcall ClearSpriteAnims
	ld hl, wIntroJumptableIndex
	inc [hl]
	xor a
	ld [wIntroFrameCounter1], a

IntroScene5:
; fade out
	ld hl, wIntroFrameCounter1
	ld a, [hl]
	inc [hl]
	swap a
	and $f
	ld e, a
	ld d, 0
	ld hl, .palettes
	add hl, de
	ld a, [hl]
	cp -1
	jr z, .next
	call DmgToCgbBGPals
	call Intro_AnimateOceanWaves
	ld hl, hSCX
	dec [hl]
	dec [hl]
	ret

.next
	ld hl, wIntroJumptableIndex
	inc [hl]
	ret

.palettes:
	db %11100100
	db %11100100
	db %10010000
	db %01000000
	db %00000000
	db -1

IntroScene17:
; delay a bit before leading into the title screen
	ld c, 16
.loop
	call DelayFrame
	dec c
	jr nz, .loop
; set done flag
	ld hl, wIntroJumptableIndex
	set 7, [hl]
	ret

IntroScene3_ScrollToSurface:
	ld hl, wIntroFrameCounter2
	inc [hl]
	ld a, [hl]
	and 3
	jr nz, .skip_move_left
	ld hl, hSCX
	dec [hl]

.skip_move_left
	and 1
	jr nz, .no_carry
	ld hl, wGlobalAnimYOffset
	inc [hl]
	ld hl, hSCY
	ld a, [hl]
	dec [hl]
	and $f
	call z, Intro_UpdateTilemapAndBGMap
	ld a, [wIntroFrameCounter1]
	and a
	jr z, .carry

.no_carry
	and a
	ret

.carry
	scf
	ret

IntroScene3_Jumper:
	jumptable .dw, wIntroFrameCounter1

.dw
	dw .scene3_2
	dw .scene3_2
	dw .scene3_2
	dw .scene3_1
	dw .scene3_2
	dw .scene3_7
	dw .scene3_2
	dw .scene3_2
	dw .scene3_sky
	dw .scene3_3
	dw .scene3_3
	dw .scene3_4
	dw .scene3_6
	dw .scene3_6
	dw .scene3_6
	dw .scene3_6
	dw .scene3_6

.scene3_7
	call Intro_InitWingull
	jr .scene3_2

.scene3_1:
	call Intro_InitLapras
	depixel 28, 28, 4, 4
	call DmgToCgbObjPals
; fallthrough

.scene3_2:
	call Intro_AnimateOceanWaves
	ret

.scene3_sky
	farcall Intro_LoadSkyPalettes
.scene3_3:
	call Intro_InitMagikarps
	call Intro_AnimateOceanWaves
	ret

.scene3_4:
	ld hl, wIntroFrameCounter2
	ld a, [hl]
	and %00011111
	jr z, .load_palettes
	call Intro_InitMagikarps
	jr .scene3_5

.load_palettes
	farcall Intro_LoadMagikarpPalettes
	ret

.scene3_5:
	ld hl, rIE
	res LCD_STAT, [hl]
	xor a
	ldh [hLCDCPointer], a
; fallthrough
.scene3_6:
	call Intro_UpdateLYOverrides
	ret

Intro_InitBubble:
	ld hl, wIntroFrameCounter1
	ld a, [hl]
	and $f
	ret nz
	ld a, [hl]
	and $70
	swap a
	ld e, a
	ld d, 0
	ld hl, .pixel_table
	add hl, de
	add hl, de
	ld e, [hl]
	inc hl
	ld d, [hl]
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_BUBBLE
	call InitSpriteAnimStruct
	ret

.pixel_table
	db  6 * 8, 14 * 8 + 4
	db 14 * 8, 18 * 8 + 4
	db 10 * 8, 16 * 8 + 4
	db 12 * 8, 15 * 8
	db  4 * 8, 13 * 8
	db  8 * 8, 17 * 8

Intro_InitMagikarps:
	depixel 8, 7, 0, 7
	ldh a, [hSGB]
	and a
	jr z, .ok
	depixel 4, 3, 0, 7

.ok
	ld hl, wIntroFrameCounter2
	ld a, [hl]
	and e
	ret nz
	ld a, [hl]
	and d
	jr nz, .alternate_frame
	depixel 29, 28
	call .InitAnim
	depixel 26, 0
	call .InitAnim2
	depixel 0, 24
	call .InitAnim3
	ret

.alternate_frame
	depixel 28, 30
	call .InitAnim4
	depixel 31, 24
	call .InitAnim2
	call Random                    ;generate a random number from 0-255
	cp 3                           ;is the random number 3-255?
    jr nc, .no_call                ;if so, no shiny, nc = greater than or equal
	jp .SpawnShinyKarp             ;hey, we somehow rolled a 0, 1 or 2! Thats a 1.17% chance!
.no_call:
	depixel 2, 28
	call .InitAnim3
.ShinySpawned:
	ret

.InitAnim:
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_MAGIKARP
	call InitSpriteAnimStruct
	ret

.InitAnim2:
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_MAGIKARP_STRIPES
	call InitSpriteAnimStruct
	ret

.InitAnim3:
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_MAGIKARP_MASK
	call InitSpriteAnimStruct
	ret

.InitAnim4:
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_MAGIKARP_SAUCY
	call InitSpriteAnimStruct
	ret
	
.SpawnShinyKarp:
	depixel 2, 28
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_MAGIKARP_SHINY
	call InitSpriteAnimStruct
	ld de, SFX_SHINE
	call PlaySFX
	; TODO: Test to make sure this even works
	; farcall CheckSave
	; jr nz, .DontSetFlag
	; ld de, EVENT_SHINY_MAGIKARP_INTRO
    ; ld b, SET_FLAG
    ; farcall EventFlagAction
; .DontSetFlag
	jp .ShinySpawned

Intro_InitShellders:
	depixel 18, 7
	call .InitAnim
	depixel 14, 10
	call .InitAnim
	depixel 16, 15

.InitAnim:
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_SHELLDER
	call InitSpriteAnimStruct
	ret

Intro_InitShelldersEyes:
	depixel 18, 7
	call .InitAnim
	depixel 14, 10
	call .InitAnim
	depixel 16, 15

.InitAnim:
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_SHELLDER_EYES
	call InitSpriteAnimStruct
	ret
	
Intro_InitLuvDisc:
	depixel 5, 0
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_LUVDISC
	call InitSpriteAnimStruct
	ret

Intro_InitLapras:
	ld a, [wIntroFrameCounter2]
	and %00011111
	ret nz
	depixel 16, 24
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_LAPRAS
	call InitSpriteAnimStruct
	ret
	
Intro_InitWingull:
	ld a, [wIntroFrameCounter2]
	and %00011111
	ret nz
	depixel 10, 15
	call .InitAnim
	depixel 12, 10
	call .InitAnim
	depixel 11, 5

.InitAnim:
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_WINGULL
	call InitSpriteAnimStruct
	ret

Intro_UpdateTilemapAndBGMap:
; add new tiles to top as water scene scrolls up to surface
	push hl
	push de

	ld a, [wIntroTilemapPointer + 0]
	ld e, a
	ld a, [wIntroTilemapPointer + 1]
	ld d, a
	ld hl, -BG_MAP_WIDTH / 2
	add hl, de
	ld a, l
	ld e, l
	ld [wIntroTilemapPointer + 0], a
	ld a, h
	ld d, h
	ld [wIntroTilemapPointer + 1], a

	hlcoord 0, 0
	ld c, BG_MAP_WIDTH / 2
.loop
	call Intro_Draw2x2Tiles
	dec c
	jr nz, .loop

	ld a, [wIntroBGMapPointer + 0]
	ld e, a
	ld a, [wIntroBGMapPointer + 1]
	ld d, a
	ld hl, -2 * BG_MAP_WIDTH
	add hl, de
	ld a, l
	ld [wIntroBGMapPointer + 0], a
	ld [wRequested2bppDest + 0], a
	ld a, h
	and %11111011
	or %00001000
	ld [wIntroBGMapPointer + 1], a
	ld [wRequested2bppDest + 1], a
	ld a, LOW(wTilemap)
	ld [wRequested2bppSource + 0], a
	ld a, HIGH(wTilemap)
	ld [wRequested2bppSource + 1], a
	ld a, 4
	ld [wRequested2bppSize], a
	ld hl, wIntroFrameCounter1
	dec [hl]

	pop de
	pop hl
	ret

Intro_AnimateOceanWaves:
; uses a 2bpp request to copy tile IDs to the BG map
	ld hl, wIntroFrameCounter2
	ld a, [hl]
	and 3
	cp 3
	ret z
	ld a, [wRequested2bppSize]
	and a
	ret nz
	ld a, [hl]
	and $30
	swap a
	ld l, a
	ld h, 0
rept 5
	add hl, hl
endr
	ld de, .wave_tiles
	add hl, de
	ld a, l
	ld [wRequested2bppSource + 0], a
	ld a, h
	ld [wRequested2bppSource + 1], a
	ld a, LOW(vBGMap0 tile $1e)
	ld [wRequested2bppDest + 0], a
	ld a, HIGH(vBGMap0 tile $1e)
	ld [wRequested2bppDest + 1], a
	ld a, 2
	ld [wRequested2bppSize], a
	ret

.wave_tiles:
rept 8
	db $70, $71, $72, $73
endr
rept 8
	db $74, $75, $76, $77
endr
rept 8
	db $78, $79, $7a, $7b
endr
rept 8
	db $7c, $7d, $7e, $7f
endr

Intro_InitSineLYOverrides:
	ld bc, wLYOverrides2
	ld a, wLYOverrides2End - wLYOverrides2
	ld de, vBGMap1 - vBGMap0

.loop
	push af
	push de
	ld a, e
	farcall Sine
	ld [bc], a
	inc bc
	pop de
	inc e
	pop af
	dec a
	jr nz, .loop
	ret

Intro_UpdateLYOverrides:
	ld bc, wLYOverrides
	ld e, $10

.loop1
	ldh a, [hSCY]
	ld [bc], a
	inc bc
	dec e
	jr nz, .loop1

	ld hl, wLYOverrides2
	ld de, wLYOverrides2 + 1
	ld a, [hl]
	push af
	ld a, $80

.loop2
	push af
	ld a, [de]
	inc de
	ld [hli], a
	push hl
	ld hl, hSCY
	add [hl]
	ld [bc], a
	inc bc
	pop hl
	pop af
	dec a
	jr nz, .loop2

	pop af
	ld [hl], a
	ret

IntroScene6:
; Set up grass cutscene (Pikachu/Jigglypuff)
	ld hl, wIntroJumptableIndex
	inc [hl] ; only run once
	call DisableLCD
	farcall ClearSpriteAnims
	call Intro_ResetLYOverrides

	ld hl, Intro_WorldMapGFX
	ld de, vTiles2
	call Decompress

	hlbgcoord 0, 0
	ld bc, BG_MAP_WIDTH * BG_MAP_HEIGHT
	ld a, $04
	rst ByteFill

	ld hl, Intro_OrangeMapTilemap
	ld bc, Intro_OrangeMapTilemapEnd - Intro_OrangeMapTilemap
	call Intro_CopyMapTilesOrAttr

	ld hl, Intro_WorldMapPalette
	ld de, wBGPals1
	ld bc, 2 palettes
	call FarCopyColorWRAM
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a

	ld a, [rVBK]
	push af
	ld a, 1
	ldh [rVBK], a
	ld hl, Intro_OrangeMapAttrmap
	ld bc, Intro_OrangeMapAttrmapEnd - Intro_OrangeMapAttrmap
	call Intro_CopyMapTilesOrAttr
	pop af
	ldh [rVBK], a

	xor a
	ldh [hSCX], a
	ld a, 256 - SCREEN_HEIGHT_PX - (2 * TILE_WIDTH)
	ldh [hSCY], a

	xor a
	ld [wIntroFrameCounter2], a
	call EnableLCD
	xor a ; FALSE
	ld [wIntroSpriteStateFlag], a
	ret

Intro_CopyMapTilesOrAttr:
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

IntroScene6_5:
; scroll up the orange islands
;	call Intro_InitNote
	ld hl, wIntroFrameCounter2
	ld a, [hl]
	inc [hl]
	and %00000001
	ret nz
	ld hl, hSCY
	ld a, [hl]
	and a
	jr z, .next
	dec [hl]
	ld hl, wGlobalAnimXOffset
	inc [hl]
	ret

.next
	ld c, 31
	call FadeToBlack
	ld a, -1
	ld [wIntroFrameCounter1], a
	ld hl, wIntroJumptableIndex
	inc [hl]
	ret
	
IntroScene6_6:
; after the fade we show portraits of the protagonists
	ld hl, wIntroJumptableIndex
	inc [hl] ; only run once
	call DisableLCD

	ld hl, Intro_PortraitsGFX
	ld de, vTiles2
	ld a, BANK(IntroGFX)
	call FarDecompress

	hlbgcoord 0, 0
	ld bc, BG_MAP_WIDTH * BG_MAP_HEIGHT
	ld a, $2F
	rst ByteFill

	ld hl, Intro_Portrait1Tilemap
	ld bc, Intro_Portrait1TilemapEnd - Intro_Portrait1Tilemap
	call Intro_CopyMapTilesOrAttr

	ld hl, Intro_PortraitPalettes
	ld de, wBGPals1
	ld bc, 7 palettes
	call FarCopyColorWRAM
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	
	ld a, [rVBK]
	push af
	ld a, 1
	ldh [rVBK], a
	ld hl, Intro_Portrait1Attrmap
	ld bc, Intro_Portrait1AttrmapEnd - Intro_Portrait1Attrmap
	call Intro_CopyMapTilesOrAttr
	pop af
	ldh [rVBK], a
	call EnableLCD
	ld c, 31
	call DelayFrames
	ret

	
IntroScene6_7:
; Wait a sec, scroll down	
	ld c, 100
	call DelayFrames
	ld c, 15
	call FadeToBlack
	ld a, -1
	ld [wIntroFrameCounter1], a
	ld hl, wIntroJumptableIndex
	inc [hl]
	ret

IntroScene7:
	ld hl, wIntroJumptableIndex
	inc [hl] ; only run once
	call DisableLCD

	ld hl, Intro_WorldMapGFX
	ld de, vTiles2
	call Decompress

	hlbgcoord 0, 0
	ld bc, BG_MAP_WIDTH * BG_MAP_HEIGHT
	xor a
	rst ByteFill

	ld hl, Intro_KantoMapTilemap
	ld bc, Intro_KantoMapTilemapEnd - Intro_KantoMapTilemap
	call Intro_CopyMapTilesOrAttr

	ld hl, Intro_WorldMapPalette
	ld de, wBGPals1
	ld bc, 2 palettes
	call FarCopyColorWRAM
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a

	ld a, [rVBK]
	push af
	ld a, 1
	ldh [rVBK], a
	ld hl, Intro_KantoMapAttrmap
	ld bc, Intro_KantoMapAttrmapEnd - Intro_KantoMapAttrmap
	call Intro_CopyMapTilesOrAttr
	pop af
	ldh [rVBK], a

	xor a
	ldh [hSCX], a
	ld a, 256 - SCREEN_HEIGHT_PX - (2 * TILE_WIDTH)
	ldh [hSCY], a

	xor a
	ld [wIntroFrameCounter2], a
	call EnableLCD
	ld c, 31
	call FadePalettes
	ret

IntroScene7_5:
	ld hl, wIntroFrameCounter2
	ld a, [hl]
	inc [hl]
	and %00000001
	ret nz
	ld hl, hSCY
	ld a, [hl]
	and a
	jr z, .next
	dec [hl]
	ld hl, wGlobalAnimXOffset
	inc [hl]
	ret

.next
	ld a, -1
	ld [wIntroFrameCounter1], a
	ld hl, wIntroJumptableIndex
	inc [hl]
	ret

IntroScene8:
; How long should it hang after Kanto stops scrolling
	ld c, 50
	call DelayFrames
	ld c, 31
	call FadeToBlack
	xor a
	ld [wIntroFrameCounter1], a
	ld hl, wIntroJumptableIndex
	inc [hl]
	ret
	
IntroScene8_1:
; 2nd portrait setup
	ld hl, wIntroJumptableIndex
	inc [hl] ; only run once
	call DisableLCD

	ld hl, Intro_Portraits2GFX
	ld de, vTiles2
	ld a, BANK(IntroGFX)
	call FarDecompress

	hlbgcoord 0, 0
	ld bc, BG_MAP_WIDTH * BG_MAP_HEIGHT
	ld a, $0F
	rst ByteFill

	ld hl, Intro_Portrait2Tilemap
	ld bc, Intro_Portrait2TilemapEnd - Intro_Portrait2Tilemap
	call Intro_CopyMapTilesOrAttr

	ld hl, Intro_PortraitPalettes
	ld de, wBGPals1
	ld bc, 7 palettes
	call FarCopyColorWRAM
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	
	ld a, [rVBK]
	push af
	ld a, 1
	ldh [rVBK], a
	ld hl, Intro_Portrait2Attrmap
	ld bc, Intro_Portrait2AttrmapEnd - Intro_Portrait2Attrmap
	call Intro_CopyMapTilesOrAttr
	pop af
	ldh [rVBK], a
	call EnableLCD
	ld c, 31
	call DelayFrames
	ret

IntroScene8_2:
; Wait a sec, and then fade to RocketBallScene
	ld c, 100
	call DelayFrames
	ld c, 31
	call FadeToBlack
	ld a, -1
	ld [wIntroFrameCounter1], a
	ld hl, wIntroJumptableIndex
	inc [hl]
	ret
	
IntroScene9:
; rocketball setup
	ld hl, wIntroJumptableIndex
	inc [hl] ; only run once
	call DisableLCD

	ld hl, Intro_RocketBallGFX
	ld de, vTiles2
	ld a, BANK(IntroGFX)
	call FarDecompress

	hlbgcoord 0, 0
	ld bc, BG_MAP_WIDTH * BG_MAP_HEIGHT
	ld a, $08
	rst ByteFill

	ld hl, Intro_RocketBallTilemap
	ld bc, Intro_RocketBallTilemapEnd - Intro_RocketBallTilemap
	call Intro_CopyMapTilesOrAttr

	ld hl, Intro_RocketBallPalettes
	ld de, wBGPals1
	ld bc, 8 palettes
	call FarCopyColorWRAM
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	
	ld a, [rVBK]
	push af
	ld a, 1
	ldh [rVBK], a
	ld hl, Intro_RocketBallAttrmap
	ld bc, Intro_RocketBallAttrmapEnd - Intro_RocketBallAttrmap
	call Intro_CopyMapTilesOrAttr
	pop af
	ldh [rVBK], a

	xor a
	ldh [hSCX], a
	ld a, 256 - SCREEN_HEIGHT_PX - (2 * TILE_WIDTH)
	ldh [hSCY], a

	xor a
	ld [wIntroFrameCounter2], a
	call EnableLCD
	ld c, 150
	call DelayFrames
	ld c, 31
	call FadePalettes
	ret

IntroScene9_5:
	ld hl, wIntroFrameCounter2
	ld a, [hl]
	inc [hl]
	and %00000000
	ret nz
	ld hl, hSCY
	ld a, [hl]
	and a
	jr z, .next
	dec [hl]
	ld hl, wGlobalAnimXOffset
	inc [hl]
	ret

.next
	ld a, -1
	ld [wIntroFrameCounter1], a
	ld hl, wIntroJumptableIndex
	inc [hl]
	ret
	
IntroScene9_6:
; How long should it hang after Rocketball scrolls
	ld c, 150
	call DelayFrames
	ld c, 31
	call FadeToBlack
	xor a
	ld [wIntroFrameCounter1], a
	ld hl, wIntroJumptableIndex
	inc [hl]
	ret

IntroScene10:
; Set up fireball cutscene (Charizard, Johto starters)
	ld hl, wIntroJumptableIndex
	inc [hl] ; only run once
	call DisableLCD
	farcall ClearSpriteAnims
	call Intro_ResetLYOverrides
	call Intro_BlankTilemapAndBGMap

	ld de, vTiles2
	ld hl, Intro_FireGFX1
	call Decompress

	ld c, BULBASAUR
	ld de, vTiles0 tile $10
	farcall Intro_GetMonFrontpic
	ld c, CHARMANDER
	ld de, vTiles0 tile $29
	farcall Intro_GetMonFrontpic
	ld c, SQUIRTLE
	ld de, vTiles0 tile $42
	farcall Intro_GetMonFrontpic

	ld hl, wSpriteAnimDict
	ld a, SPRITE_ANIM_DICT_GS_INTRO
	ld [hli], a
	ld a, $00
	ld [hli], a
	call EnableLCD
	ld a, 0
	call DrawIntroCharizardGraphic

	ld a, $80
	ldh [hSCY], a
	xor a
	ldh [hSCX], a
	ld [wGlobalAnimYOffset], a
	ld [wGlobalAnimXOffset], a

	xor a
	ld [wIntroFrameCounter2], a
	ld b, SCGB_GS_INTRO
	ld c, 2
	call GetSGBLayout
	ld a, %00111111
	call DmgToCgbBGPals
	lb de, %11111111, %11111111
	call DmgToCgbObjPals
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	ld de, MUSIC_INTRO_BATTLE
	call PlayMusic
	ret

IntroScene11:
; scroll up to Charizard silhoutte, flash Kanto starters
	ld hl, wIntroFrameCounter2
	ld a, [hl]
	inc [hl]
	and 1
	ret z
	call Intro_CheckSCYEvent
	ld hl, hSCY
	ld a, [hl]
	and a
	jr z, .next
	inc [hl]
	ret

.next
	ld hl, wIntroJumptableIndex
	inc [hl]
	xor a
	ld [wIntroFrameCounter1], a
; fallthrough

IntroScene12:
; load Charizard palettes
	ld hl, wIntroFrameCounter1
	ld a, [hl]
	inc [hl]
	srl a
	srl a
	and 3
	ld e, a
	ld d, 0
	ld hl, .palettes
	add hl, de
	ld a, [hl]
	and a
	jr z, .next
	call DmgToCgbBGPals
	ld e, a
	ld d, a
	call DmgToCgbObjPals
	ret

.next
	ld hl, wIntroJumptableIndex
	inc [hl]
	ld a, $80
	ld [wIntroFrameCounter1], a
	ld c, 175
	call DelayFrames
	ret

.palettes:
	db %01101010
	db %10100101
	db %11100100
	db %00000000

IntroScene16:
; continue fireball / fade out palettes
	ld hl, wIntroFrameCounter1
	ld a, [hl]
	inc [hl]
	swap a
	and 7
	ld e, a
	ld d, 0
	ld hl, .palettes
	add hl, de
	ld a, [hl]
	cp -1
	jr z, .next
	ld hl, hSCY
	inc [hl]
	ld hl, wGlobalAnimYOffset
	dec [hl]
	call DmgToCgbBGPals
	ld e, a
	ld d, a
	call DmgToCgbObjPals
	ret

.next
	call DisableLCD
	call Intro_BlankTilemapAndBGMap
	call EnableLCD
	ld hl, wIntroJumptableIndex
	inc [hl]
	ret

.palettes:
	db %11100100
	db %10010000
	db %01000000
	db %00000000
	db -1

Intro_BlankTilemapAndBGMap:
	hlcoord 0, 0
	ld bc, wTilemapEnd - wTilemap
	xor a
	call ByteFill
	hlbgcoord 0, 0
	ld bc, vBGMap1 - vBGMap0
	xor a
	call ByteFill
	ret

Intro_CheckSCYEvent:
	ldh a, [hSCY]
	ld c, a
	ld hl, .scy_jumptable

.loop
	ld a, [hli]
	cp -1
	ret z
	cp c
	jr z, .value_found
	inc hl
	inc hl
	jr .loop

.value_found
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.scy_jumptable
	dbw $86, Intro_LoadChikoritaPalette
	dbw $87, Intro_ChikoritaAppears
	dbw $88, Intro_FlashMonPalette
	dbw $98, Intro_FlashSilhouette
	dbw $99, Intro_LoadCyndaquilPalette
	dbw $af, Intro_CyndaquilAppears
	dbw $b0, Intro_FlashMonPalette
	dbw $c0, Intro_FlashSilhouette
	dbw $c1, Intro_LoadTotodilePalette
	dbw $d7, Intro_TotodileAppears
	dbw $d8, Intro_FlashMonPalette
	dbw $e8, Intro_FlashSilhouette
	db -1

Intro_ChikoritaAppears:
	depixel 22, 1
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_CHIKORITA
	call InitSpriteAnimStruct
	ret

Intro_CyndaquilAppears:
	depixel 22, 20
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_CYNDAQUIL
	call InitSpriteAnimStruct
	ret

Intro_TotodileAppears:
	depixel 22, 1
	ld a, SPRITE_ANIM_OBJ_GS_INTRO_TOTODILE
	call InitSpriteAnimStruct
	ret

Intro_FlashMonPalette:
	lb de, %11100100, %11100100
	call DmgToCgbObjPals
	xor a
	call DmgToCgbBGPals
	ret

Intro_FlashSilhouette:
	ld c, 100
	call DelayFrames
	lb de, %11111111, %11111111
	call DmgToCgbObjPals
	ld a, %00111111
	call DmgToCgbBGPals
	ret

Intro_LoadChikoritaPalette:
	ld hl, BULBASAUR
	call GetPokemonIDFromIndex
	ld c, a
	farcall Intro_LoadMonPalette
	ret

Intro_LoadCyndaquilPalette:
	ld hl, CHARMANDER
	call GetPokemonIDFromIndex
	ld c, a
	farcall Intro_LoadMonPalette
	ret

Intro_LoadTotodilePalette:
	ld hl, SQUIRTLE
	call GetPokemonIDFromIndex
	ld c, a
	farcall Intro_LoadMonPalette
	ret

DrawIntroCharizardGraphic:
	push af
	hlcoord 0, 6
	ld c, SCREEN_WIDTH * 8
	xor a
.loop1
	ld [hli], a
	dec c
	jr nz, .loop1

	pop af
	ld e, a
	ld d, 0
	ld hl, .charizard_data
rept 5
	add hl, de
endr
	ld e, [hl]
	inc hl
	ld c, [hl]
	inc hl
	ld b, [hl]
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, e

.loop2_outer
	push bc
	push hl
.loop2_inner
	ld [hli], a
	inc a
	dec c
	jr nz, .loop2_inner

	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .loop2_outer

	ld a, 1
	ldh [hBGMapMode], a
	call DelayFrame
	call DelayFrame
	call DelayFrame
	xor a
	ldh [hBGMapMode], a
	ret
	
.charizard_data
; db vtile offset, width, height; dwcoord x, y
; mouth closed
	db $00, 8, 8
	dwcoord 6, 2

Intro_DrawBackground:
	ld b, BG_MAP_WIDTH / 2
.outer_loop
	push hl
	ld c, BG_MAP_HEIGHT / 2
.inner_loop
	call Intro_Draw2x2Tiles
	dec c
	jr nz, .inner_loop
	pop hl
	push bc
	ld bc, 2 * BG_MAP_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .outer_loop
	ret

Intro_Draw2x2Tiles:
; load tile data into a 2x2 section of the bgmap or tilemap
	push bc
	push de
	push hl
	push hl
	push hl

	ld a, [de]
	ld l, a
	ld h, 0
	ld a, [wIntroTilesPointer + 0]
	ld e, a
	ld a, [wIntroTilesPointer + 1]
	ld d, a
	add hl, hl
	add hl, hl
	add hl, de
	ld e, l
	ld d, h
	pop hl
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	pop hl
	ld bc, BG_MAP_WIDTH
	add hl, bc
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a

	pop hl
	inc hl
	inc hl
	pop de
	inc de
	pop bc
	ret

Intro_ResetLYOverrides:
	ld hl, wLYOverrides
	xor a
	ld c, wLYOverrides2 - wLYOverrides
.loop
	ld [hli], a
	dec c
	jr nz, .loop
	ret

Intro_WaterGFX1:
INCBIN "gfx/intro/water1.2bpp.lz"

Intro_WaterTilemap:
INCBIN "gfx/intro/water.tilemap"

Intro_WaterMeta:
INCBIN "gfx/intro/water.bin"

Intro_WaterGFX2:
INCBIN "gfx/intro/water2.2bpp.lz"

Intro_WorldMapGFX:
INCBIN "gfx/intro/worldmap.2bpp.lz"

Intro_WorldMapPalette:
INCLUDE "gfx/intro/worldmap.pal"

Intro_OrangeMapTilemap:
INCBIN "gfx/intro/orangemap.tilemap"
Intro_OrangeMapTilemapEnd:

Intro_OrangeMapAttrmap:
INCBIN "gfx/intro/orangemap.attrmap"
Intro_OrangeMapAttrmapEnd:

Intro_KantoMapTilemap:
INCBIN "gfx/intro/kantomap.tilemap"
Intro_KantoMapTilemapEnd:

Intro_KantoMapAttrmap:
INCBIN "gfx/intro/kantomap.attrmap"
Intro_KantoMapAttrmapEnd:

Intro_Portrait1Tilemap:
INCBIN "gfx/intro/portraits1.tilemap"
Intro_Portrait1TilemapEnd:

Intro_Portrait2Tilemap:
INCBIN "gfx/intro/portraits2.tilemap"
Intro_Portrait2TilemapEnd:

Intro_Portrait1Attrmap:
INCBIN "gfx/intro/portraits1.attrmap"
Intro_Portrait1AttrmapEnd:

Intro_Portrait2Attrmap:
INCBIN "gfx/intro/portraits2.attrmap"
Intro_Portrait2AttrmapEnd:

Intro_PortraitPalettes:
INCLUDE "gfx/intro/portraits.pal"

Intro_RocketBallTilemap:
INCBIN "gfx/intro/rocketball.tilemap"
Intro_RocketBallTilemapEnd:

Intro_RocketBallAttrmap:
INCBIN "gfx/intro/rocketball.attrmap"
Intro_RocketBallAttrmapEnd:

Intro_RocketBallPalettes:
INCLUDE "gfx/intro/rocketball.pal"

Intro_FireGFX1:
INCBIN "gfx/intro/fire1.2bpp.lz"

Intro_FireGFX2:
INCBIN "gfx/intro/fire2.2bpp.lz"

Intro_FireGFX3:
INCBIN "gfx/intro/fire3.2bpp.lz"

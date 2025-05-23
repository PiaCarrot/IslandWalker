DEF POPUP_MAP_NAME_START  EQU $e0
DEF POPUP_MAP_NAME_SIZE   EQU 18
DEF POPUP_MAP_FRAME_START EQU $f3
DEF POPUP_MAP_FRAME_SIZE  EQU 8
DEF POPUP_MAP_FRAME_SPACE EQU $fb

; wLandmarkSignTimer
DEF MAPSIGNSTAGE_1_SLIDEOLD EQU $74
DEF MAPSIGNSTAGE_2_LOADGFX  EQU $68
DEF MAPSIGNSTAGE_3_SLIDEIN  EQU $65
DEF MAPSIGNSTAGE_4_VISIBLE  EQU $59
DEF MAPSIGNSTAGE_5_SLIDEOUT EQU $0c

InitMapNameSign::
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation
	ld [wCurLandmark], a
	call .CheckExcludedMap
	jr z, .excluded_map

	call GetMapEnvironment
	cp GATE
	jr nz, .not_gate

.excluded_map
	ld a, -1
	ld [wCurLandmark], a

.not_gate
	ld hl, wMapNameSignFlags
	bit SHOWN_MAP_NAME_SIGN, [hl]
	res SHOWN_MAP_NAME_SIGN, [hl]
	jr nz, .dont_do_map_sign

	call .CheckMovingWithinLandmark
	jr z, .dont_do_map_sign
	ld a, [wCurLandmark]
	ld [wPrevLandmark], a

	call .CheckSpecialMap
	jr z, .dont_do_map_sign

; Landmark sign timer: descends $74-$00
; $73-$68: Sliding out (old sign)
; $67-$65: Loading new graphics
; $64-$59: Sliding in
; $58-$0c: Remains visible
; $0b-$00: Sliding out
	ld a, [wLandmarkSignTimer]
	sub MAPSIGNSTAGE_2_LOADGFX
	jr nc, .stage_1_sliding_out
	add MAPSIGNSTAGE_2_LOADGFX
	cp MAPSIGNSTAGE_5_SLIDEOUT
	jr c, .stage_1_sliding_out
	sub MAPSIGNSTAGE_4_VISIBLE
	jr c, .stage_4_visible
	cp MAPSIGNSTAGE_5_SLIDEOUT
	jr c, .stage_3_sliding_in
	; was in stage 2, loading new graphics; just reload them again
	ld a, MAPSIGNSTAGE_2_LOADGFX
	jr .value_ok

.stage_1_sliding_out
	add MAPSIGNSTAGE_2_LOADGFX
	jr .value_ok

.stage_3_sliding_in
	cpl
	add MAPSIGNSTAGE_1_SLIDEOLD + 1 ; a = MAPSIGNSTAGE_1_SLIDEOLD - a
	jr .value_ok

.stage_4_visible
	ld a, MAPSIGNSTAGE_1_SLIDEOLD
.value_ok
	ld [wLandmarkSignTimer], a
	ret

.dont_do_map_sign
	ld a, [wCurLandmark]
	ld [wPrevLandmark], a
	ld a, SCREEN_HEIGHT_PX
	ldh [rWY], a
	ldh [hWY], a
	ld hl, rIE
	res LCD_STAT, [hl]
	xor a
	ldh [hLCDCPointer], a
	ret

.CheckMovingWithinLandmark:
	ld a, [wCurLandmark]
	ld c, a
	ld a, [wPrevLandmark]
	cp c
	ret z
	and a ; cp SPECIAL_MAP
	ret

.CheckSpecialMap:
	cp -1
	ret z
	and a ; cp SPECIAL_MAP
	ret z
	ld a, $1
	and a
	ret

.CheckExcludedMap:
	ld a, [wMapGroup]
	assert GROUP_NONE == GROUP_NONE
	cp GROUP_NONE
	jr nz, .not_national_park_gate
	ld a, [wMapNumber]
	cp MAP_NONE
	ret z
	cp MAP_NONE
	ret
.not_national_park_gate
	assert GROUP_NONE == GROUP_NONE
	cp GROUP_NONE
	ret nz
	ld a, [wMapNumber]
	cp MAP_NONE
	ret z
	cp MAP_NONE
	ret

PlaceMapNameSign::
	; Sign is slightly delayed to move it away from the map connection setup
	ld hl, wLandmarkSignTimer
	ld a, [hl]
	and a
	jr z, .stage_5_sliding_out
	dec [hl]
	sub MAPSIGNSTAGE_2_LOADGFX
	jr nc, .stage_5_sliding_out
	add MAPSIGNSTAGE_2_LOADGFX
	cp MAPSIGNSTAGE_2_LOADGFX - 1
	ret nc
	sub MAPSIGNSTAGE_3_SLIDEIN
	jr c, .graphics_ok
	jr nz, LoadMapNameSignGFX
	push hl
	call InitMapNameFrame
	farcall HDMATransfer_OnlyTopFourRows
	pop hl

.graphics_ok
	ld a, [hl]
	cp MAPSIGNSTAGE_4_VISIBLE
	jr nc, .stage_3_sliding_in
	cp MAPSIGNSTAGE_5_SLIDEOUT
	jr c, .stage_5_sliding_out
	ld a, SCREEN_HEIGHT_PX - 3 * TILE_WIDTH
	jr .got_value

.stage_3_sliding_in
	sub MAPSIGNSTAGE_4_VISIBLE
	add a
	add SCREEN_HEIGHT_PX - 3 * TILE_WIDTH
	jr .got_value

.stage_5_sliding_out
	add a
	cpl
	add SCREEN_HEIGHT_PX + TILE_WIDTH + 1 ; a = SCREEN_HEIGHT_PX + TILE_WIDTH - a
.got_value
	ldh [rWY], a
	ldh [hWY], a
	sub SCREEN_HEIGHT_PX
	ret nz
	ld hl, rIE
	res LCD_STAT, [hl]
	ldh [hLCDCPointer], a
	ret

LoadMapNameSignGFX:
	; load opaque space
	ld hl, vTiles0 tile POPUP_MAP_FRAME_SPACE
	call GetOpaque1bppSpaceTile
	; load sign frame
	ld hl, Signs
	ld bc, POPUP_MAP_FRAME_SIZE tiles
;	ld a, [wSign]
	xor a ; Force wood sign for now...
	rst AddNTimes
	ld d, h
	ld e, l
	ld hl, vTiles0 tile POPUP_MAP_FRAME_START
	lb bc, BANK(Signs), POPUP_MAP_FRAME_SIZE
	call Get2bpp
	; clear landmark name area
	ld hl, vTiles0 tile POPUP_MAP_NAME_START
	ld e, POPUP_MAP_NAME_SIZE
.clear_loop
	push hl
	push de
	call GetOpaque1bppSpaceTile
	pop de
	pop hl
	ld bc, LEN_2BPP_TILE
	add hl, bc
	dec e
	jr nz, .clear_loop
	; wStringBuffer1 = current landmark name
	ld a, [wCurLandmark]
	ld e, a
	farcall GetLandmarkName
	; c = length of landmark name
	ld c, 0
	push hl
	ld hl, wStringBuffer1
.length_loop
	ld a, [hli]
	cp "@"
	jr z, .got_length
	inc c
	jr .length_loop
.got_length
	pop hl
	; a = tile offset to center landmark name
	ld a, SCREEN_WIDTH - 2
	sub c
	srl a
	; bc = byte offset to center landmark name (a * 16, assumes a < 16)
	swap a
	ld c, a
	ld b, 0
	; de = start of vram buffer
	ld hl, vTiles3 tile POPUP_MAP_NAME_START
	add hl, bc
	ld d, h
	ld e, l
	; hl = start of landmark name
	ld hl, wStringBuffer1
.loop
	; a = tile offset into font graphic
	ld a, [hli]
	cp "@"
	jr nz, .continue

	; copy sign palette for PAL_BG_TEXT
	ld hl, SignPals
	ld bc, 1 palettes
;	ld a, [wSign]
	xor a ; Force wood signs for now...
	rst AddNTimes ; preserves bc
	ld de, wBGPals1 palette PAL_BG_TEXT
	call FarCopyColorWRAM
	jmp SetDefaultBGPAndOBP

.continue
	; save position in landmark name
	push hl
	; spaces are unique
	cp "¯"
	jr z, .space
	cp "<BSP>"
	jr z, .space
	cp " "
	jr nz, .not_space
.space
	ld hl, TextboxSpaceGFX
	jr .got_tile
.not_space
	sub $80
	; bc = byte offset into font graphic (a * 8)
	push hl
	ld h, 0
	ld l, a
	add hl, hl
	add hl, hl
	add hl, hl
	ld b, h
	ld c, l
	pop hl
	; hl = start of font tile graphic
	push de
	ld hl, Font
	pop de
	add hl, bc
.got_tile
	; swap hl and de, so de = font tile graphic, and hl = vram
	call SwapHLDE
	; get font tile into vram
	push hl
	call GetOpaque1bppFontTile
	pop hl
	; increment position in vram
	ld bc, LEN_2BPP_TILE
	add hl, bc
	; de = position in vram
	ld d, h
	ld e, l
	; restore hl = position in landmark name
	pop hl
	jr .loop

SignPals:
	table_width 1 palettes
INCLUDE "gfx/signs/signs.pal"
	assert_table_length NUM_SIGNS

InitMapNameFrame:
; InitMapSignAttrMap
	hlcoord 0, 0
	ld de, wAttrmap - wTilemap
	add hl, de
	; top row
	ld a, PRIORITY | PAL_BG_TEXT
	ld bc, SCREEN_WIDTH - 1
	rst ByteFill
	or X_FLIP
	ld [hli], a
	; middle row
	and ~X_FLIP
	ld [hli], a
	ld bc, SCREEN_WIDTH - 2
	rst ByteFill
	or X_FLIP
	ld [hli], a
	; bottom row
	and ~X_FLIP
	ld bc, SCREEN_WIDTH - 1
	rst ByteFill
	or X_FLIP
	ld [hl], a
; PlaceMapNameFrame
	hlcoord 0, 0
	; top left
	ld a, POPUP_MAP_FRAME_START ; $f3
	ld [hli], a
	; top row
	inc a ; $f4
	call .FillTopBottom
	; top right
	dec a ; $f3
	ld [hli], a
	; middle left
	ld a, POPUP_MAP_FRAME_START + 3 ; $f6
	ld [hli], a
	; middle row
	ld a, POPUP_MAP_NAME_START
	ld c, SCREEN_WIDTH - 2
.middleloop
	ld [hli], a
	inc a
	dec c
	jr nz, .middleloop
	; middle right
	ld a, POPUP_MAP_FRAME_START + 4 ; $f7
	ld [hli], a
	; bottom left
	inc a ; $f8
	ld [hli], a
	; bottom
	inc a ; $f9
	call .FillTopBottom
	; bottom right
	dec a ; $f8
	ld [hl], a
	ret

.FillTopBottom:
	ld c, 5
	jr .enterloop

.continueloop
	ld [hli], a
	ld [hli], a

.enterloop
	inc a
	ld [hli], a
	ld [hli], a
	dec a
	dec c
	jr nz, .continueloop
	ret

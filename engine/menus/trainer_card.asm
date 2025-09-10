; TrainerCard.Jumptable indexes
	const_def
	const TRAINERCARDSTATE_PAGE1_LOADGFX ; 0
	const TRAINERCARDSTATE_PAGE1_JOYPAD  ; 1
	const TRAINERCARDSTATE_PAGE2_LOADGFX ; 2
	const TRAINERCARDSTATE_PAGE2_JOYPAD  ; 3
	const TRAINERCARDSTATE_QUIT          ; 4

TrainerCard:
	ld a, [wStateFlags]
	push af
	xor a
	ld [wStateFlags], a
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	call .InitRAM
.loop
	call UpdateTime
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit JUMPTABLE_EXIT_F, a
	jr nz, .quit
	ldh a, [hJoyLast]
	and PAD_B
	jr nz, .quit
	call .RunJumptable
	call DelayFrame
	jr .loop

.quit
	pop af
	ld [wOptions], a
	pop af
	ld [wStateFlags], a
	ret

.InitRAM:
	call ClearBGPalettes
	call ClearSprites
	call ClearTilemap
	call DisableLCD

	farcall GetCardPic

	ld hl, TrainerCardGFX
	ld de, vTiles2 tile $23
	ld bc, 12 tiles
	ld a, BANK(TrainerCardGFX)
	call FarCopyBytes

	call TrainerCard_InitCard
	call EnableLCD
	call WaitBGMap

	ld b, SCGB_TRAINER_CARD
	call GetSGBLayout
	call SetDefaultBGPAndOBP
	call WaitBGMap

	ld hl, wJumptableIndex
	xor a ; TRAINERCARDSTATE_PAGE1_LOADGFX
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wTrainerCardBadgeFrameCounter
	ld [hl], a  ; wTrainerCardBadgeTileID
	ret

.RunJumptable:
	jumptable .Jumptable, wJumptableIndex

.Jumptable:
; entries correspond to TRAINERCARDSTATE_* constants
	dw TrainerCard_Page1_LoadGFX
	dw TrainerCard_Page1_Joypad
	dw TrainerCard_Page2_LoadGFX
	dw TrainerCard_Page2_Joypad
	dw TrainerCard_Quit

TrainerCard_IncrementJumptable:
	ld hl, wJumptableIndex
	inc [hl]
	ret

TrainerCard_Quit:
	ld hl, wJumptableIndex
	set JUMPTABLE_EXIT_F, [hl]
	ret

TrainerCard_Page1_LoadGFX:
	call ClearSprites
	call TrainerCard_ClearBottomHalfOfCard
	call WaitBGMap

	ld b, SCGB_TRAINER_CARD
	call GetSGBLayout
	call SetDefaultBGPAndOBP
	call WaitBGMap

	ld de, LeaderGFX
	ld hl, vTiles2 tile $2f
	lb bc, BANK(LeaderGFX), 80
	call Request2bpp

	ld de, BadgeGFX
	ld hl, vTiles0 tile $00
	lb bc, BANK(BadgeGFX), 44
	call Request2bpp

	ld a, [wKantoBadges]
	and a
	jr z, .no_next_page
	ld de, TrainerCardGFX tile 12
	ld hl, vTiles2 tile $2e
	lb bc, BANK(TrainerCardGFX), 1
	call Request2bpp
.no_next_page

	ld hl, TrainerCard_OrangeBadgesOAM
	call TrainerCard_InitLeadersAndBadges

	call TrainerCard_PrintBottomHalfOfCard

	jp TrainerCard_IncrementJumptable

TrainerCard_Page1_Joypad:
	call TrainerCard_PrintGameTime

	ld hl, TrainerCard_OrangeBadgesOAM
	call TrainerCard_AnimateBadges

	ld hl, hJoyLast
	ld a, [hl]
	and PAD_RIGHT | PAD_A
	ret z
	ld a, [wKantoBadges]
	and a
	jr nz, .next_page
	ld a, [hl]
	and A_BUTTON
	ret z
	ld a, TRAINERCARDSTATE_QUIT
	ld [wJumptableIndex], a
	ret

.next_page
	ld a, TRAINERCARDSTATE_PAGE2_LOADGFX
	ld [wJumptableIndex], a
	ret

TrainerCard_Page2_LoadGFX:
	call ClearSprites
	call TrainerCard_ClearBottomHalfOfCard
	call WaitBGMap

	ld b, SCGB_TRAINER_CARD_KANTO
	call GetSGBLayout
	call SetDefaultBGPAndOBP
	call WaitBGMap

	ld de, LeaderGFX2
	ld hl, vTiles2 tile $2f
	lb bc, BANK(LeaderGFX2), 80
	call Request2bpp

	ld de, BadgeGFX2
	ld hl, vTiles0 tile $00
	lb bc, BANK(BadgeGFX2), 44
	call Request2bpp

	ld de, TrainerCardGFX tile 13
	ld hl, vTiles2 tile $2e
	lb bc, BANK(TrainerCardGFX), 1
	call Request2bpp

	ld hl, TrainerCard_KantoBadgesOAM
	call TrainerCard_InitLeadersAndBadges

	jp TrainerCard_IncrementJumptable

TrainerCard_Page2_Joypad:
	ld hl, TrainerCard_KantoBadgesOAM
	call TrainerCard_AnimateBadges

	ld hl, hJoyLast
	ld a, [hl]
	and PAD_LEFT
	jr nz, .previous_page
	ld a, [hl]
	and PAD_A
	ret z
	ld a, TRAINERCARDSTATE_QUIT
	ld [wJumptableIndex], a
	ret

.previous_page
	ld a, TRAINERCARDSTATE_PAGE1_LOADGFX
	ld [wJumptableIndex], a
	ret

TrainerCard_InitCard:
; print trainer pic
	hlcoord 14, 1
	lb bc, 5, 7
	xor a
	ldh [hGraphicStartTile], a
	predef PlaceGraphic

; print border
	hlcoord 0, 0
	; top edge
	ld a, $23
	ld c, SCREEN_WIDTH - 2
.top_loop
	ld [hli], a
	dec c
	jr nz, .top_loop
	; top-right corner
	inc a ; $24
	ld [hli], a
	ld [hli], a
	; sides
	dec a ; $23
	ld de, SCREEN_WIDTH - 2
	ld c, SCREEN_HEIGHT - 2
.sides_loop
	ld [hli], a
	add hl, de
	ld [hli], a
	dec c
	jr nz, .sides_loop
	; bottom-left corner
	inc a ; $24
	ld [hli], a
	ld [hli], a
	; bottom edge
	dec a ; $23
	ld c, SCREEN_WIDTH - 2
.bottom_loop
	ld [hli], a
	dec c
	jr nz, .bottom_loop
	; outer corners
	inc a ; $24
	ldcoord_a SCREEN_WIDTH - 1, 1
	ldcoord_a 0, SCREEN_HEIGHT - 2
	; inner corners
	inc a ; $25
	ldcoord_a SCREEN_WIDTH - 2, 1
	ldcoord_a 1, SCREEN_HEIGHT - 2

; print labels
	hlcoord 2, 2
	ld de, .NameIDPokedexString
	rst PlaceString

; print name
	hlcoord 7, 2
	ld de, wPlayerName
	rst PlaceString

; print ID number
	hlcoord 5, 4
	ld de, wPlayerID
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum

; print pokedex caught count
	ld hl, wPokedexCaught
	ld bc, NUM_DEX_BYTES
	call CountSetBits16
	ld a, c
	ld c, b
	ld b, a
	push bc
	ld hl, sp + 0
	ld d, h
	ld e, l
	hlcoord 10, 6
	lb bc, 2, 3
	call PrintNum
	pop bc

; print stars
	call TrainerCard_CountStars
	ld a, [wTrainerCardStarCounter]
	ld b, a
	and a ; 0?
	jr z, .zero_stars
	hlcoord 13, 4
	ld a, $29
	dec b ; 1?
	jr z, .one_star
	dec b ; 2?
	jr z, .two_stars
	dec b ; 3?
	jr z, .three_stars
	hlcoord 11, 5
	ld a, $26
	ld [hli], a
	inc a ; $27
	dec b ; 4?
	jr z, .four_stars
	ld [hli], a
.four_stars
	inc a ; $28
	ld [hl], a
	hlcoord 13, 4
	inc a ; $29
.three_stars
	ld [hld], a
.two_stars
	ld [hld], a
.one_star
	ld [hl], a
.zero_stars

; print divider line
	hlcoord 1, 7
	ld a, "<TC1>"
	ld c, 12
.divider_loop
	ld [hli], a
	dec c
	jr nz, .divider_loop
	inc a ; "<TC2>"
	ld [hl], a

; print "BADGES>"
	hlcoord 2, 8
	ld a, $2a
	ld c, 5
.badge_loop
	ld [hli], a
	inc a
	dec c
	jr nz, .badge_loop

	ret

.NameIDPokedexString:
	db   "NAME/"
	next "<ID>№."
	next "#DEX@"

TrainerCard_CountStars:
	xor a
	ld [wTrainerCardStarCounter], a

; Became Champion
	ld de, EVENT_DRAKE_DEFEATED
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	call nz, .IncrementStars

; Won the World Tournament
	ld de, EVENT_LUANA_DEFEATED
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	call nz, .IncrementStars

; TODO: Secret Tournament
	call .IncrementStars

; TODO: Shell Collector
	call .IncrementStars

; TODO: Diploma
	call .IncrementStars

	ret

.IncrementStars:
	ld hl, wTrainerCardStarCounter
	inc [hl]
	ret

TrainerCard_ClearBottomHalfOfCard:
	hlcoord 2, 9
	lb bc, 7, 16
	jmp ClearBox

TrainerCard_PrintBottomHalfOfCard:
; print labels
	hlcoord 2, 13
	ld de, TrainerCard_DollarsPlayTimeString
	rst PlaceString

; print money
	hlcoord 10, 13
	ld de, wMoney
	lb bc, PRINTNUM_MONEY | 3, 7
	call PrintNum

; fallthrough

TrainerCard_PrintGameTime:
	hlcoord 11, 15
	ld de, wGameTimeHours
	lb bc, 2, 4
	call PrintNum
	inc hl
	ld de, wGameTimeMinutes
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ldh a, [hVBlankCounter]
	and %11111
	ret nz
	hlcoord 15, 15
	ld a, [hl]
	xor " " ^ ":" ; alternate between space and colon tiles
	ld [hl], a
	ret

TrainerCard_DollarsPlayTimeString:
	db   "DOLLARS"
	next "PLAY TIME    :@"

TrainerCard_InitLeadersAndBadges:
	push hl

; place first row of leaders
	hlcoord 2, 9
	ld a, $2f
	call .PlaceLeadersFacesRow

; place second row of leaders
	hlcoord 2, 13
	ld a, $57
	call .PlaceLeadersFacesRow

	xor a
	ld [wTrainerCardBadgeFrameCounter], a

	pop hl
	jr TrainerCard_OAMUpdate

.PlaceLeadersFacesRow:
	ld de, SCREEN_WIDTH - 3
	ld c, 4
.loop
	call .PlaceLeadersFace
rept 4
	inc hl
endr
	dec c
	jr nz, .loop
	ret

.PlaceLeadersFace:
	push de
	push hl
rept 4
	ld [hli], a
	inc a
endr
	add hl, de
rept 3
	ld [hli], a
	inc a
endr
	add hl, de
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hl], a
	inc a
	pop hl
	pop de
	ret

TrainerCard_AnimateBadges:
	ldh a, [hVBlankCounter]
	and %111
	ret nz
	ld a, [wTrainerCardBadgeFrameCounter]
	inc a
	and %111
	ld [wTrainerCardBadgeFrameCounter], a
	; fallthrough

TrainerCard_OAMUpdate:
; copy badge count
	ld a, [hli]
	ld b, [hl]
; copy flag array pointer
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
; get flag array
	ld a, [de]
	ld c, a
	ld de, wShadowOAMSprite00
.loop
	srl c
	push bc
	jr nc, .skip_badge
	push hl
	ld a, [hli] ; y
	ld b, a
	ld a, [hli] ; x
	ld c, a
	ld a, l
	ld [wTrainerCardBadgePaletteAddr], a
	ld a, h
	ld [wTrainerCardBadgePaletteAddr + 1], a
rept 4
	inc hl
endr
	ld a, [wTrainerCardBadgeFrameCounter]
	add l
	ld l, a
	adc h
	sub l
	ld h, a
	ld a, [hl]
	ld [wTrainerCardBadgeTileID], a
	call .PrepOAM
	pop hl
.skip_badge
	ld bc, 6 + 2 * 4
	add hl, bc
	pop bc
	dec b
	jr nz, .loop
	ret

.PrepOAM:
	ld a, [wTrainerCardBadgeTileID]
	and 1 << 7
	ld hl, .facing1
	jr z, .loop2
	ld hl, .facing2
.loop2
	ld a, [hli]
	inc a ; -1?
	ret z
	dec a
	add b
	ld [de], a ; y
	inc de

	ld a, [hli]
	add c
	ld [de], a ; x
	inc de

	ld a, [wTrainerCardBadgeTileID]
	and ~(1 << 7)
	add [hl]
	ld [de], a ; tile id
	inc hl
	inc de

	push hl
	push bc
	ld hl, wTrainerCardBadgePaletteAddr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hli]
	ld b, a
	ld a, l
	ld [wTrainerCardBadgePaletteAddr], a
	ld a, h
	ld [wTrainerCardBadgePaletteAddr + 1], a
	ld a, b
	pop bc
	pop hl
	add [hl]
	ld [de], a ; attributes
	inc hl
	inc de

	jr .loop2

.facing1
	dbsprite  0,  0,  0,  0, $00, 0
	dbsprite  1,  0,  0,  0, $01, 0
	dbsprite  0,  1,  0,  0, $02, 0
	dbsprite  1,  1,  0,  0, $03, 0
	db -1

.facing2
	dbsprite  0,  0,  0,  0, $01, 0 | OAM_XFLIP
	dbsprite  1,  0,  0,  0, $00, 0 | OAM_XFLIP
	dbsprite  0,  1,  0,  0, $03, 0 | OAM_XFLIP
	dbsprite  1,  1,  0,  0, $02, 0 | OAM_XFLIP
	db -1

TrainerCard_OrangeBadgesOAM:
; Template OAM data for Orange badges on the trainer card.
; Format:
	; y, x, palette
	; cycle 1: face tile, in1 tile, in2 tile, in3 tile
	; cycle 2: face tile, in1 tile, in2 tile, in3 tile

	db 4
	dw wJohtoBadges

	; Coral-Eye Badge
	; X-flips on alternate cycles.
	db $60, $18, 0, 0, 0, 0
	db $00,            $20, $24, $20 | (1 << 7)
	db $00 | (1 << 7), $20, $24, $20 | (1 << 7)

	; Sea Ruby Badge
	; X-flips on alternate cycles.
	db $60, $38, 1, 1, 1, 1
	db $04,            $20, $24, $20 | (1 << 7)
	db $04 | (1 << 7), $20, $24, $20 | (1 << 7)

	; Spike Shell Badge
	; X-flips on alternate cycles.
	db $60, $58, 2, 2, 2, 2
	db $08,            $20, $24, $20 | (1 << 7)
	db $08 | (1 << 7), $20, $24, $20 | (1 << 7)

	; Jade Star Badge
	; X-flips on alternate cycles.
	db $60, $78, 3, 3, 3, 3
	db $0c,            $20, $24, $20 | (1 << 7)
	db $0c | (1 << 7), $20, $24, $20 | (1 << 7)

TrainerCard_KantoBadgesOAM:
; Template OAM data for Kanto badges on the trainer card.
; Format:
	; y, x, palette
	; cycle 1: face tile, in1 tile, in2 tile, in3 tile
	; cycle 2: face tile, in1 tile, in2 tile, in3 tile

	db 8
	dw wKantoBadges

	; Boulder Badge
	db $60, $18, 0, 0, 0, 0
	db $00, $20 | (1 << 7), $24, $20
	db $00, $20 | (1 << 7), $24, $20

	; Cascade Badge
	db $60, $38, 1, 1, 1, 1
	db $04, $20 | (1 << 7), $24, $20
	db $04, $20 | (1 << 7), $24, $20

	; Thunder Badge
	db $60, $58, 2, 2, 2, 2
	db $08, $20 | (1 << 7), $24, $20
	db $08, $20 | (1 << 7), $24, $20

	; Rainbow Badge
	db $60, $78, 6, 2, 1, 3
	db $0c, $20 | (1 << 7), $24, $20
	db $0c, $20 | (1 << 7), $24, $20

	; Soul Badge
	db $80, $18, 4, 4, 4, 4
	db $10, $20 | (1 << 7), $24, $20
	db $10, $20 | (1 << 7), $24, $20

	; Marsh Badge
	db $80, $38, 5, 5, 5, 5
	db $14, $20 | (1 << 7), $24, $20
	db $14, $20 | (1 << 7), $24, $20

	; Volcano Badge
	db $80, $58, 6, 6, 6, 6
	db $18, $20 | (1 << 7), $24, $20
	db $18, $20 | (1 << 7), $24, $20

	; Earth Badge
	; X-flips on alternate cycles.
	db $80, $78, 7, 7, 7, 7
	db $1c,            $20 | (1 << 7), $24, $20
	db $1c | (1 << 7), $20 | (1 << 7), $24, $20

LeaderGFX:  INCBIN "gfx/trainer_card/johto_leaders.2bpp"
LeaderGFX2: INCBIN "gfx/trainer_card/kanto_leaders.2bpp"
BadgeGFX:   INCBIN "gfx/trainer_card/johto_badges.2bpp"
BadgeGFX2:  INCBIN "gfx/trainer_card/kanto_badges.2bpp"

TrainerCardGFX: INCBIN "gfx/trainer_card/trainer_card.2bpp"

CatchTutorial::
	ld a, [wBattleType]
	dec a
	ld c, a
	ld hl, .dw
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.dw
	dw .DudeTutorial
	dw .DudeTutorial
	dw .DudeTutorial

.DudeTutorial:
; Back up your name to your Mom's name.
	ld hl, wPlayerName
	ld de, wMomsName
	ld bc, NAME_LENGTH
	rst CopyBytes
; Copy Dude's name to your name
	ld a, [wMapNumber]
	cp MAP_ROUTE_49
	jr nz, .IvyName
	ld hl, .Lorelei
	jr .Continue
.IvyName
	ld hl, .Dude
.Continue
	ld de, wPlayerName
	ld bc, NAME_LENGTH
	rst CopyBytes
	
	call .LoadDudeData

	xor a
	ldh [hJoyDown], a
	ldh [hJoyPressed], a
	ld a, [wOptions]
	push af
	and ~TEXT_DELAY_MASK
	add TEXT_DELAY_MED
	ld [wOptions], a
	ld hl, .AutoInput
	ld a, BANK(.AutoInput)
	call StartAutoInput
	farcall StartBattle
	call StopAutoInput
	pop af

	ld [wOptions], a
	ld hl, wMomsName
	ld de, wPlayerName
	ld bc, NAME_LENGTH
	jmp CopyBytes

.LoadDudeData:
	ld hl, wDudeNumItems
	ld a, 1
	ld [hli], a
	push hl
	ld hl, POTION
	call GetItemIDFromIndex
	pop hl
	ld [hli], a
	ld a, 1
	ld [hli], a
	ld [hl], -1
	ld hl, wDudeNumKeyItems
	xor a
	ld [hli], a
	ld [hl], -1
	ld hl, wDudeNumBalls
	ld a, 1
	ld [hli], a
	ld a, LOW(POKE_BALL)
	ld [hli], a
	ld a, 5
	ld [hli], a
	ld [hl], -1
	ret

.Dude:
	db "IVY@"

.Lorelei:
	db "PRIMA@"

.AutoInput:
	db NO_INPUT, $ff ; end

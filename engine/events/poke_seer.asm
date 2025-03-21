	const_def
	const SEER_INTRO
	const SEER_CANT_TELL
	const SEER_MET_AT
	const SEER_TIME_LEVEL
	const SEER_TRADED
	const SEER_CANCEL
	const SEER_EGG
	const SEER_LEVEL_ONLY

	const_def
	const SEERACTION_MET
	const SEERACTION_TRADED
	const SEERACTION_CANT_TELL_1
	const SEERACTION_CANT_TELL_2
	const SEERACTION_LEVEL_ONLY

PokeSeer:
	ld a, SEER_INTRO
	call PrintSeerText
	call JoyWaitAorB

	ld b, PARTY_LENGTH
	farcall SelectMonFromParty
	jr c, .cancel

	ld a, [wCurPartySpecies]
	cp EGG
	jr z, .egg

	call IsAPokemon
	ret c

	call ReadCaughtData
	jr SeerAction

.cancel
	ld a, SEER_CANCEL
	jmp PrintSeerText

.egg
	ld a, SEER_EGG
	jmp PrintSeerText

SeerAction:
	ld a, [wSeerAction]
	ld hl, SeerActions
	jmp JumpTable

SeerActions:
	dw SeerAction0
	dw SeerAction1
	dw SeerAction2
	dw SeerAction3
	dw SeerAction4

SeerAction0:
	ld a, SEER_MET_AT
	call PrintSeerText
	ld a, SEER_TIME_LEVEL
	call PrintSeerText
	jmp SeerAdvice

SeerAction1:
	call GetCaughtOT
	ld a, SEER_TRADED
	call PrintSeerText
	ld a, SEER_TIME_LEVEL
	call PrintSeerText
	jmp SeerAdvice

SeerAction2:
	ld a, SEER_CANT_TELL
	jmp PrintSeerText

SeerAction3:
	ld a, SEER_CANT_TELL
	jmp PrintSeerText

SeerAction4:
	ld a, SEER_LEVEL_ONLY
	call PrintSeerText
	jmp SeerAdvice

ReadCaughtData:
	ld a, MON_CAUGHTDATA
	call GetPartyParamLocation
	ld a, [hli]
	ld [wSeerCaughtTime], a
	ld a, [hli]
	ld [wSeerCaughtGender], a
	ld a, [hld]
	ld [wSeerCaughtLocation], a
	or [hl]
	jr nz, .ok
	dec hl
	or [hl]
	jr z, .error
.ok

	ld a, SEERACTION_TRADED
	ld [wSeerAction], a

	ld a, MON_OT_ID
	call GetPartyParamLocation
	ld a, [wPlayerID]
	cp [hl]
	jr nz, .traded

	inc hl
	ld a, [wPlayerID + 1]
	cp [hl]
	jr nz, .traded

	ld a, SEERACTION_MET
	ld [wSeerAction], a

.traded
	call GetCaughtLevel
	call GetCaughtOT
	call GetCaughtName
	call GetCaughtTime
	call GetCaughtLocation
	and a
	ret

.error
	ld a, SEERACTION_CANT_TELL_1
	ld [wSeerAction], a
	ret

GetCaughtName:
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	rst AddNTimes
	ld de, wSeerNickname
	ld bc, MON_NAME_LENGTH
	jmp CopyBytes

GetCaughtLevel:
	ld a, "@"
	ld hl, wSeerCaughtLevelString
	ld bc, 4
	rst ByteFill

	; caught level
	ld a, [wSeerCaughtLevel]
	and CAUGHT_LEVEL_MASK
	jr z, .unknown
	cp CAUGHT_EGG_LEVEL ; egg marker value
	jr nz, .print
	ld a, EGG_LEVEL ; egg hatch level

.print
	ld [wSeerCaughtLevel], a
	ld hl, wSeerCaughtLevelString
	ld de, wSeerCaughtLevel
	lb bc, PRINTNUM_LEFTALIGN | 1, 3
	jmp PrintNum

.unknown
	ld de, wSeerCaughtLevelString
	ld hl, .unknown_level
	ld bc, 4
	jmp CopyBytes

.unknown_level
	db "???@"

GetCaughtTime:
	ld a, [wSeerCaughtTime]
	and CAUGHT_TIME_MASK
	rlca
	rlca
	dec a
	maskbits NUM_DAYTIMES
	ld hl, .times
	call GetNthString
	ld d, h
	ld e, l
	ld hl, wSeerTimeOfDay
	call CopyName2
	and a
	ret

.times
	db "Morning@"
	db "Day@"
	db "Night@"
	db "Evening@"

UnknownCaughtData:
	ld hl, .unknown
	ld bc, NAME_LENGTH
	jmp CopyBytes

.unknown
	db "Unknown@"

GetCaughtLocation:
	ld a, [wSeerCaughtLocation]
	and a
	jr z, .Unknown
	cp LANDMARK_EVENT
	jr z, .event
	cp LANDMARK_GIFT
	jr z, .fail
	ld e, a
	farcall GetLandmarkName
	ld hl, wStringBuffer1
	ld de, wSeerCaughtLocationString
	ld bc, 17
	rst CopyBytes
	and a
	ret

.Unknown:
	ld de, wSeerCaughtLocationString
	jr UnknownCaughtData

.event
	ld a, SEERACTION_LEVEL_ONLY
	ld [wSeerAction], a
	scf
	ret

.fail
	ld a, SEERACTION_CANT_TELL_2
	ld [wSeerAction], a
	scf
	ret

GetCaughtOT:
	ld a, [wCurPartyMon]
	ld hl, wPartyMonOTs
	ld bc, NAME_LENGTH
	rst AddNTimes
	ld de, wSeerOT
	ld bc, NAME_LENGTH
	rst CopyBytes

; this routine is useless in Western localizations
	ld hl, .male
	ld a, [wSeerCaughtGender]
	bit 7, a
	jr z, .got_grammar
	ld hl, .female

.got_grammar
	ld de, wSeerOTGrammar
	ld a, "@"
	ld [de], a
	ret

.male
	db "@"
.female
	db "@"

PrintSeerText:
	ld e, a
	ld d, 0
	ld hl, SeerTexts
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jmp PrintText

SeerTexts:
	dw SeerSeeAllText
	dw SeerCantTellAThingText
	dw SeerNameLocationText
	dw SeerTimeLevelText
	dw SeerTradeText
	dw SeerDoNothingText
	dw SeerEggText
	dw SeerNoLocationText

SeerSeeAllText:
	text_far _SeerSeeAllText
	text_end

SeerCantTellAThingText:
	text_far _SeerCantTellAThingText
	text_end

SeerNameLocationText:
	text_far _SeerNameLocationText
	text_end

SeerTimeLevelText:
	text_far _SeerTimeLevelText
	text_end

SeerTradeText:
	text_far _SeerTradeText
	text_end

SeerNoLocationText:
	text_far _SeerNoLocationText
	text_end

SeerEggText:
	text_far _SeerEggText
	text_end

SeerDoNothingText:
	text_far _SeerDoNothingText
	text_end

SeerAdvice:
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [wSeerCaughtLevel]
	ld c, a
	ld a, [hl]
	sub c
	ld c, a

	ld hl, SeerAdviceTexts
	ld de, 3
.next
	cp [hl]
	jr c, .print
	jr z, .print
	add hl, de
	jr .next

.print
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jmp PrintText

SeerAdviceTexts:
; level, text
	dbw 9,   SeerMoreCareText
	dbw 29,  SeerMoreConfidentText
	dbw 59,  SeerMuchStrengthText
	dbw 89,  SeerMightyText
	dbw 100, SeerImpressedText
	dbw 255, SeerMoreCareText

SeerMoreCareText:
	text_far _SeerMoreCareText
	text_end

SeerMoreConfidentText:
	text_far _SeerMoreConfidentText
	text_end

SeerMuchStrengthText:
	text_far _SeerMuchStrengthText
	text_end

SeerMightyText:
	text_far _SeerMightyText
	text_end

SeerImpressedText:
	text_far _SeerImpressedText
	text_end

GetCaughtGender:
	ld hl, MON_CAUGHTLOCATION
	add hl, bc

	ld a, [hl]
	and a
	jr z, .genderless
	cp LANDMARK_EVENT
	jr z, .genderless

	ld hl, MON_CAUGHTGENDER
	add hl, bc

	ld a, [hl]
	and CAUGHT_GENDER_MASK
	jr nz, .male
	ld c, CAUGHT_BY_GIRL
	ret

.male
	ld c, CAUGHT_BY_BOY
	ret

.genderless
	ld c, CAUGHT_BY_UNKNOWN
	ret

CheckPartyFullAfterContest:
	ld a, [wContestMonSpecies]
	and a
	jmp z, .DidntCatchAnything
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	call GetBaseData
	ld hl, wPartyCount
	ld a, [hl]
	cp PARTY_LENGTH
	jmp nc, .TryAddToBox
	inc a
	ld [hl], a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wContestMonSpecies]
	ld [hli], a
	ld [wCurSpecies], a
	ld [hl], -1
	ld hl, wPartyMon1Species
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	ld hl, wContestMon
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonOTs
	call SkipNames
	ld d, h
	ld e, l
	ld hl, wPlayerName
	rst CopyBytes
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wMonOrItemNameBuffer
	ld bc, MON_NAME_LENGTH
	rst CopyBytes
	call GiveANickname_YesNo
	jr c, .Party_SkipNickname
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	xor a
	ld [wMonType], a
	ld de, wMonOrItemNameBuffer
	farcall InitNickname

.Party_SkipNickname:
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonNicknames
	call SkipNames
	ld d, h
	ld e, l
	ld hl, wMonOrItemNameBuffer
	rst CopyBytes
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1Level
	call GetPartyLocation
	ld a, [hl]
	ld [wCurPartyLevel], a
	call SetCaughtData
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1CaughtLocation
	call GetPartyLocation
	ld [hl], LANDMARK_SPECIAL
	xor a
	ld [wContestMonSpecies], a
	and a ; BUGCONTEST_CAUGHT_MON
	ld [wScriptVar], a
	ret

.TryAddToBox:
	farcall NewStorageBoxPointer
	jr c, .BoxFull
	push bc
	xor a
	ld [wCurPartyMon], a
	ld hl, wContestMon
	ld de, wBufferMon
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes
	ld hl, wPlayerName
	ld de, wBufferMonOT
	ld bc, NAME_LENGTH
	rst CopyBytes
	ld a, [wCurPartySpecies]
	ld [wBufferMonAltSpecies], a
	ld [wNamedObjectIndex], a
	call GetPokemonName
	pop bc
	ld a, b
	ld [wBufferMonBox], a
	ld a, c
	ld [wBufferMonSlot], a
	farcall UpdateStorageBoxMonFromTemp
	call GiveANickname_YesNo
	ld hl, wStringBuffer1
	jr c, .Box_SkipNickname
	ld a, BUFFERMON
	ld [wMonType], a
	ld de, wMonOrItemNameBuffer
	farcall InitNickname
	ld hl, wMonOrItemNameBuffer

.Box_SkipNickname:
	ld de, wBufferMonNickname
	ld bc, MON_NAME_LENGTH
	rst CopyBytes
	farcall UpdateStorageBoxMonFromTemp

.BoxFull:
	ld a, [wBufferMonLevel]
	ld [wCurPartyLevel], a
	call SetBoxMonCaughtData
	ld hl, wBufferMonCaughtLocation
	ld [hl], LANDMARK_SPECIAL
	farcall UpdateStorageBoxMonFromTemp
	xor a
	ld [wContestMon], a
	ld a, BUGCONTEST_BOXED_MON
	ld [wScriptVar], a
	ret

.DidntCatchAnything:
	ld a, BUGCONTEST_NO_CATCH
	ld [wScriptVar], a
	ret

GiveANickname_YesNo:
	ld hl, CaughtAskNicknameText
	call PrintText
	jmp YesNoBox

CaughtAskNicknameText:
	text_far _CaughtAskNicknameText
	text_end

SetCaughtData:
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1CaughtData
	call GetPartyLocation
SetBoxmonOrEggmonCaughtData:
	ld a, [wTimeOfDay]
	inc a
	rrca
	rrca
	and CAUGHT_TIME_MASK
	ld b, a
	ld a, [wCurItem]
	push hl
	call GetItemIndexFromID
	ld a, l
	pop hl
	inc a
	or b
	ld [hli], a
	ld a, [wPlayerGender]
	rrca ; shift bit 0 (PLAYERGENDER_FEMALE_F) to bit 7 (CAUGHT_GENDER_MASK)
	ld b, a
	ld a, [wCurPartyLevel]
	or b
	ld [hli], a
	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	cp MAP_POKECENTER_2F
	jr nz, .NotPokecenter2F
	ld a, b
	cp GROUP_POKECENTER_2F
	jr nz, .NotPokecenter2F

	ld a, [wBackupMapGroup]
	ld b, a
	ld a, [wBackupMapNumber]
	ld c, a

.NotPokecenter2F:
	call GetWorldMapLocation
	ld [hl], a
	ret

SetBoxMonCaughtData:
	ld hl, wBufferMonCaughtData
	call SetBoxmonOrEggmonCaughtData
	farjp UpdateStorageBoxMonFromTemp

SetGiftBoxMonCaughtData:
	ld hl, wBufferMonCaughtLevel
	call SetGiftMonCaughtData
	farjp UpdateStorageBoxMonFromTemp

SetGiftPartyMonCaughtData:
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1CaughtLevel
	push bc
	call GetPartyLocation
	pop bc
SetGiftMonCaughtData:
	xor a
	ld [hli], a
	ld a, LANDMARK_GIFT
	rrc b
	or b
	ld [hl], a
	ret

SetEggMonCaughtData:
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1CaughtLevel
	call GetPartyLocation
	ld a, [wCurPartyLevel]
	push af
	ld a, CAUGHT_EGG_LEVEL
	ld [wCurPartyLevel], a
	call SetBoxmonOrEggmonCaughtData
	pop af
	ld [wCurPartyLevel], a
	ret

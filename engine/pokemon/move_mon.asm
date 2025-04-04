DEF RANDY_OT_ID EQU 01001

TryAddMonToParty:
; Check if to copy wild mon or generate a new one
	; Whose is it?
	ld de, wPartyCount
	ld a, [wMonType]
	and $f
	jr z, .getpartylocation ; PARTYMON
	ld de, wOTPartyCount

.getpartylocation
	; Do we have room for it?
	ld a, [de]
	inc a
	cp PARTY_LENGTH + 1
	ret nc
	; Increase the party count
	ld [de], a
	ldh [hMoveMon], a ; HRAM backup
	add e
	ld e, a
	adc d
	sub e
	ld d, a
	; Load the species of the Pokemon into the party list.
	; The terminator is usually here, but it'll be back.
	ld a, [wCurPartySpecies]
	ld [de], a
	; Load the terminator into the next slot.
	inc de
	ld a, -1
	ld [de], a
	; Now let's load the OT name.
	ld hl, wPartyMonOTs
	ld a, [wMonType]
	and $f
	jr z, .loadOTname
	ld hl, wOTPartyMonOTs

.loadOTname
	ldh a, [hMoveMon] ; Restore index from backup
	dec a
	call SkipNames
	ld d, h
	ld e, l
	ld hl, wPlayerName
	ld bc, NAME_LENGTH
	rst CopyBytes
	; Only initialize the nickname for party mon
	ld a, [wMonType]
	and a
	jr nz, .skipnickname
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, wPartyMonNicknames
	ldh a, [hMoveMon]
	dec a
	call SkipNames
	ld d, h
	ld e, l
	ld hl, wStringBuffer1
	ld bc, MON_NAME_LENGTH
	rst CopyBytes

.skipnickname
	ld hl, wPartyMon1Species
	ld a, [wMonType]
	and $f
	jr z, .initializeStats
	ld hl, wOTPartyMon1Species

.initializeStats
	ldh a, [hMoveMon]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
GeneratePartyMonStats:
; wBattleMode specifies whether it's a wild mon or not.
; wMonType specifies whether it's an opposing mon or not.
; wCurPartySpecies/wCurPartyLevel specify the species and level.
; hl points to the wPartyMon struct to fill.

	ld e, l
	ld d, h
	push hl

	; Initialize the species
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call GetBaseData
	ld a, [wBaseSpecies]
	ld [de], a
	inc de

	; Copy the item if it's a wild mon
	ld a, [wBattleMode]
	and a
	ld a, $0 ; no-optimize a = 0
	jr z, .skipitem
	ld a, [wEnemyMonItem]
.skipitem
	ld [de], a
	inc de

	; Copy the moves if it's a wild mon
	push de
	ld h, d
	ld l, e
	ld a, [wBattleMode]
	and a
	jr z, .randomlygeneratemoves
	ld a, [wMonType]
	and a
	jr nz, .randomlygeneratemoves
	ld de, wEnemyMonMoves
rept NUM_MOVES - 1
	ld a, [de]
	inc de
	ld [hli], a
endr
	ld a, [de]
	ld [hl], a
	jr .next

.randomlygeneratemoves
	xor a
rept NUM_MOVES - 1
	ld [hli], a
endr
	ld [hl], a
	ld [wSkipMovesBeforeLevelUp], a
	predef FillMoves

.next
	pop de
rept NUM_MOVES
	inc de
endr

	; Initialize ID.
	ld a, [wPlayerID]
	ld [de], a
	inc de
	ld a, [wPlayerID + 1]
	ld [de], a
	inc de

	; Initialize Exp.
	push de
	ld a, [wCurPartyLevel]
	ld d, a
	farcall CalcExpAtLevel
	pop de
	ldh a, [hProduct + 1]
	ld [de], a
	inc de
	ldh a, [hProduct + 2]
	ld [de], a
	inc de
	ldh a, [hProduct + 3]
	ld [de], a
	inc de

	; Initialize stat experience.
	xor a
	ld b, MON_IVS - MON_EVS
.loop
	ld [de], a
	inc de
	dec b
	jr nz, .loop

	pop hl
	push hl
	ld a, [wMonType]
	and $f
	jr z, .registerpokedex

	push hl
	farcall GetTrainerIVs
	pop hl
	jr .initializeIVs

.registerpokedex
	ld a, [wCurPartySpecies]
	ld [wTempSpecies], a
	push de
	call CheckCaughtMon
	ld a, [wTempSpecies]
	call SetSeenAndCaughtMon
	pop de

	pop hl
	push hl
	ld a, [wBattleMode]
	and a
	jr nz, .copywildmonIVs

	ld bc, wTempMonIVs + 3
	call Random
	ld [bc], a
	dec bc
	call Random
	ld [bc], a
	dec bc
	call Random
	ld [bc], a
	dec bc
	call Random
	ld [bc], a
.initializeIVs
	ld a, [bc]
	ld [de], a
	inc bc
	inc de
	ld a, [bc]
	ld [de], a
	inc bc
	inc de
	ld a, [bc]
	ld [de], a
	inc bc
	inc de
	ld a, [bc]
	ld [de], a
	inc de

	; Initialize Personality
	ld a, NUM_NATURES
	call RandomRange
	and NATURE_MASK
	ld [de], a
	inc de
	inc de

	; Initialize PP.
	push hl
	push de
	inc hl
	inc hl
	call FillPP
	pop de
	pop hl
rept NUM_MOVES
	inc de
endr

	; Initialize happiness.
	ld a, BASE_HAPPINESS
	ld [de], a
	inc de

	xor a
	; PokerusStatus
	ld [de], a
	inc de
	; CaughtData/CaughtTime/CaughtBall
	ld [de], a
	inc de
	; CaughtGender/CaughtLevel
	ld [de], a
	inc de
	; CaughtLocation
	ld [de], a
	inc de

	; Initialize level.
	ld a, [wCurPartyLevel]
	ld [de], a
	inc de

	xor a
	; Status
	ld [de], a
	inc de
	; Unused
	ld [de], a
	inc de

	; Initialize HP.
	ld bc, MON_EVS - 1
	add hl, bc
	ld a, 1
	ld c, a
	ld b, FALSE
	call CalcMonStatC
	ldh a, [hProduct + 2]
	ld [de], a
	inc de
	ldh a, [hProduct + 3]
	ld [de], a
	inc de
	jr .initstats

.copywildmonIVs
	ld a, [wEnemyMonIVs]
	ld [de], a
	inc de
	ld a, [wEnemyMonIVs + 1]
	ld [de], a
	inc de
	ld a, [wEnemyMonIVs + 2]
	ld [de], a
	inc de
	ld a, [wEnemyMonIVs + 3]
	ld [de], a
	inc de

	; Copy personality
	ld a, [wEnemyMonPersonality]
	ld [de], a
	inc de
	ld a, [wEnemyMonPersonality + 1]
	ld [de], a
	inc de

	push hl
	ld hl, wEnemyMonPP
	ld b, NUM_MOVES
.wildmonpploop
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .wildmonpploop
	pop hl

	; Initialize happiness.
	ld a, BASE_HAPPINESS
	ld [de], a
	inc de

	xor a
	; PokerusStatus
	ld [de], a
	inc de
	; CaughtData/CaughtTime/CaughtBall
	ld [de], a
	inc de
	; CaughtGender/CaughtLevel
	ld [de], a
	inc de
	; CaughtLocation
	ld [de], a
	inc de

	; Initialize level.
	ld a, [wCurPartyLevel]
	ld [de], a
	inc de

	ld hl, wEnemyMonStatus
	; Copy wEnemyMonStatus
	ld a, [hli]
	ld [de], a
	inc de
	; Copy EnemyMonUnused
	ld a, [hli]
	ld [de], a
	inc de
	; Copy wEnemyMonHP
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de

.initstats
	ld a, [wBattleMode]
	dec a
	jr nz, .generatestats
	ld hl, wEnemyMonMaxHP
	ld bc, PARTYMON_STRUCT_LENGTH - MON_MAXHP
	rst CopyBytes
	pop hl
	jr .registerunowndex

.generatestats
	pop hl
	ld bc, MON_EVS - 1
	add hl, bc
	ld b, FALSE
	call CalcMonStats

.registerunowndex
	ld a, [wMonType]
	and $f
	jr nz, .done
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(UNOWN)
	if HIGH(UNOWN) == 0
		or h
	else
		jr nz, .done
		if HIGH(UNOWN) == 1
			dec h
		else
			ld a, h
			cp HIGH(UNOWN)
		endc
	endc
	jr nz, .done
	ld hl, wPartyMon1Form
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	predef GetUnownLetter
	farcall UpdateUnownDex
	ld a, [wFirstUnownSeen]
	and a
	jr nz, .done
	ld a, [wUnownLetter]
	ld [wFirstUnownSeen], a

.done
	scf ; When this function returns, the carry flag indicates success vs failure.
	ret

FillPP:
	push bc
	ld b, NUM_MOVES
.loop
	ld a, [hli]
	and a
	jr z, .next
	push hl
	push de
	push bc
	ld de, wStringBuffer1
	call GetMoveData
	pop bc
	pop de
	pop hl
	ld a, [wStringBuffer1 + MOVE_PP]

.next
	ld [de], a
	inc de
	dec b
	jr nz, .loop
	pop bc
	ret

AddTempmonToParty:
	ld hl, wPartyCount
	ld a, [hl]
	cp PARTY_LENGTH
	scf
	ret z

	inc a
	ld [hl], a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wCurPartySpecies]
	ld [hli], a
	ld [hl], $ff

	ld hl, wPartyMon1Species
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld e, l
	ld d, h
	ld hl, wTempMonSpecies
	rst CopyBytes

	ld hl, wPartyMonOTs
	ld a, [wPartyCount]
	dec a
	call SkipNames
	ld d, h
	ld e, l
	ld hl, wOTPartyMonOTs
	ld a, [wCurPartyMon]
	call SkipNames
	ld bc, NAME_LENGTH
	rst CopyBytes

	ld hl, wPartyMonNicknames
	ld a, [wPartyCount]
	dec a
	call SkipNames
	ld d, h
	ld e, l
	ld hl, wOTPartyMonNicknames
	ld a, [wCurPartyMon]
	call SkipNames
	ld bc, MON_NAME_LENGTH
	rst CopyBytes

	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	cp EGG
	jr z, .egg
	call SetSeenAndCaughtMon
	ld hl, wPartyMon1Happiness
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld [hl], BASE_HAPPINESS
.egg

	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(UNOWN)
	if HIGH(UNOWN) == 0
		or h
	else
		jr nz, .done
		if HIGH(UNOWN) == 1
			dec h
		else
			ld a, h
			cp HIGH(UNOWN)
		endc
	endc
	jr nz, .done
	ld hl, wPartyMon1Form
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	predef GetUnownLetter
	farcall UpdateUnownDex
	ld a, [wFirstUnownSeen]
	and a
	jr nz, .done
	ld a, [wUnownLetter]
	ld [wFirstUnownSeen], a
.done

	and a
	ret

RetrieveMonFromDayCareMan:
	ld a, [wBreedMon1Species]
	ld [wCurPartySpecies], a
	ld de, SFX_TRANSACTION
	call PlaySFX
	call WaitSFX
	call GetBreedMon1LevelGrowth
	ld a, b
	ld [wPrevPartyLevel], a
	ld a, e
	ld [wCurPartyLevel], a
	xor a
	ld [wPokemonWithdrawDepositParameter], a
	jr RetrieveBreedmon

RetrieveMonFromDayCareLady:
	ld a, [wBreedMon2Species]
	ld [wCurPartySpecies], a
	ld de, SFX_TRANSACTION
	call PlaySFX
	call WaitSFX
	call GetBreedMon2LevelGrowth
	ld a, b
	ld [wPrevPartyLevel], a
	ld a, e
	ld [wCurPartyLevel], a
	ld a, PC_DEPOSIT
	ld [wPokemonWithdrawDepositParameter], a
; fallthrough
RetrieveBreedmon:
	ld hl, wPartyCount
	ld a, [hl]
	cp PARTY_LENGTH
	jr nz, .room_in_party
	scf
	ret

.room_in_party
	inc a
	ld [hl], a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [wPokemonWithdrawDepositParameter]
	and a
	ld a, [wBreedMon1Species]
	ld de, wBreedMon1Nickname
	jr z, .okay
	ld a, [wBreedMon2Species]
	ld de, wBreedMon2Nickname

.okay
	ld [hli], a
	ld [wCurSpecies], a
	ld [hl], $ff
	ld hl, wPartyMonNicknames
	ld a, [wPartyCount]
	dec a
	call SkipNames
	push hl
	ld h, d
	ld l, e
	pop de
	rst CopyBytes
	push hl
	ld hl, wPartyMonOTs
	ld a, [wPartyCount]
	dec a
	call SkipNames
	ld d, h
	ld e, l
	pop hl
	rst CopyBytes
	push hl
	call GetLastPartyMon
	pop hl
	ld bc, BOXMON_STRUCT_LENGTH
	rst CopyBytes
	call GetBaseData
	call GetLastPartyMon
	ld b, d
	ld c, e
	ld hl, MON_LEVEL
	add hl, bc
	ld a, [wCurPartyLevel]
	ld [hl], a
	ld hl, MON_MAXHP
	add hl, bc
	ld d, h
	ld e, l
	ld hl, MON_EXP + 2
	add hl, bc
	push bc
	ld b, TRUE
	call CalcMonStats
	ld hl, wPartyMon1Moves
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	ld a, TRUE
	ld [wSkipMovesBeforeLevelUp], a
	predef FillMoves
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	call HealPartyMon
	ld d, MAX_LEVEL
	farcall CalcExpAtLevel
	pop bc
	ld hl, MON_EXP + 2
	add hl, bc
	ldh a, [hMultiplicand]
	ld b, a
	ldh a, [hMultiplicand + 1]
	ld c, a
	ldh a, [hMultiplicand + 2]
	ld d, a
	ld a, [hld]
	sub d
	ld a, [hld]
	sbc c
	ld a, [hl]
	sbc b
	jr c, .not_max_exp
	ld a, b
	ld [hli], a
	ld a, c
	ld [hli], a
	ld a, d
	ld [hl], a
.not_max_exp
	and a
	ret

GetLastPartyMon:
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1Species
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld d, h
	ld e, l
	ret

DepositMonWithDayCareMan:
	ld de, wBreedMon1Nickname
	call DepositBreedmon
	xor a ; REMOVE_PARTY
	ld [wPokemonWithdrawDepositParameter], a
	jmp RemoveMonFromParty

DepositMonWithDayCareLady:
	ld de, wBreedMon2Nickname
	call DepositBreedmon
	xor a ; REMOVE_PARTY
	ld [wPokemonWithdrawDepositParameter], a
	jmp RemoveMonFromParty

DepositBreedmon:
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call SkipNames
	rst CopyBytes
	ld a, [wCurPartyMon]
	ld hl, wPartyMonOTs
	call SkipNames
	rst CopyBytes
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Species
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld bc, BOXMON_STRUCT_LENGTH
	jmp CopyBytes

SendMonIntoBox:
; Sends the mon into one of Bills Boxes
; the data comes mainly from 'wEnemyMon:'
	farcall NewStorageBoxPointer
	jr nc, .not_full

	and a
	ret

.not_full
	push bc
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a

	call GetBaseData

	ld hl, wPlayerName
	ld de, wBufferMonOT
	ld bc, NAME_LENGTH
	rst CopyBytes

	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName

	ld hl, wStringBuffer1
	ld de, wBufferMonNickname
	ld bc, MON_NAME_LENGTH
	rst CopyBytes

 	ld hl, wEnemyMon
	ld de, wBufferMon
	ld bc, 1 + 1 + NUM_MOVES ; species + item + moves
	rst CopyBytes

	ld hl, wPlayerID
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	inc de
	push de
	ld a, [wCurPartyLevel]
	ld d, a
	farcall CalcExpAtLevel
	pop de
	ldh a, [hProduct + 1]
	ld [de], a
	inc de
	ldh a, [hProduct + 2]
	ld [de], a
	inc de
	ldh a, [hProduct + 3]
	ld [de], a
	inc de

	; Set all 6 Experience Values to 0
	xor a
	ld b, NUM_STATS
.loop2
	ld [de], a
	inc de
	dec b
	jr nz, .loop2

	ld hl, wEnemyMonIVs
	ld b, MON_HAPPINESS - MON_IVS ; IVs, Personality, and PP ; wEnemyMonHappiness - wEnemyMonIVs
.loop3
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .loop3

	ld a, BASE_HAPPINESS
	ld [de], a
	inc de
	xor a
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld a, [wCurPartyLevel]
	ld [de], a
	ld a, [wCurPartySpecies]
	call SetSeenAndCaughtMon
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(UNOWN)
	jr nz, .not_unown
	if HIGH(UNOWN) == 0
		or h
	elif HIGH(UNOWN) == 1
		dec h
	else
		ld a, h
		cp HIGH(UNOWN)
	endc
	jr nz, .not_unown
	ld hl, wBufferMonForm
	predef GetUnownLetter
	farcall UpdateUnownDex

.not_unown
	ld a, [wCurPartySpecies]
	ld [wBufferMonAltSpecies], a

	pop bc
	ld a, b
	ld [wBufferMonBox], a
	ld a, c
	ld [wBufferMonSlot], a
	farcall UpdateStorageBoxMonFromTemp
	scf
	ret

GiveEgg::
	ld a, [wCurPartySpecies]
	push af
	farcall GetLowestEvolutionStage
	ld a, [wCurPartySpecies]

; TryAddMonToParty sets Seen and Caught flags
; when it is successful.  This routine will make
; sure that we aren't newly setting flags.
	push af
	call CheckCaughtMon
	pop af
	push bc
	call CheckSeenMon
	push bc

	call TryAddMonToParty

; If we haven't caught this Pokemon before receiving
; the Egg, reset the flag that was just set by
; TryAddMonToParty.
	pop bc
	ld a, c
	and a
	jr nz, .skip_caught_flag
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld d, h
	ld e, l
	dec de
	push de
	ld hl, wPokedexCaught
	ld b, RESET_FLAG
	call FlagAction
	pop de

.skip_caught_flag
; If we haven't seen this Pokemon before receiving
; the Egg, reset the flag that was just set by
; TryAddMonToParty.
	pop bc
	ld a, c
	and a
	jr nz, .skip_seen_flag
	ld hl, wPokedexSeen
	ld b, RESET_FLAG
	call FlagAction

.skip_seen_flag
	pop af
	ld [wCurPartySpecies], a
	ld a, [wPartyCount]
	dec a
	ld bc, PARTYMON_STRUCT_LENGTH
	ld hl, wPartyMon1Species
	rst AddNTimes
	ld a, [wCurPartySpecies]
	ld [hl], a
	ld hl, wPartyCount
	ld a, [hl]
	ld b, 0
	ld c, a
	add hl, bc
	ld [hl], EGG
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonNicknames
	call SkipNames
	ld de, String_Egg
	call CopyName2
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1Happiness
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld a, [wDebugFlags]
	bit DEBUG_FIELD_F, a
	ld a, 1
	jr nz, .got_init_happiness
	ld a, [wBaseEggSteps]

.got_init_happiness
	ld [hl], a
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1HP
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	xor a
	ld [hli], a
	ld [hl], a
	and a
	ret

String_Egg:
	db "EGG@"

RemoveMonFromParty:
	ld hl, wPartyCount

	ld a, [hl]
	dec a
	ld [hli], a
	ld a, [wCurPartyMon]
	ld c, a
	ld b, 0
	add hl, bc
	ld e, l
	ld d, h
	inc de
.loop
	ld a, [de]
	inc de
	ld [hli], a
	inc a
	jr nz, .loop
	ld hl, wPartyMonOTs
	ld d, PARTY_LENGTH - 1

	; If this is the last mon in our party,
	; shift all the other mons up to close the gap.
	ld a, [wCurPartyMon]
	call SkipNames
	ld a, [wCurPartyMon]
	cp d
	jr nz, .delete_inside
	ld [hl], -1
	jr .finish

.delete_inside
	; Shift the OT names
	ld d, h
	ld e, l
	ld bc, MON_NAME_LENGTH
	add hl, bc
	ld bc, wPartyMonNicknames
	call CopyDataUntil
	; Shift the struct
	ld hl, wPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	rst AddNTimes
	ld d, h
	ld e, l
	ld bc, PARTYMON_STRUCT_LENGTH
	add hl, bc
	ld bc, wPartyMonOTs
	call CopyDataUntil
	; Shift the nicknames
	ld hl, wPartyMonNicknames
	ld bc, MON_NAME_LENGTH
	ld a, [wCurPartyMon]
	rst AddNTimes
	ld d, h
	ld e, l
	ld bc, MON_NAME_LENGTH
	add hl, bc
	ld bc, wPartyMonNicknamesEnd
	call CopyDataUntil
	; Mail time!
.finish
	ld a, [wLinkMode]
	and a
	ret nz
	; Shift mail
	ld a, BANK(sPartyMail)
	call OpenSRAM
	; If this is the last mon in our party, no need to shift mail.
	ld hl, wPartyCount
	ld a, [wCurPartyMon]
	cp [hl]
	ret z
	jr z, .close_sram
	; Shift our mail messages up.
	ld hl, sPartyMail
	ld bc, MAIL_STRUCT_LENGTH
	rst AddNTimes
	push hl
	add hl, bc
	pop de
	ld a, [wCurPartyMon]
	ld b, a
.loop2
	push bc
	push hl
	ld bc, MAIL_STRUCT_LENGTH
	rst CopyBytes
	pop hl
	push hl
	ld bc, MAIL_STRUCT_LENGTH
	add hl, bc
	pop de
	pop bc
	inc b
	ld a, [wPartyCount]
	cp b
	jr nz, .loop2
.close_sram
	jmp CloseSRAM

ComputeNPCTrademonStats:
	ld a, MON_LEVEL
	call GetPartyParamLocation
	ld a, [hl]
	ld [MON_LEVEL], a ; should be "ld [wCurPartyLevel], a"
	ld a, MON_SPECIES
	call GetPartyParamLocation
	ld a, [hl]
	ld [wCurSpecies], a
	call GetBaseData
	ld a, MON_MAXHP
	call GetPartyParamLocation
	ld d, h
	ld e, l
	push de
	ld a, MON_EVS - 1
	call GetPartyParamLocation
	ld b, TRUE
	call CalcMonStats
	pop de
	ld a, MON_HP
	call GetPartyParamLocation
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	ld [hl], a
	ret

CalcMonStats:
; Calculates all 6 Stats of a mon
; b: Take into account EVs if TRUE
; 'c' counts from 1-6 and points with 'wBaseStats' to the base value
; hl is the path to the EVs
; de points to where the final stats will be saved

	ld c, STAT_HP - 1 ; first stat
.loop
	inc c
	call CalcMonStatC
	ldh a, [hMultiplicand + 1]
	ld [de], a
	inc de
	ldh a, [hMultiplicand + 2]
	ld [de], a
	inc de
	ld a, c
	cp STAT_SDEF ; last stat
	jr nz, .loop
	ret

CalcMonStatC:
; 'c' is 1-6 and points to the BaseStat
; 1: HP
; 2: Attack
; 3: Defense
; 4: Speed
; 5: SpAtk
; 6: SpDef
	push hl
	push de
	push bc
	ld a, b
	ld d, a
	push hl
	ld hl, wBaseStats - 1 ; has to be decreased, because 'c' begins with 1
	ld b, 0
	add hl, bc
	ld a, [hl]
	ld e, a
	pop hl
	push hl
	ld a, d
	and a
	jr z, .no_stat_exp
	add hl, bc
	ld a, [hl]
	ld b, a
.no_stat_exp
	pop hl
	push bc
	ld bc, MON_IVS - MON_HP_EV + 1
	add hl, bc
	pop bc
	ld a, c
	cp STAT_ATK
	jr z, .Attack
	cp STAT_DEF
	jr z, .Defense
	cp STAT_SPD
	jr z, .Speed
	cp STAT_SATK
	jr z, .Special_Atk
	cp STAT_SDEF
	jr z, .Special_Def
; HP
	call GetHPIV
	jr .GotIV

.Attack:
	call GetAttackIV
	jr .GotIV

.Defense:
	call GetDefenseIV
	jr .GotIV

.Speed:
	call GetSpeedIV
	jr .GotIV

.Special_Atk:
	call GetSpecialAttackIV
	jr .GotIV

.Special_Def:
	call GetSpecialDefenseIV
; fallthrough
.GotIV:
	ld d, 0
	sla e
	rl d
	add e
	ld e, a
	adc d
	sub e
	ld d, a
	ld a, b
	srl a
	srl a
	add e
	ld e, a
	adc d
	sub e
	ld d, a
	ld a, e
	ldh [hMultiplicand + 2], a
	ld a, d
	ldh [hMultiplicand + 1], a
	xor a
	ldh [hMultiplicand + 0], a
	ld a, [wCurPartyLevel]
	ldh [hMultiplier], a
	call Multiply
	ldh a, [hProduct + 1]
	ldh [hDividend + 0], a
	ldh a, [hProduct + 2]
	ldh [hDividend + 1], a
	ldh a, [hProduct + 3]
	ldh [hDividend + 2], a
	ld a, 100
	ldh [hDivisor], a
	ld a, 3
	ld b, a
	call Divide
	ld a, c
	cp STAT_HP
	ld a, STAT_MIN_NORMAL
	jr nz, .not_hp
	ld a, [wCurPartyLevel]
	ld b, a
	ld a, [wBaseStats]
	cp 1 ; Check for Shedinja
	jr z, .set_one
	ldh a, [hQuotient + 3]
	add b
	ldh [hMultiplicand + 2], a
	jr nc, .no_overflow_3
	ldh a, [hQuotient + 2]
	inc a
	ldh [hMultiplicand + 1], a

.no_overflow_3
	ld a, STAT_MIN_HP
	jr .not_hp

.set_one
	xor a
	ldh [hMultiplicand + 2], a
	ld a, 1

.not_hp
	ld b, a
	ldh a, [hQuotient + 3]
	add b
	ldh [hMultiplicand + 2], a
	jr nc, .no_overflow_4
	ldh a, [hQuotient + 2]
	inc a
	ldh [hMultiplicand + 1], a

.no_overflow_4
	ldh a, [hQuotient + 2]
	cp HIGH(MAX_STAT_VALUE + 1) + 1
	jr nc, .max_stat
	cp HIGH(MAX_STAT_VALUE + 1)
	jr c, .stat_value_okay
	ldh a, [hQuotient + 3]
	cp LOW(MAX_STAT_VALUE + 1)
	jr c, .stat_value_okay

.max_stat
	ld a, HIGH(MAX_STAT_VALUE)
	ldh [hMultiplicand + 1], a
	ld a, LOW(MAX_STAT_VALUE)
	ldh [hMultiplicand + 2], a

.stat_value_okay
	; do natures here
	xor a
	ldh [hMultiplicand + 0], a
	push hl
	push bc
	ld bc, MON_NATURE - MON_IVS
	add hl, bc ; hl points to Nature
	ld a, [hl]
	and NATURE_MASK
	pop bc
	push bc
	call GetNatureStatMultiplier
	pop bc
	pop hl
	ldh [hMultiplier], a
	call Multiply
	ldh a, [hProduct + 1]
	ldh [hDividend + 0], a
	ldh a, [hProduct + 2]
	ldh [hDividend + 1], a
	ldh a, [hProduct + 3]
	ldh [hDividend + 2], a
	ld a, 10
	ldh [hDivisor], a
	ld a, 3
	ld b, a
	call Divide
	jmp PopBCDEHL

GetNatureStatMultiplier::
; a points to Nature
; c is 1-6 according to the stat (STAT_HP to STAT_SDEF)
; returns (sets a to) 9 if c is lowered, 11 if raised, 10 if neutral
; (to be used in calculations in CalcPkmnStatC)
	push de
	ld d, a
	ld a, c
	cp STAT_HP
	jr z, .neutral
	ld a, d
	and NATURE_MASK
	cp NO_NATURE
	jr z, .neutral
	ld d, STAT_HP
.loop
	inc d
	sub 5
	jr nc, .loop
	add 7 ; Atk-SDf is 2-6, not 0-4
	cp c
	jr z, .penalty
	ld a, d
	cp c
	jr z, .bonus
.neutral
	ld a, 10
	pop de
	ret
.bonus
	ld a, 11
	pop de
	ret
.penalty
	; Neutral natures (divisible by 6) raise and lower the same stat,
	; but +10% -10% isn't neutral (the result is 99%), so we need to
	; avoid messing with it altogether.
	cp d
	jr z, .neutral
	ld a, 9
	pop de
	ret

GivePoke::
	push de
	push bc
	xor a ; PARTYMON
	ld [wMonType], a
	call TryAddMonToParty
	jr nc, .failed
	ld hl, wPartyMonNicknames
	ld a, [wPartyCount]
	dec a
	ld [wCurPartyMon], a
	call SkipNames
	ld d, h
	ld e, l
	pop bc
	ld a, b
	ld b, 0
	push bc
	push de
	push af
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Form
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld a, [wFirstUnownSeen]
	and a
	ld a, [wCurPartyForm]
	jr nz, .skip
	ld [wFirstUnownSeen], a
.skip
	ld [hl], a

	ld a, [wCurItem]
	and a
	jr z, .done
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Item
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld a, [wCurItem]
	ld [hl], a
	jr .done

.failed
	ld a, [wCurPartySpecies]
	ld [wTempEnemyMonSpecies], a
	farcall LoadEnemyMon
	call SendMonIntoBox
	jmp nc, .FailedToGiveMon
	ld a, BOXMON
	ld [wMonType], a
	xor a
	ld [wCurPartyMon], a
	ld de, wMonOrItemNameBuffer
	pop bc
	ld a, b
	ld b, 1
	push bc
	push de
	push af
	ld a, [wCurPartyForm]
	ld [wBufferMonForm], a
	ld a, [wCurItem]
	and a
	jr z, .done
	ld a, [wCurItem]
	ld [wBufferMonItem], a
	farcall UpdateStorageBoxMonFromTemp

.done
	ld hl, POKE_BALL ; given mon's use POKE_BALL for MON_CAUGHTBALL
	call GetItemIDFromIndex
	ld [wCurItem], a
	ld a, [wCurPartySpecies]
	ld [wNamedObjectIndex], a
	ld [wTempEnemyMonSpecies], a
	call GetPokemonName
	ld hl, wStringBuffer1
	ld de, wMonOrItemNameBuffer
	ld bc, MON_NAME_LENGTH
	rst CopyBytes
	pop af
	and a
	jmp z, .wildmon
	pop de
	pop bc
	pop hl
	push bc
	push hl
	ld a, [wScriptBank]
	call GetFarWord
	ld bc, MON_NAME_LENGTH
	ld a, [wScriptBank]
	call FarCopyBytes
	pop hl
	inc hl
	inc hl
	ld a, [wScriptBank]
	call GetFarWord
	pop bc
	ld a, b
	and a
	push de
	push bc
	jr nz, .send_to_box

	push hl
	ld a, [wCurPartyMon]
	ld hl, wPartyMonOTs
	call SkipNames
	ld d, h
	ld e, l
	pop hl
.otnameloop
	ld a, [wScriptBank]
	call GetFarByte
	ld [de], a
	inc hl
	inc de
	cp "@"
	jr nz, .otnameloop
	ld a, [wScriptBank]
	call GetFarByte
	ld b, a
	push bc
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1ID
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld a, HIGH(RANDY_OT_ID)
	ld [hli], a
	ld [hl], LOW(RANDY_OT_ID)
	pop bc
	farcall SetGiftPartyMonCaughtData
	jr .skip_nickname

.send_to_box
	ld de, wBufferMonOT
.loop
	ld a, [wScriptBank]
	call GetFarByte
	ld [de], a
	inc hl
	inc de
	cp "@"
	jr nz, .loop
	ld a, [wScriptBank]
	call GetFarByte
	ld b, a
	ld hl, wBufferMonID
	call Random
	ld [hli], a
	call Random
	ld [hl], a
	farcall UpdateStorageBoxMonFromTemp
	farcall SetGiftBoxMonCaughtData
	jr .skip_nickname

.wildmon
	pop de
	pop bc
	push bc
	push de
	ld a, b
	and a
	jr z, .party
	farcall SetBoxMonCaughtData
	jr .set_caught_data

.party
	farcall SetCaughtData
.set_caught_data
	farcall GiveANickname_YesNo
	pop de
	call nc, InitNickname
; fallthrough
.skip_nickname
	pop bc
	pop de
	ld a, b
	and a
	ret z
	ld hl, WasSentToBillsPCText
	call PrintText
	ld hl, wMonOrItemNameBuffer
	ld de, wBufferMonNickname
	ld bc, MON_NAME_LENGTH
	rst CopyBytes
	farcall UpdateStorageBoxMonFromTemp
	ld b, $1
	ret

.FailedToGiveMon:
	pop bc
	pop de
	ld b, $2
	ret

WasSentToBillsPCText:
	text_far _WasSentToBillsPCText
	text_end

InitNickname:
	push de
	call LoadStandardMenuHeader
	call DisableSpriteUpdates
	pop de
	push de
	ld b, NAME_MON
	farcall NamingScreen
	pop hl
	ld de, wStringBuffer1
	call InitName
	ld a, $4 ; ExitAllMenus is in bank 0; maybe it used to be in bank 4
	ld hl, ExitAllMenus
	jmp FarCall_hl

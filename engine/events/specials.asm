Special::
; Run script special de.
	ld hl, SpecialsPointers
	add hl, de
	add hl, de
	add hl, de
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, b
	jmp FarCall_hl

INCLUDE "data/events/special_pointers.asm"

GameCornerPrizeMonCheckDex:
	ld a, [wScriptVar]
	call CheckCaughtMon
	ret nz
	ld a, [wScriptVar]
	call SetSeenAndCaughtMon
	call FadeToMenu
	ld a, [wScriptVar]
	ld [wNamedObjectIndex], a
	farcall NewPokedexEntry
	jmp ExitAllMenus

UnusedSetSeenMon:
	ld a, [wScriptVar]
	jmp SetSeenMon

FindPartyMonAboveLevel:
	ld a, [wScriptVar]
	ld b, a
	farcall _FindPartyMonAboveLevel
	jr z, FoundNone
	jr FoundOne

FindPartyMonAtLeastThatHappy:
	ld a, [wScriptVar]
	ld b, a
	farcall _FindPartyMonAtLeastThatHappy
	jr z, FoundNone
	jr FoundOne

FindPartyMonThatSpecies:
	ld a, [wScriptVar]
	ld b, a
	farcall _FindPartyMonThatSpecies
	jr z, FoundNone
	jr FoundOne

FindPartyMonThatSpeciesYourTrainerID:
	ld a, [wScriptVar]
	ld b, a
	farcall _FindPartyMonThatSpeciesYourTrainerID
	jr z, FoundNone
; fallthrough
FoundOne:
	ld a, TRUE
	ld [wScriptVar], a
	ret

FoundNone:
	xor a
	ld [wScriptVar], a
	ret

NameRival:
	ld b, NAME_RIVAL
	ld de, wRivalName
	farcall _NamingScreen
	ld hl, wRivalName
	ld de, .Indigo
	ld a, [wPlayerGender]
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .Male
	ld de, .Orange
.Male:
	jmp InitName

.Indigo:
	db "145@@@@@@@@"
.Orange:
	db "004@@@@@@@@"

NameRater:
	farjp _NameRater

OverworldTownMap:
	call FadeToMenu
	farcall _TownMap
	jmp ExitAllMenus

UnownPrinter:
	call FadeToMenu
	farcall _UnownPrinter
	jmp ExitAllMenus

DisplayLinkRecord:
	call FadeToMenu
	farcall _DisplayLinkRecord
	jmp ExitAllMenus

PlayersHousePC:
	xor a
	ld [wScriptVar], a
	farcall _PlayersHousePC
	ld a, c
	ld [wScriptVar], a
	ret

CheckMysteryGift:
	ld a, BANK(sMysteryGiftItem)
	call OpenSRAM
	ld a, [sMysteryGiftItem]
	and a
	jr z, .no
	inc a

.no
	ld [wScriptVar], a
	jmp CloseSRAM

GetMysteryGiftItem:
	ld a, BANK(sMysteryGiftItem)
	call OpenSRAM
	ld a, [sMysteryGiftItem]
	ld [wCurItem], a
	ld a, 1
	ld [wItemQuantityChange], a
	ld hl, wNumItems
	call ReceiveItem
	jr nc, .no_room
	xor a
	ld [sMysteryGiftItem], a
	call CloseSRAM
	ld a, [wCurItem]
	ld [wNamedObjectIndex], a
	call GetItemName
	ld hl, .ReceiveItemText
	call PrintText
	ld a, TRUE
	ld [wScriptVar], a
	ret

.no_room
	call CloseSRAM
	xor a
	ld [wScriptVar], a
	ret

.ReceiveItemText:
	text_far _ReceiveItemText
	text_end

BugContestJudging:
	farcall _BugContestJudging
	ld a, b
	ld [wScriptVar], a
	ret

MapRadio:
	ld a, [wScriptVar]
	ld e, a
	farjp PlayRadio

UnownPuzzle:
	call FadeToMenu
	farcall _UnownPuzzle
	ld a, [wSolvedUnownPuzzle]
	ld [wScriptVar], a
	jmp ExitAllMenus

SlotMachine:
	call CheckCoinsAndCoinCase
	ret c
	ld a, BANK(_SlotMachine)
	ld hl, _SlotMachine
	jr StartGameCornerGame

CardFlip:
	call CheckCoinsAndCoinCase
	ret c
	ld a, BANK(_CardFlip)
	ld hl, _CardFlip
	jr StartGameCornerGame

UnusedMemoryGame:
	call CheckCoinsAndCoinCase
	ret c
	ld a, BANK(_MemoryGame)
	ld hl, _MemoryGame
; fallthrough
StartGameCornerGame:
	call FarQueueScript
	call FadeToMenu
	ld hl, wQueuedScriptBank
	ld a, [hli]
	push af
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	call FarCall_hl
	jmp ExitAllMenus

CheckCoinsAndCoinCase:
	ld hl, wCoins
	ld a, [hli]
	or [hl]
	jr z, .no_coins
	ld hl, COIN_CASE
	call GetItemIDFromIndex
	ld [wCurItem], a
	ld hl, wNumItems
	call CheckItem
	jr nc, .no_coin_case
	and a
	ret

.no_coins
	ld hl, .NoCoinsText
	jr .print

.no_coin_case
	ld hl, .NoCoinCaseText

.print
	call PrintText
	scf
	ret

.NoCoinsText:
	text_far _NoCoinsText
	text_end

.NoCoinCaseText:
	text_far _NoCoinCaseText
	text_end

ClearBGPalettesBufferScreen:
	call ClearBGPalettes
	jmp BufferScreen

ScriptReturnCarry:
	jr c, .carry
	xor a
	ld [wScriptVar], a
	ret
.carry
	ld a, 1
	ld [wScriptVar], a
	ret

UnusedCheckUnusedTwoDayTimer:
	farcall CheckUnusedTwoDayTimer
	ld a, [wUnusedTwoDayTimer]
	ld [wScriptVar], a
	ret

ActivateFishingSwarm:
	ld a, [wScriptVar]
	ld [wFishingSwarmFlag], a
	jr SetSwarmFlag

StoreSwarmMapIndices::
	ld a, d
	ld [wSwarmMapGroup], a
	ld a, e
	ld [wSwarmMapNumber], a

SetSwarmFlag:
	ld hl, wSwarmFlags
	set SWARMFLAGS_SWARM_F, [hl]
	ret

CheckSwarmFlag::
	ld hl, wSwarmFlags
	bit SWARMFLAGS_SWARM_F, [hl]
	jr z, .clear_swarm
	xor a
	ld [wScriptVar], a
	ret

.clear_swarm
	ld a, 1
	ld [wScriptVar], a
	xor a
	ld [wFishingSwarmFlag], a
	ld [wSwarmMapGroup], a
	ld [wSwarmMapNumber], a
	ret

CheckPokerus:
; Check if a monster in your party has Pokerus
	farcall _CheckPokerus
	jr ScriptReturnCarry

ResetLuckyNumberShowFlag:
	farcall RestartLuckyNumberCountdown
	ld hl, wLuckyNumberShowFlag
	res LUCKYNUMBERSHOW_GAME_OVER_F, [hl]
	farjp LoadOrRegenerateLuckyIDNumber

CheckLuckyNumberShowFlag:
	farcall _CheckLuckyNumberShowFlag
	jr ScriptReturnCarry

SnorlaxAwake:
; Check if the Poké Flute channel is playing, and if the player is standing
; next to Snorlax.

; outputs:
; wScriptVar is 1 if the conditions are met, otherwise 0.

; check background music
	ld a, [wMapMusic]
	cp MUSIC_POKE_FLUTE_CHANNEL
	jr nz, .nope

	ld a, [wXCoord]
	ld b, a
	ld a, [wYCoord]
	ld c, a

	ld hl, .ProximityCoords
.loop
	ld a, [hli]
	cp -1
	jr z, .nope
	cp b
	jr nz, .nextcoord
	ld a, [hli]
	cp c
	jr nz, .loop

	ld a, TRUE
	jr .done

.nextcoord
	inc hl
	jr .loop

.nope
	xor a
.done
	ld [wScriptVar], a
	ret

.ProximityCoords:
	;   x,  y
	db 33,  8 ; left
	db 34, 10 ; below
	db 35, 10 ; below
	db 36,  8 ; right
	db 36,  9 ; right
	db -1

PlayCurMonCry:
	ld a, [wCurPartySpecies]
	jmp PlayMonCry

GameboyCheck:
	ldh a, [hCGB]
	and a
	jr nz, .cgb
	ldh a, [hSGB]
	and a
	jr nz, .sgb
; gb
	xor a ; GBCHECK_GB
	jr .done

.sgb
	ld a, GBCHECK_SGB
	jr .done

.cgb
	ld a, GBCHECK_CGB
.done
	ld [wScriptVar], a
	ret

FadeOutMusic:
	ld a, LOW(MUSIC_NONE)
	ld [wMusicFadeID], a
	ld a, HIGH(MUSIC_NONE)
	ld [wMusicFadeID + 1], a
	ld a, $2
	ld [wMusicFade], a
	ret

Diploma:
	call FadeToMenu
	farcall _Diploma
	jmp ExitAllMenus

PrintDiploma:
	call FadeToMenu
	farcall _PrintDiploma
	jmp ExitAllMenus

TrainerHouse:
	ld a, BANK(sMysteryGiftTrainerHouseFlag)
	call OpenSRAM
	ld a, [sMysteryGiftTrainerHouseFlag]
	ld [wScriptVar], a
	jmp CloseSRAM
	
ClockResetter:
	farcall RestartClock
	ret

GetGemManiacPrice:
	ld hl, GemManiacItemRewards
	jmp GetItemManiacPrice

GetRuinManiacPrice:
	ld hl, RuinManiacItemRewards
        jmp GetItemManiacPrice

GetGourmetManiacPrice:
	ld hl, GourmetManiacItemRewards
	; fallthrough
GetItemManiacPrice:
	push hl
	xor a ; FALSE
	ld [wScriptVar], a
	ld a, [wCurItem]
	call GetItemIndexFromID
	ld d, h
	ld e, l
	pop hl
.loop
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, b
	cp $ff
	jr nz, .check_match
	ld a, c
	cp $ff
	ret z
.check_match
	ld a, d
	cp c
	jr nz, .skip_price
	ld a, e
	cp b
	jr nz, .skip_price
	ld a, [hli]
	ldh [hMoneyTemp + 2], a
	ld a, [hli]
	ldh [hMoneyTemp + 1], a
	xor a
	ldh [hMoneyTemp], a
	ld a, TRUE
	ld [wScriptVar], a
	ret

.skip_price
	inc hl
	inc hl
	jr .loop

GemManiacItemRewards:
	dw PEARL,         2000
	dw BIG_PEARL,      8000
	dw PEARL_STRING,  16000
	dw STARDUST,       3000
	dw STAR_PIECE,    12000
	dw NUGGET,        10000
	dw BIG_NUGGET,    20000
	dw RARE_BONE,      7500
	dw COMET_SHARD,    9000
	dw HUGE_CRYSTAL,  25000
	dw LARGE_JADE,    14000
	dw BIG_EMERALD,   15000
	dw GIANT_RUBY,    16000
	dw BIG_SAPPHIRE,  16000
	dw BIG_AMETHYST,  15000
	dw HUGE_TOPAZ,    15000
	dw LARGE_GARNET,  14000
	dw GIANT_ONYX,    14000
	dw HUGE_DIAMOND,  30000
	dw -1

RuinManiacItemRewards:
	dw RARE_BONE,     12000
	dw ANCIENT_VASE,  20000
	dw ANCIENT_CUP,   18000
	dw ANCIENT_JAR,   16000
	dw BLUE_SHARD,     5000
	dw GREEN_SHARD,    5000
	dw RED_SHARD,      5000
	dw YELLOW_SHARD,   5000
	dw CLAY_SHARD,     6000
	dw STARDUST,       5000
	dw STAR_PIECE,    15000
	dw COMET_SHARD,   20000
	dw -1

GourmetManiacItemRewards:
	dw TINYMUSHROOM,   500
	dw BIG_MUSHROOM,  2500
	dw BALMMUSHROOM,  8000
	dw CANDYTRUFFLE, 12000
	dw HONEY,          800
	dw SWEET_HONEY,   1500
	dw TINY_BAMBOO,   1000
	dw BIG_BAMBOO,    3000
	dw SILVER_LEAF,  1000
	dw GOLD_LEAF,     5000
	dw -1

Give_hMoneyTemp:
	ld de, wMoney
	ld bc, hMoneyTemp
	farjp GiveMoney


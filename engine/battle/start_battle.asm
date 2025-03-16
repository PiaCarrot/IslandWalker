ShowLinkBattleParticipants:
; If we're not in a communications room,
; we don't need to be here.
	ld a, [wLinkMode]
	and a
	ret z

	call _ShowLinkBattleParticipants
	ld c, 150
	call DelayFrames
	call ClearTilemap
	jmp ClearSprites

FindFirstAliveMonAndStartBattle:
	xor a
	ldh [hMapAnims], a
	call DelayFrame
	predef DoBattleTransition
	farcall _LoadBattleFontsHPBar
	ld a, 1
	ldh [hBGMapMode], a
	call ClearSprites
	call ClearTilemap
	xor a
	ldh [hBGMapMode], a
	ldh [hWY], a
	ldh [rWY], a
	ldh [hMapAnims], a
	ret

PlayBattleMusic:
	push hl
	push de
	push bc

	xor a
	ld [wMusicFade], a
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	call MaxVolume

	ld a, [wBattleType]
	cp BATTLETYPE_SUICUNE
	ld de, MUSIC_SUICUNE_BATTLE
	jmp z, .done
	cp BATTLETYPE_ROAMING
	jmp z, .done

	; Are we fighting a trainer?
	ld a, [wOtherTrainerClass]
	and a
	jr nz, .trainermusic

	farcall RegionCheck
	ld a, e
	and a
	jr nz, .kantowild

	ld de, MUSIC_ORANGEWILD
	ld a, [wTimeOfDay]
	cp NITE_F
	jp c, .done ; not NITE_F or EVE_F
	ld de, MUSIC_ORANGEWILD_NIGHT
	jp .done

.kantowild
	ld de, MUSIC_KANTO_WILD_BATTLE
	jp .done

.trainermusic
	ld de, MUSIC_CHAMPION_BATTLE
	cp CHAMPION
	jp z, .done
	cp RED
	jp z, .done

	ld de, MUSIC_DRAKE_BATTLE
	cp DRAKE
	jp z, .done

	ld de, MUSIC_ROCKET_BOSS_BATTLE
	cp MAYOR
	jr z, .done

	ld de, MUSIC_TRACEY_BATTLE
	cp TRACEY1
	jr z, .done

	ld de, MUSIC_SIRD_BATTLE
	cp LAWRENCE
	jr z, .done

	ld de, MUSIC_SEVII_BATTLE
	cp GREEN
	jr z, .done
	cp YELLOW
	jr z, .done
	cp LORELEI1
	jr z, .done
	cp LORELEI2
	jr z, .done

	ld de, MUSIC_BLUE_BATTLE
	cp BLUE
	jr z, .done

	ld de, MUSIC_IMAKUNI_THEME
	cp IMAKUNI
	jr z, .done
	cp IMAKUNINEO
	jr z, .done
	cp IMAKUNI_SLOW
	jr z, .done

	ld de, MUSIC_KANTO_GYM_LEADER_BATTLE
	farcall IsKantoGymLeader
	jr c, .done

	; IsGymLeader also counts CHAMPION, RED, and the Kanto gym leaders
	; but they have been taken care of before this
	ld de, MUSIC_ORANGE_ISLANDS_GYM_BATTLE
	farcall IsGymLeader
	jr c, .done

	ld de, MUSIC_ROCKET_BATTLE
	farcall IsTeamRocket
	jr c, .done

	ld de, MUSIC_CROSS_BATTLE
	ld a, [wOtherTrainerClass]
	cp CROSS1
	jr z, .done
	cp RIVAL2
	jr nz, .othertrainer

	; ld a, [wOtherTrainerID]
	; cp RIVAL2_2_CHIKORITA ; Rival in Indigo Plateau
	; jr c, .done
	; ld de, MUSIC_CHAMPION_BATTLE
	; jr .done

.othertrainer
	ld a, [wLinkMode]
	and a
	jr nz, .johtotrainer

	farcall RegionCheck
	ld a, e
	and a
	jr nz, .kantotrainer

.johtotrainer
	ld de, MUSIC_ORANGE_TRAINER_BATTLE
	jr .done

.kantotrainer
	ld de, MUSIC_KANTO_TRAINER_BATTLE

.done
	call PlayMusic

	jmp PopBCDEHL

ClearBattleRAM:
	xor a
	ld [wBattlePlayerAction], a
	ld [wBattleResult], a

	ld hl, wPartyMenuCursor
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld [wMenuScrollPosition], a
	ld [wCriticalHit], a
	ld [wBattleMonSpecies], a
	ld [wBattleParticipantsNotFainted], a
	ld [wCurBattleMon], a
	ld [wForcedSwitch], a
	ld [wTimeOfDayPal], a
	ld [wPlayerTurnsTaken], a
	ld [wEnemyTurnsTaken], a
	ld [wEvolvableFlags], a

	ld hl, wPlayerHPPal
	ld [hli], a
	ld [hl], a

	ld hl, wBattleMonIVs
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld hl, wEnemyMonIVs
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

; Clear the entire BattleMons area
	ld hl, wBattle
	ld bc, wBattleEnd - wBattle
	xor a
	rst ByteFill

	farcall ResetEnemyStatLevels

	call ClearWindowData

	ld hl, hBGMapAddress
	xor a ; LOW(vBGMap0)
	ld [hli], a
	ld [hl], HIGH(vBGMap0)
	ret

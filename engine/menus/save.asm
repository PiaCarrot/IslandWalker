SaveMenu:
	call LoadStandardMenuHeader
	farcall DisplaySaveInfoOnSave
	call SpeechTextbox
	call UpdateSprites
	farcall SaveMenu_CopyTilemapAtOnce
	ld hl, WouldYouLikeToSaveTheGameText
	call SaveTheGame_yesorno
	jr nz, .refused
	call AskOverwriteSaveFile
	jr c, .refused
	call PauseGameLogic
	call SavedTheGame
	call ResumeGameLogic
	call ExitMenu
	and a
	ret

.refused
	call ExitMenu
	farcall SaveMenu_CopyTilemapAtOnce
	scf
	ret

SaveAfterLinkTrade:
	call PauseGameLogic
	call StageRTCTimeForSave
	farcall BackupMysteryGift
	call SavePokemonData
	call SaveIndexTables
	call SaveChecksum
	call SaveBackupPokemonData
	call SaveBackupIndexTables
	call SaveBackupChecksum
	farcall BackupPartyMonMail
	call SaveRTC
	jr ResumeGameLogic

Link_SaveGame:
	call AskOverwriteSaveFile
	ret c
ForceGameSave:
	call PauseGameLogic
	call SavedTheGame
	call ResumeGameLogic
	and a
	ret

PauseGameLogic:
	ld a, TRUE
	ld [wGameLogicPaused], a
	ret

ResumeGameLogic:
	xor a ; FALSE
	ld [wGameLogicPaused], a
	ret

AddHallOfFameEntry:
	ld a, BANK(sHallOfFame)
	call OpenSRAM
	ld hl, sHallOfFame + HOF_LENGTH * (NUM_HOF_TEAMS - 1) - 1
	ld de, sHallOfFame + HOF_LENGTH * NUM_HOF_TEAMS - 1
	ld bc, HOF_LENGTH * (NUM_HOF_TEAMS - 1)
.loop
	ld a, [hld]
	ld [de], a
	dec de
	dec bc
	ld a, c
	or b
	jr nz, .loop
	ld hl, wHallOfFamePokemonList
	ld de, sHallOfFame
	ld bc, HOF_LENGTH
	rst CopyBytes
	jmp CloseSRAM

AskOverwriteSaveFile:
	ld a, [wSaveFileExists]
	and a
	jr z, .erase
	call CompareLoadedAndSavedPlayerID
	ret z
	ld hl, AnotherSaveFileText
	call SaveTheGame_yesorno
	jr nz, .refused

.erase
	call ErasePreviousSave
	and a
	ret

.refused
	scf
	ret

SaveTheGame_yesorno:
	ld b, BANK(WouldYouLikeToSaveTheGameText)
	call MapTextbox
	call LoadMenuTextbox
	lb bc, 0, 7
	call PlaceYesNoBox
	ld a, [wMenuCursorY]
	dec a
	call CloseWindow
	and a
	ret

CompareLoadedAndSavedPlayerID:
	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, sPlayerData + (wPlayerID - wPlayerData)
	ld a, [hli]
	ld b, a
	ld c, [hl]
	call CloseSRAM
	ld a, [wPlayerID]
	cp b
	ret nz
	ld a, [wPlayerID + 1]
	cp c
	ret

SavedTheGame:
	ld hl, wOptions
	set NO_TEXT_SCROLL, [hl]
	push hl
	ld hl, .saving_text
	call PrintText
	pop hl
	res NO_TEXT_SCROLL, [hl]
	call SaveGameData
	; <PLAYER> saved the game!
	ld hl, SavedTheGameText
	call PrintText
	ld de, SFX_SAVE
	call WaitPlaySFX
	jmp WaitSFX

.saving_text
	text "Saving…"
	done

SaveGameData:
	ld a, TRUE
	ld [wSaveFileExists], a
	call StageRTCTimeForSave
	call ValidateSave
	call SaveOptions
	call SavePlayerData
	call SavePokemonData
	call SaveIndexTables
	call SaveBackupIndexTables
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	ld a, [sBattleTowerChallengeState]
	cp BATTLETOWER_RECEIVED_REWARD
	jr nz, .ok
	xor a
	ld [sBattleTowerChallengeState], a
.ok
	call CloseSRAM

	; At this point, there is no longer any harm in setting this. We can't set
	; it earlier, because it might confuse the load routine into using bad
	; box/mail data, and we can't set it later because we need to set it
	; before our main save copy is valid.
	ld a, 1
	call SetSavePhase

	call SaveChecksum
	call WriteBackupSave
	call SaveRTC
	jmp CloseSRAM ; just in case

WriteBackupSave:
; Runs after saving the main copy. Writes the "pseudo-WRAM" copies of storage
; and mail, then creates the backup save. This process is automatically run
; on game load if we have a valid main save but not a backup save.
	; Save storage, mail, mobile event and mystery gift to backup
	farcall BackupPartyMonMail
	farcall BackupGSBallFlag
	farcall BackupMysteryGift
	call SaveStorageSystem

	; Save the backup copy of game data.
	call ValidateBackupSave
	call SaveBackupOptions
	call SaveBackupPlayerData
	call SaveBackupPokemonData
	call SaveBackupChecksum

	; Finished saving.
	xor a
	call SetSavePhase
	jmp CloseSRAM

LoadStorageSystem:
; Copy backup storage system to active.
	ld hl, sBackupNewBox1
	ld de, sNewBox1
	call CopyStorageSystem

	; Initialize allocation information.
	farjp FlushStorageSystem

SaveStorageSystem:
; Copy active storage system to backup.
	ld hl, sNewBox1
	ld de, sBackupNewBox1
	; fallthrough
CopyStorageSystem:
	ld a, BANK(sNewBox1)
	call OpenSRAM
	ld bc, sNewBoxEnd - sNewBox1
	rst CopyBytes
	jmp CloseSRAM

UpdateStackTop:
; sStackTop appears to be unused.
; It could have been used to debug stack overflow during saving.
	call FindStackTop
	ld a, BANK(sStackTop)
	call OpenSRAM
	ld a, [sStackTop + 0]
	ld e, a
	ld a, [sStackTop + 1]
	ld d, a
	or e
	jr z, .update
	ld a, e
	sub l
	ld a, d
	sbc h
	jr c, .done

.update
	ld a, l
	ld [sStackTop + 0], a
	ld a, h
	ld [sStackTop + 1], a

.done
	jmp CloseSRAM

FindStackTop:
; Find the furthest point that sp has traversed to.
; This is distinct from the current value of sp.
	ld hl, wStackBottom
.loop
	ld a, [hl]
	or a
	ret nz
	inc hl
	jr .loop

ErasePreviousSave:
	call EraseHallOfFame
	call EraseLinkBattleStats
	call EraseMysteryGift
	call SaveData
	call EraseBattleTowerStatus
	ld a, BANK(sStackTop)
	call OpenSRAM
	xor a
	ld [sStackTop + 0], a
	ld [sStackTop + 1], a
	call CloseSRAM
	ld a, $1
	ld [wSavedAtLeastOnce], a
	ret

EraseLinkBattleStats:
	ld a, BANK(sLinkBattleStats)
	call OpenSRAM
	ld hl, sLinkBattleStats
	ld bc, sLinkBattleStatsEnd - sLinkBattleStats
	xor a
	rst ByteFill
	jmp CloseSRAM

EraseMysteryGift:
	ld a, BANK(sBackupMysteryGiftItem)
	call OpenSRAM
	ld hl, sBackupMysteryGiftItem
	ld bc, sBackupMysteryGiftItemEnd - sBackupMysteryGiftItem
	xor a
	rst ByteFill
	jmp CloseSRAM

EraseHallOfFame:
	ld a, BANK(sHallOfFame)
	call OpenSRAM
	ld hl, sHallOfFame
	ld bc, sHallOfFameEnd - sHallOfFame
	xor a
	rst ByteFill
	jmp CloseSRAM

.Data:
; introduction
	db $0d, EZCHAT_GREETINGS,    $00, EZCHAT_EXCLAMATIONS, $00, EZCHAT_POKEMON
	db $22, EZCHAT_GREETINGS,    $01, EZCHAT_EXCLAMATIONS, $00, EZCHAT_POKEMON
; begin battle
	db $03, EZCHAT_BATTLE,       $05, EZCHAT_CONDITIONS,   $03, EZCHAT_EXCLAMATIONS
	db $0e, EZCHAT_CONVERSATION, $03, EZCHAT_GREETINGS,    $00, EZCHAT_POKEMON
; win battle
	db $39, EZCHAT_FEELINGS,     $07, EZCHAT_BATTLE,       $00, EZCHAT_EXCLAMATIONS
	db $04, EZCHAT_FEELINGS,     $01, EZCHAT_EXCLAMATIONS, $00, EZCHAT_POKEMON
; lose battle
	db $0f, EZCHAT_EXCLAMATIONS, $14, EZCHAT_FEELINGS,     $05, EZCHAT_EXCLAMATIONS
	db $11, EZCHAT_TIME,         $0c, EZCHAT_CONVERSATION, $06, EZCHAT_BATTLE

EraseBattleTowerStatus:
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	xor a
	ld [sBattleTowerChallengeState], a
	jmp CloseSRAM

SaveData:
	jmp _SaveData

HallOfFame_InitSaveIfNeeded:
	ld a, [wSavedAtLeastOnce]
	and a
	ret nz
	jmp ErasePreviousSave

ValidateSave:
	ld a, BANK(sCheckValue1) ; aka BANK(sCheckValue2)
	call OpenSRAM
	ld a, SAVE_CHECK_VALUE_1
	ld [sCheckValue1], a
	ld a, SAVE_CHECK_VALUE_2
	ld [sCheckValue2], a
	jmp CloseSRAM

SaveOptions:
	ld a, BANK(sOptions)
	call OpenSRAM
	ld hl, wOptions
	ld de, sOptions
	ld bc, wOptionsEnd - wOptions
	rst CopyBytes
	ld a, [wOptions]
	and ~(1 << NO_TEXT_SCROLL)
	ld [sOptions], a
	jmp CloseSRAM

SavePlayerData:
	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, wPlayerData
	ld de, sPlayerData
	ld bc, wPlayerDataEnd - wPlayerData
	rst CopyBytes
	ld hl, wCurMapData
	ld de, sCurMapData
	ld bc, wCurMapDataEnd - wCurMapData
	rst CopyBytes
	jmp CloseSRAM

SavePokemonData:
	ld a, BANK(sPokemonData)
	call OpenSRAM
	ld hl, wPokemonData
	ld de, sPokemonData
	ld bc, wPokemonDataEnd - wPokemonData
	rst CopyBytes
	jmp CloseSRAM

SaveIndexTables:
	; saving is already a long operation, so take the chance to GC the table
	farcall ForceGarbageCollection
	ldh a, [rSVBK]
	push af
	ld a, BANK("16-bit WRAM tables")
	ldh [rSVBK], a
	ld a, BANK(sPokemonIndexTable)
	call OpenSRAM
	ld hl, wPokemonIndexTable
	ld de, sPokemonIndexTable
	ld bc, wPokemonIndexTableEnd - wPokemonIndexTable
	rst CopyBytes
	ld hl, wItemIndexTable
	ld de, sItemIndexTable
	ld bc, wItemIndexTableEnd - wItemIndexTable
	rst CopyBytes
	ld a, BANK(sMoveIndexTable)
	call OpenSRAM
	ld hl, wMoveIndexTable
	ld de, sMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	jmp CloseSRAM

SaveChecksum:
	ld a, BANK(sMoveIndexTable)
	call OpenSRAM
	ld hl, sMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call Checksum
	ld a, BANK(sSaveData)
	call OpenSRAM
	ld hl, sConversionTableChecksum
	ld a, e
	ld [hli], a
	ld [hl], d
	ld hl, sSaveData
	ld bc, sSaveDataEnd - sSaveData
	call Checksum
	ld a, e
	ld [sChecksum + 0], a
	ld a, d
	ld [sChecksum + 1], a
	jmp CloseSRAM

ValidateBackupSave:
	ld a, BANK(sBackupCheckValue1) ; aka BANK(sBackupCheckValue2)
	call OpenSRAM
	ld a, SAVE_CHECK_VALUE_1
	ld [sBackupCheckValue1], a
	ld a, SAVE_CHECK_VALUE_2
	ld [sBackupCheckValue2], a
	jmp CloseSRAM

SaveBackupOptions:
	ld a, BANK(sBackupOptions)
	call OpenSRAM
	ld hl, wOptions
	ld de, sBackupOptions
	ld bc, wOptionsEnd - wOptions
	rst CopyBytes
	jmp CloseSRAM

SaveBackupPlayerData:
	ld a, BANK(sBackupPlayerData)
	call OpenSRAM
	ld hl, wPlayerData
	ld de, sBackupPlayerData
	ld bc, wPlayerDataEnd - wPlayerData
	rst CopyBytes
	ld hl, wCurMapData
	ld de, sBackupCurMapData
	ld bc, wCurMapDataEnd - wCurMapData
	rst CopyBytes
	jmp CloseSRAM

SaveBackupPokemonData:
	ld a, BANK(sBackupPokemonData)
	call OpenSRAM
	ld hl, wPokemonData
	ld de, sBackupPokemonData
	ld bc, wPokemonDataEnd - wPokemonData
	rst CopyBytes
	jmp CloseSRAM

SaveBackupIndexTables:
	ld a, BANK(sBackupPokemonIndexTable)
	call OpenSRAM
	ldh a, [rSVBK]
	push af
	ld a, BANK("16-bit WRAM tables")
	ldh [rSVBK], a
	ld hl, wPokemonIndexTable
	ld de, sBackupPokemonIndexTable
	ld bc, wPokemonIndexTableEnd - wPokemonIndexTable
	rst CopyBytes
	ld hl, wItemIndexTable
	ld de, sBackupItemIndexTable
	ld bc, wItemIndexTableEnd - wItemIndexTable
	rst CopyBytes
	ld a, BANK(sBackupMoveIndexTable)
	call OpenSRAM
	ld hl, wMoveIndexTable
	ld de, sBackupMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	jmp CloseSRAM

SaveBackupChecksum:
	ld a, BANK(sBackupMoveIndexTable)
	call OpenSRAM
	ld hl, sBackupMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call Checksum
	ld a, BANK(sBackupSaveData)
	call OpenSRAM
	ld hl, sBackupConversionTableChecksum
	ld a, e
	ld [hli], a
	ld [hl], d
	ld hl, sBackupSaveData
	ld bc, sBackupSaveDataEnd - sBackupSaveData
	call Checksum
	ld a, e
	ld [sBackupChecksum + 0], a
	ld a, d
	ld [sBackupChecksum + 1], a
	jmp CloseSRAM

WasMidSaveAborted:
; Returns z if the system was reset mid-saving.
	ld a, BANK(sWritingBackup)
	call OpenSRAM
	ld a, [sWritingBackup]
	dec a
	jmp CloseSRAM

SetSavePhase:
; set current save phase: 1 (saving), 0 (not saving).
	push af
	ld a, BANK(sWritingBackup)
	call OpenSRAM
	pop af
	ld [sWritingBackup], a
	jmp CloseSRAM

TryLoadSaveFile:
	call VerifyChecksum
	jr nz, .backup
	call LoadPlayerData
	call LoadPokemonData
	call LoadIndexTables
	call SaveBackupIndexTables
	; If a mid-save was aborted but main save data is good, finish it.
	call WasMidSaveAborted
	call z, WriteBackupSave
	farcall RestorePartyMonMail
	farcall RestoreGSBallFlag
	farcall RestoreMysteryGift
	call LoadStorageSystem

	; Just in case
	call WriteBackupSave
	and a
	ret

.backup
	call VerifyBackupChecksum
	jr nz, .corrupt
	call LoadBackupPlayerData
	call LoadBackupPokemonData
	call LoadBackupIndexTables
	farcall RestorePartyMonMail
	farcall RestoreGSBallFlag
	farcall RestoreMysteryGift
	call LoadStorageSystem
	call SaveGameData
	and a
	ret

.corrupt
	ld a, [wOptions]
	push af
	set NO_TEXT_SCROLL, a
	ld [wOptions], a
	ld hl, SaveFileCorruptedText
	call PrintText
	pop af
	ld [wOptions], a
	scf
	ret

TryLoadSaveData:
	xor a ; FALSE
	ld [wSaveFileExists], a
	call CheckPrimarySaveFile
	ld a, [wSaveFileExists]
	and a
	jr z, .backup

	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, sPlayerData + wStartDay - wPlayerData
	ld de, wStartDay
	ld bc, 8
	rst CopyBytes
	ld hl, sPlayerData + wStatusFlags - wPlayerData
	ld de, wStatusFlags
	ld a, [hl]
	ld [de], a
	jmp CloseSRAM

.backup
	call CheckBackupSaveFile
	ld a, [wSaveFileExists]
	and a
	jr z, .corrupt

	ld a, BANK(sBackupPlayerData)
	call OpenSRAM
	ld hl, sBackupPlayerData + wStartDay - wPlayerData
	ld de, wStartDay
	ld bc, 8
	rst CopyBytes
	ld hl, sBackupPlayerData + wStatusFlags - wPlayerData
	ld de, wStatusFlags
	ld a, [hl]
	ld [de], a
	jmp CloseSRAM

.corrupt
	ld hl, DefaultOptions
	ld de, wOptions
	ld bc, wOptionsEnd - wOptions
	rst CopyBytes
	jmp ClearClock

INCLUDE "data/default_options.asm"

CheckPrimarySaveFile:
	ld a, BANK(sCheckValue1) ; aka BANK(sCheckValue2)
	call OpenSRAM
	ld a, [sCheckValue1]
	cp SAVE_CHECK_VALUE_1
	jr nz, .nope
	ld a, [sCheckValue2]
	cp SAVE_CHECK_VALUE_2
	jr nz, .nope
	ld hl, sOptions
	ld de, wOptions
	ld bc, wOptionsEnd - wOptions
	rst CopyBytes
	call CloseSRAM
	ld a, TRUE
	ld [wSaveFileExists], a

.nope
	jmp CloseSRAM

CheckBackupSaveFile:
	ld a, BANK(sBackupCheckValue1) ; aka BANK(sBackupCheckValue2)
	call OpenSRAM
	ld a, [sBackupCheckValue1]
	cp SAVE_CHECK_VALUE_1
	jr nz, .nope
	ld a, [sBackupCheckValue2]
	cp SAVE_CHECK_VALUE_2
	jr nz, .nope
	ld hl, sBackupOptions
	ld de, wOptions
	ld bc, wOptionsEnd - wOptions
	rst CopyBytes
	ld a, $2
	ld [wSaveFileExists], a

.nope
	jmp CloseSRAM

LoadPlayerData:
	ld a, BANK(sPlayerData)
	call OpenSRAM
	ld hl, sPlayerData
	ld de, wPlayerData
	ld bc, wPlayerDataEnd - wPlayerData
	rst CopyBytes
	ld hl, sCurMapData
	ld de, wCurMapData
	ld bc, wCurMapDataEnd - wCurMapData
	rst CopyBytes
	call CloseSRAM
	ld a, BANK(sBattleTowerChallengeState)
	call OpenSRAM
	ld a, [sBattleTowerChallengeState]
	cp BATTLETOWER_RECEIVED_REWARD
	jr nz, .not_4
	ld a, BATTLETOWER_WON_CHALLENGE
	ld [sBattleTowerChallengeState], a
.not_4
	jmp CloseSRAM

LoadPokemonData:
	ld a, BANK(sPokemonData)
	call OpenSRAM
	ld hl, sPokemonData
	ld de, wPokemonData
	ld bc, wPokemonDataEnd - wPokemonData
	rst CopyBytes
	jmp CloseSRAM

LoadIndexTables:
	ldh a, [rSVBK]
	push af
	ld a, BANK("16-bit WRAM tables")
	ldh [rSVBK], a
	ld a, BANK(sPokemonIndexTable)
	call OpenSRAM
	ld hl, sPokemonIndexTable
	ld de, wPokemonIndexTable
	ld bc, wPokemonIndexTableEnd - wPokemonIndexTable
	rst CopyBytes
	ld hl, sItemIndexTable
	ld de, wItemIndexTable
	ld bc, wItemIndexTableEnd - wItemIndexTable
	rst CopyBytes
	ld a, BANK(sMoveIndexTable)
	call OpenSRAM
	ld hl, sMoveIndexTable
	ld de, wMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	jmp CloseSRAM

VerifyChecksum:
	ld hl, sSaveData
	ld bc, sSaveDataEnd - sSaveData
	ld a, BANK(sSaveData)
	call OpenSRAM
	call Checksum
	ld a, [sChecksum + 0]
	cp e
	jr nz, .fail
	ld a, [sChecksum + 1]
	cp d
	jr nz, .fail
	ld hl, sConversionTableChecksum
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl
	ld a, BANK(sMoveIndexTable)
	call OpenSRAM
	ld hl, sMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call Checksum
	pop hl
	ld a, d
	cp h
	jr nz, .fail
	ld a, e
	cp l
.fail
	push af
	call CloseSRAM
	pop af
	ret

LoadBackupPlayerData:
	ld a, BANK(sBackupPlayerData)
	call OpenSRAM
	ld hl, sBackupPlayerData
	ld de, wPlayerData
	ld bc, wPlayerDataEnd - wPlayerData
	rst CopyBytes
	ld hl, sBackupCurMapData
	ld de, wCurMapData
	ld bc, wCurMapDataEnd - wCurMapData
	rst CopyBytes
	jmp CloseSRAM

LoadBackupPokemonData:
	ld a, BANK(sBackupPokemonData)
	call OpenSRAM
	ld hl, sBackupPokemonData
	ld de, wPokemonData
	ld bc, wPokemonDataEnd - wPokemonData
	rst CopyBytes
	jmp CloseSRAM

LoadBackupIndexTables:
	ldh a, [rSVBK]
	push af
	ld a, BANK("16-bit WRAM tables")
	ldh [rSVBK], a
	ld a, BANK(sBackupPokemonIndexTable)
	call OpenSRAM
	ld hl, sBackupPokemonIndexTable
	ld de, wPokemonIndexTable
	ld bc, wPokemonIndexTableEnd - wPokemonIndexTable
	rst CopyBytes
	ld hl, sBackupItemIndexTable
	ld de, wItemIndexTable
	ld bc, wItemIndexTableEnd - wItemIndexTable
	rst CopyBytes
	ld a, BANK(sBackupMoveIndexTable)
	call OpenSRAM
	ld hl, sBackupMoveIndexTable
	ld de, wMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	rst CopyBytes
	pop af
	ldh [rSVBK], a
	jmp CloseSRAM

VerifyBackupChecksum:
	ld hl, sBackupSaveData
	ld bc, sBackupSaveDataEnd - sBackupSaveData
	ld a, BANK(sBackupSaveData)
	call OpenSRAM
	call Checksum
	ld a, [sBackupChecksum + 0]
	cp e
	jr nz, .fail
	ld a, [sBackupChecksum + 1]
	cp d
	jr nz, .fail
	ld hl, sBackupConversionTableChecksum
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push hl
	ld a, BANK(sBackupMoveIndexTable)
	call OpenSRAM
	ld hl, sBackupMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	call Checksum
	pop hl
	ld a, d
	cp h
	jr nz, .fail
	ld a, e
	cp l
.fail
	push af
	call CloseSRAM
	pop af
	ret

_SaveData:
	; This is called within two scenarios:
	;   a) ErasePreviousSave (the process of erasing the save from a previous game file)
	;   b) unused mobile functionality
	; It is not part of a regular save.

	ld a, BANK(sCrystalData)
	call OpenSRAM
	ld hl, wCrystalData
	ld de, sCrystalData
	ld bc, wCrystalDataEnd - wCrystalData
	rst CopyBytes
	jmp CloseSRAM

_LoadData:
	ld a, BANK(sCrystalData)
	call OpenSRAM
	ld hl, sCrystalData
	ld de, wCrystalData
	ld bc, wCrystalDataEnd - wCrystalData
	rst CopyBytes
	jmp CloseSRAM

Checksum:
	ld de, 0
.loop
	ld a, [hli]
	add e
	ld e, a
	adc d
	sub e
	ld d, a
	dec bc
	ld a, b
	or c
	jr nz, .loop
	ret

WouldYouLikeToSaveTheGameText:
	text_far _WouldYouLikeToSaveTheGameText
	text_end

SavedTheGameText:
	text_far _SavedTheGameText
	text_end

AnotherSaveFileText:
	text_far _AnotherSaveFileText
	text_end

SaveFileCorruptedText:
	text_far _SaveFileCorruptedText
	text_end

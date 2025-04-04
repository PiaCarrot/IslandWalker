Intro_MainMenu:
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	ld de, MUSIC_RIDING_LAPRAS
	ld a, e
	ld [wMapMusic], a
	call PlayMusic
	farcall MainMenu
	jmp StartTitleScreen

PrintDayOfWeek:
	push de
	ld hl, .Days
	ld a, b
	call GetNthString
	ld d, h
	ld e, l
	pop hl
	rst PlaceString
	ld h, b
	ld l, c
	ld de, .Day
	jmp PlaceString

.Days:
	db "SUN@"
	db "MON@"
	db "TUES@"
	db "WEDNES@"
	db "THURS@"
	db "FRI@"
	db "SATUR@"

.Day:
	db "DAY@"

NewGame_ClearTilemapEtc:
	xor a
	ldh [hMapAnims], a
	call ClearTilemap
	call LoadFontsExtra
	call LoadStandardFont
	jmp ClearWindowData

MysteryGift:
	call UpdateTime
	farcall DoMysteryGiftIfDayHasPassed
	farjp DoMysteryGift

Option:
	farjp _Option

NewGame:
	xor a
	ld [wDebugFlags], a
	call ResetWRAM
	farcall ClearSavedObjPals
	call NewGame_ClearTilemapEtc
	call PlayerProfileSetup
	call OakSpeech
	call InitializeWorld

	ld a, LANDMARK_VALENCIA_ISLAND
	ld [wPrevLandmark], a

	ld a, SPAWN_HOME
	ld [wDefaultSpawnpoint], a

	ld a, MAPSETUP_WARP
	ldh [hMapEntryMethod], a
	jmp FinishContinueFunction

PlayerProfileSetup:
	farjp InitGender

ResetWRAM:
	xor a
	ldh [hBGMapMode], a
; fallthrough
_ResetWRAM:
	ld a, BANK("16-bit WRAM tables")
	ldh [rSVBK], a
	ld hl, wPokemonIndexTable
	ld bc, wPokemonIndexTableEnd - wPokemonIndexTable
	xor a
	rst ByteFill
	ld hl, wMoveIndexTable
	ld bc, wMoveIndexTableEnd - wMoveIndexTable
	rst ByteFill
	ld hl, wItemIndexTable
	ld bc, wItemIndexTableEnd - wItemIndexTable
	rst ByteFill

	ld a, 1
	ldh [rSVBK], a

	ld hl, wShadowOAM
	ld bc, wOptions - wShadowOAM
	xor a
	rst ByteFill

	ld hl, STARTOF(WRAMX)
	ld bc, wGameData - STARTOF(WRAMX)
	xor a
	rst ByteFill

	ld hl, wGameData
	ld bc, wGameDataEnd - wGameData
	xor a
	rst ByteFill

	ldh a, [rLY]
	ldh [hUnusedBackup], a
	call DelayFrame
	ldh a, [hRandomSub]
	ld [wPlayerID], a

	ldh a, [rLY]
	ldh [hUnusedBackup], a
	call DelayFrame
	ldh a, [hRandomAdd]
	ld [wPlayerID + 1], a

	call Random
	ld [wSecretID], a
	call DelayFrame
	call Random
	ld [wSecretID + 1], a

	ld hl, wPartyCount
	call .InitList

	xor a
	ld [wCurBox], a
	ld [wSavedAtLeastOnce], a

	farcall InitializeBoxes

	ld hl, wNumItems
	call .InitList

	ld hl, wNumKeyItems
	call .InitList

	ld hl, wNumBalls
	call .InitList

	ld hl, wNumBerries
	call .InitList

	ld hl, wNumMedicine
	call .InitList

	ld hl, wNumValuable
	call .InitList

	ld hl, wNumPCItems
	call .InitList

	xor a
	ld [wRoamMon1Species], a
	ld [wRoamMon2Species], a
	ld [wRoamMon3Species], a
	ld a, -1
	ld [wRoamMon1MapGroup], a
	ld [wRoamMon2MapGroup], a
	ld [wRoamMon3MapGroup], a
	ld [wRoamMon1MapNumber], a
	ld [wRoamMon2MapNumber], a
	ld [wRoamMon3MapNumber], a

	ld a, BANK(sMysteryGiftItem) ; aka BANK(sMysteryGiftUnlocked)
	call OpenSRAM
	ld hl, sMysteryGiftItem
	xor a
	ld [hli], a
	assert sMysteryGiftItem + 1 == sMysteryGiftUnlocked
	dec a ; -1
	ld [hl], a
	call CloseSRAM

	call LoadOrRegenerateLuckyIDNumber
	call InitializeMagikarpHouse

	xor a
	ld [wMonType], a

	ld [wJohtoBadges], a
	ld [wKantoBadges], a

	ld [wCoins], a
	ld [wCoins + 1], a

if START_MONEY >= $10000
	ld a, HIGH(START_MONEY >> 8)
endc
	ld [wMoney], a
	ld a, HIGH(START_MONEY) ; mid
	ld [wMoney + 1], a
	ld a, LOW(START_MONEY)
	ld [wMoney + 2], a

	xor a
	ld [wWhichMomItem], a

	ld hl, wMomItemTriggerBalance
	assert MOM_MONEY < $10000
	ld [hli], a
	ld a, HIGH(MOM_MONEY) ; mid
	ld [hli], a
	ld [hl], LOW(MOM_MONEY)

	call InitializeNPCNames

	farcall InitDecorations

	farcall DeletePartyMonMail

	farcall ClearGSBallFlag

	jmp ResetGameTime

.InitList:
; Loads 0 in the count and -1 in the first item or mon slot.
	xor a
	ld [hli], a
	dec a
	ld [hl], a
	ret

InitializeMagikarpHouse:
	ld hl, wBestMagikarpLengthFeet
	ld a, $3
	ld [hli], a
	ld a, $6
	ld [hli], a
	ld de, .Ralph
	jmp CopyName2

.Ralph:
	db "RALPH@"

InitializeNPCNames:
	ld hl, .Rival
	ld de, wRivalName
	call .Copy

	ld hl, .Mom
	ld de, wMomsName
	call .Copy

	ld hl, .Red
	ld de, wRedsName
	call .Copy

	ld hl, .Green
	ld de, wGreensName

.Copy:
	ld bc, NAME_LENGTH
	jmp CopyBytes

.Rival:  db "???@"
.Red:    db "RED@"
.Green:  db "GREEN@"
.Mom:    db "MOM@"

InitializeWorld:
	call ShrinkPlayer
	farcall SpawnPlayer
	farjp _InitializeStartDay

LoadOrRegenerateLuckyIDNumber:
	ld a, BANK(sLuckyIDNumber)
	call OpenSRAM
	ld a, [wCurDay]
	inc a
	ld b, a
	ld a, [sLuckyNumberDay]
	cp b
	ld a, [sLuckyIDNumber + 1]
	ld c, a
	ld a, [sLuckyIDNumber]
	jr z, .skip
	ld a, b
	ld [sLuckyNumberDay], a
	call Random
	ld c, a
	call Random

.skip
	ld [wLuckyIDNumber], a
	ld [sLuckyIDNumber], a
	ld a, c
	ld [wLuckyIDNumber + 1], a
	ld [sLuckyIDNumber + 1], a
	jmp CloseSRAM

Continue:
	farcall TryLoadSaveFile
	ret c
	farcall _LoadData
	call LoadStandardMenuHeader
	call DisplaySaveInfoOnContinue
	ld a, $1
	ldh [hBGMapMode], a
	ld c, 20
	call DelayFrames
	call ConfirmContinue
	jmp c, CloseWindow
	call Continue_CheckRTC_RestartClock
	jmp c, CloseWindow
	ld a, $8
	ld [wMusicFade], a
	ld a, LOW(MUSIC_NONE)
	ld [wMusicFadeID], a
	ld a, HIGH(MUSIC_NONE)
	ld [wMusicFadeID + 1], a
	call ClearBGPalettes
	call CloseWindow
	call ClearTilemap
	farcall ClearSavedObjPals
	ld c, 20
	call DelayFrames
	farcall JumpRoamMons
	farcall CopyMysteryGiftReceivedDecorationsToPC
	farcall ClockContinue
	ld a, [wSpawnAfterChampion]
	cp SPAWN_LANCE
	jr z, .SpawnAfterE4
	ld a, MAPSETUP_CONTINUE
	ldh [hMapEntryMethod], a
	jr FinishContinueFunction

.SpawnAfterE4:
	ld a, SPAWN_VALENCIA
	ld [wDefaultSpawnpoint], a
	call PostCreditsSpawn
	jr FinishContinueFunction

SpawnAfterRed:
	ld a, SPAWN_VALENCIA
	ld [wDefaultSpawnpoint], a

PostCreditsSpawn:
	xor a
	ld [wSpawnAfterChampion], a
	ld a, MAPSETUP_WARP
	ldh [hMapEntryMethod], a
	ret

ConfirmContinue:
.loop
	call DelayFrame
	call GetJoypad
	ld hl, hJoyPressed
	bit A_BUTTON_F, [hl]
	ret nz
	bit B_BUTTON_F, [hl]
	jr z, .loop
	scf
	ret

Continue_CheckRTC_RestartClock:
	call CheckRTCStatus
	and RTC_RESET
	jr z, .pass
	farcall RestartClock
	ld a, c
	and a
	jr z, .pass
	scf
	ret

.pass
	xor a
	ret

FinishContinueFunction:
.loop
	xor a
	ld [wDontPlayMapMusicOnReload], a
	ld [wLinkMode], a
	ld hl, wGameTimerPaused
	set GAME_TIMER_COUNTING_F, [hl]
	res GAME_TIMER_MOBILE_F, [hl]
	ld hl, wMapNameSignFlags
	set SHOWN_MAP_NAME_SIGN, [hl]
	farcall OverworldLoop
	ld a, [wSpawnAfterChampion]
	cp SPAWN_RED
	jmp nz, Reset
	call SpawnAfterRed
	jr .loop

DisplaySaveInfoOnContinue:
	call CheckRTCStatus
	and RTC_RESET
	jr z, .clock_ok
	lb de, 4, 8
	jr DisplayContinueDataWithRTCError

.clock_ok
	lb de, 4, 8
	jr DisplayNormalContinueData

DisplaySaveInfoOnSave:
	lb de, 4, 0
; fallthrough
DisplayNormalContinueData:
	call Continue_LoadMenuHeader
	call Continue_DisplayBadgesDexPlayerName
	call Continue_PrintGameTime
	call LoadFontsExtra
	jmp UpdateSprites

DisplayContinueDataWithRTCError:
	call Continue_LoadMenuHeader
	call Continue_DisplayBadgesDexPlayerName
	call Continue_UnknownGameTime
	call LoadFontsExtra
	jmp UpdateSprites

Continue_LoadMenuHeader:
	xor a
	ldh [hBGMapMode], a
	ld hl, .MenuHeader_Dex
	ld a, [wStatusFlags]
	bit STATUSFLAGS_POKEDEX_F, a
	jr nz, .show_menu
	ld hl, .MenuHeader_NoDex

.show_menu
	call _OffsetMenuHeader
	call MenuBox
	jmp PlaceVerticalMenuItems

.MenuHeader_Dex:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, 9
	dw .MenuData_Dex
	db 1 ; default option

.MenuData_Dex:
	db 0 ; flags
	db 4 ; items
	db "PLAYER@"
	db "BADGES@"
	db "#DEX@"
	db "TIME@"

.MenuHeader_NoDex:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 15, 9
	dw .MenuData_NoDex
	db 1 ; default option

.MenuData_NoDex:
	db 0 ; flags
	db 4 ; items
	db "PLAYER <PLAYER>@"
	db "BADGES@"
	db " @"
	db "TIME@"

Continue_DisplayBadgesDexPlayerName:
	call MenuBoxCoord2Tile
	push hl
	decoord 13, 4, 0
	add hl, de
	call Continue_DisplayBadgeCount
	pop hl
	push hl
	decoord 12, 6, 0
	add hl, de
	call Continue_DisplayPokedexNumCaught
	pop hl
	push hl
	decoord 8, 2, 0
	add hl, de
	ld de, .Player
	rst PlaceString
	pop hl
	ret

.Player:
	db "<PLAYER>@"

Continue_PrintGameTime:
	decoord 9, 8, 0
	add hl, de
	jr Continue_DisplayGameTime

Continue_UnknownGameTime:
	decoord 9, 8, 0
	add hl, de
	ld de, .three_question_marks
	jmp PlaceString

.three_question_marks
	db " ???@"

Continue_DisplayBadgeCount:
	push hl
	ld hl, wJohtoBadges
	ld b, 2
	call CountSetBits
	pop hl
	ld de, wNumSetBits
	lb bc, 1, 2
	jmp PrintNum

Continue_DisplayPokedexNumCaught:
	ld a, [wStatusFlags]
	bit STATUSFLAGS_POKEDEX_F, a
	ret z
	push hl
	ld hl, wPokedexCaught
	ld bc, wEndPokedexCaught - wPokedexCaught
	call CountSetBits16
	pop hl
	ld a, b
	ld b, c
	ld c, a
	push bc
	push hl
	ld hl, sp + 2
	ld d, h
	ld e, l
	lb bc, 2, 3
	pop hl
	call PrintNum
	pop bc
	ret

Continue_DisplayGameTime:
	ld de, wGameTimeHours
	lb bc, 2, 3
	call PrintNum
	ld a, "<COLON>"
	ld [hli], a
	ld de, wGameTimeMinutes
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	jmp PrintNum

OakSpeech:
	farcall InitClock
	ld c, 31
	call FadeToWhite
	call ClearTilemap
	call DelayFrame
	call DisableLCD
	
; Turn BG Map update off
	xor a
	ldh [hBGMapMode], a
	
	ldh [hMapAnims], a
	ldh [hSCY], a
	ldh [hSCX], a

	farcall ClearSpriteAnims
	
	ld a, 1
	ldh [rVBK], a

	ld hl, IvySpeechTilesGFX
	ld de, vTiles2
	ld a, BANK(IntroGFX)
	call FarDecompress
	
; Back to VRAM bank 0
	xor a
	ldh [rVBK], a

	ld hl, IvySpeechTilesGFX2
	ld de, vTiles2 tile $10
	ld a, BANK(IntroGFX)
	call FarDecompress

	ld hl, IvySpeechTilesGFX3
	ld de, vTiles0
	ld a, BANK(IntroGFX)
	call FarDecompress

	hlbgcoord 0, 0
	ld bc, BG_MAP_WIDTH * BG_MAP_HEIGHT
	ld a, $0F
	rst ByteFill

	ld hl, IvySpeechTilesTilemap
	ld bc, IvySpeechTilesTilemapEnd - IvySpeechTilesTilemap
	call NewGame_CopyMapTilesOrAttr

	ld hl, IvySpeechTilesPalettes
	ld de, wBGPals1
	ld bc, 7 palettes
	call FarCopyColorWRAM
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a

	ld hl, IvySpeechTilesPalettes
	ld de, wOBPals1
	ld bc, 1 palettes
	call FarCopyColorWRAM
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	
	ld a, [rVBK]
	push af
	ld a, 1
	ldh [rVBK], a
	ld hl, IvySpeechTilesAttrmap
	ld bc, IvySpeechTilesAttrmapEnd - IvySpeechTilesAttrmap
	call NewGame_CopyMapTilesOrAttr
	pop af
	ldh [rVBK], a
	
	ld hl, wSpriteAnimDict
	xor a ; SPRITE_ANIM_DICT_DEFAULT and tile offset $00
	ld [hli], a
	ld [hl], a
	ld hl, rLCDC
	res rLCDC_SPRITE_SIZE, [hl] ; 8x8
	call EnableLCD

	call NewGame_IvyLeftEye
	call NewGame_IvyRightEye
	call NewGame_InitPressA
	ld de, MUSIC_ROUTE_24_GBS
	call PlayMusic
.loop
	farcall PlaySpriteAnimations
	call GetJoypad
	ldh a, [hJoyPressed]
	and A_BUTTON
	jr z, .loop
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	ld c, 15
	call FadeToWhite
	farcall ClearSpriteAnims
	call ClearSprites
	call ClearTilemap

	xor a
	ld [wCurPartySpecies], a
	ld a, POKEMON_PROF
	ld [wTrainerClass], a
	call Intro_PrepTrainerPic

	ld b, SCGB_TRAINER_OR_MON_FRONTPIC_PALS
	call GetSGBLayout
	call Intro_RotatePalettesLeftFrontpic
	
	ld hl, IvySpeechShirtPalette
	ld de, wOBPals1 palette 2
	ld bc, 1 palettes
	call FarCopyColorWRAM
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	call NewGame_IvyShirt
	call NewGame_IvyBall
	call NewGame_IvyShoes
	farcall PlaySpriteAnimations

	ld hl, IvySpeech1
	call PrintText

;	call RotateThreePalettesRight ; TODO check this
	ld c, 15
	call FadeToWhite
	farcall ClearSpriteAnims
	call ClearSprites
	call ClearTilemap

	xor a
	ld [wCurPartySpecies], a
	farcall DrawIntroPlayerPic

	ld b, SCGB_TRAINER_OR_MON_FRONTPIC_PALS
	call GetSGBLayout
	call Intro_RotatePalettesLeftFrontpic
	ld hl, IvySpeech2
	call PrintText
	call NamePlayer
	ld hl, IvySpeech3
	call PrintText
	
	ld c, 15
	call FadeToWhite
	call ClearTilemap

	ld hl, BUTTERFREE
	call GetPokemonIDFromIndex
	ld [wCurSpecies], a
	ld [wCurPartySpecies], a
	call GetBaseData

	hlcoord 6, 4
	call PrepMonFrontpic

	xor a
	ld [wTempMonIVs], a
	ld [wTempMonIVs + 1], a
	ld [wTempMonIVs + 2], a
	ld [wTempMonIVs + 3], a

	ld b, SCGB_TRAINER_OR_MON_FRONTPIC_PALS
	call GetSGBLayout
	call Intro_RotatePalettesLeftFrontpic

	ld hl, IvySpeech4
	call PrintText
	ld hl, IvySpeech5
	call PrintText
	ld c, 15
	call FadeToWhite
	call ClearTilemap

	xor a
	ld [wCurPartySpecies], a
	ld a, POKEMON_PROF
	ld [wTrainerClass], a
	call Intro_PrepTrainerPic

	ld b, SCGB_TRAINER_OR_MON_FRONTPIC_PALS
	call GetSGBLayout
	call Intro_RotatePalettesLeftFrontpic
	
	ld hl, IvySpeechShirtPalette
	ld de, wOBPals1 palette 2
	ld bc, 1 palettes
	call FarCopyColorWRAM
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	call NewGame_IvyShirt
	call NewGame_IvyBall
	call NewGame_IvyShoes
	farcall PlaySpriteAnimations

	ld hl, IvySpeech6
	call PrintText
;	call RotateThreePalettesRight ; TODO check this

	ld c, 15
	call FadeToWhite
	farcall ClearSpriteAnims
	call ClearSprites
	call ClearTilemap

	call LoadFontsExtra
	call WaitBGMap

	xor a
	ld [wCurPartySpecies], a
	farcall DrawIntroPlayerPic

	ld b, SCGB_TRAINER_OR_MON_FRONTPIC_PALS
	call GetSGBLayout
	call Intro_RotatePalettesLeftFrontpic
	ld hl, IvySpeech7
	call PrintText
	ret
	
NewGame_IvyLeftEye:
	depixel 5, 15
	ld a, SPRITE_ANIM_OBJ_NEW_GAME_IVY_LEFT_EYE
	call InitSpriteAnimStruct
	ret

NewGame_IvyRightEye:
	depixel 5, 18
	ld a, SPRITE_ANIM_OBJ_NEW_GAME_IVY_RIGHT_EYE
	call InitSpriteAnimStruct
	ret
	
NewGame_InitPressA:
	depixel 18, 03
	ld a, SPRITE_ANIM_OBJ_NEW_GAME_PRESS_A
	call InitSpriteAnimStruct
	ret

NewGame_IvyShirt:
	depixel 09, 09
	ld a, SPRITE_ANIM_OBJ_NEW_GAME_IVY_SHIRT
	call InitSpriteAnimStruct
	ret

NewGame_IvyBall:
	depixel 09, 11
	ld a, SPRITE_ANIM_OBJ_NEW_GAME_IVY_BALL
	call InitSpriteAnimStruct
	ret

NewGame_IvyShoes:
	depixel 12, 10
	ld a, SPRITE_ANIM_OBJ_NEW_GAME_IVY_SHOES
	call InitSpriteAnimStruct
	ret

IvySpeech1:
	text_far _IvySpeech1
	text_end

IvySpeech2:
	text_far _IvySpeech2
	text_end

OakText3:
	text_far _OakText3
	text_end

IvySpeech3:
	text_far _IvySpeech3
	text_end

IvySpeech4:
	text_far _IvySpeech4
	text_asm
	ld hl, BUTTERFREE
	call GetPokemonIDFromIndex
	call PlayMonCry
	call WaitSFX
	ld hl, OakText3
	ret

IvySpeech5:
	text_far _IvySpeech5
	text_end

IvySpeech6:
	text_far _IvySpeech6
	text_end

IvySpeech7:
	text_far _IvySpeech7
	text_end

NamePlayer:
	farcall MovePlayerPicRight
	farcall ShowPlayerNamingChoices
	ld a, [wMenuCursorY]
	dec a
	jr z, .NewName
	call StorePlayerName
	farcall ApplyMonOrTrainerPals
	farjp MovePlayerPicLeft

.NewName:
	ld b, NAME_PLAYER
	ld de, wPlayerName
	farcall NamingScreen

	ld c, 15
	call FadeToWhite
	call ClearTilemap

	call LoadFontsExtra
	call WaitBGMap

	xor a
	ld [wCurPartySpecies], a
	farcall DrawIntroPlayerPic

	ld b, SCGB_TRAINER_OR_MON_FRONTPIC_PALS
	call GetSGBLayout
	call Intro_RotatePalettesLeftFrontpic

	ld hl, wPlayerName
	ld de, .Chris
	ld a, [wPlayerGender]
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .Male
	ld de, .Kris
.Male:
	jmp InitName

.Chris:
	db "INDIGO@@@@@"
.Kris:
	db "ORANGE@@@@@"

StorePlayerName:
	ld a, "@"
	ld bc, NAME_LENGTH
	ld hl, wPlayerName
	rst ByteFill
	ld hl, wPlayerName
	ld de, wStringBuffer2
	jmp CopyName2

ShrinkPlayer:
	ldh a, [hROMBank]
	push af

	ld a, 32 ; fade time
	ld [wMusicFade], a
	ld de, MUSIC_NONE
	ld a, e
	ld [wMusicFadeID], a
	ld a, d
	ld [wMusicFadeID + 1], a

	ld de, SFX_ESCAPE_ROPE
	call PlaySFX
	pop af
	rst Bankswitch

	ld c, 16
	call DelayFrames

	ld hl, Shrink1Pic
	ld b, BANK(Shrink1Pic)
	call ShrinkFrame

	ld c, 16
	call DelayFrames

	ld hl, Shrink2Pic
	ld b, BANK(Shrink2Pic)
	call ShrinkFrame

	ld c, 16
	call DelayFrames

	hlcoord 6, 4
	lb bc, 7, 7
	call ClearBox

	ld c, 6
	call DelayFrames

	call Intro_PlacePlayerSprite
	call LoadFontsExtra

	ld c, 50
	call DelayFrames

	ld c, 15
	call FadeToWhite
	jmp ClearTilemap

Intro_RotatePalettesLeftFrontpic:
	ld hl, IntroFadePalettes
	ld b, IntroFadePalettes.End - IntroFadePalettes
.loop
	ld a, [hli]
	call DmgToCgbBGPals
	ld c, 10
	call DelayFrames
	dec b
	jr nz, .loop
	ret

IntroFadePalettes:
;	dc 1, 1, 1, 0
;	dc 2, 2, 2, 0
;	dc 3, 3, 3, 0
;	dc 3, 3, 2, 0
;	dc 3, 3, 1, 0
;	dc 3, 2, 1, 0
	db %01010100
	db %10101000
	db %11111100
	db %11111000
	db %11110100
	db %11100100
.End

Intro_PrepTrainerPic:
	ld de, vTiles2
	farcall GetTrainerPic
	xor a
	ldh [hGraphicStartTile], a
	hlcoord 6, 4
	lb bc, 7, 7
	predef_jump PlaceGraphic

ShrinkFrame:
	ld de, vTiles2
	ld c, 7 * 7
	predef DecompressGet2bpp
	xor a
	ldh [hGraphicStartTile], a
	hlcoord 6, 4
	lb bc, 7, 7
	predef_jump PlaceGraphic

Intro_PlacePlayerSprite:
	farcall GetPlayerIcon
	ld c, 12
	ld hl, vTiles0
	call Request2bpp

	ld hl, wShadowOAMSprite00
	ld de, .sprites
	ld a, [de]
	inc de

	ld c, a
.loop
	ld a, [de]
	inc de
	ld [hli], a ; y
	ld a, [de]
	inc de
	ld [hli], a ; x
	ld a, [de]
	inc de
	ld [hli], a ; tile id

	ld b, PAL_OW_PURPLE
	ld a, [wPlayerGender]
	bit PLAYERGENDER_FEMALE_F, a
	jr z, .male
	ld b, PAL_OW_ORANGE
.male
	ld a, b
	ld [wNeededPalIndex], a
	xor a
	ld [hli], a ; attributes
	dec c
	jr nz, .loop
	ld de, wOBPals1 palette 0
	ld hl, wPalFlags
	set USE_DAYTIME_PAL_F, [hl]
	farcall CopySpritePal
	ld hl, wPalFlags
	res USE_DAYTIME_PAL_F, [hl]
	ret

.sprites
	db 4
	; y pxl, x pxl, tile offset
	db  9 * TILE_WIDTH + 4,  9 * TILE_WIDTH, 0
	db  9 * TILE_WIDTH + 4, 10 * TILE_WIDTH, 1
	db 10 * TILE_WIDTH + 4,  9 * TILE_WIDTH, 2
	db 10 * TILE_WIDTH + 4, 10 * TILE_WIDTH, 3


	const_def
	const TITLESCREENOPTION_MAIN_MENU
	const TITLESCREENOPTION_DELETE_SAVE_DATA
	const TITLESCREENOPTION_RESTART
	const TITLESCREENOPTION_UNUSED
	const TITLESCREENOPTION_RESET_CLOCK
DEF NUM_TITLESCREENOPTIONS EQU const_value

IntroSequence:
	farcall SplashScreen
	jr c, StartTitleScreen
	farcall GoldSilverIntro

	; fallthrough

StartTitleScreen:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wLYOverrides)
	ldh [rSVBK], a

	call .TitleScreen
	call DelayFrame
.loop
	call RunTitleScreen
	jr nc, .loop

	call ClearSprites
	call ClearBGPalettes

	pop af
	ldh [rSVBK], a

	ld hl, rLCDC
	res rLCDC_SPRITE_SIZE, [hl] ; 8x8
	call ClearScreen
	call WaitBGMap2
	ld hl, rIE
	res LCD_STAT, [hl]
	xor a
	ldh [hLCDCPointer], a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $7
	ldh [hWX], a
	ld a, $90
	ldh [hWY], a
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call UpdateTimePals
	ld a, [wTitleScreenSelectedOption]
	cp NUM_TITLESCREENOPTIONS
	jr c, .ok
	xor a
.ok
	ld e, a
	ld d, 0
	ld hl, .dw
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.dw
	dw Intro_MainMenu
	dw DeleteSaveData
	dw IntroSequence
	dw IntroSequence
	dw ResetClock

.TitleScreen:
	farjp _TitleScreen

RunTitleScreen:
	ld a, [wJumptableIndex]
	bit JUMPTABLE_EXIT_F, a
	jr nz, .done_title
	call TitleScreenScene
	farcall PlaySpriteAnimations
	call DelayFrame
	and a
	ret

.done_title
	scf
	ret

TitleScreenScene:
	ld e, a
	ld d, 0
	ld hl, .scenes
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.scenes
	dw TitleScreenEntrance
	dw TitleScreenTimer
	dw TitleScreenMain
	dw TitleScreenEnd

TitleScreenEntrance:
; Animate the logo:
; Move each line by 4 pixels until our count hits 0.
	; ldh a, [hSCX]
	; and a
	; jr z, .done
	; sub 4
	; ldh [hSCX], a

; Lay out a base (all lines scrolling together).
	; ld e, a
	; ld hl, wLYOverrides
	; ld bc, 8 * 10 ; logo height
	; rst ByteFill

; Reversed signage for every other line's position.
; This is responsible for the interlaced effect.
	; ld a, e
	; cpl
	; inc a

	; ld b, 8 * 10 / 2 ; logo height / 2
	; ld hl, wLYOverrides + 1
; .loop
	; ld [hli], a
	; inc hl
	; dec b
	; jr nz, .loop

	; farjp AnimateTitleCrystal

; .done
; Next scene
	ld hl, wJumptableIndex
	inc [hl]
	; ld hl, rIE
	; res LCD_STAT, [hl]
	; xor a
	; ldh [hLCDCPointer], a

; Play the title screen music.
	ld de, MUSIC_TITLE
	call PlayMusic

	; ld a, $88
	; ldh [hWY], a
	ret

TitleScreenTimer:
; Next scene
	ld hl, wJumptableIndex
	inc [hl]

; Start a timer
	ld hl, wTitleScreenTimer
	ld de, 73 * 60 + 36
	ld a, e
	ld [hli], a
	ld [hl], d
	ret

TitleScreenMain:
; Run the timer down.
	ld hl, wTitleScreenTimer
	ld a, [hli]
	ld d, [hl]
	ld e, a
	or d
	jr z, .end

	dec de
	ld a, d
	ld [hld], a
	ld [hl], e

; Save data can be deleted by pressing Up + B + Select.
	call JoyTextDelay
	call GetJoypad
	ld hl, hJoyLast
	ld a, [hl]
	or ~(D_UP + B_BUTTON + SELECT)
	inc a
	jr z, .delete_save_data

; To bring up the clock reset dialog:

; Hold Down + B + Select to initiate the sequence.
	ldh a, [hClockResetTrigger]
	cp $34
	jr z, .check_clock_reset

	ld a, [hl]
	or ~(D_DOWN + B_BUTTON + SELECT)
	inc a
	jr nz, .check_start

	ld a, $34
	ldh [hClockResetTrigger], a
	jr .check_start

; Keep Select pressed, and hold Left + Up.
; Then let go of Select.
.check_clock_reset
	bit SELECT_F, [hl]
	jr nz, .check_start

	xor a
	ldh [hClockResetTrigger], a

	ld a, [hl]
	or ~(D_LEFT + D_UP)
	inc a
	jr z, .reset_clock

; Press Start or A to start the game.
.check_start
	ld a, [hl]
	and A_BUTTON
	ret z
	farcall _TitleScreenPressedA
	ret


.delete_save_data
	ld a, TITLESCREENOPTION_DELETE_SAVE_DATA

.done
	ld [wTitleScreenSelectedOption], a

; Return to the intro sequence.
	ld hl, wJumptableIndex
	set JUMPTABLE_EXIT_F, [hl]
	ret

.end
; Next scene
	ld hl, wJumptableIndex
	inc [hl]

; Fade out the title screen music
	xor a ; MUSIC_NONE
	ld [wMusicFadeID], a
	ld [wMusicFadeID + 1], a
	ld hl, wMusicFade
	ld [hl], 8 ; 1 second

	ld hl, wTitleScreenTimer
	inc [hl]
	ret

.reset_clock
	ld a, TITLESCREENOPTION_RESET_CLOCK
	ld [wTitleScreenSelectedOption], a

; Return to the intro sequence.
	ld hl, wJumptableIndex
	set JUMPTABLE_EXIT_F, [hl]
	ret

TitleScreenEnd:
; Wait until the music is done fading.

	ld hl, wTitleScreenTimer
	inc [hl]

	ld a, [wMusicFade]
	and a
	ret nz

	ld a, TITLESCREENOPTION_RESTART
	ld [wTitleScreenSelectedOption], a

; Back to the intro.
	ld hl, wJumptableIndex
	set JUMPTABLE_EXIT_F, [hl]
	ret

DeleteSaveData:
	farcall _DeleteSaveData
	jmp Init

ResetClock:
	farcall _ResetClock
	jmp Init
	
NewGame_CopyMapTilesOrAttr:
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

IvySpeechTilesTilemap:
INCBIN "gfx/new_game/IvySpeechTiles.tilemap"
IvySpeechTilesTilemapEnd:

IvySpeechTilesAttrmap:
INCBIN "gfx/new_game/IvySpeechTiles.attrmap"
IvySpeechTilesAttrmapEnd:

IvySpeechTilesPalettes:
INCLUDE "gfx/new_game/IvySpeechTiles.pal"

IvySpeechShirtPalette:
	RGB 31, 31, 31
	RGB 25, 16, 17
	RGB 31, 00, 00
	RGB 00, 00, 00

GameInit::
	farcall TryLoadSaveData
	call ClearWindowData
	call ClearBGPalettes
	call ClearTilemap
	ld a, HIGH(vBGMap0)
	ldh [hBGMapAddress + 1], a
	xor a ; LOW(vBGMap0)
	ldh [hBGMapAddress], a
	ldh [hJoyDown], a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, $90
	ldh [hWY], a
	call WaitBGMap
	jmp IntroSequence

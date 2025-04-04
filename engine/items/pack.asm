; Pack.Jumptable and BattlePack.Jumptable indexes
	const_def
	const PACKSTATE_INITGFX            ;  0
	const PACKSTATE_INITITEMSPOCKET    ;  1
	const PACKSTATE_ITEMSPOCKETMENU    ;  2
	const PACKSTATE_INITBALLSPOCKET    ;  3
	const PACKSTATE_BALLSPOCKETMENU    ;  4
	const PACKSTATE_INITKEYITEMSPOCKET ;  5
	const PACKSTATE_KEYITEMSPOCKETMENU ;  6
	const PACKSTATE_INITTMHMPOCKET     ;  7
	const PACKSTATE_TMHMPOCKETMENU     ;  8
	const PACKSTATE_INITBERRYPOCKET    ;  9
	const PACKSTATE_BERRYPOCKETMENU    ; 10
	const PACKSTATE_INITMEDICINEITEMSPOCKET    ; 11
	const PACKSTATE_MEDICINEITEMSPOCKETMENU    ; 12
	const PACKSTATE_INITVALUABLEITEMSPOCKET    ; 13
	const PACKSTATE_VALUABLEITEMSPOCKETMENU    ; 14
	const PACKSTATE_QUITNOSCRIPT       ; 15
	const PACKSTATE_QUITRUNSCRIPT      ; 16

Pack:
	ld hl, wItemFlags
	set IN_BAG_F, [hl]
	ld hl, wOptions
	set NO_TEXT_SCROLL, [hl]
	call InitPackBuffers
.loop
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit JUMPTABLE_EXIT_F, a
	jr nz, .done
	call .RunJumptable
	call DelayFrame
	jr .loop

.done
	ld a, [wCurPocket]
	ld [wLastPocket], a
	ld hl, wOptions
	res NO_TEXT_SCROLL, [hl]
	ld hl, wItemFlags
	res IN_BAG_F, [hl]
	ret

.RunJumptable:
	ld a, [wJumptableIndex]
	ld hl, .Jumptable
	call Pack_GetJumptablePointer
	jp hl

.Jumptable:
; entries correspond to PACKSTATE_* constants
	dw .InitGFX            ;  0
	dw .InitItemsPocket    ;  1
	dw .ItemsPocketMenu    ;  2
	dw .InitBallsPocket    ;  3
	dw .BallsPocketMenu    ;  4
	dw .InitKeyItemsPocket ;  5
	dw .KeyItemsPocketMenu ;  6
	dw .InitTMHMPocket     ;  7
	dw .TMHMPocketMenu     ;  8
	dw .InitBerryPocket    ;  9
	dw .BerryPocketMenu    ; 10
	dw .InitMedicinePocket    ;  9
	dw .MedicinePocketMenu    ; 10
	dw .InitValuablePocket    ;  9
	dw .ValuablePocketMenu    ; 10
	dw Pack_QuitNoScript   ; 11
	dw Pack_QuitRunScript  ; 12

.InitGFX:
	xor a
	ldh [hBGMapMode], a
	call Pack_InitGFX
	ld a, [wPackJumptableIndex]
	ld [wJumptableIndex], a
	jmp Pack_InitColors

.InitItemsPocket:
	xor a ; ITEM_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call DrawPocketGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.ItemsPocketMenu:
	ld hl, ItemsPocketMenuHeader
	call CopyMenuHeader
	ld a, [wItemsPocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wItemsPocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wItemsPocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wItemsPocketCursor], a
	lb bc, PACKSTATE_INITTMHMPOCKET, PACKSTATE_INITBALLSPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
	jmp .ItemBallsKey_LoadSubmenu

.InitKeyItemsPocket:
	ld a, KEY_ITEM_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call DrawPocketGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.KeyItemsPocketMenu:
	ld hl, KeyItemsPocketMenuHeader
	call CopyMenuHeader
	ld a, [wKeyItemsPocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wKeyItemsPocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wKeyItemsPocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wKeyItemsPocketCursor], a
	lb bc, PACKSTATE_INITVALUABLEITEMSPOCKET, PACKSTATE_INITTMHMPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
	jmp .ItemBallsKey_LoadSubmenu

.InitTMHMPocket:
	ld a, TM_HM_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call DrawPocketGFX
	xor a
	ldh [hBGMapMode], a
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.TMHMPocketMenu:
	farcall TMHMPocket
	lb bc, PACKSTATE_INITKEYITEMSPOCKET, PACKSTATE_INITITEMSPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
	farcall _CheckTossableItem
	ld a, [wItemAttributeValue]
	and a
	jr nz, .use_quit
	ld hl, .MenuHeader2
	ld de, .Jumptable2
	jr .load_jump

.use_quit
	ld hl, .MenuHeader1
	ld de, .Jumptable1
.load_jump
	push de
	call LoadMenuHeader
	call VerticalMenu
	call ExitMenu
	pop hl
	ret c
	ld a, [wMenuCursorY]
	dec a
	call Pack_GetJumptablePointer
	jp hl

.MenuHeader1:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData_1
	db 1 ; default option

.MenuData_1:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING ; flags
	db 2 ; items
	db "USE@"
	db "QUIT@"

.Jumptable1:
	dw .UseItem
	dw DoNothing ; QuitItemSubmenu

.MenuHeader2:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 5, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData_2
	db 1 ; default option

.MenuData_2:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING ; flags
	db 3 ; items
	db "USE@"
	db "GIVE@"
	db "QUIT@"

.Jumptable2:
	dw .UseItem
	dw GiveItem
	dw DoNothing ; QuitItemSubmenu

.UseItem:
	farcall AskTeachTMHM
	ret c
	farcall ChooseMonToLearnTMHM
	jr c, .declined
	ld hl, wOptions
	ld a, [hl]
	push af
	res NO_TEXT_SCROLL, [hl]
	farcall TeachTMHM
	pop af
	ld [wOptions], a
.declined
	xor a
	ldh [hBGMapMode], a
	call Pack_InitGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_InitColors

.InitBallsPocket:
	ld a, BALL_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call DrawPocketGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.InitBerryPocket:
	ld a, BERRY_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call DrawPocketGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.BerryPocketMenu:
	ld hl, BerryPocketMenuHeader
	call CopyMenuHeader
	ld a, [wBerryPocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wBerryPocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wBerryPocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wBerryPocketCursor], a
	lb bc, PACKSTATE_INITBALLSPOCKET, PACKSTATE_INITMEDICINEITEMSPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
	jp .ItemBallsKey_LoadSubmenu

.InitMedicinePocket:
	ld a, MEDICINE_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call DrawPocketGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.MedicinePocketMenu:
	ld hl, MedicinePocketMenuHeader
	call CopyMenuHeader
	ld a, [wMedicinePocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wMedicinePocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wMedicinePocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wMedicinePocketCursor], a
	lb bc, PACKSTATE_INITBERRYPOCKET, PACKSTATE_INITVALUABLEITEMSPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
	jr .ItemBallsKey_LoadSubmenu

.InitValuablePocket:
	ld a, VALUABLE_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call DrawPocketGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.ValuablePocketMenu:
	ld hl, ValuablePocketMenuHeader
	call CopyMenuHeader
	ld a, [wValuablePocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wValuablePocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wValuablePocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wValuablePocketCursor], a
	lb bc, PACKSTATE_INITMEDICINEITEMSPOCKET, PACKSTATE_INITKEYITEMSPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
	jr .ItemBallsKey_LoadSubmenu

.BallsPocketMenu:
	ld hl, BallsPocketMenuHeader
	call CopyMenuHeader
	ld a, [wBallsPocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wBallsPocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wBallsPocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wBallsPocketCursor], a
	lb bc, PACKSTATE_INITITEMSPOCKET, PACKSTATE_INITBERRYPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
; fallthrough
.ItemBallsKey_LoadSubmenu:
	farcall _CheckTossableItem
	ld a, [wItemAttributeValue]
	and a
	jr nz, .tossable
	farcall CheckSelectableItem
	ld a, [wItemAttributeValue]
	and a
	jr nz, .selectable
	farcall CheckItemMenu
	ld a, [wItemAttributeValue]
	and a
	jr nz, .usable
	jr .unusable

.selectable
	farcall CheckItemMenu
	ld a, [wItemAttributeValue]
	and a
	jr nz, .selectable_usable
	jr .selectable_unusable

.tossable
	farcall CheckSelectableItem
	ld a, [wItemAttributeValue]
	and a
	jr nz, .tossable_selectable
	jr .tossable_unselectable

.usable
	ld hl, MenuHeader_UsableKeyItem
	ld de, Jumptable_UseGiveTossRegisterQuit
	jr .build_menu

.selectable_usable
	ld hl, MenuHeader_UsableItem
	ld de, Jumptable_UseGiveTossQuit
	jr .build_menu

.tossable_selectable
	ld hl, MenuHeader_UnusableItem
	ld de, Jumptable_UseQuit
	jr .build_menu

.tossable_unselectable
	ld hl, MenuHeader_UnusableKeyItem
	ld de, Jumptable_UseRegisterQuit
	jr .build_menu

.unusable
	ld hl, MenuHeader_HoldableKeyItem
	ld de, Jumptable_GiveTossRegisterQuit
	jr .build_menu

.selectable_unusable
	ld hl, MenuHeader_HoldableItem
	ld de, Jumptable_GiveTossQuit
.build_menu
	push de
	call LoadMenuHeader
	call VerticalMenu
	call ExitMenu
	pop hl
	ret c
	ld a, [wMenuCursorY]
	dec a
	call Pack_GetJumptablePointer
	jp hl

MenuHeader_UsableKeyItem:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING ; flags
	db 5 ; items
	db "USE@"
	db "GIVE@"
	db "TOSS@"
	db "SEL@"
	db "QUIT@"

Jumptable_UseGiveTossRegisterQuit:
	dw UseItem
	dw GiveItem
	dw TossMenu
	dw RegisterItem
	dw DoNothing ; QuitItemSubmenu

MenuHeader_UsableItem:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 3, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING ; flags
	db 4 ; items
	db "USE@"
	db "GIVE@"
	db "TOSS@"
	db "QUIT@"

Jumptable_UseGiveTossQuit:
	dw UseItem
	dw GiveItem
	dw TossMenu
	dw DoNothing ; QuitItemSubmenu

MenuHeader_UnusableItem:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING ; flags
	db 2 ; items
	db "USE@"
	db "QUIT@"

Jumptable_UseQuit:
	dw UseItem
	dw DoNothing ; QuitItemSubmenu

MenuHeader_UnusableKeyItem:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 5, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING ; flags
	db 3 ; items
	db "USE@"
	db "SEL@"
	db "QUIT@"

Jumptable_UseRegisterQuit:
	dw UseItem
	dw RegisterItem
	dw DoNothing ; QuitItemSubmenu

MenuHeader_HoldableKeyItem:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 3, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING ; flags
	db 4 ; items
	db "GIVE@"
	db "TOSS@"
	db "SEL@"
	db "QUIT@"

Jumptable_GiveTossRegisterQuit:
	dw GiveItem
	dw TossMenu
	dw RegisterItem
	dw DoNothing ; QuitItemSubmenu

MenuHeader_HoldableItem:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 5, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING ; flags
	db 3 ; items
	db "GIVE@"
	db "TOSS@"
	db "QUIT@"

Jumptable_GiveTossQuit:
	dw GiveItem
	dw TossMenu
	dw DoNothing ; QuitItemSubmenu

UseItem:
	farcall CheckItemMenu
	ld a, [wItemAttributeValue]
	ld hl, .dw
	jmp JumpTable

.dw
; entries correspond to ITEMMENU_* constants
	dw .Oak     ; ITEMMENU_NOUSE
	dw .Oak
	dw .Oak
	dw .Oak
	dw .Current ; ITEMMENU_CURRENT
	dw .Party   ; ITEMMENU_PARTY
	dw .Field   ; ITEMMENU_CLOSE

.Oak:
	ld hl, OakThisIsntTheTimeText
	jmp Pack_PrintTextNoScroll

.Current:
	jmp DoItemEffect

.Party:
	ld a, [wPartyCount]
	and a
	jr z, .NoPokemon
	call DoItemEffect
	xor a
	ldh [hBGMapMode], a
	call Pack_InitGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_InitColors

.NoPokemon:
	ld hl, YouDontHaveAMonText
	jmp Pack_PrintTextNoScroll

.Field:
	call DoItemEffect
	ld a, [wItemEffectSucceeded]
	and a
	jr z, .Oak
	ld a, PACKSTATE_QUITRUNSCRIPT
	ld [wJumptableIndex], a
	ret

TossMenu:
	ld hl, AskThrowAwayText
	call Pack_PrintTextNoScroll
	farcall SelectQuantityToToss
	push af
	call ExitMenu
	pop af
	ret c
	call Pack_GetItemName
	ld hl, AskQuantityThrowAwayText
	call MenuTextbox
	call YesNoBox
	push af
	call ExitMenu
	pop af
	ret c
	ld hl, wNumItems
	ld a, [wCurItemQuantity]
	call TossItem
	call Pack_GetItemName
	ld hl, ThrewAwayText
	jmp Pack_PrintTextNoScroll

RegisterItem:
	farcall CheckSelectableItem
	ld a, [wItemAttributeValue]
	and a
	jr nz, .cant_register
	ld a, [wCurPocket]
	rrca
	rrca
	and REGISTERED_POCKET
	ld b, a
	ld a, [wCurItemQuantity]
	inc a
	and REGISTERED_NUMBER
	or b
	ld [wWhichRegisteredItem], a
	ld a, [wCurItem]
	ld [wRegisteredItem], a
	call Pack_GetItemName
	ld de, SFX_FULL_HEAL
	call WaitPlaySFX
	ld hl, RegisteredItemText
	jmp Pack_PrintTextNoScroll

.cant_register
	ld hl, CantRegisterText
	jmp Pack_PrintTextNoScroll

GiveItem:
	ld a, [wPartyCount]
	and a
	jr z, .NoPokemon
	ld a, [wOptions]
	push af
	res NO_TEXT_SCROLL, a
	ld [wOptions], a
	ld a, PARTYMENUACTION_GIVE_ITEM
	ld [wPartyMenuActionText], a
	call ClearBGPalettes
	farcall LoadPartyMenuGFX
	farcall InitPartyMenuWithCancel
	farcall InitPartyMenuGFX
.loop
	farcall WritePartyMenuTilemap
	farcall PlacePartyMenuText
	call WaitBGMap
	call SetDefaultBGPAndOBP
	call DelayFrame
	farcall PartyMenuSelect
	jr c, .finish
	ld a, [wCurPartySpecies]
	cp EGG
	jr nz, .give
	ld hl, .AnEggCantHoldAnItemText
	call PrintText
	jr .loop

.give
	ld a, [wJumptableIndex]
	push af
	ld a, [wPackJumptableIndex]
	push af
	call GetCurNickname
	ld hl, wStringBuffer1
	ld de, wMonOrItemNameBuffer
	ld bc, MON_NAME_LENGTH
	rst CopyBytes
	call TryGiveItemToPartymon
	pop af
	ld [wPackJumptableIndex], a
	pop af
	ld [wJumptableIndex], a
.finish
	pop af
	ld [wOptions], a
	xor a
	ldh [hBGMapMode], a
	call Pack_InitGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_InitColors

.NoPokemon:
	ld hl, YouDontHaveAMonText
	jmp Pack_PrintTextNoScroll
.AnEggCantHoldAnItemText:
	text_far _AnEggCantHoldAnItemText
	text_end

BattlePack:
	ld hl, wItemFlags
	set IN_BAG_F, [hl]
	ld hl, wOptions
	set NO_TEXT_SCROLL, [hl]
	call InitPackBuffers
.loop
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit JUMPTABLE_EXIT_F, a
	jr nz, .end
	call .RunJumptable
	call DelayFrame
	jr .loop

.end
	ld a, [wCurPocket]
	ld [wLastPocket], a
	ld hl, wOptions
	res NO_TEXT_SCROLL, [hl]
	ld hl, wItemFlags
	res IN_BAG_F, [hl]
	ret

.RunJumptable:
	ld a, [wJumptableIndex]
	ld hl, .Jumptable
	call Pack_GetJumptablePointer
	jp hl

.Jumptable:
; entries correspond to PACKSTATE_* constants
	dw .InitGFX            ;  0
	dw .InitItemsPocket    ;  1
	dw .ItemsPocketMenu    ;  2
	dw .InitBallsPocket    ;  3
	dw .BallsPocketMenu    ;  4
	dw .InitKeyItemsPocket ;  5
	dw .KeyItemsPocketMenu ;  6
	dw .InitTMHMPocket     ;  7
	dw .TMHMPocketMenu     ;  8
	dw .InitBerryPocket    ;  9
	dw .BerryPocketMenu    ; 10
	dw .InitMedicinePocket    ;  9
	dw .MedicinePocketMenu    ; 10
	dw .InitValuablePocket    ;  9
	dw .ValuablePocketMenu    ; 10
	dw Pack_QuitNoScript   ; 11
	dw Pack_QuitRunScript  ; 12

.InitGFX:
	xor a
	ldh [hBGMapMode], a
	call Pack_InitGFX
	ld a, [wPackJumptableIndex]
	ld [wJumptableIndex], a
	jmp Pack_InitColors

.InitItemsPocket:
	xor a ; ITEM_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call DrawPocketGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.ItemsPocketMenu:
	ld hl, ItemsPocketMenuHeader
	call CopyMenuHeader
	ld a, [wItemsPocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wItemsPocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wItemsPocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wItemsPocketCursor], a
	lb bc, PACKSTATE_INITTMHMPOCKET , PACKSTATE_INITBALLSPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
	jmp ItemSubmenu

.InitKeyItemsPocket:
	ld a, KEY_ITEM_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call DrawPocketGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.KeyItemsPocketMenu:
	ld hl, KeyItemsPocketMenuHeader
	call CopyMenuHeader
	ld a, [wKeyItemsPocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wKeyItemsPocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wKeyItemsPocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wKeyItemsPocketCursor], a
	lb bc, PACKSTATE_INITVALUABLEITEMSPOCKET, PACKSTATE_INITTMHMPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
	jmp ItemSubmenu

.InitTMHMPocket:
	ld a, TM_HM_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call DrawPocketGFX
	xor a
	ldh [hBGMapMode], a
	call WaitBGMap_DrawPackGFX
	ld hl, PackEmptyText
	call Pack_PrintTextNoScroll
	jmp Pack_JumptableNext

.TMHMPocketMenu:
	farcall TMHMPocket
	lb bc, PACKSTATE_INITKEYITEMSPOCKET, PACKSTATE_INITITEMSPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
	xor a
	jp TMHMSubmenu

.InitBallsPocket:
	ld a, BALL_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call DrawPocketGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.InitBerryPocket:
	ld a, BERRY_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.BerryPocketMenu:
	ld hl, BerryPocketMenuHeader
	call CopyMenuHeader
	ld a, [wBerryPocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wBerryPocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wBerryPocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wBerryPocketCursor], a
	lb bc, PACKSTATE_INITBALLSPOCKET, PACKSTATE_INITMEDICINEITEMSPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
	jp ItemSubmenu

.InitMedicinePocket:
	ld a, MEDICINE_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.MedicinePocketMenu:
	ld hl, MedicinePocketMenuHeader
	call CopyMenuHeader
	ld a, [wMedicinePocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wMedicinePocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wMedicinePocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wMedicinePocketCursor], a
	lb bc, PACKSTATE_INITBERRYPOCKET, PACKSTATE_INITVALUABLEITEMSPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
	jr ItemSubmenu

.InitValuablePocket:
	ld a, VALUABLE_POCKET
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call WaitBGMap_DrawPackGFX
	jmp Pack_JumptableNext

.ValuablePocketMenu:
	ld hl, ValuablePocketMenuHeader
	call CopyMenuHeader
	ld a, [wValuablePocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wValuablePocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wValuablePocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wValuablePocketCursor], a
	lb bc, PACKSTATE_INITMEDICINEITEMSPOCKET, PACKSTATE_INITKEYITEMSPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
	jr ItemSubmenu

.BallsPocketMenu:
	ld hl, BallsPocketMenuHeader
	call CopyMenuHeader
	ld a, [wBallsPocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wBallsPocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wBallsPocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wBallsPocketCursor], a
	lb bc, PACKSTATE_INITITEMSPOCKET, PACKSTATE_INITBERRYPOCKET ; left / right
	call Pack_InterpretJoypad
	ret c
; fallthrough
ItemSubmenu:
	farcall CheckItemContext
	ld a, [wItemAttributeValue]
TMHMSubmenu:
	and a
	jr z, .NoUse
	ld hl, .UsableMenuHeader
	ld de, .UsableJumptable
	jr .proceed

.NoUse:
	ld hl, .UnusableMenuHeader
	ld de, .UnusableJumptable
.proceed
	push de
	call LoadMenuHeader
	call VerticalMenu
	call ExitMenu
	pop hl
	ret c
	ld a, [wMenuCursorY]
	dec a
	call Pack_GetJumptablePointer
	jp hl

.UsableMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 7, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .UsableMenuData
	db 1 ; default option

.UsableMenuData:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING ; flags
	db 2 ; items
	db "USE@"
	db "QUIT@"

.UsableJumptable:
	dw .Use
	dw DoNothing ; .Quit

.UnusableMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 13, 9, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .UnusableMenuData
	db 1 ; default option

.UnusableMenuData:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING ; flags
	db 1 ; items
	db "QUIT@"

.UnusableJumptable:
	dw DoNothing ; .Quit

.Use:
	farcall CheckItemContext
	ld a, [wItemAttributeValue]
	ld hl, .ItemFunctionJumptable
	jmp JumpTable

.ItemFunctionJumptable:
; entries correspond to ITEMMENU_* constants
	dw .Oak         ; ITEMMENU_NOUSE
	dw .Oak
	dw .Oak
	dw .Oak
	dw .Unused      ; ITEMMENU_CURRENT
	dw .BattleField ; ITEMMENU_PARTY
	dw .BattleOnly  ; ITEMMENU_CLOSE

.Oak:
	ld hl, OakThisIsntTheTimeText
	jmp Pack_PrintTextNoScroll

.Unused:
	call DoItemEffect
	ld a, [wItemEffectSucceeded]
	and a
	jr nz, .ReturnToBattle
	ret

.BattleField:
	call DoItemEffect
	ld a, [wItemEffectSucceeded]
	and a
	jr nz, .quit_run_script
	xor a
	ldh [hBGMapMode], a
	call Pack_InitGFX
	call WaitBGMap_DrawPackGFX
	jmp Pack_InitColors

.ReturnToBattle:
	call ClearBGPalettes
	jr .quit_run_script

.BattleOnly:
	call DoItemEffect
	ld a, [wItemEffectSucceeded]
	and a
	jr z, .Oak
	cp $2
	jr z, .didnt_use_item
.quit_run_script
	ld a, PACKSTATE_QUITRUNSCRIPT
	ld [wJumptableIndex], a
	ret

.didnt_use_item
	xor a
	ld [wItemEffectSucceeded], a
	ret

InitPackBuffers:
	xor a
	ld [wJumptableIndex], a
	; pocket id -> jumptable index
	ld a, [wLastPocket]
	maskbits NUM_POCKETS
	ld [wCurPocket], a
	inc a
	add a
	dec a
	ld [wPackJumptableIndex], a
	xor a ; FALSE
	ld [wPackUsedItem], a
	xor a
	ld [wSwitchItem], a
	ret

DepositSellInitPackBuffers:
	xor a
	ldh [hBGMapMode], a
	ld [wJumptableIndex], a ; PACKSTATE_INITGFX
	ld [wPackJumptableIndex], a ; PACKSTATE_INITGFX
	ld [wCurPocket], a ; ITEM_POCKET
	ld [wPackUsedItem], a
	ld [wSwitchItem], a
	call Pack_InitGFX
	jmp Pack_InitColors

DepositSellPack:
.loop
	call .RunJumptable
	call DepositSellTutorial_InterpretJoypad
	jr c, .loop
	ret

.RunJumptable:
	ld a, [wJumptableIndex]
	ld hl, .Jumptable
	call Pack_GetJumptablePointer
	jp hl

.Jumptable:
; entries correspond to *_POCKET constants
	dw .ItemsPocket
	dw .BallsPocket
	dw .BerryPocket
	dw .MedicinePocket
	dw .ValuablePocket
	dw .KeyItemsPocket
	dw .TMHMPocket

.ItemsPocket:
	xor a ; ITEM_POCKET
	call InitPocket
	ld hl, PC_Mart_ItemsPocketMenuHeader
	call CopyMenuHeader
	ld a, [wItemsPocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wItemsPocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wItemsPocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wItemsPocketCursor], a
	ret

.KeyItemsPocket:
	ld a, KEY_ITEM_POCKET
	call InitPocket
	ld hl, PC_Mart_KeyItemsPocketMenuHeader
	call CopyMenuHeader
	ld a, [wKeyItemsPocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wKeyItemsPocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wKeyItemsPocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wKeyItemsPocketCursor], a
	ret

.TMHMPocket:
	ld a, TM_HM_POCKET
	call InitPocket
	call WaitBGMap_DrawPackGFX
	farcall TMHMPocket
	ld a, [wCurItem]
	ret

.BallsPocket:
	ld a, BALL_POCKET
	call InitPocket
	ld hl, PC_Mart_BallsPocketMenuHeader
	call CopyMenuHeader
	ld a, [wBallsPocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wBallsPocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wBallsPocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wBallsPocketCursor], a
	ret

.BerryPocket:
	ld a, BERRY_POCKET
	call InitPocket
	ld hl, PC_Mart_BerryPocketMenuHeader
	call CopyMenuHeader
	ld a, [wBerryPocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wBerryPocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wBerryPocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wBerryPocketCursor], a
	ret

.MedicinePocket:
	ld a, MEDICINE_POCKET
	call InitPocket
	ld hl, PC_Mart_MedicinePocketMenuHeader
	call CopyMenuHeader
	ld a, [wMedicinePocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wMedicinePocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wMedicinePocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wMedicinePocketCursor], a
	ret

.ValuablePocket:
	ld a, VALUABLE_POCKET
	call InitPocket
	ld hl, PC_Mart_ValuablePocketMenuHeader
	call CopyMenuHeader
	ld a, [wValuablePocketCursor]
	ld [wMenuCursorPosition], a
	ld a, [wValuablePocketScrollPosition]
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	ld a, [wMenuScrollPosition]
	ld [wValuablePocketScrollPosition], a
	ld a, [wMenuCursorY]
	ld [wValuablePocketCursor], a
	ret

InitPocket:
	ld [wCurPocket], a
	call ClearPocketList
	call DrawPocketName
	call DrawPocketGFX
	jmp WaitBGMap_DrawPackGFX

DepositSellTutorial_InterpretJoypad:
	ld hl, wMenuJoypad
	ld a, [hl]
	and A_BUTTON
	jr nz, .a_button
	ld a, [hl]
	and B_BUTTON
	jr nz, .b_button
	ld a, [hl]
	and D_LEFT
	jr nz, .d_left
	ld a, [hl]
	and D_RIGHT
	jr nz, .d_right
	scf
	ret

.a_button
	ld a, TRUE
	ld [wPackUsedItem], a
	and a
	ret

.b_button
	xor a ; FALSE
	ld [wPackUsedItem], a
	and a
	ret

.d_left
	ld a, [wJumptableIndex]
	dec a
	cp -1
	jr nz, .left_ok
	ld a, NUM_POCKETS - 1
.left_ok
	ld [wJumptableIndex], a
	push de
	ld de, SFX_SWITCH_POCKETS
	call PlaySFX
	pop de
	scf
	ret

.d_right
	ld a, [wJumptableIndex]
	inc a
	cp NUM_POCKETS
	jr nz, .right_ok
	xor a
.right_ok
	ld [wJumptableIndex], a
	push de
	ld de, SFX_SWITCH_POCKETS
	call PlaySFX
	pop de
	scf
	ret

TutorialPack:
	call DepositSellInitPackBuffers
	ld a, [wInputType]
	or a
	jr z, .loop
	farcall _DudeAutoInput_RightA
.loop
	call .RunJumptable
	call DepositSellTutorial_InterpretJoypad
	jr c, .loop
	xor a ; FALSE
	ld [wPackUsedItem], a
	ret

.RunJumptable:
	ld a, [wJumptableIndex]
	ld hl, .dw
	call Pack_GetJumptablePointer
	jp hl

.dw
; entries correspond to *_POCKET constants
	dw .Items
	dw .Balls
	dw .KeyItems
	dw .TMHM
	dw .Berries
	dw .Medicine
	dw .Valuable

.Items:
	xor a ; ITEM_POCKET
	ld hl, .ItemsMenuHeader
	jmp .DisplayPocket

.ItemsMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .ItemsMenuData
	db 1 ; default option

.ItemsMenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP | STATICMENU_CURSOR ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_QUANTITY ; item format
	dbw 0, wDudeNumItems
	dba PlaceMenuItemName
	dba PlaceMenuItemQuantity
	dba UpdateItemIconAndDescription

.KeyItems:
	ld a, KEY_ITEM_POCKET
	ld hl, .KeyItemsMenuHeader
	jp .DisplayPocket

.KeyItemsMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .KeyItemsMenuData
	db 1 ; default option

.KeyItemsMenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP | STATICMENU_CURSOR ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_NORMAL ; item format
	dbw 0, wDudeNumKeyItems
	dba PlaceMenuKeyItemName
	dba PlaceMenuKeyItemQuantity
	dba UpdateKeyItemDescription

.TMHM:
	ld a, TM_HM_POCKET
	call InitPocket
	call WaitBGMap_DrawPackGFX
	farcall TMHMPocket
	ld a, [wCurItem]
	ret

.Balls:
	ld a, BALL_POCKET
	ld hl, .BallsMenuHeader
	jr .DisplayPocket

.BallsMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .BallsMenuData
	db 1 ; default option

.BallsMenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP | STATICMENU_CURSOR ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_QUANTITY ; item format
	dbw 0, wDudeNumBalls
	dba PlaceMenuItemBallName
	dba PlaceMenuItemBallQuantity
	dba UpdateItemBallIconAndDescription

.Berries:
	ld a, BERRY_POCKET
	ld hl, .BerriesMenuHeader
	jr .DisplayPocket

.BerriesMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .BerriesMenuData
	db 1 ; default option

.BerriesMenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP | STATICMENU_CURSOR ; flags
	db 5, 8 ; rows, columns
	db 2 ; horizontal spacing
	dbw 0, wDudeNumBerries
	dba PlaceMenuItemName
	dba PlaceMenuItemQuantity
	dba UpdateItemDescription

.Medicine:
	ld a, MEDICINE_POCKET
	ld hl, .MedicineMenuHeader
	jr .DisplayPocket

.MedicineMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MedicineMenuData
	db 1 ; default option

.MedicineMenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP | STATICMENU_CURSOR ; flags
	db 5, 8 ; rows, columns
	db 2 ; horizontal spacing
	dbw 0, wDudeNumMedicine
	dba PlaceMenuItemName
	dba PlaceMenuItemQuantity
	dba UpdateItemDescription

.Valuable:
	ld a, VALUABLE_POCKET
	ld hl, .ValuableMenuHeader
	jr .DisplayPocket

.ValuableMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .ValuableMenuData
	db 1 ; default option

.ValuableMenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP | STATICMENU_CURSOR ; flags
	db 5, 8 ; rows, columns
	db 2 ; horizontal spacing
	dbw 0, wDudeNumValuable
	dba PlaceMenuItemName
	dba PlaceMenuItemQuantity
	dba UpdateItemDescription

.DisplayPocket:
	push hl
	call InitPocket
	pop hl
	call CopyMenuHeader
	jmp ScrollingMenu

Pack_JumptableNext:
	ld hl, wJumptableIndex
	inc [hl]
	ret

Pack_GetJumptablePointer:
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

Pack_QuitNoScript:
	ld hl, wJumptableIndex
	set JUMPTABLE_EXIT_F, [hl]
	xor a ; FALSE
	ld [wPackUsedItem], a
	ret

Pack_QuitRunScript:
	ld hl, wJumptableIndex
	set JUMPTABLE_EXIT_F, [hl]
	ld a, TRUE
	ld [wPackUsedItem], a
	ret

Pack_PrintTextNoScroll:
	ld a, [wOptions]
	push af
	set NO_TEXT_SCROLL, a
	ld [wOptions], a
	call PrintText
	pop af
	ld [wOptions], a
	ret

WaitBGMap_DrawPackGFX:
	call WaitBGMap
DrawPackGFX:
	ld a, [wCurPocket]
	maskbits NUM_POCKETS
	ld e, a
	ld d, 0
	ld a, [wBattleType]
	cp BATTLETYPE_TUTORIAL
	jr z, .male_dude
	ld a, [wPlayerGender]
	bit PLAYERGENDER_FEMALE_F, a
	jr nz, .female
.male_dude
	ld hl, PackGFXPointers
	add hl, de
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, vTiles2 tile $50
	lb bc, BANK(PackGFX), 15
	jmp Request2bpp

.female
	farjp DrawKrisPackGFX

PackGFXPointers:
	dw PackGFX + (15 tiles) * 1 ; ITEM_POCKET
	dw PackGFX + (15 tiles) * 3 ; BALL_POCKET
	dw PackGFX + (15 tiles) * 0 ; KEY_ITEM_POCKET
	dw PackGFX + (15 tiles) * 4 ; TM_HM_POCKET
	dw PackGFX + (15 tiles) * 2 ; BERRY_POCKET
	dw PackGFX + (15 tiles) * 1 ; MEDICINE_POCKET
	dw PackGFX + (15 tiles) * 1 ; VALUABLE_POCKET

Pack_InterpretJoypad:
	ld hl, wMenuJoypad
	ld a, [wSwitchItem]
	and a
	jr nz, .switching_item
	ld a, [hl]
	and A_BUTTON
	jr nz, .a_button
	ld a, [hl]
	and B_BUTTON
	jr nz, .b_button
	ld a, [hl]
	and D_LEFT
	jr nz, .d_left
	ld a, [hl]
	and D_RIGHT
	jr nz, .d_right
	ld a, [hl]
	and SELECT
	jr nz, .select
	scf
	ret

.a_button
	and a
	ret

.b_button
	ld a, PACKSTATE_QUITNOSCRIPT
	ld [wJumptableIndex], a
	scf
	ret

.d_left
	ld a, b
	ld [wJumptableIndex], a
	ld [wPackJumptableIndex], a
	push de
	ld de, SFX_SWITCH_POCKETS
	call PlaySFX
	pop de
	scf
	ret

.d_right
	ld a, c
	ld [wJumptableIndex], a
	ld [wPackJumptableIndex], a
	push de
	ld de, SFX_SWITCH_POCKETS
	call PlaySFX
	pop de
	scf
	ret

.select
	farcall SwitchItemsInBag
	ld hl, AskItemMoveText
	call Pack_PrintTextNoScroll
	scf
	ret

.switching_item
	ld a, [hl]
	and A_BUTTON | SELECT
	jr nz, .place_insert
	ld a, [hl]
	and B_BUTTON
	jr nz, .end_switch
	scf
	ret

.place_insert
	farcall SwitchItemsInBag
	ld de, SFX_SWITCH_POKEMON
	call WaitPlaySFX
	ld de, SFX_SWITCH_POKEMON
	call WaitPlaySFX
.end_switch
	xor a
	ld [wSwitchItem], a
	scf
	ret

Pack_InitGFX:
	call ClearBGPalettes
	call ClearTilemap
	call ClearSprites
	call DisableLCD
	ld hl, PackMenuGFX
	ld de, vTiles2
	ld bc, $78 tiles
	ld a, BANK(PackMenuGFX)
	call FarCopyBytes
; Background (blue if male, pink if female)
	hlcoord 0, 1
	ld bc, 11 * SCREEN_WIDTH
	ld a, $29
	rst ByteFill
; This is where the items themselves will be listed.
	hlcoord 5, 1
	lb bc, 11, 15
	call ClearBox
	hlcoord 0, 0
	ld a, $28
	ld c, SCREEN_WIDTH
.loop
	ld [hli], a
	dec c
	jr nz, .loop
	call DrawPocketName
	call DrawPocketGFX
	call PlacePackGFX
; Place the item icon border
	hlcoord 0, 7
	ld de, .ItemIconString
	ld bc, SCREEN_WIDTH - 5
.loop2
	ld a, [de]
	and a
	jr nz, .continue
	add hl, bc
	jr .next
.continue
	cp $ff
	jr z, .ok2
	ld [hli], a
.next
	inc de
	jr .loop2
.ok2
; Place the textbox for displaying the item description
	hlcoord 0, SCREEN_HEIGHT - 4 - 2
	lb bc, 4, SCREEN_WIDTH - 2
	call Textbox
	call EnableLCD
	jmp DrawPackGFX
	
.ItemIconString:
	db $BA, $BB, $BB, $BB, $BC, $0
	db $BD, $1F, $20, $21, $BD, $0
	db $BD, $22, $23, $24, $BD, $0
	db $BD, $25, $26, $27, $BD, $0
	db $BE, $BB, $BB, $BB, $BF, $ff

PlacePackGFX:
	hlcoord 0, 4
	ld a, $50
	ld de, SCREEN_WIDTH - 5
	ld b, 3
.row
	ld c, 5
.column
	ld [hli], a
	inc a
	dec c
	jr nz, .column
	add hl, de
	dec b
	jr nz, .row
	ret

DrawPocketGFX:
	ld a, [wCurPocket]
	; * 6
	push bc
	ld c, 8
	ld b, a
.multloop
	add b
	dec c
	jr nz, .multloop
	pop bc
; done
	ld d, 0
	ld e, a
	ld hl, .tilemap
	add hl, de
	ld d, h
	ld e, l
	hlcoord 9, 0
	ld b, 9
.col
	ld a, [de]
	inc de
	ld [hli], a
	dec b
	jr nz, .col
	ret

.tilemap
	; Regular Items
	db $2d, $4b, $2c, $2c, $2c, $2c, $2c, $2c, $2e
	; Balls
	db $2d, $2c, $4c, $2c, $2c, $2c, $2c, $2c, $2e
	; Key Items
	db $2d, $2c, $2c, $2c, $2c, $2c, $4e, $2c, $2e
	; TMs
	db $2d, $2c, $2c, $2c, $2c, $2c, $2c, $4f, $2e
	; Berries
	db $2d, $2c, $2c, $4d, $2c, $2c, $2c, $2c, $2e
	; Medicine
	db $2d, $2c, $2c, $2c, $45, $2c, $2c, $2c, $2e
	; Treasure
	db $2d, $2c, $2c, $2c, $2c, $46, $2c, $2c, $2e

DrawPocketName:
	ld a, [wCurPocket]
	; * 4
	push bc
	ld c, 4
	ld b, a
.multloop
	add b
	dec c
	jr nz, .multloop
	pop bc
; done
	ld d, 0
	ld e, a
	ld hl, .tilemap
	add hl, de
	ld d, h
	ld e, l
	hlcoord 0, 0
	ld c, 1
.row
	ld b, 5
.col
	ld a, [de]
	inc de
	ld [hli], a
	dec b
	jr nz, .col
	ld a, c
	ld c, SCREEN_WIDTH - 5
	add hl, bc
	ld c, a
	dec c
	jr nz, .row
	ret

.tilemap
; ITEM_POCKET
	; db $00, $04, $04, $04, $01 ; top border
	db $06, $07, $08, $09, $0a ; Items
	; db $02, $05, $05, $05, $03 ; bottom border
; BALL_POCKET
	; db $00, $04, $04, $04, $01 ; top border
	db $15, $16, $17, $18, $19 ; Balls
	; db $02, $05, $05, $05, $03 ; bottom border
; KEY_ITEM_POCKET
	; db $00, $04, $04, $04, $01 ; top border
	db $0b, $0c, $0d, $0e, $0f ; Key Items
	; db $02, $05, $05, $05, $03 ; bottom border
; TM_HM_POCKET
	; db $00, $04, $04, $04, $01 ; top border
	db $10, $11, $12, $13, $14 ; TM/HM
	; db $02, $05, $05, $05, $03 ; bottom border
; BERRY_POCKET
	db $1a, $1b, $1c, $1d, $1e
; MEDICINE_POCKET
	db $35, $36, $37, $38, $39
; VALUABLE_POCKET
	db $3a, $3b, $3c, $3d, $3e

Pack_GetItemName:
	ld a, [wCurItem]
	ld [wNamedObjectIndex], a
	call GetItemName
	jmp CopyName1

ClearPocketList:
	hlcoord 5, 2
	lb bc, 10, SCREEN_WIDTH - 5
	jmp ClearBox

Pack_InitColors:
	call WaitBGMap
	ld b, SCGB_PACKPALS
	call GetSGBLayout
	call SetDefaultBGPAndOBP
	jmp DelayFrame

ItemsPocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP | STATICMENU_CURSOR ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_16BIT_QUANTITY ; item format
	dbw 0, wNumItems
	dba PlaceMenuItemName
	dba PlaceMenuItemQuantity
	dba UpdateItemIconAndDescription

PC_Mart_ItemsPocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_QUANTITY ; item format
	dbw 0, wNumItems
	dba PlaceMenuItemName
	dba PlaceMenuItemQuantity
	dba UpdateItemIconAndDescription

KeyItemsPocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP | STATICMENU_CURSOR ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_NORMAL ; item format
	dbw 0, wNumKeyItems
	dba PlaceMenuKeyItemName
	dba PlaceMenuKeyItemQuantity
	dba UpdateKeyItemIconAndDescription

PC_Mart_KeyItemsPocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_NORMAL ; item format
	dbw 0, wNumKeyItems
	dba PlaceMenuKeyItemName
	dba PlaceMenuKeyItemQuantity
	dba UpdateKeyItemIconAndDescription

BallsPocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP | STATICMENU_CURSOR ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_QUANTITY ; item format
	dbw 0, wNumBalls
	dba PlaceMenuItemBallName
	dba PlaceMenuItemBallQuantity
	dba UpdateItemBallIconAndDescription

PC_Mart_BallsPocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_QUANTITY ; item format
	dbw 0, wNumBalls
	dba PlaceMenuItemBallName
	dba PlaceMenuItemBallQuantity
	dba UpdateItemBallIconAndDescription

BerryPocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP | STATICMENU_CURSOR ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_QUANTITY ; item format
	dbw 0, wNumBerries
	dba PlaceMenuItemBerryName
	dba PlaceMenuItemBerryQuantity
	dba UpdateBerryIconAndDescription

PC_Mart_BerryPocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_QUANTITY ; item format
	dbw 0, wNumBerries
	dba PlaceMenuItemBerryName
	dba PlaceMenuItemBerryQuantity
	dba UpdateBerryIconAndDescription

MedicinePocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP | STATICMENU_CURSOR ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_QUANTITY ; item format
	dbw 0, wNumMedicine
	dba PlaceMenuItemMedicineName
	dba PlaceMenuItemMedicineQuantity
	dba UpdateMedicineIconAndDescription

PC_Mart_MedicinePocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_QUANTITY ; item format
	dbw 0, wNumMedicine
	dba PlaceMenuItemMedicineName
	dba PlaceMenuItemMedicineQuantity
	dba UpdateMedicineIconAndDescription

ValuablePocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP | STATICMENU_CURSOR ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_QUANTITY ; item format
	dbw 0, wNumValuable
	dba PlaceMenuItemValuableName
	dba PlaceMenuItemValuableQuantity
	dba UpdateValuableIconAndDescription

PC_Mart_ValuablePocketMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 7, 1, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_ENABLE_SELECT | STATICMENU_ENABLE_LEFT_RIGHT | STATICMENU_ENABLE_START | STATICMENU_WRAP ; flags
	db 5, 8 ; rows, columns
	db SCROLLINGMENU_ITEMS_QUANTITY ; item format
	dbw 0, wNumValuable
	dba PlaceMenuItemValuableName
	dba PlaceMenuItemValuableQuantity
	dba UpdateValuableIconAndDescription

AskThrowAwayText:
	text_far _AskThrowAwayText
	text_end

AskQuantityThrowAwayText:
	text_far _AskQuantityThrowAwayText
	text_end

ThrewAwayText:
	text_far _ThrewAwayText
	text_end

OakThisIsntTheTimeText:
	text_far _OakThisIsntTheTimeText
	text_end

YouDontHaveAMonText:
	text_far _YouDontHaveAMonText
	text_end

RegisteredItemText:
	text_far _RegisteredItemText
	text_end

CantRegisterText:
	text_far _CantRegisterText
	text_end

AskItemMoveText:
	text_far _AskItemMoveText
	text_end

PackEmptyText:
	text_far _PackEmptyText
	text_end

PackMenuGFX:
INCBIN "gfx/pack/pack_menu.2bpp"
PackGFX:
INCBIN "gfx/pack/pack.2bpp"

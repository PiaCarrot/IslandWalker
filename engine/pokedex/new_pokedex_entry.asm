NewPokedexEntry:
	ldh a, [hMapAnims]
	push af
	xor a
	ldh [hMapAnims], a
	call LowVolume
	call ClearBGPalettes
	call ClearTilemap
	call UpdateSprites
	call ClearSprites
	ld a, [wPokedexStatus]
	push af
	ldh a, [hSCX]
	add POKEDEX_SCX
	ldh [hSCX], a
	xor a
	ld [wPokedexStatus], a
	call _NewPokedexEntry
	call WaitPressAorB_BlinkCursor
	ld a, 1 ; page 2
	ld [wPokedexStatus], a
	farcall DisplayDexEntry
	call WaitPressAorB_BlinkCursor
	pop af
	ld [wPokedexStatus], a
	call MaxVolume
	ld c, 15
	call FadeToWhite
	ldh a, [hSCX]
	add -POKEDEX_SCX
	ldh [hSCX], a
	call .ReturnFromDexRegistration
	pop af
	ldh [hMapAnims], a
	ret

.ReturnFromDexRegistration:
	call ClearTilemap
	call LoadFontsExtra
	call LoadStandardFont
	call Pokedex_PlaceFrontpicTopLeftCorner
	call WaitBGMap2
	farcall GetEnemyMonIVs
	ld a, [hli]
	ld [wTempMonIVs], a
	ld a, [hli]
	ld [wTempMonIVs + 1], a
	ld a, [hli]
	ld [wTempMonIVs + 2], a
	ld a, [hli]
	ld [wTempMonIVs + 3], a
	ld b, SCGB_TRAINER_OR_MON_FRONTPIC_PALS
	call GetSGBLayout
	jmp SetDefaultBGPAndOBP

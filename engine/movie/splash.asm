SplashScreen:
; Play the copyright screen and GameFreak Presents sequence.
; Return carry if user cancels animation by pressing a button.

; Reinitialize everything
	ld de, MUSIC_NONE
	call PlayMusic
	call ClearTilemap
	ld a, HIGH(vBGMap0)
	ldh [hBGMapAddress + 1], a
	xor a ; LOW(vBGMap0)
	ldh [hBGMapAddress], a
	ldh [hJoyDown], a
	ldh [hSCX], a
	ldh [hSCY], a
	ld a, SCREEN_HEIGHT_PX
	ldh [hWY], a
	call WaitBGMap
	ld c, 30
	call DelayFrames
	xor a ; FALSE
	ld [wGameLogicPaused], a
; Stop here if not in GBC mode
	farcall GBCOnlyScreen
	ld hl, ProtostarLogoPalettes
	ld de, wBGPals1
	ld bc, 1 palettes
	call FarCopyColorWRAM
	ld c, 10
	call DelayFrames

ProtostarLogoPlay:
; Play GameFreak logo animation
	call DisableLCD
    ; Load tile data
    ld hl, ProtostarLogoGFX
	ld de, vTiles2
	call Decompress
    ; Load tilemap data
    ld hl, ProtostarLogoTilemap
	decoord 0, 0
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	rst CopyBytes
	call EnableLCD
; Update palette colors
	ld c, 30
	call DelayFrames
	ld hl, ProtostarLogoPalettes
	ld de, wBGPals1
	ld bc, 1 palettes
	call FarCopyColorWRAM
	ld c, 31
	call FadePalettes
	ld de, MUSIC_MYSTICALMAN_ENCOUNTER
	call PlayMusic
.loop
	call JoyTextDelay
	ldh a, [hJoyLast]
	ld b, a
	and A_BUTTON
	jr nz, .done
	jr .loop
.done
	ld de, SFX_TWINKLE
	call PlaySFX
	ld a, 4 ; fade time
	ld [wMusicFade], a
	ld de, MUSIC_NONE
	ld a, e
	ld [wMusicFadeID], a
	ld a, d
	ld [wMusicFadeID + 1], a
	call FadeToBlack
	ld c, 10
	call DelayFrames
	call GameFreakPresentsEnd
	and a
	ret

GameFreakPresentsEnd:
	farcall ClearSpriteAnims
	call ClearTilemap
	call ClearSprites
	ld c, 16
	jmp DelayFrames


ProtostarLogoGFX:
INCBIN "gfx/splash/splash.2bpp.lz"

ProtostarLogoTilemap:
INCBIN "gfx/splash/splash.tilemap"

ProtostarLogoPalettes:
INCLUDE "gfx/splash/splash.pal"

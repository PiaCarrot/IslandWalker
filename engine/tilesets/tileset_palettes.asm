LoadSpecialMapPalette:
	call GetMapTimeOfDay
	bit IN_DARKNESS_F, a
	jr z, .not_dark
	ld a, [wStatusFlags]
	bit STATUSFLAGS_FLASH_F, a
	jr z, .darkness

.not_dark
	ld a, [wMapTileset]
	cp TILESET_POKECOM_CENTER
	jr z, .pokecom_2f
	cp TILESET_LAB
	jr z, .lab
	cp TILESET_BEACH_HOUSE
	jr z, .beach_house
	jr .do_nothing

.darkness
	call LoadDarknessPalette
	scf
	ret

.pokecom_2f
	call LoadPokeComPalette
	scf
	ret
	
.lab
	call LoadLabPalette
	scf
	ret
	
.beach_house
	call LoadBeachHousePalette
	scf
	ret

.do_nothing
	and a
	ret

LoadDarknessPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, DarknessPalette
	ld bc, 8 palettes
	jmp FarCopyWRAM

DarknessPalette:
INCLUDE "gfx/tilesets/darkness.pal"

LoadPokeComPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, PokeComPalette
	ld bc, 8 palettes
	jmp FarCopyWRAM

PokeComPalette:
INCLUDE "gfx/tilesets/pokecom_center.pal"

LoadLabPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, LabPalette
	ld bc, 8 palettes
	jmp FarCopyWRAM
	
LabPalette:
INCLUDE "gfx/tilesets/lab.pal"

LoadBeachHousePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, BeachHousePalette
	ld bc, 8 palettes
	jmp FarCopyWRAM
	
BeachHousePalette:
INCLUDE "gfx/tilesets/beach_house.pal"

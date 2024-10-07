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
	cp TILESET_MIKAN_GYM
	jr z, .mikan_gym
	cp TILESET_GATE
	jr z, .check2f
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
	
.mikan_gym
	call LoadMikanGymPalette
	scf
	ret
	
.check2f
	ld a, [wMapNumber]
	cp MAP_TANGELO_JUNGLE_ROUTE_51_GATE_2F
	jr z, .colorglass
	jr .do_nothing
	
.colorglass
	ld hl, Gate2FPalette
	jr z, LoadEightTimeOfDayBGPalettes
	ret

.do_nothing
	and a
	ret
	
LoadEightTimeOfDayBGPalettes:
	ld a, [wTimeOfDayPal]
	and 3
	ld bc, 8 palettes
	rst AddNTimes
LoadEightBGPalettes:
	ld de, wBGPals1
	ld bc, 8 palettes
	call FarCopyColorWRAM
	scf
	ret
	
LoadEightTimeOfDayOBPalettes:
	ld a, [wTimeOfDayPal]
	and 3
	ld bc, 8 palettes
	rst AddNTimes
LoadEightOBPalettes:
	ld de, wOBPals1
	ld bc, 8 palettes
	call FarCopyColorWRAM
	scf
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

LoadMikanGymPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MikanGymPalette
	ld bc, 8 palettes
	jmp FarCopyWRAM
	
MikanGymPalette:
INCLUDE "gfx/tilesets/mikan_gym.pal"

Gate2FPalette:
INCLUDE "gfx/tilesets/gate2f.pal"

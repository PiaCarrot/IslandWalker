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
	cp TILESET_ROCKET_HIDEOUT
	jr z, .rocket_hideout
	cp TILESET_MATEOS_HOUSE
	jr z, .mateos_house
	cp TILESET_CRYSTAL_CAVE
	jr z, .crystal_cave
	cp TILESET_PLAYERS_HOUSE
	jr z, .check_for_curio_shop
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
	ld a, [wMapGroup]
	cp GROUP_ABANDONED_HOUSE
	jr nz, .loadbeachhousepal
	ld a, [wMapNumber]
	cp MAP_ABANDONED_HOUSE
	jr z, .do_nothing
.loadbeachhousepal
	call LoadBeachHousePalette
	scf
	ret
	
.mikan_gym
	call LoadMikanGymPalette
	scf
	ret
	
.rocket_hideout
	call LoadRocketHideoutPalette
	scf
	ret
	
.mateos_house
	call LoadMateosHousePalette
	scf
	ret
	
.crystal_cave
	call LoadCrystalCavePalette
	scf
	ret
	
.check_for_curio_shop
	ld a, [wMapGroup]
	cp GROUP_CURIO_SHOP
	jr nz, .do_nothing
	ld a, [wMapNumber]
	cp MAP_CURIO_SHOP
	jr nz, .do_nothing
	call LoadCurioShopPal
	scf
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

LoadRocketHideoutPalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, RocketHideoutPalette
	ld bc, 8 palettes
	jmp FarCopyWRAM
	
RocketHideoutPalette:
INCLUDE "gfx/tilesets/rocket_hideout.pal"

LoadMateosHousePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, MateosHousePalette
	ld bc, 8 palettes
	jmp FarCopyWRAM
	
MateosHousePalette:
INCLUDE "gfx/tilesets/mateos_house.pal"

LoadCrystalCavePalette:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, CrystalCavePalette
	ld bc, 8 palettes
	jmp FarCopyWRAM
	
CrystalCavePalette:
INCLUDE "gfx/tilesets/crystal_cave.pal"

LoadCurioShopPal:
	ld a, BANK(wBGPals1)
	ld de, wBGPals1
	ld hl, CurioShopPalette
	ld bc, 8 palettes
	jmp FarCopyWRAM
	
CurioShopPalette:
INCLUDE "gfx/tilesets/curio_shop.pal"

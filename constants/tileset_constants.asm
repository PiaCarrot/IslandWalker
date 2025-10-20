; Tilesets indexes (see data/tilesets.asm)
	const_def 1
	const TILESET_POKECENTER
	const TILESET_MART
	const TILESET_GATE
	const TILESET_POKECOM_CENTER
	const TILESET_PLAYERS_HOUSE
	const TILESET_PLAYERS_ROOM
	const TILESET_VALENCIA_MANDARIN_NORTH
	const TILESET_LAB
	const TILESET_CAVE_1
	const TILESET_MIKAN_ISLAND
	const TILESET_BEACH_HOUSE
	const TILESET_MIKAN_GYM
	const TILESET_ROCKET_HIDEOUT
	const TILESET_MORO_ISLAND
	const TILESET_MATEOS_HOUSE
	const TILESET_CRYSTAL_CAVE
	const TILESET_KINNOW
	const TILESET_UNDERWATER
DEF NUM_TILESETS EQU const_value - 1

; wTileset struct size
DEF TILESET_LENGTH EQU 18

; roof length (see gfx/tilesets/roofs)
DEF ROOF_LENGTH EQU 9

; bg palette values (see gfx/tilesets/*_palette_map.asm)
; TilesetBGPalette indexes (see gfx/tilesets/bg_tiles.pal)
	const_def
	const PAL_BG_GRAY   ; 0
	const PAL_BG_RED    ; 1
	const PAL_BG_GREEN  ; 2
	const PAL_BG_WATER  ; 3
	const PAL_BG_YELLOW ; 4
	const PAL_BG_BROWN  ; 5
	const PAL_BG_ROOF   ; 6
	const PAL_BG_TEXT   ; 7

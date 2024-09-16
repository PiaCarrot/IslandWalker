MACRO tileset
	dba \1vTiles2GFX
	dw \1vTiles4GFX, \1vTiles5GFX
	dba \1Meta, \1Coll, \1Attr
	dw \1Anim
ENDM

; Associated data:
; - The *GFX, *Meta, and *Coll are defined in gfx/tilesets.asm
; - The *PalMap are defined in gfx/tileset_palette_maps.asm
; - The *Anim are defined in engine/tilesets/tileset_anims.asm

Tilesets::
; entries correspond to TILESET_* constants (see constants/tileset_constants.asm)
	table_width TILESET_LENGTH, Tilesets
	tileset Tileset0
	tileset TilesetPokecenter
	tileset TilesetMart
	tileset TilesetGate
	tileset TilesetPokeComCenter
	tileset TilesetPlayersHouse
	tileset TilesetPlayersRoom
	tileset TilesetValenciaMandarinNorth
	tileset TilesetLab
	tileset TilesetCave1
	tileset TilesetMikanIsland
	tileset TilesetBeachHouse
	assert_table_length NUM_TILESETS + 1

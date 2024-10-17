MACRO tilecoll
; used in data/tilesets/*_collision.asm
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM


SECTION "Tileset Data 1", ROMX

Tileset0vTiles2GFX::
TilesetPlayersRoomvTiles2GFX::
INCBIN "gfx/tilesets/players_room.2bpp.vtiles2.lz"

Tileset0vTiles5GFX::
TilesetPlayersRoomvTiles5GFX::
INCBIN "gfx/tilesets/players_room.2bpp.vtiles5.lz"

Tileset0vTiles4GFX::
TilesetPlayersRoomvTiles4GFX::
INCBIN "gfx/tilesets/players_room.2bpp.vtiles4.lz"

Tileset0Meta::
TilesetPlayersRoomMeta::
INCBIN "data/tilesets/players_room_metatiles.bin.lz"

Tileset0Coll::
TilesetPlayersRoomColl::
INCLUDE "data/tilesets/players_room_collision.asm"


TilesetMikanGymvTiles2GFX::
INCBIN "gfx/tilesets/mikan_gym.2bpp.vtiles2.lz"

TilesetMikanGymvTiles5GFX::
INCBIN "gfx/tilesets/mikan_gym.2bpp.vtiles5.lz"

TilesetMikanGymvTiles4GFX::
INCBIN "gfx/tilesets/mikan_gym.2bpp.vtiles4.lz"

TilesetMikanGymAttr::
INCBIN "data/tilesets/mikan_gym_attributes.bin.lz"

TilesetMikanGymMeta::
INCBIN "data/tilesets/mikan_gym_metatiles.bin.lz"

TilesetMikanGymColl::
INCLUDE "data/tilesets/mikan_gym_collision.asm"


SECTION "Tileset Data 2", ROMX

TilesetPokecentervTiles2GFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.vtiles2.lz"

TilesetPokecentervTiles5GFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.vtiles5.lz"

TilesetPokecentervTiles4GFX::
INCBIN "gfx/tilesets/pokecenter.2bpp.vtiles4.lz"

TilesetPokecenterMeta::
INCBIN "data/tilesets/pokecenter_metatiles.bin.lz"

TilesetPokecenterColl::
INCLUDE "data/tilesets/pokecenter_collision.asm"

TilesetPlayersHousevTiles2GFX::
INCBIN "gfx/tilesets/players_house.2bpp.vtiles2.lz"

TilesetPlayersHousevTiles5GFX::
INCBIN "gfx/tilesets/players_house.2bpp.vtiles5.lz"

TilesetPlayersHousevTiles4GFX::
INCBIN "gfx/tilesets/players_house.2bpp.vtiles4.lz"

TilesetPlayersHouseMeta::
INCBIN "data/tilesets/players_house_metatiles.bin.lz"

TilesetPlayersHouseColl::
INCLUDE "data/tilesets/players_house_collision.asm"

SECTION "Tileset Data 3", ROMX

TilesetLabvTiles2GFX::
INCBIN "gfx/tilesets/lab.2bpp.vtiles2.lz"

TilesetLabvTiles5GFX::
INCBIN "gfx/tilesets/lab.2bpp.vtiles5.lz"

TilesetLabvTiles4GFX::
INCBIN "gfx/tilesets/lab.2bpp.vtiles4.lz"

TilesetLabMeta::
INCBIN "data/tilesets/lab_metatiles.bin.lz"

TilesetLabColl::
INCLUDE "data/tilesets/lab_collision.asm"

TilesetMartvTiles2GFX::
INCBIN "gfx/tilesets/mart.2bpp.vtiles2.lz"

TilesetMartvTiles5GFX::
INCBIN "gfx/tilesets/mart.2bpp.vtiles5.lz"

TilesetMartvTiles4GFX::
INCBIN "gfx/tilesets/mart.2bpp.vtiles4.lz"

TilesetMartMeta::
INCBIN "data/tilesets/mart_metatiles.bin.lz"

TilesetMartColl::
INCLUDE "data/tilesets/mart_collision.asm"

SECTION "Tileset Data 4", ROMX

SECTION "Tileset Data 5", ROMX

TilesetPokeComCentervTiles2GFX::
INCBIN "gfx/tilesets/pokecom_center.2bpp.vtiles2.lz"

TilesetPokeComCentervTiles5GFX::
INCBIN "gfx/tilesets/pokecom_center.2bpp.vtiles5.lz"

TilesetPokeComCentervTiles4GFX::
INCBIN "gfx/tilesets/pokecom_center.2bpp.vtiles4.lz"

TilesetPokeComCenterMeta::
INCBIN "data/tilesets/pokecom_center_metatiles.bin.lz"

TilesetPokeComCenterColl::
INCLUDE "data/tilesets/pokecom_center_collision.asm"

TilesetGatevTiles2GFX::
INCBIN "gfx/tilesets/gate.2bpp.vtiles2.lz"

TilesetGatevTiles5GFX::
INCBIN "gfx/tilesets/gate.2bpp.vtiles5.lz"

TilesetGatevTiles4GFX::
INCBIN "gfx/tilesets/gate.2bpp.vtiles4.lz"

TilesetGateMeta::
INCBIN "data/tilesets/gate_metatiles.bin.lz"

TilesetGateColl::
INCLUDE "data/tilesets/gate_collision.asm"

SECTION "Tileset Data 6", ROMX

SECTION "Tileset Data 7", ROMX

SECTION "Tileset Data 8", ROMX

TilesetBeachHouseAttr::
INCBIN "data/tilesets/beach_house_attributes.bin.lz"

TilesetBeachHouseMeta::
INCBIN "data/tilesets/beach_house_metatiles.bin.lz"

TilesetBeachHouseColl::
INCLUDE "data/tilesets/beach_house_collision.asm"

SECTION "Tileset Data 9", ROMX

Tileset0Attr::
TilesetPlayersHouseAttr::
INCBIN "data/tilesets/players_house_attributes.bin.lz"

TilesetPokecenterAttr::
INCBIN "data/tilesets/pokecenter_attributes.bin.lz"

TilesetGateAttr::
INCBIN "data/tilesets/gate_attributes.bin.lz"

TilesetMartAttr::
INCBIN "data/tilesets/mart_attributes.bin.lz"

TilesetPlayersRoomAttr::
INCBIN "data/tilesets/players_room_attributes.bin.lz"

TilesetPokeComCenterAttr::
INCBIN "data/tilesets/pokecom_center_attributes.bin.lz"


SECTION "Tileset Data 10", ROMX

TilesetBeachHousevTiles2GFX::
INCBIN "gfx/tilesets/beach_house.2bpp.vtiles2.lz"

TilesetBeachHousevTiles5GFX::
INCBIN "gfx/tilesets/beach_house.2bpp.vtiles5.lz"

TilesetBeachHousevTiles4GFX::
INCBIN "gfx/tilesets/beach_house.2bpp.vtiles4.lz"

SECTION "Tileset Data 11", ROMX

TilesetCave1vTiles2GFX::
INCBIN "gfx/tilesets/cave_1.2bpp.vtiles2.lz"

TilesetCave1vTiles5GFX::
INCBIN "gfx/tilesets/cave_1.2bpp.vtiles5.lz"

TilesetCave1vTiles4GFX::
INCBIN "gfx/tilesets/cave_1.2bpp.vtiles4.lz"

TilesetCave1Attr::
INCBIN "data/tilesets/cave_1_attributes.bin.lz"

TilesetCave1Meta::
INCBIN "data/tilesets/cave_1_metatiles.bin.lz"

TilesetCave1Coll::
INCLUDE "data/tilesets/cave_1_collision.asm"

TilesetMikanIslandvTiles2GFX::
INCBIN "gfx/tilesets/mikan_island.2bpp.vtiles2.lz"

TilesetMikanIslandvTiles5GFX::
INCBIN "gfx/tilesets/mikan_island.2bpp.vtiles5.lz"

TilesetMikanIslandvTiles4GFX::
INCBIN "gfx/tilesets/mikan_island.2bpp.vtiles4.lz"

TilesetMikanIslandAttr::
INCBIN "data/tilesets/mikan_island_attributes.bin.lz"

TilesetMikanIslandMeta::
INCBIN "data/tilesets/mikan_island_metatiles.bin.lz"

TilesetMikanIslandColl::
INCLUDE "data/tilesets/mikan_island_collision.asm"

SECTION "Tileset Data 12", ROMX

TilesetValenciaMandarinNorthvTiles2GFX::
INCBIN "gfx/tilesets/valencia_mandarin_north.2bpp.vtiles2.lz"

TilesetValenciaMandarinNorthvTiles5GFX::
INCBIN "gfx/tilesets/valencia_mandarin_north.2bpp.vtiles5.lz"

TilesetValenciaMandarinNorthvTiles4GFX::
INCBIN "gfx/tilesets/valencia_mandarin_north.2bpp.vtiles4.lz"

TilesetValenciaMandarinNorthAttr::
INCBIN "data/tilesets/valencia_mandarin_north_attributes.bin.lz"

TilesetValenciaMandarinNorthMeta::
INCBIN "data/tilesets/valencia_mandarin_north_metatiles.bin.lz"

TilesetValenciaMandarinNorthColl::
INCLUDE "data/tilesets/valencia_mandarin_north_collision.asm"

TilesetRocketHideoutvTiles2GFX::
INCBIN "gfx/tilesets/rocket_hideout.2bpp.vtiles2.lz"

TilesetRocketHideoutvTiles5GFX::
INCBIN "gfx/tilesets/rocket_hideout.2bpp.vtiles5.lz"

TilesetRocketHideoutvTiles4GFX::
INCBIN "gfx/tilesets/rocket_hideout.2bpp.vtiles4.lz"

TilesetRocketHideoutAttr::
INCBIN "data/tilesets/rocket_hideout_attributes.bin.lz"

TilesetRocketHideoutMeta::
INCBIN "data/tilesets/rocket_hideout_metatiles.bin.lz"

TilesetRocketHideoutColl::
INCLUDE "data/tilesets/rocket_hideout_collision.asm"

TilesetLabAttr::
INCBIN "data/tilesets/lab_attributes.bin.lz"

SECTION "Tileset Data 13", ROMX

TilesetMoroIslandvTiles2GFX::
INCBIN "gfx/tilesets/moro_island.2bpp.vtiles2.lz"

TilesetMoroIslandvTiles5GFX::
INCBIN "gfx/tilesets/moro_island.2bpp.vtiles5.lz"

TilesetMoroIslandvTiles4GFX::
INCBIN "gfx/tilesets/moro_island.2bpp.vtiles4.lz"

TilesetMoroIslandAttr::
INCBIN "data/tilesets/moro_island_attributes.bin.lz"

TilesetMoroIslandMeta::
INCBIN "data/tilesets/moro_island_metatiles.bin.lz"

TilesetMoroIslandColl::
INCLUDE "data/tilesets/moro_island_collision.asm"

TilesetMateosHousevTiles2GFX::
INCBIN "gfx/tilesets/mateos_house.2bpp.vtiles2.lz"

TilesetMateosHousevTiles5GFX::
INCBIN "gfx/tilesets/mateos_house.2bpp.vtiles5.lz"

TilesetMateosHousevTiles4GFX::
INCBIN "gfx/tilesets/mateos_house.2bpp.vtiles4.lz"

TilesetMateosHouseAttr::
INCBIN "data/tilesets/mateos_house_attributes.bin.lz"

TilesetMateosHouseMeta::
INCBIN "data/tilesets/mateos_house_metatiles.bin.lz"

TilesetMateosHouseColl::
INCLUDE "data/tilesets/mateos_house_collision.asm"
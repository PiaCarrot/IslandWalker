MACRO map
;\1: map name: for the MapAttributes pointer (see data/maps/attributes.asm)
;\2: tileset: a TILESET_* constant
;\3: environment: TOWN, ROUTE, INDOOR, CAVE, ENVIRONMENT_5, GATE, or DUNGEON
;\4: location: a LANDMARK_* constant
;\5: music: a MUSIC_* constant
;\6: phone service flag: TRUE to prevent phone calls
;\7: time of day: a PALETTE_* constant
;\8: fishing group: a FISHGROUP_* constant
	db BANK(\1_MapAttributes), \2, \3
	dw \1_MapAttributes
	db \4, \5
	dn \6, \7
	db \8
ENDM

MapGroupPointers::
; pointers to the first map of each map group
	table_width 2, MapGroupPointers
	dw MapGroup_Valencia     ; 24
	dw MapGroup_Tangelo       ;  4
	dw MapGroup_Mikan       ;  4
	assert_table_length NUM_MAP_GROUPS

MapGroup_Valencia:
	table_width MAP_LENGTH, MapGroup_Valencia
	map PlayersHouse1F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_VALENCIA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersHouse2F, TILESET_PLAYERS_ROOM, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_VALENCIA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map ValenciaIsland, TILESET_VALENCIA_MANDARIN_NORTH, TOWN, LANDMARK_NEW_BARK_TOWN, MUSIC_VALENCIA_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map IvysLab, TILESET_LAB, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_RIDING_LAPRAS, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map IvysLabB1, TILESET_LAB, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_RIDING_LAPRAS, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map ValenciaNeighborHouse, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_VALENCIA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map IvysHouse, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_VALENCIA_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route49, TILESET_VALENCIA_MANDARIN_NORTH, ROUTE, LANDMARK_ROUTE_29, MUSIC_STARTER_ORANGE_ROUTE, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route49North, TILESET_VALENCIA_MANDARIN_NORTH, ROUTE, LANDMARK_ROUTE_29, MUSIC_STARTER_ORANGE_ROUTE, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Pokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_SPECIAL, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TradeCenter, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Colosseum, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TimeCapsule, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_VALENCIA_MAPS
	
MapGroup_Tangelo:
	table_width MAP_LENGTH, MapGroup_Tangelo
	map TangeloIsland, TILESET_VALENCIA_MANDARIN_NORTH, TOWN, LANDMARK_CHERRYGROVE_CITY, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map AlteringCave, TILESET_CAVE_1, CAVE, LANDMARK_CHERRYGROVE_CITY, MUSIC_MT_MOON, FALSE, PALETTE_NITE | IN_DARKNESS, FISHGROUP_OCEAN
	map TangeloIslandNorthHouse, TILESET_BEACH_HOUSE, INDOOR, LANDMARK_CHERRYGROVE_CITY, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TangeloIslandEastHouse, TILESET_BEACH_HOUSE, INDOOR, LANDMARK_CHERRYGROVE_CITY, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TangeloIslandWestHouse, TILESET_BEACH_HOUSE, INDOOR, LANDMARK_CHERRYGROVE_CITY, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TangeloIslandSouthHouse, TILESET_BEACH_HOUSE, INDOOR, LANDMARK_CHERRYGROVE_CITY, MUSIC_CHERRYGROVE_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TangeloIslandPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_CHERRYGROVE_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TangeloIslandPokemart, TILESET_MART, INDOOR, LANDMARK_CHERRYGROVE_CITY, MUSIC_POKEMON_MART, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map Route50, TILESET_VALENCIA_MANDARIN_NORTH, ROUTE, LANDMARK_ROUTE_30, MUSIC_EARLY_ORANGE_ROUTE, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map Route51, TILESET_VALENCIA_MANDARIN_NORTH, ROUTE, LANDMARK_ROUTE_31, MUSIC_EARLY_ORANGE_ROUTE, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map TangeloJungleRoute51Gate, TILESET_GATE, GATE, LANDMARK_ROUTE_31, MUSIC_EARLY_ORANGE_ROUTE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TangeloJungleRoute51Gate2F, TILESET_GATE, GATE, LANDMARK_ROUTE_31, MUSIC_EARLY_ORANGE_ROUTE, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map TangeloJungleRoute52Gate, TILESET_GATE, GATE, LANDMARK_ROUTE_32, MUSIC_EARLY_ORANGE_ROUTE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map TangeloJungleRoute52Gate2F, TILESET_GATE, GATE, LANDMARK_ROUTE_32, MUSIC_EARLY_ORANGE_ROUTE, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map TangeloJungle, TILESET_VALENCIA_MANDARIN_NORTH, ROUTE, LANDMARK_ILEX_FOREST, MUSIC_TANGELO_JUNGLE, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map TangeloJungleHouse, TILESET_BEACH_HOUSE, INDOOR, LANDMARK_ILEX_FOREST, MUSIC_TANGELO_JUNGLE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_TANGELO_MAPS
	
MapGroup_Mikan:
	table_width MAP_LENGTH, MapGroup_Mikan
	map Route52, TILESET_MIKAN_ISLAND, ROUTE, LANDMARK_ROUTE_32, MUSIC_EARLY_ORANGE_ROUTE, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map MikanIsland, TILESET_MIKAN_ISLAND, TOWN, LANDMARK_VIOLET_CITY, MUSIC_CITY_ORANGE, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map Route52Pokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_ROUTE_32, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MikanIslandPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_VIOLET_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MikanIslandPokemart, TILESET_MART, INDOOR, LANDMARK_VIOLET_CITY, MUSIC_POKEMON_MART, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MikanIslandHouse, TILESET_BEACH_HOUSE, INDOOR, LANDMARK_VIOLET_CITY, MUSIC_CITY_ORANGE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MikanIslandBerryMasterHouse, TILESET_BEACH_HOUSE, INDOOR, LANDMARK_VIOLET_CITY, MUSIC_CITY_ORANGE, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map MikanThicket, TILESET_MIKAN_ISLAND, ROUTE, LANDMARK_SPROUT_TOWER, MUSIC_NATIONAL_PARK, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map MikanGym, TILESET_MIKAN_GYM, INDOOR, LANDMARK_VIOLET_CITY, MUSIC_GYM, FALSE, PALETTE_DAY, FISHGROUP_POND
	map MikanRanch, TILESET_MIKAN_ISLAND, ROUTE, LANDMARK_VIOLET_CITY, MUSIC_RANCH_THEME, FALSE, PALETTE_AUTO, FISHGROUP_POND
	assert_table_length NUM_MIKAN_MAPS


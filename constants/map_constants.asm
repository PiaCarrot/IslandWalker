MACRO newgroup
;\1: group id
	const_skip
	DEF MAPGROUP_\1 EQU const_value
	DEF CURRENT_NUM_MAPGROUP_MAPS EQUS "NUM_\1_MAPS"
	DEF __map_value__ = 1
ENDM

MACRO map_const
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
	DEF GROUP_\1 EQU const_value
	DEF MAP_\1 EQU __map_value__
	DEF __map_value__ += 1
	DEF \1_WIDTH EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

MACRO endgroup
	DEF {CURRENT_NUM_MAPGROUP_MAPS} EQU __map_value__ - 1
	PURGE CURRENT_NUM_MAPGROUP_MAPS
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup VALENCIA                                             ;  1
	map_const PLAYERS_HOUSE_1F,                             6,  4 ;  1
	map_const PLAYERS_HOUSE_2F,                             4,  3 ;  2
	map_const VALENCIA_ISLAND,                             24, 24 ;  3
	map_const IVYS_LAB,                                     8,  5 ;  4
	map_const IVYS_LAB_B1,                                  4,  3 ;  5
	map_const VALENCIA_NEIGHBOR_HOUSE,                      4,  4 ;  6
	map_const IVYS_HOUSE,                                   5,  4 ;  7
	map_const ROUTE_49,                                    20, 24 ;  8
	map_const ROUTE_49_NORTH,                              16, 28 ;  9
	map_const POKECENTER_2F,                                8,  4 ; 10
	map_const TRADE_CENTER,                                 5,  4 ; 11
	map_const COLOSSEUM,                                    5,  4 ; 12
	map_const TIME_CAPSULE,                                 5,  4 ; 13
	endgroup
	
	newgroup TANGELO
	map_const TANGELO_ISLAND,							   20, 20
	map_const ALTERING_CAVE,							   15, 14
	map_const TANGELO_ISLAND_NORTH_HOUSE,					4,  4
	map_const TANGELO_ISLAND_EAST_HOUSE,					4,  4
	map_const TANGELO_ISLAND_WEST_HOUSE,					4,  4
	map_const TANGELO_ISLAND_SOUTH_HOUSE,					4,  4
	map_const TANGELO_ISLAND_POKECENTER_1F,					5,  4
	map_const TANGELO_ISLAND_POKEMART,					    5,  4
	map_const ROUTE_50,										11, 27
	map_const ROUTE_51,										20, 20
	map_const TANGELO_JUNGLE_ROUTE_51_GATE,					6, 6
	map_const TANGELO_JUNGLE_ROUTE_51_GATE_2F,			    6, 6
	map_const TANGELO_JUNGLE_ROUTE_52_GATE,					6, 6
	map_const TANGELO_JUNGLE_ROUTE_52_GATE_2F,				6, 6
	map_const TANGELO_JUNGLE,								20, 20
	map_const TANGELO_JUNGLE_HOUSE,						    4, 4
	endgroup
	
	newgroup MIKAN
	map_const ROUTE_52,										13, 32
	map_const MIKAN_ISLAND,									18, 17
	map_const ROUTE_52_POKECENTER_1F,					    5,  4
	map_const MIKAN_ISLAND_POKECENTER_1F,					5,  4
	map_const MIKAN_ISLAND_POKEMART,					    5,  4
	map_const MIKAN_ISLAND_HOUSE,						    4,  4
	map_const MIKAN_ISLAND_BERRY_MASTER_HOUSE,			    4,  4
	map_const MIKAN_THICKET,			                    15, 15
	map_const MIKAN_GYM,			                        10, 10
	map_const MIKAN_RANCH,			                        10, 10
	map_const MIKAN_RANCH_BARN,			                    5, 4
	map_const MIKAN_RANCH_HOUSE,			                5, 4
	map_const ARIAS_HOUSE,			                        4, 4
	map_const MIKAN_THICKET_HOUSE,			                4, 4
	map_const CISSYS_HOUSE,			                        4, 4
	endgroup
	
	newgroup MANDARIN_NORTH
	map_const MIKAN_ISLAND_ROUTE_53_GATE_1F,				6, 6
	map_const MIKAN_ISLAND_ROUTE_53_GATE_2F,			    6, 6
	map_const ROUTE_53,										31, 9
	map_const ROUTE_54,										11, 17
	map_const MANDARIN_NORTH,								18, 17
	map_const ABANDONED_HOUSE,								4, 4
	map_const MANDARIN_NORTH_HOUSE,					        4,  4
	map_const MANDARIN_NORTH_CUT_MASTER_HOUSE,					4,  4
	map_const MANDARIN_NORTH_NAME_RATER_HOUSE,					4,  4
	map_const MANDARIN_NORTH_POKECENTER_1F,					5,  4
	map_const MANDARIN_NORTH_POKEMART,					    5,  4
	map_const RATICATE_RADIO_B1F,					    20,  20
	map_const RATICATE_RADIO_B2F,					    7,  7
	map_const RATICATE_RADIO_LOBBY,					    6,  6
	map_const ROUTE_68_SOUTH,					    25,  10
	map_const MILLSWEET_CAMP,					    16,  10
	map_const MILLSWEET_LAB,					    6,  5
	map_const MILLSWEET_MAGIKARP_HOUSE,				4,  4
	endgroup

	newgroup SUNBURST
	map_const SUNBURST_ISLAND,								20, 25
	map_const SUNBURST_ISLAND_POKECENTER_1F,					5,  4
	map_const MATEOS_HOUSE,					6,  6
	map_const GLASSBLOWERS_HOUSE_1,					4,  4
	map_const GLASSBLOWERS_HOUSE_2,					4,  4
	map_const CRYSTAL_CAVE_1F,					18,  16
	map_const CRYSTAL_CAVE_B1F,					18,  14
	map_const CRYSTAL_CAVE_GATE,					10,  10
	map_const CURIO_SHOP,					5,  5
	map_const SUNBURST_HOUSE,					4,  4
	map_const CRYSTAL_CAVE_UNDERWATER,					7,  8
	map_const CRYSTAL_CAVE_B2F,					15,  15
	map_const CRYSTAL_CAVE_B2F_TREASURE_ROOM,					6,  8
	endgroup

	newgroup KINNOW
	map_const PINKAN_ISLAND,								20, 18
	map_const ROUTE_55,					26,  30
	map_const ROUTE_55_MANIACS_HOUSE,					4,  4
	map_const ROUTE_55_COVE,					26,  10
	map_const ROUTE_55_UNDERWATER,					26,  30
	endgroup

DEF NUM_MAP_GROUPS EQU const_value ; 1

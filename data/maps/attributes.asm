MACRO map_attributes
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
	DEF CURRENT_MAP_WIDTH = \2_WIDTH
	DEF CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
MACRO connection
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

	; LEGACY: Support for old connection macro
	if _NARG == 6
		connection \1, \2, \3, (\4) - (\5)
	else

		; Calculate tile offsets for source (current) and target maps
		DEF _src = 0
		DEF _tgt = (\4) + MAP_CONNECTION_PADDING_WIDTH
		if _tgt < 0
			DEF _src = -_tgt
			DEF _tgt = 0
		endc

		if !STRCMP("\1", "north")
			DEF _blk = \3_WIDTH * (\3_HEIGHT - MAP_CONNECTION_PADDING_WIDTH) + _src
			DEF _map = _tgt
			DEF _win = (\3_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2) * \3_HEIGHT + 1
			DEF _y = \3_HEIGHT * 2 - 1
			DEF _x = (\4) * -2
			DEF _len = CURRENT_MAP_WIDTH + MAP_CONNECTION_PADDING_WIDTH - (\4)
			if _len > \3_WIDTH
				DEF _len = \3_WIDTH
			endc

		elif !STRCMP("\1", "south")
			DEF _blk = _src
			DEF _map = (CURRENT_MAP_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2) * (CURRENT_MAP_HEIGHT + MAP_CONNECTION_PADDING_WIDTH) + _tgt
			DEF _win = \3_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2 + 1
			DEF _y = 0
			DEF _x = (\4) * -2
			DEF _len = CURRENT_MAP_WIDTH + MAP_CONNECTION_PADDING_WIDTH - (\4)
			if _len > \3_WIDTH
				DEF _len = \3_WIDTH
			endc

		elif !STRCMP("\1", "west")
			DEF _blk = (\3_WIDTH * _src) + \3_WIDTH - MAP_CONNECTION_PADDING_WIDTH
			DEF _map = (CURRENT_MAP_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2) * _tgt
			DEF _win = (\3_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2) * 2 - MAP_CONNECTION_PADDING_WIDTH * 2
			DEF _y = (\4) * -2
			DEF _x = \3_WIDTH * 2 - 1
			DEF _len = CURRENT_MAP_HEIGHT + MAP_CONNECTION_PADDING_WIDTH - (\4)
			if _len > \3_HEIGHT
				DEF _len = \3_HEIGHT
			endc

		elif !STRCMP("\1", "east")
			DEF _blk = (\3_WIDTH * _src)
			DEF _map = (CURRENT_MAP_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2) * _tgt + CURRENT_MAP_WIDTH + MAP_CONNECTION_PADDING_WIDTH
			DEF _win = \3_WIDTH + MAP_CONNECTION_PADDING_WIDTH * 2 + 1
			DEF _y = (\4) * -2
			DEF _x = 0
			DEF _len = CURRENT_MAP_HEIGHT + MAP_CONNECTION_PADDING_WIDTH - (\4)
			if _len > \3_HEIGHT
				DEF _len = \3_HEIGHT
			endc

		else
			fail "Invalid direction for 'connection'."
		endc

	map_id \3
	dw \2_Blocks + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win

	endc
ENDM

	map_attributes ValenciaIsland, VALENCIA_ISLAND, $10, WEST
	connection west, Route49, ROUTE_49, -2

	map_attributes Route49, ROUTE_49, $10, NORTH | EAST
	connection north, Route49North, ROUTE_49_NORTH, -1
	connection east, ValenciaIsland, VALENCIA_ISLAND, 2

	map_attributes Route49North, ROUTE_49_NORTH, $10, NORTH | SOUTH | WEST
	connection north, Route51, ROUTE_51, 0
	connection south, Route49, ROUTE_49, 1
	connection west, TangeloIsland, TANGELO_ISLAND, -1
	
	map_attributes TangeloIsland, TANGELO_ISLAND, $10, NORTH | EAST
	connection north, Route50, ROUTE_50, 9
	connection east, Route49North, ROUTE_49_NORTH, 1

	map_attributes Route50, ROUTE_50, $01, SOUTH | EAST
	connection south, TangeloIsland, TANGELO_ISLAND, -9
	connection east, Route51, ROUTE_51, 7

	map_attributes Route51, ROUTE_51, $01, SOUTH | WEST
	connection south, Route49North, ROUTE_49_NORTH, 0
	connection west, Route50, ROUTE_50, -7

	map_attributes Route52, ROUTE_52, $10, NORTH
	connection north, MikanIsland, MIKAN_ISLAND, 0

	map_attributes MikanIsland, MIKAN_ISLAND, $C8, SOUTH | WEST
	connection south, Route52, ROUTE_52, 0
	connection west, MikanRanch, MIKAN_RANCH, 5

	map_attributes MikanRanch, MIKAN_RANCH, $C8, EAST
	connection east, MikanIsland, MIKAN_ISLAND, -5

	map_attributes Route53, ROUTE_53, $10, NORTH | SOUTH
	connection north, Route54, ROUTE_54, 20
	connection south, SunburstIsland, SUNBURST_ISLAND, 11

	map_attributes Route54, ROUTE_54, $10, NORTH | SOUTH
	connection north, MandarinNorth, MANDARIN_NORTH, -4
	connection south, Route53, ROUTE_53, -20

	map_attributes MandarinNorth, MANDARIN_NORTH, $01, NORTH | SOUTH
	connection north, Route68South, ROUTE_68_SOUTH, 1
	connection south, Route54, ROUTE_54, 4

	map_attributes Route68South, ROUTE_68_SOUTH, $10, NORTH | SOUTH
	connection north, MillsweetCamp, MILLSWEET_CAMP, 2
	connection south, MandarinNorth, MANDARIN_NORTH, -1

	map_attributes MillsweetCamp, MILLSWEET_CAMP, $01, SOUTH
	connection south, Route68South, ROUTE_68_SOUTH, -2

	map_attributes SunburstIsland, SUNBURST_ISLAND, $10, NORTH
	connection north, Route53, ROUTE_53, -11
	
	map_attributes Route55, ROUTE_55, $10, NORTH | EAST
	connection north, Route55Cove, ROUTE_55_COVE, 0
	connection east, PinkanIsland, PINKAN_ISLAND, 8

	map_attributes PinkanIsland, PINKAN_ISLAND, $10, WEST
	connection west, Route55, ROUTE_55, -8

	map_attributes Route55Cove, ROUTE_55_COVE, $10, SOUTH
	connection south, Route55, ROUTE_55, 0
	
	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $00, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $00, 0
	map_attributes IvysLab, IVYS_LAB, $00, 0
	map_attributes IvysLabB1, IVYS_LAB_B1, $00, 0
	map_attributes ValenciaNeighborHouse, VALENCIA_NEIGHBOR_HOUSE, $00, 0
	map_attributes AlteringCave, ALTERING_CAVE, $03, 0
	map_attributes TangeloJungle, TANGELO_JUNGLE, $01, 0
	map_attributes TangeloJungleRoute51Gate, TANGELO_JUNGLE_ROUTE_51_GATE, $00, 0
	map_attributes TangeloJungleRoute51Gate2F, TANGELO_JUNGLE_ROUTE_51_GATE_2F, $00, 0
	map_attributes TangeloJungleRoute52Gate, TANGELO_JUNGLE_ROUTE_52_GATE, $00, 0
	map_attributes TangeloJungleRoute52Gate2F, TANGELO_JUNGLE_ROUTE_52_GATE_2F, $00, 0
	map_attributes TangeloJungleHouse, TANGELO_JUNGLE_HOUSE, $00, 0
	map_attributes TangeloIslandNorthHouse, TANGELO_ISLAND_NORTH_HOUSE, $00, 0
	map_attributes TangeloIslandEastHouse, TANGELO_ISLAND_EAST_HOUSE, $00, 0
	map_attributes TangeloIslandWestHouse, TANGELO_ISLAND_WEST_HOUSE, $00, 0
	map_attributes TangeloIslandSouthHouse, TANGELO_ISLAND_SOUTH_HOUSE, $00, 0
	map_attributes TangeloIslandPokecenter1F, TANGELO_ISLAND_POKECENTER_1F, $00, 0
	map_attributes TangeloIslandPokemart, TANGELO_ISLAND_POKEMART, $00, 0
	map_attributes Route52Pokecenter1F, ROUTE_52_POKECENTER_1F, $00, 0
	map_attributes MikanIslandPokecenter1F, MIKAN_ISLAND_POKECENTER_1F, $00, 0
	map_attributes MikanIslandPokemart, MIKAN_ISLAND_POKEMART, $00, 0
	map_attributes MikanIslandHouse, MIKAN_ISLAND_HOUSE, $00, 0
	map_attributes MikanIslandBerryMasterHouse, MIKAN_ISLAND_BERRY_MASTER_HOUSE, $00, 0
	map_attributes MikanThicket, MIKAN_THICKET, $C8, 0
	map_attributes MikanGym, MIKAN_GYM, $00, 0
	map_attributes MikanRanchBarn, MIKAN_RANCH_BARN, $00, 0
	map_attributes MikanRanchHouse, MIKAN_RANCH_HOUSE, $00, 0
	map_attributes AriasHouse, ARIAS_HOUSE, $00, 0
	map_attributes MikanThicketHouse, MIKAN_THICKET_HOUSE, $00, 0
	map_attributes CissysHouse, CISSYS_HOUSE, $00, 0
	map_attributes MikanIslandRoute53Gate1F, MIKAN_ISLAND_ROUTE_53_GATE_1F, $00, 0
	map_attributes MikanIslandRoute53Gate2F, MIKAN_ISLAND_ROUTE_53_GATE_2F, $00, 0
	map_attributes AbandonedHouse, ABANDONED_HOUSE, $00, 0
	map_attributes MandarinNorthHouse, MANDARIN_NORTH_HOUSE, $00, 0
	map_attributes MandarinNorthCutMasterHouse, MANDARIN_NORTH_CUT_MASTER_HOUSE, $00, 0
	map_attributes MandarinNorthNameRaterHouse, MANDARIN_NORTH_NAME_RATER_HOUSE, $00, 0
	map_attributes MandarinNorthPokecenter1F, MANDARIN_NORTH_POKECENTER_1F, $00, 0
	map_attributes SunburstIslandPokecenter1F, SUNBURST_ISLAND_POKECENTER_1F, $00, 0
	map_attributes MateosHouse, MATEOS_HOUSE, $00, 0
	map_attributes GlassBlowersHouse1, GLASSBLOWERS_HOUSE_1, $00, 0
	map_attributes GlassBlowersHouse2, GLASSBLOWERS_HOUSE_2, $00, 0
	map_attributes CrystalCave1F, CRYSTAL_CAVE_1F, $01, 0
	map_attributes CrystalCaveB1F, CRYSTAL_CAVE_B1F, $01, 0
	map_attributes CrystalCaveB2F, CRYSTAL_CAVE_B2F, $01, 0
	map_attributes CrystalCaveGate, CRYSTAL_CAVE_GATE, $01, 0
	map_attributes CurioShop, CURIO_SHOP, $00, 0
	map_attributes SunburstHouse, SUNBURST_HOUSE, $00, 0
	map_attributes MandarinNorthPokemart, MANDARIN_NORTH_POKEMART, $00, 0
	map_attributes RaticateRadioB1F, RATICATE_RADIO_B1F, $00, 0
	map_attributes RaticateRadioB2F, RATICATE_RADIO_B2F, $00, 0
	map_attributes RaticateRadioLobby, RATICATE_RADIO_LOBBY, $00, 0
	map_attributes IvysHouse, IVYS_HOUSE, $00, 0
	map_attributes MillsweetLab, MILLSWEET_LAB, $00, 0
	map_attributes MillsweetMagikarpHouse, MILLSWEET_MAGIKARP_HOUSE, $00, 0
	map_attributes Route55ManiacsHouse, ROUTE_55_MANIACS_HOUSE, $00, 0
	map_attributes Route55Underwater, ROUTE_55_UNDERWATER, $09, 0
	map_attributes CrystalCaveUnderwater, CRYSTAL_CAVE_UNDERWATER, $35, 0
	map_attributes Pokecenter2F, POKECENTER_2F, $00, 0
	map_attributes TradeCenter, TRADE_CENTER, $00, 0
	map_attributes Colosseum, COLOSSEUM, $00, 0
	map_attributes TimeCapsule, TIME_CAPSULE, $00, 0
MACRO spawn
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4, SpawnPoints

	spawn PLAYERS_HOUSE_2F,            3,  3
	spawn VALENCIA_ISLAND,        15, 6
	spawn TANGELO_ISLAND,               15,  8
	spawn MIKAN_ISLAND,               7,  30
	spawn MANDARIN_NORTH,               15,  22
	spawn SUNBURST_ISLAND,               27,  10

	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1

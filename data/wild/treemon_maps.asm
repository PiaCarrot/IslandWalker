MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map VALENCIA_ISLAND,             TREEMON_SET_CITY
	db -1

RockMonMaps:
	treemon_map VALENCIA_ISLAND,             TREEMON_SET_ROCK
	db -1

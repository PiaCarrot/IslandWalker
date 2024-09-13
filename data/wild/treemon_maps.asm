MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	treemon_map VALENCIA_ISLAND,             TREEMON_SET_CANYON
	treemon_map ROUTE_49,      		  TREEMON_SET_CANYON
	treemon_map ROUTE_49_NORTH,       TREEMON_SET_CANYON
	db -1

RockMonMaps:
	treemon_map VALENCIA_ISLAND,             TREEMON_SET_ROCK
	db -1

SkyMonMaps:
	treemon_map ROUTE_49, TREEMON_SET_SKY_1
	db -1
	
DepthsMonMaps:
	treemon_map ROUTE_49, TREEMON_SET_DEPTHS_1
	db -1
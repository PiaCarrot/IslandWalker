; Crystal does not support SGB, so this is unused.

MapGroupRoofSGBPalInds:
; entries correspond to map groups
	table_width 1, MapGroupRoofSGBPalInds
	db PREDEFPAL_ROUTES
	db PREDEFPAL_NEW_BARK
	db PREDEFPAL_CHERRYGROVE
	db PREDEFPAL_VIOLET
	assert_table_length NUM_MAP_GROUPS + 1

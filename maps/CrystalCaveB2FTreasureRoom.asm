	object_const_def
	const CC_TREASURE_BOULDER_1
	const CC_TREASURE_BOULDER_2
	const CC_TREASURE_BOULDER_3
	const CC_TREASURE_BOULDER_4
	const CC_TREASURE_BOULDER_5
	const CC_TREASURE_BOULDER_6

CrystalCaveB2FTreasureRoom_MapScripts:
	def_scene_scripts

	def_callbacks
	
CrystalCaveB2FTreasureRoomBoulder:
	jumpstd StrengthBoulderScript


CrystalCaveB2FTreasureRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, CRYSTAL_CAVE_B2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_COPY_BG_GREEN, OBJECTTYPE_SCRIPT, 0, CrystalCaveB2FTreasureRoomBoulder, -1
	object_event  5, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_COPY_BG_GREEN, OBJECTTYPE_SCRIPT, 0, CrystalCaveB2FTreasureRoomBoulder, -1
	object_event  6,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_COPY_BG_GREEN, OBJECTTYPE_SCRIPT, 0, CrystalCaveB2FTreasureRoomBoulder, -1
	object_event  7, 10, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_COPY_BG_GREEN, OBJECTTYPE_SCRIPT, 0, CrystalCaveB2FTreasureRoomBoulder, -1
	object_event  4,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_COPY_BG_GREEN, OBJECTTYPE_SCRIPT, 0, CrystalCaveB2FTreasureRoomBoulder, -1
	object_event  5,  9, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_COPY_BG_GREEN, OBJECTTYPE_SCRIPT, 0, CrystalCaveB2FTreasureRoomBoulder, -1

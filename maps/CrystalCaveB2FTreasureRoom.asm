	object_const_def
	const CC_TREASURE_BOULDER_1
	const CC_TREASURE_BOULDER_2
	const CC_TREASURE_BOULDER_3
	const CC_TREASURE_BOULDER_4
	const CC_TREASURE_BOULDER_5
	const CC_TREASURE_BOULDER_6
	const CC_TREASURE_HUGE_CRYSTAL
	const CC_TREASURE_TM

CrystalCaveB2FTreasureRoom_MapScripts:
	def_scene_scripts

	def_callbacks
	
CrystalCaveB2FTreasureRoomBoulder:
	jumpstd StrengthBoulderScript

CrystalCaveB2FTreasureRoomHugeCrystal:
	itemball HUGE_CRYSTAL
	
CrystalCaveB2FTreasureRoomTMDazzlingGleam:
	itemball TM_DAZZLING_GLEAM

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
	object_event  4, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CrystalCaveB2FTreasureRoomHugeCrystal, EVENT_CRYSTAL_CAVE_B2F_HUGE_CRYSTAL
	object_event  7, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_ITEMBALL, 0, CrystalCaveB2FTreasureRoomTMDazzlingGleam, EVENT_TM_21_DAZZLING_GLEAM

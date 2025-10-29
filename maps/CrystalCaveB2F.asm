	object_const_def
	const CRYSTAL_CAVE_B2F_BOULDER1
	

CrystalCaveB2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CrystalCaveB2FDiveMap

CrystalCaveB2FDiveMap:
	divemap CRYSTAL_CAVE_UNDERWATER, -8, -18
	return
	
CrystalCaveB2FBoulder:
	jumpstd StrengthBoulderScript

CrystalCaveB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  1, CRYSTAL_CAVE_B2F_TREASURE_ROOM, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_COPY_BG_GREEN, OBJECTTYPE_SCRIPT, 0, CrystalCaveB2FBoulder, -1

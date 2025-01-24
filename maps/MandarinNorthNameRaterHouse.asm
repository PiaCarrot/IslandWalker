	object_const_def
	const MANDARIN_NORTH_NAME_RATER

MandarinNorthNameRaterHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MandarinNorthNameRater:	
	faceplayer
	opentext
	special NameRater
	waitbutton
	closetext
	end
	
MandarinNorthNameRaterHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MANDARIN_NORTH, 4
	warp_event  3,  7, MANDARIN_NORTH, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, MandarinNorthNameRater, -1

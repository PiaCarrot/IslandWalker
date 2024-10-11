	object_const_def

MandarinNorth_MapScripts:
	def_scene_scripts

	def_callbacks

MandarinNorth_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 14,  8, SPRITE_LOOKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1

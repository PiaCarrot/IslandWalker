	object_const_def

Route55ManiacsHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
GemManiacScript:
	end

Route55ManiacsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_55, 2
	warp_event  3,  7, ROUTE_55, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  5, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GemManiacScript, -1

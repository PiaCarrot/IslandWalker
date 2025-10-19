	object_const_def

Route55Cove_MapScripts:
	def_scene_scripts

	def_callbacks
	
Route55CoveTMGyroBall:
	itemball TM_GYRO_BALL

Route55Cove_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 19,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_ITEMBALL, 0, Route55CoveTMGyroBall, EVENT_TM_74_GYRO_BALL

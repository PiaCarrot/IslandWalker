	object_const_def

AlteringCave_MapScripts:
	def_scene_scripts

	def_callbacks
	
AlteringCaveRock:
	jumpstd SmashRockScript

AlteringCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 25, TANGELO_ISLAND, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlteringCaveRock, -1
	object_event  4,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlteringCaveRock, -1
	object_event  6,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlteringCaveRock, -1
	object_event 23, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlteringCaveRock, -1
	object_event 25, 12, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlteringCaveRock, -1
	object_event  4, 15, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlteringCaveRock, -1

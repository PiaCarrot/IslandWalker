	object_const_def

SunburstIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	
OnixRockScript:
	jumptext OnixRockText

OnixRockText:
	text "It's just a rock"
	line "that looks like"
	cont "ONIX."
	done

SunburstIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  9, SUNBURST_ISLAND_POKECENTER_1F, 2
	warp_event  5,  9, MATEOS_HOUSE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2, 38, SPRITE_BIG_ONIX, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, PAL_NPC_COPY_BG_GRAY, OBJECTTYPE_SCRIPT, 0, OnixRockScript, -1

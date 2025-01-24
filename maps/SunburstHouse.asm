	object_const_def

SunburstHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SunburstHouseCooltrainerScript:
	jumptextfaceplayer SunburstHouseCooltrainerText
	
SunburstHouseCooltrainerText:
	text "There's a bunch of"
	line "fishermen heading"
	cont "to RIND ISLAND."
	
	para "They made a camp"
	line "north of MANDARIN"
	cont "ISLAND NORTH."
	
	para "Around this time"
	line "of year, it's the"
	cont "best place to find"
	cont "MAGIKARP."
	done

SunburstHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SUNBURST_ISLAND, 8
	warp_event  3,  7, SUNBURST_ISLAND, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SunburstHouseCooltrainerScript, -1

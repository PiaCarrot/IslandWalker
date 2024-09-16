	object_const_def

TangeloIslandEastHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
TangeloEastHouseLassScript:
	jumptextfaceplayer TangeloEastHouseLassText
	
TangeloEastHouseGentlemanScript:
	jumptextfaceplayer TangeloEastHouseGentlemanText
	
TangeloEastHouseLassText:
	text "Hm… That's a"
	line "great #MON"
	cont "that you have."

	para "Taking on the"
	line "ORANGE CREW won't"
	cont "be an easy task,"
	cont "though."
	done

TangeloEastHouseGentlemanText:
	text "There are 5 ORANGE"
	line "CREW members:"
	cont "CISSY of MIKAN,"
	cont "DANNY of NAVEL,"
	cont "RUDY of TROVITA,"
	cont "LUANA of KUMQUAT."
	
	para "Of all the ORANGE"
	line "CREW members, the"
	cont "strongest is DRAKE"
	cont "of PUMMELO ISLAND."
	done
	
TangeloIslandEastHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, TANGELO_ISLAND, 3
	warp_event  3,  7, TANGELO_ISLAND, 3

	def_coord_events

	def_bg_events

	def_object_events
	person_event SPRITE_LASS,  2,  5, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, TangeloEastHouseLassScript, -1
	person_event SPRITE_GENTLEMAN,  3,  1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, TangeloEastHouseGentlemanScript, -1

	object_const_def
	const TANGELO_JUNGLE_NORTH_GATE_OFFICER
	const TANGELO_JUNGLE_NORTH_GATE_OFFICER_BORED

TangeloJungleRoute52Gate_MapScripts:
	def_scene_scripts

	def_callbacks
	
TangeloJungleRoute52GateTV:
	jumptext TangeloJungleRoute52GateTVText
	
TangeloJungleRoute52GateTVText:
	text "Entering TANGELO"
	line "JUNGLE. En route"
	cont "to TANGELO ISLAND."
	done
	
TangeloJungleRoute52GateJennyDayScript:
	jumptextfaceplayer TangeloJungleRoute52GateJennyDayText
	
TangeloJungleRoute52GateJennyDayText:
	text "Hello, trainer."
	line "Past ROUTE 52 is"
	cont "MIKAN ISLAND."
	done
	
TangeloJungleRoute52GateJennyNiteScript:
	jumptext TangeloJungleRoute52GateJennyNiteText
	
TangeloJungleRoute52GateJennyNiteText:
	text "I'm so tired…"

	para "I just want a hot"
	line "bath in the MIKAN"
	cont "HOT SPRINGS…"
	
	para "…With a bottle of"
	line "NANAB MOOMOO MILK"
	cont "to take the edge"
	cont "off…"
	done

TangeloJungleRoute52Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  2, ROUTE_52, 1
	warp_event  6,  2, ROUTE_52, 2
	warp_event  5, 11, TANGELO_JUNGLE, 4
	warp_event  6, 11, TANGELO_JUNGLE, 5
	warp_event  2,  2, TANGELO_JUNGLE_ROUTE_52_GATE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  8,  8, BGEVENT_READ, TangeloJungleRoute52GateTV
	bg_event  9,  8, BGEVENT_READ, TangeloJungleRoute52GateTV

	def_object_events
	object_event  9,  3, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, MORN | DAY| EVE, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TangeloJungleRoute52GateJennyDayScript, -1
	object_event  9,  3, SPRITE_OFFICER_F_BORED, SPRITEMOVEDATA_STILL, 0, 0, -1, NITE, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TangeloJungleRoute52GateJennyNiteScript, -1

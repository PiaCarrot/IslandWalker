	object_const_def
	const TANGELO_JUNGLE_OFFICER
	const TANGELO_JUNGLE_OFFICER_BORED

TangeloJungleRoute51Gate_MapScripts:
	def_scene_scripts

	def_callbacks
	
TangeloJungleRoute51GateTV:
	jumptext TangeloJungleRoute51GateTVText
	
TangeloJungleRoute51GateTVText:
	text "Entering TANGELO"
	line "JUNGLE. En route"
	cont "to MIKAN ISLAND."
	done
	
TangeloJungleRoute51GateJennyDayScript:
	jumptext TangeloJungleRoute51GateJennyDayText
	
TangeloJungleRoute51GateJennyDayText:
	text "Hello, trainer."
	line "Just past this"
	cont "jungle is ROUTE 52"
	cont "and MIKAN ISLAND."
	done
	
TangeloJungleRoute51GateJennyNiteScript:
	jumptext TangeloJungleRoute51GateJennyNiteText
	
TangeloJungleRoute51GateJennyNiteText:
	text "Oh, hey…"
	line "The jungle is kind"
	cont "of dangerous at"
	cont "night. Be careful"
	cont "out there."
	done
	
TangeloJungleRoute51GateSightseerScript:
	jumptextfaceplayer TangeloJungleRoute51GateSightseerText
	
TangeloJungleRoute51GateSightseerText:
	text "I'm never gonna"
	line "be able to leave"
	cont "this island! I"
	cont "can't stand BUG"
	cont "#MON!"
	done

TangeloJungleRoute51GateHiddenNetBall:
	hiddenitem NET_BALL, EVENT_ROUTE_50_HIDDEN_NET_BALL

TangeloJungleRoute51Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  6, ROUTE_51, 1
	warp_event 11,  7, ROUTE_51, 2
	warp_event  0,  6, TANGELO_JUNGLE, 1
	warp_event  0,  7, TANGELO_JUNGLE, 2
	warp_event  1,  2, TANGELO_JUNGLE_ROUTE_51_GATE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  4, BGEVENT_READ, TangeloJungleRoute51GateTV
	bg_event  6,  4, BGEVENT_READ, TangeloJungleRoute51GateTV
	bg_event  1,  9, BGEVENT_ITEM, TangeloJungleRoute51GateHiddenNetBall

	def_object_events
	object_event  9,  3, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, MORN | DAY| EVE, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TangeloJungleRoute51GateJennyDayScript, -1
	object_event  9,  3, SPRITE_OFFICER_F_BORED, SPRITEMOVEDATA_STILL, 0, 0, -1, NITE, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TangeloJungleRoute51GateJennyNiteScript, -1
	object_event  3,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TangeloJungleRoute51GateSightseerScript, -1

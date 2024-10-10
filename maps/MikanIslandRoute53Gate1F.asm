	object_const_def
	const MIKAN_ISLAND_ROUTE_53_OFFICER
	const MIKAN_ISLAND_ROUTE_53_OFFICER_BORED

MikanIslandRoute53Gate1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanIslandRoute53GateTV:
	jumptext MikanIslandRoute53GateTVText
	
MikanIslandRoute53GateTVText:
	text "Entering ROUTE 53."
	line "En route to SUN-"
	cont "BURST ISLAND."
	done
	
MikanIslandRoute53GateJennyDayScript:
	jumptext MikanIslandRoute53GateJennyDayText
	
MikanIslandRoute53GateJennyDayText:
	text "Hello, trainer."
	line "At the end of the"
	cont "ROUTE is junction."
	cont "Go north to reach"
	cont "MANDARIN NORTH."
	
	para "South takes you to"
	line "SUNBURST ISLAND."
	done
	
MikanIslandRoute53GateJennyNiteScript:
	jumptext MikanIslandRoute53GateJennyNiteText
	
MikanIslandRoute53GateJennyNiteText:
	text "Hello, trainer…"
	line "At the end of the"
	cont "ROUTE is junction."
	cont "Go north to reach"
	cont "MANDARIN NORTH…"
	
	para "South takes you to"
	line "SUNBURST ISLAND…"

MikanIslandRoute53GateSightseerScript:
	faceplayer
	opentext
	checkevent EVENT_CISSY_DEFEATED
	iftrue .RegularText
	writetext MikanIslandRoute53GateSightseerText
	waitbutton
	closetext
	end
	
.RegularText
	writetext MikanIslandRoute53GateSightseerText2
	waitbutton
	closetext
	end
	
MikanIslandRoute53GateSightseerText:
	text "There were some"
	line "reports of TEAM"
	cont "ROCKET showing up"
	cont "around the area!"
	
	para "I thought they"
	line "disbanded about a"
	cont "year ago!"
	
	para "The INTERNATIONAL"
	line "POLICE shut down"
	cont "all travel on the"
	cont "next ROUTE!"
	done
	
MikanIslandRoute53GateSightseerText2:
	text "There were some"
	line "reports of TEAM"
	cont "ROCKET showing up"
	cont "around the area!"
	
	para "I thought they"
	line "disbanded about a"
	cont "year ago!"
	done

MikanIslandRoute53Gate1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  6, ROUTE_53, 1
	warp_event 11,  7, ROUTE_53, 2
	warp_event  0,  6, MIKAN_ISLAND, 10
	warp_event  0,  7, MIKAN_ISLAND, 11
	warp_event  1,  2, MIKAN_ISLAND_ROUTE_53_GATE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  4, BGEVENT_READ, MikanIslandRoute53GateTV
	bg_event  6,  4, BGEVENT_READ, MikanIslandRoute53GateTV

	def_object_events
	object_event  9,  3, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, MORN | DAY| EVE, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MikanIslandRoute53GateJennyDayScript, -1
	object_event  9,  3, SPRITE_OFFICER_F_BORED, SPRITEMOVEDATA_STILL, 0, 0, -1, NITE, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MikanIslandRoute53GateJennyNiteScript, -1
	object_event  3,  4, SPRITE_SIGHTSEER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MikanIslandRoute53GateSightseerScript, -1

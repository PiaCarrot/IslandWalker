	object_const_def

TangeloJungleRoute52Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks
	
TangeloJungleRoute52Gate2FBinoculars:
	opentext
	readvar VAR_FACING
	ifequal UP, .UseBinoculars
	writetext TangeloJungleRoute52Gate2FBinocularsWrongWayText
	waitbutton
	closetext
	end
.UseBinoculars
	checktime MORN | DAY
	iftrue .day_morn
	checktime EVE
	iftrue .eve
	checktime NITE
	iftrue .nite
.day_morn
	writetext TangeloJungleRoute52Gate2FBinocularsDayText
	waitbutton
	closetext
	end
.eve
	writetext TangeloJungleRoute52Gate2FBinocularsEveText
	waitbutton
	closetext
	end
.nite
	writetext TangeloJungleRoute52Gate2FBinocularsNiteText
	waitbutton
	closetext
	end
	
TangeloJungleRoute52Gate2FBinocularsDayText:
	text "Wow! I see a huge"
	line "forest of BAMBOO!"
	done
	
TangeloJungleRoute52Gate2FBinocularsEveText:
	text "Wow! I see a huge"
	line "forest of BAMBOO!"
	cont "I can make out a"
	cont "house or two in"
	cont "the thicket."
	done
	
TangeloJungleRoute52Gate2FBinocularsNiteText:
	text "It's really dark"
	line "out there, but the"
	cont "soft glow of a"
	cont "small town can"
	cont "be seen in the"
	cont "distance."
	done
	
TangeloJungleRoute52Gate2FBinocularsWrongWayText:
	text "I can't see any-"
	line "thing from this"
	cont "side."
	done
	
TangeloJungleRoute52Gate2FBugCatcherScript:
	jumptextfaceplayer TangeloJungleRoute52Gate2FBugCatcherText
	
TangeloJungleRoute52Gate2FBugCatcherText:
	text "BUTTERFREE usually"
	line "has the ABILITY"
	cont "COMPOUND EYES, but"
	cont "my BUTTERFREE from"
	cont "VALENCIA has TINT-"
	cont "ED LENS!"
	done

TangeloJungleRoute52Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  2, TANGELO_JUNGLE_ROUTE_52_GATE, 5

	def_coord_events

	def_bg_events
	bg_event  4,  3, BGEVENT_READ, TangeloJungleRoute52Gate2FBinoculars
	bg_event  7,  3, BGEVENT_READ, TangeloJungleRoute52Gate2FBinoculars

	def_object_events
	object_event  5,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TangeloJungleRoute52Gate2FBugCatcherScript, -1

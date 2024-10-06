	object_const_def

TangeloJungleRoute51Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks
	
TangeloJungleRoute51Gate2FBinoculars:
	opentext
	readvar VAR_FACING
	ifequal UP, .UseBinoculars
	writetext TangeloJungleRoute51Gate2FBinocularsWrongWayText
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
	writetext TangeloJungleRoute51Gate2FBinocularsDayText
	waitbutton
	closetext
	end
.eve
	writetext TangeloJungleRoute51Gate2FBinocularsEveText
	waitbutton
	closetext
	end
.nite
	writetext TangeloJungleRoute51Gate2FBinocularsNiteText
	waitbutton
	closetext
	end
	
TangeloJungleRoute51Gate2FBinocularsDayText:
	text "Beyond the jungle"
	line "there is a #MON"
	cont "CENTER!"
	done
	
TangeloJungleRoute51Gate2FBinocularsEveText:
	text "The sun is setting,"
	line "but the soft glow"
	cont "of a #MON CEN-"
	cont "TER can be seen"
	cont "past the jungle."
	done
	
TangeloJungleRoute51Gate2FBinocularsNiteText:
	text "It's really dark"
	line "out there, but the"
	cont "soft glow of a"
	cont "#MON CENTER can"
	cont "be seen in the"
	cont "distance."
	done
	
TangeloJungleRoute51Gate2FBinocularsWrongWayText:
	text "I can't see any-"
	line "thing from this"
	cont "side."
	done
	
TangeloJungleRoute51Gate2FBugCatcherScript:
	jumptextfaceplayer TangeloJungleRoute51Gate2FBugCatcherText
	
TangeloJungleRoute51Gate2FBugCatcherText:
	text "BUG-type #MON"
	line "are usually over-"
	cont "looked. They level"
	cont "up quickly and can"
	cont "also evolve very"
	cont "easily."
	done

TangeloJungleRoute51Gate2FYoungsterScript:
	jumptextfaceplayer TangeloJungleRoute51Gate2FYoungsterText
	
TangeloJungleRoute51Gate2FYoungsterText:
	text "I tried to swim up"
	line "the river to skip"
	cont "the BUG #MON."
	
	para "Big mistake! I got"
	line "bit by something!"
	cont "I'm still sore…"
	done

TangeloJungleRoute51Gate2FLassScript:
	jumptextfaceplayer TangeloJungleRoute51Gate2FLassText
	
TangeloJungleRoute51Gate2FLassText:
	text "Some rude guy with"
	line "orange hair beat"
	cont "me in a battle."
	
	para "His bangs were in"
	line "the shape of a"
	cont "cross. Watch your"
	cont "back!"
	done

TangeloJungleRoute51Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  2, TANGELO_JUNGLE_ROUTE_51_GATE, 5

	def_coord_events

	def_bg_events
	bg_event  4,  3, BGEVENT_READ, TangeloJungleRoute51Gate2FBinoculars
	bg_event  7,  3, BGEVENT_READ, TangeloJungleRoute51Gate2FBinoculars

	def_object_events
	object_event  3,  8, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TangeloJungleRoute51Gate2FBugCatcherScript, -1
	object_event  6,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TangeloJungleRoute51Gate2FYoungsterScript, -1
	object_event  9,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TangeloJungleRoute51Gate2FLassScript, -1

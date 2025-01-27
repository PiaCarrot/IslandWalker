	object_const_def

MillsweetCamp_MapScripts:
	def_scene_scripts

	def_callbacks


MillsweetCampSign:
	jumptext MillsweetCampSignText

QuackenpokerLabSign:
	jumptext QuackenpokerLabSignText

AppraisalHouseSign:
	jumptext AppraisalHouseSignText
	
MillsweetCampSignText:
	text "RIND ISLAND"
	line "MILLSWEET CAMP"
	done
	
QuackenpokerLabSignText:
	text "QUACKENPOKER LAB"
	done
	
AppraisalHouseSignText:
	text "How big is your"
	line "MAGIKARP? I'll be"
	cont "the judge!"
	done
	
MillsweetCampFisherScript:
	jumptextfaceplayer MillsweetCampFisherText
	
MillsweetCampFisherText:
	text "BAMBOO ROD is just"
	line "perfect for this"
	cont "pond!"
	
	para "I hear if you can"
	line "get to the pond"
	cont "upstream it's even"
	cont "better!"
	done
	
MillsweetCampFisher2Script:
	jumptextfaceplayer MillsweetCampFisher2Text
	
MillsweetCampFisher2Text:
	text "Huh? You wanna use"
	line "this spot?"
	cont "Just don't get our"
	cont "lines twisted…"
	done
	
MillsweetCampFisher3Script:
	jumptextfaceplayer MillsweetCampFisher3Text
	
MillsweetCampFisher3Text:
	text "Nothing but small"
	line "fry…"
	
	para "The scientist in"
	line "that house there"
	cont "measures MAGIKARP."
	
	para "I'm trying to beat"
	line "my record!"
	done

MillsweetCamp_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  5, MILLSWEET_LAB, 1

	def_coord_events

	def_bg_events
	bg_event  9, 17, BGEVENT_READ, MillsweetCampSign
	bg_event  0,  6, BGEVENT_READ, QuackenpokerLabSign
	bg_event 25, 11, BGEVENT_READ, AppraisalHouseSign

	def_object_events
	object_event  5, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MillsweetCampFisherScript, -1
	object_event 16, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MillsweetCampFisher2Script, -1
	object_event 24, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MillsweetCampFisher3Script, -1

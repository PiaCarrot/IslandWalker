	object_const_def
	const ROUTE_52_BERRY_TREE
	const ROUTE_52_ITEMBALL_1
	const ROUTE_52_ITEMBALL_2
	const ROUTE_52_SWIMMER_F_DAHLIA
	const ROUTE_52_SWIMMER_F_MAYA
	const ROUTE_52_SWIMMER_F_ZOEY
	const ROUTE_52_SWIMMER_M_CHAD
	const ROUTE_52_SWIMMER_M_LUKE
	const ROUTE_52_LASS_MILLIE
	const ROUTE_52_LASS_SANDY

Route52_MapScripts:
	def_scene_scripts

	def_callbacks

Route52FruitTree:
	fruittree FRUITTREE_ROUTE_52

Route52DireHit:
	itemball DIRE_HIT

Route52Repel:
	itemball REPEL

Route52HiddenGreatBall:
	hiddenitem GREAT_BALL, EVENT_ROUTE_52_HIDDEN_GREAT_BALL
	
Route52HiddenPearl:
	hiddenitem PEARL, EVENT_ROUTE_52_HIDDEN_PEARL

Route52HiddenBurnHeal:
	hiddenitem BURN_HEAL, EVENT_ROUTE_52_HIDDEN_BURN_HEAL

Route52Sign:
	jumptext Route52SignText

Route52SignText:
	text "ROUTE 52"
	done

TrainerTipsRoute52Sign:
	jumptext TrainerTipsRoute52SignText

TrainerTipsRoute52SignText:
	text "TRAINER TIPS!"
	
	para "Don't be shy! Talk"
	line "to anyone you see."
	cont "By talking to them"
	cont "you will get valu-"
	cont "able information,"
	cont "advice or even a"
	cont "gift!"
	done
	
SwimmerFDahliaScript:
	trainer SWIMMERF, DAHLIA, EVENT_BEAT_SWIMMER_F_DAHLIA, SwimmerFDahliaSeenText, SwimmerFDahliaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFDahliaAfterText
	waitbutton
	closetext
	end
	
SwimmerFDahliaSeenText:
	text "Want that item?"
	line "Gonna have to"
	cont "beat me first."
	done

SwimmerFDahliaBeatenText:
	text "Ugh. Take it."
	done

SwimmerFDahliaAfterText:
	text "It's not even a"
	line "good item."
	done
	
SwimmerFMayaScript:
	trainer SWIMMERF, MAYA, EVENT_BEAT_SWIMMER_F_MAYA, SwimmerFMayaSeenText, SwimmerFMayaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFMayaAfterText
	waitbutton
	closetext
	end
	
SwimmerFMayaSeenText:
	text "It's gotta be here"
	line "somewhere… Oh!"
	done

SwimmerFMayaBeatenText:
	text "You spooked me!"
	done

SwimmerFMayaAfterText:
	text "I dropped a REPEL"
	line "around here some-"
	cont "where… Oh well."
	done
	
SwimmerFZoeyScript:
	trainer SWIMMERF, ZOEY, EVENT_BEAT_SWIMMER_F_ZOEY, SwimmerFZoeySeenText, SwimmerFZoeyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFZoeyAfterText
	waitbutton
	closetext
	end
	
SwimmerFZoeySeenText:
	text "CISSY is a WATER-"
	line "type trainer. If"
	cont "you can't beat me,"
	cont "you're hopeless!"
	done

SwimmerFZoeyBeatenText:
	text "Ooh, you've got"
	line "a chance!"
	done

SwimmerFZoeyAfterText:
	text "Good luck!"
	done
	
SwimmerMChadScript:
	trainer SWIMMERM, CHAD, EVENT_BEAT_SWIMMER_M_CHAD, SwimmerMChadSeenText, SwimmerMChadBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMChadAfterText
	waitbutton
	closetext
	end
	
SwimmerMChadSeenText:
	text "Look out, cuz!"
	done

SwimmerMChadBeatenText:
	text "My head…"
	done

SwimmerMChadAfterText:
	text "I'm practicing my"
	line "swimming spin turn"
	cont "cuz."
	
	para "… … … … …"
	
	para "I think I'm gonna"
	line "barf, cuz…"
	done
	
SwimmerMLukeScript:
	trainer SWIMMERM, LUKE, EVENT_BEAT_SWIMMER_M_LUKE, SwimmerMLukeSeenText, SwimmerMLukeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMLukeAfterText
	waitbutton
	closetext
	end
	
SwimmerMLukeSeenText:
	text "Bruh."
	line "Get out of the way"
	cont "bruh."
	done

SwimmerMLukeBeatenText:
	text "Bruh…"
	done

SwimmerMLukeAfterText:
	text "Bruh…"
	line "I can't check on"
	cont "my girl over there"
	cont "if you're in my"
	cont "way!"
	done
	
LassMillieScript:
	trainer LASS, MILLIE, EVENT_BEAT_LASS_MILLIE, LassMillieSeenText, LassMillieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassMillieAfterText
	waitbutton
	closetext
	end
	
LassMillieSeenText:
	text "Okay, MILLIE, you"
	line "got this…"
	done

LassMillieBeatenText:
	text "Oh, I blew it!"
	done

LassMillieAfterText:
	text "… … … … …"
	
	para "You're pretty good"
	line "at this…"
	done
	
LassSandyScript:
	trainer LASS, SANDY, EVENT_BEAT_LASS_SANDY, LassSandySeenText, LassSandyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassSandyAfterText
	waitbutton
	closetext
	end
	
LassSandySeenText:
	text "There's some rare"
	line "#MON in the"
	cont "grass here."
	done

LassSandyBeatenText:
	text "Isn't SUNKERN just"
	line "adorable?"
	done

LassSandyAfterText:
	text "SUNKERN is still a"
	line "pretty rare #-"
	cont "MON, even if it's"
	cont "weak."
	
	para "It's only found in"
	line "the MORNING!"
	done

Route52_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 59, TANGELO_JUNGLE_ROUTE_52_GATE, 1
	warp_event  8, 59, TANGELO_JUNGLE_ROUTE_52_GATE, 2
	warp_event  9, 53, ROUTE_52_POKECENTER_1F, 2

	def_coord_events

	def_bg_events
	bg_event  8, 10, BGEVENT_ITEM, Route52HiddenGreatBall
	bg_event 21, 30, BGEVENT_ITEM, Route52HiddenPearl
	bg_event  7, 52, BGEVENT_ITEM, Route52HiddenBurnHeal
	bg_event  7, 35, BGEVENT_READ, Route52Sign
	bg_event  5, 55, BGEVENT_READ, TrainerTipsRoute52Sign

	def_object_events
	object_event 14, 20, SPRITE_BERRY_Q_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route52FruitTree, -1
	object_event 16,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route52DireHit, EVENT_ROUTE_52_DIRE_HIT
	object_event  9, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route52Repel, EVENT_ROUTE_52_REPEL
	object_event 10,  9, SPRITE_WALKING_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, SwimmerFDahliaScript, -1
	object_event 11, 15, SPRITE_WALKING_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, SwimmerFMayaScript, -1
	object_event 18, 36, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, SwimmerFZoeyScript, -1
	object_event 16, 27, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, SwimmerMChadScript, -1
	object_event 16, 32, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, SwimmerMLukeScript, -1
	object_event 18, 18, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_AZURE, OBJECTTYPE_TRAINER, 3, LassMillieScript, -1
	object_event 15, 47, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_AZURE, OBJECTTYPE_TRAINER, 3, LassSandyScript, -1

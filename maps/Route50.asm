	object_const_def
	const YOUNGSTER_DONNY
	const YOUNGSTER_JAVI
	const BEAUTY_ROSE
	const BUG_CATCHER_ASHTON

Route50_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerYoungsterDonny:
	trainer YOUNGSTER, DONNY, EVENT_BEAT_YOUNGSTER_DONNY, YoungsterDonnySeenText, YoungsterDonnyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterDonnyAfterText
	waitbutton
	closetext
	end
	
YoungsterDonnySeenText:
	text "Our eyes met!"
	line "That means one"
	cont "thing!"
	
	para "We battle!"
	done

YoungsterDonnyBeatenText:
	text "Should've kept my"
	line "eyes closed…"
	done

YoungsterDonnyAfterText:
	text "When trainers lock"
	line "eyes, it starts a"
	cont "#MON battle!"
	done

TrainerYoungsterJavi:
	trainer YOUNGSTER, JAVI, EVENT_BEAT_YOUNGSTER_JAVI, YoungsterJaviSeenText, YoungsterJaviBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterJaviAfterText
	waitbutton
	closetext
	end
	
YoungsterJaviSeenText:
	text "This is my short-"
	line "cut… You can't use"
	cont "it!"
	done

YoungsterJaviBeatenText:
	text "I don't want any"
	line "trouble…"
	done

YoungsterJaviAfterText:
	text "This is a short-"
	line "cut… But you may"
	cont "miss out on some"
	cont "items!"
	done
	
TrainerBeautyRose:
	trainer BEAUTY, ROSE, EVENT_BEAT_BEAUTY_ROSE, BeautyRoseSeenText, BeautyRoseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyRoseAfterText
	waitbutton
	closetext
	end
	
BeautyRoseSeenText:
	text "A new trainer?"
	line "How adorable. I'm"
	cont "gonna make you go"
	cont "cry home to your"
	cont "mommy."
	done

BeautyRoseBeatenText:
	text "Waah! Mom!"
	done

BeautyRoseAfterText:
	text "Sniffle…"
	
	para "I can't believe I"
	line "lost to a newbie…"
	done	

TrainerBugcatcherAshton:
	trainer BUG_CATCHER, ASHTON, EVENT_BEAT_BUG_CATCHER_ASHTON, BugcatcherAshtonSeenText, BugcatcherAshtonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugcatcherAshtonAfterText
	waitbutton
	closetext
	end
	
BugcatcherAshtonSeenText:
	text "What am I doing?"
	line "I'm looking for"
	cont "BUG #MON!"
	done

BugcatcherAshtonBeatenText:
	text "Buzz off!"
	done

BugcatcherAshtonAfterText:
	text "I hear there's a"
	line "move that can"
	cont "knock #MON out"
	cont "of the foliage."
	done

Route50FruitTree1:
	fruittree FRUITTREE_ROUTE_50_1
	
Route50FruitTree2:
	fruittree FRUITTREE_ROUTE_50_2

Route50_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0, 29, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerYoungsterDonny, -1
	object_event  5, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerYoungsterJavi, -1
	object_event 14, 26, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyRose, -1
	object_event  6,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerBugcatcherAshton, -1
	object_event 10,  2, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route50FruitTree1, -1
	object_event 16, 10, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route50FruitTree2, -1


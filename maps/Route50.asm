	object_const_def
	const YOUNGSTER_DONNY
	const YOUNGSTER_JAVI
	const BEAUTY_ROSE
	const BUG_CATCHER_ASHTON
	const ROUTE_50_FRUITTREE_1
	const ROUTE_50_FRUITTREE_2
	const ROUTE_50_ANTIDOTE
	const ROUTE_50_POKEBALL
	const ROUTE_50_COOLTRAINER

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
	
Route50Antidote:
	itemball ANTIDOTE

Route50Pokeball:
	itemball POKE_BALL
	
Route50HiddenPokeball:
	hiddenitem POKE_BALL, EVENT_ROUTE_50_HIDDEN_POKE_BALL
	
Route50HiddenPrettyShell:
	hiddenitem PRETTY_SHELL, EVENT_ROUTE_50_HIDDEN_PRETTY_SHELL
	
Route50Sign:
	jumptext Route50SignText

TrainerTipsRoute50Sign:
	jumptext TrainerTipsRoute50SignText

Route50SignText:
	text "ROUTE 50"
	done

TrainerTipsRoute50SignText:
	text "TRAINER TIPS"
	
	para "Don't throw your"
	line "#BALL at a"
	cont "trainer's #MON!"
	
	para "Stealing is stric-"
	line "tly prohibited!"
	done
	
Route50CooltrainerScript:
	jumptextfaceplayer Route50CooltrainerText
	
Route50CooltrainerText:
	text "To go any further,"
	line "you'll need a boat"
	cont "or a #MON that"
	cont "can SURF."
	done	

Route50_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  3, 47, BGEVENT_READ, Route50Sign
	bg_event 13, 29, BGEVENT_READ, TrainerTipsRoute50Sign
	bg_event 12,  4, BGEVENT_ITEM, Route50HiddenPokeball
	bg_event 16, 48, BGEVENT_ITEM, Route50HiddenPrettyShell

	def_object_events
	object_event  0, 29, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerYoungsterDonny, -1
	object_event  5, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerYoungsterJavi, -1
	object_event 14, 26, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_TRAINER, 2, TrainerBeautyRose, -1
	object_event  6,  2, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_UP, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerBugcatcherAshton, -1
	object_event 10,  2, SPRITE_BERRY_B_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, Route50FruitTree1, -1
	object_event 16, 10, SPRITE_BERRY_EPSILON_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route50FruitTree2, -1
	object_event 11, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route50Antidote, EVENT_ROUTE_50_ANTIDOTE
	object_event 10, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route50Pokeball, EVENT_ROUTE_50_POKE_BALL
	object_event 15, 42, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route50CooltrainerScript, -1


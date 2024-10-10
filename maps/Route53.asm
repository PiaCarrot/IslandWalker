	object_const_def
	const ROUTE_53_OFFICER_1
	const ROUTE_53_OFFICER_2
	const ROUTE_53_OFFICER_3
	const ROUTE_53_LOOKER
	const ROUTE_53_BERRYTREE
	const ROUTE_53_ITEMBALL_1
	const ROUTE_53_ITEMBALL_2
	const ROUTE_53_ATHLETE_TOMMY
	const ROUTE_53_FISHER_BOBBY

Route53_MapScripts:
	def_scene_scripts

	def_callbacks

Route53Sign:
	jumptext Route53SignText

Route53SignText:
	text "ROUTE 53"
	done
	
Route53FruitTree:
	fruittree FRUITTREE_ROUTE_53
	
Route53JennyScript:
	faceplayer
	opentext
	writetext Route53JennyText
	waitbutton
	closetext
	turnobject ROUTE_53_LOOKER, LEFT
	pause 25
	turnobject ROUTE_53_LOOKER, UP
	end
	
Route53JennyText:
	text "No one can pass at"
	line "this time! Don't"
	cont "interfere with our"
	cont "investigation,"
	cont "please!"
	done
	
Route53CooltrainerScript:
	jumptextfaceplayer Route53CooltrainerText
	
Route53CooltrainerText:
	text "There's a DRAGON-"
	line "type #MON that"
	cont "looks like a worm!"
	
	para "It likes to burrow"
	line "in APPLES or LEPPA"
	cont "BERRIES."
	
	para "I think you might"
	line "find them on this"
	cont "ROUTE somewhere…"
	done
	
Route53JunctionSign:
	jumptext Route53JunctionSignText
	
Route53JunctionSignText:
	text "↑ MANDARIN NORTH"
	line "↓ SUNBURST ISLAND"
	done

Route53GreatBall:
	itemball GREAT_BALL

Route53SuperPotion:
	itemball SUPER_POTION
	
AthleteTommyScript:
	trainer ATHLETE, TOMMY, EVENT_BEAT_ATHLETE_TOMMY, AthleteTommySeenText, AthleteTommyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AthleteTommyAfterText
	waitbutton
	closetext
	end
	
AthleteTommySeenText:
	text "The only thing I"
	line "love more than a"
	cont "race is battling!"
	done

AthleteTommyBeatenText:
	text "I'm dropping out"
	line "of this marathon…"
	done

AthleteTommyAfterText:
	text "To improve SPEED"
	line "means beating fast"
	cont "#MON, or taking"
	cont "CARBOS vitamins!"
	done

FisherBobbyScript:
	trainer FISHER, BOBBY, EVENT_BEAT_FISHER_BOBBY, FisherBobbySeenText, FisherBobbyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherBobbyAfterText
	waitbutton
	closetext
	end
	
FisherBobbySeenText:
	text "Let's compare our"
	line "catches!"
	done

FisherBobbyBeatenText:
	text "It's not all about"
	line "winning, you know!"
	done

FisherBobbyAfterText:
	text "I got a BAMBOO ROD"
	line "from PAT on MIKAN"
	cont "ISLAND!"
	done

Route53_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  8, MIKAN_ISLAND_ROUTE_53_GATE_1F, 1
	warp_event  4,  9, MIKAN_ISLAND_ROUTE_53_GATE_1F, 2

	def_coord_events

	def_bg_events
	bg_event  6,  6, BGEVENT_READ, Route53Sign
	bg_event 53,  9, BGEVENT_READ, Route53JunctionSign

	def_object_events
	object_event 29, 11, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route53JennyScript, EVENT_CISSY_DEFEATED
	object_event 29, 10, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route53JennyScript, EVENT_CISSY_DEFEATED
	object_event 32, 10, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route53JennyScript, EVENT_CISSY_DEFEATED
	object_event 32, 11, SPRITE_LOOKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CISSY_DEFEATED
	object_event  9, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, Route53CooltrainerScript, -1
	object_event 30,  2, SPRITE_BERRY_F_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route53FruitTree, -1
	object_event 18,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route53GreatBall, EVENT_ROUTE_53_GREAT_BALL
	object_event 33,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route53SuperPotion, EVENT_ROUTE_53_SUPER_POTION
	object_event 38,  6, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, AthleteTommyScript, -1
	object_event 48,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, FisherBobbyScript, -1

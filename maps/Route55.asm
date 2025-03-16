	object_const_def
	const ROUTE_55_ITEMBALL_1
	const ROUTE_55_ITEMBALL_2
	const ROUTE_55_BERRYTREE_1
	const ROUTE_55_BERRYTREE_2
	const ROUTE_55_ATHLETE_ZACK
	const ROUTE_55_YOUNGSTER_JOSEPH

Route55_MapScripts:
	def_scene_scripts

	def_callbacks
	
Route55SuperPotion:
	itemball SUPER_POTION
	
Route55SoftSand:
	itemball SOFT_SAND

Route55FruitTree:
	fruittree FRUITTREE_ROUTE_55_1

Route55FruitTree2:
	fruittree FRUITTREE_ROUTE_55_2
	
Route55AthleteZackScript:
	trainer ATHLETE, ZACK, EVENT_BEAT_ATHLETE_ZACK, Route55AthleteZackSeenText, Route55AthleteZackBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route55AthleteZackAfterText
	waitbutton
	closetext
	end
	
Route55AthleteZackSeenText:
	text "I wake up every"
	line "morning and run"
	cont "a lap around the"
	cont "island!"
	done

Route55AthleteZackBeatenText:
	text "A battle is the"
	line "best way to end a"
	cont "training session!"
	done

Route55AthleteZackAfterText:
	text "Phew! I'm beat."
	line "If only I had the"
	cont "endurance of a"
	cont "DODUO!"
	done
	
Route55YoungsterJosephScript:
	trainer YOUNGSTER, JOSEPH, EVENT_BEAT_YOUNGSTER_JOSEPH, Route55YoungsterJosephSeenText, Route55YoungsterJosephBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route55YoungsterJosephAfterText
	waitbutton
	closetext
	end
	
Route55YoungsterJosephSeenText:
	text "I'm feeling dizzy…"
	done

Route55YoungsterJosephBeatenText:
	text "Whoa… The world is"
	line "spinning!"
	done

Route55YoungsterJosephAfterText:
	text "Ugh… I was trying"
	line "to dance like my"
	cont "SPINDA."
	
	para "I think I'm gonna"
	line "barf…"
	done
	
Route55Sign:
	jumptext Route55SignText
	
Route55SignText:
	text "ROUTE 55"
	done
	
Route55HouseSign:
	jumptext Route55HouseSignText
	
Route55HouseSignText:
	text " "
	done
	
RangiIslandSign:
	jumptext RangiIslandSignText
	
RangiIslandSignText:
	text "RANGI ISLAND"
	line "HERE LIES 9BIT"
	done

Route55_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  5, CRYSTAL_CAVE_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 17, 13, BGEVENT_READ, Route55Sign
	bg_event 11, 45, BGEVENT_READ, Route55HouseSign
	bg_event 47, 11, BGEVENT_READ, RangiIslandSign

	def_object_events
	object_event 20, 54, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route55SuperPotion, EVENT_ROUTE_55_SUPER_POTION
	object_event 25, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route55SoftSand, EVENT_ROUTE_55_SOFT_SAND
	object_event 30, 40, SPRITE_BERRY_Y_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route55FruitTree, -1
	object_event 10, 52, SPRITE_BERRY_J_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route55FruitTree2, -1
	object_event 22, 47, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, Route55AthleteZackScript, -1
	object_event 33, 43, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, Route55YoungsterJosephScript, -1

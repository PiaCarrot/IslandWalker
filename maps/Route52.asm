	object_const_def
	const ROUTE_52_BERRY_TREE
	const ROUTE_52_ITEMBALL_1
	const ROUTE_52_ITEMBALL_2

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
	bg_event 18, 50, BGEVENT_ITEM, Route52HiddenBurnHeal
	bg_event  7, 35, BGEVENT_READ, Route52Sign
	bg_event  5, 55, BGEVENT_READ, TrainerTipsRoute52Sign

	def_object_events
	object_event 14, 20, SPRITE_BERRY_Q_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route52FruitTree, -1
	object_event 16,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route52DireHit, EVENT_ROUTE_52_DIRE_HIT
	object_event  9, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route52Repel, EVENT_ROUTE_52_REPEL

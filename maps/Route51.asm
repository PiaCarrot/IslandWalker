	object_const_def
	const ROUTE_51_FRUITTREE_1
	const ROUTE_51_ITEM_1
	const ROUTE_51_ITEM_2
	const ROUTE_51_ITEM_3
	const ROUTE_51_TM_BALL
	const ROUTE_51_YOUNGSTER
	const ROUTE_51_HIKER

Route51_MapScripts:
	def_scene_scripts

	def_callbacks


Route51FruitTree:
	fruittree FRUITTREE_ROUTE_51
	
Route51Repel:
	itemball REPEL

Route51Potion:
	itemball POTION

Route51XAttack:
	itemball X_ATTACK
	
Route51TMPlaceholder:
	end
	
Route51Sign:
	jumptext Route51SignText

Route51SignText:
	text "ROUTE 51"
	done
	
Route51HikerScript:
	jumptextfaceplayer Route51HikerText
	
Route51YoungsterScript:
	jumptextfaceplayer Route51YoungsterText

Route51HikerText:
	text "Wahah! I can climb"
	line "this mountain with"
	cont "ease! I bet you"
	cont "could do it too,"
	cont "if you had the HM"
	cont "ROCK CLIMB!"
	done

Route51YoungsterText:
	text "REPEL scares away"
	line "weak #MON!"
	
	para "You can use this"
	line "to your advantage"
	cont "to find stronger"
	cont "#MON!"
	done

Route51_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  2, TANGELO_JUNGLE_ROUTE_51_GATE, 1
	warp_event 12,  3, TANGELO_JUNGLE_ROUTE_51_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 21, 15, BGEVENT_READ, Route51Sign

	def_object_events
	object_event  6, 24, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route51FruitTree, -1
	object_event 29, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route51Repel, EVENT_ROUTE_51_REPEL
	object_event 19,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route51Potion, EVENT_ROUTE_51_POTION
	object_event  7,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route51XAttack, EVENT_ROUTE_51_X_ATTACK
	object_event 28, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route51TMPlaceholder, EVENT_ROUTE_51_TM_PLACEHOLDER
	object_event 16, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route51YoungsterScript, -1
	object_event 23,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, Route51HikerScript, -1

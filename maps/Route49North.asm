	object_const_def
	const ROUTE_49_NORTH_FRUITTREE1
	const ROUTE_49_NORTH_FRUITTREE2
	const ROUTE_49_NORTH_LASS
	const ROUTE_49_NORTH_BEACH_GLASS
	const ROUTE_49_NORTH_ETHER

Route49North_MapScripts:
	def_scene_scripts

	def_callbacks
	
Route49NorthFruitTree1:
	fruittree FRUITTREE_ROUTE_49_NORTH_1
	
Route49NorthFruitTree2:
	fruittree FRUITTREE_ROUTE_49_NORTH_2
	
Route49NorthLassScript:
	jumptextfaceplayer Route49NorthLassText
	
Route49NorthLassText:
	text "Those spooky shad-"
	line "ows! You see them"
	cont "on the ground and"
	cont "in the water!"
	
	para "Get too close, and"
	line "a #MON attacks!"
	done
	
Route49NorthBeachGlass:
	itemball BEACH_GLASS

Route49NorthEther:
	itemball ETHER
	
Route49NorthHiddenBeachGlass:
	hiddenitem BEACH_GLASS, EVENT_ROUTE_49_NORTH_HIDDEN_BEACH_GLASS

Route49North_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  4, 14, BGEVENT_ITEM, Route49NorthHiddenBeachGlass

	def_object_events
	object_event 12, 20, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49NorthFruitTree1, -1
	object_event 20,  6, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49NorthFruitTree2, -1
	object_event  9, 46, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route49NorthLassScript, -1
	object_event  6, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route49NorthBeachGlass, EVENT_ROUTE_49_NORTH_BEACH_GLASS
	object_event 24, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route49NorthEther, EVENT_ROUTE_49_NORTH_ETHER

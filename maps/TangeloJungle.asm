	object_const_def
	const TANGELO_JUNGLE_FRUITTREE_1
	const TANGELO_JUNGLE_FRUITTREE_2
	const TANGELO_JUNGLE_DEPTHS_1
	const TANGELO_JUNGLE_DEPTHS_2

TangeloJungle_MapScripts:
	def_scene_scripts

	def_callbacks
	

TangeloJungleFruitTree1:
	fruittree FRUITTREE_TANGELO_JUNGLE_1
	
TangeloJungleFruitTree2:
	fruittree FRUITTREE_TANGELO_JUNGLE_2
	
TangeloJungleDepths:
	jumpstd MonDepthsScript

TangeloJungle_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33, 38, TANGELO_JUNGLE_ROUTE_51_GATE, 3
	warp_event 33, 39, TANGELO_JUNGLE_ROUTE_51_GATE, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0, 30, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloJungleFruitTree1, -1
	object_event 38, 10, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloJungleFruitTree2, -1
	object_event 37, 19, SPRITE_SHADOW, SPRITEMOVEDATA_SWIM_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloJungleDepths, -1
	object_event 31, 11, SPRITE_SHADOW, SPRITEMOVEDATA_SWIM_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloJungleDepths, -1

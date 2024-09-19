	object_const_def

TangeloJungle_MapScripts:
	def_scene_scripts

	def_callbacks
	

TangeloJungleFruitTree1:
	fruittree FRUITTREE_TANGELO_JUNGLE_1
	
TangeloJungleFruitTree2:
	fruittree FRUITTREE_TANGELO_JUNGLE_2

TangeloJungle_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0, 30, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloJungleFruitTree1, -1
	object_event 38, 10, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloJungleFruitTree2, -1

	object_const_def

MikanIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanIslandFruitTree1:
	fruittree FRUITTREE_MIKAN_ISLAND_1
	
MikanIslandFruitTree2:
	fruittree FRUITTREE_MIKAN_ISLAND_2

MikanIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 24, 32, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MikanIslandFruitTree1, -1
	object_event 25, 32, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MikanIslandFruitTree2, -1

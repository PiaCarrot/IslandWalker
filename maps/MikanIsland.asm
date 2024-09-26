	object_const_def

MikanIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanIslandFruitTree1:
	fruittree FRUITTREE_MIKAN_ISLAND_1
	
MikanIslandFruitTree2:
	fruittree FRUITTREE_MIKAN_ISLAND_2

MikanIslandFruitTree3:
	fruittree FRUITTREE_MIKAN_ISLAND_3

MikanIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 29, MIKAN_ISLAND_POKECENTER_1F, 2
	warp_event 13, 29, MIKAN_ISLAND_POKEMART, 1
	warp_event  5, 23, MIKAN_ISLAND_HOUSE, 1
	warp_event 27, 25, MIKAN_ISLAND_BERRY_MASTER_HOUSE, 1
	def_coord_events

	def_bg_events

	def_object_events
	object_event 24, 26, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MikanIslandFruitTree1, -1
	object_event 24, 27, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MikanIslandFruitTree2, -1
	object_event 24, 28, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MikanIslandFruitTree3, -1

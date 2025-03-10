	object_const_def
	const PINKAN_BERRY_1
	const PINKAN_BERRY_2
	const PINKAN_BERRY_3

PinkanIsland_MapScripts:
	def_scene_scripts

	def_callbacks

PinkanIslandFruitTree:
	fruittree FRUITTREE_PINKAN_ISLAND_1

PinkanIslandFruitTree2:
	fruittree FRUITTREE_PINKAN_ISLAND_2

PinkanIslandFruitTree3:
	fruittree FRUITTREE_PINKAN_ISLAND_3

PinkanIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 22,  6, SPRITE_BERRY_P_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, PinkanIslandFruitTree, -1
	object_event  8, 26, SPRITE_BERRY_P_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, PinkanIslandFruitTree2, -1
	object_event 32,  4, SPRITE_BERRY_P_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, PinkanIslandFruitTree3, -1

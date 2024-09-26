	object_const_def

MikanThicket_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanThicketFruitTree1:
	fruittree FRUITTREE_MIKAN_THICKET_1
	
MikanThicketFruitTree2:
	fruittree FRUITTREE_MIKAN_THICKET_2

MikanThicket_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 29, MIKAN_ISLAND, 5
	warp_event 15, 29, MIKAN_ISLAND, 6
	def_coord_events

	def_bg_events

	def_object_events
	object_event 20, 20, SPRITE_BERRY_M_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MikanThicketFruitTree1, -1
	object_event 12,  6, SPRITE_BERRY_I_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, MikanThicketFruitTree2, -1

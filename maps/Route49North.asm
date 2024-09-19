	object_const_def

Route49North_MapScripts:
	def_scene_scripts

	def_callbacks
	
Route49NorthFruitTree1:
	fruittree FRUITTREE_ROUTE_49_NORTH_1
	
Route49NorthFruitTree2:
	fruittree FRUITTREE_ROUTE_49_NORTH_2

Route49North_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12, 20, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49NorthFruitTree1, -1
	object_event 20,  6, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49NorthFruitTree2, -1

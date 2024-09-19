	object_const_def

Route52_MapScripts:
	def_scene_scripts

	def_callbacks

Route52FruitTree:
	fruittree FRUITTREE_ROUTE_52

Route52_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6, 24, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route52FruitTree, -1
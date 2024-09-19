	object_const_def

Route51_MapScripts:
	def_scene_scripts

	def_callbacks


Route51FruitTree:
	fruittree FRUITTREE_ROUTE_51

Route51_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6, 24, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route51FruitTree, -1

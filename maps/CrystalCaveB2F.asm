	object_const_def

CrystalCaveB2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CrystalCaveB2FDiveMap

CrystalCaveB2FDiveMap:
	divemap CRYSTAL_CAVE_UNDERWATER, -8, -18
	return


CrystalCaveB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  1, ROUTE_55_UNDERWATER, 1

	def_coord_events

	def_bg_events

	def_object_events
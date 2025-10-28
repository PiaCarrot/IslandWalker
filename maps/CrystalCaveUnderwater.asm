	object_const_def

CrystalCaveUnderwater_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CrystalCaveUnderwaterDiveMap

CrystalCaveUnderwaterDiveMap:
	divemap CRYSTAL_CAVE_B2F, 8, 18
	return


CrystalCaveUnderwater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 13, ROUTE_55_UNDERWATER, 1

	def_coord_events

	def_bg_events

	def_object_events
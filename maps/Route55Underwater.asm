	object_const_def

Route55Underwater_MapScripts:
        def_scene_scripts

        def_callbacks
        callback MAPCALLBACK_NEWMAP, Route55UnderwaterDiveMap

Route55UnderwaterDiveMap:
        divemap ROUTE_55
        return

Route55Underwater_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_const_def
	const ROUTE_68_SOUTH_TM_BALL
	const ROUTE_68_SOUTH_PP_MAX

Route68South_MapScripts:
	def_scene_scripts

	def_callbacks
	
Route68TMOverheat:
	itemball TM_OVERHEAT
	
Route68SouthPPMax:
	itemball PP_MAX
	
Route68SouthSign:
	jumptext Route68SouthSignText

Route68SouthSignText:
	text "ROUTE 68"
	line "↑ RIND ISLAND"
	done

Route68South_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 21, 15, BGEVENT_READ, Route68SouthSign

	def_object_events
	object_event  4, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_ITEMBALL, 0, Route68TMOverheat, EVENT_TM_50_OVERHEAT
	object_event 41, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route68SouthPPMax, EVENT_ROUTE_68_SOUTH_PP_MAX

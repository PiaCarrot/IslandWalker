	object_const_def
	const ROUTE_52_POKECENTER1F_NURSE

Route52Pokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

Route52Pokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

Route52Pokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_52, 3
	warp_event  3,  7, ROUTE_52, 3
	warp_event  9,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route52Pokecenter1FNurseScript, -1
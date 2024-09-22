	object_const_def
	const CIANWOODPOKECENTER1F_NURSE

TangeloIslandPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

TangeloIslandPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

TangeloIslandPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, TANGELO_ISLAND, 6
	warp_event  3,  7, TANGELO_ISLAND, 6
	warp_event  9,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloIslandPokecenter1FNurseScript, -1

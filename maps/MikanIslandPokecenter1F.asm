	object_const_def
	const MIKAN_ISLAND_POKECENTER1F_NURSE
	const MIKAN_ISLAND_POKECENTER1F_PC_GIRL

MikanIslandPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

MikanIslandPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
MikanIslandPokecenter1FPCGuyScript:
	jumptextfaceplayer MikanIslandPokecenter1FPCGuyText
	
MikanIslandPokecenter1FPCGuyText:
	text "Where do #MON"
	line "come from?"
	
	para "Do they lay eggs?"
	line "I heard that's what"
	cont "a PROFESSOR from a"
	cont "place called JOHTO"
	cont "is researching!"
	done

MikanIslandPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MIKAN_ISLAND, 1
	warp_event  3,  7, MIKAN_ISLAND, 1
	warp_event  9,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MikanIslandPokecenter1FNurseScript, -1
	object_event  0,  6, SPRITE_PC_GIRL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MikanIslandPokecenter1FPCGuyScript, -1
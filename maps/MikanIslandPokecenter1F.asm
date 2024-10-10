	object_const_def
	const MIKAN_ISLAND_POKECENTER1F_NURSE
	const MIKAN_ISLAND_POKECENTER1F_PC_GIRL
	const MIKAN_ISLAND_POKECENTER1F_PC_SAILOR
	const MIKAN_ISLAND_POKECENTER1F_PC_POKEFAN

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
	
MikanIslandPCSailorScript:
	jumptextfaceplayer MikanIslandPCSailorText
	
MikanIslandPCSailorText:
	text "I hear there's a"
	line "cave on an island" 
	cont "where the #MON"
	cont "that appear are"
	cont "different every"
	cont "day!"
	
	para "Such a wonderous"
	line "place…"
	cont "I wonder where it"
	cont "could be hidden?"
	done
	
MikanIslandPCPokefanFScript:
	jumptextfaceplayer MikanIslandPCPokefanFText
	
MikanIslandPCPokefanFText:
	text "CISSY lives behind"
	line "the GYM, in the"
	cont "MIKAN THICKET. If"
	cont "you can find your"
	cont "way through, I bet" 
	cont "there's some strong"
	cont "#MON that make" 
	cont "their homes there!"
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
	object_event  6,  4, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, MikanIslandPCSailorScript, -1
	object_event  7,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MikanIslandPCPokefanFScript, -1

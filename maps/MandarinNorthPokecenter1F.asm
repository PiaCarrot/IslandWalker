	object_const_def
	const MANDARIN_NORTH_POKECENTER1F_NURSE
	const MANDARIN_NORTH_POKECENTER1F_PC_GUY
	const MANDARIN_NORTH_POKECENTER1F_PC_BUG_CATCHER_F

MandarinNorthPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

MandarinNorthPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
MandarinNorthPokecenter1FPCGuyScript:
	jumptextfaceplayer MandarinNorthPokecenter1FPCGuyText
	
MandarinNorthPokecenter1FPCGuyText:
	text "RADIO might be the"
	line "way of the future."
	
	para "I don't think it's"
	line "needed out here in"
	cont "the ORANGE ISLANDS"
	cont "quite yet."
	done
	
MandarinNorthPCBugCatcherFScript:
	jumptextfaceplayer MandarinNorthPCBugCatcherFText
	
MandarinNorthPCBugCatcherFText:
	text "I heard there's a"
	line "BUG-type that can"
	cont "be found hiding"
	cont "under ROCKs."
	done

MandarinNorthPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MANDARIN_NORTH, 5
	warp_event  3,  7, MANDARIN_NORTH, 5
	warp_event  9,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MandarinNorthPokecenter1FNurseScript, -1
	object_event  0,  6, SPRITE_PC_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MandarinNorthPokecenter1FPCGuyScript, -1
	object_event  7,  6, SPRITE_SIGHTSEER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MandarinNorthPCBugCatcherFScript, -1

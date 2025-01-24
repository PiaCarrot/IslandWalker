	object_const_def
	const SUNBURST_ISLAND_POKECENTER1F_NURSE
	const SUNBURST_ISLAND_POKECENTER1F_PC_GUY
	const SUNBURST_ISLAND_POKECENTER1F_PC_GIRL
	const SUNBURST_ISLAND_POKECENTER1F_GAMEBOY_KID

SunburstIslandPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SunburstIslandPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
SunburstIslandPokecenter1FGameboyKidScript:
	jumptextfaceplayer SunburstIslandPokecenter1FGameboyKidText
	
SunburstIslandPokecenter1FGameboyKidText:
	text "You need a LINKING"
	line "CORD if you wanna"
	cont "get #MON that"
	cont "only evolve by"
	cont "TRADING."
	done
	
SunburstIslandPokecenter1FPCGuyScript:
	jumptext SunburstIslandPokecenter1FPCGuyText
	
SunburstIslandPokecenter1FPCGuyText:
	text "The owner of that"
	line "CURIO SHOP is an"
	cont "odd fellow."
	
	para "He does have some"
	line "very rare stock!"
	done
	
SunburstIslandPokecenter1FPCGirlScript:
	jumptext SunburstIslandPokecenter1FPCGirlText
	
SunburstIslandPokecenter1FPCGirlText:
	text "I hear CHARCADET"
	line "can evolve if you"
	cont "give it some kind"
	cont "of ARMOR."
	done

SunburstIslandPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SUNBURST_ISLAND, 1
	warp_event  3,  7, SUNBURST_ISLAND, 1
	warp_event  9,  0, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SunburstIslandPokecenter1FNurseScript, -1
	object_event  0,  6, SPRITE_PC_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SunburstIslandPokecenter1FPCGuyScript, -1
	object_event  0,  7, SPRITE_PC_GIRL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SunburstIslandPokecenter1FPCGirlScript, -1
	object_event  9,  5, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SunburstIslandPokecenter1FGameboyKidScript, -1
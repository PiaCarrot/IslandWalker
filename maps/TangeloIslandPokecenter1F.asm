	object_const_def
	const TANGELO_ISLAND_POKECENTER1F_NURSE
	const TANGELO_ISLAND_POKECENTER1F_YOUNGSTER
	const TANGELO_ISLAND_POKECENTER1F_LITTLE_GIRL
	const TANGELO_ISLAND_POKECENTER1F_PC_GUY
	const TANGELO_ISLAND_POKECENTER1F_TRACEY

TangeloIslandPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

TangeloIslandPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
TangeloIslandPokecenter1FYoungsterScript:
	jumptextfaceplayer TangeloIslandPokecenter1FYoungsterText

TangeloIslandPokecenter1FLittleGirlScript:
	jumptextfaceplayer TangeloIslandPokecenter1FLittleGirlText
	
TangeloIslandPokecenter1FPCGuyScript:
	jumptextfaceplayer TangeloIslandPokecenter1FPCGuyText
	
TangeloIslandPokecenter1FYoungsterText:
	text "#MON CENTER!"
	line "That's what this"
	cont "place is called!"
	
	para "You can heal your"
	line "#MON here for"
	cont "free!"
	done
	
TangeloIslandPokecenter1FLittleGirlText:
	text "I wanna be a #-"
	line "MON WATCHER like"
	cont "TRACEY someday!"
	cont "He's so cool!"
	done
	
TangeloIslandPokecenter1FPCGuyText:
	text "SURF starts off as"
	line "a weak attack, but"
	cont "as your #MON"
	cont "bonds with you, it"
	cont "becomes much more"
	cont "powerful!"
	done
	
TangeloIslandPokecenter1FTraceyScript:
	opentext
	writetext TraceyTangeloCenterText1
	waitbutton
	closetext
	faceplayer
	showemote EMOTE_SHOCK, TANGELO_ISLAND_POKECENTER1F_TRACEY, 15	
	opentext
	writetext TraceyTangeloCenterText2
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal RIGHT, .WalkDown
	applymovement TANGELO_ISLAND_POKECENTER1F_TRACEY, TraceyTangeloCenterMovement2
.EndEvent
	disappear TANGELO_ISLAND_POKECENTER1F_TRACEY
	playsound SFX_EXIT_BUILDING
	waitsfx
	clearevent EVENT_TRACEY_BATTLE_TANGELO
	clearevent EVENT_LAPRAS_OBTAINED
	setevent EVENT_TRACEY_TANGELO_CENTER_INSIDE
	end
	
.WalkDown:
	applymovement TANGELO_ISLAND_POKECENTER1F_TRACEY, TraceyTangeloCenterMovement1
	sjump .EndEvent

TraceyTangeloCenterText1:
	text "Thank you so much!"
	line "I'll go look after"
	cont "LAPRAS right now!"
	done

TraceyTangeloCenterText2:
	text "Oh, it's you!"
	line "Thanks for coming"
	cont "by. My name is"
	cont "TRACEY SKETCHIT."
	cont "What's yours?"
	
	para "… … …"
	
	para "TRACEY: <PLAYER>?"
	line "Nice to meet you!"
	cont "You really helped"
	cont "me out back there!"
	
	para "LAPRAS is resting"
	line "in the pool out-"
	cont "side. Let's go see"
	cont "how it's doing!"
	done

TraceyTangeloCenterMovement1:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

TraceyTangeloCenterMovement2:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

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
	object_event  7,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TangeloIslandPokecenter1FYoungsterScript, -1
	object_event  8,  3, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, TangeloIslandPokecenter1FLittleGirlScript, -1
	object_event  0,  6, SPRITE_PC_GUY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloIslandPokecenter1FPCGuyScript, -1
	object_event  3,  3, SPRITE_TRACEY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloIslandPokecenter1FTraceyScript, EVENT_TRACEY_TANGELO_CENTER_INSIDE

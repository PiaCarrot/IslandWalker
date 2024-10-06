	object_const_def
	const ROUTE_52_POKECENTER1F_NURSE
	const ROUTE_52_POKECENTER1F_BUG_CATCHER_SIMON
	const ROUTE_52_POKECENTER1F_CATERPIE

Route52Pokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

Route52Pokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
Route52PCCaterpieScript:
	opentext
	writetext Route52PCCaterpieText
	cry CATERPIE
	waitbutton
	closetext
	end
	
Route52PCCaterpieText:
	text "CATERPIE: Puii…"
	done

Route52PCBugCatcherScript:
	opentext
	writetext BugCatcherSimonText1
	waitbutton
	closetext
	cry CATERPIE
	waitsfx
	faceplayer
	showemote EMOTE_SHOCK, ROUTE_52_POKECENTER1F_BUG_CATCHER_SIMON, 15
	opentext
	writetext BugCatcherSimonText2
	waitbutton
	closetext
	turnobject ROUTE_52_POKECENTER1F_BUG_CATCHER_SIMON, LEFT
	end

;TODO: Add a postgame fight here with Bug Catcher Simon
;Team of BUG types (Butterfree, Ninjask, Heracross, Ribombee, Shuckle, Yanmega)

BugCatcherSimonText1:
	text "It's ok, CATERPIE!"
	line "You tried the best"
	cont "you could. He was"
	cont "just strong…"
	done
	
BugCatcherSimonText2:
	text "Oh, hello there!"
	line "CATERPIE and I are"
	cont "hunting for BUG"
	cont "#MON!"
	
	para "We lost a fight to"
	line "this really strong"
	cont "TRAINER…"
	
	para "CATERPIE is really"
	line "down… But I know"
	cont "someday, CATERPIE"
	cont "will be a really"
	cont "great #MON!"
	done

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
	object_event  9,  5, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route52PCBugCatcherScript, -1
	object_event  8,  5, SPRITE_TANGELO_JUNGLE_SCENE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route52PCCaterpieScript, -1

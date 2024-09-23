	object_const_def
	const TANGELO_ISLAND_MART_CLERK
	const TANGELO_ISLAND_MART_COOLTRAINER_M
	const TANGELO_ISLAND_MART_BUG_CATCHER

TangeloIslandPokemart_MapScripts:
	def_scene_scripts

	def_callbacks

TangeloIslandMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_TANGELO
	closetext
	end

TangeloIslandMartCooltrainerMScript:
	jumptextfaceplayer TangeloIslandMartCooltrainerMText

TangeloIslandMartBugCatcherScript:
	jumptextfaceplayer TangeloIslandMartBugCatcherText

TangeloIslandMartCooltrainerMText:
	text "So some #BALLs"
	line "work better than"
	cont "others…"
	
	para "#BALL is the"
	line "gold standard, but"
	cont "DUSK BALL is super"
	cont "good at NIGHT."
	
	para "HEAL BALL is just"
	line "like a #BALL,"
	cont "but it heals the"
	cont "#MON caught."
	
	para "NET BALL is really"
	line "expensive, but it"
	cont "works really well"
	cont "on BUG and WATER"
	cont "#MON…"
	done

TangeloIslandMartBugCatcherText:
	text "The TANGELO JUNGLE"
	line "has lots of BUG-"
	cont "types!"
	
	para "Watch out for one"
	line "called WEEDLE. It"
	cont "can poison your"
	cont "#MON. ANTIDOTE"
	cont "can help a lot!"
	done

TangeloIslandPokemart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, TANGELO_ISLAND, 7
	warp_event  4,  7, TANGELO_ISLAND, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloIslandMartClerkScript, -1
	object_event  2,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, TangeloIslandMartCooltrainerMScript, -1
	object_event  7,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, TangeloIslandMartBugCatcherScript, -1

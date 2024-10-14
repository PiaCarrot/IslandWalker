	object_const_def
	const MANDARIN_NORTH_MART_CLERK
	const MANDARIN_NORTH_MART_CLERK2
	const MANDARIN_NORTH_MART_COOLTRAINER

MandarinNorthPokemart_MapScripts:
	def_scene_scripts

	def_callbacks

MandarinNorthMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MANDARIN_NORTH
	closetext
	end

MandarinNorthMartClerk2Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_X_ITEM
	closetext
	end
	
MandarinNorthMartCooltrainerMScript:
	jumptextfaceplayer MandarinNorthMartCooltrainerMText
	
MandarinNorthMartCooltrainerMText:
	text "Huh. That's neat."
	line "They sell GREAT"
	cont "BALLs here."
	
	para "They're better than"
	line "plain old #"
	cont "BALLs, that's for"
	cont "certain!"
	done


MandarinNorthPokemart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, MANDARIN_NORTH, 6
	warp_event  4,  7, MANDARIN_NORTH, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MandarinNorthMartClerkScript, -1
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MandarinNorthMartClerk2Script, -1
	object_event  7,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MandarinNorthMartCooltrainerMScript, -1

	object_const_def
	const MIKAN_ISLAND_MART_CLERK
	const MIKAN_ISLAND_MART_CLERK2

MikanIslandPokemart_MapScripts:
	def_scene_scripts

	def_callbacks

MikanIslandMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_MIKAN
	closetext
	end

MikanIslandMartClerk2Script:
	opentext
	pokemart MARTTYPE_STANDARD, MART_X_ITEM
	closetext
	end

MikanIslandPokemart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, MIKAN_ISLAND, 2
	warp_event  4,  7, MIKAN_ISLAND, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MikanIslandMartClerkScript, -1
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MikanIslandMartClerk2Script, -1
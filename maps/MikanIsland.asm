	object_const_def
	const MIKAN_ISLAND_BERRY_TREE_1
	const MIKAN_ISLAND_BERRY_TREE_2
	const MIKAN_ISLAND_BERRY_TREE_3
	const MIKAN_ISLAND_ITEMBALL_1
	const MIKAN_ISLAND_ITEMBALL_2

MikanIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanIslandFruitTree1:
	fruittree FRUITTREE_MIKAN_ISLAND_1
	
MikanIslandFruitTree2:
	fruittree FRUITTREE_MIKAN_ISLAND_2

MikanIslandFruitTree3:
	fruittree FRUITTREE_MIKAN_ISLAND_3

MikanIslandSign:
	jumptext MikanIslandSignText

MikanIslandSignText:
	text "MIKAN ISLAND"
	
	para "Soothing sands and"
	line "healing springs"
	done

MikanIslandGymSign:
	jumptext MikanIslandGymSignText

MikanIslandGymSignText:
	text "MIKAN ISLAND GYM"
	
	para "LEADER: CISSY"
	line "The sincere, hot-"
	cont "blooded beauty!"
	done

MikanIslandAriaSign:
	jumptext MikanIslandAriaSignText

MikanIslandAriaSignText:
	text "ARIA's HOUSE"
	done

MikanIslandBerryMasterSign:
	jumptext MikanIslandBerryMasterSignText

MikanIslandBerryMasterSignText:
	text "BERRY MASTER's"
	line "HOUSE"
	done
	
MikanIslandHiddenRevive:
	hiddenitem REVIVE, EVENT_MIKAN_ISLAND_HIDDEN_REVIVE

MikanIslandHiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_MIKAN_ISLAND_HIDDEN_SUPER_POTION

MikanIslandWhiteHerb:
	itemball WHITE_HERB

MikanIslandRoseIncense:
	itemball ROSE_INCENSE

MikanIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 29, MIKAN_ISLAND_POKECENTER_1F, 2
	warp_event 13, 29, MIKAN_ISLAND_POKEMART, 1
	warp_event  5, 23, MIKAN_ISLAND_HOUSE, 1
	warp_event 27, 25, MIKAN_ISLAND_BERRY_MASTER_HOUSE, 1
	warp_event 32,  0, MIKAN_THICKET, 1
	warp_event 33,  0, MIKAN_THICKET, 2
	def_coord_events

	def_bg_events
	bg_event 11, 31, BGEVENT_READ, MikanIslandSign
	bg_event 13, 19, BGEVENT_READ, MikanIslandGymSign
	bg_event  0,  4, BGEVENT_READ, MikanIslandAriaSign
	bg_event 29, 26, BGEVENT_READ, MikanIslandBerryMasterSign
	bg_event  6, 18, BGEVENT_ITEM, MikanIslandHiddenRevive
	bg_event 35, 12, BGEVENT_ITEM, MikanIslandHiddenSuperPotion

	def_object_events
	object_event 24, 26, SPRITE_BERRY_GAMMA_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, MikanIslandFruitTree1, -1
	object_event 24, 27, SPRITE_BERRY_F_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MikanIslandFruitTree2, -1
	object_event 24, 28, SPRITE_BERRY_R_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, MikanIslandFruitTree3, -1
	object_event  8,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MikanIslandWhiteHerb, EVENT_MIKAN_ISLAND_WHITE_HERB
	object_event 15,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MikanIslandRoseIncense, EVENT_MIKAN_ISLAND_ROSE_INCENSE

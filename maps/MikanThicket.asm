	object_const_def
	const MIKAN_THICKET_BERRY_TREE_1
	const MIKAN_THICKET_BERRY_TREE_2
	const MIKAN_THICKET_ITEMBALL_1
	const MIKAN_THICKET_ITEMBALL_2
	const MIKAN_THICKET_ITEMBALL_3

MikanThicket_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanThicketFruitTree1:
	fruittree FRUITTREE_MIKAN_THICKET_1
	
MikanThicketFruitTree2:
	fruittree FRUITTREE_MIKAN_THICKET_2

MikanThicketHiddenTinyBamboo1:
	hiddenitem TINY_BAMBOO, EVENT_MIKAN_THICKET_HIDDEN_TINY_BAMBOO_1

MikanThicketHiddenTinyBamboo2:
	hiddenitem TINY_BAMBOO, EVENT_MIKAN_THICKET_HIDDEN_TINY_BAMBOO_2

MikanThicketHiddenTinyBamboo3:
	hiddenitem TINY_BAMBOO, EVENT_MIKAN_THICKET_HIDDEN_TINY_BAMBOO_3

MikanThicketHiddenBigBamboo1:
	hiddenitem BIG_BAMBOO, EVENT_MIKAN_THICKET_HIDDEN_BIG_BAMBOO_1

MikanThicketHiddenBigBamboo2:
	hiddenitem BIG_BAMBOO, EVENT_MIKAN_THICKET_HIDDEN_BIG_BAMBOO_2

MikanThicketHiddenNugget:
	hiddenitem NUGGET, EVENT_MIKAN_THICKET_HIDDEN_NUGGET

MikanThicketHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_MIKAN_THICKET_HIDDEN_RARE_CANDY

MikanThicketCarbos:
	itemball CARBOS

MikanThicketRoseIncense:
	itemball ROSE_INCENSE
	
MikanThicketTMSwordsDance:
	end
	
MikanThicketCissySign:
	jumptext MikanThicketCissySignText

MikanThicketCissySignText:
	text "CISSY's HOUSE"
	done

MikanThicket_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14, 29, MIKAN_ISLAND, 5
	warp_event 15, 29, MIKAN_ISLAND, 6
	warp_event  5,  5, MIKAN_THICKET_HOUSE, 1
	warp_event 23,  7, CISSYS_HOUSE, 1
	def_coord_events

	def_bg_events
	bg_event 26,  6, BGEVENT_ITEM, MikanThicketHiddenTinyBamboo1
	bg_event 18, 16, BGEVENT_ITEM, MikanThicketHiddenTinyBamboo2
	bg_event  0, 14, BGEVENT_ITEM, MikanThicketHiddenTinyBamboo3
	bg_event 28, 10, BGEVENT_ITEM, MikanThicketHiddenBigBamboo1
	bg_event  6, 19, BGEVENT_ITEM, MikanThicketHiddenBigBamboo2
	bg_event 25, 14, BGEVENT_ITEM, MikanThicketHiddenNugget
	bg_event 15, 11, BGEVENT_ITEM, MikanThicketHiddenRareCandy
	bg_event 21,  7, BGEVENT_READ, MikanThicketCissySign

	def_object_events
	object_event 20, 20, SPRITE_BERRY_M_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MikanThicketFruitTree1, -1
	object_event 12,  6, SPRITE_BERRY_I_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, MikanThicketFruitTree2, -1
	object_event 29, 27, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MikanThicketCarbos, EVENT_MIKAN_THICKET_CARBOS
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MikanThicketRoseIncense, EVENT_MIKAN_THICKET_ROSE_INCENSE
	object_event 16, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_ITEMBALL, 0, MikanThicketTMSwordsDance, EVENT_TM_75_SWORDS_DANCE

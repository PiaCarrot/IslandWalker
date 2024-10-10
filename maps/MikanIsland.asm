DEF MIKAN_ISLAND_SPIDER_SILK_PRICE EQU 500

	object_const_def
	const MIKAN_ISLAND_BERRY_TREE_1
	const MIKAN_ISLAND_BERRY_TREE_2
	const MIKAN_ISLAND_BERRY_TREE_3
	const MIKAN_ISLAND_ITEMBALL_1
	const MIKAN_ISLAND_ITEMBALL_2
	const MIKAN_ISLAND_KIMONO_GIRL
	const MIKAN_ISLAND_BLACKBELT
	const MIKAN_ISLAND_GRANNY
	const MIKAN_ISLAND_SWIMMER_F

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

MikanIslandTinyBamboo:
	itemball TINY_BAMBOO
	
MikanKimonoGirlScript:
	jumptextfaceplayer MikanKimonoGirlText
	
MikanBlackbeltScript:
	jumptextfaceplayer MikanBlackbeltText
	
MikanGrannyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_ROD
	iftrue .End
	checkevent EVENT_OLD_ROD_SIDEQUEST_GIVEN_BAMBOO
	iftrue .OfferToSellSilk
	writetext MikanGrannyText
	waitbutton
	closetext
	end

.End
	writetext MikanGrannyText2
	waitbutton
	closetext
	end
	
.OfferToSellSilk:
	writetext MikanGrannyText3
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, MIKAN_ISLAND_SPIDER_SILK_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem SPIDER_SILK
	iffalse .NoRoom
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, MIKAN_ISLAND_SPIDER_SILK_PRICE
	special PlaceMoneyTopRight
	writetext MikanGrannyThankYouText
	waitbutton
	closetext
	end
	
.NotEnoughMoney:
	writetext MikanGrannyNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext MikanGrannyRefusedText
	waitbutton
	closetext
	end

.NoRoom:
	writetext MikanGrannyNoRoomText
	waitbutton
	closetext
	end

MikanGrannyText:
	text "My son makes RODs"
	line "for fishing. He's"
	cont "been making them"
	cont "since childhood."
	done
	
MikanGrannyText2:
	text "My son's BAMBOO"
	line "ROD is top notch!"
	
	para "I hope you use it"
	line "well!"
	done
	
MikanGrannyText3:
	text "So you've heard of"
	line "GRANNY NAGLE's"
	cont "premium silk, and"
	cont "want to buy some?"
	
	para "I'll give you a"
	line "special price…"
	cont "How does ¥500"
	cont "sound to you?"
	done

MikanGrannyThankYouText:
	text "Thanks for suppor-"
	line "ting small farmers"
	cont "in these trying"
	cont "times!"
	done

MikanGrannyNotEnoughMoneyText:
	text "You don't have"
	line "enough money."

	para "This is organic,"
	cont "cruelty-free, farm"
	cont "raised SPIDER SILK"
	cont "after all…"
	
	para "Maybe a kid like"
	line "you can't afford"
	cont "such luxurious"
	cont "things…"
	done

MikanGrannyRefusedText:
	text "Oh, fine then…"
	line "I raise SPINARAK"
	cont "to farm this by"
	cont "hand, you know…"
	
	para "Maybe a kid like"
	line "you can't afford"
	cont "such luxurious"
	cont "things…"
	done

MikanGrannyNoRoomText:
	text "You don't have"
	line "room for it."
	
	para "Perhaps sell off"
	line "some of that junk"
	cont "in your bag at the"
	cont "# MART!"
	done
	
MikanKimonoGirlText:
	text "The hot springs of"
	line "MIKAN ISLAND are"
	cont "simply divine!"
	
	para "I heard CINNABAR"
	line "ISLAND in KANTO"
	cont "has a really nice"
	cont "hot spring too."
	done
	
MikanBlackbeltText:
	text "I tried to win the"
	line "CORAL EYE BADGE"
	cont "from MIKAN GYM!"
	
	para "But my FIGHTING-"
	line "type #MON are"
	cont "weakened if they"
	cont "get burned!"
	done
	
MikanSwimmerGirlScript:
	jumptextfaceplayer MikanSwimmerGirlText
	
MikanSwimmerGirlText:
	text "CISSY's brother,"
	line "SENTA, is pretty"
	cont "arrogant."

	para "If he says some-"
	line "thing dumb, just"
	cont "ignore him."
	done
	
MikanIslandRanchSign:
	jumptext MikanIslandRanchSignText
	
MikanIslandRanchSignText:
	text "← MIKAN RANCH"
	done

MikanIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 29, MIKAN_ISLAND_POKECENTER_1F, 2
	warp_event 13, 29, MIKAN_ISLAND_POKEMART, 1
	warp_event  5, 23, MIKAN_ISLAND_HOUSE, 1
	warp_event 27, 25, MIKAN_ISLAND_BERRY_MASTER_HOUSE, 1
	warp_event 32,  0, MIKAN_THICKET, 1
	warp_event 33,  0, MIKAN_THICKET, 2
	warp_event 14,  9, MIKAN_GYM, 1
	warp_event 15,  9, MIKAN_GYM, 2
	warp_event  1,  3, ARIAS_HOUSE, 1
	warp_event 29, 20, MIKAN_ISLAND_ROUTE_53_GATE_1F, 3
	warp_event 29, 21, MIKAN_ISLAND_ROUTE_53_GATE_1F, 4
	def_coord_events

	def_bg_events
	bg_event 11, 31, BGEVENT_READ, MikanIslandSign
	bg_event 13, 19, BGEVENT_READ, MikanIslandGymSign
	bg_event  0,  4, BGEVENT_READ, MikanIslandAriaSign
	bg_event 29, 26, BGEVENT_READ, MikanIslandBerryMasterSign
	bg_event  6, 18, BGEVENT_ITEM, MikanIslandHiddenRevive
	bg_event 35, 12, BGEVENT_ITEM, MikanIslandHiddenSuperPotion
	bg_event  2, 24, BGEVENT_READ, MikanIslandRanchSign

	def_object_events
	object_event 24, 26, SPRITE_BERRY_GAMMA_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, MikanIslandFruitTree1, -1
	object_event 24, 27, SPRITE_BERRY_I_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, MikanIslandFruitTree2, -1
	object_event 24, 28, SPRITE_BERRY_R_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, MikanIslandFruitTree3, -1
	object_event  8,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MikanIslandWhiteHerb, EVENT_MIKAN_ISLAND_WHITE_HERB
	object_event 15,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MikanIslandTinyBamboo, EVENT_MIKAN_ISLAND_TINY_BAMBOO
	object_event 20, 19, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, MikanKimonoGirlScript, -1
	object_event 11, 20, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, MikanBlackbeltScript, -1
	object_event  7, 24, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MikanGrannyScript, -1
	object_event 17, 25, SPRITE_WALKING_SWIMMER_GIRL, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MikanSwimmerGirlScript, -1

	object_const_def
	const MIKAN_BERRY_MASTER
	const MIKAN_BERRY_MASTER_WIFE
	const MIKAN_BERRY_MASTER_GRANDAUGHTER

MikanIslandBerryMasterHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanBerryMasterScript:
	faceplayer
	opentext
	checkitem BERRY_LOG
	iftrue .AlreadyGotBerryLog
	writetext MikanBerryMasterText
	waitbutton
	verbosegiveitem BERRY_LOG
.AlreadyGotBerryLog:
	writetext MikanBerryMasterText2
	waitbutton
	closetext
	end

MikanBerryMasterText:
	text "Hello, there! I'm"
	line "the BERRY MASTER!"
	
	para "I moved here from"
	line "the GALAR region"
	cont "in order to study"
	cont "BERRIES."
	
	para "BERRIES are a very"
	line "useful thing for a"
	cont "trainer like you."
	
	para "Take this. I hope"
	line "it helps you!"
	done
	
MikanBerryMasterText2:
	text "That's the BERRY"
	line "LOG. It's a compen-"
	cont "dium of BERRIES I"
	cont "have studied."
	
	para "It's like a cheat"
	line "sheet for survival"
	cont "in the outdoors!"
	done
	
MikanBerryMasterWifeScript:
	jumptextfaceplayer MikanBerryMasterWifeText
	
MikanBerryMasterWifeText:
	text "My husband loves a"
	line "dish called EGGANT"
	cont "in chili sauce."
	
	para "The EGGANT BERRY"
	line "needed for it only"
	cont "grows here in the"
	cont "ORANGE ISLANDS."
	
	para "I'm sure there are"
	line "many BERRIES that"
	cont "can only be found"
	cont "here."
	done
	
MikanBerryGDScript:
	checkevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	iftrue .WhatKindOfBlock
	faceplayer
	checkevent EVENT_BERRY_MASTER_GD_FIRST_TIME
	iftrue .AlreadyMetGD
	opentext
	writetext MikanBerryGDIntroductionText
	waitbutton
	closetext
	setevent EVENT_BERRY_MASTER_GD_FIRST_TIME
	sjump .BlockCraftingMenu
.AlreadyMetGD:
.BlockCraftingMenu:
	opentext
	writetext MikanBerryGDWhatKindShouldIMakeText
	loadmenu .MikanBerryGDMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GREEN
	ifequal 2, .RED
	ifequal 3, .BLUE
	ifequal 4, .YELLOW
	ifequal 5, .PINK
	ifequal 0, .NEVERMIND
.GREEN:
	writetext MikanBerryGDGreenBerryText
	waitbutton
	checkitem WEPEAR_BERRY
	iftrue .WantToMakeGrassyBlock
	checkitem RABUTA_BERRY
	iftrue .WantToMakeGrassyBlock
	checkitem DURIN_BERRY
	iftrue .WantToMakeGrassyBlock
	checkitem STRIB_BERRY
	iftrue .WantToMakeGrassyBlock
	checkitem KRAU_BERRY
	iftrue .WantToMakeGrassyBlock
	writetext MikanBerryGDDontHaveBerryText
	waitbutton
	sjump .NEVERMIND
.WantToMakeGrassyBlock:
	writetext MikanBerryGDGreenBerryText2
	yesorno
	iffalse .NEVERMIND
	closetext
	takeitem WEPEAR_BERRY
	iftrue .MakingGrassyBlock
	takeitem RABUTA_BERRY
	iftrue .MakingGrassyBlock
	takeitem DURIN_BERRY
	iftrue .MakingGrassyBlock
	takeitem STRIB_BERRY
	iftrue .MakingGrassyBlock
	takeitem KRAU_BERRY
.MakingGrassyBlock:
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	playsound SFX_BERRY_FANFARE
	pause 30
	special FadeInFromBlack
	random 5
	ifequal 0, .ItsNotGreen
	ifequal 1, .ItsGreen
	ifequal 2, .ItsGreen
	ifequal 3, .ItsGreen
	ifequal 4, .ItsGreen
.ItsNotGreen:
	setevent EVENT_BERRY_MASTER_GD_HOLDING_CRUNCHYBLOCK
	setevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	sjump .WhatKindOfBlock
.ItsGreen:
	setevent EVENT_BERRY_MASTER_GD_HOLDING_GRASSY_BLOCK
	setevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	sjump .WhatKindOfBlock
.RED:
	writetext MikanBerryGDRedBerryText
	waitbutton
	checkitem RAZZ_BERRY
	iftrue .WantToMakeFieryBlock
	checkitem SPELON_BERRY
	iftrue .WantToMakeFieryBlock
	checkitem TILOTA_BERRY
	iftrue .WantToMakeFieryBlock
	writetext MikanBerryGDDontHaveBerryText
	waitbutton
	sjump .NEVERMIND
.WantToMakeFieryBlock:
	writetext MikanBerryGDRedBerryText2
	yesorno
	iffalse .NEVERMIND
	closetext
	takeitem RAZZ_BERRY
	iftrue .MakingFieryBlock
	takeitem SPELON_BERRY
	iftrue .MakingFieryBlock
	takeitem TILOTA_BERRY
.MakingFieryBlock:
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	playsound SFX_BERRY_FANFARE
	pause 30
	special FadeInFromBlack
	random 5
	ifequal 0, .ItsNotRed
	ifequal 1, .ItsRed
	ifequal 2, .ItsRed
	ifequal 3, .ItsRed
	ifequal 4, .ItsRed
.ItsNotRed:
	setevent EVENT_BERRY_MASTER_GD_HOLDING_CRUNCHYBLOCK
	setevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	sjump .WhatKindOfBlock
.ItsRed:
	setevent EVENT_BERRY_MASTER_GD_HOLDING_FIERY_BLOCK
	setevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	sjump .WhatKindOfBlock
.BLUE:
	writetext MikanBerryGDBlueBerryText
	waitbutton
	checkitem BLUK_BERRY
	iftrue .WantToMakeChillyBlock
	checkitem CORNN_BERRY
	iftrue .WantToMakeChillyBlock
	checkitem PAMTRE_BERRY
	iftrue .WantToMakeChillyBlock
	checkitem BELUE_BERRY
	iftrue .WantToMakeChillyBlock
	checkitem LIGARC_BERRY
	iftrue .WantToMakeChillyBlock
	writetext MikanBerryGDDontHaveBerryText
	waitbutton
	sjump .NEVERMIND
.WantToMakeChillyBlock:
	writetext MikanBerryGDBlueBerryText2
	yesorno
	iffalse .NEVERMIND
	closetext
	takeitem BLUK_BERRY
	iftrue .MakingChillyBlock
	takeitem CORNN_BERRY
	iftrue .MakingChillyBlock
	takeitem PAMTRE_BERRY
	iftrue .MakingChillyBlock
	takeitem BELUE_BERRY
	iftrue .MakingChillyBlock
	takeitem LIGARC_BERRY
.MakingChillyBlock:
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	playsound SFX_BERRY_FANFARE
	pause 30
	special FadeInFromBlack
	random 5
	ifequal 0, .ItsNotBlue
	ifequal 1, .ItsBlue
	ifequal 2, .ItsBlue
	ifequal 3, .ItsBlue
	ifequal 4, .ItsBlue
.ItsNotBlue:
	setevent EVENT_BERRY_MASTER_GD_HOLDING_CRUNCHYBLOCK
	setevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	sjump .WhatKindOfBlock
.ItsBlue:
	setevent EVENT_BERRY_MASTER_GD_HOLDING_CHILLY_BLOCK
	setevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	sjump .WhatKindOfBlock
.YELLOW:
	writetext MikanBerryGDYellowBerryText
	waitbutton
	checkitem PINAP_BERRY
	iftrue .WantToMakeZappyBlock
	checkitem NUTPEA_BERRY
	iftrue .WantToMakeZappyBlock
	checkitem NOMEL_BERRY
	iftrue .WantToMakeZappyBlock
	writetext MikanBerryGDDontHaveBerryText
	waitbutton
	sjump .NEVERMIND
.WantToMakeZappyBlock:
	writetext MikanBerryGDYellowBerryText2
	yesorno
	iffalse .NEVERMIND
	closetext
	takeitem PINAP_BERRY
	iftrue .MakingZappyBlock
	takeitem NUTPEA_BERRY
	iftrue .MakingZappyBlock
	takeitem NOMEL_BERRY
.MakingZappyBlock:
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	playsound SFX_BERRY_FANFARE
	pause 30
	special FadeInFromBlack
	random 5
	ifequal 0, .ItsNotYellow
	ifequal 1, .ItsYellow
	ifequal 2, .ItsYellow
	ifequal 3, .ItsYellow
	ifequal 4, .ItsYellow
.ItsNotYellow:
	setevent EVENT_BERRY_MASTER_GD_HOLDING_CRUNCHYBLOCK
	setevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	sjump .WhatKindOfBlock
.ItsYellow:
	setevent EVENT_BERRY_MASTER_GD_HOLDING_ZAPPY_BLOCK
	setevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	sjump .WhatKindOfBlock
.PINK:
	writetext MikanBerryGDPinkBerryText
	waitbutton
	checkitem NANAB_BERRY
	iftrue .WantToMakeLovelyBlock
	checkitem WATMEL_BERRY
	iftrue .WantToMakeLovelyBlock
	checkitem MAGOST_BERRY
	iftrue .WantToMakeLovelyBlock
	checkitem TOTAPO_BERRY
	iftrue .WantToMakeLovelyBlock
	writetext MikanBerryGDDontHaveBerryText
	waitbutton
	sjump .NEVERMIND
.WantToMakeLovelyBlock:
	writetext MikanBerryGDPinkBerryText2
	yesorno
	iffalse .NEVERMIND
	closetext
	takeitem NANAB_BERRY
	iftrue .MakingLovelyBlock
	takeitem WATMEL_BERRY
	iftrue .MakingLovelyBlock
	takeitem MAGOST_BERRY
	iftrue .MakingLovelyBlock
	takeitem TOTAPO_BERRY
.MakingLovelyBlock:
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	playsound SFX_BERRY_FANFARE
	pause 30
	special FadeInFromBlack
	random 5
	ifequal 0, .ItsNotPink
	ifequal 1, .ItsPink
	ifequal 2, .ItsPink
	ifequal 3, .ItsPink
	ifequal 4, .ItsPink
.ItsNotPink:
	setevent EVENT_BERRY_MASTER_GD_HOLDING_CRUNCHYBLOCK
	setevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	sjump .WhatKindOfBlock
.ItsPink:
	setevent EVENT_BERRY_MASTER_GD_HOLDING_LOVELY_BLOCK
	setevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	sjump .WhatKindOfBlock
.NEVERMIND:
	closetext
	end

.MikanBerryGDMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 11, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 7
	dw .MikanBerryGDMenuData
	db 1 ; default option

.MikanBerryGDMenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP ; flags
	db 5 ; items
	db "GREEN@"
	db "RED@"
	db "BLUE@"
	db "YELLOW@"
	db "PINK@"
	closetext
	end
	
.ComeBackInABit:
	opentext
	writetext ComeBackInABitText
	waitbutton
	closetext
	end

.WhatKindOfBlock:
	opentext
	writetext MikanBerryGDBlockIsDoneText
	waitbutton
	closetext
	checkevent EVENT_BERRY_MASTER_GD_HOLDING_GRASSY_BLOCK
	iftrue .GiveGrassyBlock
	checkevent EVENT_BERRY_MASTER_GD_HOLDING_FIERY_BLOCK
	iftrue .GiveFieryBlock
	checkevent EVENT_BERRY_MASTER_GD_HOLDING_CHILLY_BLOCK
	iftrue .GiveChillyBlock
	checkevent EVENT_BERRY_MASTER_GD_HOLDING_ZAPPY_BLOCK
	iftrue .GiveZappyBlock
	checkevent EVENT_BERRY_MASTER_GD_HOLDING_LOVELY_BLOCK
	iftrue .GiveLovelyBlock
	checkevent EVENT_BERRY_MASTER_GD_HOLDING_CRUNCHYBLOCK
	iftrue .GiveCrunchyBlock
	sjump .endofscript
.GiveGrassyBlock:
	opentext
	verbosegiveitem GRASSY_BLOCK
	iffalse .NoRoom
	clearevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	clearevent EVENT_BERRY_MASTER_GD_HOLDING_GRASSY_BLOCK
	sjump .endofscript
.GiveFieryBlock:
	opentext
	verbosegiveitem FIERY_BLOCK
	iffalse .NoRoom
	clearevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	clearevent EVENT_BERRY_MASTER_GD_HOLDING_FIERY_BLOCK
	sjump .endofscript
.GiveChillyBlock:
	opentext
	verbosegiveitem CHILLY_BLOCK
	iffalse .NoRoom
	clearevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	clearevent EVENT_BERRY_MASTER_GD_HOLDING_CHILLY_BLOCK
	sjump .endofscript
.GiveZappyBlock:
	opentext
	verbosegiveitem ZAPPY_BLOCK
	iffalse .NoRoom
	clearevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	clearevent EVENT_BERRY_MASTER_GD_HOLDING_ZAPPY_BLOCK
	sjump .endofscript
.GiveLovelyBlock:
	opentext
	verbosegiveitem LOVELY_BLOCK
	iffalse .NoRoom
	clearevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	clearevent EVENT_BERRY_MASTER_GD_HOLDING_LOVELY_BLOCK
	sjump .endofscript
.GiveCrunchyBlock:
	opentext
	writetext MikanBerryGDBurnedItText
	waitbutton
	verbosegiveitem CRUNCHYBLOCK
	iffalse .NoRoom
	clearevent EVENT_BERRY_MASTER_GD_HAS_BLOCK
	clearevent EVENT_BERRY_MASTER_GD_HOLDING_CRUNCHYBLOCK
.endofscript:
	sjump .ComeAgain
	
.NoRoom:
	opentext
	writetext MikanBerryGDNoRoomText
	waitbutton
	closetext
	end
	
.ComeAgain:
	opentext
	writetext MikanBerryGDComeAgainText
	waitbutton
	closetext
	end
	
MikanBerryGDIntroductionText:
	text "Hi, I'm the BERRY"
	line "MASTER's grandkid!"
	
	para "Did you know that"
	line "#MON love to"
	cont "eat BERRIES?"
	
	para "I like to condense"
	line "BERRIES into very"
	cont "dense BLOCKs that"
	cont "WILD #MON are"
	cont "sure to love!"
	
	para "Collect lots of"
	line "BERRIES and bring"
	cont "them to me! I'll"
	cont "make a #BLOCK"
	cont "for you!"
	done
	
MikanBerryGDWhatKindShouldIMakeText:
	text "What #BLOCK"
	line "should I make?"
	done
	
MikanBerryGDGreenBerryText:
	text "To make a GREEN"
	line "#BLOCK, I need"
	cont "any one of these:"
	
	para "WEPEAR, RABUTA,"
	line "DURIN, STRIB or"
	cont "KRAU BERRY."
	done
	
MikanBerryGDBlueBerryText:
	text "To make a BLUE"
	line "#BLOCK, I need"
	cont "any one of these:"
	
	para "BLUK, PAMTRE,"
	line "BELUE, CORNN or"
	cont "LIGARC BERRY."
	done
	
MikanBerryGDPinkBerryText:
	text "To make a PINK"
	line "#BLOCK, I need"
	cont "any one of these:"
	
	para "NANAB, MAGOST,"
	line "WATMEL or TOTAPO"
	cont "BERRY."
	done
	
MikanBerryGDYellowBerryText:
	text "To make a YELLOW"
	line "#BLOCK, I need"
	cont "any one of these:"
	
	para "NOMEL, PINAP"
	line "or NUTPEA BERRY."
	done
	
MikanBerryGDRedBerryText:
	text "To make a RED"
	line "#BLOCK, I need"
	cont "any one of these:"
	
	para "RAZZ, SPELON"
	line "or TILOTA BERRY."
	done
	
MikanBerryGDHaveBerryText:
	text "Looks like you got"
	line "one!"
	done
	
MikanBerryGDGreenBerryText2:
	text "Want to make a"
	line "GREEN #BLOCK?"
	done
	
MikanBerryGDRedBerryText2:
	text "Want to make a"
	line "RED #BLOCK?"
	done
	
MikanBerryGDBlueBerryText2:
	text "Want to make a"
	line "BLUE #BLOCK?"
	done
	
MikanBerryGDPinkBerryText2:
	text "Want to make a"
	line "PINK #BLOCK?"
	done
	
MikanBerryGDYellowBerryText2:
	text "Want to make a"
	line "YELLOW #BLOCK?"
	done
	
MikanBerryGDDontHaveBerryText:
	text "You don't have a"
	line "BERRY I can use!"
	cont "Come back when"
	cont "you find some!"
	done
	
MikanBerryGDBlockIsDoneText:
	text "Your #BLOCK is"
	line "ready!"
	done
	
MikanBerryGDNoRoomText:
	text "Oh! You don't have"
	line "space in your BAG"
	cont "for it! I'll hold"
	cont "onto it for you"
	cont "until you make"
	cont "room."
	done
	
MikanBerryGDBurnedItText:
	text "I'm so sorry."
	line "I burned it by"
	cont "mistake!"
	done
	
MikanBerryGDComeAgainText:
	text "Come back if you"
	line "need more!"
	done
	
ComeBackInABitText:
	text "It needs time to"
	line "cool down. Come"
	cont "back in a minute!"
	done

MikanIslandBerryMasterHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MIKAN_ISLAND, 4
	warp_event  3,  7, MIKAN_ISLAND, 4

	def_coord_events

	def_bg_events

	def_object_events ;TODO: Add a Galarian Zigzagoon named Rosebud here
	object_event  2,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, MikanBerryMasterScript, -1
	object_event  5,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, MikanBerryMasterWifeScript, -1
	object_event  5,  3, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, MikanBerryGDScript, -1

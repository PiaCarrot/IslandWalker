	object_const_def
	const PINKAN_BERRY_1
	const PINKAN_BERRY_2
	const PINKAN_BERRY_3

PinkanIsland_MapScripts:
	def_scene_scripts

	def_callbacks

PinkanIslandFruitTree:
	fruittree FRUITTREE_PINKAN_ISLAND_1

PinkanIslandFruitTree2:
	fruittree FRUITTREE_PINKAN_ISLAND_2

PinkanIslandFruitTree3:
	fruittree FRUITTREE_PINKAN_ISLAND_3
	
PinkanIslandFeederScript:
	opentext
	checkevent EVENT_BERRY_MASTER_GD_FIRST_TIME
	iffalse .WhatTheHeckIsAPokeblock
	checkevent EVENT_BLOCK_ON_PINKAN_ISLAND
	iftrue .WantToRemoveBlock
	writetext PinkanIslandFeederWantToPutInABlock
	yesorno
	iftrue .WhatBlock
	closetext
	end
	
.WhatBlock
	writetext PinkanIslandFeederWhatKindText
	loadmenu .PinkanIslandFeederMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .GRASSY
	ifequal 2, .FIERY
	ifequal 3, .CHILLY
	ifequal 4, .ZAPPY
	ifequal 5, .LOVELY
	ifequal 6, .CRUNCHY
	ifequal 0, .NEVERMIND
.GRASSY
	checkitem GRASSY_BLOCK
	iffalse .DontHaveBlock
	clearflag ENGINE_SWARM
	clearflag ENGINE_ALT_SWARM
	clearflag ENGINE_ALT_SWARM_2
	clearflag ENGINE_ALT_SWARM_3
	clearflag ENGINE_ALT_SWARM_4
	clearflag ENGINE_ALT_SWARM_5
	clearevent EVENT_BLOCK_IN_ALTERING_CAVE
	clearevent EVENT_BLOCK_ON_METALLICA_ISLAND
	clearevent EVENT_BLOCK_ON_CAMOMILE_ISLAND
	clearevent EVENT_BLOCK_ON_TARROCO_ISLAND
	takeitem GRASSY_BLOCK
	setflag ENGINE_SWARM
	swarm PINKAN_ISLAND
	writetext PinkanFeederPlacedBlockText
	waitbutton
	setevent EVENT_BLOCK_ON_PINKAN_ISLAND
	sjump .NEVERMIND
.FIERY
	checkitem FIERY_BLOCK
	iffalse .DontHaveBlock
	clearflag ENGINE_SWARM
	clearflag ENGINE_ALT_SWARM
	clearflag ENGINE_ALT_SWARM_2
	clearflag ENGINE_ALT_SWARM_3
	clearflag ENGINE_ALT_SWARM_4
	clearflag ENGINE_ALT_SWARM_5
	clearevent EVENT_BLOCK_IN_ALTERING_CAVE
	clearevent EVENT_BLOCK_ON_METALLICA_ISLAND
	clearevent EVENT_BLOCK_ON_CAMOMILE_ISLAND
	clearevent EVENT_BLOCK_ON_TARROCO_ISLAND
	takeitem FIERY_BLOCK
	setflag ENGINE_ALT_SWARM
	swarm PINKAN_ISLAND
	writetext PinkanFeederPlacedBlockText
	waitbutton
	setevent EVENT_BLOCK_ON_PINKAN_ISLAND
	sjump .NEVERMIND
.CHILLY
	checkitem CHILLY_BLOCK
	iffalse .DontHaveBlock
	clearflag ENGINE_SWARM
	clearflag ENGINE_ALT_SWARM
	clearflag ENGINE_ALT_SWARM_2
	clearflag ENGINE_ALT_SWARM_3
	clearflag ENGINE_ALT_SWARM_4
	clearflag ENGINE_ALT_SWARM_5
	clearevent EVENT_BLOCK_IN_ALTERING_CAVE
	clearevent EVENT_BLOCK_ON_METALLICA_ISLAND
	clearevent EVENT_BLOCK_ON_CAMOMILE_ISLAND
	clearevent EVENT_BLOCK_ON_TARROCO_ISLAND
	takeitem CHILLY_BLOCK
	setflag ENGINE_ALT_SWARM_2
	swarm PINKAN_ISLAND
	writetext PinkanFeederPlacedBlockText
	waitbutton
	setevent EVENT_BLOCK_ON_PINKAN_ISLAND
	sjump .NEVERMIND
.ZAPPY
	checkitem ZAPPY_BLOCK
	iffalse .DontHaveBlock
	clearflag ENGINE_SWARM
	clearflag ENGINE_ALT_SWARM
	clearflag ENGINE_ALT_SWARM_2
	clearflag ENGINE_ALT_SWARM_3
	clearflag ENGINE_ALT_SWARM_4
	clearflag ENGINE_ALT_SWARM_5
	clearevent EVENT_BLOCK_IN_ALTERING_CAVE
	clearevent EVENT_BLOCK_ON_METALLICA_ISLAND
	clearevent EVENT_BLOCK_ON_CAMOMILE_ISLAND
	clearevent EVENT_BLOCK_ON_TARROCO_ISLAND
	takeitem ZAPPY_BLOCK
	setflag ENGINE_ALT_SWARM_3
	swarm PINKAN_ISLAND
	writetext PinkanFeederPlacedBlockText
	waitbutton
	setevent EVENT_BLOCK_ON_PINKAN_ISLAND
	sjump .NEVERMIND
.LOVELY
	checkitem LOVELY_BLOCK
	iffalse .DontHaveBlock
	clearflag ENGINE_SWARM
	clearflag ENGINE_ALT_SWARM
	clearflag ENGINE_ALT_SWARM_2
	clearflag ENGINE_ALT_SWARM_3
	clearflag ENGINE_ALT_SWARM_4
	clearflag ENGINE_ALT_SWARM_5
	clearevent EVENT_BLOCK_IN_ALTERING_CAVE
	clearevent EVENT_BLOCK_ON_METALLICA_ISLAND
	clearevent EVENT_BLOCK_ON_CAMOMILE_ISLAND
	clearevent EVENT_BLOCK_ON_TARROCO_ISLAND
	takeitem LOVELY_BLOCK
	setflag ENGINE_ALT_SWARM_4
	swarm PINKAN_ISLAND
	writetext PinkanFeederPlacedBlockText
	waitbutton
	setevent EVENT_BLOCK_ON_PINKAN_ISLAND
	sjump .NEVERMIND
.CRUNCHY
	checkitem CRUNCHYBLOCK
	iffalse .DontHaveBlock
	clearflag ENGINE_SWARM
	clearflag ENGINE_ALT_SWARM
	clearflag ENGINE_ALT_SWARM_2
	clearflag ENGINE_ALT_SWARM_3
	clearflag ENGINE_ALT_SWARM_4
	clearflag ENGINE_ALT_SWARM_5
	clearevent EVENT_BLOCK_IN_ALTERING_CAVE
	clearevent EVENT_BLOCK_ON_METALLICA_ISLAND
	clearevent EVENT_BLOCK_ON_CAMOMILE_ISLAND
	clearevent EVENT_BLOCK_ON_TARROCO_ISLAND
	takeitem CRUNCHYBLOCK
	setflag ENGINE_ALT_SWARM_5
	swarm PINKAN_ISLAND
	writetext PinkanFeederPlacedBlockText
	waitbutton
	setevent EVENT_BLOCK_ON_PINKAN_ISLAND
	sjump .NEVERMIND
.NEVERMIND
	closetext
	end
	
.DontHaveBlock:
	writetext PinkanIslandDontHaveBlockText
	waitbutton
	closetext
	end
	
.WhatTheHeckIsAPokeblock:
	writetext PinkanIslandStrangeDeviceText
	waitbutton
	closetext
	end
	
.WantToRemoveBlock:
	writetext WantToRemoveBlockPinkanFeederText
	yesorno
	iffalse .IDontWantToRemoveIt
	clearevent EVENT_BLOCK_ON_PINKAN_ISLAND
	clearflag ENGINE_SWARM
	clearflag ENGINE_ALT_SWARM
	clearflag ENGINE_ALT_SWARM_2
	clearflag ENGINE_ALT_SWARM_3
	clearflag ENGINE_ALT_SWARM_4
	clearflag ENGINE_ALT_SWARM_5
	writetext RemovedBlockPinkanFeederText
	waitbutton
.IDontWantToRemoveIt
	closetext
	end
	
.PinkanIslandFeederMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 5
	dw .PinkanIslandFeederMenuData
	db 1 ; default option

.PinkanIslandFeederMenuData:
	db STATICMENU_CURSOR | STATICMENU_WRAP ; flags
	db 6 ; items
	db "GRASSY BLOCK@"
	db "FIERY BLOCK@"
	db "CHILLY BLOCK@"
	db "ZAPPY BLOCK@"
	db "LOVELY BLOCK@"
	db "CRUNCHYBLOCK@"
	closetext
	end
	
PinkanIslandFeederWantToPutInABlock:
	text "If you place a"
	line "#BLOCK here,"
	cont "any others set"
	cont "will disappear."

	para "Would you like to"
	line "place a #BLOCK"
	cont "in the feeder?"
	done
	
PinkanIslandStrangeDeviceText:
	text "A strange device."
	line "A sign on it says:"
	cont "#BLOCK FEEDER"
	done
	
PinkanIslandFeederWhatKindText:
	text "Which #BLOCK"
	line "should you put in?"
	done
	
PinkanIslandDontHaveBlockText:
	text "You don't have any"
	line "of those!"
	done
	
WantToRemoveBlockPinkanFeederText:
	text "A #BLOCK is"
	line "already inserted."
	para "Want to remove it?"
	done
	
PinkanFeederPlacedBlockText:
	text "The #BLOCK has"
	line "been placed."
	done
	
RemovedBlockPinkanFeederText:
	text "The #BLOCK has"
	line "been removed."
	done

PinkanIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 21, 19, BGEVENT_READ, PinkanIslandFeederScript

	def_object_events
	object_event 22,  6, SPRITE_BERRY_P_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, PinkanIslandFruitTree, -1
	object_event  8, 26, SPRITE_BERRY_P_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, PinkanIslandFruitTree2, -1
	object_event 32,  4, SPRITE_BERRY_P_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, PinkanIslandFruitTree3, -1

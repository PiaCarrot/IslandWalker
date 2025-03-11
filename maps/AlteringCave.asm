	object_const_def
	const ALTERING_CAVE_ROCK_1
	const ALTERING_CAVE_ROCK_2
	const ALTERING_CAVE_ROCK_3
	const ALTERING_CAVE_ROCK_4
	const ALTERING_CAVE_ROCK_5
	const ALTERING_CAVE_ROCK_6
	const ALTERING_CAVE_SECRET_STASH

AlteringCave_MapScripts:
	def_scene_scripts

	def_callbacks
	
AlteringCaveRock:
	jumpstd SmashRockScript
	
AlteringCaveSecretStash:
	itemball SECRET_STASH
	
AlteringCaveFeederScript:
	opentext
	checkevent EVENT_BERRY_MASTER_GD_FIRST_TIME
	iffalse .WhatTheHeckIsAPokeblock
	checkevent EVENT_BLOCK_IN_ALTERING_CAVE
	iftrue .WantToRemoveBlock
	writetext AlteringCaveFeederWantToPutInABlock
	yesorno
	iftrue .WhatBlock
	closetext
	end
	
.WhatBlock
	writetext AlteringCaveFeederWhatKindText
	loadmenu .AlteringCaveFeederMenuHeader
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
	clearevent EVENT_BLOCK_ON_PINKAN_ISLAND
	clearevent EVENT_BLOCK_ON_METALLICA_ISLAND
	clearevent EVENT_BLOCK_ON_CAMOMILE_ISLAND
	clearevent EVENT_BLOCK_ON_TARROCO_ISLAND
	takeitem GRASSY_BLOCK
	setflag ENGINE_SWARM
	swarm ALTERING_CAVE
	writetext AlteringCaveFeederPlacedBlockText
	waitbutton
	setevent EVENT_BLOCK_IN_ALTERING_CAVE
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
	clearevent EVENT_BLOCK_ON_PINKAN_ISLAND
	clearevent EVENT_BLOCK_ON_METALLICA_ISLAND
	clearevent EVENT_BLOCK_ON_CAMOMILE_ISLAND
	clearevent EVENT_BLOCK_ON_TARROCO_ISLAND
	takeitem FIERY_BLOCK
	setflag ENGINE_ALT_SWARM
	swarm ALTERING_CAVE
	writetext AlteringCaveFeederPlacedBlockText
	waitbutton
	setevent EVENT_BLOCK_IN_ALTERING_CAVE
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
	clearevent EVENT_BLOCK_ON_PINKAN_ISLAND
	clearevent EVENT_BLOCK_ON_METALLICA_ISLAND
	clearevent EVENT_BLOCK_ON_CAMOMILE_ISLAND
	clearevent EVENT_BLOCK_ON_TARROCO_ISLAND
	takeitem CHILLY_BLOCK
	setflag ENGINE_ALT_SWARM_2
	swarm ALTERING_CAVE
	writetext AlteringCaveFeederPlacedBlockText
	waitbutton
	setevent EVENT_BLOCK_IN_ALTERING_CAVE
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
	clearevent EVENT_BLOCK_ON_PINKAN_ISLAND
	clearevent EVENT_BLOCK_ON_METALLICA_ISLAND
	clearevent EVENT_BLOCK_ON_CAMOMILE_ISLAND
	clearevent EVENT_BLOCK_ON_TARROCO_ISLAND
	takeitem ZAPPY_BLOCK
	setflag ENGINE_ALT_SWARM_3
	swarm ALTERING_CAVE
	writetext AlteringCaveFeederPlacedBlockText
	waitbutton
	setevent EVENT_BLOCK_IN_ALTERING_CAVE
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
	clearevent EVENT_BLOCK_ON_PINKAN_ISLAND
	clearevent EVENT_BLOCK_ON_METALLICA_ISLAND
	clearevent EVENT_BLOCK_ON_CAMOMILE_ISLAND
	clearevent EVENT_BLOCK_ON_TARROCO_ISLAND
	takeitem LOVELY_BLOCK
	setflag ENGINE_ALT_SWARM_4
	swarm ALTERING_CAVE
	writetext AlteringCaveFeederPlacedBlockText
	waitbutton
	setevent EVENT_BLOCK_IN_ALTERING_CAVE
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
	clearevent EVENT_BLOCK_ON_PINKAN_ISLAND
	clearevent EVENT_BLOCK_ON_METALLICA_ISLAND
	clearevent EVENT_BLOCK_ON_CAMOMILE_ISLAND
	clearevent EVENT_BLOCK_ON_TARROCO_ISLAND
	takeitem CRUNCHYBLOCK
	setflag ENGINE_ALT_SWARM_5
	swarm ALTERING_CAVE
	writetext AlteringCaveFeederPlacedBlockText
	waitbutton
	setevent EVENT_BLOCK_IN_ALTERING_CAVE
	sjump .NEVERMIND
.NEVERMIND
	closetext
	end
	
.DontHaveBlock:
	writetext AlteringCaveDontHaveBlockText
	waitbutton
	closetext
	end
	
.WhatTheHeckIsAPokeblock:
	writetext AlteringCaveStrangeDeviceText
	waitbutton
	closetext
	end
	
.WantToRemoveBlock:
	writetext WantToRemoveBlockAlteringCaveFeederText
	yesorno
	iffalse .IDontWantToRemoveIt
	clearevent EVENT_BLOCK_IN_ALTERING_CAVE
	clearflag ENGINE_SWARM
	clearflag ENGINE_ALT_SWARM
	clearflag ENGINE_ALT_SWARM_2
	clearflag ENGINE_ALT_SWARM_3
	clearflag ENGINE_ALT_SWARM_4
	clearflag ENGINE_ALT_SWARM_5
	writetext RemovedBlockAlteringCaveFeederText
	waitbutton
.IDontWantToRemoveIt
	closetext
	end
	
.AlteringCaveFeederMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 5
	dw .AlteringCaveFeederMenuData
	db 1 ; default option

.AlteringCaveFeederMenuData:
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
	
AlteringCaveFeederWantToPutInABlock:
	text "If you place a"
	line "#BLOCK here,"
	cont "any others set"
	cont "will disappear."

	para "Would you like to"
	line "place a #BLOCK"
	cont "in the feeder?"
	done
	
AlteringCaveStrangeDeviceText:
	text "A strange device."
	line "A sign on it says:"
	cont "#BLOCK FEEDER"
	done
	
AlteringCaveFeederWhatKindText:
	text "Which #BLOCK"
	line "should you put in?"
	done
	
AlteringCaveDontHaveBlockText:
	text "You don't have any"
	line "of those!"
	done
	
WantToRemoveBlockAlteringCaveFeederText:
	text "A #BLOCK is"
	line "already inserted."
	para "Want to remove it?"
	done
	
AlteringCaveFeederPlacedBlockText:
	text "The #BLOCK has"
	line "been placed."
	done
	
RemovedBlockAlteringCaveFeederText:
	text "The #BLOCK has"
	line "been removed."
	done

AlteringCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 25, TANGELO_ISLAND, 1

	def_coord_events

	def_bg_events
	bg_event 25, 13, BGEVENT_READ, AlteringCaveFeederScript

	def_object_events
	object_event  6,  3, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlteringCaveRock, -1
	object_event  4,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlteringCaveRock, -1
	object_event  6,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlteringCaveRock, -1
	object_event  5, 18, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlteringCaveRock, -1
	object_event  5, 14, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlteringCaveRock, -1
	object_event  4, 16, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AlteringCaveRock, -1
	object_event 17, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AlteringCaveSecretStash, EVENT_ALTERING_CAVE_SECRET_STASH

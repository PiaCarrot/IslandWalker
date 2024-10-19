	object_const_def
	const SUNBURST_ONIX_ROCK
	const SUNBURST_ENERGY_GURU
	const SUNBURST_STONE_SELLER
	const SUNBURST_SURVIVAL_SELLER
	const SUNBURST_INCENSE_SELLER
	const SUNBURST_HERB_SELLER
	const SUNBURST_LASS
	const SUNBURST_GLASSBLOWER
	const SUNBURST_TRACEY
	const SUNBURST_MARILL
	const SUNBURST_BROCK
	const SUNBURST_MATEO
	const SUNBURST_YELLOW
	const SUNBURST_GREATBALL

SunburstIsland_MapScripts:
	def_scene_scripts
	scene_script SunburstIslandBrockScene, SCENE_SUNBURST_ISLAND_BROCK
	scene_script SunburstIslandNoopScene, SCENE_SUNBURST_ISLAND_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, SunburstIslandFlypointCallback
	callback MAPCALLBACK_TILES, SunburstCutTreeCallback
	
SunburstCutTreeCallback:
	checkevent EVENT_REMOVE_SUNBURST_CUT_TREES
	iffalse .Done
	changeblock 6, 42, $36
	changeblock 14, 40, $3F
.Done:
	endcallback
	
SunburstIslandBrockScene:
	end
	
SunburstIslandNoopScene:
	end

SunburstIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_SUNBURST
	endcallback
	
OnixRockScript:
	jumptext OnixRockText

OnixRockText:
	text "It's just a rock"
	line "that looks like"
	cont "ONIX."
	done
	
SunburstIslandSign:
	jumptext SunburstIslandSignText
	
SunburstIslandSignText:
	text "SUNBURST ISLAND"

	para "The town of cryst-"
	line "alline wonders!"
	done

SunburstBazaarSign:
	jumptext SunburstBazaarSignText
	
SunburstBazaarSignText:
	text "SUNBURST BAZAAR"
	done

SunburstMateosShopSign:
	jumptext SunburstMateosShopSignText
	
SunburstMateosShopSignText:
	text "MATEO's CRYSTAL"
	line "WORKS"
	done

SunburstArtisansCaveSign:
	jumptext SunburstArtisansCaveSignText
	
SunburstArtisansCaveSignText:
	text "CRYSTAL CAVE:"
	line "ARTISAN's MINE"
	done

SunburstCurioShopSign:
	jumptext SunburstCurioShopSignText
	
SunburstCurioShopSignText:
	text "SUNBURST CURIOS"
	done
	
SunburstEnergyGuru:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_ENERGY_GURU
	closetext
	end
SunburstStoneShop:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_SUNBURST_STONES
	closetext
	end
SunburstSurvivalShop:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_SURVIVAL
	closetext
	end
SunburstIncenseShop:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_INCENSE
	closetext
	end
SunburstHerbShop:
	faceplayer
	opentext
	pokemart MARTTYPE_BITTER, MART_HERBS
	closetext
	end
	
SunburstLassScript:
	jumptextfaceplayer SunburstLassText
	
SunburstLassText:
	text "Have you seen the"
	line "SUNBURST BAZAAR?"
	cont "I emptied my purse"
	cont "shopping there!"
	
	para "It was worth it!"
	line "I got a FIRE STONE"
	cont "and some vitamins"
	cont "for my #MON!"
	done
	
SunburstGlassblowerScript:
	checkevent EVENT_MATEOS_PASSION_RESTORED
	iffalse .CrystalOnixIsReal
	jumptextfaceplayer SunburstGlassblowerText
.CrystalOnixIsReal:
	jumptextfaceplayer SunburstGlassblowerText2
	
SunburstGlassblowerText:
	text "That cave south of"
	line "the BAZAAR is the"
	cont "source of crystals"
	cont "that we artisans"
	cont "use."
	
	para "CRYSTAL ONIX? I've"
	line "never seen such a"
	cont "blatant fairy tale"
	cont "in that cave!"
	done
	
SunburstGlassblowerText2:
	text "That cave south of"
	line "the BAZAAR is the"
	cont "source of crystals"
	cont "that we artisans"
	cont "use."
	
	para "I can't believe"
	line "that story that"
	cont "MATEO's grandfather"
	cont "told was true!"
	done
	
SunburstMarillScript:
	cry MARILL
	opentext
	writetext SunburstMarillText
	waitbutton
	closetext
	playsound SFX_JUMP_OVER_LEDGE
	applymovement SUNBURST_MARILL, SunburstMarillHop
	waitsfx
	end
	
SunburstTraceyScript:
	opentext
	writetext SunburstTraceyText
	waitbutton
	closetext
	cry MARILL
	playsound SFX_JUMP_OVER_LEDGE
	applymovement SUNBURST_MARILL, SunburstMarillHop
	waitsfx
	end
	
SunburstTraceyText:
	text "TRACEY: I think we"
	line "took the wrong way"
	cont "to get off this"
	cont "ISLAND, MARILL…"
	done
	
SunburstMarillHop:
	jump_in_place
	turn_head UP
	step_sleep 8
	turn_head RIGHT
	step_sleep 8
	turn_head DOWN
	step_sleep 8
	turn_head LEFT
	step_sleep 8
	step_end
	
SunburstMarillText:
	text "MARILL: Marii! Ma!"
	done
	
SunburstYellowScript:
	jumptext SunburstYellowText
	
SunburstYellowText:
	text "???: Oh, no…"
	line "I think I took a"
	cont "wrong turn…"
	
	para "LOOKER is going to"
	line "be really mad…"
	done
	
SunburstIslandBrockScript:
	opentext
	writetext SunburstIslandBrockText1
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	playmusic MUSIC_SHOW_ME_AROUND
	moveobject SUNBURST_BROCK, 10, 41
	appear SUNBURST_BROCK
	applymovement SUNBURST_BROCK, SunburstBrockMovement1
	opentext
	writetext SunburstIslandBrockText2
	waitbutton
	closetext
	turnobject SUNBURST_BROCK, LEFT
	moveobject SUNBURST_MATEO, 10, 41
	appear SUNBURST_MATEO
	applymovement SUNBURST_MATEO, SunburstMateoMovement1
	opentext
	writetext SunburstIslandBrockText3
	waitbutton
	closetext
	applymovement PLAYER, SunburstPlayerMovement1
	follow SUNBURST_BROCK, SUNBURST_MATEO
	applymovement SUNBURST_BROCK, SunburstBrockMovement2
	special RestartMapMusic
	disappear SUNBURST_BROCK
	disappear SUNBURST_MATEO
	setscene SCENE_SUNBURST_ISLAND_NOOP
	setevent EVENT_REMOVE_SUNBURST_CUT_TREES
	end
	
	
SunburstIslandBrockText1:
	text "???: Hey, wait up!"
	done
	
SunburstIslandBrockText2:
	text "BROCK: Fwahaha!"
	line "So, there was a"
	cont "clearing past the"
	cont "brush."
	
	para "???: MR. BROCK!"
	done
	
SunburstIslandBrockText3:
	text "MATEO: Huff…"
	line "You two are…Way"
	cont "too fast…!"
	
	para "BROCK: I think"
	line "just past this"
	cont "land bridge, I can"
	cont "see a cave, MATEO!"
	
	para "MATEO: Really?!"
	line "Well, what are we"
	cont "waiting for?"
	done
	
SunburstBrockMovement1:
	step RIGHT
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
SunburstMateoMovement1:
	step RIGHT
	step UP
	step RIGHT
	step RIGHT
	step_end
	
SunburstPlayerMovement1:
	step DOWN
	turn_head UP
	step_end
	
SunburstBrockMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

SunburstHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_SUNBURST_HIDDEN_RARE_CANDY

SunburstHiddenPrettyShell:
	hiddenitem PRETTY_SHELL, EVENT_SUNBURST_HIDDEN_PRETTY_SHELL

SunburstHiddenBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_SUNBURST_HIDDEN_BIG_MUSHROOM

SunburstHiddenPearl:
	hiddenitem PEARL, EVENT_SUNBURST_HIDDEN_PEARL

SunburstHiddenSunStone:
	hiddenitem SUN_STONE, EVENT_SUNBURST_HIDDEN_SUN_STONE
	
SunburstIslandGreatBall:
	itemball GREAT_BALL

SunburstIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  9, SUNBURST_ISLAND_POKECENTER_1F, 2
	warp_event  5,  9, MATEOS_HOUSE, 1
	warp_event  9, 23, GLASSBLOWERS_HOUSE_1, 1
	warp_event 13, 23, GLASSBLOWERS_HOUSE_2, 1
	warp_event 28, 31, CRYSTAL_CAVE_GATE, 1
	warp_event 32, 39, CRYSTAL_CAVE_1F, 1

	def_coord_events
	coord_event 15, 40, SCENE_SUNBURST_ISLAND_BROCK, SunburstIslandBrockScript

	def_bg_events
	bg_event 18, 16, BGEVENT_READ, SunburstIslandSign
	bg_event 25, 17, BGEVENT_READ, SunburstBazaarSign
	bg_event  8,  9, BGEVENT_READ, SunburstMateosShopSign
	bg_event 25, 31, BGEVENT_READ, SunburstArtisansCaveSign
	bg_event 15,  9, BGEVENT_READ, SunburstCurioShopSign
	bg_event  6, 23, BGEVENT_ITEM, SunburstHiddenRareCandy
	bg_event 12, 44, BGEVENT_ITEM, SunburstHiddenPrettyShell
	bg_event  8, 39, BGEVENT_ITEM, SunburstHiddenBigMushroom
	bg_event  0, 15, BGEVENT_ITEM, SunburstHiddenPearl
	bg_event 21, 13, BGEVENT_ITEM, SunburstHiddenSunStone

	def_object_events
	object_event  2, 38, SPRITE_BIG_ONIX, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, PAL_NPC_COPY_BG_GRAY, OBJECTTYPE_SCRIPT, 0, OnixRockScript, -1
	object_event 29, 14, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, SunburstEnergyGuru, -1
	object_event 22, 14, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, SunburstStoneShop, -1
	object_event 22, 18, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SunburstSurvivalShop, -1
	object_event 29, 18, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SunburstIncenseShop, -1
	object_event 17, 26, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, SunburstHerbShop, -1
	object_event 12, 11, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, SunburstLassScript, -1
	object_event 25, 26, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SunburstGlassblowerScript, -1
	object_event  4, 38, SPRITE_TRACEY, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SunburstTraceyScript, EVENT_MATEO_SIDEQUEST_STARTED
	object_event  4, 39, SPRITE_MARILL_WALK, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SunburstMarillScript, EVENT_MATEO_SIDEQUEST_STARTED
	object_event  0, 49, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_REMOVE_SUNBURST_CUT_TREES
	object_event  1, 49, SPRITE_MATEO, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_REMOVE_SUNBURST_CUT_TREES
	object_event 25, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 1, 1, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, SunburstYellowScript, EVENT_RATICATE_RADIO_VACATED
	object_event 29, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SunburstIslandGreatBall, EVENT_SUNBURST_GREAT_BALL

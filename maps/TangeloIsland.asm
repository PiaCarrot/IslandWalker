	object_const_def
	const TANGELO_ISLAND_MARILL_1
	const TANGELO_ISLAND_MARILL_2
	const TANGELO_ISLAND_MARILL_3
	const TANGELO_ISLAND_ROCKET_1
	const TANGELO_ISLAND_ROCKET_2
	const TANGELO_ISLAND_ROCKET_3
	const TANGELO_ISLAND_TRACEY_1
	const TANGELO_ISLAND_LAPRAS_1
	const TANGELO_ISLAND_TRACEY_2
	const TANGELO_ISLAND_LAPRAS_2
	const TANGELO_ISLAND_BERRY_GUY
	const TANGELO_ISLAND_BALL_GUY
	const TANGELO_ISLAND_FRUITTREE

TangeloIsland_MapScripts:
	def_scene_scripts
	scene_script TangeloIslandNoOp, SCENE_TANGELO_ISLAND_NOOP
	scene_script TangeloMarillNeedsHelpScene, SCENE_TANGELO_ISLAND_MARILL_1
	scene_script TangeloMarillKeepFollowingScene, SCENE_TANGELO_ISLAND_MARILL_2
	scene_script TangeloRocketEventScene, SCENE_TANGELO_ISLAND_MARILL_3

	def_callbacks
	callback MAPCALLBACK_NEWMAP, TangeloIslandFlypointCallback
	
TangeloIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_TANGELO
	endcallback
	
TangeloIslandNoOp:
	end
	
TangeloMarillNeedsHelpScene:
	end
	
TangeloMarillKeepFollowingScene:
	end
	
TangeloRocketEventScene:
	end

TangeloMarillNeedsHelpScript:
	turnobject TANGELO_ISLAND_MARILL_1, RIGHT
	showemote EMOTE_SHOCK, TANGELO_ISLAND_MARILL_1, 15
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_1, MarillHopMovement
	cry MARILL
	pause 15
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_1, MarillHopMovement2
	setscene SCENE_TANGELO_ISLAND_MARILL_2
	setevent EVENT_MARILL_TANGELO_1
	disappear TANGELO_ISLAND_MARILL_1
	end	

TangeloMarillKeepFollowingScript:
	turnobject TANGELO_ISLAND_MARILL_2, LEFT
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_2, MarillHopMovement
	turnobject TANGELO_ISLAND_MARILL_2, LEFT
	cry MARILL
	pause 15
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_2, MarillHopMovement3
	setscene SCENE_TANGELO_ISLAND_MARILL_3
	setevent EVENT_MARILL_TANGELO_2
	disappear TANGELO_ISLAND_MARILL_2
	end

TangeloMarillKeepFollowingScript2:
	turnobject TANGELO_ISLAND_MARILL_2, RIGHT
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_2, MarillHopMovement
	cry MARILL
	pause 15
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_2, MarillHopMovement3
	setscene SCENE_TANGELO_ISLAND_MARILL_3
	setevent EVENT_MARILL_TANGELO_2
	disappear TANGELO_ISLAND_MARILL_2
	end

TangeloRocketScript:
	applymovement PLAYER, TangeloPlayerMovement1
TangeloRocketScript2:
	playmusic MUSIC_ROCKET_OVERTURE
	opentext
	writetext TangeloRocketText1
	waitbutton
	closetext
	playsound SFX_TACKLE
	applymovement TANGELO_ISLAND_ROCKET_2, TangeloRocketGetsPushedMovement
	showemote EMOTE_SHOCK, TANGELO_ISLAND_ROCKET_2, 15
	showemote EMOTE_SHOCK, TANGELO_ISLAND_TRACEY_1, 15
	turnobject TANGELO_ISLAND_ROCKET_1, RIGHT
	turnobject TANGELO_ISLAND_ROCKET_3, RIGHT
	opentext
	writetext TangeloRocketText2
	waitbutton
	closetext
	winlosstext TangeloRocketWinText, TangeloRocketLossText
	setlasttalked TANGELO_ISLAND_ROCKET_2
	loadtrainer GRUNTM, GRUNTM_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle
	
.AfterBattle:	
	playmusic MUSIC_ROCKET_OVERTURE
	opentext
	writetext TangeloRocketText3
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear TANGELO_ISLAND_ROCKET_1
	disappear TANGELO_ISLAND_ROCKET_2
	disappear TANGELO_ISLAND_ROCKET_3
	pause 15
	special FadeInFromBlack
	playmapmusic
	applymovement TANGELO_ISLAND_TRACEY_1, TangeloTraceyMovement1
	opentext
	writetext TangeloTraceyText1
	waitbutton
	closetext
	playsound SFX_JUMP_OVER_LEDGE
	applymovement TANGELO_ISLAND_MARILL_3, MarillHopMovement4
	cry MARILL
	pause 15
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear TANGELO_ISLAND_TRACEY_1
	disappear TANGELO_ISLAND_LAPRAS_1
	disappear TANGELO_ISLAND_MARILL_3
	pause 15
	special FadeInFromBlack
	setevent EVENT_TANGELO_ROCKETS_DEFEATED
	setscene SCENE_TANGELO_ISLAND_NOOP
	clearevent EVENT_TRACEY_TANGELO_CENTER_INSIDE
	end
	
TangeloMarillScript:
	faceplayer
	cry MARILL
	opentext
	writetext TangeloMarillScriptText
	waitbutton
	closetext
	end
	
LaprasScript:
	opentext
	cry LAPRAS
	writetext LaprasText
	yesorno
	iftrue .ObtainedLapras
	closetext
	end
	
.ObtainedLapras:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedLaprasText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke LAPRAS_PARTNER, PLAIN_FORM, 5, ORAN_BERRY
	closetext
	setevent EVENT_LAPRAS_OBTAINED
	disappear TANGELO_ISLAND_LAPRAS_2
	opentext
	writetext GetSurfHMText
	waitbutton
	verbosegiveitem HM_SURF
	closetext
	end
	
.NoRoom:
	writetext LaprasPartyFullText
	waitbutton
	closetext
	end
	
TraceyTangeloScript:
	faceplayer
	showemote EMOTE_SHOCK, TANGELO_ISLAND_TRACEY_2, 15
	opentext
	writetext TraceyTangeloText1
	waitbutton
	playmusic MUSIC_TRACEY_ENCOUNTER
	writetext TraceyTangeloText2
	waitbutton
	closetext
	winlosstext TangeloTraceyWinText, TangeloTraceyLossText
	setlasttalked TANGELO_ISLAND_TRACEY_2
	loadtrainer TRACEY1, TRACEY_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	sjump .AfterBattle
	
.AfterBattle:
	playmusic MUSIC_TRACEY_ENCOUNTER
	opentext
	writetext TraceyTangeloText3
	waitbutton
	closetext
	applymovement PLAYER, TraceyBattlePlayerMovement
	applymovement TANGELO_ISLAND_TRACEY_2, TraceyTangeloMovement
	disappear TANGELO_ISLAND_TRACEY_2
	special HealParty
	special FadeOutMusic
	playmapmusic
	setevent EVENT_TRACEY_BATTLE_TANGELO
	end
	
TangeloIslandSign:
	jumptext TangeloIslandSignText
	
TangeloCenterSign:
	jumptext TangeloCenterSignText
	
TangeloBerrySellerScript:
	faceplayer
	opentext
	checkevent EVENT_BERRY_SELLER_PINKAN
	iftrue .PinkanBerryShop
	checkitem PINKAN_BERRY
	iftrue .GivePinkanBerry
.RefusedPinkanBerry
	pokemart MARTTYPE_STANDARD, MART_BERRY_SELLER
	closetext
	end
	
.GivePinkanBerry
	writetext BerrySellerGotPinkText
	yesorno
	iftrue .GavePinkanBerry
	sjump .RefusedPinkanBerry
.GavePinkanBerry
	writetext BerrySellerGavePinkText
	waitbutton
	closetext
	takeitem PINKAN_BERRY
	setevent EVENT_BERRY_SELLER_PINKAN
	end
.PinkanBerryShop
	pokemart MARTTYPE_STANDARD, MART_BERRY_SELLER_PINKAN
	closetext
	end
	
TangeloBallGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BALL_FROM_GUY_TANGELO
	iftrue .alreadygotaball
	checktime MORN | DAY
	iftrue .day_morn
	checktime EVE | NITE
	iftrue .nite
.day_morn
	writetext TangeloBallGuyDayText
	waitbutton
	verbosegiveitem HEAL_BALL
	iffalse .NoRoom
	writetext TangeloBallGuyAlreadyGotText
	waitbutton
	closetext
	setevent EVENT_GOT_BALL_FROM_GUY_TANGELO
	end
.nite
	writetext TangeloBallGuyNightText
	waitbutton
	verbosegiveitem DUSK_BALL
	iffalse .NoRoom
	writetext TangeloBallGuyAlreadyGotText
	waitbutton
	closetext
	setevent EVENT_GOT_BALL_FROM_GUY_TANGELO
	end
.alreadygotaball
	writetext TangeloBallGuyAlreadyGotText
	waitbutton
	closetext
	end

.NoRoom
	writetext TangeloPokeballGuyNoRoom
	waitbutton
	closetext
	end
	
TangeloPokeballGuyNoRoom:
	text "You have no room"
	line "for it!"
	done

TangeloHiddenBigMushroom:
	hiddenitem BIG_MUSHROOM, EVENT_TANGELO_HIDDEN_BIG_MUSHROOM
	
TangeloHiddenTinyMushroom:
	hiddenitem TINYMUSHROOM, EVENT_TANGELO_HIDDEN_TINY_MUSHROOM
	
TangeloBallGuyDayText:
	text "What a splendid"
	line "day it is!"
	
	para "Hey, you're a"
	line "trainer, right?"
	
	para "Here's something"
	line "for you."
	done

TangeloBallGuyNightText:
	text "What a beautiful"
	line "night it is!"
	
	para "Hey, you're a"
	line "trainer, right?"
	
	para "Here's something"
	line "for you."
	done

TangeloBallGuyAlreadyGotText:
	text "Y'know, just like"
	line "#MON, people"
	cont "can change with"
	cont "time of day too!"
	done

BerrySellerGotPinkText:
	text "Oh, is that what I"
	line "think it is?"
	
	para "That's a PINKAN"
	line "BERRY!"
	
	para "Why don't you give"
	line "me one? I can grow"
	cont "them and offer it"
	cont "as a new product!"
	done
	
BerrySellerGavePinkText:
	text "Thanks! Talk to me"
	line "in a bit and I'll"
	cont "have PINKAN BERRY"
	cont "in my shop!"
	done

TangeloIslandSignText:
	text "TANGELO ISLAND"
	
	para "Where all walks of"
	line "life meet on soft"
	cont "sands."
	done
	
TangeloCenterSignText:
	text "TANGELO ISLAND"
	line "#MON CENTER"
	done
	
TraceyTangeloText1:
	text "TRACEY: Hey!"
	line "LAPRAS looks fully"
	cont "healed! I was able"
	cont "to make a great"
	cont "sketch."
	
	para "This LAPRAS is a"
	line "juvenile. It must"
	cont "have separated"
	cont "from its herd."
	
	para "What to do…?"
	
	para "…"
	
	para "Since we're here…"
	done
	
TraceyTangeloText2:
	text "I saw how you"
	line "handled those guys"
	cont "earlier. I want to"
	cont "battle you!"
	done
	
TraceyTangeloText3:
	text "TRACEY: Not bad!"
	line "Well, hopefully I"
	cont "will seeya around!"
	
	para "By the way, LAPRAS"
	line "has been staring"
	cont "at you this whole"
	cont "time!"
	
	para "Maybe you should"
	line "take it along with"
	cont "you."
	
	para "Later, <PLAYER>!"
	done
	
TangeloMarillScriptText:
	text "MARILL: Mari! Ma!"
	done
	
TangeloRocketText1:
	text "Buzz off, brat!"
	line "Finder's keepers,"
	cont "and we found it"
	cont "first!"
	
	para "???: As if!"
	line "You goons were"
	cont "about to set those"
	cont "whips on LAPRAS!"
	cont "Any respectable"
	cont "trainer should"
	cont "know better!"
	done
	
TangeloRocketText2:
	text "Ack!"
	line "If it's a fight"
	cont "you want, you got"
	cont "it!"
	done
	
TangeloRocketWinText:
	text "I'll remember this"
	line "incident!"
	done
	
TangeloRocketLossText:
	text "TEAM ROCKET lives"
	line "forever, baby!"
	done
	
TangeloRocketText3:
	text "Let's get out of"
	line "here!"
	done
	
TangeloTraceyText1:
	text "???: Thanks for"
	line "the help! I need"
	cont "to get this LAPRAS"
	cont "to the #MON"
	cont "CENTER. Please"
	cont "meet me there in a"
	cont "a bit."
	done
	
LaprasText:
	text "LAPRAS: Gyuuoh!"
	
	para "LAPRAS seems to"
	line "be ready to join"
	cont "you. Take LAPRAS?"
	done
	
LaprasPartyFullText:
	text "Your party is"
	line "full."
	done
	
ReceivedLaprasText:
	text "<PLAYER> received"
	line "LAPRAS!"
	done
	
TangeloTraceyWinText:
	text "That was fun!"
	done
	
TangeloTraceyLossText:
	text "Are you ok?"
	done
	
GetSurfHMText:
	text "Hey! There's some-"
	line "thing floating in"
	cont "the pool!"
	done
	
MarillHopMovement:
	jump_in_place
	turn_head UP
	step_sleep 8
	turn_head LEFT
	step_sleep 8
	turn_head DOWN
	step_sleep 8
	turn_head RIGHT
	step_sleep 8
	step_end
	
MarillHopMovement2:
	jump_in_place
	step_sleep 16
	big_step LEFT
	big_step LEFT
	step_end
	
MarillHopMovement3:
	jump_in_place
	step_sleep 16
	big_step LEFT
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end
	
TangeloRocketGetsPushedMovement:
	turn_head LEFT
	fix_facing
	step RIGHT
	remove_fixed_facing
	step_sleep 16
	turn_head RIGHT
	step_end
	
TangeloPlayerMovement1:
	step DOWN
	turn_head LEFT
	step_end
	
TangeloTraceyMovement1:
	step RIGHT
	step RIGHT
	step_end
	
MarillHopMovement4:
	jump_in_place
	step_sleep 16
	big_step UP
	big_step LEFT
	big_step LEFT
	big_step LEFT
	turn_head DOWN
	step_end
	
TraceyBattlePlayerMovement:
	step RIGHT
	turn_head LEFT
	step_end
	
TraceyTangeloMovement:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
TangeloPlayerMovement2:
	step DOWN
	step_end

TangeloIslandFruitTree:
	fruittree FRUITTREE_TANGELO_ISLAND_1

TangeloIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, ALTERING_CAVE, 1
	warp_event 29,  7, TANGELO_ISLAND_NORTH_HOUSE, 1
	warp_event 27, 15, TANGELO_ISLAND_EAST_HOUSE, 1
	warp_event 17, 15, TANGELO_ISLAND_WEST_HOUSE, 1
	warp_event 19, 33, TANGELO_ISLAND_SOUTH_HOUSE, 1
	warp_event 15,  7, TANGELO_ISLAND_POKECENTER_1F, 2
	warp_event 21, 15, TANGELO_ISLAND_POKEMART, 1

	def_coord_events
	coord_event 31, 10, SCENE_TANGELO_ISLAND_MARILL_1, TangeloMarillNeedsHelpScript
	coord_event 31, 11, SCENE_TANGELO_ISLAND_MARILL_1, TangeloMarillNeedsHelpScript
	coord_event 17, 16, SCENE_TANGELO_ISLAND_MARILL_2, TangeloMarillKeepFollowingScript
	coord_event 17, 17, SCENE_TANGELO_ISLAND_MARILL_2, TangeloMarillKeepFollowingScript
	coord_event 21, 16, SCENE_TANGELO_ISLAND_MARILL_2, TangeloMarillKeepFollowingScript2
	coord_event 21, 17, SCENE_TANGELO_ISLAND_MARILL_2, TangeloMarillKeepFollowingScript2
	coord_event 15, 24, SCENE_TANGELO_ISLAND_MARILL_3, TangeloRocketScript
	coord_event 15, 25, SCENE_TANGELO_ISLAND_MARILL_3, TangeloRocketScript2

	def_bg_events
	bg_event 24, 10, BGEVENT_READ, TangeloIslandSign
	bg_event 21,  7, BGEVENT_READ, TangeloCenterSign
	bg_event 20, 34, BGEVENT_ITEM, TangeloHiddenBigMushroom
	bg_event  4, 14, BGEVENT_ITEM, TangeloHiddenTinyMushroom

	def_object_events
	object_event 28, 10, SPRITE_MARILL_WALK, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MARILL_TANGELO_1
	object_event 19, 17, SPRITE_MARILL_WALK, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MARILL_TANGELO_2
	object_event 17, 25, SPRITE_MARILL_WALK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TangeloMarillScript, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 12, 24, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 13, 25, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 12, 26, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 12, 25, SPRITE_TRACEY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 11, 25, SPRITE_SURF, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TANGELO_ROCKETS_DEFEATED
	object_event 20,  7, SPRITE_TRACEY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TraceyTangeloScript, EVENT_TRACEY_BATTLE_TANGELO
	object_event 20,  5, SPRITE_SURF, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, LaprasScript, EVENT_LAPRAS_OBTAINED
	object_event 21, 11, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TangeloBerrySellerScript, -1
	object_event 26,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TangeloBallGuyScript, -1
	object_event 30, 30, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloIslandFruitTree, -1

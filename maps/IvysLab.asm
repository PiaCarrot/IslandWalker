	object_const_def
	const ELMSLAB_ELM
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3
	const IVYS_LAB_GYARADOS

IvysLab_MapScripts:
	def_scene_scripts
	scene_script MeetIvy, SCENE_IVYS_LAB_MEET_IVY
	scene_script CantLeaveIvysLab, SCENE_IVYSLAB_CANT_LEAVE
	scene_script ComeBackFromAltStarter, SCENE_IVYSLAB_ALT_STARTER
	scene_script IvysLabNoOp, SCENE_IVYSLAB_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, IvysBasementCallback

IvysBasementCallback:	
	checkevent EVENT_IVYS_BASEMENT_OPENED
	iffalse .Done
	changeblock  0,  4, $1D
.Done:
	endcallback

MeetIvy:
	priorityjump WalkUpToIvy
	end
	
CantLeaveIvysLab:
	end
	
ComeBackFromAltStarter:
	priorityjump ComeBackFromAltStarterScript
	end
	
IvysLabNoOp:
	end
	
WalkUpToIvy:
	applymovement PLAYER, IvysLab_WalkUpToIvyMovement
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext IvyText_Intro
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow ELMSLAB_ELM, PLAYER
	applymovement ELMSLAB_ELM, IvyMovement1
	stopfollow
	turnobject PLAYER, RIGHT
	turnobject ELMSLAB_ELM, LEFT
	opentext
	writetext IvyText_ChooseAPokemon
	waitbutton
	setscene SCENE_IVYSLAB_CANT_LEAVE
	closetext
	special RestartMapMusic
	turnobject ELMSLAB_ELM, DOWN
	end
	
ComeBackFromAltStarterScript:
	sjump ElmDirectionsScript
	
LabTryToLeaveScript:
	turnobject ELMSLAB_ELM, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext IvysLabCantLeaveText
	yesorno
	iftrue .GoingOnAWalk
	closetext
	applymovement PLAYER, IvysLabCantLeaveMovement
	end
	
.GoingOnAWalk
	closetext
	setmapscene VALENCIA_ISLAND, SCENE_VALENCIA_ISLAND_ALT_STARTER
	clearevent EVENT_ALT_STARTER_VALENCIA_IVY
	applymovement ELMSLAB_ELM, ASIvysLabIvyMovement1
	turnobject ELMSLAB_ELM, UP
	turnobject PLAYER, DOWN
	opentext
	writetext IvysLabIvyLetsGoText
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow ELMSLAB_ELM, PLAYER
	applymovement ELMSLAB_ELM, ASIvysLabIvyMovement2
	stopfollow
	playsound SFX_EXIT_BUILDING
	special FadeOutToWhite
	waitsfx
	warp VALENCIA_ISLAND, 29, 13
	end
	
LabTryToLeaveScript3:
	turnobject ELMSLAB_ELM, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext IvysLabCantLeaveText
	yesorno
	iftrue .GoingOnAWalk
	closetext
	applymovement PLAYER, IvysLabCantLeaveMovement
	end
	
.GoingOnAWalk
	closetext
	setmapscene VALENCIA_ISLAND, SCENE_VALENCIA_ISLAND_ALT_STARTER
	clearevent EVENT_ALT_STARTER_VALENCIA_IVY
	applymovement ELMSLAB_ELM, ASIvysLabIvyMovement3
	turnobject ELMSLAB_ELM, RIGHT
	turnobject PLAYER, LEFT
	opentext
	writetext IvysLabIvyLetsGoText
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow ELMSLAB_ELM, PLAYER
	applymovement ELMSLAB_ELM, ASIvysLabIvyMovement4
	stopfollow
	playsound SFX_EXIT_BUILDING
	special FadeOutToWhite
	waitsfx
	warp VALENCIA_ISLAND, 29, 13
	end


LabTryToLeaveScript2:
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext IvysLabCantLeaveText2
	waitbutton
	closetext
	applymovement PLAYER, IvysLabCantLeaveMovement2
	end
	
ProfessorIvyScript:
	faceplayer
	opentext
	checkevent EVENT_GS_BALL_IVY
	iftrue .IvyAfterGSBall
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iftrue .GotPokemonAlreadyIvy
	writetext IvyText_ChooseAPokemon
.FinishIvyScript
	waitbutton
	closetext
	end
	
.GotPokemonAlreadyIvy:
	writetext IvyAfterGettingStarterText2
	sjump .FinishIvyScript
	
.ShowGSBallToIvy:
	writetext IvyGSBallText
	waitbutton
	closetext
	setevent EVENT_GS_BALL_IVY
	setevent EVENT_GS_BALL_ENCOUNTER
	clearevent EVENT_TRACEY_BATTLE_TANGELO
	clearevent EVENT_LAPRAS_OBTAINED
	end
	
.IvyAfterGSBall:
	writetext IvyGSBallText2
	waitbutton
	closetext
	end
	
CharmanderPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, RIGHT
	refreshscreen
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext TakeCharmanderText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL1
	setevent EVENT_GOT_CHARMANDER_FROM_IVY
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CHARMANDER
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CHARMANDER, PLAIN_FORM, 5, BERRY ;ORAN_BERRY
	closetext
;	readvar VAR_FACING
;	ifequal RIGHT, ElmDirectionsScript
	applymovement PLAYER, AfterCharmanderMovement
	special FadeOutToBlack
	warp IVYS_LAB, 2, 5
	sjump ElmDirectionsScript

SquirtlePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, RIGHT
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext TakeSquirtleText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL2
	setevent EVENT_GOT_SQUIRTLE_FROM_IVY
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SQUIRTLE, PLAIN_FORM, 5, BERRY ;ORAN_BERRY
	closetext
	applymovement PLAYER, AfterSquirtleMovement
	special FadeOutToBlack
	warp IVYS_LAB, 2, 5
	sjump ElmDirectionsScript

BulbasaurPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, RIGHT
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext TakeBulbasaurText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL3
	setevent EVENT_GOT_BULBASAUR_FROM_IVY
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke BULBASAUR, PLAIN_FORM, 5, BERRY ;ORAN_BERRY
	closetext
	applymovement PLAYER, AfterBulbasaurMovement
	special FadeOutToBlack
	warp IVYS_LAB, 2, 5
	sjump ElmDirectionsScript
	
DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end
	
LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end
	
ElmDirectionsScript:
	turnobject PLAYER, UP
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext IvyAfterGettingStarterText
	waitbutton
	writetext IvysLabGotDexText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	waitbutton
	writetext IvyAfterGettingStarterText2
	waitbutton
	closetext
	setevent EVENT_MET_CROSS_ON_VALENCIA
	setevent EVENT_GOT_A_POKEMON_FROM_IVY
	setscene SCENE_IVYSLAB_NOOP
	setmapscene ROUTE_49, SCENE_ROUTE_49_AUNT_PRIMA
	turnobject PLAYER, LEFT
	turnobject ELMSLAB_ELM, LEFT
	playsound SFX_EXIT_BUILDING
	changeblock  0,  4, $1D
	setevent EVENT_IVYS_BASEMENT_OPENED
	setmapscene IVYS_LAB_B1, SCENE_IVYS_LAB_BASEMENT_GS_BALL
	opentext
	writetext IvyAfterGettingStarterText3
	waitbutton
	closetext
	follow ELMSLAB_ELM, PLAYER
	applymovement ELMSLAB_ELM, AfterStarterMovementIvy
	playsound SFX_ENTER_DOOR
	special FadeOutToWhite
	waitsfx
	warp IVYS_LAB_B1, 0, 5
	end
	
IvysLabBookShelf:
	jumptext IvysLabBookShelfText

IvysLabPoster1:
	jumptext IvysLabPoster1Text
	
IvysLabPoster1Text:
	text "GYARADOS' ROOM"
	done

IvysLabPoster2:
	opentext
	writetext IvysLabPoster2Text1
	yesorno
	iffalse .End
	writetext IvysLabPoster2Text2
	waitbutton
	writetext IvysLabPoster2Continue
	yesorno
	iffalse .End
	writetext IvysLabPoster2Text3
	waitbutton
	writetext IvysLabPoster2Continue
	yesorno
	iffalse .End
	writetext IvysLabPoster2Text4
	waitbutton
.End
	closetext
	end

IvysLabPoster2Text1:
	text "It seems to be a"
	line "log of GYARADOS'"
	cont "activity. Want to"
	cont "read it?"
	done
	
IvysLabPoster2Text2:
	text "MAGIKARP NOTES"
	
	para "DAY 1"
	line "I found a MAGIKARP"
	cont "on the beach this"
	cont "morning."
	
	para "It was stuck on"
	line "the sand bank and"
	cont "was in critical"
	cont "condition, so I"
	cont "took it into the"
	cont "lab to nurse."
	done
	
IvysLabPoster2Text3:
	text "DAY 6"
	line "MAGIKARP is pretty"
	cont "much healthy!"
	cont "It seems to be"
	cont "splashing with a"
	cont "lot of vigor."
	done
	
IvysLabPoster2Text4:
	text "DAY 14"
	line "I took MAGIKARP to"
	cont "the beach to set"
	cont "free, but it came"
	cont "right back to me!"
	
	para "The most amazing"
	line "thing happened and"
	cont "it evolved into"
	cont "GYARADOS!"
	
	para "I think GYARADOS"
	line "and I are going to"
	cont "be great friends!"
	
	para "The log appears to"
	line "end here."
	done
	
IvysLabPoster2Continue:
	text "Continue reading?"
	done
	
IvyGSBallText:
	text "IVY: Back so soon,"
	line "<PLAYER>?"
	
	para "Oh, what's this,"
	line "then?"
	
	para "… … …"
	
	para "IVY: It appears"
	line "to be what PROF."
	cont "OAK mentioned to"
	cont "me over email."
	
	para "He was supposed"
	line "to be sending it"
	cont "to me, but it"
	cont "seems to have"
	cont "made its way in"
	cont "your hands,"
	cont "<PLAYER>."
	
	para "Apparently, that"
	line "#BALL will not"
	cont "open up. That's"
	cont "because it's"
	cont "broken."
	
	para "There's not many"
	line "#BALL crafters"
	cont "left in the world,"
	cont "and the masters,"
	cont "even fewer."
	
	para "Why don't you hold"
	line "onto it for now,"
	cont "<PLAYER>?"
	
	para "I'm far too busy"
	line "with my regional"
	cont "species research"
	cont "to look into some"
	cont "old #BALL."
	
	para "And who knows? It"
	line "might bring you"
	cont "good luck."
	done
	
IvyGSBallText2:
	text "IVY: Keep me up to"
	line "date on that GS"
	cont "BALL!"
	done

IvysLabTrashcan:
	jumptext IvysLabTrashcanText
	
ElmsLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iftrue .CanHeal
	writetext ElmsLabHealingMachineText1
	waitbutton
	closetext
	end

.CanHeal:
	writetext ElmsLabHealingMachineText2
	yesorno
	iftrue ElmsLabHealingMachine_HealParty
	closetext
	end

ElmsLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_ELMS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end
	
IvysGyaradosScript:
	opentext
	writetext IvysGyaradosText
	cry GYARADOS
	waitbutton
	closetext
	end
	
IvysLabOldTV:
	jumptext IvysLabOldTVText
	
ElmsLabHealingMachineText1:
	text "A healing machine."
	line "But, you have no"
	cont "#MON to heal!"
	done

ElmsLabHealingMachineText2:
	text "Would you like to"
	line "heal your #MON?"
	done
	
IvyText_Intro:
	text "IVY: <PLAYER>!"
	line "Welcome. I take it"
	cont "you're here for"
	cont "your very first"
	cont "#MON?"
	
	para "You must be ready"
	line "to take on the"
	cont "ORANGE CREW, then!"
	cont "Follow me."
	done
	
IvyText_ChooseAPokemon:
	text "IVY: Here. I have"
	line "3 #MON that I"
	cont "caught myself on"
	cont "my last trip to"
	cont "SHAMOUTI ISLAND."
	
	para "Take a look, and"
	line "choose wisely."
	done
	
IvysLabCantLeaveText:
	text "IVY: Are you not"
	line "sure which one"
	cont "you want?"
	
	para "We can take a"
	line "stroll on the"
	cont "beach, if you'd"
	cont "like more time to"
	cont "think on it?"
	done
	
IvysLabCantLeaveText2:
	text "IVY: Ah, don't"
	line "go down there"
	cont "right now!"
	
	para "Think hard about"
	line "which one you want"
	cont "to take!"
	done
	
TakeCharmanderText:
	text "IVY: You'll take"
	line "CHARMANDER, the"
	cont "fire #MON?"
	done

TakeSquirtleText:
	text "IVY: Do you want"
	line "SQUIRTLE, the"
	cont "water #MON?"
	done

TakeBulbasaurText:
	text "IVY: So, you like"
	line "BULBASAUR, the"
	cont "grass #MON?"
	done

DidntChooseStarterText:
	text "IVY: Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

ChoseStarterText:
	text "IVY: I think"
	line "that's a great"
	cont "#MON too!"
	done
	
ElmPokeBallText:
	text "It contains a"
	line "#MON caught by"
	cont "PROF.IVY."
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done
	
IvyAfterGettingStarterText:
	text "IVY: Alright!"
	line "Are you excited,"
	cont "<PLAYER>?"
	
	para "From here, go"
	line "west and follow"
	cont "the shoals until"
	cont "you reach TANGELO"
	cont "ISLAND."
	
	para "Take this also:"
	line "A #DEX!"
	done
	
IvyAfterGettingStarterText2:
	text "IVY: Catch all of"
	line "#MON that you"
	cont "can find! You'll be"
	cont "aiding #MON"
	cont "research all"
	cont "around the world!"
	
	para "One more thing,"
	line "before you go."
	
	para "CHARITY!"
	done
	
IvyAfterGettingStarterText3:
	text "In return for that"
	line "#MON, you'll be"
	cont "running an errand"
	cont "for me."
	
	para "Follow me down-"
	line "stairs."
	done

IvysLabBookShelfText:
	text "#MON Research"
	line "Exotic varieties"
	cont "of #MON can be"
	cont "found all over the"
	cont "isle of VALENCIA."
	
	para "It's not sure why,"
	line "but it seems these"
	cont "#MON differ"
	cont "from their fellows"
	cont "of the same name"
	cont "in terms of their"
	cont "ABILITY."
	done
	
IvysLabTrashcanText:
	text "It's just trash."
	done
	
IvysLabGotDexText:
	text "<PLAYER> received"
	line "#DEX!"
	done
	
IvysLabIvyLetsGoText:
	text "IVY: Alright,"
	line "let's go then!"
	done
	
IvysGyaradosText:
	text "Gyaaaaash!"
	done
	
IvysLabOldTVText:
	text "Looks like an old"
	line "radar for sonar."
	done
	
IvysLab_WalkUpToIvyMovement:
	step UP
	step UP
	step_end
	
AfterStarterMovementIvy:
	step LEFT
	step LEFT
	step DOWN
	step_end

IvyMovement1:
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
AfterCharmanderMovement:
	step LEFT
	step_end

AfterSquirtleMovement:
	step LEFT
	step LEFT
	step_end
	
AfterBulbasaurMovement:
	turn_head LEFT
	step_end
	
IvysLabCantLeaveMovement:
	step RIGHT
	step_end
	
IvysLabCantLeaveMovement2:
	step UP
	step_end
	
ASIvysLabIvyMovement1:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
ASIvysLabIvyMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

ASIvysLabIvyMovement3:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end
	
ASIvysLabIvyMovement4:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

IvysLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VALENCIA_ISLAND, 4
	warp_event  3,  7, VALENCIA_ISLAND, 4
	warp_event  0,  5, IVYS_LAB_B1, 1

	def_coord_events
	coord_event  6,  2, SCENE_IVYSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  6,  3, SCENE_IVYSLAB_CANT_LEAVE, LabTryToLeaveScript3
	coord_event  9,  5, SCENE_IVYSLAB_CANT_LEAVE, LabTryToLeaveScript2

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ElmsLabHealingMachine
	bg_event  8,  1, BGEVENT_READ, IvysLabBookShelf
	bg_event  9,  1, BGEVENT_READ, IvysLabBookShelf
	bg_event 12,  5, BGEVENT_READ, IvysLabPoster1
	bg_event 14,  5, BGEVENT_READ, IvysLabPoster2
	bg_event 14,  1, BGEVENT_READ, IvysLabTrashcan
	bg_event  5,  1, BGEVENT_READ, IvysLabOldTV
	bg_event  4,  1, BGEVENT_READ, IvysLabOldTV

	def_object_events
	object_event  2,  4, SPRITE_ELM, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ProfessorIvyScript, -1
	object_event 12,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharmanderPokeBallScript, EVENT_CHARMANDER_POKEBALL_IN_IVYS_LAB
	object_event 13,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SquirtlePokeBallScript, EVENT_SQUIRTLE_POKEBALL_IN_IVYS_LAB
	object_event 11,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BulbasaurPokeBallScript, EVENT_BULBASAUR_POKEBALL_IN_IVYS_LAB
	object_event 11,  9, SPRITE_GYARADOS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IvysGyaradosScript, -1

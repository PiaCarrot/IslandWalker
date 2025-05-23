	object_const_def
	const TANGELO_JUNGLE_FRUITTREE_1
	const TANGELO_JUNGLE_FRUITTREE_2
	const TANGELO_JUNGLE_DEPTHS_1
	const TANGELO_JUNGLE_ANTIDOTE
	const TANGELO_JUNGLE_POTION
	const TANGELO_JUNGLE_CROSS
	const TANGELO_JUNGLE_CUTSCENE_BUG_CATCHER
	const TANGELO_JUNGLE_CUTSCENE_ROCKRUFF
	const TANGELO_JUNGLE_CUTSCENE_CATERPIE
	const TANGELO_JUNGLE_CUTSCENE_OFFICER
	const TANGELO_JUNGLE_BUG_CATCHER_F_MICA
	const TANGELO_JUNGLE_BUG_CATCHER_F_HANNAH
	const TANGELO_JUNGLE_BUG_CATCHER_OWEN
	const TANGELO_JUNGLE_BUG_CATCHER_ERIC
	const TANGELO_JUNGLE_BUG_CATCHER_RYAN

TangeloJungle_MapScripts:
	def_scene_scripts

	def_callbacks
	
;Leaving this here for reference, but its no longer needed
	; callback MAPCALLBACK_OBJECTS, TangeloJungleBugCatcherRyanCallback
	
; TangeloJungleBugCatcherRyanCallback:
	; readvar VAR_TIMEOFDAY
	; ifequal NITE, .RyanAppears
	; disappear TANGELO_JUNGLE_BUG_CATCHER_RYAN
	; endcallback

; .RyanAppears:
	; appear TANGELO_JUNGLE_BUG_CATCHER_RYAN
	; endcallback

TangeloJungleFruitTree1:
	fruittree FRUITTREE_TANGELO_JUNGLE_1
	
TangeloJungleFruitTree2:
	fruittree FRUITTREE_TANGELO_JUNGLE_2
	
TangeloJungleDepths:
	jumpstd MonDepthsScript

TangeloJungleAntidote:
	itemball ANTIDOTE
	
TangeloJunglePotion:
	itemball POTION

TangeloJungleHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_ROUTE_50_HIDDEN_FULL_HEAL

TangeloJungleHiddenTinyMushroom:
	hiddenitem TINYMUSHROOM, EVENT_ROUTE_50_HIDDEN_TINYMUSHROOM

TangeloJungleHiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ROUTE_50_HIDDEN_SUPER_POTION
	
TangeloJungleSign:
	jumptext TangeloJungleSignText
	
TangeloJungleSignText:
	text "TANGELO JUNGLE"
	done
	
TangeloJungleCrossScript:
	cry GEODUDE
	waitsfx
	cry CATERPIE
	waitsfx
	playsound SFX_TACKLE
	applymovement TANGELO_JUNGLE_CUTSCENE_CATERPIE, TangeloJungleRockruffShovesCaterpieMovement
	turnobject TANGELO_JUNGLE_CUTSCENE_BUG_CATCHER, RIGHT
	opentext
	writetext TangeloJungleCaterpieText
	waitbutton
	closetext
	disappear TANGELO_JUNGLE_CUTSCENE_CATERPIE
	applymovement TANGELO_JUNGLE_CUTSCENE_BUG_CATCHER, TangeloJungleBugCatcherMovement
	disappear TANGELO_JUNGLE_CUTSCENE_BUG_CATCHER
	playsound SFX_ENTER_DOOR
	waitsfx
	pause 15
	showemote EMOTE_SAD, TANGELO_JUNGLE_CROSS, 15
	faceplayer
	turnobject TANGELO_JUNGLE_CUTSCENE_ROCKRUFF, LEFT
	showemote EMOTE_SHOCK, TANGELO_JUNGLE_CROSS, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_CROSS_ENCOUNTER
	opentext
	checkevent EVENT_GOT_DRATINI_FROM_IVY
	iftrue .MetCrossOnValencia
	writetext TangeloCrossEncounterText
.CrossBattle
	waitbutton
	closetext
	winlosstext TangeloJungleCrossWinText, TangeloJungleCrossLossText
	setlasttalked TANGELO_JUNGLE_CROSS
	loadtrainer CROSS1, CROSS_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	disappear TANGELO_JUNGLE_CUTSCENE_ROCKRUFF
	iftrue .AfterVictorious
	sjump .AfterDefeat
	
.MetCrossOnValencia:
	writetext TangeloCrossDratiniText
	sjump .CrossBattle
	
.AfterVictorious:
	playmusic MUSIC_CROSS_ENCOUNTER
	opentext
	writetext TangeloJungleCrossText_HeWon
	waitbutton
	closetext
	applymovement TANGELO_JUNGLE_CROSS, CrossJungle_Movement
	disappear TANGELO_JUNGLE_CROSS
	playsound SFX_ENTER_DOOR
	waitsfx
	special FadeOutMusic
	playmapmusic
	moveobject TANGELO_JUNGLE_CUTSCENE_OFFICER, 19, 5
	appear TANGELO_JUNGLE_CUTSCENE_OFFICER
	pause 15
	playsound SFX_EXIT_BUILDING
	waitsfx
	applymovement TANGELO_JUNGLE_CUTSCENE_OFFICER, JennyJungle_Movement
	pause 15
	turnobject TANGELO_JUNGLE_CUTSCENE_OFFICER, LEFT
	showemote EMOTE_SHOCK, TANGELO_JUNGLE_CUTSCENE_OFFICER, 15
	applymovement TANGELO_JUNGLE_CUTSCENE_OFFICER, JennyJungle_Movement2
	opentext
	writetext TangeloOfficerText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInFromBlack
	special RestartMapMusic
	opentext
	writetext TangeloOfficerKeepAtItText
	waitbutton
	closetext
	applymovement TANGELO_JUNGLE_CUTSCENE_OFFICER, CrossJungle_Movement
	disappear TANGELO_JUNGLE_CUTSCENE_OFFICER
	playsound SFX_ENTER_DOOR
	waitsfx
	setevent EVENT_CROSS_BATTLE_TANGELO_JUNGLE
	end

.AfterDefeat:
	playmusic MUSIC_CROSS_ENCOUNTER
	opentext
	writetext TangeloJungleCrossText_HeLost
	waitbutton
	closetext
	applymovement TANGELO_JUNGLE_CROSS, CrossJungle_Movement
	disappear TANGELO_JUNGLE_CROSS
	playsound SFX_ENTER_DOOR
	waitsfx
	special FadeOutMusic
	special HealParty
	setevent EVENT_CROSS_BATTLE_TANGELO_JUNGLE
	playmapmusic
	end

TangeloCrossDratiniText:
	text "???: You again?"
	line "Hmph. The trainers"
	cont "around here are so"
	cont "weak."
	
	para "Their #MON were"
	line "pathetic. I only"
	cont "use strong #MON"
	cont "that can crush my"
	cont "enemies."
	
	para "What's your name?"
	line "you don't look as"
	cont "weak as these BUG"
	cont "CATCHERs."
	
	para "… … …"
	
	para "<PLAYER>? Never"
	line "heard of you. Hah!"
	
	para "Well, since I'm"
	line "already here, I"
	cont "guess I'll intro-"
	cont "duce myself."
	
	para "CROSS: I am CROSS,"
	line "the one who will"
	cont "be the ultimate"
	cont "trainer using"
	cont "strength alone!"

	para "Allow me to demon-"
	line "strate!"
	done
	
TangeloCrossEncounterText:
	text "???: Huh?"

	para "What's your name?"
	line "you don't look as"
	cont "weak as these BUG"
	cont "CATCHERs."

	para "… … …"
	
	para "<PLAYER>? Never"
	line "heard of you. Hah!"

	para "Well, since I'm"
	line "already here, I"
	cont "guess I'll intro-"
	cont "duce myself."

	para "CROSS: I am CROSS,"
	line "the one who will"
	cont "be the ultimate"
	cont "trainer using"
	cont "strength alone!"

	para "Allow me to demon-"
	line "strate!"
	done
	
TangeloJungleCrossWinText:
	text "Huh? There's no"
	line "way!"
	done
	
TangeloJungleCrossLossText:
	text "It's already over?"
	line "Pathetic…"
	done
	
TangeloJungleCrossText_HeWon:
	text "CROSS: Hah!"

	para "I guess I was just"
	line "optimistic!"
	
	para "See you around, if"
	line "you can squeak a"
	cont "badge in!"
	done

TangeloJungleCrossText_HeLost:
	text "CROSS: Hmph!"

	para "Don't think you've"
	line "won! I'll be back,"
	cont "stronger than you"
	cont "can handle!"

	para "Remember this,"
	line "<PLAYER>!"
	done
	
TangeloJungleCaterpieText:
	text "Gah! CATERPIE just"
	line "can't hack it!"
	done
	
TangeloOfficerText:
	text "Are you ok?"
	line "I thought I heard"
	cont "a #MON BATTLE"
	cont "out here!"
	
	para "It's a long walk"
	line "back to TANGELO"
	cont "ISLAND, so I'll"
	cont "heal your party"
	cont "just this once!"
	done
	
TangeloOfficerKeepAtItText:
	text "There!"

	para "Your #MON are"
	line "looking good!"

	para "Good luck, kid."
	done

CrossJungle_Movement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

JennyJungle_Movement:
	step DOWN
	step_end

JennyJungle_Movement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

TangeloJungleBugCatcherMovement:
	step RIGHT
	step UP
	step_end
	
TangeloJungleRockruffShovesCaterpieMovement:
	turn_head DOWN
	fix_facing
	jump_step RIGHT
	remove_fixed_facing
	turn_head UP
	step_end
	
BugCatcherFMicaScript:
	trainer BUG_CATCHER_F, MICA, EVENT_BEAT_BUG_CATCHER_F_MICA, BugCatcherFMicaSeenText, BugCatcherFMicaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherFMicaAfterText
	waitbutton
	closetext
	end
	
BugCatcherFMicaSeenText:
	text "BUGs don't scare"
	line "me one bit! They"
	cont "are cute!"
	done

BugCatcherFMicaBeatenText:
	text "BUGs are cute,"
	line "unlike you! Bleh!"
	done

BugCatcherFMicaAfterText:
	text "I catch all of my"
	line "cuties in HEAL"
	cont "BALLs!"
	done
	
BugCatcherFHannahScript:
	trainer BUG_CATCHER_F, HANNAH, EVENT_BEAT_BUG_CATCHER_F_HANNAH, BugCatcherFHannahSeenText, BugCatcherFHannahBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherFHannahAfterText
	waitbutton
	closetext
	end
	
BugCatcherFHannahSeenText:
	text "Gotta crawl, gotta"
	line "crawl, to the ugly"
	cont "BUG ball…"
	done

BugCatcherFHannahBeatenText:
	text "I was singing!"
	done

BugCatcherFHannahAfterText:
	text "TANGELO JUNGLE"
	line "is a BUG CATCHER's"
	cont "paradise!"
	done
	
BugCatcherOwenScript:
	trainer BUG_CATCHER, OWEN, EVENT_BEAT_BUG_CATCHER_OWEN, BugCatcherOwenSeenText, BugCatcherOwenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherOwenAfterText
	waitbutton
	closetext
	end
	
BugCatcherOwenSeenText:
	text "LEDYBA? CUTIEFLY?"
	line "I don't need BUGs"
	cont "like that!"
	done

BugCatcherOwenBeatenText:
	text "I can't worm my"
	line "way out of this!"
	done

BugCatcherOwenAfterText:
	text "HANNAH caught all"
	line "the cool BUGs this"
	cont "morning…"
	done
	
BugCatcherEricScript:
	trainer BUG_CATCHER, ERIC, EVENT_BEAT_BUG_CATCHER_ERIC, BugCatcherEricSeenText, BugCatcherEricBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherEricAfterText
	waitbutton
	closetext
	end
	
BugCatcherEricSeenText:
	text "Where?!"
	done

BugCatcherEricBeatenText:
	text "Where can I find"
	line "VENONAT?!"
	done

BugCatcherEricAfterText:
	text "My friend RYAN has"
	line "a VENONAT. He only"
	cont "hunts at night…"
	done
	
BugCatcherRyanScript:
	trainer BUG_CATCHER, RYAN, EVENT_BEAT_BUG_CATCHER_RYAN, BugCatcherRyanSeenText, BugCatcherRyanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherRyanAfterText
	waitbutton
	closetext
	end
	
BugCatcherRyanSeenText:
	text "If you beat me, I"
	line "will let you in on"
	cont "a little secret!"
	done

BugCatcherRyanBeatenText:
	text "Ack! Okay, I'll"
	line "spill the beans!"
	done

BugCatcherRyanAfterText:
	text "SPIDER SILK comes"
	line "from SPINARAK! It's"
	cont "worth a lot!"
	done

TangeloJungle_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33, 38, TANGELO_JUNGLE_ROUTE_51_GATE, 3
	warp_event 33, 39, TANGELO_JUNGLE_ROUTE_51_GATE, 4
	warp_event 33,  5, TANGELO_JUNGLE_HOUSE, 1
	warp_event 19,  5, TANGELO_JUNGLE_ROUTE_52_GATE, 3
	warp_event 20,  5, TANGELO_JUNGLE_ROUTE_52_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 29, 37, BGEVENT_READ, TangeloJungleSign
	bg_event 23, 23, BGEVENT_ITEM, TangeloJungleHiddenFullHeal
	bg_event  9, 14, BGEVENT_ITEM, TangeloJungleHiddenTinyMushroom
	bg_event  7,  7, BGEVENT_ITEM, TangeloJungleHiddenSuperPotion

	def_object_events
	object_event  0, 38, SPRITE_BERRY_H_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TangeloJungleFruitTree1, -1
	object_event 38, 12, SPRITE_BERRY_BETA_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, TangeloJungleFruitTree2, -1
	object_event 32, 12, SPRITE_SHADOW, SPRITEMOVEDATA_SWIM_WANDER, 4, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloJungleDepths, -1
	object_event 16, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TangeloJungleAntidote, EVENT_TANGELO_JUNGLE_ANTIDOTE
	object_event 28, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TangeloJunglePotion, EVENT_TANGELO_JUNGLE_POTION
	object_event 15,  6, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, TangeloJungleCrossScript, EVENT_CROSS_BATTLE_TANGELO_JUNGLE
	object_event 18,  6, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CROSS_BATTLE_TANGELO_JUNGLE
	object_event 16,  6, SPRITE_TANGELO_JUNGLE_SCENE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CROSS_BATTLE_TANGELO_JUNGLE
	object_event 17,  6, SPRITE_TANGELO_JUNGLE_SCENE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CROSS_BATTLE_TANGELO_JUNGLE
	object_event 39, 39, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CROSS_BATTLE_TANGELO_JUNGLE
	object_event  0,  8, SPRITE_SIGHTSEER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, BugCatcherFMicaScript, -1
	object_event  9, 36, SPRITE_SIGHTSEER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_TRAINER, 3, BugCatcherFHannahScript, -1
	object_event 14, 35, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, BugCatcherOwenScript, -1
	object_event  0, 29, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, BugCatcherEricScript, -1
	object_event 11, 18, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, EVE | NITE, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, BugCatcherRyanScript, -1

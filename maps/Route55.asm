	object_const_def
	const ROUTE_55_ITEMBALL_1
	const ROUTE_55_ITEMBALL_2
	const ROUTE_55_BERRYTREE_1
	const ROUTE_55_BERRYTREE_2
	const ROUTE_55_ATHLETE_ZACK
	const ROUTE_55_YOUNGSTER_JOSEPH
	const ROUTE_55_SWIMMERF_LARA
	const ROUTE_55_SWIMMERF_MINNIE
	const ROUTE_55_ITEMBALL_3
	const ROUTE_55_ITEMBALL_4
	const ROUTE_55_ITEMBALL_5
	const ROUTE_55_LORELEI

Route55_MapScripts:
        def_scene_scripts
        scene_script Route55Noop1Scene, SCENE_ROUTE_55_LOELEI_BATTLE
        scene_script Route55Noop2Scene, SCENE_ROUTE_55_NOOP

        def_callbacks
        callback MAPCALLBACK_NEWMAP, Route55DiveMap

Route55DiveMap:
        divemap ROUTE_55_UNDERWATER
        return

Route55Noop1Scene:
	end

Route55Noop2Scene:
	end
	
Route55SuperPotion:
	itemball SUPER_POTION
	
Route55SoftSand:
	itemball SOFT_SAND
	
Route55PrettyShell:
	itemball PRETTY_SHELL
	
Route55UltraBall:
	itemball ULTRA_BALL
	
Route55TMBrickBreak:
	itemball TM_BRICK_BREAK

Route55FruitTree:
	fruittree FRUITTREE_ROUTE_55_1

Route55FruitTree2:
	fruittree FRUITTREE_ROUTE_55_2
	
Route55LoreleiSceneRight:
	moveobject ROUTE_55_LORELEI, 15, 12
	sjump Route55LoreleiScript
Route55LoreleiSceneLeft:
	moveobject ROUTE_55_LORELEI, 14, 12
Route55LoreleiScript:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear ROUTE_55_LORELEI
	applymovement ROUTE_55_LORELEI, Route55LoreleiWalkUp
	playmusic MUSIC_FOUR_ISLAND
	opentext
	writetext Route55LoreleiText_Seen
	waitbutton
	closetext
	winlosstext Route55LoreleiWinText, 0
	setlasttalked ROUTE_55_LORELEI
	checkcm
	iffalse .LoadLorelei
	loadtrainer LORELEI1, LORELEI_1_CM
	lastmonmsg Route55LoreleiLastMonText
	sjump .StartBattle
.LoadLorelei
	loadtrainer LORELEI1, LORELEI_1
	lastmonmsg Route55LoreleiLastMonText
.StartBattle
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_FOUR_ISLAND
	opentext
	writetext Route55LoreleiText_YouWon
	waitbutton
	verbosegiveitem EXP_SHARE
	writetext Route55LoreleiExpShareText
	waitbutton
	closetext
	applymovement ROUTE_55_LORELEI, Route55LoreleiWalkAway
	disappear ROUTE_55_LORELEI
	setscene SCENE_ROUTE_55_NOOP
	special HealParty
	playmapmusic
	end
	
Route55LoreleiText_Seen:
	text "PRIMA: <PLAYER>?"
	line "Fancy seeing you"
	cont "here!"
	
	para "If you've made it"
	line "this far, you must"
	cont "have gotten your"
	cont "first BADGE!"
	
	para "Fufu…I think I'm"
	line "gonna need to try"
	cont "you out myself!"
	cont "Let's battle!"
	done
	
Route55LoreleiWinText:
	text "My! They grow up"
	line "so fast!"
	done
	
Route55LoreleiLastMonText:
	text "I'm shivering in"
	line "delight! Let's"
	cont "wrap this up!"
	done
	
Route55LoreleiText_YouWon:
	text "PRIMA: That was"
	line "fun! I think you"
	cont "are well on your"
	cont "way to beating"
	cont "the ORANGE CREW."
	
	para "Here's a gift,"
	line "I hope it helps!"
	done
	
Route55LoreleiExpShareText:
	text "PRIMA: That is the"
	line "EXP. SHARE!"
	
	para "Turn it on, and"
	line "all your #MON"
	cont "will all get EXP."
	cont "after battle."
	
	para "Oh, look at the"
	line "time! I better"
	cont "get going!"
	
	para "See you around,"
	line "<PLAYER>!"
	done
	
Route55LoreleiWalkUp:
	step UP
	step UP
	step UP
	step UP
	step_end
	
Route55LoreleiWalkAway:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
Route55AthleteZackScript:
	trainer ATHLETE, ZACK, EVENT_BEAT_ATHLETE_ZACK, Route55AthleteZackSeenText, Route55AthleteZackBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route55AthleteZackAfterText
	waitbutton
	closetext
	end
	
Route55AthleteZackSeenText:
	text "I wake up every"
	line "morning and run"
	cont "a lap around the"
	cont "island!"
	done

Route55AthleteZackBeatenText:
	text "A battle is the"
	line "best way to end a"
	cont "training session!"
	done

Route55AthleteZackAfterText:
	text "Phew! I'm beat."
	line "If only I had the"
	cont "endurance of a"
	cont "DODUO!"
	done
	
Route55YoungsterJosephScript:
	trainer YOUNGSTER, JOSEPH, EVENT_BEAT_YOUNGSTER_JOSEPH, Route55YoungsterJosephSeenText, Route55YoungsterJosephBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route55YoungsterJosephAfterText
	waitbutton
	closetext
	end
	
Route55YoungsterJosephSeenText:
	text "I'm feeling dizzy…"
	done

Route55YoungsterJosephBeatenText:
	text "Whoa… The world is"
	line "spinning!"
	done

Route55YoungsterJosephAfterText:
	text "Ugh… I was trying"
	line "to dance like my"
	cont "SPINDA."
	
	para "I think I'm gonna"
	line "barf…"
	done
	
Route55SwimmerFLaraScript:
	trainer SWIMMERF, LARA, EVENT_BEAT_SWIMMER_F_LARA, Route55SwimmerFLaraSeenText, Route55SwimmerFLaraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route55SwimmerFLaraAfterText
	waitbutton
	closetext
	end
	
Route55SwimmerFLaraSeenText:
	text "Ah! So cute!"
	done

Route55SwimmerFLaraBeatenText:
	text "How lovely!"
	done

Route55SwimmerFLaraAfterText:
	text "LUVDISC is just"
	line "the cutest, right?"
	done
	
Route55SwimmerFMinnieScript:
	trainer SWIMMERF, MINNIE, EVENT_BEAT_SWIMMER_F_MINNIE, Route55SwimmerFMinnieSeenText, Route55SwimmerFMinnieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route55SwimmerFMinnieAfterText
	waitbutton
	closetext
	end
	
Route55SwimmerFMinnieSeenText:
	text "Perfect timing!"
	
	para "You'll be just the"
	line "right prey for my"
	cont "FEEBAS to evolve!"
	done

Route55SwimmerFMinnieBeatenText:
	text "A beautiful loss!"
	done

Route55SwimmerFMinnieAfterText:
	text "I tried feeding my"
	line "FEEBAS some BLUE"
	cont "#BLOCKs to help"
	cont "it evolve."
	
	para "Maybe there's some"
	line "other way."
	done
	
Route55Sign:
	jumptext Route55SignText
	
Route55SignText:
	text "ROUTE 55"
	done
	
RangiIslandSign:
	jumptext RangiIslandSignText
	
RangiIslandSignText:
	text "RANGI ISLAND"
	
	para "The breeze on this"
	line "island is rather"
	cont "cold…"
	done
	
ZigsDigsSign:
	jumptext ZigsDigsSignText
	
ZigsDigsSignText:
	text "ZIG'S DIGS BAR"
	done
	
Route55HiddenStardust:
	hiddenitem STARDUST, EVENT_ROUTE_55_HIDDEN_STARDUST
	
Route55HiddenBeachGlass:
	hiddenitem BEACH_GLASS, EVENT_ROUTE_55_HIDDEN_BEACH_GLASS
	
Route55HiddenIceStone:
	hiddenitem ICE_STONE, EVENT_ROUTE_55_HIDDEN_ICE_STONE

Route55DigSpot:
	digspot CANDYTRUFFLE, EVENT_ROUTE_55_DIG_SPOT_CANDY_TRUFFLE

Route55_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  5, CRYSTAL_CAVE_GATE, 3
	warp_event 15, 47, ROUTE_55_MANIACS_HOUSE, 1

	def_coord_events
	coord_event 14,  7, SCENE_ROUTE_55_LOELEI_BATTLE, Route55LoreleiSceneLeft
	coord_event 15,  7, SCENE_ROUTE_55_LOELEI_BATTLE, Route55LoreleiSceneRight

	def_bg_events
	bg_event 17, 13, BGEVENT_READ, Route55Sign
	bg_event 47, 11, BGEVENT_READ, RangiIslandSign
	bg_event 13, 47, BGEVENT_READ, ZigsDigsSign
	bg_event  6, 16, BGEVENT_ITEM, Route55HiddenStardust
	bg_event 27, 39, BGEVENT_ITEM, Route55HiddenBeachGlass
	bg_event 45, 10, BGEVENT_ITEM, Route55HiddenIceStone
	bg_event 36, 50, BGEVENT_DIG_SPOT, Route55DigSpot

	def_object_events
	object_event 25, 53, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route55SuperPotion, EVENT_ROUTE_55_SUPER_POTION
	object_event 46, 46, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route55SoftSand, EVENT_ROUTE_55_SOFT_SAND
	object_event 34, 46, SPRITE_BERRY_Y_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route55FruitTree, -1
	object_event 10, 52, SPRITE_BERRY_J_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route55FruitTree2, -1
	object_event 22, 47, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 2, Route55AthleteZackScript, -1
	object_event 35, 40, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, Route55YoungsterJosephScript, -1
	object_event 17, 24, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, Route55SwimmerFLaraScript, -1
	object_event 19, 33, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, Route55SwimmerFMinnieScript, -1
	object_event 10, 28, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route55PrettyShell, EVENT_ROUTE_55_PRETTY_SHELL
	object_event 13, 44, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route55UltraBall, EVENT_ROUTE_55_ULTRA_BALL
	object_event 25, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_ITEMBALL, 0, Route55TMBrickBreak, EVENT_TM_31_BRICK_BREAK
	object_event  2,  2, SPRITE_LORELEI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, ObjectEvent, EVENT_BATTLE_ROUTE_55_LORELEI

	object_const_def
	const ROUTE_49_GATE_GUARDIAN
	const ROUTE_49_LORELEI
	const ROUTE_49_POTION
	const ROUTE_49_FRESH_WATER
	const ROUTE_49_SWOOPING_WINGULL

Route49_MapScripts:
	def_scene_scripts
	scene_script Route49StarterCheckScene, SCENE_ROUTE_49_NO_POKEMON
	scene_script Route49AuntPrimaScene, SCENE_ROUTE_49_AUNT_PRIMA
	scene_script Route49NoopScene,         SCENE_ROUTE_49_NOOP

	def_callbacks
	
Route49StarterCheckScene:
	end
	
Route49AuntPrimaScene:
	end
	
Route49NoopScene:
	end
	
Route49YouDontHaveMon1:
	turnobject ROUTE_49_GATE_GUARDIAN, RIGHT
	showemote EMOTE_SHOCK, ROUTE_49_GATE_GUARDIAN, 15
	applymovement ROUTE_49_GATE_GUARDIAN, Route49NoPokeMovement1
	opentext
	writetext ValenciaCooltrainerText
	waitbutton
	closetext
	applymovement PLAYER, Route49NoPokeMovement1
	applymovement ROUTE_49_GATE_GUARDIAN, Route49NoPokeMovement2
	end
	
Route49YouDontHaveMon2:
	turnobject ROUTE_49_GATE_GUARDIAN, RIGHT
	showemote EMOTE_SHOCK, ROUTE_49_GATE_GUARDIAN, 15
	applymovement ROUTE_49_GATE_GUARDIAN, Route49NoPokeMovement3
	opentext
	writetext ValenciaCooltrainerText
	waitbutton
	closetext
	applymovement PLAYER, Route49NoPokeMovement1
	applymovement ROUTE_49_GATE_GUARDIAN, Route49NoPokeMovement4
	end
	
Route49Lorelei:
	turnobject ROUTE_49_LORELEI, DOWN
	showemote EMOTE_SHOCK, ROUTE_49_LORELEI, 15
	playmusic MUSIC_FOUR_ISLAND
	applymovement ROUTE_49_LORELEI, Route49LoreleiMovement1
	opentext
	writetext Route49LoreleiText1
	promptbutton
	getitemname STRING_BUFFER_4, POKE_BALL
	scall Route49Lorelei_ReceiveTheBalls
	giveitem POKE_BALL, 5
	writetext Route49LoreleiText2
	promptbutton
	itemnotify
	writetext Route49LoreleiText3
	yesorno
	iffalse .Continue
	writetext Route49LoreleiText4
	waitbutton
	applymovement ROUTE_49_LORELEI, Route49LoreleiMovement3
	loadwildmon BELLSPROUT, 5
	catchtutorial BATTLETYPE_TUTORIAL
	playmusic MUSIC_FOUR_ISLAND
	applymovement ROUTE_49_LORELEI, Route49LoreleiMovement4
	opentext
	writetext Route49LoreleiText5
	waitbutton
.Continue
	writetext Route49LoreleiText6
	waitbutton
	closetext
	setscene SCENE_ROUTE_49_NOOP
	setmapscene TANGELO_ISLAND, SCENE_TANGELO_ISLAND_MARILL_1
	applymovement ROUTE_49_LORELEI, Route49LoreleiMovement2
	disappear ROUTE_49_LORELEI
	setevent EVENT_PASSED_LORELEI_R49
	special RestartMapMusic
	end
	
Route49Lorelei_ReceiveTheBalls:
	jumpstd ReceiveItemScript
	end
	

ValenciaCooltrainerScript:
	faceplayer
	opentext
	writetext ValenciaCooltrainerText2
	waitbutton
	closetext
	end
	
ValenciaCooltrainerText:
	text "Ah, <PLAYER>!"
	line "It's dangerous to"
	cont "go out without a"
	cont "#MON!"

	para "Aren't you meeting"
	line "PROF. IVY to get"
	cont "get your first"
	cont "#MON?"
	
	para "Her lab is on"
	line "BAYVIEW ROAD."
	done
	
ValenciaCooltrainerText2:
	text "Hey, <PLAYER>!"
	line "Good luck out"
	cont "there, bud!"
	done
	
Route49LoreleiText1:
	text "???: Hold it!"
	
	para "<PLAYER>, is that"
	line "you?"
	
	para "Well, I suppose it"
	line "has been a few"
	cont "years since you've"
	cont "seen me."
	
	para "It's me, your AUNT"
	line "PRIMA!"
	cont "I was on my way to"
	cont "pay your MOM a"
	cont "visit."
	
	para "But you…"
	line "Are you going out"
	cont "on a journey?!"

	para "Oh, what to do…"
	line "I had a gift for"
	cont "you prepared…"
	
	para "I know! Here, take"
	line "these!"
	done
	
Route49LoreleiText2:
	text "PRIMA: Eheh…"
	line "#BALLS!"
	para "You throw them at"
	line "Wild #MON to"
	cont "capture them."
	done
	
Route49LoreleiText3:
	text "PRIMA: So, do you"
	line "need a brush up on"
	cont "how to catch"
	cont "#MON?"
	done
	
Route49LoreleiText4:
	text "Okay…"
	line "First, you need to"
	cont "walk in tall grass"
	cont "to encounter wild"
	cont "#MON!"
	done

Route49LoreleiText5:
	text "PRIMA: And that's"
	line "how it's done!"
	cont "Hope that helps!"
	done

Route49LoreleiText6:
	text "Anyway, I should"
	line "get going. Here,"
	cont "let me see your"
	cont "#PAGE so I can"
	cont "send you messages!"
	
	para "… … …"
	
	para "Ok! I'll see you"
	line "later!"
	done
	
Route49NoPokeMovement1:
	step RIGHT
	step RIGHT
	step_end

Route49NoPokeMovement2:
	step LEFT
	step LEFT
	step_end

Route49NoPokeMovement3:
	step DOWN
	step RIGHT
	step RIGHT
	step_end

Route49NoPokeMovement4:
	step UP
	step LEFT
	step LEFT
	step_end
	
Route49LoreleiMovement1:
	step DOWN
	step DOWN
	step_end
	
Route49LoreleiMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	jump_step RIGHT
	step_end
	
Route49LoreleiMovement3:
	step UP
	step_end
	
Route49LoreleiMovement4:
	step DOWN
	step_end
	
TrainerTipsRoute49Sign:
	jumptext TrainerTipsRoute49SignText
	
TrainerTipsRoute49SignText:
	text "TRAINER TIPS!"
	line "There are ITEMS on"
	cont "the ground!"
	
	para "Some can be seen"
	line "easily, but others"
	cont "are near invisible"
	cont "or completely!"
	
	para "An ITEMFINDER can"
	line "remedy this issue!"
	done
	
Route49Sign:
	jumptext Route49SignText

Route49SignText:
	text "ROUTE 49"
	done
	
Route49HiddenPotion:
	hiddenitem POTION, EVENT_ROUTE_49_HIDDEN_POTION
	
Route49HiddenStarPiece:
	hiddenitem STAR_PIECE, EVENT_ROUTE_49_HIDDEN_STAR_PIECE
	
Route49Potion:
	itemball POTION

Route49FreshWater:
	itemball FRESH_WATER
	
Route49Swoop:
	jumpstd MonSkyScript
	
Route49Depths:
	jumpstd MonDepthsScript

Route49_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event 36, 12, SCENE_ROUTE_49_NO_POKEMON, Route49YouDontHaveMon1
	coord_event 36, 13, SCENE_ROUTE_49_NO_POKEMON, Route49YouDontHaveMon2
	coord_event 20, 17, SCENE_ROUTE_49_AUNT_PRIMA, Route49Lorelei

	def_bg_events
	bg_event 31, 11, BGEVENT_READ, Route49Sign
	bg_event 23, 15, BGEVENT_READ, TrainerTipsRoute49Sign
	bg_event 18,  6, BGEVENT_ITEM, Route49HiddenPotion
	bg_event  4, 30, BGEVENT_ITEM, Route49HiddenStarPiece

	def_object_events
	object_event 33, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ValenciaCooltrainerScript, -1
	object_event 20, 14, SPRITE_LORELEI, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PASSED_LORELEI_R49
	object_event  5, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route49Potion, EVENT_ROUTE_49_POTION
	object_event 25, 24, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route49FreshWater, EVENT_ROUTE_49_FRESHWATER
	object_event  7,  8, SPRITE_SHADOW, SPRITEMOVEDATA_WANDER, 5, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49Swoop, -1
	object_event 30, 34, SPRITE_SHADOW, SPRITEMOVEDATA_SWIM_WANDER, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route49Depths, -1

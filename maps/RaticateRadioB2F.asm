	object_const_def
	const RATICATE_RADIO_B2F_BUTCH
	const RATICATE_RADIO_B2F_CASSIDY
	const RATICATE_RADIO_B2F_LOOKER
	const RATICATE_RADIO_B2F_GROWLITHE
	const RATICATE_RADIO_B2F_POLIWAG
	const RATICATE_RADIO_B2F_GRIMER
	const RATICATE_RADIO_B2F_DROWZEE
	const RATICATE_RADIO_B2F_YELLOW

RaticateRadioB2F_MapScripts:
	def_scene_scripts
	scene_script RaticateRadioB2FDrowzeeScene, SCENE_RATICATE_RADIO_B2F_DROWZEE_EVENT
	scene_script RaticateRadioB2FNoopScene,         SCENE_RATICATE_RADIO_B2F_NOOP

	def_callbacks
	
RaticateRadioB2FDrowzeeScene:
	end
	
RaticateRadioB2FNoopScene:
	end

RaticateRadioB2FHiddenBlackglasses:
	hiddenitem BLACKGLASSES, EVENT_RATICATE_RADIO_B2F_HIDDEN_BLACKGLASSES
	
RaticateRadioB2FDrowzeeScript:
	turnobject PLAYER, UP
	opentext
	writetext RaticateRadioB2FLookerText1
	waitbutton
	closetext
	special FadeOutMusic
	pause 20
	playsound SFX_TACKLE
	earthquake 30
	showemote EMOTE_QUESTION, RATICATE_RADIO_B2F_CASSIDY, 15
	turnobject RATICATE_RADIO_B2F_CASSIDY, RIGHT
	playsound SFX_TACKLE
	earthquake 30
	showemote EMOTE_QUESTION, RATICATE_RADIO_B2F_BUTCH, 15
	turnobject RATICATE_RADIO_B2F_BUTCH, RIGHT
	opentext
	writetext RaticateRadioB2FLookerText2
	waitbutton
	closetext
	playsound SFX_TACKLE
	earthquake 30
	turnobject PLAYER, RIGHT
	turnobject RATICATE_RADIO_B2F_LOOKER, RIGHT
	playmusic MUSIC_CLAIR
	opentext
	writetext RaticateRadioB2FYellowText
	waitbutton
	closetext
	applymovement RATICATE_RADIO_B2F_YELLOW, RaticateRadioB2FYellowMovement
	opentext
	writetext RaticateRadioB2FYellowText2
	waitbutton
	closetext
	turnobject RATICATE_RADIO_B2F_LOOKER, LEFT
	opentext
	writetext RaticateRadioB2FLookerText3
	waitbutton
	closetext
	turnobject RATICATE_RADIO_B2F_BUTCH, DOWN
	turnobject RATICATE_RADIO_B2F_CASSIDY, DOWN
	applymovement PLAYER, RaticateRadioB2FPlayerMovement1
	applymovement RATICATE_RADIO_B2F_LOOKER, RaticateRadioB2FLookerMovement1
	turnobject RATICATE_RADIO_B2F_LOOKER, DOWN
	pause 10
	turnobject RATICATE_RADIO_B2F_BUTCH, RIGHT
	turnobject RATICATE_RADIO_B2F_CASSIDY, LEFT
	opentext
	writetext RaticateRadioB2FButchCassidyText
	waitbutton
	closetext
	winlosstext RaticateRadioB2FButchCassidyWinText, 0
	setlasttalked RATICATE_RADIO_B2F_DROWZEE
	loadtrainer BUTCHCASSIDY, BUTCH_CASSIDY_1
	startbattle
	reloadmapafterbattle
	playmusic MUSIC_CLAIR
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear RATICATE_RADIO_B2F_BUTCH
	disappear RATICATE_RADIO_B2F_CASSIDY
	disappear RATICATE_RADIO_B2F_DROWZEE
	pause 15
	special FadeInFromBlack
	turnobject RATICATE_RADIO_B2F_LOOKER, UP
	turnobject PLAYER, DOWN
	opentext
	writetext RaticateRadioB2FLookerText4
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear RATICATE_RADIO_B2F_LOOKER
	disappear RATICATE_RADIO_B2F_GROWLITHE
	disappear RATICATE_RADIO_B2F_POLIWAG
	disappear RATICATE_RADIO_B2F_GRIMER
	pause 15
	special FadeInFromBlack
	turnobject PLAYER, RIGHT
	applymovement RATICATE_RADIO_B2F_YELLOW, RaticateRadioB2FYellowMovement2
	opentext
	writetext RaticateRadioB2FYellowText3
	waitbutton
	getstring STRING_BUFFER_4, ProtogearName
	scall RaticateRadioB2FReceiveItemStd
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	writetext YellowGivesPokegearText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear RATICATE_RADIO_B2F_YELLOW
	setmapscene MANDARIN_NORTH, SCENE_MANDARIN_NORTH_CROSS
	clearevent EVENT_MANDARIN_NORTH_CLEARED_RADIO_TOWER
	setevent EVENT_RATICATE_RADIO_VACATED
	setevent EVENT_RATICATE_RADIO_B2F_YELLOW
	setevent EVENT_RATICATE_RADIO_B2F_DROWZEE
	setscene SCENE_RATICATE_RADIO_B2F_NOOP
	pause 15
	special FadeInFromBlack
	special RestartMapMusic
	disappear RATICATE_RADIO_B2F_YELLOW
	end

RaticateRadioB2FLookerText1:
	text "LOOKER: What is"
	line "this?!"
	
	para "BUTCH: It's our"
	line "special invention."
	cont "This apparatus can"
	cont "amplify DROWZEE's"
	cont "hypnotic abilities"
	cont "to make #MON do"
	cont "our bidding!"
	
	para "Send out your"
	line "#MON, I dare"
	cont "you!"
	
	para "LOOKER: Curses!"
	done
	
RaticateRadioB2FLookerText2:
	text "CASSIDY: What is"
	line "that?!"
	
	para "LOOKER: It would"
	line "seem, my partner"
	cont "has arrived!"
	
	para "BUTCH: WHAT?!"
	done
	
RaticateRadioB2FYellowText:
	text "???: It's my time"
	line "to shine!"
	
	para "LOOKER: You're"
	line "late, <№>.1000!"
	done
	
RaticateRadioB2FYellowText2:
	text "CASSIDY: Get her,"
	line "GROWLITHE!"
	
	para "… … …"
	
	para "… … …"
	
	para "CASSIDY: Why isn't"
	line "it listening?"
	
	para "<№>.1000: I have a"
	line "way with #MON!"
	
	para "BUTCH: You can't"
	line "be serious…"
	done
	
RaticateRadioB2FLookerText3:
	text "LOOKER: <№>.<CODE>!"
	line "Now's your chance!"
	cont "Take out DROWZEE!"
	cont "I'll hold the other"
	cont "#MON back!"
	done
	
RaticateRadioB2FButchCassidyText:
	text "BUTCH: DROWZEE,"
	line "you're up!"
	done
	
RaticateRadioB2FLookerText4:
	text "LOOKER: Great job,"
	line "<№>.<CODE>!"
	
	para "It is unfortunate"
	line "that they got"
	cont "away…"
	
	para "Nevertheless! The"
	line "#MON are saved"
	cont "from the clutches"
	cont "of TEAM ROCKET!"
	
	para "I'm going to go"
	line "ahead and take"
	cont "the #MON out of"
	cont "here."
	
	para "For your help,"
	line "I thank you,"
	cont "<№>.<CODE>."
	
	para "Until the next"
	line "time we meet!"
	done

RaticateRadioB2FYellowMovement:
	step LEFT
	step LEFT
	step_end

RaticateRadioB2FYellowMovement2:
	step LEFT
	step LEFT
	step LEFT
	step_end

RaticateRadioB2FPlayerMovement1:
	step UP
	step UP
	step_end

RaticateRadioB2FLookerMovement1:
	step LEFT
	step UP
	step_end
	
RaticateRadioB2FButchCassidyWinText:
	text "This won't be the"
	line "the last time you"
	cont "hear of us!"
	
	para "SMOKE BALL!"
	done
	
RaticateRadioB2FYellowText3:
	text "<№>.1000: Hmph!"
	line "He didn't even"
	cont "introduce us!"
	
	para "YELLOW: My name is"
	line "YELLOW."
	
	para "I don't go by my"
	line "codename."
	
	para "You a new hire?"
	line "You look a little"
	cont "young…"
	
	para "LOOKER called you"
	line "<№>.<CODE>."
	
	para "What's your real"
	line "name?"
	
	para "… … …"
	
	para "YELLOW: So you're"
	line "<PLAYER>!"
	
	para "It's nice to make"
	line "new friends."
	
	para "Well, you never"
	line "know when TEAM"
	cont "ROCKET is gonna"
	cont "show up! Take this"
	cont "so you can keep"
	cont "contact with us."
	done
	

YellowGivesPokegearText:
	text "#MON GEAR, or"
	line "#GEAR. It's a"
	cont "prototype made by"
	cont "SILPH CO. It's a"
	cont "mobile phone!"
	
	para "Our LEADER's number"
	line "is already added."
	cont "He'll call you if"
	cont "something happens."
	
	para "I should go now,"
	line "or LOOKER's gonna"
	cont "get mad at me!"
	
	para "Bye!"
	done

ProtogearName:
	db "#GEAR@"
	
RaticateRadioB2FReceiveItemStd:
	jumpstd ReceiveItemScript
	end

RaticateRadioB2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 13, RATICATE_RADIO_B1F, 12
	warp_event  0,  5, RATICATE_RADIO_B1F, 2

	def_coord_events
	coord_event  6,  6, SCENE_RATICATE_RADIO_B2F_DROWZEE_EVENT, RaticateRadioB2FDrowzeeScript

	def_bg_events
	bg_event 13,  5, BGEVENT_ITEM, RaticateRadioB2FHiddenBlackglasses

	def_object_events
	object_event  5,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RATICATE_RADIO_B2F_DROWZEE ; Butch
	object_event  7,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RATICATE_RADIO_B2F_DROWZEE ; Cassidy
	object_event  7,  6, SPRITE_LOOKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RATICATE_RADIO_VACATED ; Looker
	object_event  9,  4, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RATICATE_RADIO_VACATED
	object_event  8,  5, SPRITE_VOLTORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RATICATE_RADIO_VACATED
	object_event  4,  5, SPRITE_GRIMER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RATICATE_RADIO_VACATED
	object_event  6,  2, SPRITE_DROWZEE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_TREE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RATICATE_RADIO_B2F_DROWZEE
	object_event 12,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RATICATE_RADIO_B2F_YELLOW
	
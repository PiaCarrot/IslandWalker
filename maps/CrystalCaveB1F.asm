	object_const_def
	const CRYSTAL_CAVE_B1F_BROCK
	const CRYSTAL_CAVE_B1F_MATEO
	const CRYSTAL_CAVE_B1F_INDIGO
	const CRYSTAL_CAVE_B1F_ORANGE
	const CRYSTAL_CAVE_B1F_CRYSTAL_ONIX

CrystalCaveB1F_MapScripts:
	def_scene_scripts
	scene_script CrystalCaveB1FCrystalOnixScene, SCENE_CRYSTAL_CAVE_B1F_CRYSTAL_ONIX_EVENT
	scene_script CrystalCaveB1FNoopScene, SCENE_CRYSTAL_CAVE_B1F_NOOP

	def_callbacks

CrystalCaveB1FCrystalOnixScene:
	end
	
CrystalCaveB1FNoopScene:
	end

CrystalCaveB1FCrystalOnixAppearsScript:
	turnobject PLAYER, UP
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .ShowGirlPlaceholder
	moveobject CRYSTAL_CAVE_B1F_INDIGO, 18, 24
	appear CRYSTAL_CAVE_B1F_INDIGO
	sjump .HidePlayer
.ShowGirlPlaceholder
	moveobject CRYSTAL_CAVE_B1F_ORANGE, 18, 24
	appear CRYSTAL_CAVE_B1F_ORANGE
.HidePlayer
	applymovement PLAYER, CrystalCaveB1FHideObjectMovement
	applymovement PLAYER, CrystalCaveB1FCameraPanUp
	opentext
	writetext CrystalCaveB1FCrystalOnixEventText1
	waitbutton
	closetext
	applymovement PLAYER, CrystalCaveB1FCameraPanDown
	turnobject CRYSTAL_CAVE_B1F_BROCK, LEFT
	opentext
	writetext CrystalCaveB1FCrystalOnixEventText2
	waitbutton
	closetext
	turnobject CRYSTAL_CAVE_B1F_MATEO, RIGHT
	opentext
	writetext CrystalCaveB1FCrystalOnixEventText3
	closetext
	special FadeOutMusic
	playsound SFX_STRENGTH
	earthquake 84
	showemote EMOTE_SHOCK, CRYSTAL_CAVE_B1F_MATEO, 15
	showemote EMOTE_SHOCK, CRYSTAL_CAVE_B1F_BROCK, 15
	turnobject CRYSTAL_CAVE_B1F_BROCK, UP
	turnobject CRYSTAL_CAVE_B1F_MATEO, UP
	playsound SFX_STRENGTH
	earthquake 84
	applymovement PLAYER, CrystalCaveB1FCameraPanUp
	special FadeOutToWhite
	appear CRYSTAL_CAVE_B1F_CRYSTAL_ONIX
	special LoadMapPalettes
	cry ONIX
	waitsfx
	special FadeInPalettes_EnableDynNoApply
	special RestartMapMusic
	clearevent EVENT_CRYSTAL_ONIX_ENCOUNTER
	applymovement PLAYER, CrystalCaveB1FCameraPanDown
	opentext
	writetext CrystalCaveB1FCrystalOnixEventText4
	waitbutton
	closetext
	applymovement PLAYER, CrystalCaveB1FShowObjectMovement
	disappear CRYSTAL_CAVE_B1F_ORANGE
	disappear CRYSTAL_CAVE_B1F_INDIGO
	turnobject CRYSTAL_CAVE_B1F_BROCK, DOWN
	opentext
	writetext CrystalCaveB1FCrystalOnixEventText5
	waitbutton
	closetext
	turnobject CRYSTAL_CAVE_B1F_BROCK, UP
	setscene SCENE_CRYSTAL_CAVE_B1F_NOOP
	setevent EVENT_CRYSTAL_CAVE_B1F_SCENE2
	end
	
CrystalCaveB1FCrystalOnixEventText1:
	text "BROCK: We can't go"
	line "any further. I'm"
	cont "sorry, MATEO."
	
	para "MATEO: … … …"
	
	para "BROCK: Let's get"
	line "back to the work-"
	cont "shop…"
	done
	
CrystalCaveB1FCrystalOnixEventText2:
	text "BROCK: Hasn't it"
	line "been inspiring to"
	cont "see… Well, this?"
	
	para "MATEO: My grandpa"
	line "wasn't a liar, MR."
	cont "BROCK."
	done

CrystalCaveB1FCrystalOnixEventText3:
	text "BROCK: I was not"
	line "saying that."
	
	para "MATEO: I know th-"
	done
	
CrystalCaveB1FCrystalOnixEventText4:
	text "BROCK: It's real!"
	
	para "MATEO: I… Grandpa…"
	done
	
CrystalCaveB1FCrystalOnixEventText5:
	text "BROCK: A deal's a"
	line "deal! Let's battle"
	cont "for the right to"
	cont "face the CRYSTAL"
	cont "ONIX. Let me know"
	cont "when you're ready!"
	done

CrystalCaveB1FShowObjectMovement:
	show_object
	step_end

CrystalCaveB1FHideObjectMovement:
	hide_object
	step_end
	
CrystalCaveB1FCameraPanUp:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
CrystalCaveB1FCameraPanDown:
	step_sleep 100
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end
	
CrystalCaveB1FMateoScript:
	jumptext CrystalCaveB1FMateoText
	
CrystalCaveB1FMateoText:
	text "MATEO: I… Grandpa…"
	done
	
CrystalCaveB1FBrockScript:
	faceplayer
	opentext
	checkevent EVENT_CRYSTAL_CAVE_BROCK_DEFEATED
	iftrue .AlreadyFoughtTheBrock
	writetext CrystalCaveB1FBrockText1
	waitbutton
	closetext	
	winlosstext CrystalCaveB1FBrockWinText, 0
	setlasttalked CRYSTAL_CAVE_B1F_BROCK
	loadtrainer BROCK, BROCK1
	startbattle
	reloadmapafterbattle
	special RestartMapMusic
	opentext
	writetext CrystalCaveB1FBrockText2
	waitbutton
	closetext
	applymovement PLAYER, CrystalCaveB1FPlayerMovement
	applymovement CRYSTAL_CAVE_B1F_BROCK, CrystalCaveB1FBrockMovement
	turnobject CRYSTAL_CAVE_B1F_BROCK, LEFT
	setevent EVENT_CRYSTAL_CAVE_BROCK_DEFEATED
	end
.AlreadyFoughtTheBrock
	writetext CrystalCaveB1FBrockText2
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal UP, .BrockSoftLockPreventer
	end
	
.BrockSoftLockPreventer
	applymovement PLAYER, CrystalCaveB1FPlayerMovement
	applymovement CRYSTAL_CAVE_B1F_BROCK, CrystalCaveB1FBrockMovement
	end
	
	
CrystalCaveB1FBrockText1:
	text "BROCK: By the way,"
	line "I never got your"
	cont "name."
	
	para "… … …"
	
	para "BROCK: <PLAYER>?"
	line "Okay. You've got"
	cont "one GYM BADGE, is"
	cont "that right?"
	
	para "Fwa! I guess this"
	line "isn't a GYM BATTLE!"
	cont "I can't help myself"
	cont "sometimes."
	
	para "These guys should"
	line "be a fair fight."
	
	para "Show me how rock-"
	line "solid your resolve"
	cont "is, <PLAYER>!"
	done
	
CrystalCaveB1FBrockWinText:
	text "BROCK: It seems I"
	line "underestimated"
	cont "you, <PLAYER>!"
	done
	
CrystalCaveB1FBrockText2:
	text "That was hard-"
	line "fought, <PLAYER>."

	para "You've earned the"
	line "right to face the"
	cont "CRYSTAL ONIX."

	para "I won't forget your"
	line "name, now that we"
	cont "have battled!"
	done
	
CrystalCaveB1FPlayerMovement:
	step LEFT
	turn_head RIGHT
	step_end
	
CrystalCaveB1FBrockMovement:
	step DOWN
	step RIGHT
	step_end
	
CrystalCaveB1FCrystalOnixScript:
	opentext
	writetext CrystalCaveB1FCrystalOnixText
	waitbutton
	closetext
	cry ONIX
	loadwildmon ONIX, 20
	startbattle
	disappear CRYSTAL_CAVE_B1F_CRYSTAL_ONIX
	setevent EVENT_CRYSTAL_ONIX_ENCOUNTER
	reloadmapafterbattle
	warp CRYSTAL_CAVE_B1F, 19, 23
	turnobject CRYSTAL_CAVE_B1F_BROCK, DOWN
	turnobject CRYSTAL_CAVE_B1F_MATEO, DOWN
	turnobject PLAYER, UP
	opentext
	writetext CrystalCaveB1FCrystalOnixText2
	waitbutton
	closetext
	turnobject CRYSTAL_CAVE_B1F_MATEO, RIGHT
	opentext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .MateoMsDialogue
	writetext CrystalCaveB1FCrystalOnixText3
	sjump .Continue
.MateoMsDialogue
	writetext CrystalCaveB1FCrystalOnixText3a
.Continue	
	waitbutton
	closetext
	showemote EMOTE_NERVOUS, CRYSTAL_CAVE_B1F_MATEO, 15
	follow CRYSTAL_CAVE_B1F_MATEO, CRYSTAL_CAVE_B1F_BROCK
	applymovement CRYSTAL_CAVE_B1F_MATEO, CrystalCaveB1FMateoMovement
	disappear CRYSTAL_CAVE_B1F_MATEO
	disappear CRYSTAL_CAVE_B1F_BROCK
	setevent EVENT_CRYSTAL_CAVE_B1F_SCENE
	clearevent EVENT_MATEOS_PASSION_RESTORED
	end
	
CrystalCaveB1FCrystalOnixText:
	text "CRYSTAL ONIX: Raa!"
	done
	
CrystalCaveB1FCrystalOnixText2:
	text "BROCK: Great work!"
	line "It was certainly a"
	cont "pleasure to meet"
	cont "you two. It's about"
	cont "time I get going!"
	done
	
CrystalCaveB1FCrystalOnixText3:
	text "MATEO: MR. BROCK,"
	line "and MR. <PLAYER>!"
	cont "Thank you…"
	
	para "I can finally"
	line "understand how my"
	cont "Grandpa's sculpts"
	cont "were full of life."
	
	para "BROCK: Fwahaha!"
	line "I'll escort you to"
	cont "your workshop, MR."
	cont "MATEO."
	done

CrystalCaveB1FCrystalOnixText3a:
	text "MATEO: MR. BROCK,"
	line "and MS. <PLAYER>!"
	cont "Thank you…"
	
	para "I can finally"
	line "understand how my"
	cont "Grandpa's sculpts"
	cont "were full of life."
	
	para "BROCK: Fwahaha!"
	line "I'll escort you to"
	cont "your workshop, MR."
	cont "MATEO."
	done
	
CrystalCaveB1FMateoMovement:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

	
CrystalCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 15, CRYSTAL_CAVE_1F, 2

	def_coord_events
	coord_event 18, 24, SCENE_CRYSTAL_CAVE_B1F_CRYSTAL_ONIX_EVENT, CrystalCaveB1FCrystalOnixAppearsScript

	def_bg_events

	def_object_events
	object_event 19, 22, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CrystalCaveB1FBrockScript, EVENT_CRYSTAL_CAVE_B1F_SCENE
	object_event 18, 22, SPRITE_MATEO, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, CrystalCaveB1FMateoScript, EVENT_CRYSTAL_CAVE_B1F_SCENE
	object_event  0,  0, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, CrystalCaveB1FMateoScript, EVENT_CRYSTAL_CAVE_B1F_SCENE2
	object_event  0,  0, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, CrystalCaveB1FMateoScript, EVENT_CRYSTAL_CAVE_B1F_SCENE2
	object_event 18, 16, SPRITE_BIG_ONIX, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, PAL_NPC_COPY_BG_GREEN, OBJECTTYPE_SCRIPT, 0, CrystalCaveB1FCrystalOnixScript, EVENT_CRYSTAL_ONIX_ENCOUNTER

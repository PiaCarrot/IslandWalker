	object_const_def
	const MANDARIN_NORTH_LOOKER
	const MANDARIN_NORTH_COOLTRAINER
	const MANDARIN_NORTH_GRANNY
	const MANDARIN_NORTH_CROSS
	const MANDARIN_NORTH_TEACHER
	const MANDARIN_NORTH_POKEFAN

MandarinNorth_MapScripts:
	def_scene_scripts
	scene_script MandarinNorthLookerScene, SCENE_MANDARIN_NORTH_LOOKER
	scene_script MandarinNorthNoopScene,         SCENE_MANDARIN_NORTH_NOOP
	scene_script MandarinNorthCrossScene,         SCENE_MANDARIN_NORTH_CROSS
	scene_script MandarinNorthZoruaScene,         SCENE_MANDARIN_NORTH_ZORUA

	def_callbacks
	callback MAPCALLBACK_NEWMAP, MandarinNorthFlypointCallback
	callback MAPCALLBACK_TILES, MandarinNorthCutTreeCallback
	
MandarinNorthCutTreeCallback:
	checkevent EVENT_MANDARIN_NORTH_OLD_LADY_HELPED
	iffalse .Done
	changeblock 8, 24, $3F
.Done:
	endcallback

MandarinNorthFlypointCallback:
	setflag ENGINE_FLYPOINT_MANDARIN_NORTH
	endcallback
	
MandarinNorthLookerScene:
	end
	
MandarinNorthNoopScene:
	end
	
MandarinNorthCrossScene:
	end
	
MandarinNorthZoruaScene:
	end
	
MandarinNorthLookerScript:
	showemote EMOTE_QUESTION, PLAYER, 15
	readvar VAR_YCOORD
	ifequal 11, .Walk2
	applymovement PLAYER, MikanNorthPlayerMovement
	sjump .ContinueScript
.Walk2:
	applymovement PLAYER, MikanNorthPlayerMovement2
.ContinueScript:
	pause 15
	applymovement MANDARIN_NORTH_LOOKER, MandarinNorthLookerMovement1
	showemote EMOTE_NERVOUS, MANDARIN_NORTH_LOOKER, 15
	opentext
	writetext MandarinNorthLookerText1
	waitbutton
	closetext
	pause 20
	turnobject MANDARIN_NORTH_LOOKER, DOWN
	playmusic MUSIC_LOOKER
	opentext
	writetext MandarinNorthLookerText2
	waitbutton
	closetext
	applymovement MANDARIN_NORTH_LOOKER, MandarinNorthLookerMovement2
	turnobject PLAYER, LEFT
	opentext
	writetext MandarinNorthLookerText3
	waitbutton
	closetext
	special FadeOutMusic
	applymovement MANDARIN_NORTH_LOOKER, MandarinNorthLookerMovement3
	disappear MANDARIN_NORTH_LOOKER
	playsound SFX_ENTER_DOOR
	waitsfx
	setscene SCENE_MANDARIN_NORTH_NOOP
	setevent EVENT_MANDARIN_NORTH_MET_LOOKER
	special RestartMapMusic
	end
	
MikanNorthPlayerMovement:
	step LEFT
	step LEFT
	turn_head UP
	step_end

MikanNorthPlayerMovement2:
	step LEFT
	step LEFT
	step UP
	step_end
	
MandarinNorthLookerMovement1:
	turn_head LEFT
	step_sleep 12
	turn_head RIGHT
	step_sleep 12
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_sleep 24
	step_end
	
MandarinNorthLookerMovement2:
	step DOWN
	step DOWN
	step RIGHT
	step_end

MandarinNorthLookerMovement3:
	step UP
	step UP
	step UP
	step_end
	
MandarinNorthLookerText1:
	text "???: No. 000…"
	line "It appears, I have"
	cont "been noticed…"
	
	para "… … …"
	
	para "???: Are they from"
	line "TEAM ROCKET, you"
	cont "ask?"
	
	para "To answer that, is"
	line "to say… Likely not"
	cont "the case…"
	
	para "… … …"
	
	para "???: Understood."
	done
	
MandarinNorthLookerText2:
	text "???: Salutations!"
	done
	
MandarinNorthLookerText3:
	text "???: Aha, a keen"
	line "eye, you have! You"
	cont "must be skilled to"
	cont "notice myself, an"
	cont "INTERNATIONAL"
	cont "POLICEMAN!"
	
	para "???: My name? Well"
	line "its-"
	
	para "… … …"
	
	para "LOOKER! That is"
	line "what I am called."
	cont "It is a codename."
	
	para "LOOKER: Tell me,"
	line "does the letter"
	cont "'R' tickle your"
	cont "conscience in the"
	cont "slightest? That's"
	cont "right, I'm in"
	cont "search of the"
	cont "mobsters known as"
	cont "“TEAM ROCKET”!"

	para "The trail leads me"
	line "to, well, here."
	cont "Don't get yourself"
	cont "caught up in this,"
	cont "trainer, leave it"
	cont "to us adults!"
	done
	
MandarinNorthCooltrainerScript:
	checkevent EVENT_MANDARIN_NORTH_CLEARED_RADIO_TOWER
	iffalse .RadioTowerCleared
	jumptextfaceplayer MandarinNorthCooltrainerText1
	end

.RadioTowerCleared:
	jumptextfaceplayer MandarinNorthCooltrainerText2
	end
	
MandarinNorthCooltrainerText1:
	text "All of the #MON"
	line "are gone…"
	
	para "They all just up"
	line "and left, out of"
	cont "the blue."
	
	para "My poor HOUNDY…"
	line "Where did you go?"
	done

MandarinNorthCooltrainerText2:
	text "The #MON are"
	line "back!"
	
	para "My HOUNDY returned"
	line "as cheerful as can"
	cont "be!"
	done
	
MandarinNorthTeacherMScript:
	checkevent EVENT_MANDARIN_NORTH_CLEARED_RADIO_TOWER
	iffalse .RadioTowerCleared
	jumptextfaceplayer MandarinNorthTeacherMText1
	end

.RadioTowerCleared:
	jumptextfaceplayer MandarinNorthTeacherMText2
	end
	
MandarinNorthTeacherMText1:
	text "The #MON left"
	line "when they started"
	cont "testing that RADIO"
	cont "TOWER."

	para "I wonder whether"
	line "they didn't like"
	cont "the noise it made,"
	cont "or if something is"
	cont "going on."
	done

MandarinNorthTeacherMText2:
	text "So, it did have"
	line "something to do"
	cont "with the RADIO"
	cont "TOWER…"
	
	para "Never thought I'd"
	line "see TEAM ROCKET"
	cont "here in the ORANGE"
	cont "ISLANDS."
	done
	
MandarinNorthPokefanFScript:
	checkevent EVENT_MANDARIN_NORTH_CLEARED_RADIO_TOWER
	iffalse .RadioTowerCleared
	jumptextfaceplayer MandarinNorthPokefanFText1
	end

.RadioTowerCleared:
	jumptextfaceplayer MandarinNorthPokefanFText2
	end
	
MandarinNorthPokefanFText1:
	text "That guy in front"
	line "of the RATICATE"
	cont "RADIO is extremely"
	cont "suspicious."

	para "Maybe he is the"
	line "reason the #MON"
	cont "are missing?"
	done

MandarinNorthPokefanFText2:
	text "True to his name,"
	line "that POLICEMAN was"
	cont "quite the looker…"
	
	para "I can't believe"
	line "the RATICATE RADIO"
	cont "was a front for"
	cont "TEAM ROCKET!"
	done
	
MandarinNorthZoruaScript:
	jumptextfaceplayer MandarinNorthZoruaText
	
MandarinNorthZoruaText:
	text "Oh… This tree…"
	line "I can't get back"
	cont "home…"
	done
	
MandarinNorthZoruaHelpedScript:
	showemote EMOTE_SHOCK, MANDARIN_NORTH_GRANNY, 15
	applymovement MANDARIN_NORTH_GRANNY, MandarinNorthGrannyMovement1
	turnobject PLAYER, RIGHT
	opentext
	writetext MandarinNorthZoruaHelpedText
	waitbutton
	closetext
	applymovement PLAYER, MandarinNorthGrannyMovement2
	pause 15
	turnobject PLAYER, UP
	applymovement MANDARIN_NORTH_GRANNY, MandarinNorthGrannyMovement3
	disappear MANDARIN_NORTH_GRANNY
	playsound SFX_ENTER_DOOR
	waitsfx
	setevent EVENT_MANDARIN_NORTH_OLD_LADY_HELPED
	setscene SCENE_MANDARIN_NORTH_NOOP
	end
	
MandarinNorthZoruaHelpedText:
	text "Oh, you got rid of"
	line "that tree…"
	
	para "Thanks, sweetie…"
	line "Now I can go back"
	cont "home…"
	done

MandarinNorthGrannyMovement1:
	step UP
	turn_head LEFT
	step_end
	
MandarinNorthGrannyMovement2:
	step LEFT
	step LEFT
	turn_head RIGHT
	step_end
	
MandarinNorthGrannyMovement3:
	step LEFT
	step LEFT
	step UP
	step UP
	step LEFT
	step LEFT
	turn_head UP
	step_sleep 24
	step UP
	step_end
	
MandarinNorthCrossScript:
	moveobject MANDARIN_NORTH_CROSS, 25, 19
	appear MANDARIN_NORTH_CROSS
	playsound SFX_EXIT_BUILDING
	waitsfx
	special FadeOutMusic
	pause 15
	playmusic MUSIC_CROSS_ENCOUNTER
	playsound SFX_TACKLE
	applymovement PLAYER, MandarinNorthCrossShovesYouMovement
	applymovement MANDARIN_NORTH_CROSS, MandarinNorthCross_Movement1
	showemote EMOTE_SAD, MANDARIN_NORTH_CROSS, 15
	turnobject PLAYER, LEFT
	opentext
	writetext MandarinNorthCrossText
	waitbutton
	closetext
	applymovement MANDARIN_NORTH_CROSS, MandarinNorthCross_Movement2
	disappear MANDARIN_NORTH_CROSS
	setevent EVENT_MANDARIN_NORTH_CROSS_LEAVING_CUT_MASTER
	setscene SCENE_MANDARIN_NORTH_ZORUA
	special RestartMapMusic
	end
	
MandarinNorthCrossShovesYouMovement:
	turn_head UP
	fix_facing
	step RIGHT
	remove_fixed_facing
	step_end
	
MandarinNorthCross_Movement1:
	step DOWN
	step_sleep 24
	turn_head RIGHT
	step_end
	
MandarinNorthCross_Movement2:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

MandarinNorthCrossText:
	text "CROSS: You're an"
	line "eyesore. That old"
	cont "man finally gave"
	cont "me HM01."
	
	para "Now I can get to"
	line "NAVEL ISLAND for a"
	cont "new BADGE!"
	
	para "I hope I took the"
	line "last one. Hmph!"
	done
	
MandarinNorthSign:
	jumptext MandarinNorthSignText
	
MandarinNorthSignText:
	text "MANDARIN ISLAND"
	line "NORTH"
	
	para "Connecting people"
	line "of all walks of"
	cont "life."
	done
	
MandarinNorthCutMasterSign:
	jumptext MandarinNorthCutMasterSignText
	
MandarinNorthCutMasterSignText:
	text "CUT MASTER's HOUSE"
	done
	
MandarinNorthNameRaterSign:
	jumptext MandarinNorthNameRaterSignText
	
MandarinNorthNameRaterSignText:
	text "NAME RATER"
	done
	
MandarinNorthRadioTowerSign:
	jumptext MandarinNorthRadioTowerSignText
	
MandarinNorthRadioTowerSignText:
	text "RATICATE RADIO"
	para "Coming soon to an"
	line "island near you!"
	done

MandarinNorthHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_MANDARIN_NORTH_HIDDEN_HYPER_POTION

MandarinNorthHiddenDuskBall:
	hiddenitem DUSK_BALL, EVENT_MANDARIN_NORTH_HIDDEN_DUSK_BALL

MandarinNorth_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 21, ABANDONED_HOUSE, 1

	def_coord_events
	coord_event 15, 10, SCENE_MANDARIN_NORTH_LOOKER, MandarinNorthLookerScript
	coord_event 15, 11, SCENE_MANDARIN_NORTH_LOOKER, MandarinNorthLookerScript
	coord_event 25, 20, SCENE_MANDARIN_NORTH_CROSS, MandarinNorthCrossScript
	coord_event  8, 24, SCENE_MANDARIN_NORTH_ZORUA, MandarinNorthZoruaHelpedScript

	def_bg_events
	bg_event 19, 27, BGEVENT_READ, MandarinNorthSign
	bg_event 24, 20, BGEVENT_READ, MandarinNorthCutMasterSign
	bg_event 23,  9, BGEVENT_READ, MandarinNorthNameRaterSign
	bg_event 10,  8, BGEVENT_READ, MandarinNorthRadioTowerSign
	bg_event  6, 24, BGEVENT_ITEM, MandarinNorthHiddenHyperPotion
	bg_event 10, 10, BGEVENT_ITEM, MandarinNorthHiddenDuskBall

	def_object_events
	object_event 14,  8, SPRITE_LOOKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MANDARIN_NORTH_MET_LOOKER
	object_event 12, 19, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, MandarinNorthCooltrainerScript, -1
	object_event  9, 25, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, MandarinNorthZoruaScript, EVENT_MANDARIN_NORTH_OLD_LADY_HELPED
	object_event 35,  0, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MANDARIN_NORTH_CROSS_LEAVING_CUT_MASTER
	object_event 19, 19, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MandarinNorthTeacherMScript, -1
	object_event 18, 13, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MandarinNorthPokefanFScript, -1

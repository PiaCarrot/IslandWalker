	object_const_def
	const RATICATE_RADIO_B1F_GRUNT1
	const RATICATE_RADIO_B1F_GRUNT2
	const RATICATE_RADIO_B1F_GRUNT3
	const RATICATE_RADIO_B1F_GRUNT4
	const RATICATE_RADIO_B1F_GRUNTF1
	const RATICATE_RADIO_B1F_GRUNTF2
	const RATICATE_RADIO_B1F_GRUNT5
	const RATICATE_RADIO_B1F_GRUNTF3
	const RATICATE_RADIO_B1F_NAMBA
	const RATICATE_RADIO_B1F_ITEMBALL_1
	const RATICATE_RADIO_B1F_ITEMBALL_2
	const RATICATE_RADIO_B1F_TM_THIEF
	const RATICATE_RADIO_B1F_BUTCH
	const RATICATE_RADIO_B1F_CASSIDY
	const RATICATE_RADIO_B1F_LOOKER

RaticateRadioB1F_MapScripts:
	def_scene_scripts
	scene_script RaticateRadioB1FLookerScene, SCENE_RATICATE_RADIO_B1F_LOOKER
	scene_script RaticateRadioB1FNoopScene,         SCENE_RATICATE_RADIO_B1F_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, RaticateRadioB1FDisplayCallback

RaticateRadioB1FDisplayCallback:
	checkevent EVENT_RATICATE_RADIO_B1F_CASSIDY
	iffalse .Done
	changeblock 32, 30, $46
	checkevent EVENT_RATICATE_RADIO_VACATED
	iffalse .Done
	changeblock 36, 28, $59
.Done:
	endcallback
	
RaticateRadioB1FLookerScene:
	end
	
RaticateRadioB1FNoopScene:
	end
	
RaticateRadioTMThief:
	itemball TM_THIEF
	
RaticateRadioEscapeRope:
	itemball ESCAPE_ROPE
	
RaticateRadioSmokeBall:
	itemball SMOKE_BALL
	
RaticateRadioB1FLookerScript:
	turnobject RATICATE_RADIO_B1F_LOOKER, RIGHT
	showemote EMOTE_SHOCK, RATICATE_RADIO_B1F_LOOKER, 15
	playmusic MUSIC_LOOKER
	readvar VAR_YCOORD
	ifequal 3, .Walk2
	applymovement RATICATE_RADIO_B1F_LOOKER, RaticateRadioB1FLookerMovement1
	sjump .ContinueScript
.Walk2:
	applymovement RATICATE_RADIO_B1F_LOOKER, RaticateRadioB1FLookerMovement2
.ContinueScript:
	opentext
	writetext RaticateRadioB1FLookerText1
	waitbutton
	closetext
	winlosstext RaticateRadioB1FLookerWinText, RaticateRadioB1FLookerLossText
	setlasttalked RATICATE_RADIO_B1F_LOOKER
	loadtrainer LOOKER, LOOKER_1
	startbattle
	reloadmapafterbattle
	playmusic MUSIC_LOOKER
	opentext
	writetext RaticateRadioB1FLookerText2
	waitbutton
	special NameRival
	writetext RaticateRadioB1FLookerText3
	waitbutton
	closetext
	applymovement RATICATE_RADIO_B1F_LOOKER, RaticateRadioB1FLookerMovement3
	disappear RATICATE_RADIO_B1F_LOOKER
	setevent EVENT_RATICATE_RADIO_B1F_LOOKER
	setscene SCENE_RATICATE_RADIO_B1F_NOOP
	special RestartMapMusic
	end
	
RaticateRadioB1FLookerMovement1:
	step RIGHT
	step RIGHT
	step_end

RaticateRadioB1FLookerMovement2:
	step DOWN
	step RIGHT
	step RIGHT
	step_end

RaticateRadioB1FLookerMovement3:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
RaticateRadioB1FLookerText1:
	text "LOOKER: So, it"
	line "seems, you insist"
	cont "on following me!"

	para "Well, that matters"
	line "little. If you"
	cont "think you can join"
	cont "me, I must, shall"
	cont "we say, test your"
	cont "mettle!"
	done
	
RaticateRadioB1FLookerLossText:
	text "LOOKER: I can tell"
	line "that you are not"
	cont "a bad person."
	
	para "But, I'm sorry."
	line "You'll just get in"
	cont "the way."
	done
	
RaticateRadioB1FLookerWinText:
	text "LOOKER: S-strong!"
	done
	
RaticateRadioB1FLookerText2:
	text "LOOKER: Very well."
	line "Join me, you will!"
	
	para "However, it would"
	line "seem, this will"
	cont "not be an easy"
	cont "task, my new-found"
	cont "friend!"
	
	para "For starters, you"
	line "are going to need"
	cont "a codename!"
	
	para "This will help you"
	line "protect your iden-"
	cont "tity from the evil"
	cont "doers like TEAM"
	cont "ROCKET."
	done
	
	para "Now, what shall it"
	line "be?"
	done
	
RaticateRadioB1FLookerText3:
	text "LOOKER: <№>.<CODE>."
	line "That is what you"
	cont "will be called by"
	cont "INTERPOL officers."
	
	para "I'll scout ahead."
	line "We'll meet up"
	cont "again later!"
	done
	
RaticateRadioB1FGrunt1Script:
	trainer GRUNTM, AGENTM_1, EVENT_BEAT_AGENTM_1, RaticateRadioB1FGrunt1SeenText, RaticateRadioB1FGrunt1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt1AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt1SeenText:
	text "We'll steal every"
	line "#MON on this"
	cont "island, and you"
	cont "can't stop us!"
	done

RaticateRadioB1FGrunt1BeatenText:
	text "But you can stop"
	line "me, I guess."
	done

RaticateRadioB1FGrunt1AfterText:
	text "You may have beat"
	line "me, but BUTCH and"
	cont "CASSIDY are TOP"
	cont "AGENTS. They won't"
	cont "be so easy."
	done

RaticateRadioB1FGrunt2Script: ; BEEDRILL PUNK
	trainer GRUNTM, BEEDRILL_GRUNT_1, EVENT_BEAT_BEEDRILL_GRUNT_1, RaticateRadioB1FGrunt2SeenText, RaticateRadioB1FGrunt2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt2AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt2SeenText:
	text "It's the brat from"
	line "TANGELO ISLAND!"
	done

RaticateRadioB1FGrunt2BeatenText:
	text "Ack! My BEEDRILL!"
	done

RaticateRadioB1FGrunt2AfterText:
	text "Because of you,"
	line "we didn't rank up!"
	cont "I curse you!"
	done

RaticateRadioB1FGrunt3Script:
	trainer GRUNTM, AGENTM_2, EVENT_BEAT_AGENTM_2, RaticateRadioB1FGrunt3SeenText, RaticateRadioB1FGrunt3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt3AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt3SeenText:
	text "TEAM ROCKET OATH:"

	para "Steal #MON for"
	line "profit!"

	para "Exploit #MON"
	line "for profit!"

	para "All #MON exist"
	line "for the glory of"
	cont "TEAM ROCKET!"
	done

RaticateRadioB1FGrunt3BeatenText:
	text "All Hail GIOVANNI!"
	done

RaticateRadioB1FGrunt3AfterText:
	text "Oh? I'll gladly re-"
	line "cite the OATH for"
	cont "you!"
	
	para "TEAM ROCKET OATH:"

	para "Steal #MON for"
	line "profit!"

	para "Exploit #MON"
	line "for profit!"

	para "All #MON exist"
	line "for the glory of"
	cont "TEAM ROCKET!"
	done

RaticateRadioB1FGrunt4Script: ; HITMONCHAN PUNK
	trainer GRUNTM, HITMONCHAN_GRUNT_1, EVENT_BEAT_HITMONCHAN_GRUNT_1, RaticateRadioB1FGrunt4SeenText, RaticateRadioB1FGrunt4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt4AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt4SeenText:
	text "We didn't get to"
	line "battle on TANGELO"
	cont "ISLAND. I finally"
	cont "get my chance!"
	done

RaticateRadioB1FGrunt4BeatenText:
	text "If only I had that"
	line "LAPRAS!"
	done

RaticateRadioB1FGrunt4AfterText:
	text "Tch. HITMONCHAN?"
	line "More like…"
	
	para "HITMONCHUMP!"
	done

RaticateRadioB1FGrunt5Script:
	trainer GRUNTF, AGENTF_1, EVENT_BEAT_AGENTF_1, RaticateRadioB1FGrunt5SeenText, RaticateRadioB1FGrunt5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt5AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt5SeenText:
	text "… … …"
	
	para "What the-?"
	line "Intruder!"
	done

RaticateRadioB1FGrunt5BeatenText:
	text "… … …"
	line "Get out of here!"
	done

RaticateRadioB1FGrunt5AfterText:
	text "… … …"

	para "What seems to be"
	line "the officer,"
	cont "problem?"
	
	para "… … …"

	para "I said it wrong."
	line "Embarassing…"
	done

RaticateRadioB1FGrunt6Script:
	trainer GRUNTF, AGENTF_2, EVENT_BEAT_AGENTF_2, RaticateRadioB1FGrunt6SeenText, RaticateRadioB1FGrunt6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt6AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt6SeenText:
	text "Huh? Having fun,"
	line "are we?"
	done

RaticateRadioB1FGrunt6BeatenText:
	text "That's not very"
	line "fun!"
	done

RaticateRadioB1FGrunt6AfterText:
	text "Don't tell CASSIDY,"
	line "but I'm goofing off"
	cont "down here."
	done

RaticateRadioB1FGrunt7Script: ;SPEAROW PUNK
	trainer GRUNTM, SPEAROW_GRUNT_1, EVENT_BEAT_SPEAROW_GRUNT_1, RaticateRadioB1FGrunt7SeenText, RaticateRadioB1FGrunt7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt7AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt7SeenText:
	text "You again?!"
	done

RaticateRadioB1FGrunt7BeatenText:
	text "Oh, for crying out"
	line "loud!"
	done

RaticateRadioB1FGrunt7AfterText:
	text "I told that idiot"
	line "BUTCH that SPEAROW"
	cont "was too weak, but"
	cont "does anyone ever"
	cont "listen? Argh!"
	done

RaticateRadioB1FGrunt8Script:
	trainer GRUNTF, AGENTF_3, EVENT_BEAT_AGENTF_3, RaticateRadioB1FGrunt8SeenText, RaticateRadioB1FGrunt8BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt8AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt8SeenText:
	text "Who are you?!"
	done

RaticateRadioB1FGrunt8BeatenText:
	text "Wait!"
	done

RaticateRadioB1FGrunt8AfterText:
	text "I took the wrong"
	line "warp pad, and now"
	cont "I'm lost…"
	done

RaticateRadioB1FScientistScript:
	trainer SCIENTIST, NAMBA_1, EVENT_BEAT_SCIENTIST_NAMBA_1, RaticateRadioB1FScientistSeenText, RaticateRadioB1FScientistBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FScientistAfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FScientistSeenText:
	text "Missing #MON?"
	line "Hehehe!"
	done

RaticateRadioB1FScientistBeatenText:
	text "The research from"
	line "FIVE ISLAND proved"
	cont "fruitful!"
	done

RaticateRadioB1FScientistAfterText:
	text "With my technology"
	line "and DROWZEE, all"
	cont "the #MON on the"
	cont "island have been"
	cont "brainwashed! Hehe!"
	done
	
RaticateRadioPC0:
	jumptext RaticateRadioPC0Text
	
RaticateRadioPC0Text:
	text "It's an ad for the"
	line "RATICATE RADIO."
	
	para "Playing soothing"
	line "melodies for your"
	cont "#MON!"
	done
	
RaticateRadioPC1:
	jumptext RaticateRadioPC1Text
	
RaticateRadioPC1Text:
	text "ENTRY 1:"
	line "DR. NAMBA FILES"
	
	para "Using the research"
	line "from our warehouse"
	cont "on FIVE ISLAND, I"
	cont "have found a way"
	cont "to amplify PSYCHIC"
	cont "WAVES that DROWZEE"
	cont "produces."
	done
	
RaticateRadioPC2:
	jumptext RaticateRadioPC2Text
	
RaticateRadioPC2Text:
	text "ENTRY 2:"
	line "DR. NAMBA FILES"
	
	para "While the loyal"
	line "decided to search"
	cont "for GIOVANNI, I"
	cont "took their theory"
	cont "to the BOSS that"
	cont "paid big bucks!"
	done
	
RaticateRadioPC3:
	jumptext RaticateRadioPC3Text
	
RaticateRadioPC3Text:
	text "ENTRY 3:"
	line "DR. NAMBA FILES"
	
	para "This technology is"
	line "limitless! I could"
	cont "apply it to many"
	cont "other things. Say"
	cont "the MAGIKARP on"
	cont "RIND ISLAND were"
	cont "suddenly enraged…"
	done
	
RaticateRadioPC4:
	jumptext RaticateRadioPC4Text
	
RaticateRadioPC4Text:
	text "ENTRY 4:"
	line "DR. NAMBA FILES"
	
	para "The #MON from"
	line "this island will"
	cont "become valuable"
	cont "test subjects."
	cont "RAGE! That is what"
	cont "this is all about!"
	cont "RAGE should be the"
	cont "symbol of TEAM"
	cont "ROCKET!"
	done
	
RaticateRadioPC5:
	jumptext RaticateRadioPC5Text
	
RaticateRadioPC5Text:
	text "ENTRY 5:"
	line "DR. NAMBA FILES"
	
	para "Our image is in"
	line "shambles! The lout"
	cont "of a BOSS GIOVANNI"
	cont "ran away! Cowards!"
	cont "That is what they"
	cont "call us now!"

	para "But that man…"
	line "He will change"
	cont "everything!"
	done
	
RaticateRadioPC6:
	jumptext RaticateRadioPC6Text
	
RaticateRadioPC6Text:
	text "Huh? Looks like a"
	line "personal diary…"
	
	para "Heck yeah! I got"
	line "promoted by the"
	cont "BOSS! Now I'm a"
	cont "TOP AGENT! That'll"
	cont "teach those idiots"
	cont "JESSIE & JAMES!"

	para "With love,"
	line "BUTCH"
	done
	
RaticateRadioPC7:
	checkevent EVENT_RATICATE_RADIO_VACATED
	iftrue .TurnedOff
	jumptext RaticateRadioPC7Text
	end
.TurnedOff:
	jumptext RaticateRadioPC7Text2
	end
	
RaticateRadioPC7Text:
	text "Looks like a meter"
	line "for gauging power…"
	
	para "PSYCHIC WAVE LV:4"
	done
	
RaticateRadioPC7Text2:
	text "It's turned off,"
	line "now."
	done
	
RaticateRadioPC8:
	jumptext RaticateRadioPC8Text
	
RaticateRadioPC8Text:
	text "TO: HQ"
	line "FROM: DR. NAMBA"

	para "This hideout is"
	line "compromised!"
	
	para "Reinforcements are"
	line "needed at 'that'"
	cont "facility."
	done
	
RaticateRadioB1FButchScript:
	opentext
	writetext RaticateRadioB1FButchText1
	waitbutton
	closetext
	faceplayer
	showemote EMOTE_SHOCK, RATICATE_RADIO_B1F_BUTCH, 15
	opentext
	writetext RaticateRadioB1FButchText2
	waitbutton
	closetext
	winlosstext RaticateRadioB1FButchWinText, 0
	setlasttalked RATICATE_RADIO_B1F_BUTCH
	loadtrainer BUTCH, BUTCH_1
	startbattle
	reloadmapafterbattle
	opentext
	writetext RaticateRadioB1FButchText3
	waitbutton
	closetext
	applymovement RATICATE_RADIO_B1F_BUTCH, RaticateRadioB1FButchMovement
	disappear RATICATE_RADIO_B1F_BUTCH
	setevent EVENT_RATICATE_RADIO_B1F_BUTCH
	end
	
RaticateRadioB1FButchText1:
	text "???: Son of a"
	line "GRIMER! The POLICE"
	cont "already found this"
	cont "hideout!"
	
	para "CASSIDY will know"
	line "what to do…"
	done
	
RaticateRadioB1FButchText2:
	text "Ack! A snot-nosed"
	line "brat!"
	
	para "You don't belong"
	line "here, kid!"
	done
	
RaticateRadioB1FButchWinText:
	text "The BOSS won't be"
	line "happy 'bout this!"
	done
	
RaticateRadioB1FButchText3:
	text "BUTCH: I gots to"
	line "warn CASSIDY!"
	para "Later, brat!"
	done
	
RaticateRadioB1FButchMovement:
	big_step RIGHT
	big_step RIGHT
	fix_facing
	jump_step LEFT
	step_sleep 8
	step_sleep 8
	remove_fixed_facing
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	big_step UP
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	step_end

RaticateRadioB1FCassidyScript:
	opentext
	writetext RaticateRadioB1FCassidyText1
	waitbutton
	closetext
	faceplayer
	showemote EMOTE_SHOCK, RATICATE_RADIO_B1F_CASSIDY, 15
	opentext
	writetext RaticateRadioB1FCassidyText2
	waitbutton
	closetext
	winlosstext RaticateRadioB1FCassidyWinText, 0
	setlasttalked RATICATE_RADIO_B1F_CASSIDY
	loadtrainer CASSIDY, CASSIDY_1
	startbattle
	reloadmapafterbattle
	opentext
	writetext RaticateRadioB1FCassidyText3
	waitbutton
	closetext
	turnobject RATICATE_RADIO_B1F_CASSIDY, UP
	playsound SFX_BOOT_PC
	waitsfx
	changeblock 32, 30, $46
	reloadmap
	readvar VAR_FACING
	ifequal UP, .WalkAroundYou
	applymovement RATICATE_RADIO_B1F_CASSIDY, RaticateRadioB1FCassidyMovement2
.ResumeScript
	playsound SFX_WARP_TO
	disappear RATICATE_RADIO_B1F_CASSIDY
	waitsfx
	setevent EVENT_RATICATE_RADIO_B1F_CASSIDY
	readvar VAR_FACING
	ifequal UP, .LookerAppearsLower
	moveobject RATICATE_RADIO_B1F_LOOKER, 34, 35
	appear RATICATE_RADIO_B1F_LOOKER
	playmusic MUSIC_LOOKER
	applymovement RATICATE_RADIO_B1F_LOOKER, RaticateRadioB1FLookerMovement5
	readvar VAR_FACING
	ifequal LEFT, .LookerTurnsRight
	turnobject RATICATE_RADIO_B1F_LOOKER, LEFT
.FinishScript
	opentext
	writetext RaticateRadioB1FLookerText4
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal DOWN, .LookerWalk1
	ifequal LEFT, .LookerWalk2
	ifequal RIGHT, .LookerWalk3
	end
.LookerAppearsLower
	moveobject RATICATE_RADIO_B1F_LOOKER, 34, 36
	appear RATICATE_RADIO_B1F_LOOKER
	playmusic MUSIC_LOOKER
	applymovement RATICATE_RADIO_B1F_LOOKER, RaticateRadioB1FLookerMovement4
	turnobject PLAYER, DOWN
	sjump .FinishScript
	end

.WalkAroundYou:
	applymovement RATICATE_RADIO_B1F_CASSIDY, RaticateRadioB1FCassidyMovement
	sjump .ResumeScript
.LookerTurnsRight:
	turnobject RATICATE_RADIO_B1F_LOOKER, RIGHT
	sjump .FinishScript
.LookerWalk1:
	applymovement RATICATE_RADIO_B1F_LOOKER, RaticateRadioB1FLookerMovement6
	sjump .WalkFinish
.LookerWalk2:
	applymovement RATICATE_RADIO_B1F_LOOKER, RaticateRadioB1FLookerMovement7
	sjump .WalkFinish
.LookerWalk3:
	applymovement RATICATE_RADIO_B1F_LOOKER, RaticateRadioB1FLookerMovement8
;fallthrough
.WalkFinish
	playsound SFX_WARP_TO
	disappear RATICATE_RADIO_B1F_LOOKER
	waitsfx
	setevent EVENT_RATICATE_RADIO_B1F_LOOKER
	special RestartMapMusic
	end
	
RaticateRadioB1FCassidyText1:
	text "???: BUTCH, how is"
	line "DROWZEE looking?"
	cont "I can't give you"
	cont "much time!"
	done

RaticateRadioB1FCassidyText2:
	text "Drat! Those three"
	line "stooges failed!"
	
	para "It's my turn to"
	line "battle, brat!"
	done
	
RaticateRadioB1FCassidyWinText:
	text "I can't believe"
	line "this is happening!"
	done
	
RaticateRadioB1FCassidyText3:
	text "CASSIDY: Ugh…"
	line "BUTCH…"
	done
	
RaticateRadioB1FLookerText4:
	text "LOOKER: <№>.<CODE>!"
	line "For being late, I"
	cont "am sorry! It would"
	cont "seem, that I may"
	cont "have gotten lost…"
	
	para "… … … … …"
	
	para "LOOKER: I see. So"
	line "the ones in charge"
	cont "went through that"
	cont "WARP PAD."
	
	para "I'll go ahead! It"
	line "would seem to be"
	cont "dangerous. Please,"
	cont "back me up!"
	done
	
RaticateRadioB1FCassidyMovement:
	big_step LEFT
	big_step LEFT
	big_step DOWN
	step_sleep 24
	step_end
	
RaticateRadioB1FCassidyMovement2:
	big_step DOWN
	big_step LEFT
	big_step LEFT
	turn_head DOWN
	step_sleep 24
	step_end
	
RaticateRadioB1FLookerMovement4:
	step_sleep 24
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

RaticateRadioB1FLookerMovement5:
	step_sleep 24
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end
	
RaticateRadioB1FLookerMovement6:
	step LEFT
	step LEFT
	step UP
	step_sleep 24
	step_end
	
RaticateRadioB1FLookerMovement7:
	step LEFT
	step LEFT
	step DOWN
	step_sleep 24
	step_end
	
RaticateRadioB1FLookerMovement8:
	step DOWN
	step LEFT
	step LEFT
	step_sleep 24
	step_end

RaticateRadioB1FHiddenEther:
	hiddenitem ETHER, EVENT_RATICATE_RADIO_B1F_HIDDEN_ETHER

RaticateRadioB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 39,  0, RATICATE_RADIO_LOBBY, 3
	warp_event 24,  3, RATICATE_RADIO_B1F, 3
	warp_event 39, 11, RATICATE_RADIO_B1F, 2
	warp_event 32, 23, RATICATE_RADIO_B1F, 5
	warp_event  0,  3, RATICATE_RADIO_B1F, 4
	warp_event 14,  3, RATICATE_RADIO_B1F, 7
	warp_event  0, 39, RATICATE_RADIO_B1F, 6
	warp_event  0, 31, RATICATE_RADIO_B1F, 9
	warp_event 27, 39, RATICATE_RADIO_B1F, 8
	warp_event 20, 19, RATICATE_RADIO_B1F, 11
	warp_event 36, 39, RATICATE_RADIO_B1F, 10
	warp_event 32, 31, RATICATE_RADIO_B2F, 1

	def_coord_events
	coord_event 32,  2, SCENE_RATICATE_RADIO_B1F_LOOKER, RaticateRadioB1FLookerScript
	coord_event 32,  3, SCENE_RATICATE_RADIO_B1F_LOOKER, RaticateRadioB1FLookerScript

	def_bg_events
	bg_event  7, 35, BGEVENT_READ, RaticateRadioPC1
	bg_event  7, 31, BGEVENT_READ, RaticateRadioPC2
	bg_event  4, 31, BGEVENT_READ, RaticateRadioPC3
	bg_event 24, 38, BGEVENT_READ, RaticateRadioPC4
	bg_event 25, 38, BGEVENT_READ, RaticateRadioPC4
	bg_event 24, 34, BGEVENT_READ, RaticateRadioPC5
	bg_event 25, 34, BGEVENT_READ, RaticateRadioPC5
	bg_event 20, 34, BGEVENT_READ, RaticateRadioPC6
	bg_event 21, 34, BGEVENT_READ, RaticateRadioPC6
	bg_event 36, 19, BGEVENT_READ, RaticateRadioPC0
	bg_event 36, 15, BGEVENT_READ, RaticateRadioPC0
	bg_event 34, 29, BGEVENT_READ, RaticateRadioPC7
	bg_event  2, 17, BGEVENT_ITEM, RaticateRadioB1FHiddenEther
	bg_event 12, 31, BGEVENT_READ, RaticateRadioPC8

	def_object_events
	object_event 14, 39, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, RaticateRadioB1FGrunt1Script, EVENT_RATICATE_RADIO_VACATED
	object_event 38, 37, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, RaticateRadioB1FGrunt2Script, EVENT_RATICATE_RADIO_VACATED
	object_event  9, 27, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, RaticateRadioB1FGrunt3Script, EVENT_RATICATE_RADIO_VACATED
	object_event 33, 36, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, RaticateRadioB1FGrunt4Script, EVENT_RATICATE_RADIO_VACATED
	object_event 33, 21, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, RaticateRadioB1FGrunt5Script, EVENT_RATICATE_RADIO_VACATED
	object_event  8, 16, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, RaticateRadioB1FGrunt6Script, EVENT_RATICATE_RADIO_VACATED
	object_event 38, 33, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, RaticateRadioB1FGrunt7Script, EVENT_RATICATE_RADIO_VACATED
	object_event 23, 36, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, RaticateRadioB1FGrunt8Script, EVENT_RATICATE_RADIO_VACATED
	object_event 11, 31, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, RaticateRadioB1FScientistScript, EVENT_RATICATE_RADIO_VACATED
	object_event 13, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RaticateRadioEscapeRope, EVENT_RATICATE_RADIO_ESCAPE_ROPE
	object_event  8,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RaticateRadioSmokeBall, EVENT_RATICATE_RADIO_SMOKE_BALL
	object_event 20, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_ITEMBALL, 0, RaticateRadioTMThief, EVENT_TM_46_THIEF
	object_event 18, 27, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, RaticateRadioB1FButchScript, EVENT_RATICATE_RADIO_B1F_BUTCH ; Butch
	object_event 34, 30, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, RaticateRadioB1FCassidyScript, EVENT_RATICATE_RADIO_B1F_CASSIDY ; Cassidy
	object_event 29,  2, SPRITE_LOOKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RATICATE_RADIO_B1F_LOOKER ; Looker
	
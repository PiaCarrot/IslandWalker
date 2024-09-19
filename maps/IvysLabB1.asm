	object_const_def
	const IVYS_BASEMENT_IVY
	const IVYS_BASEMENT_GS_BALL
	const IVYS_BASEMENT_AIDE

IvysLabB1_MapScripts:
	def_scene_scripts
	scene_script .GSBallScene, SCENE_IVYS_LAB_BASEMENT_GS_BALL
	scene_script .GSBallScene2, SCENE_IVYS_LAB_BASEMENT_CANT_LEAVE
	scene_script .IvysLabNoOp, SCENE_IVYS_LAB_BASEMENT_NOOP

	def_callbacks

.GSBallScene:
	priorityjump .WalkUpToIvy
	end
	
.GSBallScene2:
	end
	
.IvysLabNoOp:
	end
	
.WalkUpToIvy:
	applymovement PLAYER, IvysLabBasement_WalkUpToIvyMovement
	turnobject IVYS_BASEMENT_IVY, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext IvyBasementIvyGSBallText
	waitbutton
	closetext
	setscene SCENE_IVYS_LAB_BASEMENT_CANT_LEAVE
	closetext
	turnobject IVYS_BASEMENT_IVY, DOWN
	end
	
ProfessorIvyBasementScript:
	jumptextfaceplayer IvysLabBasementCantLeaveText
	
LabBasementTryToLeaveScript:
	readvar VAR_FACING
	ifequal LEFT, .TurnIvyLeft
	ifequal DOWN, .IvyStandsStill
.TurnIvyLeft
	turnobject IVYS_BASEMENT_IVY, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext IvysLabBasementCantLeaveText
	waitbutton
	closetext
	applymovement PLAYER, IvysLabBasementCantLeaveMovement
	turnobject IVYS_BASEMENT_IVY, DOWN
	end
.IvyStandsStill
	turnobject PLAYER, UP
	opentext
	writetext IvysLabBasementCantLeaveText
	waitbutton
	closetext
	applymovement PLAYER, IvysLabBasementCantLeaveMovement2
	end
	
IvysLabBasementCantLeaveText:
	text "IVY: Take the GS"
	line "BALL, <PLAYER>."
	done

IvyBasementIvyGSBallText:
	text "This is the errand"
	line "I mentioned to you"
	cont "earlier, <PLAYER>."
	
	para "I call it the GS"
	line "BALL. I came upon"
	cont "it during one of"
	cont "my field studies."
	
	para "It won't open up,"
	line "no matter what we"
	cont "try. I don't know"
	cont "a thing about it."
	
	para "On the other end"
	line "of the islands is"
	cont "a place called"
	cont "HAMLIN ISLAND."
	
	para "A fellow #MON"
	line "researcher will be"
	cont "visiting the area"
	cont "soon."
	
	para "His name is SAMSON"
	line "OAK. He's a cousin"
	cont "of the esteemed"
	cont "PROF. OAK."
	
	para "Take the GS BALL"
	line "to SAMSON. He has"
	cont "agreed to take a"
	cont "look at it."
	done

IvysLabBasement_WalkUpToIvyMovement:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step_end
	
IvysLabBasementCantLeaveMovement:
	step RIGHT
	step_end
	
IvysLabBasementCantLeaveMovement2:
	step UP
	step_end
	
GSBallScript:
	opentext
	verbosegiveitem GS_BALL_KEY
	closetext
	disappear IVYS_BASEMENT_GS_BALL
	setevent EVENT_GS_BALL_ENCOUNTER
	setevent EVENT_GS_BALL_IVY
	setscene SCENE_IVYS_LAB_BASEMENT_NOOP
	turnobject IVYS_BASEMENT_IVY, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext IvysLabBasementTookGSBallText
	waitbutton
	closetext
	applymovement IVYS_BASEMENT_IVY, IvysLabBasementIvyLeavesMovement
	playsound SFX_EXIT_BUILDING
	disappear IVYS_BASEMENT_IVY
	waitsfx
	end
	
IvysLabBasementIvyLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step_end
	
CharityScript:
	jumptextfaceplayer CharityText

IvysLabB1OldTV:
	jumptext IvysLabB1OldTVText
	
IvysLabB1PC:
	opentext
	writetext IvysLabB1PCText
	yesorno
	iftrue .ReadEmail
	closetext
	end
	
.ReadEmail:
	writetext IvysLabB1PCText2
	waitbutton
	closetext
	end
	
IvysLabB1OldTVText:
	text "Looks like an old"
	line "radar for sonar."
	done
	
IvysLabB1PCText:
	text "There's an email"
	line "from a PROF. OAK."
	cont "It looks really"
	cont "long, do you want"
	cont "to read it?"
	done
	
IvysLabB1PCText2:
	text "TO: PHILENA"
	line "FROM: SAMUEL OAK"
	
	para "Regarding your in-"
	line "quiry on this GS"
	cont "BALL. Regrettably,"
	cont "I have never heard"
	cont "of this phenomena."
	
	para "There's not many"
	line "#BALL crafters"
	cont "left in the world,"
	cont "and the masters,"
	cont "even fewer."
	
	para "My cousin SAMSON"
	line "is interested in"
	cont "your research into"
	cont "regional variants,"
	cont "and will be coming"
	cont "to the ORANGE IS-"
	cont "LANDS to commence"
	cont "his own research."
	
	para "He has expressed"
	line "a keen interest in"
	cont "this GS BALL, but"
	cont "also in that new"
	cont "TRAINER you spoke"
	cont "of before."
	
	para "<PLAYER>, was it?"
	line "Unfortunately, it"
	cont "seems the blimp"
	cont "service seems to"
	cont "be out of order,"
	cont "so he will have to"
	cont "take a ship to"
	cont "HAMLIN ISLAND."
	
	para "Please send some-"
	line "one to HAMLIN ISL-"
	cont "AND to meet him!"
	done

IvysLabBasementTookGSBallText:
	text "IVY: Alright! I"
	line "think you're good"
	cont "to go!"
	
	para "Good luck on your"
	line "travels, <PLAYER>!"
	done
	
CharityText:
	text "CHARITY: I tried"
	line "everything to open"
	cont "that GS BALL."
	
	para "Drills, lasers, a"
	line "hammer, acid. Not"
	cont "a thing worked!"
	
	para "Whoever made that"
	line "thing is a down-"
	cont "right genius!"
	done
	
TestScript:
	giveitem FAIRYFEATHER ; 00B0
	giveitem QUICK_POWDER ; 00B1
	giveitem EVIOLITE     ; 00B2
	giveitem SOUL_DEW     ; 00B3
	giveitem SOOTHE_BELL  ; 00B4
	giveitem MIRROR_HERB  ; 00B5
	giveitem MENTAL_HERB  ; 00B6
	giveitem POWER_HERB   ; 00B7
	giveitem WHITE_HERB   ; 00B8
	giveitem FULL_INCENSE ; 00B9
	giveitem LAX_INCENSE  ; 00BA
	giveitem LUCK_INCENSE ; 00BB
	giveitem ODD_INCENSE  ; 00BC
	giveitem PURE_INCENSE ; 00BD
	giveitem ROCK_INCENSE ; 00BE
	giveitem ROSE_INCENSE ; 00BF
	giveitem SEA_INCENSE  ; 00C0
	giveitem WAVE_INCENSE ; 00C1
	giveitem MACHO_BRACE  ; 00C2
	giveitem POWER_ANKLET ; 00C3
	giveitem POWER_BAND   ; 00C4
	giveitem POWER_BELT   ; 00C5
	giveitem POWER_BRACER ; 00C6
	giveitem POWER_LENS   ; 00C7
	giveitem POWER_WEIGHT ; 00C8
	giveitem HEART_SCALE  ; 00C9
	giveitem BLUE_SHARD   ; 00CA
	giveitem GREEN_SHARD  ; 00CB
	giveitem RED_SHARD    ; 00CC
	giveitem YELLOW_SHARD ; 00CD
	giveitem RARE_BONE    ; 00CE
	giveitem BALMMUSHROOM ; 00CF
	giveitem BIG_NUGGET   ; 00D0
	giveitem COMET_SHARD  ; 00D1
	giveitem PEARL_STRING ; 00D2
	giveitem BEACH_GLASS  ; 00D3
	giveitem PRETTY_SHELL ; 00D4
	giveitem TINY_BAMBOO  ; 00D5
	giveitem BIG_BAMBOO   ; 00D6
	end

IvysLabB1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  5, IVYS_LAB, 3

	def_coord_events
	coord_event  2,  3, SCENE_IVYSLAB_CANT_LEAVE, LabBasementTryToLeaveScript
	coord_event  1,  2, SCENE_IVYSLAB_CANT_LEAVE, LabBasementTryToLeaveScript

	def_bg_events
	bg_event  5,  1, BGEVENT_READ, IvysLabB1OldTV
	bg_event  4,  1, BGEVENT_READ, IvysLabB1OldTV
	bg_event  0,  1, BGEVENT_READ, IvysLabB1PC

	def_object_events
	object_event  3,  2, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ProfessorIvyBasementScript, EVENT_GS_BALL_IVY
	object_event  2,  1, SPRITE_GS_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, GSBallScript, EVENT_GS_BALL_ENCOUNTER
	object_event  6,  4, SPRITE_AIDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CharityScript, -1
	object_event  7,  5, SPRITE_AIDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TestScript, -1

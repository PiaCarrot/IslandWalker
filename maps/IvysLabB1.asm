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
	
	para "There's not many"
	line "#BALL crafters"
	cont "left in the world,"
	cont "and the masters,"
	cont "even fewer."
	
	para "So, I propose that"
	line "you will hold onto"
	cont "it. On the other"
	cont "end of the islands"
	cont "is a place called"
	cont "HAMLIN ISLAND."
	
	para "A fellow #MON"
	line "researcher will be"
	cont "visiting the area"
	cont "soon."
	
	para "His name is SAMSON"
	line "OAK. He's the cou-"
	cont "sin of the esteem-"
	cont "ed PROF. OAK of"
	cont "the KANTO region."
	
	para "Take the GS BALL"
	line "to SAMSON. He has"
	cont "agreed to take a"
	cont "look at it."
	
	para "It isn't urgent."
	line "He will be staying"
	cont "the entire summer."
	cont "Now, go ahead and"
	cont "take it."
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
	verbosegiveitem GS_BALL
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

IvysLabB1OldTV:
	jumptext IvysLabB1OldTVText
	
IvysLabB1OldTVText:
	text "Looks like an old"
	line "radar for sonar."
	done

IvysLabBasementTookGSBallText:
	text "IVY: Alright! I"
	line "think you're good"
	cont "to go!"
	
	para "Good luck on your"
	line "travels, <PLAYER>!"
	done

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

	def_object_events
	object_event  3,  2, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ProfessorIvyBasementScript, EVENT_GS_BALL_IVY
	object_event  2,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, GSBallScript, EVENT_GS_BALL_ENCOUNTER
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1

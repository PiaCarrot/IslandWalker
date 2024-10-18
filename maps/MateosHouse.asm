	object_const_def
	const MATEOS_HOUSE_FIGURINE_1
	const MATEOS_HOUSE_FIGURINE_2
	const MATEOS_HOUSE_FIGURINE_3
	const MATEOS_HOUSE_FIGURINE_4
	const MATEOS_HOUSE_MATEO
	const MATEOS_HOUSE_MARISSA
	const MATEOS_HOUSE_BROCK

MateosHouse_MapScripts:
	def_scene_scripts
	scene_script MateosHouseBrockScene, SCENE_MATEOS_HOUSE_BROCK
	scene_script MateosHouseNoopScene, SCENE_MATEOS_HOUSE_NOOP

	def_callbacks
	
MateosHouseBrockScene:
	sdefer MateosHouseBrockSceneScript
	end
	
MateosHouseBrockSceneScript:
	turnobject MATEOS_HOUSE_BROCK, DOWN
	showemote EMOTE_SHOCK, MATEOS_HOUSE_BROCK, 15
	turnobject MATEOS_HOUSE_BROCK, UP
	opentext
	writetext MateosHouseBrockText1
	waitbutton
	closetext
	applymovement PLAYER, MateosHousePlayerMovement
	turnobject MATEOS_HOUSE_MATEO, LEFT
	opentext
	writetext MateosHouseBrockText2
	waitbutton
	closetext
	applymovement MATEOS_HOUSE_BROCK, MateosHouseBrockMovement
	turnobject PLAYER, DOWN
	opentext
	writetext MateosHouseBrockText3
	yesorno
	turnobject PLAYER, RIGHT
	writetext MateosHouseBrockText4
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	opentext
	writetext MateosHouseBrockText5
	yesorno
	iffalse .AskAgain
.Continue
	writetext MateosHouseBrockText7
	waitbutton
	closetext
	applymovement MATEOS_HOUSE_BROCK, MateosHouseBrockMovement2
	playsound SFX_EXIT_BUILDING
	disappear MATEOS_HOUSE_BROCK
	waitsfx
	turnobject PLAYER, RIGHT
	opentext
	writetext MateosHouseBrockText8
	waitbutton
	closetext
	applymovement MATEOS_HOUSE_MATEO, MateosHouseMateoMovement
	playsound SFX_EXIT_BUILDING
	disappear MATEOS_HOUSE_MATEO
	waitsfx
	setevent EVENT_MATEO_SIDEQUEST_STARTED
	setscene SCENE_MATEOS_HOUSE_NOOP
	end
	
.AskAgain:
	writetext MateosHouseBrockText6
	yesorno
	iffalse .AskAgain
	sjump .Continue
	
MateosHouseNoopScene:
	end
	
MateosHouseCrystalScript:
	jumptext MateosHouseCrystalText
	
MateosHouseCrystalText:
	text "A crystal figurine"
	line "of a #MON."
	
	para "I better not break"
	line "it!"
	done
	
MateosCrucibleScript:
	jumptext MateosCrucibleText
	
MateosCrucibleText:
	text "A red-hot crucible"
	line "for heating up the"
	cont "crystal."
	
	para "It looks VERY hot!"
	done
	
MateosOvenScript:
	jumptext MateosOvenText
	
MateosOvenText:
	text "A hot stone oven"
	line "for heating up the"
	cont "crystal."
	
	para "You could probably"
	line "bake bread in it…"
	done

CrystalOnixFigurineScript:
	jumptext CrystalOnixFigurineText
	
CrystalOnixFigurineText:
	text "A huge sculpture"
	line "of the CRYSTAL"
	cont "ONIX. It looks so"
	cont "life-like!"
	done

MateosHouseBrockText1:
	text "???: It's settled"
	line "then!"
	
	para "???: MR. BROCK, I-"
	
	para "BROCK: Hahaha! No"
	line "problems! Consider"
	cont "that CRYSTAL ONIX"
	cont "found!"
	done
	
MateosHouseBrockText2:
	text "???: Oh, hello."
	line "My name's MATEO."
	cont "I run this work-"
	cont "shop."
	
	para "This is my little"
	line "sister MARISSA,"
	cont "and this man is"
	cont "MR. BROCK from"
	cont "the KANTO region."
	done
	
MateosHouseBrockText3:
	text "BROCK: Hey, have"
	line "you ever heard of"
	cont "the CRYSTAL ONIX?"
	done
	
MateosHouseBrockText4:
	text "MATEO: My grandpa"
	line "was the greatest"
	cont "artisan that this"
	cont "island ever knew."
	
	para "He once told me"
	line "that in his youth,"
	cont "he ventured into"
	cont "CRYSTAL CAVE and"
	cont "met an ONIX made"
	cont "of pure CRYSTAL."
	
	para "He's gone now, and"
	line "the shop is going"
	cont "downhill."
	
	para "I can't sculpt like"
	line "my grandpa, but if"
	cont "I saw that CRYSTAL"
	cont "ONIX, then surely,"
	cont "my PASSION will be"
	cont "restored."
	done
	
MateosHouseBrockText5:
	text "BROCK: So, after"
	line "hearing that, are"
	cont "you interested?"
	
	para "I want to catch"
	line "that CRYSTAL ONIX,"
	cont "but I'm willing to"
	cont "compete with you"
	cont "for it!"
	
	para "What do you say?"
	done
	
MateosHouseBrockText6:
	text "BROCK: Aw, c'mon!"
	line "Don't you have a"
	cont "sense of adventure"
	cont "in you?"
	
	para "What do you say?"
	done
	
MateosHouseBrockText7:
	text "BROCK: Yeah!"
	line "Let's go find the"
	cont "CRYSTAL CAVE!"
	done
	
MateosHouseBrockText8:
	text "MATEO: I really do"
	line "appreciate this!"
	cont "My grandpa said he"
	cont "met CRYSTAL ONIX"
	cont "in a hidden cave."
	
	para "It must be on the"
	line "island somewhere."
	
	para "Let's try to find"
	line "it!"
	done

MateosHousePlayerMovement:
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end
	
MateosHouseBrockMovement:
	step LEFT
	turn_head UP
	step_end
	
MateosHouseBrockMovement2:
	step DOWN
	step DOWN
	step_sleep 24
	step_end
	
MateosHouseMateoMovement:
	step DOWN
	step DOWN
	step DOWN
	step_sleep 24
	step_end
	
MarissaScript:
	faceplayer
	opentext
	writetext MarissaText1
	waitbutton
	closetext
	end
	
MarissaText1:
	text "MARISSA: Good luck"
	line "on finding CRYSTAL"
	cont "ONIX! I don't want"
	cont "grandpa's shop to"
	cont "close down…"
	done

MateosHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, SUNBURST_ISLAND, 2
	warp_event  6, 11, SUNBURST_ISLAND, 2

	def_coord_events

	def_bg_events
	bg_event  4,  6, BGEVENT_READ, MateosCrucibleScript
	bg_event  6,  4, BGEVENT_READ, MateosOvenScript

	def_object_events
	object_event 11,  6, SPRITE_STARMIE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, MateosHouseCrystalScript, -1
	object_event  0,  4, SPRITE_GEODUDE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, MateosHouseCrystalScript, -1
	object_event  0,  8, SPRITE_VOLTORB, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, MateosHouseCrystalScript, -1
	object_event 10, 10, SPRITE_BIG_ONIX, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, PAL_NPC_COPY_BG_YELLOW, OBJECTTYPE_SCRIPT, 0, CrystalOnixFigurineScript, EVENT_MATEOS_PASSION_RESTORED
	object_event  6,  8, SPRITE_MATEO, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MATEO_LEFT_SHOP
	object_event  7,  8, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 1, 1, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, MarissaScript, -1
	object_event  6,  9, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BROCK_LEFT_SHOP

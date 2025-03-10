	object_const_def
	const CRYSTAL_CAVE_1F_BROCK
	const CRYSTAL_CAVE_1F_MATEO

CrystalCave1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
CrystalCave1FMateoScript:
	opentext
	writetext CrystalCave1FMateoText1
	waitbutton
	closetext
	pause 15
	turnobject CRYSTAL_CAVE_1F_BROCK, DOWN
	opentext
	writetext CrystalCave1FMateoText2
	waitbutton
	closetext
	applymovement CRYSTAL_CAVE_1F_BROCK, CrystalCave1FBrockMovement
	turnobject CRYSTAL_CAVE_1F_MATEO, DOWN
	opentext
	writetext CrystalCave1FMateoText3
	waitbutton
	closetext
	turnobject CRYSTAL_CAVE_1F_MATEO, UP
	pause 15
	showemote EMOTE_SHOCK, CRYSTAL_CAVE_1F_MATEO, 15
	opentext
	writetext CrystalCave1FMateoText4
	waitbutton
	closetext
	applymovement CRYSTAL_CAVE_1F_MATEO, CrystalCave1FMateoMovement
	disappear CRYSTAL_CAVE_1F_BROCK
	disappear CRYSTAL_CAVE_1F_MATEO
	setevent EVENT_CRYSTAL_CAVE_1F_SCENE
	end
	
CrystalCave1FMateoText1:
	text "MATEO: This cave…"
	line "It's massive! Where"
	cont "do we even start?"
	done
	
CrystalCave1FMateoText2:
	text "BROCK: This cave"
	line "probably floods on"
	cont "occasion. There's"
	cont "seawater here."
	
	para "There must be some"
	line "high ground that"
	cont "leads deeper into"
	cont "the cave. As it"
	cont "happens, ONIX don't"
	cont "like WATER."
	done
	
CrystalCave1FMateoText3:
	text "MATEO: I'm not so"
	line "sure about that."
	
	para "If ONIX is made of"
	line "CRYSTAL, WATER is"
	cont "not a problem for"
	cont "it. The opposite,"
	cont "in fact. It should"
	cont "be wary of extreme"
	cont "heat."
	done
	
CrystalCave1FMateoText4:
	text "Wait for me, MR."
	line "BROCK!"
	done
	
CrystalCave1FBrockMovement:
	step UP
	step UP
	step_end
	
CrystalCave1FMateoMovement:
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	step_end

CrystalCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 23, SUNBURST_ISLAND, 6
	warp_event 11,  3, CRYSTAL_CAVE_B1F, 1
	warp_event 18,  1, CRYSTAL_CAVE_GATE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 23, 18, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CRYSTAL_CAVE_1F_SCENE
	object_event 23, 20, SPRITE_MATEO, SPRITEMOVEDATA_STANDING_UP, 1, 1, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, CrystalCave1FMateoScript, EVENT_CRYSTAL_CAVE_1F_SCENE

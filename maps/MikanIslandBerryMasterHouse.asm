	object_const_def
	const MIKAN_BERRY_MASTER
	const MIKAN_BERRY_MASTER_WIFE

MikanIslandBerryMasterHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanBerryMasterScript:
	faceplayer
	opentext
	checkitem BERRY_LOG
	iftrue .AlreadyGotBerryLog
	writetext MikanBerryMasterText
	waitbutton
	verbosegiveitem BERRY_LOG
.AlreadyGotBerryLog:
	writetext MikanBerryMasterText2
	waitbutton
	closetext
	end

MikanBerryMasterText:
	text "Hello, there! I'm"
	line "the BERRY MASTER!"
	
	para "I moved here from"
	line "the GALAR region"
	cont "in order to study"
	cont "BERRIES."
	
	para "BERRIES are a very"
	line "useful thing for a"
	cont "trainer like you."
	
	para "Take this. I hope"
	line "it helps you!"
	done
	
MikanBerryMasterText2:
	text "That's the BERRY"
	line "LOG. It's a compen-"
	cont "dium of BERRIES I"
	cont "have studied."
	
	para "It's like a cheat"
	line "sheet for survival"
	cont "in the outdoors!"
	done
	
MikanBerryMasterWifeScript:
	jumptextfaceplayer MikanBerryMasterWifeText
	
MikanBerryMasterWifeText:
	text "My husband loves a"
	line "dish called EGGANT"
	cont "in chili sauce."
	
	para "The EGGANT BERRY"
	line "needed for it only"
	cont "grows here in the"
	cont "ORANGE ISLANDS."
	
	para "I'm sure there are"
	line "many BERRIES that"
	cont "can only be found"
	cont "here."
	done
	
MikanIslandBerryMasterHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MIKAN_ISLAND, 4
	warp_event  3,  7, MIKAN_ISLAND, 4

	def_coord_events

	def_bg_events

	def_object_events ;TODO: Add a Galarian Zigzagoon named Rosebud here
	object_event  2,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, MikanBerryMasterScript, -1
	object_event  5,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, MikanBerryMasterWifeScript, -1

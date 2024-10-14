	object_const_def
	const MANDARIN_NORTH_CUT_MASTER_HOUSE_CUT_MASTER
	const MANDARIN_NORTH_CUT_MASTER_HOUSE_FARFETCHD
	const MANDARIN_NORTH_CUT_MASTER_HOUSE_CROSS

MandarinNorthCutMasterHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
MandarinNorthCutMasterScript:
	faceplayer
	opentext
	checkevent EVENT_HM_01_CUT
	iftrue .AlreadyGotHM01
	checkevent EVENT_MANDARIN_NORTH_CLEARED_RADIO_TOWER
	iffalse .RocketRadioCleared
	writetext MandarinNorthCutMasterText1
	waitbutton
	closetext
	end
	
.AlreadyGotHM01:
	writetext MandarinNorthCutMasterText2
	waitbutton
	closetext
	end
	
.RocketRadioCleared:
	writetext MandarinNorthCutMasterText3
	waitbutton
	verbosegiveitem HM_CUT
	writetext MandarinNorthCutMasterText2
	waitbutton
	closetext
	setevent EVENT_HM_01_CUT
	end
	
MandarinNorthCutMasterText1:
	text "Leave me alone! I"
	line "don't feel like"
	cont "teaching CUT when"
	cont "FARFETCH'D could"
	cont "be anywhere!"
	
	para "Oh, FARFETCH'D!"
	line "Buhuhuhu…"
	done
	
MandarinNorthCutMasterText2:
	text "Use CUT to clear"
	line "small trees that"
	cont "block your path!"
	cont "It can even clear"
	cont "patches of grass!"
	done
	
MandarinNorthCutMasterText3:
	text "My FARFETCH'D came"
	line "back! I'm so happy"
	cont "now!"
	
	para "Huh? You want HM01"
	line "CUT too? Of course"
	cont "you can have it!"
	done
	
MandarinNorthFarfetchdScript:
	opentext
	writetext MandarinNorthFarfetchdText
	cry FARFETCH_D
	waitbutton
	closetext
	end
	
MandarinNorthFarfetchdText:
	text "FARFETCH'D: Quack!"
	done
	
CutMasterHouseCrossScript:
	jumptext CutMasterHouseCrossText
	
CutMasterHouseCrossText:
	text "I don't care about"
	line "your dumb bird!"
	
	para "Give me the HM for"
	line "CUT, old man!"
	done
	
MandarinNorthCutMasterHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MANDARIN_NORTH, 3
	warp_event  3,  7, MANDARIN_NORTH, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MandarinNorthCutMasterScript, -1
	object_event  7,  1, SPRITE_BIRD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MandarinNorthFarfetchdScript, EVENT_MANDARIN_NORTH_CLEARED_RADIO_TOWER
	object_event  5,  5, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, CutMasterHouseCrossScript, EVENT_MANDARIN_NORTH_CROSS_LEAVING_CUT_MASTER

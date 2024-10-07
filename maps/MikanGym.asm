	object_const_def

MikanGym_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanGymSign:
	opentext
	checkevent EVENT_CISSY_DEFEATED
	iftrue .CissyBeatenSignText
	writetext CissyUnbeatenSignText
	waitbutton
	closetext
	end
	
.CissyBeatenSignText:
	writetext CissyBeatenSignText
	waitbutton
	closetext
	end
	
CissyUnbeatenSignText:
	text "MIKAN ISLAND GYM"
	
	para "CERTIFIED TRAINERS"
	line "CROSS"
	cont "TRACEY"
	done
	
CissyBeatenSignText:
	text "MIKAN ISLAND GYM"
	
	para "CERTIFIED TRAINERS"
	line "CROSS"
	cont "TRACEY"
	cont "<PLAYER>"
	done

MikanGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 19, MIKAN_ISLAND, 7
	warp_event  9, 19, MIKAN_ISLAND, 7
	warp_event 10, 19, MIKAN_ISLAND, 8
	warp_event 11, 19, MIKAN_ISLAND, 8
	warp_event  5,  2, MIKAN_GYM, 6
	warp_event 14, 19, MIKAN_GYM, 6
	def_coord_events

	def_bg_events
	bg_event  6, 18, BGEVENT_READ, MikanGymSign
	bg_event 13, 18, BGEVENT_READ, MikanGymSign

	def_object_events
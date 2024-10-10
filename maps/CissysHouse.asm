	object_const_def
	const MIKAN_THICKET_SENTA

CissysHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
SentaCissysHouseScript:
	faceplayer
	checkevent EVENT_DANNY_DEFEATED
	iftrue .SentaAcknowledgesYou
	opentext
	writetext SentaPostCissyText
	waitbutton
	closetext
	end
	
.SentaAcknowledgesYou: ;TODO: IDK, maybe make him give you something
	opentext
	writetext SentaPostDrakeText
	waitbutton
	closetext
	end

SentaPostCissyText:
	text "SENTA: Hmph!"
	
	para "I won't acknowled-"
	line "ge your victory"
	cont "unless you beat"
	cont "the ORANGE CREW!"
	
	para "You only beat my"
	line "big sis because"
	cont "you were lucky!"
	done
	
SentaPostDrakeText:
	text "SENTA: Hmph!"
	
	para "I acknowledge your"
	line "skill. Rematch my"
	cont "sister anytime you"
	cont "want to!"
	done
	
CissysHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MIKAN_THICKET, 4
	warp_event  3,  7, MIKAN_THICKET, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_SENTA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, SentaCissysHouseScript, EVENT_SENTA_AT_HOME
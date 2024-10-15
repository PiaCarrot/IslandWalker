	object_const_def
	const RATICATE_RADIO_LOBBY_RECEPTIONIST
	const RATICATE_RADIO_LOBBY_LOOKER

RaticateRadioLobby_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RaticateRadioLobbyCallback

RaticateRadioLobbyCallback:
	checkevent EVENT_RATICATE_RADIO_SWITCH_PRESSED
	iffalse .Done
	changeblock 10, 10, $61
.Done:
	endcallback
	
RaticateRadioLobbySwitch:
	checkevent EVENT_RATICATE_RADIO_SWITCH_PRESSED
	iftrue .AlreadyPressed
	opentext
	writetext RaticateRadioFoundASwitchText
	yesorno
	iftrue .PressSwitch
	closetext
	end
	
.AlreadyPressed:
	opentext
	writetext RaticateRadioFoundASwitchText2
	waitbutton
	closetext
	end
	
.PressSwitch:
	closetext
	changeblock 10, 10, $61
	playsound SFX_ENTER_DOOR
	waitsfx
	setevent EVENT_RATICATE_RADIO_SWITCH_PRESSED
	opentext
	writetext RaticateRadioFoundASwitchText3
	waitbutton
	closetext
	pause 15
	showemote EMOTE_SHOCK, RATICATE_RADIO_LOBBY_LOOKER, 15
	opentext
	writetext RaticateRadioLobbyLookerText2
	waitbutton
	closetext
	applymovement RATICATE_RADIO_LOBBY_LOOKER, RadioTowerLobbyLookerMovement
	disappear RATICATE_RADIO_LOBBY_LOOKER
	playsound SFX_ENTER_DOOR
	waitsfx
	setevent EVENT_RATICATE_RADIO_LOBBY_LOOKER
	end
	
RaticateRadioFoundASwitchText:
	text "Oh? A switch is"
	line "hidden next to the"
	cont "plant. Press it?"
	done
	
RaticateRadioFoundASwitchText2:
	text "The switch has"
	line "been pressed!"
	done
	
RaticateRadioFoundASwitchText3:
	text "A hidden path has"
	line "been revealed!"
	done
	
RaticateRadioLobbyReceptionistScript:
	faceplayer
	opentext
	writetext RaticateRadioLobbyReceptionistText1
	waitbutton
	closetext
	winlosstext RaticateRadioLobbyReceptionistWinText, 0
	setlasttalked RATICATE_RADIO_LOBBY_RECEPTIONIST
	loadtrainer GRUNTF, AGENTF_4
	startbattle
	reloadmapafterbattle
	disappear RATICATE_RADIO_LOBBY_RECEPTIONIST
	setevent EVENT_BEAT_AGENTF_4
	end
	
RaticateRadioLobbyReceptionistText1:
	text "Hi! Welcome to the"
	line "RATICATE RADIO"
	cont "STATION. We do not"
	cont "allow visitors at"
	cont "this time. Please"
	cont "leave!"
	
	para "… … …"
	
	para "The POLICE?"
	line "I was told not to"
	cont "let ANYONE in!"
	done

RaticateRadioLobbyReceptionistWinText:
	text "I'm out of here!"
	done
	
RaticateRadioLobbyLookerScript:
	jumptext RaticateRadioLobbyLookerText
	
RaticateRadioLobbyLookerText:
	text "LOOKER: This wall"
	line "sounds hollow…"
	
	para "Is that you, <№>."
	line "1000? Look for a"
	cont "switch, somewhere."
	done
	
RaticateRadioLobbyLookerText2:
	text "LOOKER: Aha!"
	done
	
RadioTowerLobbyLookerMovement:
	step UP
	step_end

RaticateRadioLobby_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 11, MANDARIN_NORTH, 7
	warp_event  3, 11, MANDARIN_NORTH, 8
	warp_event 11, 10, RATICATE_RADIO_B1F, 1

	def_coord_events

	def_bg_events
	bg_event  9,  7, BGEVENT_READ, RaticateRadioLobbySwitch

	def_object_events
	object_event  3,  7, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RaticateRadioLobbyReceptionistScript, EVENT_BEAT_AGENTF_4
	object_event 11, 11, SPRITE_LOOKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RaticateRadioLobbyLookerScript, EVENT_RATICATE_RADIO_LOBBY_LOOKER ; Looker

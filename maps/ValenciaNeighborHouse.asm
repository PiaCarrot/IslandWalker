	object_const_def
	const VALENCIA_NEIGHBOR
	const VALENCIA_NEIGHBOR_MAP

ValenciaNeighborHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
ValenciaNeighborScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TOWN_MAP
	iftrue .AlreadyGotTownMap
	writetext ValenciaNeighborGiveTownMap
	waitbutton
	verbosegiveitem SEA_MAP
	setevent EVENT_GOT_TOWN_MAP
	disappear VALENCIA_NEIGHBOR_MAP
.AlreadyGotTownMap
	writetext ValenciaNeighborAlreadyGotTownMap
.Continue
	waitbutton
	closetext
	end
	
ValenciaTownMapScript:
	jumptext TownMapText
	
	
ValenciaNeighborGiveTownMap:
	text "Hey, <PLAYER>! I"
	line "got you something"
	cont "for your journey!"
	done
	
ValenciaNeighborAlreadyGotTownMap:
	text "That SEA MAP is"
	line "truly essential!"
	cont "If you get lost,"
	cont "make sure to take"
	cont "a look at it!"
	done
	
TownMapText:
	text "It's a map of the"
	line "ORANGE ARCHIPELAGO"
	cont "entirely."
	done

ValenciaNeighborHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VALENCIA_ISLAND, 2
	warp_event  3,  7, VALENCIA_ISLAND, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ValenciaNeighborScript, -1
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ValenciaTownMapScript, EVENT_GOT_TOWN_MAP

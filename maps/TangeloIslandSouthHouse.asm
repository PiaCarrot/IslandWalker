	object_const_def
	const TANGELO_SOUTH_HOUSE_GENTLEMAN
	const TANGELO_SOUTH_HOUSE_POKEBALL

TangeloIslandSouthHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
CyndaquilGiftScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CYNDAQUIL_FROM_TANGELO
	iftrue .AlreadyGotCyndaquil
	writetext CyndaquilGiftText1
	waitbutton
	closetext
	end
	
.AlreadyGotCyndaquil
	writetext CyndaquilGiftText2
	waitbutton
	closetext
	end
	
CyndaquilGiftText1:
	text "Greetings to you,"
	line "young trainer."
	
	para "It's rare that I"
	line "have a visitor"
	cont "these days."
	
	para "If you would, I"
	line "no longer travel."
	cont "On that table is"
	cont "a #MON that I"
	cont "can no longer"
	cont "raise."
	
	para "I pray that you"
	line "may take it and"
	cont "raise it with love"
	cont "and care."
	done
	
CyndaquilGiftText2:
	text "I pray that you"
	line "may take that"
	cont "#MON and raise it"
	cont "with love and"
	cont "care."
	done
	
CyndaquilPokeballTangeloScript:
	opentext
	writetext CyndaquilPokeballTangeloText
	yesorno
	iftrue .ObtainedCyndaquil
	closetext
	end
	
.ObtainedCyndaquil:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedCyndaquilText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CYNDAQUIL, 5, BERRY ;ORAN_BERRY
	closetext
	setevent EVENT_GOT_CYNDAQUIL_FROM_TANGELO
	disappear TANGELO_SOUTH_HOUSE_POKEBALL
	end
	
.NoRoom:
	writetext CyndaquilPartyFullText
	waitbutton
	closetext
	end
	
CyndaquilPokeballTangeloText:
	text "As you look at the"
	line "#BALL, the man"
	cont "nods in approval."

	para "CYNDAQUIL seems"
	line "eager to join you."
	cont "Take CYNDAQUIL?"
	done
	
CyndaquilPartyFullText:
	text "Your party is"
	line "full."
	done
	
ReceivedCyndaquilText:
	text "<PLAYER> received"
	line "CYNDAQUIL!"
	done
	
	
TangeloIslandSouthHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, TANGELO_ISLAND, 5
	warp_event  3,  7, TANGELO_ISLAND, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CyndaquilGiftScript, -1
	object_event  2,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyndaquilPokeballTangeloScript, EVENT_GOT_CYNDAQUIL_FROM_TANGELO

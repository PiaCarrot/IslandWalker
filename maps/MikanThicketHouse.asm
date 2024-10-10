	object_const_def
	const MIKAN_THICKET_FLOWER_GIRL
	const MIKAN_THICKET_CHIKORITA

MikanThicketHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
ChikoritaGiftScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHIKORITA_FROM_MIKAN_THICKET
	iftrue .AlreadyGotChikorita
	writetext ChikoritaGiftText1
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_FLOWER_GIRL
	end
	
.AlreadyGotChikorita
	writetext ChikoritaGiftText2
	waitbutton
	closetext
	end
	
ChikoritaGiftText1:
	text "Fufu… Hi, sweetie."
	
	para "I tend to all of"
	line "the plants around"
	cont "here…"
	
	para "I found CHIKORITA"
	line "being attacked by"
	cont "some PAWNIARD…"
	
	para "I'm no trainer…"
	line "So I can't raise"
	cont "it to fend for it-"
	cont "self…"
	
	para "I'm sure CHIKORITA"
	line "would be a huge"
	cont "help. You can take"
	cont "it, if you want…"
	done
	
ChikoritaGiftText2:
	text "Fufu…"
	
	para "Take good care of"
	line "CHIKORITA. It's a"
	cont "rare #MON…"
	done
	
ChikoritaMikanScript:
	opentext
	checkevent EVENT_TALKED_TO_FLOWER_GIRL
	iffalse .TalkToMeFirst
	cry CHIKORITA
	waitsfx
	writetext ChikoritaMikanText
	yesorno
	iftrue .ObtainedChikorita
	closetext
	end
	
.TalkToMeFirst
	turnobject PLAYER, LEFT
	writetext ChikoritaMikanText2
	waitbutton
	closetext
	end
	
.ObtainedChikorita:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedChikoritaText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CHIKORITA, PLAIN_FORM, 5, ORAN_BERRY
	closetext
	setevent EVENT_GOT_CHIKORITA_FROM_MIKAN_THICKET
	disappear MIKAN_THICKET_CHIKORITA
	end
	
.NoRoom:
	writetext ChikoritaPartyFullText
	waitbutton
	closetext
	end
	
ChikoritaMikanText:
	text "CHIKORITA seems"
	line "eager to join you."
	cont "Take CHIKORITA?"
	done
	
ChikoritaPartyFullText:
	text "Your party is"
	line "full."
	done
	
ReceivedChikoritaText:
	text "<PLAYER> received"
	line "CHIKORITA!"
	done
	
ChikoritaMikanText2:
	text "Ara…"
	line "Did CHIKORITA's"
	cont "SWEET SCENT lure"
	cont "you in?"
	
	para "Let's have a chat…"
	done
	
MikanThicketHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MIKAN_THICKET, 3
	warp_event  3,  7, MIKAN_THICKET, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ChikoritaGiftScript, -1
	object_event  5,  3, SPRITE_CHIKORITA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ChikoritaMikanScript, EVENT_GOT_CHIKORITA_FROM_MIKAN_THICKET

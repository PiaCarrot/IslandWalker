	object_const_def
	const TANGELO_JUNGLE_GURU
	const TANGELO_JUNGLE_TOTODILE

TangeloJungleHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
TotodileGiftScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TOTODILE_FROM_TANGELO
	iftrue .AlreadyGotTotodile
	writetext TotodileGiftText1
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_JUNGLE_GURU
	end
	
.AlreadyGotTotodile
	writetext TotodileGiftText2
	waitbutton
	closetext
	end
	
TotodileGiftText1:
	text "I've been fishin'"
	line "in this river all"
	cont "my life, but I've"
	cont "never seen a #-"
	cont "MON like that!"
	
	para "It keeps bitin'"
	line "me, and I can't"
	cont "handle it!"
	
	para "Look, I see you're"
	line "a trainer. I'm not"
	cont "sayin' to take it,"
	cont "but I'm also not"
	cont "sayin' you can't!"
	done
	
TotodileGiftText2:
	text "Phew!"
	
	para "Good riddance to"
	line "that menace! River"
	cont "monsters ain't all"
	cont "what they're crac-"
	cont "ked up to be!"
	done
	
TotodileTangeloScript:
	opentext
	checkevent EVENT_TALKED_TO_JUNGLE_GURU
	iffalse .TalkToMeFirst
	cry TOTODILE
	waitsfx
	writetext TotodileTangeloText
	yesorno
	iftrue .ObtainedTotodile
	closetext
	end
	
.TalkToMeFirst
	turnobject PLAYER, LEFT
	writetext TotodileTangeloText2
	waitbutton
	closetext
	end
	
.ObtainedTotodile:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedTotodileText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke TOTODILE, PLAIN_FORM, 5, ORAN_BERRY
	closetext
	setevent EVENT_GOT_TOTODILE_FROM_TANGELO
	disappear TANGELO_JUNGLE_TOTODILE
	end
	
.NoRoom:
	writetext TotodilePartyFullText
	waitbutton
	closetext
	end
	
TotodileTangeloText:
	text "TOTODILE seems"
	line "eager to join you."
	cont "Take TOTODILE?"
	done
	
TotodilePartyFullText:
	text "Your party is"
	line "full."
	done
	
ReceivedTotodileText:
	text "<PLAYER> received"
	line "TOTODILE!"
	done
	
TotodileTangeloText2:
	text "Hey, that thing"
	line "is dangerous!"
	cont "Come here and talk"
	cont "to me!"
	done
	
TangeloJungleHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, TANGELO_JUNGLE, 3
	warp_event  3,  7, TANGELO_JUNGLE, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TotodileGiftScript, -1
object_event  7,  5, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TotodileTangeloScript, EVENT_GOT_TOTODILE_FROM_TANGELO, TOTODILE

	object_const_def

RaticateRadioB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
RaticateRadioTMThief:
	end
	
RaticateRadioEscapeRope:
	itemball ESCAPE_ROPE
	
RaticateRadioSmokeBall:
	itemball SMOKE_BALL
	
RaticateRadioB1FGrunt1Script:
	trainer GRUNTM, AGENTM_1, EVENT_BEAT_AGENTM_1, RaticateRadioB1FGrunt1SeenText, RaticateRadioB1FGrunt1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt1AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt1SeenText:
	text "We'll steal every"
	line "#MON on this"
	cont "island, and you"
	cont "can't stop us!"
	done

RaticateRadioB1FGrunt1BeatenText:
	text "But you can stop"
	line "me, I guess."
	done

RaticateRadioB1FGrunt1AfterText:
	text "You may have beat"
	line "me, but BUTCH and"
	cont "CASSIDY are TOP"
	cont "AGENTS. They won't"
	cont "be so easy."
	done

RaticateRadioB1FGrunt2Script: ; BEEDRILL PUNK
	trainer GRUNTM, BEEDRILL_GRUNT_1, EVENT_BEAT_BEEDRILL_GRUNT_1, RaticateRadioB1FGrunt2SeenText, RaticateRadioB1FGrunt2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt2AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt2SeenText:
	text "It's the brat from"
	line "TANGELO ISLAND!"
	done

RaticateRadioB1FGrunt2BeatenText:
	text "Ack! My BEEDRILL!"
	done

RaticateRadioB1FGrunt2AfterText:
	text "Because of you,"
	line "we didn't rank up!"
	cont "I curse you!"
	done

RaticateRadioB1FGrunt3Script:
	trainer GRUNTM, AGENTM_2, EVENT_BEAT_AGENTM_2, RaticateRadioB1FGrunt3SeenText, RaticateRadioB1FGrunt3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt3AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt3SeenText:
	text "TEAM ROCKET OATH:"

	para "Steal #MON for"
	line "profit!"

	para "Exploit #MON"
	line "for profit!"

	para "All #MON exist"
	line "for the glory of"
	cont "TEAM ROCKET!"
	done

RaticateRadioB1FGrunt3BeatenText:
	text "All Hail GIOVANNI!"
	done

RaticateRadioB1FGrunt3AfterText:
	text "Oh? I'll gladly re-"
	line "cite the OATH for"
	cont "you!"
	
	para "TEAM ROCKET OATH:"

	para "Steal #MON for"
	line "profit!"

	para "Exploit #MON"
	line "for profit!"

	para "All #MON exist"
	line "for the glory of"
	cont "TEAM ROCKET!"
	done

RaticateRadioB1FGrunt4Script: ; HITMONCHAN PUNK
	trainer GRUNTM, HITMONCHAN_GRUNT_1, EVENT_BEAT_HITMONCHAN_GRUNT_1, RaticateRadioB1FGrunt4SeenText, RaticateRadioB1FGrunt4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt4AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt4SeenText:
	text "We didn't get to"
	line "battle on TANGELO"
	cont "ISLAND. I finally"
	cont "get my chance!"
	done

RaticateRadioB1FGrunt4BeatenText:
	text "If only I had that"
	line "LAPRAS!"
	done

RaticateRadioB1FGrunt4AfterText:
	text "Tch. HITMONCHAN?"
	line "More like…"
	
	para "HITMONCHUMP!"
	done

RaticateRadioB1FGrunt5Script:
	trainer GRUNTF, AGENTF_1, EVENT_BEAT_AGENTF_1, RaticateRadioB1FGrunt5SeenText, RaticateRadioB1FGrunt5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt5AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt5SeenText:
	text "… … …"
	
	para "What the-?"
	line "Intruder!"
	done

RaticateRadioB1FGrunt5BeatenText:
	text "… … …"
	line "Get out of here!"
	done

RaticateRadioB1FGrunt5AfterText:
	text "… … …"

	para "What seems to be"
	line "the officer,"
	cont "problem?"
	
	para "… … …"

	para "I said it wrong."
	line "Embarassing…"
	done

RaticateRadioB1FGrunt6Script:
	trainer GRUNTF, AGENTF_2, EVENT_BEAT_AGENTF_2, RaticateRadioB1FGrunt6SeenText, RaticateRadioB1FGrunt6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt6AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt6SeenText:
	text "Huh? Having fun,"
	line "are we?"
	done

RaticateRadioB1FGrunt6BeatenText:
	text "That's not very"
	line "fun!"
	done

RaticateRadioB1FGrunt6AfterText:
	text "Don't tell CASSIDY,"
	line "but I'm goofing off"
	cont "down here."
	done

RaticateRadioB1FGrunt7Script: ;SPEAROW PUNK
	trainer GRUNTM, SPEAROW_GRUNT_1, EVENT_BEAT_SPEAROW_GRUNT_1, RaticateRadioB1FGrunt7SeenText, RaticateRadioB1FGrunt7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt7AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt7SeenText:
	text "You again?!"
	done

RaticateRadioB1FGrunt7BeatenText:
	text "Oh, for crying out"
	line "loud!"
	done

RaticateRadioB1FGrunt7AfterText:
	text "I told that idiot"
	line "BUTCH that SPEAROW"
	cont "was too weak, but"
	cont "does anyone ever"
	cont "listen? Argh!"
	done

RaticateRadioB1FGrunt8Script:
	trainer GRUNTF, AGENTF_3, EVENT_BEAT_AGENTF_3, RaticateRadioB1FGrunt8SeenText, RaticateRadioB1FGrunt8BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FGrunt8AfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FGrunt8SeenText:
	text "Who are you?!"
	done

RaticateRadioB1FGrunt8BeatenText:
	text "Wait!"
	done

RaticateRadioB1FGrunt8AfterText:
	text "I took the wrong"
	line "warp pad, and now"
	cont "I'm lost…"
	done

RaticateRadioB1FScientistScript:
	trainer SCIENTIST, NAMBA_1, EVENT_BEAT_SCIENTIST_NAMBA_1, RaticateRadioB1FScientistSeenText, RaticateRadioB1FScientistBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RaticateRadioB1FScientistAfterText
	waitbutton
	closetext
	end
	
RaticateRadioB1FScientistSeenText:
	text "Missing #MON?"
	line "Hehehe!"
	done

RaticateRadioB1FScientistBeatenText:
	text "My inventions are"
	line "perfect!"
	done

RaticateRadioB1FScientistAfterText:
	text "With my technology"
	line "and DROWZEE, all"
	cont "the #MON on the"
	cont "island have been"
	cont "brainwashed! Hehe!"
	done

RaticateRadioB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 39,  0, MANDARIN_NORTH, 7
	warp_event 24,  3, RATICATE_RADIO_B1F, 3
	warp_event 39, 11, RATICATE_RADIO_B1F, 2
	warp_event 32, 23, RATICATE_RADIO_B1F, 5
	warp_event  0,  3, RATICATE_RADIO_B1F, 4
	warp_event 14,  3, RATICATE_RADIO_B1F, 7
	warp_event  0, 39, RATICATE_RADIO_B1F, 6
	warp_event  0, 31, RATICATE_RADIO_B1F, 9
	warp_event 27, 39, RATICATE_RADIO_B1F, 8
	warp_event 20, 19, RATICATE_RADIO_B1F, 11
	warp_event 36, 39, RATICATE_RADIO_B1F, 10
	warp_event 32, 31, RATICATE_RADIO_B2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 14, 39, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, RaticateRadioB1FGrunt1Script, EVENT_RATICATE_RADIO_VACATED
	object_event 38, 37, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, RaticateRadioB1FGrunt2Script, EVENT_RATICATE_RADIO_VACATED
	object_event  9, 27, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, RaticateRadioB1FGrunt3Script, EVENT_RATICATE_RADIO_VACATED
	object_event 33, 35, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, RaticateRadioB1FGrunt4Script, EVENT_RATICATE_RADIO_VACATED
	object_event 33, 21, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, RaticateRadioB1FGrunt5Script, EVENT_RATICATE_RADIO_VACATED
	object_event  8, 16, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, RaticateRadioB1FGrunt6Script, EVENT_RATICATE_RADIO_VACATED
	object_event 38, 33, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, RaticateRadioB1FGrunt7Script, EVENT_RATICATE_RADIO_VACATED
	object_event 23, 36, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, RaticateRadioB1FGrunt8Script, EVENT_RATICATE_RADIO_VACATED
	object_event 11, 31, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 0, RaticateRadioB1FScientistScript, EVENT_RATICATE_RADIO_VACATED
	object_event 13, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RaticateRadioEscapeRope, EVENT_RATICATE_RADIO_ESCAPE_ROPE
	object_event  8,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, RaticateRadioSmokeBall, EVENT_RATICATE_RADIO_SMOKE_BALL
	object_event 20, 36, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_ITEMBALL, 0, RaticateRadioTMThief, EVENT_TM_46_THIEF
	object_event 26, 21, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RATICATE_RADIO_B1F_BUTCH ; Butch
	object_event 26, 20, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RATICATE_RADIO_B1F_CASSIDY ; Cassidy
	object_event 33,  3, SPRITE_LOOKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RATICATE_RADIO_B1F_LOOKER ; Looker
	
	object_const_def

ValenciaIsland_MapScripts:
	def_scene_scripts

	def_callbacks

.ValenciaIslandNoOp:
	end

.AltStarterScript:
	end
	
.AltStarterCutscene:
	end
	
.ASPikachuScript

	
.ASPikachuScript2

.DratiniScript:
	end
	
ValenciaIslandFlypointCallback:
	endcallback
	
ValenciaIslandAltStarterEventCutTreeCallback:
.DoNothingToTheTree
	endcallback
	
ValenciaYoungsterScript:
	end

PhoneCallScript: ;currently unused
	end
	
PhoneCallTest1:
	text "… … …"
	line "A new message!"
	done
	
PhoneCallTest2:
	text "MOM: Hey kiddo!"
	line "LORI dropped your"
	cont "new DOLL off!"
	cont "She also got you"
	cont "something extra!"
	cont "Check your PC when"
	cont "you get home."
	done

ValenciaTechnologyGuyScript:
	jumptextfaceplayer ValenciaTechnologyGuyText	
	
ValenciaCrossScript:
	end
	
ValenciaCrossText1:
	text "???: Hmph."
	line "It got away."
	
	para "Whatever, I'll get"
	line "something even"
	cont "better on the next"
	cont "island."
	done
	
ValenciaCrossText2:
	text "???: Huh?"
	line "You got a problem?"
	
	para "Get out of my way."
	done

ValenciaYoungsterText:
	text "Yo, <PLAYER>!"
	line "Take care on your"
	cont "travels!"
	done

ValenciaTechnologyGuyText:
	text "Technology is"
	line "incredible!"
	
	para "Now people can"
	line "make their own"
	cont "GAMEBOY games!"
	done
	
ValenciaLassScript:
	jumptextfaceplayer ValenciaLassText
	
ValenciaLassText:
	text "Splish! <PLAYER>!"
	line "I love the sound"
	cont "the water makes"
	cont "when I SPLASH in"
	cont "the puddles!"
	done
	
ASIvyScriptText1:
	text "IVY: I know a good"
	line "spot, follow me!"
	done
	
ASIvyScriptText2:
	text "IVY: In case you"
	line "didn't know, this"
	cont "is my house."
	
	para "My AIDES live with"
	line "me. You should"
	cont "chat with them at"
	cont "some point."
	done
	
ASIvyScriptText3:
	text "IVY: It's just a"
	line "tad bit further,"
	cont "<PLAYER>!"
	done
	
ASIvyScriptText4:
	text "IVY: Oh?"
	line "When did all this"
	cont "tall grass grow"
	cont "here?"
	
	para "Sorry, <PLAYER>!"
	line "I gotta check it"
	cont "out!"
	done

ASIvyScriptText5:
	text "IVY: Woah!"
	done
	
ReceivedAltStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done
	
ASIvyScriptText6:
	text "IVY: Wow! I can't"
	line "believe we found"
	cont "an EEVEE!"
	
	para "It's a very rare"
	line "#MON."
	
	para "It must be fate,"
	line "<PLAYER>. So, I"
	cont "entrust it to you!"
	done
	
ASIvyScriptText7:
	text "IVY: Well, it's"
	line "been quite the"
	cont "event today, huh!"
	
	para "I suppose we can"
	line "go back to the lab"
	cont "now. Follow me!"
	done
	
ASIvyScriptText8:
	text "IVY: Wow! I can't"
	line "believe we found"
	cont "a PIKACHU!"
	
	para "It's a very rare"
	line "#MON."
	
	para "It must be fate,"
	line "<PLAYER>. So, I"
	cont "entrust it to you!"
	done
	
ASIvyScriptText9:
	text "IVY: This is my"
	line "secret spot!"
	
	para "It's where I met"
	line "my partner #MON"
	cont "GYARADOS!"
	done
	
ASIvyScriptText10:
	text "IVY: Did you hear"
	line "that?! Let's go"
	cont "check it out!"
	done
	
ASIvyScriptText11:
	text "IVY: Wait a sec!"
	line "What is that!?"
	cont "It can't be…"
	cont "Is that a DRATINI?"
	done
	
ASIvyScriptText12:
	text "IVY: <PLAYER>,"
	line "this is a once in"
	cont "a lifetime chance!"
	cont "We have to catch"
	cont "it!"
	done
	
ASIvyScriptText13:
	text "IVY: Incredible!"
	line "I can't believe we"
	cont "caught a DRATINI!"
	
	para "It's known to be"
	line "near legendary in"
	cont "terms of rarity!"

	para "It must be fate,"
	line "<PLAYER>. So, I"
	cont "entrust it to you!"
	done
	
ASPlayerMovement1:
	step DOWN
	step_end
	
ASIvyMovement1:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
ASIvyMovement2:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
ASIvyMovement3:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step_end

ASIvyMovement4:
	step LEFT
	step LEFT
	step LEFT
	step_end

ASIvyMovement5:
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
ASIvyMovement6:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
ASIvyMovement7:
	step DOWN
	step LEFT
	step LEFT
	step UP
	step_end
	
ASIvyMovement8:
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

ValenciaCrossShovesYouMovement:
	turn_head DOWN
	fix_facing
	jump_step UP
	remove_fixed_facing
	step_end
	
ValenciaCrossLeavingMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step LEFT
	step_end
	
PlayersHouseSign:
	jumptext PlayersHouseSignText
	
IvysHouseSign:
	jumptext IvysHouseSignText
	
IvysLabSign:
	jumptext IvysLabSignText
	
ValenciaIslandSign:
	jumptext ValenciaIslandSignText
	
PlayersHouseSignText:
	text "<PLAYER>'s House"
	done
	
IvysHouseSignText:
	text "PHILENA IVY"
	line "RESIDENCE"
	
	para "№.1 BAYVIEW"
	done
	
IvysLabSignText:
	text "IVY RESEARCH"
	line "№.2 BAYVIEW"
	done
	
ValenciaIslandSignText:
	text "VALENCIA ISLAND"

	para "IVY RESEARCH"
	line "South side of"
	cont "village."
	done

ValenciaIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  5, PLAYERS_HOUSE_1F, 1
	; warp_event  5, 19, VALENCIA_NEIGHBOR_HOUSE, 1
	; warp_event 19, 15, INDIGO_PLATEAU_POKECENTER_1F, 1
	; warp_event 29, 13, IVYS_LAB, 1

	def_coord_events

	def_bg_events
	bg_event 13,  5, BGEVENT_READ, PlayersHouseSign
	bg_event 17, 15, BGEVENT_READ, IvysHouseSign
	bg_event 27, 13, BGEVENT_READ, IvysLabSign
	bg_event  8, 12, BGEVENT_READ, ValenciaIslandSign

	def_object_events
	; object_event 14,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ValenciaYoungsterScript, -1
	; object_event 16, 18, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ValenciaTechnologyGuyScript, -1
	; object_event 32,  5, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ValenciaLassScript, -1
	; object_event 29, 15, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ALT_STARTER_VALENCIA_IVY
	; object_event 30, 37, SPRITE_DRATINI, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRATINI_VALENCIA_APPEAR
	; object_event 43, 22, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ValenciaCrossScript, EVENT_MET_CROSS_ON_VALENCIA

	object_const_def
	const ROUTE_51_FRUITTREE_1
	const ROUTE_51_ITEM_1
	const ROUTE_51_ITEM_2
	const ROUTE_51_ITEM_3
	const ROUTE_51_TM_BALL
	const ROUTE_51_YOUNGSTER
	const ROUTE_51_HIKER

Route51_MapScripts:
	def_scene_scripts

	def_callbacks


Route51FruitTree:
	fruittree FRUITTREE_ROUTE_51
	
Route51Repel:
	itemball REPEL

Route51Potion:
	itemball POTION

Route51XAttack:
	itemball X_ATTACK
	
Route51TMFocusBlast:
	end
	
Route51Sign:
	jumptext Route51SignText

Route51SignText:
	text "ROUTE 51"
	done
	
Route51HikerScript:
	jumptextfaceplayer Route51HikerText
	
Route51YoungsterScript:
	jumptextfaceplayer Route51YoungsterText

Route51HikerText:
	text "Wahah! I can climb"
	line "this mountain with"
	cont "ease! I bet you"
	cont "could do it too,"
	cont "if you had the HM"
	cont "ROCK CLIMB!"
	done

Route51YoungsterText:
	text "REPEL scares away"
	line "weak #MON!"
	
	para "You can use this"
	line "to your advantage"
	cont "to find stronger"
	cont "#MON!"
	done
	
YoungsterAlexScript:
	trainer YOUNGSTER, ALEX, EVENT_BEAT_YOUNGSTER_ALEX, YoungsterAlexSeenText, YoungsterAlexBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterAlexAfterText
	waitbutton
	closetext
	end
	
YoungsterAlexSeenText:
	text "You look beatable!"
	line "Battle me!"
	done

YoungsterAlexBeatenText:
	text "Tch. Guess I was"
	line "wrong…"
	done

YoungsterAlexAfterText:
	text "I saw something"
	line "shine on top of"
	cont "that hill!"
	done
	
YoungsterJebadiahScript:
	trainer YOUNGSTER, JEBADIAH, EVENT_BEAT_YOUNGSTER_JEBADIAH, YoungsterJebadiahSeenText, YoungsterJebadiahBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterJebadiahAfterText
	waitbutton
	closetext
	end
	
YoungsterJebadiahSeenText:
	text "I've trained all"
	line "week for this! You"
	cont "don't stand even a"
	cont "crumb of a chance,"
	cont "buddy!"
	done

YoungsterJebadiahBeatenText:
	text "Aw, man! I need to"
	line "train more…"
	done

YoungsterJebadiahAfterText:
	text "I guess my train-" 
	line "ing wasn't enough…"
	cont "I need to rethink"
	cont "my strategy!"
	done
	
LassMaribelleScript:
	trainer LASS, MARIBELLE, EVENT_BEAT_LASS_MARIBELLE, LassMaribelleSeenText, LassMaribelleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassMaribelleAfterText
	waitbutton
	closetext
	end
	
LassMaribelleSeenText:
	text "Are you taking on"
	line "the ORANGE CREW?"
	cont "Me too!"
	done

LassMaribelleBeatenText:
	text "I guess I need to"
	line "train…"
	done

LassMaribelleAfterText:
	text "The ORANGE CREW…" 
	line "I hear they are"
	cont "very strong!"
	done

Route51_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  2, TANGELO_JUNGLE_ROUTE_51_GATE, 1
	warp_event 12,  3, TANGELO_JUNGLE_ROUTE_51_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 21, 15, BGEVENT_READ, Route51Sign

	def_object_events
	object_event  6, 24, SPRITE_BERRY_H_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route51FruitTree, -1
	object_event 29, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route51Repel, EVENT_ROUTE_51_REPEL
	object_event 19,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route51Potion, EVENT_ROUTE_51_POTION
	object_event  7,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route51XAttack, EVENT_ROUTE_51_X_ATTACK
	object_event 28, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_ITEMBALL, 0, Route51TMFocusBlast, EVENT_TM_52_FOCUS_BLAST
	object_event 16, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route51YoungsterScript, -1
	object_event 23,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, Route51HikerScript, -1
	object_event 10, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, YoungsterAlexScript, -1
	object_event 22, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, YoungsterJebadiahScript, -1
	object_event 14,  5, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_AZURE, OBJECTTYPE_TRAINER, 3, LassMaribelleScript, -1

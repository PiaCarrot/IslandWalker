	object_const_def
	const VALENCIA_HOPE
	const VALENCIA_FAITH

IvysHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
ValenciaHopeScript:
	faceplayer
	opentext
	writetext HopeText
.JumpBackToMenu
	loadmenu .HopeTeacherMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .Variants
	ifequal 2, .Abilities
	ifequal 3, .SpecialPokemon
	ifequal 4, .Nothing
	ifequal 0, .Nothing
.Variants
	writetext HopeVariantsText
	sjump .JumpBackToMenu
.Abilities
	writetext HopeAbilitiesText
	sjump .JumpBackToMenu
.SpecialPokemon
	writetext HopeSpecialPokemonText
	sjump .JumpBackToMenu
.Nothing
	closetext
	end

.HopeTeacherMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .HopeTeacherMenuData
	db 1 ; default option

.HopeTeacherMenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "REGIONAL FORMS@"
	db "ABILITIES@"
	db "SPECIAL #MON@"
	db "NOTHING@"

HopeText:
	text "HOPE: Hi, <PLAYER>!"
	line "I can teach you"
	cont "about our research"
	cont "at the lab."
	
	para "I'm sure it will be"
	line "helpful!"
	
	para "Anything you wanna"
	line "hear about?"
	done

HopeVariantsText:
	text "#MON with"
	line "FORMS adapt to new"
	cont "habitats different"
	cont "from their usual"
	cont "homes. This means"
	cont "their look, TYPE,"
	cont "moves, ABILITIES,"
	cont "stats, height, and"
	cont "weight may change."
	
	para "We have many such"
	line "cases on VALENCIA"
	cont "ISLAND. Be sure to"
	cont "look out for them!"
	
	para "Anything else you"
	line "wanna review?"
	done

HopeAbilitiesText:
	text "Each #MON has"
	line "a special skill"
	cont "called an ABILITY."

	para "These ABILITIES"
	line "can help them in"
	cont "battle or in the"
	cont "wild. Some boost"
	cont "power, others stop"
	cont "certain attacks."

	para "Knowing what your"
	line "#MON can do can"
	cont "help you win more"
	cont "battles and train"
	cont "better. ABILITIES"
	cont "are key to your"
	cont "#MON's success."
	
	para "Anything else you"
	line "wanna review?"
	done

HopeSpecialPokemonText:
	text "Sometimes #MON"
	line "can differ in ways"
	cont "other than FORMS."
	
	para "On one island, I"
	line "hear the #MON"
	cont "eat BERRIES that"
	cont "turn them PINK."
	
	para "Also, MAGIKARP can"
	line "have several diff-"
	cont "erent patterns and"
	cont "colorations around"
	cont "this time of year."
	
	para "You can never know"
	line "what you'll find"
	cont "out there, so be"
	cont "thorough!"

	para "Anything else you"
	line "wanna review?"
	done
	
ValenciaFaithScript:
	faceplayer
	opentext
	writetext FaithText
	yesorno
	iftrue .ChangeTime
	closetext
	end
.ChangeTime:
	special ClockResetter
	reloadmap
	closetext
	end
	
FaithText:
	text "FAITH: Best of"
	line "luck on your adv-"
	cont "enture, <PLAYER>!"

	para "Please come see me"
	line "if your watch gets"
	cont "out of sync. I can"
	cont "change the DATE"
	cont "and TIME on it for"
	cont "you."
	
	para "Would you like to"
	line "change the TIME?"
	done

IvysHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, VALENCIA_ISLAND, 3
	warp_event  5,  7, VALENCIA_ISLAND, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_AIDE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ValenciaHopeScript, -1
	object_event  1,  2, SPRITE_AIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ValenciaFaithScript, -1

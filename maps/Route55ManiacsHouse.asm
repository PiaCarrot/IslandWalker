	object_const_def

Route55ManiacsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route55GemManiacScript:
	faceplayer
	opentext
	writetext Route55GemManiacGreetingText
	buttonsound
	special Special_ChooseItem
	iffalse .NoItem
	special GetGemManiacPrice
	iffalse .WrongItem
	writetext Route55GemManiacOfferText
	special PlaceMoneyTopRight
	yesorno
	iffalse .NoItem
	copybytetovar wCurItem
	takeitem ITEM_FROM_MEM
	waitsfx
	playsound SFX_TRANSACTION
	special Give_hMoneyTemp
	special PlaceMoneyTopRight
	writetext Route55GemManiacThankYouText
	waitbutton
	closetext
	end

.NoItem
	writetext Route55GemManiacNoItemText
	waitbutton
	closetext
	end

.WrongItem
	writetext Route55GemManiacWrongItemText
	waitbutton
	closetext
	end

Route55RuinManiacScript:
	faceplayer
	opentext
	writetext Route55RuinManiacGreetingText
	buttonsound
	special Special_ChooseItem
	iffalse .NoItem
	special GetRuinManiacPrice
	iffalse .WrongItem
	writetext Route55RuinManiacOfferText
	special PlaceMoneyTopRight
	yesorno
	iffalse .NoItem
	copybytetovar wCurItem
	takeitem ITEM_FROM_MEM
	waitsfx
	playsound SFX_TRANSACTION
	special Give_hMoneyTemp
	special PlaceMoneyTopRight
	writetext Route55RuinManiacThankYouText
	waitbutton
	closetext
	end

.NoItem
	writetext Route55RuinManiacNoItemText
	waitbutton
	closetext
	end

.WrongItem
	writetext Route55RuinManiacWrongItemText
	waitbutton
	closetext
	end

Route55GemManiacGreetingText:
	text "Welcome to our"
	line "Maniac hideout!"

	para "I'm utterly"
	line "captivated by"
	cont "glittering gems"
	cont "and rare trinkets."

	para "Do you have any"
	line "treasures to sell?"
	done

Route55GemManiacOfferText:
	text "That sparkle is"
	line "unmistakable!"

	para "How about ¥@"
	deciram hMoneyTemp, 3, 7
	text "?"
	done

Route55GemManiacThankYouText:
	text "Magnificent!"
	line "Thank you kindly."

	para "This jewel will"
	line "shine in my"
	cont "collection."
	done

Route55GemManiacWrongItemText:
	text "Hmm… that's not"
	line "quite gem-worthy."
	done

Route55GemManiacNoItemText:
	text "No worries. I'll"
	line "be here polishing"
	cont "my finds."
	done

Route55RuinManiacGreetingText:
	text "Artifacts tell"
	line "stories of ages"
	cont "long forgotten."

	para "Have you dug up"
	line "any relics or"
	cont "shards to spare?"
	done

Route55RuinManiacOfferText:
	text "I'll fund your"
	line "expedition for"
	cont "¥@"
	deciram hMoneyTemp, 3, 7
	text "!"
	done

Route55RuinManiacThankYouText:
	text "A pristine find!"
	line "These ruins keep"
	cont "on giving."
	done

Route55RuinManiacWrongItemText:
	text "Hmm… that doesn't"
	line "match any ruin"
	cont "catalogues."
	done

Route55RuinManiacNoItemText:
	text "If you unearth"
	line "more relics, bring"
	cont "them straight here."
	done

Route55ManiacsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_55, 2
	warp_event  3,  7, ROUTE_55, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  5, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route55GemManiacScript, -1
	object_event  4,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route55RuinManiacScript, -1

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

Route55GourmetManiacScript:
	faceplayer
	opentext
	writetext Route55GourmetManiacGreetingText
	buttonsound
	special Special_ChooseItem
	iffalse .NoItem
	special GetGourmetManiacPrice
	iffalse .WrongItem
	writetext Route55GourmetManiacOfferText
	special PlaceMoneyTopRight
	yesorno
	iffalse .NoItem
	copybytetovar wCurItem
	takeitem ITEM_FROM_MEM
	waitsfx
	playsound SFX_TRANSACTION
	special Give_hMoneyTemp
	special PlaceMoneyTopRight
	writetext Route55GourmetManiacThankYouText
	waitbutton
	closetext
	end

.NoItem
	writetext Route55GourmetManiacNoItemText
	waitbutton
	closetext
	end

.WrongItem
	writetext Route55GourmetManiacWrongItemText
	waitbutton
	closetext
	end

Route55GemManiacGreetingText:
	text "I'm a world famous"
	line "jewelry designer!"

	para "I hang out here to"
	line "procure rare gems"
	cont "& precious metals."

	para "Do you have any"
	line "jewels to sell?"
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
	line "make for a lovely"
	cont "design."
	done

Route55GemManiacWrongItemText:
	text "Hmm… that's not"
	line "quite what I am"
	cont "looking for."
	done

Route55GemManiacNoItemText:
	text "I'll be here if"
	line "you find anything"
	cont "special!"
	done

Route55RuinManiacGreetingText:
	text "Artifacts tell"
	line "stories of ages"
	cont "long forgotten."

	para "Have you dug up"
	line "any relics of"
	cont "the past?"
	done

Route55RuinManiacOfferText:
	text "I'll buy your"
	line "findings for"
	cont "¥@"
	deciram hMoneyTemp, 3, 7
	text "?"
	done

Route55RuinManiacThankYouText:
	text "A wonderous find!"
	line "I thank you for"
	cont "your business."
	done

Route55RuinManiacWrongItemText:
	text "Hmm… that doesn't"
	line "interest me in the"
	cont "slightest."
	done

Route55RuinManiacNoItemText:
	text "If you unearth"
	line "more relics, bring"
	cont "them to me."
	done

Route55GourmetManiacGreetingText:
	text "I'm a world famous"
	line "chef. I have been"
	cont "procuring rare"
	cont "ingredients here."
	done

Route55GourmetManiacOfferText:
	text "Oh! That's really"
	line "good stuff!"

	para "I'll pay ¥@"
	deciram hMoneyTemp, 3, 7
	text "."
	done

Route55GourmetManiacThankYouText:
	text "Thanks!"
	line "Here's your"
	cont "payment."
	done

Route55GourmetManiacWrongItemText:
	text "Doesn't look very…"
	line "edible… Sorry, I"
	cont "am not interested."
	done

Route55GourmetManiacNoItemText:
	text "Come back if you"
	line "find more rare"
	cont "ingredients."
	done
	
Route55ManiacHouseOwnerScript:
	faceplayer
	opentext
	writetext Route55ManiacHouseOwnerText
	waitbutton
	closetext
	end
	
Route55ManiacHouseOwnerText:
	text "Welcome to ZIG'S"
	line "DIGS!"
	
	para "Collectors of all"
	line "sorts come here"
	cont "to buy treasure."
	
	para "If you have any"
	line "taking up space"
	cont "in your PACK, you"
	cont "should talk to"
	cont "some of them."
	done

Route55ManiacsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_55, 2
	warp_event  3,  7, ROUTE_55, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_AZURE, OBJECTTYPE_SCRIPT, 0, Route55GemManiacScript, -1
	object_event  4,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route55RuinManiacScript, -1
	object_event  6,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route55GourmetManiacScript, -1
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route55ManiacHouseOwnerScript, -1

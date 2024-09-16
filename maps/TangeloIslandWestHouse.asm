	object_const_def
	const TANGELO_WEST_HOUSE_OLD_MAN
	const TANGELO_WEST_HOUSE_GRANDAUGHTER
	const TANGELO_WEST_HOUSE_LEDGER

TangeloIslandWestHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
TangeloWestHouseOldmanScript:
	checkevent EVENT_TANGELO_GAVE_GRANDAUGHTER_STASH
	iftrue .FailedQuest
	checkevent EVENT_TANGELO_OLD_MAN_GIVEN_STASH
	iftrue .QuestCompleted
	checkevent EVENT_TANGELO_OLD_MAN_SIDEQUEST_STARTED
	iftrue .Sidequest
	readvar VAR_HOUR
	ifequal 12, .Sidequest
.RegularDialogue:
	readvar VAR_FACING
	ifequal RIGHT, .HeCantHearYou
	opentext
	writetext TangeloWestHouseOldmanText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, TANGELO_WEST_HOUSE_GRANDAUGHTER, 15
	applymovement TANGELO_WEST_HOUSE_GRANDAUGHTER, TangeloWestHouseMovement1
	opentext
	writetext TangeloWestHouseOldmanText2
	waitbutton
	closetext
	applymovement TANGELO_WEST_HOUSE_GRANDAUGHTER, TangeloWestHouseMovement2
	opentext
	writetext TangeloWestHouseOldmanText3
	waitbutton
	closetext
	applymovement TANGELO_WEST_HOUSE_GRANDAUGHTER, TangeloWestHouseMovement3
	end

.FailedQuest:
	opentext
	writetext TangeloWestHouseSidequestText10
	waitbutton
	closetext
	end

.QuestCompleted:
	opentext
	writetext TangeloWestHouseSidequestText5
	waitbutton
	closetext
	end
	
.NoRoom:
	writetext TangeloWestHouseNoRoom
	waitbutton
	closetext
	end
	
.Sidequest:
	checkitem BRICK_PIECE ;SECRET_STASH
	iftrue .HaveSecretStashInHand
	checkevent EVENT_TANGELO_OLD_MAN_SIDEQUEST_STARTED
	iftrue .ShortRecapText
	opentext
	writetext TangeloWestHouseSidequestText
	waitbutton
	closetext
	setevent EVENT_TANGELO_OLD_MAN_SIDEQUEST_STARTED
	end
	
.ShortRecapText:
	opentext
	writetext TangeloWestHouseSidequestText2
	waitbutton
	closetext
	end
	
.HaveSecretStashInHand:
	readvar VAR_HOUR
	ifequal 12, .GiveSecretStash
	opentext
	writetext TangeloWestHouseSidequestText6
	waitbutton
	closetext
	end
	
.GiveSecretStash:
	opentext
	writetext TangeloWestHouseSidequestText3
	waitbutton
	playsound SFX_POISON
	waitsfx
	pause 15
	writetext TangeloWestHouseSidequestText4
	waitbutton
	verbosegiveitem NUGGET
	iffalse .NoRoom
	closetext
	takeitem BRICK_PIECE ;SECRET_STASH
	setevent EVENT_TANGELO_OLD_MAN_GIVEN_STASH
	end

.HeCantHearYou:
	opentext
	writetext TangeloWestHouseOldmanText4
	waitbutton
	closetext
	end
	
TangeloWestHouseOldmanText:
	text "Huh? Is that my"
	line "grandaughter?"
	cont "Did you bring my"
	cont "booze!?"
	done
	
TangeloWestHouseOldmanText2:
	text "I told you that"
	line "you can't drink"
	cont "that stuff anymore"
	cont "grampy!"
	
	para "Here's your tea!"
	done
	
TangeloWestHouseOldmanText3:
	text "I'm sorry. My"
	line "grampy is very old"
	cont "and can barely see"
	cont "or hear."
	done
	
TangeloWestHouseOldmanText4:
	text "Huh? I can't hear"
	line "you!"
	done
	
TangeloWestHouseSidequestText:
	text "Hey, kid!"
	line "I need your help!"
	
	para "That's right, I'm"
	line "not as senile as"
	cont "I'd lead you to"
	cont "believe."
	
	para "So while my gran-"
	line "daughter is out,"
	cont "I really need some"
	cont "help!"
	
	para "I have a SECRET"
	line "STASH… And I need"
	cont "you to get it!"
	
	para "I hid it in a"
	line "cave off the west"
	cont "coast of the town."
	
	para "If you get it for"
	line "me, I'll make it"
	cont "worth your while!"
	
	para "… … …"
	line "Whatever you do,"
	cont "don't let her see"
	cont "it! I can't stand"
	cont "anymore GREEN TEA!"
	done
	
TangeloWestHouseSidequestText2:
	text "If you get it for"
	line "me, I'll make it"
	cont "worth your while!"
	
	para "… … …"
	line "Whatever you do,"
	cont "don't let her see"
	cont "it! I can't stand"
	cont "anymore GREEN TEA!"
	done
	
TangeloWestHouseSidequestText3:
	text "Did you get it?"
	line "Quickly, give it"
	cont "to me!"
	done
	
TangeloWestHouseSidequestText4:
	text "… … …"
	line "Ahhhh… That hit"
	cont "the spot!"
	cont "That's some pure"
	cont "SHAMOUTI SAKE!"
	
	para "I suppose you'll"
	line "want your reward"
	cont "now!"
	done

TangeloWestHouseSidequestText5:
	text "Huh? I can't hear"
	line "you!"
	
	para "… … …"

	para "Thanks for the"
	line "…Hic!"
	
	para "Thanksh for the"
	line "helpsh, kid!"
	done
	
TangeloWestHouseSidequestText6:
	text "Huh? I can't hear"
	line "you!"
	
	para "… … …"
	line "Come back when she"
	cont "isn't around, kid."
	done
	
TangeloWestHouseSidequestText7:
	text "Hey, what's up? Do"
	line "you need to tell"
	cont "me something?"
	done

TangeloWestHouseSidequestText8:
	text "Grampy did what!?"
	line "… … …"
	cont "I guess I can't"
	cont "blame him. I just"
	cont "want him to live a"
	cont "long life."
	
	para "I'll have to think"
	line "about giving him"
	cont "any of this."
	
	para "Thanks for doing"
	line "the right thing by"
	cont "coming to me."
	
	para "I'm sure it was a"
	line "bit of trouble to"
	cont "get this. Here is"
	cont "something for your"
	cont "troubles."
	done
	
TangeloWestHouseSidequestText9:
	text "Thanks again for"
	line "the help. You can"
	cont "visit Grampy any"
	cont "time you want!"
	done
	
TangeloWestHouseSidequestText10:
	text "Huh? I can't hear"
	line "you!"
	
	para "… … …"
	line "I can't believe"
	cont "you double-crossed"
	cont "me, brat."
	
	para "Go away!"
	done
	
TangeloWestHouseCooltrainerFScript:
	checkevent EVENT_TANGELO_OLD_MAN_GIVEN_STASH
	iftrue .QuestFailed
	checkevent EVENT_TANGELO_GAVE_GRANDAUGHTER_STASH
	iftrue .GaveGrandaughterStash
	checkitem BRICK_PIECE
	iftrue .SnitchesGetStitches
	faceplayer
	opentext
	writetext TangeloWestHouseCooltrainerFText
	waitbutton
	closetext
	end
	
.QuestFailed
	faceplayer
	opentext
	writetext TangeloWestHouseSidequestText11
	waitbutton
	closetext
	end

.GaveGrandaughterStash:
	faceplayer
	opentext
	writetext TangeloWestHouseSidequestText9
	waitbutton
	closetext
	end
	
.SnitchesGetStitches:
	faceplayer
	opentext
	writetext TangeloWestHouseSidequestText7
	yesorno
	iftrue .GiveHerTheStash
	closetext
	end
	
.GiveHerTheStash:
	opentext
	writetext TangeloWestHouseSidequestText8
	waitbutton
	verbosegiveitem NUGGET
	iffalse .NoRoom
	closetext
	takeitem BRICK_PIECE ;SECRET_STASH
	setevent EVENT_TANGELO_GAVE_GRANDAUGHTER_STASH
	end
	
.NoRoom:
	writetext TangeloWestHouseNoRoom
	waitbutton
	closetext
	end
	
TangeloWestHouseCooltrainerFText:
	text "I'm taking care of"
	line "my grampy in his"
	cont "old age. I'm from"
	cont "JOHTO, but he came"
	cont "here years ago to"
	cont "retire."
	done
	
TangeloWestHouseNoRoom:
	text "You have no room"
	line "for it!"
	done
	
TangeloWestHouseSidequestText11:
	text "Grampy is acting"
	line "odd… I bet he had"
	cont "something stashed"
	cont "away somewhere!"
	
	para "He must have had"
	line "it when I went"
	cont "out."
	
	para "But how did he"
	line "get it? He can"
	cont "barely move…"
	done
	
TangeloWestHouseLedgerScript:
	jumptext TangeloWestHouseLedgerText
	
TangeloWestHouseLedgerText:
	text "TODAYS CHORES"
	line "Don't forget to go"
	cont "grocery shopping"
	cont "at 12PM today!"
	cont "Be back by 1PM to"
	cont "give Grampy his"
	cont "GREEN TEA."
	done

TangeloWestHouseMovement1:
	step RIGHT
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end
	
TangeloWestHouseMovement2:
	step DOWN
	turn_head RIGHT
	step_end
	
TangeloWestHouseMovement3:
	step DOWN
	step DOWN
	step LEFT
	step_end
	
TangeloIslandWestHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, TANGELO_ISLAND, 4
	warp_event  3,  7, TANGELO_ISLAND, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, TangeloWestHouseOldmanScript, -1
	object_event  5,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, 13, 11, PAL_OW_GREEN, OBJECTTYPE_SCRIPT, 0, TangeloWestHouseCooltrainerFScript, -1
	object_event 3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TangeloWestHouseLedgerScript, -1

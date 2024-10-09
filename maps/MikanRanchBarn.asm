DEF MIKAN_RANCH_MOOMOO_MILK_PRICE EQU 800
	
	object_const_def
	const MIKAN_RANCH_BARN_MILTANK_1
	const MIKAN_RANCH_BARN_MILTANK_2
	const MIKAN_RANCH_BARN_TAUROS
	const MIKAN_RANCH_BARN_MILK_SELLER

MikanRanchBarn_MapScripts:
	def_scene_scripts

	def_callbacks
	
MikanRanchBarnMiltankScript:
	opentext
	writetext MikanRanchBarnMiltankText
	cry MILTANK
	waitbutton
	closetext
	end
	
MikanRanchBarnMiltankText:
	text "Mooooo!"
	done
	
MikanRanchBarnTaurosScript:
	opentext
	writetext MikanRanchBarnTaurosText
	cry TAUROS
	waitbutton
	closetext
	end
	
MikanRanchBarnTaurosText:
	text "Mooorrgh!"
	done
	
MikanRanchMooMooSellerScript:
	faceplayer
	opentext
	writetext MikanRanchMooMooSellerText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, MIKAN_RANCH_MOOMOO_MILK_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	giveitem MOOMOO_MILK
	iffalse .NoRoom
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, MIKAN_RANCH_MOOMOO_MILK_PRICE
	special PlaceMoneyTopRight
	writetext MikanRanchMooMooSellerThankYouText
	waitbutton
	closetext
	end
	
.NotEnoughMoney:
	writetext MikanRanchMooMooSellerNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext MikanRanchMooMooSellerRefusedText
	waitbutton
	closetext
	end

.NoRoom:
	writetext MikanRanchMooMooSellerNoRoomText
	waitbutton
	closetext
	end
	
MikanRanchMooMooSellerText:
	text "Howdy, hon!"
	line "Lookin' for a nice"
	cont "and cold MOOMOO"
	cont "MILK? A nutritious"
	cont "bottle costs ¥800."
	cont "How 'bout it?"
	done

MikanRanchMooMooSellerThankYouText:
	text "Thanks for suppor-"
	line "ting your local"
	cont "farmers!"
	done

MikanRanchMooMooSellerNotEnoughMoneyText:
	text "You don't have"
	line "enough money, hon!"

	para "These MILTANK come"
	line "all the way from"
	cont "JOHTO, so we can't"
	cont "sell it cheaper…"
	done

MikanRanchMooMooSellerRefusedText:
	text "No problem, hon!"
	line "Let me know if you"
	cont "change your mind!"
	done

MikanRanchMooMooSellerNoRoomText:
	text "You don't have"
	line "room for it, hon!"
	done
	
MikanRanchHiddenRevive:
	hiddenitem REVIVE, EVENT_MIKAN_RANCH_HIDDEN_REVIVE

MikanRanchBarn_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9,  6, MIKAN_RANCH, 1
	warp_event  9,  7, MIKAN_RANCH, 2

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_ITEM, MikanRanchHiddenRevive

	def_object_events
	object_event  0,  3, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, MikanRanchBarnMiltankScript, -1
	object_event  7,  1, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, MikanRanchBarnMiltankScript, -1
	object_event  3,  1, SPRITE_TAUROS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MikanRanchBarnTaurosScript, -1
	object_event  5,  3, SPRITE_DAISY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MikanRanchMooMooSellerScript, -1

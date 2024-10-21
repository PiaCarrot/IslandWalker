DEF CURIO_SHOP_ROTOM_FURNITURE_PRICE EQU 20000
DEF CURIO_SHOP_TENTACOOL_DOLL_PRICE EQU 5000
DEF CURIO_SHOP_PIKACHU_BED_PRICE EQU 8000
DEF CURIO_SHOP_EVO_ITEM_PRICE EQU 3000

	object_const_def
	const CURIO_SHOP_OWNER
	const CURIO_SHOP_ROTOM_OVEN
	const CURIO_SHOP_ROTOM_WASHER
	const CURIO_SHOP_ROTOM_FRIDGE
	const CURIO_SHOP_ROTOM_FAN
	const CURIO_SHOP_ROTOM_MOWER
	const CURIO_SHOP_TENTACOOL_DOLL

CurioShop_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CurioShopBedCallback
	
CurioShopBedCallback:
	checkevent EVENT_DECO_BED_4
	iffalse .DoNothing
	changeblock 8, 8, $54
.DoNothing
	endcallback
	
CurioShopOwnerScript:
	faceplayer
	opentext
	writetext CurioShopOwnerText
	waitbutton
	closetext
	end
	
CurioShopRotomOvenScript:
	turnobject CURIO_SHOP_OWNER, LEFT
	opentext
	writetext CurioShopOwnerRotomOvenText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, CURIO_SHOP_ROTOM_FURNITURE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	playsound SFX_ITEM
	writetext CurioShopGotRotomOvenText
	waitsfx
	writetext CursioShopSetItUpAtHome
	waitbutton
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, CURIO_SHOP_ROTOM_FURNITURE_PRICE
	special PlaceMoneyTopRight
	writetext CurioShopOwnerThankYouText
	waitbutton
	closetext
	special FadeOutToWhite
	disappear CURIO_SHOP_ROTOM_OVEN
	special LoadMapPalettes
	special FadeInPalettes_EnableDynNoApply
	clearevent EVENT_ROTOM_OVEN_PURCHASED
	setevent EVENT_CURIO_SHOP_ROTOM_OVEN
	end
	
.NotEnoughMoney:
	writetext CurioShopOwnerNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext CurioShopOwnerRefusedText
	waitbutton
	closetext
	end
	
CurioShopRotomWashScript:
	turnobject CURIO_SHOP_OWNER, RIGHT
	opentext
	writetext CurioShopOwnerRotomWashText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, CURIO_SHOP_ROTOM_FURNITURE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	playsound SFX_ITEM
	writetext CurioShopGotRotomWasherText
	waitsfx
	writetext CursioShopSetItUpAtHome
	waitbutton
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, CURIO_SHOP_ROTOM_FURNITURE_PRICE
	special PlaceMoneyTopRight
	writetext CurioShopOwnerThankYouText
	waitbutton
	closetext
	special FadeOutToWhite
	disappear CURIO_SHOP_ROTOM_WASHER
	special LoadMapPalettes
	special FadeInPalettes_EnableDynNoApply
	clearevent EVENT_ROTOM_WASH_PURCHASED
	setevent EVENT_CURIO_SHOP_ROTOM_WASHER
	end
	
.NotEnoughMoney:
	writetext CurioShopOwnerNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext CurioShopOwnerRefusedText
	waitbutton
	closetext
	end
	
CurioShopRotomFrostScript:
	turnobject CURIO_SHOP_OWNER, RIGHT
	opentext
	writetext CurioShopOwnerRotomFrostText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, CURIO_SHOP_ROTOM_FURNITURE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	playsound SFX_ITEM
	writetext CurioShopGotRotomFrostText
	waitsfx
	writetext CursioShopSetItUpAtHome
	waitbutton
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, CURIO_SHOP_ROTOM_FURNITURE_PRICE
	special PlaceMoneyTopRight
	writetext CurioShopOwnerThankYouText
	waitbutton
	closetext
	special FadeOutToWhite
	disappear CURIO_SHOP_ROTOM_FRIDGE
	special LoadMapPalettes
	special FadeInPalettes_EnableDynNoApply
	clearevent EVENT_ROTOM_FROST_PURCHASED
	setevent EVENT_CURIO_SHOP_ROTOM_FRIDGE
	end
	
.NotEnoughMoney:
	writetext CurioShopOwnerNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext CurioShopOwnerRefusedText
	waitbutton
	closetext
	end
	
CurioShopRotomFanScript:
	turnobject CURIO_SHOP_OWNER, RIGHT
	opentext
	writetext CurioShopOwnerRotomFanText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, CURIO_SHOP_ROTOM_FURNITURE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	playsound SFX_ITEM
	writetext CurioShopGotRotomFanText
	waitsfx
	writetext CursioShopSetItUpAtHome
	waitbutton
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, CURIO_SHOP_ROTOM_FURNITURE_PRICE
	special PlaceMoneyTopRight
	writetext CurioShopOwnerThankYouText
	waitbutton
	closetext
	special FadeOutToWhite
	disappear CURIO_SHOP_ROTOM_FAN
	special LoadMapPalettes
	special FadeInPalettes_EnableDynNoApply
	clearevent EVENT_ROTOM_FAN_PURCHASED
	setevent EVENT_CURIO_SHOP_ROTOM_FAN
	end
	
.NotEnoughMoney:
	writetext CurioShopOwnerNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext CurioShopOwnerRefusedText
	waitbutton
	closetext
	end
	
CurioShopRotomMowScript:
	turnobject CURIO_SHOP_OWNER, LEFT
	opentext
	writetext CurioShopOwnerRotomMowText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, CURIO_SHOP_ROTOM_FURNITURE_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	playsound SFX_ITEM
	writetext CurioShopGotRotomMowText
	waitsfx
	writetext CursioShopSetItUpAtHome
	waitbutton
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, CURIO_SHOP_ROTOM_FURNITURE_PRICE
	special PlaceMoneyTopRight
	writetext CurioShopOwnerThankYouText
	waitbutton
	closetext
	special FadeOutToWhite
	disappear CURIO_SHOP_ROTOM_MOWER
	special LoadMapPalettes
	special FadeInPalettes_EnableDynNoApply
	clearevent EVENT_ROTOM_MOW_PURCHASED
	setevent EVENT_CURIO_SHOP_ROTOM_MOWER
	end
	
.NotEnoughMoney:
	writetext CurioShopOwnerNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext CurioShopOwnerRefusedText
	waitbutton
	closetext
	end
	
CurioShopTentacoolDollScript:
	turnobject CURIO_SHOP_OWNER, RIGHT
	opentext
	writetext CurioShopOwnerTentacoolDollText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, CURIO_SHOP_TENTACOOL_DOLL_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	playsound SFX_ITEM
	writetext CurioShopGotTentacoolDollText
	waitsfx
	writetext CursioShopSetItUpAtHome
	waitbutton
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, CURIO_SHOP_TENTACOOL_DOLL_PRICE
	special PlaceMoneyTopRight
	writetext CurioShopOwnerThankYouText
	waitbutton
	closetext
	special FadeOutToWhite
	disappear CURIO_SHOP_TENTACOOL_DOLL
	special LoadMapPalettes
	special FadeInPalettes_EnableDynNoApply
	setevent EVENT_DECO_TENTACOOL_DOLL
	end
	
.NotEnoughMoney:
	writetext CurioShopOwnerNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext CurioShopOwnerRefusedText
	waitbutton
	closetext
	end
	
CurioShopPikachuBedScript:
	checkevent EVENT_DECO_BED_4
	iftrue .NothingHere
	turnobject CURIO_SHOP_OWNER, RIGHT
	opentext
	writetext CurioShopOwnerPikachuBedText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, CURIO_SHOP_PIKACHU_BED_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	playsound SFX_ITEM
	writetext CurioShopGotPikachuBedText
	waitsfx
	writetext CursioShopSetItUpAtHome
	waitbutton
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, CURIO_SHOP_PIKACHU_BED_PRICE
	special PlaceMoneyTopRight
	writetext CurioShopOwnerThankYouText
	waitbutton
	closetext
	setevent EVENT_DECO_BED_4
	changeblock 8, 8, $54
	reloadmap
	end
	
.NotEnoughMoney:
	writetext CurioShopOwnerNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext CurioShopOwnerRefusedText
	waitbutton
	closetext
	end
	
.NothingHere:
	opentext
	writetext CurioShopOwnerPikachuBedGoneText
	waitbutton
	closetext
	end

CurioShopShellScript:
	end
	
CurioShopEvoItemScript:
	turnobject CURIO_SHOP_OWNER, LEFT
	opentext
	writetext CurioShopOwnerEvoItemText
	special PlaceMoneyTopRight
	yesorno
	iffalse .Refused
	checkmoney YOUR_MONEY, CURIO_SHOP_EVO_ITEM_PRICE
	ifequal HAVE_LESS, .NotEnoughMoney
	readvar VAR_WEEKDAY
	ifequal MONDAY, .CurioShipEvoItemIsGalarCuff
	ifequal TUESDAY, .CurioShipEvoItemIsDragonScale
	ifequal WEDNESDAY, .CurioShipEvoItemIsKingsRock
	ifequal THURSDAY, .CurioShipEvoItemIsHolyArmor
	ifequal FRIDAY, .CurioShipEvoItemIsGalarWreath
	ifequal SATURDAY, .CurioShipEvoItemIsPrismScale
	ifequal SUNDAY, .CurioShipEvoItemIsCursedArmor
.Continue
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, CURIO_SHOP_EVO_ITEM_PRICE
	special PlaceMoneyTopRight
	writetext CurioShopOwnerThankYouText
	waitbutton
	closetext
	end

.NotEnoughMoney:
	writetext CurioShopOwnerNotEnoughMoneyText
	waitbutton
	closetext
	end

.Refused:
	writetext CurioShopOwnerRefusedText
	waitbutton
	closetext
	end

.CurioShipEvoItemIsGalarCuff:
	verbosegiveitem GALAR_CUFF
	iffalse .NoRoom
	sjump .Continue

.CurioShipEvoItemIsDragonScale:
	verbosegiveitem DRAGON_SCALE
	iffalse .NoRoom
	sjump .Continue

.CurioShipEvoItemIsKingsRock:
	verbosegiveitem KINGS_ROCK
	iffalse .NoRoom
	sjump .Continue

.CurioShipEvoItemIsHolyArmor:
	verbosegiveitem HOLY_ARMOR
	iffalse .NoRoom
	sjump .Continue

.CurioShipEvoItemIsGalarWreath:
	verbosegiveitem GALAR_WREATH
	iffalse .NoRoom
	sjump .Continue

.CurioShipEvoItemIsPrismScale:
	verbosegiveitem PRISM_SCALE
	iffalse .NoRoom
	sjump .Continue

.CurioShipEvoItemIsCursedArmor:
	verbosegiveitem CURSED_ARMOR
	iffalse .NoRoom
	sjump .Continue

.NoRoom:
	writetext CurioShopNoRoomText
	waitbutton
	closetext
	end

CurioShopNoRoomText:
	text "You don't have"
	line "room for it."
	
	para "I guess now you"
	line "know what the item"
	cont "is today…Clever…"
	done
	
CurioShopOwnerEvoItemText:
	text "Oh! The MYSTERIOUS"
	line "EVOLUTION ITEM!"
	
	para "You have a keen"
	line "eye for things, my"
	cont "esteemed customer…"
	
	para "I guarantee that"
	line "the item inside is"
	cont "of high quality,"
	cont "but I can't reveal"
	cont "what's inside!"
	
	para "The item inside is"
	line "different every"
	cont "day."
	
	para "One will cost you"
	line "¥3000. How about"
	cont "it?"
	done
	
CurioShopOwnerText:
	text "Welcome, welcome!"
	line "SUNBURST CURIOS,"
	cont "this place is!"
	
	para "Yes, yes…Browse my"
	line "wares, you're sure"
	cont "to find something"
	cont "you like! Hehehe…"
	done
	
CurioShopOwnerRotomOvenText:
	text "Yes, yes…An astute"
	line "eye you have, my"
	cont "esteemed customer!"
	
	para "This OVEN hasn't"
	line "been in production"
	cont "for several years!"
	
	para "It's a very rare"
	line "item."
	
	para "I'll give you a"
	line "special price…"
	cont "How does ¥20000"
	cont "sound?"
	done
	
CurioShopOwnerRotomWashText:
	text "Yes, yes…An astute"
	line "eye you have, my"
	cont "esteemed customer!"
	
	para "This WASHER hasn't"
	line "been in production"
	cont "for several years!"
	
	para "It's a very rare"
	line "item."
	
	para "I'll give you a"
	line "special price…"
	cont "How does ¥20000"
	cont "sound?"
	done
	
CurioShopOwnerRotomFrostText:
	text "Yes, yes…An astute"
	line "eye you have, my"
	cont "esteemed customer!"
	
	para "This FRIDGE hasn't"
	line "been in production"
	cont "for several years!"
	
	para "It's a very rare"
	line "item."
	
	para "I'll give you a"
	line "special price…"
	cont "How does ¥20000"
	cont "sound?"
	done
	
CurioShopOwnerRotomFanText:
	text "Yes, yes…An astute"
	line "eye you have, my"
	cont "esteemed customer!"
	
	para "This FAN hasn't"
	line "been in production"
	cont "for several years!"
	
	para "It's a very rare"
	line "item."
	
	para "I'll give you a"
	line "special price…"
	cont "How does ¥20000"
	cont "sound?"
	done
	
CurioShopOwnerRotomMowText:
	text "Yes, yes…An astute"
	line "eye you have, my"
	cont "esteemed customer!"
	
	para "This MOWER hasn't"
	line "been in production"
	cont "for several years!"
	
	para "It's a very rare"
	line "item."
	
	para "I'll give you a"
	line "special price…"
	cont "How does ¥20000"
	cont "sound?"
	done
	
CurioShopOwnerTentacoolDollText:
	text "Ah, that DOLL…"
	line "It is said that it"
	cont "was never meant to"
	cont "leave the factory…"
	
	para "Hehehe…I would be"
	line "willing to part"
	cont "with such a rare"
	cont "item…"
	
	para "I'll give you a"
	line "special price…"
	cont "How does ¥5000"
	cont "sound?"
	done
	
CurioShopOwnerPikachuBedText:
	text "Ah, that BED…"
	line "My NEPHEW gave it"
	cont "to me. He said he"
	cont "was cuter than his"
	cont "BED…"
	
	para "Hehehe…I would be"
	line "willing to part"
	cont "with such a unique"
	cont "and storied item…"
	
	para "I'll give you a"
	line "special price…"
	cont "How does ¥8000"
	cont "sound?"
	done
	
CurioShopGotRotomOvenText:
	text "<PLAYER> received"
	line "a FUNKY OVEN!"
	done
	
CurioShopGotRotomWasherText:
	text "<PLAYER> received"
	line "a FUNKY WASHER!"
	done
	
CurioShopGotRotomFrostText:
	text "<PLAYER> received"
	line "a FUNKY FRIDGE!"
	done
	
CurioShopGotRotomFanText:
	text "<PLAYER> received"
	line "a FUNKY FAN!"
	done

CurioShopGotRotomMowText:
	text "<PLAYER> received"
	line "a FUNKY MOWER!"
	done

CurioShopGotPikachuBedText:
	text "<PLAYER> received"
	line "a PIKACHU BED!"
	done

CurioShopGotTentacoolDollText:
	text "<PLAYER> received"
	line "a TENTACOOL DOLL!"
	done

CursioShopSetItUpAtHome:
	text "I'll send it to"
	line "your home, free of"
	cont "shipping charge!"
	done
	
CurioShopOwnerNotEnoughMoneyText:
	text "Ayaaaahhh! That is"
	line "not enough…I can't"
	cont "part with it for"
	cont "any less…"
	done
	
CurioShopOwnerRefusedText:
	text "Hmm…Perhaps I was"
	line "hasty in judgement"
	cont "of your ability…!"
	done
	
CurioShopOwnerThankYouText:
	text "Doooryaaah!"
	
	para "Thank you for your"
	line "purchase!"
	done
	
CurioShopOwnerPikachuBedGoneText:
	text "That BED must have"
	line "been sitting for a"
	cont "while…"
	done

CurioShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, SUNBURST_ISLAND, 7
	warp_event  5,  9, SUNBURST_ISLAND, 7

	def_coord_events

	def_bg_events
	bg_event  9,  8, BGEVENT_READ, CurioShopPikachuBedScript
	bg_event  9,  9, BGEVENT_READ, CurioShopPikachuBedScript

	def_object_events
	object_event  4,  6, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, CurioShopOwnerScript, -1
	object_event  0,  6, SPRITE_ROTOM_OVEN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, CurioShopRotomOvenScript, EVENT_CURIO_SHOP_ROTOM_OVEN
	object_event  7,  6, SPRITE_ROTOM_WASHER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, CurioShopRotomWashScript, EVENT_CURIO_SHOP_ROTOM_WASHER
	object_event  9,  4, SPRITE_ROTOM_FRIDGE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, CurioShopRotomFrostScript, EVENT_CURIO_SHOP_ROTOM_FRIDGE
	object_event  9,  6, SPRITE_ROTOM_FAN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, CurioShopRotomFanScript, EVENT_CURIO_SHOP_ROTOM_FAN
	object_event  1,  6, SPRITE_ROTOM_MOWER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_ORANGE, OBJECTTYPE_SCRIPT, 0, CurioShopRotomMowScript, EVENT_CURIO_SHOP_ROTOM_MOWER
	object_event  7,  4, SPRITE_TENTACOOL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CurioShopTentacoolDollScript, EVENT_DECO_TENTACOOL_DOLL
	object_event  0,  8, SPRITE_SHELL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CurioShopShellScript, EVENT_CURIO_SHOP_SHELL
	object_event  1,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CurioShopEvoItemScript, -1

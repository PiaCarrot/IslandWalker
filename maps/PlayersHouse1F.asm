	object_const_def
	const PLAYERSHOUSE1F_MOM1

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script PlayersHouse1FNoop1Scene, SCENE_PLAYERSHOUSE1F_MEET_MOM
	scene_script PlayersHouse1FNoop2Scene, SCENE_PLAYERSHOUSE1F_NOOP

	def_callbacks

PlayersHouse1FNoop1Scene:
	end

PlayersHouse1FNoop2Scene:
	end

MeetMomLeftScript:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

MeetMomRightScript:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	turnobject PLAYER, LEFT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .OnRight
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsTowardPlayerMovement
	sjump MeetMomScript

.OnRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksToPlayerMovement
MeetMomScript:
	blackoutmod PLAYERS_HOUSE_2F
	opentext
	writetext ElmsLookingForYouText
	loadmenu .AltStarterMenuHeader
	verticalmenu
	closewindow
	ifequal 1, .AltStarterPika
	ifequal 2, .AltStarterEevee
.AltStarterPika
	setevent EVENT_GOT_PIKACHU_FROM_IVY
	sjump .Continue
.AltStarterEevee
	setevent EVENT_GOT_EEVEE_FROM_IVY
.Continue
	writetext MomChoseAltStarterText
	promptbutton
; replace with giveitem POKE_PAGER
	getstring STRING_BUFFER_4, PokegearName
	scall PlayersHouse1FReceiveItemStd
	setscene SCENE_PLAYERSHOUSE1F_NOOP
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	; writetext MomGivesPokegearText
	; promptbutton
	; special SetDayOfWeek
	; closetext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .FromRight
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .FromLeft
	sjump .Finish

.FromRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsBackMovement
	sjump .Finish

.FromLeft:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksBackMovement
	sjump .Finish

.Finish:
	special RestartMapMusic
	turnobject PLAYERSHOUSE1F_MOM1, LEFT
	end
	
.AltStarterMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 6, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	dw .AltStarterMenuData
	db 1 ; default option

.AltStarterMenuData:
	db STATICMENU_CURSOR ; flags
	db 2 ; items
	db "PIKACHU DOLL@"
	db "EEVEE DOLL@"


MeetMomTalkedScript:
	playmusic MUSIC_MOM
	sjump MeetMomScript

PokegearName:
	db "#GEAR@"

PlayersHouse1FReceiveItemStd:
	jumpstd ReceiveItemScript
	end

MomScript:
	faceplayer
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	checkscene
	iffalse MeetMomTalkedScript ; SCENE_PLAYERSHOUSE1F_MEET_MOM
	opentext
	checkevent EVENT_MOM_DEFEATED
	iftrue .DefeatedMom
	checkevent EVENT_DRAKE_DEFEATED
	iftrue .BecameChampion
	checkevent EVENT_LUANA_DEFEATED
	iftrue .GotFourthBadge
	checkevent EVENT_RUDY_DEFEATED
	iftrue .GotThirdBadge
	checkevent EVENT_DANNY_DEFEATED
	iftrue .GotSecondBadge
	checkevent EVENT_CISSY_DEFEATED
	iftrue .GotFirstBadge
	checkevent EVENT_GOT_A_POKEMON_FROM_IVY
	iftrue .GotAPokemon
	writetext MomDefaultText
	waitbutton
	closetext
	end

.GotAPokemon:
	writetext MomGotStarterText
	waitbutton
	closetext
	end

.GotFirstBadge:
	writetext MomFirstBadgeText
	waitbutton
	closetext
	end

.GotSecondBadge:
	writetext MomSecondBadgeText
	waitbutton
	closetext
	end

.GotThirdBadge:
	writetext MomThirdBadgeText
	waitbutton
	closetext
	end

.GotFourthBadge:
	writetext MomFourthBadgeText
	waitbutton
	closetext
	end

.BecameChampion:
	writetext MomBecameChampionText
	waitbutton
	closetext
	end

.DefeatedMom:
	writetext DefeatedMomText
	waitbutton
	closetext
	end

PlayersHouse1FTVScript:
	jumptext PlayersHouse1FTVText

PlayersHouse1FStoveScript:
	jumptext PlayersHouse1FStoveText

PlayersHouse1FSinkScript:
	jumptext PlayersHouse1FSinkText

PlayersHouse1FFridgeScript:
	jumptext PlayersHouse1FFridgeText

RotomOvenScript:
	end

RotomWashScript:
	end

RotomFrostScript:
	end

RotomFanScript:
	end

RotomMowScript:
	end

MomTurnsTowardPlayerMovement:
	slow_step RIGHT
	slow_step RIGHT
	step_end

MomWalksToPlayerMovement:
	slow_step RIGHT
	slow_step RIGHT
	slow_step RIGHT
	step_end

MomTurnsBackMovement:
	slow_step LEFT
	slow_step LEFT
	step_end

MomWalksBackMovement:
	slow_step LEFT
	slow_step LEFT
	slow_step LEFT
	step_end

ElmsLookingForYouText:
	text "MOM: Hey, kiddo!"
	line "Today is the day"
	cont "you go on your own"
	cont "journey! Your mama"
	cont "knows that you'll"
	cont "make her proud!"
	
	para "… … …"

	para "MOM: Hey, kiddo!"
	line "I meant to ask you"
	cont "something! Your"
	cont "AUNT PRIMA is"
	cont "bringing a new doll"
	cont "for your room!"
	
	para "Which do you like"
	line "more? PIKACHU or"
	cont "EEVEE?"
	done
	
MomChoseAltStarterText:
	text "MOM: Good choice,"
	line "kiddo!"
	
	para "Also, I wanted to"
	line "give you this, so"
	cont "mama can always"
	cont "keep tabs on you!"
	done

MomGivesPokegearText:
	text "#MON PAGER, or"
	line "just #PAGE."

	para "It allows people"
	line "to send messages"
	cont "to you, though you"
	cont "can't reply back."

	para "Technology is so"
	line "crazy! One day we"
	cont "call eachother and"
	cont "listen to RADIO on"
	cont "the go, I'm sure!"
	done

MomDefaultText:
	text "MOM: Hey, kiddo!"
	line "Today is the day"
	cont "you go on your own"
	cont "journey! Your mama"
	cont "knows that you'll"
	cont "make her proud!"
	done

MomGotStarterText:
	text "MOM: Hey, kiddo!"
	line "So you got your"
	cont "first POKéMON!"
	cont "Stay safe on your"
	cont "travels, I'll be"
	cont "rooting for you!"
	done

MomFirstBadgeText:
	text "MOM: Hey, kiddo!"
	line "So you got your"
	cont "first badge, huh!"
	cont "CORAL-EYE BADGE"
	cont "is so pretty!"
	cont "Keep up the good"
	cont "work, baby!"
	done

MomSecondBadgeText:
	text "MOM: Hey, kiddo!"
	line "So you got your"
	cont "second badge, huh!"
	cont "SEA RUBY…"
	cont "How did you like"
	cont "the snow?"
	done

MomThirdBadgeText:
	text "MOM: Hey, kiddo!"
	line "So you got your"
	cont "third badge, huh!"
	cont "SPIKE SHELL… I"
	cont "heard from PRIMA,"
	cont "but you must be"
	cont "getting strong!"
	done

MomFourthBadgeText:
	text "MOM: Hey, kiddo!"
	line "So you got your"
	cont "fourth badge, huh!"
	cont "JADE STAR!"
	cont "So you beat LUANA,"
	cont "hmm? What did you"
	cont "think of her?"
	done

MomBecameChampionText:
	text "MOM: Hey, kiddo!"
	line "I'm so proud of"
	cont "you!"
	cont "I think it's time"
	cont "I told you a bit"
	cont "about myself."

	para "When I was your"
	line "age, I took on the"
	cont "ORANGE CREW."

	para "I was a real good"
	line "TRAINER too!"

	para "At the time, I too"
	line "became CHAMPION."

	para "I met your father,"
	line "and eventually we"
	cont "had you…"

	para "I retired, but I"
	line "don't regret it"
	cont "one bit! I'm so"
	cont "happy I could see"
	cont "my baby follow in"
	cont "my footsteps. But,"
	cont "I want you to go"
	cont "even further."

	para "Meet me on ROUTE"
	line "49, on the beach!"
	cont "Let's see just how"
	cont "strong you've"
	cont "become!"
	done
	
DefeatedMomText:
	text "MOM: It's not for"
	line "me to say, but"
	cont "that LOCKET is one"
	cont "of a pair. I think"
	cont "there's plenty of"
	cont "adventure for you"
	cont "yet, baby!"
	done

PlayersHouse1FStoveText:
	text "A adept arranging"
	line "for MOTHER…"
	
	para "VOLCANO BAKEMEAT!"
	done

PlayersHouse1FSinkText:
	text "The sink is spot-"
	line "less. MOM likes it"
	cont "clean."
	done

PlayersHouse1FFridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "LEFTOVERS and a"
	line "bottle of MOO MOO"
	cont "MILK… Yum!"
	done

PlayersHouse1FTVText:
	text "There's a cartoon"
	line "playing on TV:"
	
	para "Two kids ride a"
	line "raft around some"
	cont "tropical islands."
	
	para "It's time for me"
	line "to get goin', too!"
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VALENCIA_ISLAND, 1
	warp_event  3,  7, VALENCIA_ISLAND, 1
	warp_event 11,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events
	coord_event 10,  4, SCENE_PLAYERSHOUSE1F_MEET_MOM, MeetMomLeftScript
	coord_event 11,  4, SCENE_PLAYERSHOUSE1F_MEET_MOM, MeetMomRightScript

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, PlayersHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, PlayersHouse1FFridgeScript
	bg_event  6,  1, BGEVENT_READ, PlayersHouse1FTVScript

	def_object_events
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, -1
	object_event  8,  1, SPRITE_MOM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RotomOvenScript, EVENT_ROTOM_OVEN_PURCHASED
	object_event  4,  1, SPRITE_MOM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RotomWashScript, EVENT_ROTOM_WASH_PURCHASED
	object_event  2,  1, SPRITE_MOM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RotomFrostScript, EVENT_ROTOM_FROST_PURCHASED
	object_event  6,  4, SPRITE_MOM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RotomFanScript, EVENT_ROTOM_FAN_PURCHASED
	object_event  3,  4, SPRITE_MOM, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RotomMowScript, EVENT_ROTOM_MOW_PURCHASED

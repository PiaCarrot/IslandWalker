	object_const_def
	const MIKAN_GYM_GUIDE
	const MIKAN_GYM_MALE_GUARD
	const MIKAN_GYM_FEMALE_GUARD
	const MIKAN_GYM_CISSY
	const MIKAN_GYM_SWIMMER_ALLIE
	const MIKAN_GYM_SWIMMER_MORGAN
	const MIKAN_GYM_BEAUTY_YEVON
	const MIKAN_GYM_SWIMMER_BRAD
	const MIKAN_GYM_SWIMMER_LOGAN
	const MIKAN_GYM_FISHER_PIKE
	const MIKAN_GYM_SLOWPOKE_1
	const MIKAN_GYM_SLOWPOKE_2
	const MIKAN_GYM_SLOWPOKE_3
	const MIKAN_GYM_SLOWPOKE_4
	const MIKAN_GYM_SENTA

MikanGym_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, MikanGymGuardCallback
	
MikanGymGuardCallback:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .FemaleGuardDisappears
	disappear MIKAN_GYM_MALE_GUARD
	setflag EVENT_MIKAN_GYM_PLAYER_IS_MALE
	sjump .EndMikanGymCallback

.FemaleGuardDisappears:
	disappear MIKAN_GYM_FEMALE_GUARD
	setflag EVENT_MIKAN_GYM_PLAYER_IS_FEMALE
.EndMikanGymCallback:
	endcallback

MikanGymSign:
	opentext
	checkevent EVENT_CISSY_DEFEATED
	iftrue .CissyBeatenSignText
	writetext CissyUnbeatenSignText
	waitbutton
	closetext
	end
	
.CissyBeatenSignText:
	writetext CissyBeatenSignText
	waitbutton
	closetext
	end
	
CissyUnbeatenSignText:
	text "MIKAN ISLAND GYM"
	
	para "CERTIFIED TRAINERS"
	line "CROSS"
	cont "TRACEY"
	done
	
CissyBeatenSignText:
	text "MIKAN ISLAND GYM"
	
	para "CERTIFIED TRAINERS"
	line "CROSS"
	cont "TRACEY"
	cont "<PLAYER>"
	done
	
MikanGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_CISSY_DEFEATED
	iftrue .MikanGymGuideWinScript
	writetext MikanGymGuideText
	waitbutton
	closetext
	end

.MikanGymGuideWinScript:
	writetext MikanGymGuideWinText
	waitbutton
	closetext
	end
MikanGymGuideText:
	text "Welcome, TRAINER!"
	line "I'm the GYM GUIDE!"
	cont "Here's some solid"
	cont "advice:"

	para "WATER-types are"
	line "weak to GRASS."
	cont "With that said,"
	cont "each ORANGE CREW"
	cont "member has unique"
	cont "strategies."
	
	para "CISSY uses FIRE-"
	line "type moves to BURN"
	cont "her foes! Like a"
	cont "KRABBY in a pot of"
	cont "boiling water, you"
	cont "get me?"

	para "Good luck!"
	done

MikanGymGuideWinText:
	text "That fight gave me"
	line "the sweats! Might"
	cont "just be the heat,"
	cont "though."
	
	para "Good job!"
	done
	
MikanGymMaleGuardScript:
	jumptextfaceplayer MikanGymMaleGuardText
	
MikanGymMaleGuardText:
	text "I'm terribly sorry,"
	line "miss, but the bath"
	cont "designated for the"
	cont "ladies is on the"
	cont "other side."
	done
	
MikanGymFemaleGuardScript:
	jumptextfaceplayer MikanGymFemaleGuardText
	
MikanGymFemaleGuardText:
	text "I'm terribly sorry,"
	line "sir, but the bath"
	cont "designated for the"
	cont "men is opposite to"
	cont "this side."
	done
	
MikanGymCissyScript:
	faceplayer
	opentext
	checkflag ENGINE_CORALEYEBADGE
	iftrue .FightDone
	checkoak
	iffalse .NoOakChallenge
	checkevent EVENT_ALT_STARTER_VALENCIA_IVY
	iftrue .Check82
.Check84:
	checkdex
	ifless 84, .NeedMorePokemon
	sjump .NoOakChallenge
.Check82:
	checkevent EVENT_GOT_DRATINI_FROM_IVY
	iftrue .Check84
	checkdex
	ifless 82, .NeedMorePokemonPikaOrEevee
.NoOakChallenge:
	writetext CissyBeforeBattleText
	waitbutton
	closetext
	winlosstext CissyBeatenText, 0
	setlasttalked MIKAN_GYM_CISSY
	checkcm
	iffalse .LoadCissy
	loadtrainer CISSY, CISSY1_CM
	sjump .StartBattle
.LoadCissy
	loadtrainer CISSY, CISSY1
.StartBattle
	startbattle
	reloadmapafterbattle
	sjump .AfterBattle
.NeedMorePokemon:
	writetext CissyOakChallengeText
	waitbutton
	closetext
	end
.NeedMorePokemonPikaOrEevee:
	writetext CissyOakChallengePikaOrEeveeText
	waitbutton
	closetext
	end
.AfterBattle:
	setevent EVENT_CISSY_DEFEATED
	setevent EVENT_BEAT_SWIMMER_F_ALLIE
	setevent EVENT_BEAT_SWIMMER_F_MORGAN
	setevent EVENT_BEAT_BEAUTY_YEVON
	setevent EVENT_BEAT_SWIMMER_M_BRAD
	setevent EVENT_BEAT_SWIMMER_M_LOGAN
	setevent EVENT_BEAT_FISHER_PIKE
	opentext
	writetext PlayerReceivedCoralEyeBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CORALEYEBADGE
	setmapscene MANDARIN_NORTH, SCENE_MANDARIN_NORTH_LOOKER
.FightDone:
	checkevent EVENT_TM_49_SCALD
	iftrue .GotScald
	writetext CissyExplainTMText
	promptbutton
	verbosegiveitem TM_SCALD
	iffalse .GotScald
	setevent EVENT_TM_49_SCALD
.GotScald:
	writetext CissyAfterBattleText
	waitbutton
	closetext
	end
	
CissyBeforeBattleText:
	text "CISSY: Hmph…"
	line "First a hot-headed"
	cont "punk, and then a"
	cont "nerd who tried to"
	cont "draw a picture of"
	cont "me…"
	
	para "Now it's you."
	line "Welcome, CHALLEN-"
	cont "GER."

	para "I'm CISSY, and I'm"
	line "the ORANGE CREW"
	cont "LEADER of MIKAN"
	cont "ISLAND."

	para "I grew up on this"
	line "ISLAND, raising my"
	cont "WATER #MON to"
	cont "perfection."

	para "Is this your first"
	line "GYM? These #MON"
	cont "should be enough…"

	para "Prepare yourself!"
	done

CissyBeatenText:
	text "CISSY: What?!"

	para "My perfect WATER"
	line "#MON!"

	para "Very well! You've"
	line "earned this."

	para "It's the official"
	line "ORANGE CREW"
	cont "CORAL-EYE BADGE."
	done

CissyOakChallengeText:
	text "OAK: <PLAYER>!"
	line "You are not ready" 
	cont "to progress with"
	cont "my challenge!"
	
	para "You must collect"
	line "84 unique #MON"
	cont "to do this GYM!"
	done
CissyOakChallengePikaOrEeveeText:
	text "OAK: <PLAYER>!"
	line "You are not ready" 
	cont "to progress with"
	cont "my challenge!"
	
	para "You must collect"
	line "82 unique #MON"
	cont "to do this GYM!"
	done

PlayerReceivedCoralEyeBadgeText:
	text " received"
	line "CORAL-EYE BADGE."
	done

CissyExplainTMText:
	text "CISSY: You fought"
	line "hard, and it paid"
	cont "off!"

	para "I feel more invig-"
	line "orated after that"
	cont "than I do after a"
	cont "weekend at the HOT"
	cont "SPRINGS."

	para "Here's a gift from"
	line "me. It's a TM, or"
	cont "TECHNICAL MACHINE."

	para "This one contains"
	line "SCALD."
	
	para "It's a WATER move"
	line "that BURNs the foe"
	cont "with ease!"

	para "Use it well!"
	done

CissyAfterBattleText:
	text "CISSY: I'd love to"
	line "take you on with"
	cont "my best #MON!"

	para "See me again if"
	line "you become the"
	cont "CHAMPION!"
	done
	
SwimmerFAllieScript:
	trainer SWIMMERF, ALLIE, EVENT_BEAT_SWIMMER_F_ALLIE, SwimmerFAllieSeenText, SwimmerFAllieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFAllieAfterText
	waitbutton
	closetext
	end
	
SwimmerFAllieSeenText:
	text "I hope you did"
	line "some serious trai-"
	cont "ning before you"
	cont "came here!"
	done

SwimmerFAllieBeatenText:
	text "It's my loss!"
	done

SwimmerFAllieAfterText:
	text "I'm nothing when"
	line "compared to CISSY!"

	para "Don't get cocky"
	line "just because you"
	cont "beat me!"
	done
	
SwimmerFMorganScript:
	trainer SWIMMERF, MORGAN, EVENT_BEAT_SWIMMER_F_MORGAN, SwimmerFMorganSeenText, SwimmerFMorganBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFMorganAfterText
	waitbutton
	closetext
	end
	
SwimmerFMorganSeenText:
	text "CORSOLA and I are"
	line "unbeatable!"
	done

SwimmerFMorganBeatenText:
	text "Noooooo!"
	done

SwimmerFMorganAfterText:
	text "My CORSOLA…"
	done
	
BeautyYevonScript:
	trainer BEAUTY, YEVON, EVENT_BEAT_BEAUTY_YEVON, BeautyYevonSeenText, BeautyYevonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyYevonAfterText
	waitbutton
	closetext
	end
	
BeautyYevonSeenText:
	text "I frequent this"
	line "GYM so much that"
	cont "they hired me as a"
	cont "GYM TRAINER!"
	done

BeautyYevonBeatenText:
	text "Exfoliate…"
	done

BeautyYevonAfterText:
	text "The HOT SPRINGS do"
	line "wonders for the"
	cont "skin, darling!"
	done
	
SwimmerMBradScript:
	trainer SWIMMERM, BRAD, EVENT_BEAT_SWIMMER_M_BRAD, SwimmerMBradSeenText, SwimmerMBradBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMBradAfterText
	waitbutton
	closetext
	end
	
SwimmerMBradSeenText:
	text "Welcome to MIKAN"
	line "GYM, cuz! You'll"
	cont "have to get past"
	cont "us if you wanna"
	cont "get to CISSY!"
	done

SwimmerMBradBeatenText:
	text "The heat is too"
	line "much, cuz…"
	done

SwimmerMBradAfterText:
	text "I'm gonna need a"
	line "glass of MOOMOO"
	cont "MILK after that!"
	done
	
SwimmerMLoganScript:
	trainer SWIMMERM, LOGAN, EVENT_BEAT_SWIMMER_M_LOGAN, SwimmerMLoganSeenText, SwimmerMLoganBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMLoganAfterText
	waitbutton
	closetext
	end
	
SwimmerMLoganSeenText:
	text "Nothing beats a"
	line "good soak after a"
	cont "day of surfing…"
	
	para "Except for a good"
	line "#MON battle!"
	done

SwimmerMLoganBeatenText:
	text "I'm tired, cuz!"
	done

SwimmerMLoganAfterText:
	text "I think my #MON"
	line "are ready for a"
	cont "soak, too…"
	done
	
FisherPikeScript:
	trainer FISHER, PIKE, EVENT_BEAT_FISHER_PIKE, FisherPikeSeenText, FisherPikeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherPikeAfterText
	waitbutton
	closetext
	end
	
FisherPikeSeenText:
	text "Don't fish in the"
	line "HOT SPRING."
	done

FisherPikeBeatenText:
	text "There's nothing in"
	line "them to catch!"
	done

FisherPikeAfterText:
	text "One time I hooked"
	line "LOGAN over there…"
	cont "I think he still"
	cont "has the scar!"
	done
	
MikanSentaScript:
	faceplayer
	opentext
	checkevent EVENT_CISSY_DEFEATED
	iftrue .SentaLeavesGym
	writetext MikanGymSentaText1
	waitbutton
	closetext
	end
	
.SentaLeavesGym:
	writetext MikanGymSentaText2
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal LEFT, .WalkAroundYou
	applymovement MIKAN_GYM_SENTA, SentaGym_Movement1
.SentaExit: ;fallthrough
	disappear MIKAN_GYM_SENTA
	playsound SFX_EXIT_BUILDING
	waitsfx
	setevent EVENT_SENTA_LEAVES_GYM
	clearevent EVENT_SENTA_AT_HOME
	end
	
.WalkAroundYou:
	applymovement MIKAN_GYM_SENTA, SentaGym_Movement2
	sjump .SentaExit
	

MikanGymSentaText1:
	text "SENTA: My sister,"
	line "CISSY, is the"
	cont "strongest trainer"
	cont "I know!"

	para "Fat chance you can"
	line "beat her!"
	done

MikanGymSentaText2:	
	text "SENTA: Huh? CISSY"
	line "lost?"

	para "You must have just"
	line "cheated!"

	para "Hmph!"
	
	para "I won't accept"
	line "your victory…"
	cont "Unless you beat"
	cont "the ORANGE CREW!"
	
	para "I'm going home!"
	done
	
SentaGym_Movement1:
	step RIGHT
	step DOWN
	step_end
	
SentaGym_Movement2:
	step DOWN
	step RIGHT
	turn_head DOWN
	step_end

MikanGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 19, MIKAN_ISLAND, 7
	warp_event 10, 19, MIKAN_ISLAND, 8
	warp_event  5,  2, MIKAN_GYM, 4
	warp_event 12, 18, MIKAN_GYM, 4
	def_coord_events

	def_bg_events
	bg_event  6, 18, BGEVENT_READ, MikanGymSign
	bg_event 13, 18, BGEVENT_READ, MikanGymSign

	def_object_events
	object_event 10, 16, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MikanGymGuideScript, -1
	object_event  2, 16, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MikanGymMaleGuardScript, EVENT_MIKAN_GYM_PLAYER_IS_MALE
	object_event 17, 16, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MikanGymFemaleGuardScript, EVENT_MIKAN_GYM_PLAYER_IS_FEMALE
	object_event  9,  1, SPRITE_CISSY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MikanGymCissyScript, -1
	object_event 16, 12, SPRITE_WALKING_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, SwimmerFAllieScript, EVENT_MIKAN_GYM_PLAYER_IS_MALE
	object_event 18,  6, SPRITE_WALKING_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, SwimmerFMorganScript, EVENT_MIKAN_GYM_PLAYER_IS_MALE
	object_event 14,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_TRAINER, 1, BeautyYevonScript, EVENT_MIKAN_GYM_PLAYER_IS_MALE
	object_event  3, 12, SPRITE_WALKING_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, SwimmerMBradScript, EVENT_MIKAN_GYM_PLAYER_IS_FEMALE
	object_event  2,  7, SPRITE_WALKING_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, SwimmerMLoganScript, EVENT_MIKAN_GYM_PLAYER_IS_FEMALE
	object_event  6,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, FisherPikeScript, EVENT_MIKAN_GYM_PLAYER_IS_FEMALE
	object_event 12, 10, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  3,  5, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  1,  9, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 18,  9, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8, 18, SPRITE_SENTA, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, MikanSentaScript, EVENT_SENTA_LEAVES_GYM

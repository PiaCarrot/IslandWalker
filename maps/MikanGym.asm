	object_const_def
	const MIKAN_GYM_GUIDE
	const MIKAN_GYM_MALE_GUARD
	const MIKAN_GYM_FEMALE_GUARD
	const MIKAN_GYM_CISSY

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
	writetext CissyBeforeBattleText
	waitbutton
	closetext
	winlosstext CissyBeatenText, 0
	setlasttalked MIKAN_GYM_CISSY
	loadtrainer CISSY, CISSY1
	startbattle
	reloadmapafterbattle
	sjump .AfterBattle
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
.FightDone:
	checkevent EVENT_TM_61_WILL_O_WISP
	iftrue .GotWillOWisp
	writetext CissyExplainTMText
	promptbutton
;	verbosegiveitem TM_WILL_O_WISP
;	iffalse .GotWillOWisp
	setevent EVENT_TM_61_WILL_O_WISP
.GotWillOWisp:
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
	line "GYM? These three"
	cont "#MON should be"
	cont "enough…"

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

PlayerReceivedCoralEyeBadgeText:
	text "<PLAYER> received"
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
	line "WILL-O-WISP."
	
	para "It's a fiery move"
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

MikanGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 19, MIKAN_ISLAND, 7
	warp_event  9, 19, MIKAN_ISLAND, 7
	warp_event 10, 19, MIKAN_ISLAND, 8
	warp_event 11, 19, MIKAN_ISLAND, 8
	warp_event  5,  2, MIKAN_GYM, 6
	warp_event 11, 17, MIKAN_GYM, 6
	def_coord_events

	def_bg_events
	bg_event  6, 18, BGEVENT_READ, MikanGymSign
	bg_event 13, 18, BGEVENT_READ, MikanGymSign

	def_object_events
	object_event  9, 16, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MikanGymGuideScript, -1
	object_event  2, 16, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MikanGymMaleGuardScript, EVENT_MIKAN_GYM_PLAYER_IS_MALE
	object_event 17, 16, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MikanGymFemaleGuardScript, EVENT_MIKAN_GYM_PLAYER_IS_FEMALE
	object_event  9,  1, SPRITE_CISSY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MikanGymCissyScript, -1
	object_event 16, 12, SPRITE_WALKING_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, SwimmerFAllieScript, -1
	object_event 18,  6, SPRITE_WALKING_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, SwimmerFMorganScript, -1
	object_event 14,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_TEAL, OBJECTTYPE_TRAINER, 1, BeautyYevonScript, -1
	object_event  3, 12, SPRITE_WALKING_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, SwimmerMBradScript, -1
	object_event  2,  7, SPRITE_WALKING_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, SwimmerMLoganScript, -1
	object_event  6,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, FisherPikeScript, -1

MomPhoneGreetingText:
	text "Hello?"

	para "Oh, hi, <PLAYER>!"
	line "Working hard?"
	done

MomPhoneLandmarkText:
	text "Oh, so you're in"
	line "@"
	text_ram wStringBuffer3
	text "…"

	para "Isn't that where"
	line "@"
	text_ram wStringBuffer4
	text_start
	para "is? Did you go"
	line "take a look?"
	done

MomPhoneGenericAreaText:
	text "Really, you're in"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "I've never gone"
	line "there. That's kind"
	cont "of neat, <PLAYER>."
	done

MomPhoneNewBarkText:
	text "What? You're in"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "Come see your MOM"
	line "sometime!"
	done

MomPhoneCherrygroveText:
	text "You're visiting"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "How about coming"
	line "home for a bit?"
	done

MomOtherAreaText:
	text "Wow, you're in"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "Good luck on your"
	line "#MON quest!"
	done

MomDeterminedText:
	text "That sounds really"
	line "tough."

	para "But, <PLAYER>, I"
	line "know you're really"

	para "determined. You'll"
	line "be OK, right?"
	done

MomPhoneHangUpText:
	text "<PLAYER>, keep it"
	line "up! I'm rooting"
	cont "for you, baby!"
	done

MomPhoneNoPokemonText:
	text "Hello?"

	para "Oh! Hey, kiddo!"
	line "How's your journey"
	cont "going?"
	
	para "Rooting for you,"
	line "kiddo!"
	done

MomPhoneNoPokedexText:
	text "Hello?"

	para "Oh, hi, <PLAYER>!"
	line "You're on a big"

	para "mission for PROF."
	line "ELM? Be good!"
	done

MomPhoneNoGymQuestText:
	text "Hello?"

	para "Hi, <PLAYER>! If"
	line "you're done with"

	para "your errand come"
	line "on home, dear."
	done

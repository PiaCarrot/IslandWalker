ElmPhoneCalleeScript:
	readvar VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_POKERUS, .pokerus
	checkevent EVENT_DUMMY_OUT
	iftrue .discovery
	checkevent EVENT_DUMMY_OUT
	iffalse .next
	checkevent EVENT_DUMMY_OUT
	iftrue .egghatched
.next
	checkevent EVENT_DUMMY_OUT
	iftrue .eggunhatched
	checkevent EVENT_DUMMY_OUT
	iftrue .assistant
	checkevent EVENT_DUMMY_OUT
	iftrue .checkingegg
	checkevent EVENT_DUMMY_OUT
	iftrue .stolen
	checkevent EVENT_DUMMY_OUT
	iftrue .sawmrpokemon
	farwritetext ElmPhoneHealYourMonText
	end

.sawmrpokemon
	farwritetext ElmPhoneSawMrPokemonText
	end

.stolen
	farwritetext ElmPhonePokemonStolenText
	end

.checkingegg
	farwritetext ElmPhoneCheckingTheEggText
	end

.assistant
	farwritetext ElmPhoneAssistantText
	end

.eggunhatched
	farwritetext ElmPhoneHowIsTheEggText
	end

.egghatched
	farwritetext ElmPhoneEggHatchedText
	setevent EVENT_DUMMY_OUT
	end

.discovery
	random 2
	ifequal 0, .nextdiscovery
	farwritetext ElmPhoneDiscoveredHatchTimeText
	end

.nextdiscovery
	farwritetext ElmPhoneInvestigatingEggMovesText
	end

.pokerus
	farwritetext ElmPhoneDiscoveredPokerusText
	specialphonecall SPECIALCALL_NONE
	end

ElmPhoneCallerScript:
	readvar VAR_SPECIALPHONECALL
	ifequal SPECIALCALL_ROBBED, .disaster
	ifequal SPECIALCALL_ASSISTANT, .assistant
	ifequal SPECIALCALL_WEIRDBROADCAST, .rocket
	ifequal SPECIALCALL_SSTICKET, .gift
	ifequal SPECIALCALL_MASTERBALL, .gift
	farwritetext ElmPhoneDiscoveredPokerusText
	specialphonecall SPECIALCALL_NONE
	end

.disaster
	farwritetext ElmPhoneDisasterText
	specialphonecall SPECIALCALL_NONE
	setevent EVENT_DUMMY_OUT
	end

.assistant
	farwritetext ElmPhoneEggAssistantText
	specialphonecall SPECIALCALL_NONE
	clearevent EVENT_DUMMY_OUT
	setevent EVENT_DUMMY_OUT
	end

.rocket
	farwritetext ElmPhoneRadioTowerRocketTakeoverText
	specialphonecall SPECIALCALL_NONE
	end

.gift
	farwritetext ElmPhoneGiftText
	specialphonecall SPECIALCALL_NONE
	end

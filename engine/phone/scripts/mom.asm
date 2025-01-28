MomPhoneCalleeScript:
	checkevent EVENT_DUMMY_OUT
	iftrue .started_quest
	checkevent EVENT_DUMMY_OUT
	iftrue MomPhoneNoGymQuestScript
	checkevent EVENT_DUMMY_OUT
	iftrue MomPhoneNoPokedexScript
	sjump MomPhoneNoPokemonScript

.started_quest
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue MomPhoneHangUpScript
	farwritetext MomPhoneGreetingText
	promptbutton
	getcurlandmarkname STRING_BUFFER_3
	readvar VAR_ENVIRONMENT
	ifequal TOWN, MomPhoneInTown
	ifequal ROUTE, MomPhoneOnRoute
	sjump MomPhoneOther

MomPhoneLandmark:
	farwritetext MomPhoneLandmarkText
	promptbutton
	end

MomPhoneInTown:
	readvar VAR_MAPGROUP
	ifequal GROUP_VALENCIA_ISLAND, .newbark
	ifequal GROUP_NONE, .cherrygrove
	ifequal GROUP_NONE, .violet
	ifequal GROUP_NONE, .azalea
	ifequal GROUP_NONE, .goldenrod
	farwritetext MomPhoneGenericAreaText
	promptbutton
	end

.newbark
	farwritetext MomPhoneNewBarkText
	promptbutton
	end

.cherrygrove
	farwritetext MomPhoneCherrygroveText
	promptbutton
	end

.violet
	getlandmarkname STRING_BUFFER_4, LANDMARK_FAST_SHIP
	sjump MomPhoneLandmark
.azalea
	getlandmarkname STRING_BUFFER_4, LANDMARK_FAST_SHIP
	sjump MomPhoneLandmark
.goldenrod
	getlandmarkname STRING_BUFFER_4, LANDMARK_FAST_SHIP
	sjump MomPhoneLandmark

MomPhoneOnRoute:
	farwritetext MomOtherAreaText
	promptbutton
	end

MomPhoneOther:
	farwritetext MomDeterminedText
	end

MomPhoneHangUpScript:
	farwritetext MomPhoneHangUpText
	end

MomPhoneNoPokemonScript:
	farwritetext MomPhoneNoPokemonText
	end

MomPhoneNoPokedexScript:
	farwritetext MomPhoneNoPokedexText
	end

MomPhoneNoGymQuestScript:
	farwritetext MomPhoneNoGymQuestText
	end
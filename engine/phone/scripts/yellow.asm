YellowPhoneCalleeScript:
	farwritetext YellowInitialCallText
	promptbutton
	sjump PhoneScript_YellowHangUpText
	
YellowInitialCallText:
	text "<PLAY_G>?"
	line "Hi!"
	cont "LOOKER and I are"
	cont "currently heading"
	cont "to TROVITOPOLIS."
	
	para "Watch out for TEAM"
	line "ROCKET!"
	done
	
PhoneScript_YellowHangUpText:
	farwritetext YellowHangUpText
	end
	
YellowHangUpText:
	text "Talk to ya later!"
	done
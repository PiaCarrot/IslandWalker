NanuPhoneCalleeScript:
	farwritetext NanuInitialCallText
	promptbutton
	sjump PhoneScript_NanuHangUpText
	
NanuInitialCallText:
	text "<№>.<CODE>…"
	line "First of all, I"
	cont "want to welcome"
	cont "you to the team."
	
	para "I have no orders"
	line "for you right now."
	cont "I will contact you"
	cont "later."
	done
	
PhoneScript_NanuHangUpText:
	farwritetext NanuHangUpText
	end
	
NanuHangUpText:
	text "Stay always"
	line "vigilant."
	done
MACRO phone
; trainer class, trainer id, map, callee time, callee script, caller time, caller script
	db \1, \2
	map_id \3
	db \4
	dba \5
	db \6
	dba \7
ENDM

PhoneContacts:
; entries correspond to PHONE_* constants
	table_width PHONE_CONTACT_SIZE
	phone TRAINER_NONE, PHONE_00,              N_A,                       0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_MOM,      PLAYERS_HOUSE_1F,          ANYTIME, MomPhoneCalleeScript,     0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BIKESHOP, N_A,                  0,       UnusedPhoneScript,        0,       UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_BILL,     N_A,                       ANYTIME, BillPhoneCalleeScript,    0,       BillPhoneCallerScript
	phone TRAINER_NONE, PHONECONTACT_ELM,      N_A,                  ANYTIME, ElmPhoneCalleeScript,     0,       ElmPhoneCallerScript
	phone TRAINER_NONE, PHONECONTACT_BUENA,    N_A, ANYTIME, BuenaPhoneCalleeScript,   ANYTIME, BuenaPhoneCallerScript
	phone TRAINER_NONE, PHONECONTACT_NANU,    N_A, ANYTIME, NanuPhoneCalleeScript,   0, UnusedPhoneScript
	phone TRAINER_NONE, PHONECONTACT_YELLOW,    N_A, ANYTIME, YellowPhoneCalleeScript,   0, UnusedPhoneScript
	assert_table_length NUM_PHONE_CONTACTS + 1

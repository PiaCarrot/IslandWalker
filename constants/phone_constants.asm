; PhoneContacts indexes (see data/phone/phone_contacts.asm)
	const_def
	const PHONE_00
	const PHONE_MOM
	const PHONE_OAK
	const PHONE_BILL
	const PHONE_ELM
	const PHONE_BUENA
	const PHONE_NANU
	const PHONE_YELLOW
DEF NUM_PHONE_CONTACTS EQU const_value - 1

; SpecialPhoneCallList indexes (see data/phone/special_calls.asm)
	const_def
	const SPECIALCALL_NONE
	const SPECIALCALL_POKERUS
	const SPECIALCALL_ROBBED
	const SPECIALCALL_ASSISTANT
	const SPECIALCALL_WEIRDBROADCAST
	const SPECIALCALL_SSTICKET
	const SPECIALCALL_BIKESHOP
	const SPECIALCALL_WORRIED
	const SPECIALCALL_MASTERBALL
DEF NUM_SPECIALCALLS EQU const_value - 1
DEF SPECIALCALL_SIZE EQU 6

; phone struct members
rsreset
DEF PHONE_CONTACT_TRAINER_CLASS  rb
DEF PHONE_CONTACT_TRAINER_NUMBER rb
DEF PHONE_CONTACT_MAP_GROUP      rb
DEF PHONE_CONTACT_MAP_NUMBER     rb
DEF PHONE_CONTACT_SCRIPT1_TIME   rb
DEF PHONE_CONTACT_SCRIPT1_BANK   rb
DEF PHONE_CONTACT_SCRIPT1_ADDR   rw
DEF PHONE_CONTACT_SCRIPT2_TIME   rb
DEF PHONE_CONTACT_SCRIPT2_BANK   rb
DEF PHONE_CONTACT_SCRIPT2_ADDR   rw
DEF PHONE_CONTACT_SIZE EQU _RS

; maximum number of pokegear contacts
DEF CONTACT_LIST_SIZE EQU 10

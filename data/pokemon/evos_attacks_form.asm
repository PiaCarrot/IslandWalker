SECTION "Evolutions and Attacks 4", ROMX

FormsEvosAttacksPointers::
	dw LaprasPartnerEvosAttacks
	dw DratiniPartnerEvosAttacks
.IndirectEnd::

LaprasPartnerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, GROWL
	dbw 1, SING
	dbw 8, MIST
	dbw 15, BODY_SLAM
	dbw 22, CONFUSE_RAY
	dbw 29, PERISH_SONG
	dbw 36, ICE_BEAM
	dbw 43, RAIN_DANCE
	dbw 50, SAFEGUARD
	dbw 57, HYDRO_PUMP
	db 0 ; no more level-up moves

DratiniPartnerEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, WRAP
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 36, AGILITY
	dbw 43, SAFEGUARD
	dbw 50, OUTRAGE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

ENDSECTION

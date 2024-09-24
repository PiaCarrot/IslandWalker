SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw LaprasPartnerEvosAttacks
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

ENDSECTION

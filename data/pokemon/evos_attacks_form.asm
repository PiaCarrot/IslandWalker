SECTION "Evolutions and Attacks 4", ROMX

FormsEvosAttacksPointers::
	dw LaprasPartnerEvosAttacks
	dw DratiniPartnerEvosAttacks
	dw EeveePartnerEvosAttacks
	dw PikachuPartnerEvosAttacks
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
	dbbw EVOLVE_LEVEL, 30, DRAGONAIR ;DRAGONAIR_PARTNER
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 7, THUNDER_WAVE
	dbw 11, TWISTER
	dbw 15, DRAGONBREATH
	dbw 19, BARRIER
	dbw 21, SLAM
	dbw 25, AGILITY
	dbw 27, HAZE
	dbw 31, DRAGON_RAGE ; DRAGON_TAIL
	dbw 35, DRAGON_RAGE ; AQUA_TAIL
	dbw 41, DRAGON_RAGE ; DRAGON_RUSH
	dbw 45, SAFEGUARD
	dbw 51, DRAGON_DANCE
	dbw 55, OUTRAGE
	dbw 61, HYPER_BEAM
	dbw 65, HYDRO_PUMP
	dbw 70, EXTREMESPEED
	db 0 ; no more level-up moves
	
EeveePartnerEvosAttacks:
	db 0 ; no more evolutions
	; dbw 1, HELPING_HAND
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, GROWL
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, BATON_PASS
	dbw 42, TAKE_DOWN
	db 0 ; no more level-up moves

PikachuPartnerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 6, TAIL_WHIP
	dbw 8, THUNDER_WAVE
	dbw 11, QUICK_ATTACK
	dbw 15, DOUBLE_TEAM
	dbw 20, SLAM
	dbw 26, THUNDERBOLT
	dbw 33, AGILITY
	dbw 41, THUNDER
	dbw 50, LIGHT_SCREEN
	db 0 ; no more level-up moves

ENDSECTION

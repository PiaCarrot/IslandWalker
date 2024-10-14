Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartBerrySeller
	dw MartBerryPinkan
	dw MartTangelo
	dw MartMikan
	dw MartXItem
	dw MartMandarinNorth
	assert_table_length NUM_MARTS

MartBerrySeller:
	db 3 ; # items
	dw ORAN_BERRY
	dw DRASH_BERRY
	dw CHERI_BERRY

MartBerryPinkan:
	db 4 ; # items
	dw ORAN_BERRY
	dw DRASH_BERRY
	dw CHERI_BERRY
	dw PINKAN_BERRY

MartTangelo:
	db 9 ; # items
	dw POKE_BALL
	dw HEAL_BALL
	dw DUSK_BALL
	dw POTION
	dw REPEL
	dw ANTIDOTE
	dw PARLYZ_HEAL
	dw NET_BALL
	dw SURF_MAIL

MartMikan:
	db 10 ; # items
	dw POKE_BALL
	dw HEAL_BALL
	dw DUSK_BALL
	dw POTION
	dw REPEL
	dw ANTIDOTE
	dw BURN_HEAL
	dw PARLYZ_HEAL
	dw QUICK_BALL
	dw FLOWER_MAIL

MartXItem:
	db 8 ; # items
	dw X_ATTACK
	dw X_DEFEND
	dw X_SPEED
	dw X_SP_ATK
	dw X_SP_DEF
	dw X_ACCURACY
	dw DIRE_HIT
	dw GUARD_SPEC

MartMandarinNorth:
	db 11 ; # items
	dw POKE_BALL
	dw GREAT_BALL
	dw DUSK_BALL
	dw POTION
	dw SUPER_POTION
	dw REPEL
	dw ANTIDOTE
	dw BURN_HEAL
	dw PARLYZ_HEAL
	dw NEST_BALL
	dw PORTRAITMAIL

DefaultMart:
	db 2 ; # items
	dw POKE_BALL
	dw POTION

Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartBerrySeller
	dw MartBerryPinkan
	dw MartTangelo
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

DefaultMart:
	db 2 ; # items
	dw POKE_BALL
	dw POTION

; Pokémon traded from RBY do not have held items, so GSC usually interprets the
; catch rate as an item. However, if the catch rate appears in this table, the
; item associated with the table entry is used instead.

TimeCapsule_CatchRateItems:
	dbw 3,   BRIGHTPOWDER
	dbw 25,  LEFTOVERS
	dbw 30,  LUCKY_PUNCH
	dbw 35,  METAL_POWDER
	dbw 45,  PERSIM_BERRY
	dbw 50,  SITRUS_BERRY
	dbw 60,  SILVER_LEAF
	dbw 75,  GOLD_LEAF
	dbw 90,  ORAN_BERRY
	dbw 100, ORAN_BERRY
	dbw 120, ORAN_BERRY
	dbw 135, ORAN_BERRY
	dbw 150, LEPPA_BERRY
	dbw 170, POLKADOT_BOW
	dbw 180, BRICK_PIECE
	dbw 190, ORAN_BERRY
	dbw 195, ORAN_BERRY
	dbw 200, TM_PSYCH_UP
	dbw 220, ORAN_BERRY
	dbw 225, TM_ICE_PUNCH
	dbw 235, TM_DETECT
	dbw 250, ORAN_BERRY
	dbw 255, ORAN_BERRY
	db 0 ; end

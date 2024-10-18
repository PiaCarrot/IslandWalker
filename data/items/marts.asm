Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartBerrySeller
	dw MartBerryPinkan
	dw MartTangelo
	dw MartMikan
	dw MartXItem
	dw MartMandarinNorth
	dw MartEnergyGuru
	dw MartSunburstStones
	dw MartSurvival
	dw MartIncense
	dw MartHerbs
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

MartEnergyGuru:
	db 7 ; # items
	dw PROTEIN
	dw IRON
	dw CARBOS
	dw ZINC
	dw CALCIUM
	dw HP_UP
	dw PP_UP

MartSunburstStones:
	db 4 ; # items
	dw FIRE_STONE
	dw WATER_STONE
	dw LEAF_STONE
	dw THUNDERSTONE

MartSurvival:
	db 5 ; # items
	dw ESCAPE_ROPE
	dw REPEL
	dw SUPER_REPEL
	dw POKE_DOLL
	dw FRESH_WATER

MartIncense:
	db 9 ; # items
	dw SEA_INCENSE
	dw LAX_INCENSE
	dw ROSE_INCENSE
	dw PURE_INCENSE
	dw ROCK_INCENSE
	dw ODD_INCENSE
	dw LUCK_INCENSE
	dw FULL_INCENSE
	dw WAVE_INCENSE

MartHerbs:
	db 8 ; # items
	dw ENERGYPOWDER
	dw ENERGY_ROOT
	dw HEAL_POWDER
	dw REVIVAL_HERB
	dw MIRROR_HERB
	dw MENTAL_HERB
	dw POWER_HERB
	dw WHITE_HERB

DefaultMart:
	db 2 ; # items
	dw POKE_BALL
	dw POTION

MACRO alchemy_prob
    db \1
    dw \2
    DEF alchemy_prob_total += \1
ENDM

PowerOfAlchemyItems:
    DEF alchemy_prob_total = 0
	alchemy_prob 40, SILVER_LEAF
	alchemy_prob 30, GOLD_LEAF
	alchemy_prob 4, CALCIUM
	alchemy_prob 4, CARBOS
	alchemy_prob 4, IRON
	alchemy_prob 4, HP_UP
	alchemy_prob 4, ZINC
	alchemy_prob 4, PROTEIN
	alchemy_prob 2, NUGGET
	alchemy_prob 2, PP_UP
	alchemy_prob 1, PP_MAX
	alchemy_prob 1, ABILITY_UP
    assert alchemy_prob_total == 100, "PowerOfAlchemyItems probabilities do not sum to 100!"
    db 0
    dw 0

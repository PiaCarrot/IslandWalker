MACRO gold_prob
    db \1
    dw \2
    DEF gold_prob_total += \1
ENDM

GoodAsGoldItems:
    DEF gold_prob_total = 0
	gold_prob 40, GOLD_LEAF
	gold_prob 30, GOLD_DUST
    gold_prob 20, NUGGET
	gold_prob 7, GOLD_CAP
    gold_prob 2, BIG_NUGGET
	gold_prob 1, GOLD_STATUE
    assert gold_prob_total == 100, "GoodAsGoldItems probabilities do not sum to 100!"
    db 0
    dw 0

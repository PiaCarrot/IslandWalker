MACRO honey_prob
    db \1
    dw \2
    DEF honey_prob_total += \1
ENDM

HoneyGatherItems:
    DEF honey_prob_total = 0
    honey_prob 70, HONEY
	honey_prob 25, SWEET_HONEY
	honey_prob 5, CANDYTRUFFLE
    assert honey_prob_total == 100, "HoneyGatherItems probabilities do not sum to 100!"
    db 0
    dw 0

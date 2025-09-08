MACRO flower_prob
    db \1
    dw \2
    DEF flower_prob_total += \1
ENDM

FlowerGiftItems:
    DEF flower_prob_total = 0
	flower_prob 4, LONELY_MINT
	flower_prob 4, ADAMANT_MINT
	flower_prob 4, NAUGHTY_MINT
	flower_prob 4, BRAVE_MINT
	flower_prob 4, BOLD_MINT
	flower_prob 4, IMPISH_MINT
	flower_prob 4, LAX_MINT
	flower_prob 4, RELAXED_MINT
	flower_prob 4, MODEST_MINT
	flower_prob 4, MILD_MINT
	flower_prob 4, RASH_MINT
	flower_prob 4, QUIET_MINT
	flower_prob 4, CALM_MINT
	flower_prob 4, GENTLE_MINT
	flower_prob 4, CAREFUL_MINT
	flower_prob 4, SASSY_MINT
	flower_prob 4, TIMID_MINT
	flower_prob 4, HASTY_MINT
	flower_prob 4, JOLLY_MINT
	flower_prob 4, NAIVE_MINT
	flower_prob 4, SERIOUS_MINT
	flower_prob 4, HARDY_MINT
	flower_prob 4, DOCILE_MINT
	flower_prob 4, BASHFUL_MINT
	flower_prob 4, QUIRKY_MINT
    assert flower_prob_total == 100, "FlowerGiftItems probabilities do not sum to 100!"
    db 0
    dw 0

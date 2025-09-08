MACRO pickup_prob
    db \1
    dw \2
    DEF pickup_prob_total += \1
ENDM

PickupItems:
    DEF pickup_prob_total = 0
    pickup_prob 30, SUPER_POTION
    pickup_prob 10, ULTRA_BALL
    pickup_prob 10, FULL_HEAL
    pickup_prob 10, FULL_RESTORE
    pickup_prob 10, NUGGET
    pickup_prob 10, REVIVE
    pickup_prob 10, RARE_CANDY
    pickup_prob 5, PROTEIN
    pickup_prob 4, PP_UP
    pickup_prob 1, KINGS_ROCK
    assert pickup_prob_total == 100, "PickupItems probabilities do not sum to 100!"
    db 0
    dw 0

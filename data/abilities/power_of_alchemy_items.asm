MACRO alchemy_prob
    db \1
    dw \2
    DEF alchemy_prob_total += \1
ENDM

PowerOfAlchemyItems:
    DEF alchemy_prob_total = 0
    alchemy_prob 30, SUPER_POTION
    alchemy_prob 20, ETHER
    alchemy_prob 10, HYPER_POTION
    alchemy_prob 10, FULL_HEAL
    alchemy_prob 5, MAX_ETHER
    alchemy_prob 5, ELIXIR
    alchemy_prob 5, MAX_ELIXIR
    alchemy_prob 2, CALCIUM
    alchemy_prob 2, CARBOS
    alchemy_prob 2, IRON
    alchemy_prob 2, HP_UP
    alchemy_prob 2, ZINC
    alchemy_prob 2, PROTEIN
    alchemy_prob 1, PP_UP
    alchemy_prob 1, PP_MAX
    alchemy_prob 1, ABILITY_UP
    assert alchemy_prob_total == 100, "PowerOfAlchemyItems probabilities do not sum to 100!"
    db 0
    dw 0

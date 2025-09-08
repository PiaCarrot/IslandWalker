MACRO medicine_prob
    db \1
    dw \2
    DEF medicine_prob_total += \1
ENDM

CuriousMedicineItems:
    DEF medicine_prob_total = 0
    medicine_prob 25, POTION
    medicine_prob 15, SUPER_POTION
    medicine_prob 15, ETHER
    medicine_prob 10, HYPER_POTION
    medicine_prob 10, FULL_HEAL
    medicine_prob 5, MAX_POTION
    medicine_prob 5, MAX_ETHER
    medicine_prob 5, FULL_RESTORE
    medicine_prob 5, ELIXIR
    medicine_prob 4, MAX_ELIXIR
    medicine_prob 1, ABILITY_UP
    assert medicine_prob_total == 100, "CuriousMedicineItems probabilities do not sum to 100!"
    db 0
    dw 0

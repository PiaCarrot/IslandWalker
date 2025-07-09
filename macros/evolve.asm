; Evolution macr0

MACRO evolve
    db \1
    if (\1) == EVOLVE_LEVEL
        db \2 ; level
        dw \3 ; species
    elif (\1) == EVOLVE_ITEM
        dw \2 ; item
        dw \3 ; species
    elif (\1) == EVOLVE_TRADE
        dw \2 ; item
        dw \3 ; species
    elif (\1) == EVOLVE_HAPPINESS
        dw \2 ; species
    elif (\1) == EVOLVE_HAPPINESS_TIME
        db \2 ; time
        dw \3 ; species
    elif (\1) == EVOLVE_STAT
        db \2 ; stat
        db \3 ; level
        dw \4 ; species
    elif (\1) == EVOLVE_PV
        db \2 ; level
        dw \3 ; species 1
        dw \4 ; species 2
    endc
ENDM
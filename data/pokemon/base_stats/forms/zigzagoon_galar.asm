        db 0 ; species ID placeholder

        db  38,  30,  41,  60,  30,  41
        evs  0,   0,   0,   1,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, NORMAL ; type
        db 255 ; catch rate
        db 56 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 15 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/zigzagoon_galar/front.dimensions"
        db PICKUP, GLUTTONY ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

        ; tm/hm learnset
        tmhm DIG, ATTRACT, GRASS_KNOT, REST, THUNDER_WAVE, SLEEP_TALK, ENDURE, WORK_UP, IRON_TAIL, RAIN_DANCE, PROTECT, THIEF, SHADOW_BALL, PAYBACK, FLING, SNARL, SUNNY_DAY, ICE_BEAM, THUNDER, BLIZZARD, THUNDERBOLT, SUBSTITUTE, CUT, ROCK_SMASH, WHIRLPOOL, FACADE, TAUNT, SURF
        ; end

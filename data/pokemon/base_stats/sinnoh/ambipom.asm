        db 0 ; species ID placeholder

        db  75, 100,  66, 115,  60,  66
        evs  0,   0,   0,   0,   0,   2
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, NORMAL ; type
        db 45 ; catch rate
        db 169 ; base exp
        dw NO_ITEM,NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/sinnoh/ambipom/front.dimensions"
        db TECHNICIAN, PICKUP ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_FAST ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

        ; tm/hm learnset
        tmhm FOCUS_PUNCH, WATER_PULSE, WORK_UP, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, LOW_SWEEP, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, FLING, ENDURE, NASTY_PLOT, SHADOW_CLAW, PAYBACK, GIGA_IMPACT, THUNDER_WAVE, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, U_TURN, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH
        ; end

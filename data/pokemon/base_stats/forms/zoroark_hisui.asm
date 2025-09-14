        db 0 ; species ID placeholder

        db  55, 100,  60, 110, 125,  60
        evs  0,   0,   0,   0,   2,   0
        ;   hp  atk  def  spd  sat  sdf

        db NORMAL, GHOST ; type
        db 45 ; catch rate
        db 179 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F12_5 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/zoroark_hisui/front.dimensions"
        db ILLUSION, ILLUSION ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_M ; drop item
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

        ; tm/hm learnset
        tmhm CALM_MIND, ROAR, TOXIC, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, LOW_SWEEP, DIG, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, SLUDGE_BOMB, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FLING, ENDURE, NASTY_PLOT, SHADOW_CLAW, PAYBACK, GIGA_IMPACT, SWORDS_DANCE, PSYCH_UP, SNARL, DARK_PULSE, SLEEP_TALK, GRASS_KNOT, SWAGGER, U_TURN, SUBSTITUTE, CUT, ROCK_SMASH
        ; end


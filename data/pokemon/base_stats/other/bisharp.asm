        db 0 ; species ID placeholder

        db  65, 125, 100,  70,  60,  70
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, STEEL ; type
        db 45 ; catch rate
        db 172 ; base exp
        dw NO_ITEM, LEADER_CREST ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/bisharp/front.dimensions"
        db DEFIANT, INNER_FOCUS ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_M ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

        ; tm/hm learnset
        tmhm TOXIC, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, LOW_SWEEP, DIG, BRICK_BREAK, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FALSE_SWIPE, FLING, ENDURE, SHADOW_CLAW, PAYBACK, GIGA_IMPACT, ROCK_POLISH, STONE_EDGE, THUNDER_WAVE, SWORDS_DANCE, STEALTH_ROCK, SNARL, DARK_PULSE, X_SCISSOR, SLEEP_TALK, POISON_JAB, GRASS_KNOT, SWAGGER, SUBSTITUTE, FLASH_CANNON, CUT, ROCK_SMASH
        ; end

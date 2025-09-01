        db 0 ; species ID placeholder

        db  45,  85,  70,  60,  40,  40
        evs  0,   1,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, STEEL ; type
        db 120 ; catch rate
        db 68 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/pawniard/front.dimensions"
        db DEFIANT, INNER_FOCUS ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

        ; tm/hm learnset
        tmhm TOXIC, TAUNT, PROTECT, RAIN_DANCE, LOW_SWEEP, DIG, BRICK_BREAK, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, FALSE_SWIPE, FLING, ENDURE, SHADOW_CLAW, PAYBACK, ROCK_POLISH, STONE_EDGE, THUNDER_WAVE, SWORDS_DANCE, STEALTH_ROCK, SNARL, DARK_PULSE, X_SCISSOR, SLEEP_TALK, POISON_JAB, GRASS_KNOT, SWAGGER, SUBSTITUTE, FLASH_CANNON, CUT, ROCK_SMASH
        ; end

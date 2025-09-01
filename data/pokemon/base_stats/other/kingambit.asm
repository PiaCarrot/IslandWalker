        db 0 ; species ID placeholder

        db 100, 135, 120,  50,  60,  85
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, STEEL ; type
        db 25 ; catch rate
        db 275 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/kingambit/front.dimensions"
        db DEFIANT, SUPREME_OVERLORD ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

        ; tm/hm learnset
        tmhm TOXIC, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, LOW_SWEEP, DIG, BRICK_BREAK, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FALSE_SWIPE, FLING, ENDURE, SHADOW_CLAW, PAYBACK, GIGA_IMPACT, ROCK_POLISH, STONE_EDGE, THUNDER_WAVE, SWORDS_DANCE, STEALTH_ROCK, SNARL, DARK_PULSE, X_SCISSOR, SLEEP_TALK, POISON_JAB, GRASS_KNOT, SWAGGER, SUBSTITUTE, FLASH_CANNON, CUT, ROCK_SMASH
        ; end

        db 0 ; species ID placeholder

        db  40,  65,  40,  65,  80,  40
        evs  0,   0,   0,   0,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, DARK ; type
        db 75 ; catch rate
        db 66 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_F12_5 ; gender ratio
        db 25 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/zorua/front.dimensions"
        db ILLUSION, ILLUSION ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

        ; tm/hm learnset
        tmhm CALM_MIND, ROAR, TOXIC, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, DIG, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, FLING, ENDURE, NASTY_PLOT, SHADOW_CLAW, PAYBACK, SWORDS_DANCE, PSYCH_UP, SNARL, DARK_PULSE, SLEEP_TALK, GRASS_KNOT, SWAGGER, U_TURN, SUBSTITUTE, CUT
        ; end

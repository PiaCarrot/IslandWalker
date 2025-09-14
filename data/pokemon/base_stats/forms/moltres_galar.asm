        db 0 ; species ID placeholder

        db  90,  85,  90,  90, 100, 125
        evs  0,   0,   0,   0,   0,   3
        ;   hp  atk  def  spd  sat  sdf

        db DARK, FLYING ; type
        db 3 ; catch rate
        db 255 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_UNKNOWN ; gender ratio
        db 80 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/moltres_galar/front.dimensions"
        db BERSERK, SHEER_FORCE ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_L ; drop item
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm SANDSTORM, REST, DARK_PULSE, HYPER_BEAM, STEEL_WING, SLEEP_TALK, ENDURE, AERIAL_ACE, SAFEGUARD, RAIN_DANCE, PROTECT, THIEF, SHADOW_BALL, PAYBACK, SNARL, SUNNY_DAY, GIGA_IMPACT, NASTY_PLOT, SUBSTITUTE, FACADE, FLY, DEFOG, ROCK_SMASH, U_TURN, TAUNT
        ; end

        db 0 ; species ID placeholder

        db  90, 125,  90, 100,  85,  90
        evs  0,   3,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db FIGHTING, FLYING ; type
        db 3 ; catch rate
        db 255 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_UNKNOWN ; gender ratio
        db 80 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/zapdos_galar/front.dimensions"
        db DEFIANT, TOUGH_CLAWS ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm SANDSTORM, REST, HYPER_BEAM, LIGHT_SCREEN, STEEL_WING, SLEEP_TALK, ENDURE, AERIAL_ACE, BRICK_BREAK, RAIN_DANCE, PROTECT, PAYBACK, SUNNY_DAY, GIGA_IMPACT, BULK_UP, SUBSTITUTE, FACADE, FLY, DEFOG, ROCK_SMASH, U_TURN, TAUNT, LOW_SWEEP
        ; end

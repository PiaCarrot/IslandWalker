        db 0 ; species ID placeholder

        db  90,  85,  85,  95, 125, 100
        evs  0,   0,   0,   0,   3,   0
        ;   hp  atk  def  spd  sat  sdf

        db PSYCHIC_TYPE, FLYING ; type
        db 3 ; catch rate
        db 255 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_UNKNOWN ; gender ratio
        db 80 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/articuno_galar/front.dimensions"
        db COMPETITIVE, COMPETITIVE ; wBaseAbility1, wBaseAbility2
        dw NULL ; Padding left-over from the unused back pic
        db GROWTH_SLOW ; growth rate
        dn EGG_NONE, EGG_NONE ; egg groups

        ; tm/hm learnset
        tmhm REFLECT, REST, HYPER_BEAM, LIGHT_SCREEN, STEEL_WING, SLEEP_TALK, ENDURE, CALM_MIND, RAIN_DANCE, PROTECT, SHADOW_BALL, TRICK_ROOM, SUNNY_DAY, GIGA_IMPACT, SUBSTITUTE, PSYCHIC_M, FACADE, FLY, DEFOG, ROCK_SMASH, U_TURN, SKILL_SWAP
        ; end

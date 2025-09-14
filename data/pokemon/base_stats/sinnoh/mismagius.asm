        db 0 ; species ID placeholder

        db  60,  60,  60, 105, 105, 105
        evs  0,   0,   0,   0,   1,   1
        ;   hp  atk  def  spd  sat  sdf

        db GHOST, GHOST ; type
        db 45 ; catch rate
        db 173 ; base exp
        dw NO_ITEM,NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 25 ; step cycles to hatch
        INCBIN "gfx/pokemon/sinnoh/mismagius/front.dimensions"
        db LEVITATE, LEVITATE ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_XS ; drop item
        db GROWTH_FAST ; growth rate
        dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

        ; tm/hm learnset
        tmhm CALM_MIND, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, DAZZLING_GLEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, ENERGY_BALL, CHARGE_BEAM, ENDURE, WILL_O_WISP, NASTY_PLOT, PAYBACK, GIGA_IMPACT, FLASH, THUNDER_WAVE, PSYCH_UP, DARK_PULSE, SLEEP_TALK, DREAM_EATER, SWAGGER, SUBSTITUTE, TRICK_ROOM
        ; end

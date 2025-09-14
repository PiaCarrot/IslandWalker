        db 0 ; species ID placeholder

        db 100, 125,  52,  71, 105,  52
        evs  0,   2,   0,   0,   0,   0
        ;   hp  atk  def  spd  sat  sdf

        db DARK, FLYING ; type
        db 30 ; catch rate
        db 177 ; base exp
        dw NO_ITEM,NO_ITEM ; items
        db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/sinnoh/honchkrow/front.dimensions"
        db INSOMNIA, SUPER_LUCK ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_M ; drop item
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_FLYING, EGG_FLYING ; egg groups

        ; tm/hm learnset
	tmhm CALM_MIND, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, ENDURE, NASTY_PLOT, PAYBACK, GIGA_IMPACT, THUNDER_WAVE, PSYCH_UP, SNARL, DARK_PULSE, SLEEP_TALK, DREAM_EATER, SWAGGER, PLUCK, SUBSTITUTE, FLY, DEFOG
        ; end

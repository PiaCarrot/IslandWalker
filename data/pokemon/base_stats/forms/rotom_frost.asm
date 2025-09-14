        db 0 ; species ID placeholder

        db 50, 65, 107, 86, 105, 107
        evs 0,   0,   0,   1,   1,   0
        ;   hp  atk  def  spd  sat  sdf

        db ELECTRIC, ICE ; type
        db 45 ; catch rate
        db 182 ; base exp
        dw NO_ITEM, NO_ITEM ; items
        db GENDER_UNKNOWN ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/rotom_frost/front.dimensions"
        db LEVITATE, LEVITATE ; wBaseAbility1, wBaseAbility2
        dw EXP_CANDY_M ; drop item
        db GROWTH_MEDIUM_FAST ; growth rate
        dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

        ; tm/hm learnset
	tmhm SIGNAL_BEAM, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FACADE, VOLT_SWITCH, REST, THIEF, CHARGE_BEAM, ENDURE, WILL_O_WISP, NASTY_PLOT, FLASH, THUNDER_WAVE, PSYCH_UP, DARK_PULSE, SLEEP_TALK, DREAM_EATER, SWAGGER, SUBSTITUTE
        ; end

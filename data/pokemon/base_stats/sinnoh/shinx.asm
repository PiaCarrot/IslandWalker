	db 0 ; species ID placeholder

        db  45,  65,  34,  45,  40,  34
        evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
        db 235 ; catch rate
        db 53 ; base exp
        dw NO_ITEM,NO_ITEM ; items
	db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/sinnoh/shinx/front.dimensions"
        db RIVALRY, INTIMIDATE ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SIGNAL_BEAM, ROAR, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, DOUBLE_TEAM, SHOCK_WAVE, FACADE, VOLT_SWITCH, REST, ATTRACT, THIEF, CHARGE_BEAM, ENDURE, FLASH, THUNDER_WAVE, SNARL, SLEEP_TALK, SWAGGER, SUBSTITUTE, STRENGTH
	; end

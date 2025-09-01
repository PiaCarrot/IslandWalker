	db 0 ; species ID placeholder

        db  80, 120,  79,  70,  95,  79
        evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
        db 45 ; catch rate
        db 235 ; base exp
        dw NO_ITEM,NO_ITEM ; items
	db GENDER_F50 ; gender ratio
        db 20 ; step cycles to hatch
        INCBIN "gfx/pokemon/sinnoh/luxray/front.dimensions"
        db RIVALRY, INTIMIDATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
        db GROWTH_MEDIUM_SLOW ; growth rate
        dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, DOUBLE_TEAM, SHOCK_WAVE, FACADE, VOLT_SWITCH, REST, ATTRACT, THIEF, CHARGE_BEAM, ENDURE, GIGA_IMPACT, FLASH, THUNDER_WAVE, SNARL, SLEEP_TALK, SWAGGER, SUBSTITUTE, STRENGTH
	; end

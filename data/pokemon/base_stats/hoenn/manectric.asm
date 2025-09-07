	db 0 ; species ID placeholder

	db  70,  75,  60, 105, 105,  60
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 168 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/manectric/front.dimensions"
	db STATIC, STATIC ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SIGNAL_BEAM, ROAR, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, FACADE, VOLT_SWITCH, REST, ATTRACT, THIEF, OVERHEAT, CHARGE_BEAM, ENDURE, GIGA_IMPACT, FLASH, THUNDER_WAVE, SNARL, SLEEP_TALK, SWAGGER, SUBSTITUTE, STRENGTH
	; end

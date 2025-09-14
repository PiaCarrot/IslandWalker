	db 0 ; species ID placeholder

	db  65,  65,  60, 130, 110,  95
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 197 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/jolteon/front.dimensions"
	db VOLT_ABSORB, QUICK_FEET ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SIGNAL_BEAM, ROAR, WORK_UP, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, DIG, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, FACADE, VOLT_SWITCH, REST, ATTRACT, CHARGE_BEAM, ENDURE, GIGA_IMPACT, FLASH, THUNDER_WAVE, SLEEP_TALK, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

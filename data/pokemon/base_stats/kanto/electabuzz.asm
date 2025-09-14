	db 0 ; species ID placeholder

	db  65,  83,  57, 105,  95,  85
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 156 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/electabuzz/front.dimensions"
	db STATIC, VITAL_SPIRIT ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, SIGNAL_BEAM, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, LOW_SWEEP, PSYCHIC_M, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FACADE, VOLT_SWITCH, REST, ATTRACT, THIEF, FOCUS_BLAST, FLING, CHARGE_BEAM, ENDURE, GIGA_IMPACT, FLASH, THUNDER_WAVE, SLEEP_TALK, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

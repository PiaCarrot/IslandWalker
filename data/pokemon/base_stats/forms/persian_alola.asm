	db 0 ; species ID placeholder

	db  65,  70,  60, 115,  65,  65
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 90 ; catch rate
	db 148 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/persian_alola/front.dimensions"
	db FUR_COAT, TECHNICIAN ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm EMBARGO, DOUBLE_TEAM, REST, SHADOW_BALL, SLEEP_TALK, ROAR, DIG, FACADE, RETURN, ENDURE, NASTY_PLOT, U_TURN, SUNNY_DAY, SNARL, PROTECT, RAIN_DANCE, DARK_PULSE, TOXIC, THUNDER, FRUSTRATION, DREAM_EATER, PAYBACK, TORMENT, THIEF, ATTRACT, SWAGGER, THUNDERBOLT, IRON_TAIL, PSYCH_UP, AERIAL_ACE, TAUNT, THUNDER_WAVE, HIDDEN_POWER, WORK_UP, SUBSTITUTE, GIGA_IMPACT, SHADOW_CLAW, HYPER_BEAM
	; end

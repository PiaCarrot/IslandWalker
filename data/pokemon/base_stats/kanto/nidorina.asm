	db 0 ; species ID placeholder

	db  70,  62,  67,  56,  55,  55
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 120 ; catch rate
	db 117 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/nidorina/front.dimensions"
	db POISON_POINT, RIVALRY ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_S ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, TOXIC, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, DIG, DOUBLE_TEAM, SHOCK_WAVE, SLUDGE_BOMB, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, ENDURE, SHADOW_CLAW, SLEEP_TALK, POISON_JAB, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH
	; end

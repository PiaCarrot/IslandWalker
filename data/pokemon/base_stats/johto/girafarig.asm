	db 0 ; species ID placeholder

	db  70,  80,  65,  85,  90,  65
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 149 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/girafarig/front.dimensions"
	db INNER_FOCUS, EARLY_BIRD ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, SIGNAL_BEAM, WORK_UP, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, DAZZLING_GLEAM, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, ENERGY_BALL, CHARGE_BEAM, ENDURE, NASTY_PLOT, RECYCLE, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, BULLDOZE, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, TRICK_ROOM, STRENGTH, ROCK_SMASH
	; end

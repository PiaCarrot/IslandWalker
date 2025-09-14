	db 0 ; species ID placeholder

	db  50,  75,  75,  50,  65,  65
	evs  0,   1,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, GHOST ; type
	db 45 ; catch rate
	db 98 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/sableye/front.dimensions"
	db KEEN_EYE, KEEN_EYE ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_S ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, CALM_MIND, SIGNAL_BEAM, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, DAZZLING_GLEAM, LOW_SWEEP, DIG, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, ROCK_TOMB, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, FLING, ENDURE, DRAIN_PUNCH, WILL_O_WISP, NASTY_PLOT, SHADOW_CLAW, PAYBACK, FLASH, GYRO_BALL, PSYCH_UP, SNARL, DARK_PULSE, SLEEP_TALK, POISON_JAB, DREAM_EATER, SWAGGER, SUBSTITUTE, CUT, ROCK_SMASH
	; end

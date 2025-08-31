	db 0 ; species ID placeholder

	db  55,  95,  55, 115,  35,  75
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, ICE ; type
	db 60 ; catch rate
	db 132 ; base exp
	dw NO_ITEM, QUICK_CLAW ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/sneasel/front.dimensions"
	db INNER_FOCUS, KEEN_EYE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, CALM_MIND, HAIL, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, IRON_TAIL, LOW_SWEEP, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, FALSE_SWIPE, FLING, ENDURE, SHADOW_CLAW, PAYBACK, AVALANCHE, SWORDS_DANCE, PSYCH_UP, SNARL, DARK_PULSE, X_SCISSOR, SLEEP_TALK, POISON_JAB, DREAM_EATER, SWAGGER, SUBSTITUTE, CUT, SURF, STRENGTH, ROCK_SMASH, WHIRLPOOL
	; end

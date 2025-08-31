	db 0 ; species ID placeholder

	db  50,  65,  45,  95,  85,  65
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 141 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/grovyle/front.dimensions"
	db OVERGROW, OVERGROW ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, BULLET_SEED, WORK_UP, SUNNY_DAY, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLARBEAM, IRON_TAIL, LOW_SWEEP, DIG, BRICK_BREAK, DOUBLE_TEAM, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, ENERGY_BALL, FALSE_SWIPE, FLING, ENDURE, DRAIN_PUNCH, FLASH, SWORDS_DANCE, ROCK_SLIDE, X_SCISSOR, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH
	; end

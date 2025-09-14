	db 0 ; species ID placeholder

	db  75, 100, 110,  65,  45,  55
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 90 ; catch rate
	db 163 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/sandslash/front.dimensions"
	db SAND_VEIL, SAND_RUSH ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WORK_UP, SUNNY_DAY, HYPER_BEAM, PROTECT, SAFEGUARD, IRON_TAIL, EARTHQUAKE, DIG, BRICK_BREAK, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FLING, ENDURE, SHADOW_CLAW, GIGA_IMPACT, STONE_EDGE, GYRO_BALL, SWORDS_DANCE, STEALTH_ROCK, ROCK_SLIDE, X_SCISSOR, SLEEP_TALK, BULLDOZE, POISON_JAB, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

	db 0 ; species ID placeholder

	db  80, 110, 130,  45,  55,  65
	evs  0,   0,   3,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 177 ; base exp
	dw NO_ITEM, EVERSTONE ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/golem/front.dimensions"
	db ROCK_HEAD, STURDY ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_L ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, ROAR, SUNNY_DAY, HYPER_BEAM, PROTECT, EARTHQUAKE, DIG, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, FACADE, REST, ATTRACT, FOCUS_BLAST, FLING, ENDURE, EXPLOSION, GIGA_IMPACT, ROCK_POLISH, STONE_EDGE, GYRO_BALL, STEALTH_ROCK, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

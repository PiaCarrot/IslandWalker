	db 0 ; species ID placeholder

	db  40,  80, 100,  20,  30,  30
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ELECTRIC ; type
	db 255 ; catch rate
	db 86 ; base exp
	dw NO_ITEM, EVERSTONE ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/geodude_alola/front.dimensions"
	db MAGNET_PULL, STURDY ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm SANDSTORM, CHARGE_BEAM, DIG, FOCUS_PUNCH, FRUSTRATION, FACADE, RETURN, BRICK_BREAK, ENDURE, DOUBLE_TEAM, FLAMETHROWER, GYRO_BALL, STONE_EDGE, ROCK_POLISH, FLING, THUNDER_WAVE, HIDDEN_POWER, EARTHQUAKE, ATTRACT, VOLT_SWITCH, FIRE_BLAST, SUBSTITUTE, REST, SWAGGER, SUNNY_DAY, ROCK_SLIDE, PROTECT, THUNDERBOLT, EXPLOSION, BULLDOZE, TOXIC, ROCK_TOMB, THUNDER, SLEEP_TALK, STEALTH_ROCK
	; end

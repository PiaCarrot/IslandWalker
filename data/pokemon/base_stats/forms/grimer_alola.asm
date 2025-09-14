	db 0 ; species ID placeholder

	db  80,  80,  50,  25,  40,  50
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, DARK ; type
	db 190 ; catch rate
	db 90 ; base exp
	dw NO_ITEM, NUGGET ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/grimer_alola/front.dimensions"
	db POISON_TOUCH, GLUTTONY ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm SANDSTORM, DIG, EMBARGO, FRUSTRATION, GIGA_DRAIN, FACADE, RETURN, BRICK_BREAK, ENDURE, DOUBLE_TEAM, FLAMETHROWER, STONE_EDGE, ROCK_POLISH, TAUNT, FLING, HIDDEN_POWER, PAYBACK, TORMENT, THIEF, ATTRACT, FIRE_BLAST, SUBSTITUTE, REST, SWAGGER, SUNNY_DAY, ROCK_SLIDE, DRAIN_PUNCH, PROTECT, RAIN_DANCE, SLUDGE_BOMB, DARK_PULSE, SNARL, THUNDERBOLT, GIGA_IMPACT, EXPLOSION, SHADOW_BALL, TOXIC, ROCK_TOMB, THUNDER, HYPER_BEAM, SLEEP_TALK, POISON_JAB
	; end

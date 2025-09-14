	db 0 ; species ID placeholder

	db  80,  82,  83,  80, 100, 100
	evs  0,   0,   0,   0,   2,   1
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 45 ; catch rate
	db 208 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/venusaur/front.dimensions"
	db OVERGROW, CHLOROPHYLL ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_L ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ROAR, TOXIC, BULLET_SEED, WORK_UP, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLARBEAM, EARTHQUAKE, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, ENERGY_BALL, FALSE_SWIPE, ENDURE, GIGA_IMPACT, FLASH, SWORDS_DANCE, SLEEP_TALK, BULLDOZE, GRASS_KNOT, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

	db 0 ; species ID placeholder

	db  65,  90,  50,  55,  85,  45
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 120 ; catch rate
	db 151 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/weepinbell_valencia/front.dimensions"
	db GLUTTONY, GLUTTONY ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_S ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm BULLET_SEED, SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, FACADE, REST, ATTRACT, THIEF, ENERGY_BALL, ENDURE, FLASH, SWORDS_DANCE, SLEEP_TALK, POISON_JAB, GRASS_KNOT, SWAGGER, SUBSTITUTE, CUT
	; end

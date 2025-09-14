	db 0 ; species ID placeholder

	db  60,  40,  80,  40,  60,  45
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, PSYCHIC_TYPE ; type
	db 90 ; catch rate
	db 98 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/exeggcute/front.dimensions"
	db CHLOROPHYLL, HARVEST ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm BULLET_SEED, SUNNY_DAY, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SOLARBEAM, PSYCHIC_M, DOUBLE_TEAM, REFLECT, SLUDGE_BOMB, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, ENERGY_BALL, ENDURE, EXPLOSION, FLASH, SWORDS_DANCE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, TRICK_ROOM, STRENGTH
	; end

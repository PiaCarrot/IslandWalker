	db 0 ; species ID placeholder

	db  55,  45,  50,  80,  45,  65
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 120 ; catch rate
	db 136 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/skiploom/front.dimensions"
	db CHLOROPHYLL, LEAF_GUARD ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm BULLET_SEED, SUNNY_DAY, PROTECT, GIGA_DRAIN, DAZZLING_GLEAM, SOLARBEAM, DOUBLE_TEAM, REFLECT, AERIAL_ACE, FACADE, REST, ATTRACT, ENERGY_BALL, ENDURE, FLASH, SWORDS_DANCE, PSYCH_UP, SLEEP_TALK, GRASS_KNOT, SWAGGER, U_TURN, SUBSTITUTE
	; end

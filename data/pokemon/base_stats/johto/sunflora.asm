	db 0 ; species ID placeholder

	db  75,  75,  55,  30, 105,  85
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 120 ; catch rate
	db 146 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/sunflora/front.dimensions"
	db CHLOROPHYLL, GRASSY_SURGE ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_S ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm BULLET_SEED, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLARBEAM, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, ENERGY_BALL, ENDURE, GIGA_IMPACT, FLASH, SWORDS_DANCE, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE, CUT
	; end

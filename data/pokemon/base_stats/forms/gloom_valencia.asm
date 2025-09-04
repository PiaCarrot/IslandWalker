	db 0 ; species ID placeholder

	db  60,  65,  70,  40,  85,  75
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 120 ; catch rate
	db 132 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/gloom_valencia/front.dimensions"
	db CHLOROPHYLL, STENCH ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm TOXIC, BULLET_SEED, SUNNY_DAY, PROTECT, GIGA_DRAIN, DAZZLING_GLEAM, SOLARBEAM, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, ENERGY_BALL, FLING, ENDURE, DRAIN_PUNCH, FLASH, SWORDS_DANCE, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE, CUT
	; end

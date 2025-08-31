	db 0 ; species ID placeholder

	db  50,  60,  45,  65, 100,  80
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, POISON ; type
	db 150 ; catch rate
	db 152 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/roselia/front.dimensions"
	db NATURAL_CURE, POISON_POINT ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm TOXIC, BULLET_SEED, SUNNY_DAY, PROTECT, RAIN_DANCE, GIGA_DRAIN, DAZZLING_GLEAM, SOLARBEAM, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, ENERGY_BALL, ENDURE, FLASH, SWORDS_DANCE, PSYCH_UP, SLEEP_TALK, POISON_JAB, GRASS_KNOT, SWAGGER, SUBSTITUTE, CUT
	; end

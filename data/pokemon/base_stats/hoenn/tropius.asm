	db 0 ; species ID placeholder

	db  99,  68,  83,  51,  72,  87
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 200 ; catch rate
	db 169 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/tropius/front.dimensions"
	db CHLOROPHYLL, SOLAR_POWER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ROAR, BULLET_SEED, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLARBEAM, EARTHQUAKE, DOUBLE_TEAM, AERIAL_ACE, FACADE, REST, ATTRACT, STEEL_WING, ROOST, ENERGY_BALL, ENDURE, DRAGON_PULSE, GIGA_IMPACT, FLASH, SWORDS_DANCE, SLEEP_TALK, BULLDOZE, GRASS_KNOT, SWAGGER, SUBSTITUTE, CUT, FLY, STRENGTH, DEFOG, ROCK_SMASH
	; end

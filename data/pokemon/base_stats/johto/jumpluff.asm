	db 0 ; species ID placeholder

	db  75,  55,  70, 110,  55,  85
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 45 ; catch rate
	db 176 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/jumpluff/front.dimensions"
	db CHLOROPHYLL, LEAF_GUARD ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm BULLET_SEED, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, DAZZLINGGLEAM, SOLAR_BEAM, DOUBLE_TEAM, REFLECT, AERIAL_ACE, FACADE, REST, ATTRACT, ENERGY_BALL, ENDURE, GIGA_IMPACT, FLASH, SWORDS_DANCE, PSYCH_UP, SLEEP_TALK, GRASS_KNOT, SWAGGER, U_TURN, SUBSTITUTE
	; end

	db 0 ; species ID placeholder

	db  35,  35,  40,  50,  35,  55
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db GRASS, FLYING ; type
	db 255 ; catch rate
	db 74 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/hoppip/front.dimensions"
	db CHLOROPHYLL, LEAF_GUARD ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FAIRY, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm BULLET_SEED, SUNNY_DAY, PROTECT, GIGA_DRAIN, DAZZLINGGLEAM, SOLAR_BEAM, DOUBLE_TEAM, REFLECT, AERIAL_ACE, FACADE, REST, ATTRACT, ENERGY_BALL, ENDURE, FLASH, SWORDS_DANCE, PSYCH_UP, SLEEP_TALK, GRASS_KNOT, SWAGGER, U_TURN, SUBSTITUTE
	; end

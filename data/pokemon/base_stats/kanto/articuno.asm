	db 0 ; species ID placeholder

	db  90,  85, 100,  85,  95, 125
	evs  0,   0,   0,   0,   0,   3
	;   hp  atk  def  spd  sat  sdf

	db ICE, FLYING ; type
	db 3 ; catch rate
	db 215 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/articuno/front.dimensions"
	db PRESSURE, SNOW_CLOAK ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, ROAR, HAIL, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, DOUBLE_TEAM, REFLECT, SANDSTORM, AERIAL_ACE, FACADE, REST, STEEL_WING, ROOST, ENDURE, GIGA_IMPACT, AVALANCHE, SLEEP_TALK, SWAGGER, PLUCK, U_TURN, SUBSTITUTE, FLY, DEFOG, ROCK_SMASH
	; end

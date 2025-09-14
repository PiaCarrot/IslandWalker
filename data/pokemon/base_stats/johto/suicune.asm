	db 0 ; species ID placeholder

	db 100,  75, 115,  85,  90, 115
	evs  0,   0,   1,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 3 ; catch rate
	db 215 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/suicune/front.dimensions"
	db INNER_FOCUS, WATER_ABSORB ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, CALM_MIND, SIGNAL_BEAM, ROAR, HAIL, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, DIG, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SANDSTORM, FACADE, REST, SCALD, BRINE, ENDURE, GIGA_IMPACT, AVALANCHE, PSYCH_UP, SNARL, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, CUT, SURF, ROCK_SMASH, WATERFALL, ROCK_CLIMB, WHIRLPOOL
	; end

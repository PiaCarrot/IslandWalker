	db 0 ; species ID placeholder

	db 100,  50,  80,  50,  50,  80
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, FAIRY ; type
	db 75 ; catch rate
	db 153 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/azumarill/front.dimensions"
	db THICK_FAT, HUGE_POWER ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, HAIL, WORK_UP, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, DIG, BRICK_BREAK, DOUBLE_TEAM, FACADE, REST, ATTRACT, SCALD, FOCUS_BLAST, FLING, ENDURE, GIGA_IMPACT, SLEEP_TALK, BULLDOZE, GRASS_KNOT, SWAGGER, SUBSTITUTE, SURF, STRENGTH, ROCK_SMASH, WATERFALL, WHIRLPOOL
	; end

	db 0 ; species ID placeholder

	db  80,  70,  65, 100,  80, 120
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, POISON ; type
	db 60 ; catch rate
	db 205 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/tentacruel/front.dimensions"
	db CLEAR_BODY, LIQUID_OOZE ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, HAIL, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, DAZZLING_GLEAM, DOUBLE_TEAM, SLUDGE_BOMB, FACADE, REST, ATTRACT, THIEF, SCALD, BRINE, ENDURE, PAYBACK, GIGA_IMPACT, SWORDS_DANCE, SLEEP_TALK, POISON_JAB, SWAGGER, SUBSTITUTE, CUT, SURF, WATERFALL, WHIRLPOOL, DIVE
	; end

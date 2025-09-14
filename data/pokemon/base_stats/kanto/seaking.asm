	db 0 ; species ID placeholder

	db  80,  92,  65,  68,  65,  80
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 60 ; catch rate
	db 170 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/seaking/front.dimensions"
	db SWIFT_SWIM, WATER_VEIL ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, HAIL, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, DOUBLE_TEAM, FACADE, REST, ATTRACT, SCALD, ENDURE, GIGA_IMPACT, SWORDS_DANCE, SLEEP_TALK, POISON_JAB, SWAGGER, SUBSTITUTE, SURF, WATERFALL, WHIRLPOOL, DIVE
	; end

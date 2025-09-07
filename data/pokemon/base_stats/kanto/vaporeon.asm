	db 0 ; species ID placeholder

	db 130,  65,  60,  65, 110,  95
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 196 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/vaporeon/front.dimensions"
	db WATER_ABSORB, HYDRATION ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, ROAR, HAIL, WORK_UP, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, DIG, SHADOW_BALL, DOUBLE_TEAM, FACADE, REST, ATTRACT, SCALD, BRINE, ENDURE, GIGA_IMPACT, SLEEP_TALK, SWAGGER, SUBSTITUTE, SURF, STRENGTH, ROCK_SMASH, WATERFALL, WHIRLPOOL, DIVE
	; end

	db 0 ; species ID placeholder

	db 110,  65,  65,  60,  65,  75
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 45 ; catch rate
	db 219 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/lapras_partner/front.dimensions"
	db HYDRATION, HYDRATION ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, ROAR, HAIL, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SAFEGUARD, IRON_TAIL, THUNDERBOLT, THUNDER, PSYCHIC_M, DOUBLE_TEAM, SHOCK_WAVE, FACADE, REST, ATTRACT, BRINE, ENDURE, DRAGON_PULSE, GIGA_IMPACT, AVALANCHE, SLEEP_TALK, BULLDOZE, DREAM_EATER, SWAGGER, SUBSTITUTE, SURF, STRENGTH, ROCK_SMASH, WATERFALL, WHIRLPOOL, DIVE
	; end

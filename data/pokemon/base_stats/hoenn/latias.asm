	db 0 ; species ID placeholder

	db  80,  80,  90, 110, 110, 130
	evs  0,   0,   0,   0,   0,   3
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 211 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/latias/front.dimensions"
	db LEVITATE, PSYCHIC_SURGE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm DRAGON_CLAW, WATER_PULSE, CALM_MIND, ROAR, SUNNY_DAY, ICE_BEAM, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, SOLARBEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, SANDSTORM, AERIAL_ACE, FACADE, REST, ATTRACT, STEEL_WING, ROOST, ENERGY_BALL, CHARGE_BEAM, ENDURE, DRAGON_PULSE, SHADOW_CLAW, GIGA_IMPACT, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, BULLDOZE, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, CUT, FLY, SURF, DEFOG, WATERFALL, WHIRLPOOL
	; end

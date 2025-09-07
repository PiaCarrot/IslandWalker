	db 0 ; species ID placeholder

	db 130,  85,  80,  60,  85,  95
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 45 ; catch rate
	db 219 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/lapras/front.dimensions"
	db WATER_ABSORB, SHELL_ARMOR ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, ROAR, HAIL, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SAFEGUARD, IRON_TAIL, THUNDERBOLT, THUNDER, PSYCHIC_M, DOUBLE_TEAM, SHOCK_WAVE, FACADE, REST, ATTRACT, BRINE, ENDURE, DRAGON_PULSE, GIGA_IMPACT, AVALANCHE, SLEEP_TALK, BULLDOZE, DREAM_EATER, SWAGGER, SUBSTITUTE, SURF, STRENGTH, ROCK_SMASH, WATERFALL, WHIRLPOOL, DIVE
	; end

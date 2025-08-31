	db 0 ; species ID placeholder

	db 100, 100, 100, 100, 100, 100
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, GRASS ; type
	db 45 ; catch rate
	db 64 ; base exp
	dw NO_ITEM, LUM_BERRY ; items
	db GENDER_UNKNOWN ; gender ratio
	db 120 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/celebi/front.dimensions"
	db PSYCHIC_SURGE, GRASSY_SURGE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, CALM_MIND, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, SAFEGUARD, DAZZLINGGLEAM, SOLAR_BEAM, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, SANDSTORM, AERIAL_ACE, FACADE, REST, SKILL_SWAP, ENERGY_BALL, FLING, CHARGE_BEAM, ENDURE, NASTY_PLOT, GIGA_IMPACT, FLASH, THUNDER_WAVE, SWORDS_DANCE, STEALTH_ROCK, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, U_TURN, SUBSTITUTE, TRICK_ROOM, CUT
	; end

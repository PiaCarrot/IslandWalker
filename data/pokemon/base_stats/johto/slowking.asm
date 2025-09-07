	db 0 ; species ID placeholder

	db  95,  75,  80,  30, 100, 110
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 70 ; catch rate
	db 164 ; base exp
	dw NO_ITEM, KINGS_ROCK ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/slowking/front.dimensions"
	db OBLIVIOUS, OWN_TEMPO ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, CALM_MIND, SIGNAL_BEAM, HAIL, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, IRON_TAIL, EARTHQUAKE, DIG, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, FACADE, REST, ATTRACT, SKILL_SWAP, SCALD, FOCUS_BLAST, BRINE, FLING, ENDURE, DRAIN_PUNCH, NASTY_PLOT, RECYCLE, GIGA_IMPACT, FLASH, AVALANCHE, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, BULLDOZE, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, TRICK_ROOM, SURF, STRENGTH, ROCK_SMASH, WHIRLPOOL
	; end

	db 0 ; species ID placeholder

	db  90,  55,  75,  30,  60,  75
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 127 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/lickitung/front.dimensions"
	db OWN_TEMPO, OBLIVIOUS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, WORK_UP, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLAR_BEAM, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, FACADE, REST, ATTRACT, THIEF, FLING, ENDURE, GIGA_IMPACT, SWORDS_DANCE, PSYCH_UP, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, DREAM_EATER, SWAGGER, SUBSTITUTE, CUT, SURF, STRENGTH, ROCK_SMASH, ROCK_CLIMB, WHIRLPOOL
	; end

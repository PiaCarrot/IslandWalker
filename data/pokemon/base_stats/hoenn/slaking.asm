	db 0 ; species ID placeholder

	db 150, 160, 100, 100,  95,  95
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 210 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/slaking/front.dimensions"
	db TRUANT, TRUANT ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, ROAR, BULK_UP, WORK_UP, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLAR_BEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, LOW_SWEEP, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, FOCUS_BLAST, FLING, ENDURE, SHADOW_CLAW, GIGA_IMPACT, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

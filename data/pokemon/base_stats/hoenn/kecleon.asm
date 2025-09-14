	db 0 ; species ID placeholder

	db  60,  90,  70,  40,  60, 120
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 200 ; catch rate
	db 132 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/kecleon/front.dimensions"
	db COLOR_CHANGE, PROTEAN ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, WORK_UP, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, FLING, CHARGE_BEAM, ENDURE, DRAIN_PUNCH, NASTY_PLOT, SHADOW_CLAW, RECYCLE, FLASH, THUNDER_WAVE, STEALTH_ROCK, PSYCH_UP, ROCK_SLIDE, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE, TRICK_ROOM, CUT, STRENGTH, ROCK_SMASH
	; end

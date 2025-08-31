	db 0 ; species ID placeholder

	db  73, 115,  60,  90,  60,  60
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 165 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/zangoose/front.dimensions"
	db IMMUNITY, TOXIC_BOOST ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_ERRATIC ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, ROAR, WORK_UP, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, GIGA_DRAIN, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FALSE_SWIPE, FLING, ENDURE, SHADOW_CLAW, PAYBACK, THUNDER_WAVE, SWORDS_DANCE, ROCK_SLIDE, X_SCISSOR, SLEEP_TALK, POISON_JAB, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

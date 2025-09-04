	db 0 ; species ID placeholder

	db  75, 100, 110,  65,  45,  55
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, STEEL ; type
	db 90 ; catch rate
	db 163 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/sandslash_alola/front.dimensions"
	db SNOW_CLOAK, SLUSH_RUSH ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ICE_BEAM, DIG, HAIL, FRUSTRATION, FOCUS_PUNCH, IRON_TAIL, FACADE, BLIZZARD, RETURN, SAFEGUARD, BRICK_BREAK, ENDURE, DOUBLE_TEAM, GYRO_BALL, AERIAL_ACE, FLING, HIDDEN_POWER, EARTHQUAKE, FOCUS_BLAST, THIEF, ATTRACT, WORK_UP, FALSE_SWIPE, SUBSTITUTE, REST, SWAGGER, SUNNY_DAY, ROCK_SLIDE, X_SCISSOR, PROTECT, FLASH_CANNON, STEALTH_ROCK, GIGA_IMPACT, AVALANCHE, SHADOW_CLAW, BULLDOZE, TOXIC, SWORDS_DANCE, ROCK_TOMB, HYPER_BEAM, SLEEP_TALK, POISON_JAB
	; end

	db 0 ; species ID placeholder

	db  79,  83, 100,  78,  85, 105
	evs  0,   0,   0,   0,   0,   3
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 45 ; catch rate
	db 210 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/blastoise/front.dimensions"
	db TORRENT, RAIN_DISH ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, SIGNAL_BEAM, ROAR, HAIL, WORK_UP, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, EARTHQUAKE, DIG, BRICK_BREAK, DOUBLE_TEAM, ROCK_TOMB, FACADE, REST, ATTRACT, SCALD, FOCUS_BLAST, FALSE_SWIPE, BRINE, FLING, ENDURE, DRAGON_PULSE, GIGA_IMPACT, AVALANCHE, GYRO_BALL, DARK_PULSE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, FLASH_CANNON, SURF, STRENGTH, ROCK_SMASH, WATERFALL, ROCK_CLIMB, WHIRLPOOL, DIVE
	; end

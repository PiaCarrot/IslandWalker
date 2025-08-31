	db 0 ; species ID placeholder

	db  35,  45, 160,  70,  30,  45
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 45 ; catch rate
	db 108 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/onix/front.dimensions"
	db ROCK_HEAD, STURDY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm ROAR, SUNNY_DAY, TAUNT, PROTECT, IRON_TAIL, EARTHQUAKE, DIG, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, TORMENT, FACADE, REST, ATTRACT, ENDURE, DRAGON_PULSE, EXPLOSION, PAYBACK, ROCK_POLISH, STONE_EDGE, GYRO_BALL, STEALTH_ROCK, PSYCH_UP, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, FLASH_CANNON, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

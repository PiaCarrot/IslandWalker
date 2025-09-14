	db 0 ; species ID placeholder

	db  75,  85, 200,  30,  55,  65
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, GROUND ; type
	db 25 ; catch rate
	db 196 ; base exp
	dw NO_ITEM, METAL_COAT ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
        INCBIN "gfx/pokemon/forms/steelix_crystal/front.dimensions"
        db CRYSTAL_BODY, CRYSTAL_BODY ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm ROAR, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, IRON_TAIL, EARTHQUAKE, DIG, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, TORMENT, FACADE, REST, ATTRACT, ENDURE, DRAGON_PULSE, EXPLOSION, PAYBACK, GIGA_IMPACT, ROCK_POLISH, STONE_EDGE, GYRO_BALL, STEALTH_ROCK, PSYCH_UP, DARK_PULSE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, FLASH_CANNON, CUT, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

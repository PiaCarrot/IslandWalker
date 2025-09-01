	db 0 ; species ID placeholder

	db  70, 131, 100,  40,  86,  90
	evs 0, 2, 0, 0, 0, 0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GRASS ; type
	db 25 ; catch rate
	db 181 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/other/dhelmise/front.dimensions"
	db STEELWORKER, STEELWORKER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm ENERGY_BALL, REST, RAIN_DANCE, FACADE, SWORDS_DANCE, ROCK_SLIDE, SURF, GYRO_BALL, SWAGGER, GRASS_KNOT, DOUBLE_TEAM, ATTRACT, SLEEP_TALK, SUNNY_DAY, BULLDOZE, HIDDEN_POWER, BRICK_BREAK, RETURN, SHADOW_BALL, SOLARBEAM, WHIRLPOOL, PAYBACK, FLASH_CANNON, EARTHQUAKE, GIGA_DRAIN, SUBSTITUTE, THIEF, TOXIC, PROTECT, EMBARGO, SHADOW_CLAW, GIGA_IMPACT, HYPER_BEAM, BRINE, FRUSTRATION, AERIAL_ACE
	; end

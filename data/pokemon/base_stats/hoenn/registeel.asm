	db 0 ; species ID placeholder

	db  80,  75, 150,  50,  75, 150
	evs  0,   0,   2,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 3 ; catch rate
	db 215 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/registeel/front.dimensions"
	db CLEAR_BODY, CLEAR_BODY ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_L ; drop item
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, SAFEGUARD, THUNDERBOLT, THUNDER, EARTHQUAKE, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, SANDSTORM, ROCK_TOMB, AERIAL_ACE, FACADE, REST, FOCUS_BLAST, FLING, CHARGE_BEAM, ENDURE, EXPLOSION, SHADOW_CLAW, GIGA_IMPACT, ROCK_POLISH, THUNDER_WAVE, STEALTH_ROCK, PSYCH_UP, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, FLASH_CANNON, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

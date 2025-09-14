	db 0 ; species ID placeholder

	db  80,  50, 100,  50, 100, 200
	evs  0,   0,   0,   0,   0,   3
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 3 ; catch rate
	db 216 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/regice/front.dimensions"
	db CLEAR_BODY, CLEAR_BODY ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, SIGNAL_BEAM, HAIL, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SAFEGUARD, THUNDERBOLT, THUNDER, EARTHQUAKE, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, ROCK_TOMB, FACADE, REST, FOCUS_BLAST, FLING, CHARGE_BEAM, ENDURE, EXPLOSION, GIGA_IMPACT, ROCK_POLISH, AVALANCHE, THUNDER_WAVE, PSYCH_UP, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, FLASH_CANNON, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

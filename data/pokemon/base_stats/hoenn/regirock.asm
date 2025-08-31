	db 0 ; species ID placeholder

	db  80, 100, 200,  50,  50, 100
	evs  0,   0,   3,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 3 ; catch rate
	db 217 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 80 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/regirock/front.dimensions"
	db CLEAR_BODY, CLEAR_BODY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, SUNNY_DAY, HYPER_BEAM, PROTECT, SAFEGUARD, THUNDERBOLT, THUNDER, EARTHQUAKE, DIG, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, SANDSTORM, ROCK_TOMB, FACADE, REST, FOCUS_BLAST, FLING, CHARGE_BEAM, ENDURE, DRAIN_PUNCH, EXPLOSION, GIGA_IMPACT, ROCK_POLISH, STONE_EDGE, THUNDER_WAVE, STEALTH_ROCK, PSYCH_UP, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, FLASH_CANNON, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

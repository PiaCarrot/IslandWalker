	db 0 ; species ID placeholder

	db  65,  80, 140,  70,  40,  70
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, FLYING ; type
	db 25 ; catch rate
	db 168 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/skarmory/front.dimensions"
	db KEEN_EYE, STURDY ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm ROAR, SUNNY_DAY, TAUNT, PROTECT, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, ENDURE, PAYBACK, FLASH, SWORDS_DANCE, STEALTH_ROCK, DARK_PULSE, ROCK_SLIDE, X_SCISSOR, SLEEP_TALK, SWAGGER, PLUCK, SUBSTITUTE, FLASH_CANNON, CUT, FLY, DEFOG, ROCK_SMASH
	; end

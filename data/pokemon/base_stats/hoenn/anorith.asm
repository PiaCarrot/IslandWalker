	db 0 ; species ID placeholder

	db  45,  95,  50,  75,  40,  50
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, BUG ; type
	db 45 ; catch rate
	db 99 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 30 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/anorith/front.dimensions"
	db BATTLE_ARMOR, BATTLE_ARMOR ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_ERRATIC ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SUNNY_DAY, PROTECT, DIG, BRICK_BREAK, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, FALSE_SWIPE, BRINE, ENDURE, ROCK_POLISH, SWORDS_DANCE, STEALTH_ROCK, ROCK_SLIDE, X_SCISSOR, SLEEP_TALK, SWAGGER, SUBSTITUTE, CUT, ROCK_SMASH
	; end

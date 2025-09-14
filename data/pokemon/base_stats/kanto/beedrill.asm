	db 0 ; species ID placeholder

	db  65,  80,  40,  75,  45,  80
	evs  0,   2,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp
	dw NO_ITEM, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/beedrill/front.dimensions"
	db SWARM, SNIPER ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, BRICK_BREAK, DOUBLE_TEAM, SLUDGE_BOMB, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, ROOST, FALSE_SWIPE, ENDURE, PAYBACK, GIGA_IMPACT, FLASH, SWORDS_DANCE, X_SCISSOR, SLEEP_TALK, POISON_JAB, SWAGGER, U_TURN, SUBSTITUTE, CUT, DEFOG, ROCK_SMASH
	; end

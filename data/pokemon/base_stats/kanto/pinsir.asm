	db 0 ; species ID placeholder

	db  65, 125, 100,  85,  55,  70
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, BUG ; type
	db 45 ; catch rate
	db 200 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/pinsir/front.dimensions"
	db HYPER_CUTTER, MOLD_BREAKER ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, BULK_UP, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, EARTHQUAKE, DIG, BRICK_BREAK, DOUBLE_TEAM, ROCK_TOMB, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FALSE_SWIPE, FLING, ENDURE, GIGA_IMPACT, STONE_EDGE, SWORDS_DANCE, STEALTH_ROCK, ROCK_SLIDE, X_SCISSOR, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

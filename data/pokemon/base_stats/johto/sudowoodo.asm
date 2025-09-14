	db 0 ; species ID placeholder

	db  70, 100, 115,  30,  30,  65
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 65 ; catch rate
	db 135 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/sudowoodo/front.dimensions"
	db STURDY, ROCK_HEAD ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, CALM_MIND, SUNNY_DAY, TAUNT, PROTECT, EARTHQUAKE, DIG, BRICK_BREAK, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, TORMENT, FACADE, REST, ATTRACT, THIEF, FLING, ENDURE, EXPLOSION, ROCK_POLISH, STONE_EDGE, STEALTH_ROCK, PSYCH_UP, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

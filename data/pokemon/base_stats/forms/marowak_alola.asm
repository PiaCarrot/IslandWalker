	db 0 ; species ID placeholder

	db  60,  80, 110,  45,  50,  80
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, GHOST ; type
	db 75 ; catch rate
	db 124 ; base exp
	dw NO_ITEM, THICK_CLUB ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/marowak_alola/front.dimensions"
	db CURSED_BODY, LIGHTNINGROD ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm SANDSTORM, ICE_BEAM, DIG, FRUSTRATION, WILL_O_WISP, IRON_TAIL, FACADE, BLIZZARD, RETURN, BRICK_BREAK, ENDURE, DOUBLE_TEAM, FLAMETHROWER, DREAM_EATER, AERIAL_ACE, STONE_EDGE, FLING, HIDDEN_POWER, EARTHQUAKE, FOCUS_BLAST, THIEF, ATTRACT, FALSE_SWIPE, FIRE_BLAST, SUBSTITUTE, REST, SWAGGER, SUNNY_DAY, ROCK_SLIDE, PROTECT, RAIN_DANCE, DARK_PULSE, THUNDERBOLT, GIGA_IMPACT, SHADOW_BALL, BULLDOZE, TOXIC, SWORDS_DANCE, ROCK_TOMB, THUNDER, HYPER_BEAM, SLEEP_TALK, STEALTH_ROCK
	; end

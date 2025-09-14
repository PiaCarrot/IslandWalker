	db 0 ; species ID placeholder

	db  80, 100,  80, 100,  80,  80
	evs  0,   1,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, DRAGON ; type
	db 45 ; catch rate
	db 197 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/flygon/front.dimensions"
	db LEVITATE, SAND_STREAM ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm DRAGON_CLAW, SIGNAL_BEAM, SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, IRON_TAIL, EARTHQUAKE, DIG, DOUBLE_TEAM, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, STEEL_WING, ROOST, ENDURE, DRAGON_PULSE, BUG_BUZZ, GIGA_IMPACT, STONE_EDGE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, U_TURN, SUBSTITUTE, FLY, STRENGTH, DEFOG, ROCK_SMASH
	; end

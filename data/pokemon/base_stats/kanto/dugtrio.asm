	db 0 ; species ID placeholder

	db  35,  80,  50, 120,  50,  70
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/dugtrio/front.dimensions"
	db SAND_VEIL, ARENA_TRAP ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_S ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm WORK_UP, SUNNY_DAY, HYPER_BEAM, PROTECT, EARTHQUAKE, DIG, DOUBLE_TEAM, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, ENDURE, SHADOW_CLAW, GIGA_IMPACT, STONE_EDGE, STEALTH_ROCK, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, CUT, ROCK_SMASH
	; end

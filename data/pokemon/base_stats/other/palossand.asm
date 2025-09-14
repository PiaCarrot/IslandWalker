	db 0 ; species ID placeholder

	db  85,  75, 110,  35, 100,  75
	evs 0, 0, 2, 0, 0, 0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GROUND ; type
	db 60 ; catch rate
	db 168 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
        INCBIN "gfx/pokemon/other/palossand/front.dimensions"
	db WATER_COMPACTION, SAND_VEIL ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm ENERGY_BALL, REST, SLUDGE_BOMB, FACADE, ROCK_SLIDE, SANDSTORM, SWAGGER, FLING, ROCK_POLISH, DOUBLE_TEAM, ATTRACT, STONE_EDGE, SLEEP_TALK, BULLDOZE, HIDDEN_POWER, RETURN, SHADOW_BALL, PSYCHIC_M, ROCK_TOMB, EARTHQUAKE, GIGA_DRAIN, SUBSTITUTE, TOXIC, PROTECT, EMBARGO, GIGA_IMPACT, BRINE, FRUSTRATION
	; end

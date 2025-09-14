	db 0 ; species ID placeholder

	db  55,  55,  80,  15,  70,  45
	evs 0, 0, 1, 0, 0, 0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GROUND ; type
	db 140 ; catch rate
	db 64 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/other/sandygast/front.dimensions"
	db WATER_COMPACTION, SAND_VEIL ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm ENERGY_BALL, REST, FACADE, ROCK_SLIDE, SANDSTORM, SWAGGER, ROCK_POLISH, DOUBLE_TEAM, ATTRACT, STONE_EDGE, SLEEP_TALK, BULLDOZE, HIDDEN_POWER, RETURN, SHADOW_BALL, PSYCHIC_M, ROCK_TOMB, EARTHQUAKE, GIGA_DRAIN, SUBSTITUTE, TOXIC, PROTECT, BRINE, FRUSTRATION
	; end

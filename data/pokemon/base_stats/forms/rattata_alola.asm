	db 0 ; species ID placeholder

	db  30,  56,  35,  72,  25,  35
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/rattata_alola/front.dimensions"
	db GLUTTONY, HUSTLE ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ICE_BEAM, EMBARGO, FRUSTRATION, FACADE, BLIZZARD, RETURN, DOUBLE_TEAM, U_TURN, GRASS_KNOT, TAUNT, HIDDEN_POWER, TORMENT, THIEF, ATTRACT, SUBSTITUTE, REST, SWAGGER, SUNNY_DAY, SNARL, PROTECT, RAIN_DANCE, DARK_PULSE, SLUDGE_BOMB, SHADOW_CLAW, SHADOW_BALL, TOXIC, SLEEP_TALK
	; end

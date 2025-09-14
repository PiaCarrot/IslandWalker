	db 0 ; species ID placeholder

	db  40,  45,  40,  84,  55,  40
	evs 0, 0, 0, 1, 0, 0
	;   hp  atk  def  spd  sat  sdf

        db BUG, FAIRY ; type
	db 190 ; catch rate
	db 61 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/other/cutiefly/front.dimensions"
	db HONEY_GATHER, SHIELD_DUST ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm SIGNAL_BEAM, ENERGY_BALL, REST, FACADE, DAZZLING_GLEAM, PSYCH_UP, ROOST, SWAGGER, LIGHT_SCREEN, SAFEGUARD, DOUBLE_TEAM, REFLECT, DREAM_EATER, ATTRACT, SLEEP_TALK, SUNNY_DAY, HIDDEN_POWER, RETURN, PSYCHIC_M, U_TURN, CALM_MIND, SUBSTITUTE, THIEF, TOXIC, PROTECT, FRUSTRATION, AERIAL_ACE
	; end

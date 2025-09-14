	db 0 ; species ID placeholder

	db  40,  70, 130,  25,  60, 130
	evs  0,   0,   1,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 90 ; catch rate
	db 179 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/dusclops/front.dimensions"
	db PRESSURE, FRISK ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, CALM_MIND, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, EARTHQUAKE, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, ROCK_TOMB, TORMENT, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, FLING, CHARGE_BEAM, ENDURE, WILL_O_WISP, PAYBACK, GIGA_IMPACT, FLASH, PSYCH_UP, DARK_PULSE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, DREAM_EATER, SWAGGER, SUBSTITUTE, TRICK_ROOM, STRENGTH, ROCK_SMASH
	; end

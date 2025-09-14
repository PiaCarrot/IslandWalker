	db 0 ; species ID placeholder

	db  20,  40,  90,  25,  30,  90
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 190 ; catch rate
	db 97 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/duskull/front.dimensions"
	db LEVITATE, FRISK ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, TORMENT, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, FLING, CHARGE_BEAM, ENDURE, WILL_O_WISP, PAYBACK, FLASH, PSYCH_UP, DARK_PULSE, SLEEP_TALK, DREAM_EATER, SWAGGER, SUBSTITUTE, TRICK_ROOM
	; end

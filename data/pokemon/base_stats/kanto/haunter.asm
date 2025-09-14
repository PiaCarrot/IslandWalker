	db 0 ; species ID placeholder

	db  45,  50,  45,  95, 115,  55
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, POISON ; type
	db 90 ; catch rate
	db 126 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/haunter/front.dimensions"
	db LEVITATE, CURSED_BODY ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_S ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm TOXIC, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, GIGA_DRAIN, DAZZLING_GLEAM, THUNDERBOLT, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, TORMENT, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, ENERGY_BALL, FLING, ENDURE, WILL_O_WISP, EXPLOSION, SHADOW_CLAW, PAYBACK, PSYCH_UP, DARK_PULSE, SLEEP_TALK, POISON_JAB, DREAM_EATER, SWAGGER, SUBSTITUTE, TRICK_ROOM
	; end

	db 0 ; species ID placeholder

	db  60,  60,  60,  85,  85,  85
	evs  0,   0,   0,   0,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 45 ; catch rate
	db 147 ; base exp
	dw NO_ITEM, SPELL_TAG ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/misdreavus/front.dimensions"
	db LEVITATE, MISTY_SURGE ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, DAZZLING_GLEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, CHARGE_BEAM, ENDURE, WILL_O_WISP, NASTY_PLOT, PAYBACK, FLASH, THUNDER_WAVE, PSYCH_UP, DARK_PULSE, SLEEP_TALK, DREAM_EATER, SWAGGER, SUBSTITUTE, TRICK_ROOM
	; end

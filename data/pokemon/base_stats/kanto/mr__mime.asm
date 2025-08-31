	db 0 ; species ID placeholder

	db  40,  45,  65,  90, 100, 120
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 136 ; base exp
	dw NO_ITEM, LEPPA_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/mr__mime/front.dimensions"
	db SOUNDPROOF, FILTER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, CALM_MIND, SUNNY_DAY, TAUNT, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, DAZZLINGGLEAM, SOLARBEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, FOCUS_BLAST, ENERGY_BALL, FLING, CHARGE_BEAM, ENDURE, DRAIN_PUNCH, NASTY_PLOT, PAYBACK, RECYCLE, GIGA_IMPACT, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, TRICK_ROOM
	; end

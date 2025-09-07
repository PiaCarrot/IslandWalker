	db 0 ; species ID placeholder

	db  85,  73,  70,  67,  73, 115
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 165 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/hypno/front.dimensions"
	db INSOMNIA, FOREWARN ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, CALM_MIND, SIGNAL_BEAM, SUNNY_DAY, TAUNT, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, DAZZLING_GLEAM, LOW_SWEEP, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, TORMENT, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, FOCUS_BLAST, FLING, ENDURE, DRAIN_PUNCH, NASTY_PLOT, RECYCLE, GIGA_IMPACT, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, TRICK_ROOM
	; end

	db 0 ; species ID placeholder

	db  55,  40,  85,  40,  80, 105
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 75 ; catch rate
	db 114 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/togetic/front.dimensions"
	db SUPER_LUCK, SERENE_GRACE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_FLYING, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, WORK_UP, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, DAZZLING_GLEAM, SOLARBEAM, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, AERIAL_ACE, FACADE, REST, ATTRACT, STEEL_WING, ROOST, FLING, ENDURE, DRAIN_PUNCH, NASTY_PLOT, GIGA_IMPACT, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, FLY, DEFOG, ROCK_SMASH
	; end

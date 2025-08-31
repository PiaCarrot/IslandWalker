	db 0 ; species ID placeholder

	db  28,  25,  25,  40,  45,  35
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 235 ; catch rate
	db 70 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/ralts/front.dimensions"
	db TRACE, SYNCHRONIZE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, SUNNY_DAY, TAUNT, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, DAZZLING_GLEAM, THUNDERBOLT, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, TORMENT, FACADE, REST, ATTRACT, THIEF, SKILL_SWAP, FLING, CHARGE_BEAM, ENDURE, WILL_O_WISP, RECYCLE, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, TRICK_ROOM
	; end

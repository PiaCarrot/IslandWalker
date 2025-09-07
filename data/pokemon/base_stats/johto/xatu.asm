	db 0 ; species ID placeholder

	db  65,  75,  70,  95,  95,  70
	evs  0,   0,   0,   1,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FLYING ; type
	db 75 ; catch rate
	db 171 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/xatu/front.dimensions"
	db SYNCHRONIZE, EARLY_BIRD ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, SIGNAL_BEAM, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, GIGA_DRAIN, DAZZLING_GLEAM, SOLARBEAM, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, SKILL_SWAP, ROOST, ENDURE, GIGA_IMPACT, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, PLUCK, U_TURN, SUBSTITUTE, TRICK_ROOM, FLY, DEFOG
	; end

	db 0 ; species ID placeholder

	db  65,  65,  60, 110, 130,  95
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 197 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/espeon/front.dimensions"
	db SYNCHRONIZE, MAGIC_BOUNCE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, SIGNAL_BEAM, WORK_UP, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, DAZZLING_GLEAM, IRON_TAIL, DIG, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, REFLECT, FACADE, REST, ATTRACT, SKILL_SWAP, ENDURE, GIGA_IMPACT, FLASH, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, TRICK_ROOM, CUT
	; end

	db 0 ; species ID placeholder

	db  95,  65, 110,  65,  60, 130
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 45 ; catch rate
	db 197 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/umbreon/front.dimensions"
	db SYNCHRONIZE, INNER_FOCUS ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm WORK_UP, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, DIG, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, TORMENT, FACADE, REST, ATTRACT, THIEF, ENDURE, PAYBACK, GIGA_IMPACT, FLASH, PSYCH_UP, SNARL, DARK_PULSE, SLEEP_TALK, DREAM_EATER, SWAGGER, SUBSTITUTE, CUT
	; end

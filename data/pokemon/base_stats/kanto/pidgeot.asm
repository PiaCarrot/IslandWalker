	db 0 ; species ID placeholder

	db  83,  80,  75,  91,  70,  70
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 172 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/pidgeot/front.dimensions"
	db KEEN_EYE, TANGLED_FEET ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_L ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm WORK_UP, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, DOUBLE_TEAM, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, ENDURE, GIGA_IMPACT, SLEEP_TALK, SWAGGER, PLUCK, U_TURN, SUBSTITUTE, FLY, DEFOG
	; end

	db 0 ; species ID placeholder

	db  60,  85,  60, 125,  50,  50
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 162 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/swellow/front.dimensions"
	db GUTS, GUTS ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm WORK_UP, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, DOUBLE_TEAM, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, ENDURE, GIGA_IMPACT, SLEEP_TALK, SWAGGER, PLUCK, U_TURN, SUBSTITUTE, FLY, DEFOG
	; end

	db 0 ; species ID placeholder

	db  65, 130,  60,  65,  95, 110
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 198 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/flareon/front.dimensions"
	db FLASH_FIRE, GUTS ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, WORK_UP, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, DIG, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, FACADE, REST, ATTRACT, OVERHEAT, ENDURE, WILL_O_WISP, GIGA_IMPACT, SLEEP_TALK, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

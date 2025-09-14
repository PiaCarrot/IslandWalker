	db 0 ; species ID placeholder

	db  58,  64,  58,  80,  80,  65
	evs  0,   0,   0,   1,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 142 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/quilava/front.dimensions"
	db BLAZE, FLASH_FIRE ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_S ; drop item
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, ROAR, WORK_UP, SUNNY_DAY, PROTECT, DIG, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, AERIAL_ACE, FACADE, REST, ATTRACT, OVERHEAT, ENDURE, WILL_O_WISP, SLEEP_TALK, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH
	; end

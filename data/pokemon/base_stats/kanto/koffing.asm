	db 0 ; species ID placeholder

	db  40,  65,  95,  35,  60,  45
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 190 ; catch rate
	db 114 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/koffing/front.dimensions"
	db LEVITATE, NEUTRALIZING_GAS ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm TOXIC, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, THUNDERBOLT, THUNDER, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, TORMENT, FACADE, REST, ATTRACT, THIEF, ENDURE, WILL_O_WISP, EXPLOSION, PAYBACK, FLASH, GYRO_BALL, DARK_PULSE, SLEEP_TALK, SWAGGER, SUBSTITUTE
	; end

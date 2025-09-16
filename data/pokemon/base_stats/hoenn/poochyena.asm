	db 0 ; species ID placeholder

	db  35,  55,  35,  35,  30,  30
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 255 ; catch rate
	db 55 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/poochyena/front.dimensions"
	db RUN_AWAY, QUICK_FEET ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, IRON_TAIL, DIG, SHADOW_BALL, DOUBLE_TEAM, TORMENT, FACADE, REST, ATTRACT, THIEF, ENDURE, NASTY_PLOT, PAYBACK, SNARL, DARK_PULSE, SLEEP_TALK, SWAGGER, SUBSTITUTE, ROCK_SMASH
	; end

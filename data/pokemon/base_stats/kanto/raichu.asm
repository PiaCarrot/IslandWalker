	db 0 ; species ID placeholder

	db  60,  90,  55, 100,  90,  80
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp
	dw NO_ITEM,ORAN_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/raichu/front.dimensions"
	db STATIC, LIGHTNINGROD ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_L ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, SIGNAL_BEAM, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, IRON_TAIL, THUNDERBOLT, THUNDER, DIG, BRICK_BREAK, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FACADE, VOLT_SWITCH, REST, ATTRACT, THIEF, FOCUS_BLAST, FLING, CHARGE_BEAM, ENDURE, NASTY_PLOT, GIGA_IMPACT, FLASH, THUNDER_WAVE, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE, SURF, STRENGTH, ROCK_SMASH
	; end

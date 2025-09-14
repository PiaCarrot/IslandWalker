	db 0 ; species ID placeholder

	db  50,  95, 180,  70,  85,  45
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, ICE ; type
	db 60 ; catch rate
	db 203 ; base exp
	dw PEARL, BIG_PEARL ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/cloyster/front.dimensions"
	db SHELL_ARMOR, SKILL_LINK ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, HAIL, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, DOUBLE_TEAM, TORMENT, FACADE, REST, ATTRACT, BRINE, ENDURE, EXPLOSION, PAYBACK, GIGA_IMPACT, AVALANCHE, SLEEP_TALK, POISON_JAB, SWAGGER, SUBSTITUTE, SURF, WHIRLPOOL, DIVE
	; end

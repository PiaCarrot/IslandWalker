	db 0 ; species ID placeholder

	db  73,  76,  75, 100,  81, 100
	evs  0,   0,   0,   1,   0,   1
	;   hp  atk  def  spd  sat  sdf

	db ICE, FAIRY ; type
	db 75 ; catch rate
	db 178 ; base exp
	dw ASPEAR_BERRY, ASPEAR_BERRY ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/ninetales_alola/front.dimensions"
	db SNOW_CLOAK, SNOW_WARNING ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, ICE_BEAM, DIG, HAIL, FRUSTRATION, IRON_TAIL, FACADE, BLIZZARD, RETURN, ENDURE, DOUBLE_TEAM, PSYCH_UP, DREAM_EATER, NASTY_PLOT, DAZZLING_GLEAM, HIDDEN_POWER, PAYBACK, ATTRACT, SOLARBEAM, SUBSTITUTE, REST, SWAGGER, CALM_MIND, PROTECT, RAIN_DANCE, DARK_PULSE, GIGA_IMPACT, TOXIC, SAFEGUARD, AVALANCHE, HYPER_BEAM, SLEEP_TALK
	; end

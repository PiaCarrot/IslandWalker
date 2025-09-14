	db 0 ; species ID placeholder

	db  38,  41,  40,  65,  50,  65
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, ICE ; type
	db 190 ; catch rate
	db 63 ; base exp
	dw ASPEAR_BERRY, ASPEAR_BERRY ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/vulpix_alola/front.dimensions"
	db SNOW_CLOAK, SNOW_WARNING ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, ICE_BEAM, DIG, HAIL, FRUSTRATION, IRON_TAIL, FACADE, BLIZZARD, RETURN, ENDURE, DOUBLE_TEAM, PSYCH_UP, NASTY_PLOT, HIDDEN_POWER, PAYBACK, ATTRACT, SUBSTITUTE, REST, SWAGGER, PROTECT, RAIN_DANCE, DARK_PULSE, TOXIC, SAFEGUARD, DAZZLING_GLEAM, SLEEP_TALK
	; end

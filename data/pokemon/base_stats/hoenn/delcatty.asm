	db 0 ; species ID placeholder

	db  70,  65,  65,  90,  55,  55
	evs  1,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 60 ; catch rate
	db 138 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/delcatty/front.dimensions"
	db CUTE_CHARM, CUTE_CHARM ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_S ; drop item
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, CALM_MIND, WORK_UP, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SAFEGUARD, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, DIG, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, FACADE, REST, ATTRACT, CHARGE_BEAM, ENDURE, NASTY_PLOT, PAYBACK, GIGA_IMPACT, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

	db 0 ; species ID placeholder

	db  70,  70,  70,  70,  70,  70
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 145 ; base exp
	dw MYSTIC_WATER, MYSTIC_WATER ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/castform/front.dimensions"
	db FORECAST, FORECAST ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, HAIL, WORK_UP, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, SOLARBEAM, THUNDERBOLT, THUNDER, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, SANDSTORM, FIRE_BLAST, FACADE, REST, ATTRACT, THIEF, SCALD, ENERGY_BALL, ENDURE, FLASH, AVALANCHE, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, SWAGGER, SUBSTITUTE
	; end

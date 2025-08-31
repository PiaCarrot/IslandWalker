	db 0 ; species ID placeholder

	db  70,  43,  53,  40,  43,  53
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 225 ; catch rate
	db 75 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/gulpin/front.dimensions"
	db LIQUID_OOZE, STICKY_HOLD ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, TOXIC, BULLET_SEED, SUNNY_DAY, ICE_BEAM, PROTECT, RAIN_DANCE, SOLAR_BEAM, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, SLUDGE_BOMB, FACADE, REST, ATTRACT, ENDURE, EXPLOSION, SLEEP_TALK, DREAM_EATER, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

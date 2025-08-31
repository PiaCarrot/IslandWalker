	db 0 ; species ID placeholder

	db 100,  70,  70,  45,  65,  65
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 190 ; catch rate
	db 75 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/dunsparce/front.dimensions"
	db SERENE_GRACE, RUN_AWAY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, CALM_MIND, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, SOLAR_BEAM, IRON_TAIL, THUNDERBOLT, THUNDER, EARTHQUAKE, DIG, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, FACADE, REST, ATTRACT, THIEF, ROOST, CHARGE_BEAM, ENDURE, THUNDER_WAVE, GYRO_BALL, STEALTH_ROCK, PSYCH_UP, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, POISON_JAB, DREAM_EATER, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

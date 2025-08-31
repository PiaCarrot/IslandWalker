	db 0 ; species ID placeholder

	db  85,  76,  64,  90,  45,  55
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp
	dw ORAN_BERRY, SITRUS_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/furret/front.dimensions"
	db RUN_AWAY, KEEN_EYE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, WORK_UP, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FLING, CHARGE_BEAM, ENDURE, SHADOW_CLAW, GIGA_IMPACT, SLEEP_TALK, GRASS_KNOT, SWAGGER, U_TURN, SUBSTITUTE, CUT, SURF, STRENGTH, ROCK_SMASH, WHIRLPOOL
	; end

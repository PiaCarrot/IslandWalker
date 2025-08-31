	db 0 ; species ID placeholder

	db  35,  46,  34,  20,  35,  45
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp
	dw NO_ITEM,ORAN_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/sentret/front.dimensions"
	db RUN_AWAY, KEEN_EYE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, WORK_UP, SUNNY_DAY, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, SOLAR_BEAM, IRON_TAIL, THUNDERBOLT, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, FACADE, REST, ATTRACT, THIEF, FLING, CHARGE_BEAM, ENDURE, SHADOW_CLAW, SLEEP_TALK, GRASS_KNOT, SWAGGER, U_TURN, SUBSTITUTE, CUT, SURF, WHIRLPOOL
	; end

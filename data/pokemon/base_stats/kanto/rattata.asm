	db 0 ; species ID placeholder

	db  30,  56,  35,  72,  25,  35
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/rattata/front.dimensions"
	db RUN_AWAY, GUTS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm WORK_UP, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, DIG, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, SLUDGE_BOMB, FACADE, REST, ATTRACT, THIEF, CHARGE_BEAM, ENDURE, THUNDER_WAVE, SLEEP_TALK, GRASS_KNOT, SWAGGER, PLUCK, SUBSTITUTE, CUT, ROCK_SMASH
	; end

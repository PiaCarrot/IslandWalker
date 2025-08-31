	db 0 ; species ID placeholder

	db  65,  70,  60, 115,  65,  65
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 148 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/persian/front.dimensions"
	db LIMBER, TECHNICIAN ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, ROAR, WORK_UP, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, DIG, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, ENDURE, NASTY_PLOT, SHADOW_CLAW, PAYBACK, GIGA_IMPACT, FLASH, PSYCH_UP, DARK_PULSE, SLEEP_TALK, DREAM_EATER, SWAGGER, U_TURN, SUBSTITUTE, CUT
	; end

	db 0 ; species ID placeholder

	db  40,  45,  35,  90,  40,  40
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 255 ; catch rate
	db 69 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/meowth_alola/front.dimensions"
	db PICKUP, TECHNICIAN ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm DIG, EMBARGO, FRUSTRATION, IRON_TAIL, FACADE, RETURN, DOUBLE_TEAM, ENDURE, PSYCH_UP, DREAM_EATER, NASTY_PLOT, AERIAL_ACE, U_TURN, TAUNT, THUNDER_WAVE, HIDDEN_POWER, TORMENT, PAYBACK, THIEF, ATTRACT, WORK_UP, SUBSTITUTE, REST, SWAGGER, SUNNY_DAY, SNARL, PROTECT, RAIN_DANCE, DARK_PULSE, THUNDERBOLT, SHADOW_CLAW, SHADOW_BALL, TOXIC, THUNDER, SLEEP_TALK
	; end

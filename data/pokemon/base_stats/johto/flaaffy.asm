	db 0 ; species ID placeholder

	db  70,  55,  55,  45,  80,  60
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 120 ; catch rate
	db 117 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/flaaffy/front.dimensions"
	db STATIC, MINUS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, SIGNAL_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, IRON_TAIL, THUNDERBOLT, THUNDER, BRICK_BREAK, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FACADE, VOLT_SWITCH, REST, ATTRACT, FLING, CHARGE_BEAM, ENDURE, FLASH, THUNDER_WAVE, SLEEP_TALK, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

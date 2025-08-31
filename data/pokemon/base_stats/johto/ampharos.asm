	db 0 ; species ID placeholder

	db  90,  75,  75,  55, 115,  90
	evs  0,   0,   0,   0,   3,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 194 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/ampharos/front.dimensions"
	db PLUS, MINUS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, IRON_TAIL, THUNDERBOLT, THUNDER, BRICK_BREAK, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FACADE, VOLT_SWITCH, REST, ATTRACT, FOCUS_BLAST, FLING, CHARGE_BEAM, ENDURE, DRAGON_PULSE, GIGA_IMPACT, FLASH, THUNDER_WAVE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

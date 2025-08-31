	db 0 ; species ID placeholder

	db  55,  40,  40,  35,  65,  45
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 235 ; catch rate
	db 59 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/mareep/front.dimensions"
	db STATIC, MINUS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MONSTER, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, IRON_TAIL, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FACADE, REST, ATTRACT, CHARGE_BEAM, ENDURE, FLASH, THUNDER_WAVE, SLEEP_TALK, SWAGGER, SUBSTITUTE
	; end

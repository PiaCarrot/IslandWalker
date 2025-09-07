	db 0 ; species ID placeholder

	db  60,  50,  40,  95,  85,  75
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 200 ; catch rate
	db 120 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/plusle/front.dimensions"
	db VOLT_ABSORB, STATIC ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm SIGNAL_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, DOUBLE_TEAM, SHOCK_WAVE, FACADE, VOLT_SWITCH, REST, ATTRACT, SKILL_SWAP, FLING, CHARGE_BEAM, ENDURE, NASTY_PLOT, FLASH, THUNDER_WAVE, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE
	; end

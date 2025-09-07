	db 0 ; species ID placeholder

	db  20,  40,  15,  60,  35,  35
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 42 ; base exp
	dw NO_ITEM,ORAN_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/pichu/front.dimensions"
	db STATIC, LIGHTNINGROD ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm SIGNAL_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FACADE, VOLT_SWITCH, REST, ATTRACT, FLING, CHARGE_BEAM, ENDURE, NASTY_PLOT, FLASH, THUNDER_WAVE, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE, SURF
	; end

	db 0 ; species ID placeholder

	db  45,  90,  20,  65,  65,  20
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, DARK ; type
	db 225 ; catch rate
	db 88 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/carvanha/front.dimensions"
	db ROUGH_SKIN, SPEED_BOOST ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, HAIL, TAUNT, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, DOUBLE_TEAM, TORMENT, FACADE, REST, ATTRACT, THIEF, SCALD, BRINE, ENDURE, PAYBACK, SNARL, DARK_PULSE, SLEEP_TALK, SWAGGER, SUBSTITUTE, SURF, WATERFALL, WHIRLPOOL, DIVE
	; end

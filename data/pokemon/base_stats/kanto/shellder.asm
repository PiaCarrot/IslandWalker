	db 0 ; species ID placeholder

	db  30,  65, 100,  40,  45,  25
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 190 ; catch rate
	db 97 ; base exp
	dw PEARL, BIG_PEARL ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/shellder/front.dimensions"
	db SHELL_ARMOR, SKILL_LINK ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, HAIL, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, DOUBLE_TEAM, FACADE, REST, ATTRACT, BRINE, ENDURE, EXPLOSION, PAYBACK, AVALANCHE, SLEEP_TALK, SWAGGER, SUBSTITUTE, SURF, WHIRLPOOL, DIVE
	; end

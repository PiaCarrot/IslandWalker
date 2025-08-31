	db 0 ; species ID placeholder

	db  35,  40, 100,  35,  90,  55
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 120 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 30 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/omanyte/front.dimensions"
	db SWIFT_SWIM, SHELL_ARMOR ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, HAIL, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, FACADE, REST, ATTRACT, THIEF, SCALD, BRINE, ENDURE, ROCK_POLISH, GYRO_BALL, STEALTH_ROCK, ROCK_SLIDE, SLEEP_TALK, SWAGGER, SUBSTITUTE, SURF, ROCK_SMASH, WATERFALL, WHIRLPOOL
	; end

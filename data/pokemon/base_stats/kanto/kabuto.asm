	db 0 ; species ID placeholder

	db  30,  80,  90,  55,  55,  45
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 119 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 30 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/kabuto/front.dimensions"
	db SWIFT_SWIM, BATTLE_ARMOR ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, HAIL, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, GIGA_DRAIN, DIG, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, SCALD, BRINE, ENDURE, ROCK_POLISH, STONE_EDGE, STEALTH_ROCK, ROCK_SLIDE, SLEEP_TALK, SWAGGER, SUBSTITUTE, SURF, ROCK_SMASH, WATERFALL, WHIRLPOOL
	; end

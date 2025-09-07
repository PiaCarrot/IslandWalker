	db 0 ; species ID placeholder

	db 110,  80,  90,  65,  95,  90
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ICE, WATER ; type
	db 45 ; catch rate
	db 192 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/walrein/front.dimensions"
	db THICK_FAT, ICE_BODY ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_WATER_1, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, ROAR, HAIL, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, EARTHQUAKE, DOUBLE_TEAM, ROCK_TOMB, FACADE, REST, ATTRACT, BRINE, ENDURE, GIGA_IMPACT, AVALANCHE, SWORDS_DANCE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, SURF, STRENGTH, ROCK_SMASH, WATERFALL, WHIRLPOOL, DIVE
	; end

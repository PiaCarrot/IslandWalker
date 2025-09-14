	db 0 ; species ID placeholder

	db 130,  70,  35,  60,  70,  35
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 125 ; catch rate
	db 137 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/wailmer/front.dimensions"
	db WATER_VEIL, OBLIVIOUS ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_FLUCTUATING ; growth rate
	dn EGG_GROUND, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, ROAR, HAIL, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, EARTHQUAKE, DOUBLE_TEAM, ROCK_TOMB, FACADE, REST, ATTRACT, SCALD, BRINE, ENDURE, AVALANCHE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, SURF, STRENGTH, ROCK_SMASH, WATERFALL, WHIRLPOOL, DIVE
	; end

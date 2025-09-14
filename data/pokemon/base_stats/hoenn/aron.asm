	db 0 ; species ID placeholder

	db  50,  70, 100,  30,  40,  40
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db STEEL, ROCK ; type
	db 180 ; catch rate
	db 96 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 35 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/aron/front.dimensions"
	db ROCK_HEAD, STURDY ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, ROAR, SUNNY_DAY, PROTECT, RAIN_DANCE, IRON_TAIL, EARTHQUAKE, DIG, DOUBLE_TEAM, SHOCK_WAVE, SANDSTORM, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, ENDURE, SHADOW_CLAW, ROCK_POLISH, STEALTH_ROCK, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH
	; end

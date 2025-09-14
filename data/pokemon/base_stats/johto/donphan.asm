	db 0 ; species ID placeholder

	db  90, 120, 120,  50,  60,  60
	evs  0,   1,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 60 ; catch rate
	db 189 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/donphan/front.dimensions"
	db STURDY, SAND_VEIL ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, SUNNY_DAY, HYPER_BEAM, PROTECT, IRON_TAIL, EARTHQUAKE, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, FACADE, REST, ATTRACT, ENDURE, GIGA_IMPACT, ROCK_POLISH, STONE_EDGE, GYRO_BALL, STEALTH_ROCK, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, POISON_JAB, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

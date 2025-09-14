	db 0 ; species ID placeholder

	db  60,  85,  69,  80,  65,  79
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, POISON ; type
	db 90 ; catch rate
	db 147 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/arbok/front.dimensions"
	db INTIMIDATE, SHED_SKIN ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_M ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, GIGA_DRAIN, IRON_TAIL, EARTHQUAKE, DIG, DOUBLE_TEAM, SLUDGE_BOMB, ROCK_TOMB, TORMENT, FACADE, REST, ATTRACT, THIEF, ENDURE, PAYBACK, GIGA_IMPACT, DARK_PULSE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, POISON_JAB, SWAGGER, SUBSTITUTE, STRENGTH
	; end

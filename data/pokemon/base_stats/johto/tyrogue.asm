	db 0 ; species ID placeholder

	db  35,  35,  35,  35,  35,  35
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 91 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/tyrogue/front.dimensions"
	db GUTS, STEADFAST ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm BULK_UP, WORK_UP, SUNNY_DAY, PROTECT, RAIN_DANCE, EARTHQUAKE, LOW_SWEEP, BRICK_BREAK, DOUBLE_TEAM, FACADE, REST, ATTRACT, THIEF, ENDURE, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

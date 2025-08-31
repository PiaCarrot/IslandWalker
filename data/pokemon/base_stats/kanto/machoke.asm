	db 0 ; species ID placeholder

	db  80, 100,  70,  45,  50,  60
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 90 ; catch rate
	db 146 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/machoke/front.dimensions"
	db GUTS, NO_GUARD ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, BULK_UP, WORK_UP, SUNNY_DAY, LIGHT_SCREEN, PROTECT, RAIN_DANCE, EARTHQUAKE, LOW_SWEEP, DIG, BRICK_BREAK, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, ROCK_TOMB, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, FLING, ENDURE, PAYBACK, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, POISON_JAB, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

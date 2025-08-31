	db 0 ; species ID placeholder

	db  50,  95,  95,  70,  35, 110
	evs  0,   0,   0,   0,   0,   2
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 138 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F0 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/hitmontop/front.dimensions"
	db INTIMIDATE, TECHNICIAN ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm BULK_UP, WORK_UP, SUNNY_DAY, PROTECT, RAIN_DANCE, EARTHQUAKE, LOW_SWEEP, DIG, BRICK_BREAK, DOUBLE_TEAM, SANDSTORM, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, FOCUS_BLAST, ENDURE, STONE_EDGE, GYRO_BALL, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

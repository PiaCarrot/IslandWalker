	db 0 ; species ID placeholder

	db  50,  75,  85,  40,  20,  30
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 93 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/sandshrew/front.dimensions"
	db SAND_VEIL, SAND_RUSH ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WORK_UP, SUNNY_DAY, PROTECT, SAFEGUARD, IRON_TAIL, EARTHQUAKE, DIG, BRICK_BREAK, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, FLING, ENDURE, SHADOW_CLAW, GYRO_BALL, SWORDS_DANCE, STEALTH_ROCK, ROCK_SLIDE, X_SCISSOR, SLEEP_TALK, BULLDOZE, POISON_JAB, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH, ROCK_CLIMB
	; end

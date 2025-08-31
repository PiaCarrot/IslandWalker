	db 0 ; species ID placeholder

	db  70, 110,  80, 105,  55,  80
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 187 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/scyther/front.dimensions"
	db SWARM, TECHNICIAN ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, BRICK_BREAK, DOUBLE_TEAM, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, STEEL_WING, ROOST, FALSE_SWIPE, ENDURE, BUG_BUZZ, GIGA_IMPACT, SWORDS_DANCE, X_SCISSOR, SLEEP_TALK, SWAGGER, U_TURN, SUBSTITUTE, CUT, DEFOG, ROCK_SMASH
	; end

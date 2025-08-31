	db 0 ; species ID placeholder

	db  50,  70,  50,  70,  50,  50
	evs  0,   1,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, DRAGON ; type
	db 120 ; catch rate
	db 126 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/vibrava/front.dimensions"
	db LEVITATE, SAND_STREAM ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm SUNNY_DAY, HYPER_BEAM, PROTECT, GIGA_DRAIN, SOLARBEAM, EARTHQUAKE, DIG, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, FACADE, REST, ATTRACT, STEEL_WING, ROOST, ENDURE, DRAGON_PULSE, BUG_BUZZ, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, U_TURN, SUBSTITUTE, FLY, STRENGTH, DEFOG, ROCK_SMASH
	; end

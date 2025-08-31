	db 0 ; species ID placeholder

	db  90,  60,  60,  40,  40,  40
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 120 ; catch rate
	db 124 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/phanpy/front.dimensions"
	db PICKUP, SAND_VEIL ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, SUNNY_DAY, PROTECT, IRON_TAIL, EARTHQUAKE, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, FACADE, REST, ATTRACT, ENDURE, STEALTH_ROCK, ROCK_SLIDE, SLEEP_TALK, BULLDOZE, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

	db 0 ; species ID placeholder

	db  10,  55,  25,  95,  35,  45
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, STEEL ; type
	db 255 ; catch rate
	db 81 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/diglett_alola/front.dimensions"
	db SAND_VEIL, TANGLING_HAIR ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SANDSTORM, DIG, FRUSTRATION, FACADE, RETURN, ENDURE, DOUBLE_TEAM, AERIAL_ACE, STONE_EDGE, HIDDEN_POWER, EARTHQUAKE, THIEF, ATTRACT, WORK_UP, SUBSTITUTE, REST, SWAGGER, SUNNY_DAY, ROCK_SLIDE, PROTECT, SLUDGE_BOMB, FLASH_CANNON, SHADOW_CLAW, BULLDOZE, TOXIC, SWORDS_DANCE, ROCK_TOMB, SLEEP_TALK, STEALTH_ROCK
	; end

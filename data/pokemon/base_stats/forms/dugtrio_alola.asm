	db 0 ; species ID placeholder

	db  35,  80,  50, 120,  50,  70
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, STEEL ; type
	db 50 ; catch rate
	db 153 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/dugtrio_alola/front.dimensions"
	db SAND_VEIL, TANGLING_HAIR ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm SANDSTORM, DIG, FRUSTRATION, FACADE, RETURN, ENDURE, DOUBLE_TEAM, AERIAL_ACE, STONE_EDGE, HIDDEN_POWER, EARTHQUAKE, THIEF, ATTRACT, WORK_UP, SUBSTITUTE, REST, SWAGGER, SUNNY_DAY, ROCK_SLIDE, PROTECT, SLUDGE_BOMB, FLASH_CANNON, GIGA_IMPACT, SHADOW_CLAW, BULLDOZE, TOXIC, SWORDS_DANCE, ROCK_TOMB, HYPER_BEAM, SLEEP_TALK, STEALTH_ROCK
	; end

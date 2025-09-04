	db 0 ; species ID placeholder

	db  95,  95,  85,  55, 125,  65
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, DRAGON ; type
	db 45 ; catch rate
	db 212 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/exeggutor_alola/front.dimensions"
	db FRISK, HARVEST ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm DOUBLE_TEAM, EARTHQUAKE, REST, BULLET_SEED, SLUDGE_BOMB, TRICK_ROOM, EXPLOSION, SWORDS_DANCE, SLEEP_TALK, GIGA_DRAIN, FACADE, RETURN, BRICK_BREAK, ENDURE, REFLECT, SUNNY_DAY, PROTECT, BULLDOZE, TOXIC, FRUSTRATION, DRAGON_PULSE, PSYCHIC_M, FLAMETHROWER, DREAM_EATER, GRASS_KNOT, THIEF, ATTRACT, SOLARBEAM, SWAGGER, SKILL_SWAP, CALM_MIND, IRON_TAIL, ENERGY_BALL, PSYCH_UP, HIDDEN_POWER, SUBSTITUTE, LIGHT_SCREEN, GIGA_IMPACT, HYPER_BEAM
	; end

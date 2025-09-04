	db 0 ; species ID placeholder

	db  60,  95,  80,  30,  60,  80
	evs  0,   2,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, GRASS ; type
	db 75 ; catch rate
	db 128 ; base exp
	dw TINYMUSHROOM, BIG_MUSHROOM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/parasect_valencia/front.dimensions"
	db EFFECT_SPORE, DRY_SKIN ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm BULLET_SEED, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SOLARBEAM, DIG, BRICK_BREAK, DOUBLE_TEAM, SLUDGE_BOMB, AERIAL_ACE, FACADE, REST, ATTRACT, THIEF, ENERGY_BALL, FALSE_SWIPE, ENDURE, GIGA_IMPACT, FLASH, SWORDS_DANCE, X_SCISSOR, SLEEP_TALK, GRASS_KNOT, SWAGGER, SUBSTITUTE, CUT, ROCK_SMASH
	; end

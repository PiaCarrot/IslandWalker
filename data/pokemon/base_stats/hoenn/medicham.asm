	db 0 ; species ID placeholder

	db  60,  60,  75,  80,  60,  75
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, PSYCHIC_TYPE ; type
	db 90 ; catch rate
	db 153 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/medicham/front.dimensions"
	db PURE_POWER, PURE_POWER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, CALM_MIND, BULK_UP, WORK_UP, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, LOW_SWEEP, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, ROCK_TOMB, FACADE, REST, ATTRACT, FOCUS_BLAST, ENERGY_BALL, FLING, ENDURE, DRAIN_PUNCH, RECYCLE, GIGA_IMPACT, FLASH, PSYCH_UP, ROCK_SLIDE, SLEEP_TALK, POISON_JAB, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

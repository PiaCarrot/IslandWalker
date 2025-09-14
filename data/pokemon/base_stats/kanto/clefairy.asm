	db 0 ; species ID placeholder

	db  70,  45,  48,  35,  60,  65
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 68 ; base exp
	dw LEPPA_BERRY, MOON_STONE ; items
	db GENDER_F75 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/clefairy/front.dimensions"
	db CUTE_CHARM, MAGIC_GUARD ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_S ; drop item
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, CALM_MIND, SIGNAL_BEAM, WORK_UP, SUNNY_DAY, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, DAZZLING_GLEAM, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, DIG, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, FACADE, REST, ATTRACT, FLING, CHARGE_BEAM, ENDURE, DRAIN_PUNCH, RECYCLE, FLASH, THUNDER_WAVE, STEALTH_ROCK, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

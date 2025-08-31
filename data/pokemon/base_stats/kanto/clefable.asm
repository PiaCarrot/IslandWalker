	db 0 ; species ID placeholder

	db  95,  70,  73,  60,  85,  90
	evs  3,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 129 ; base exp
	dw LEPPA_BERRY, MOON_STONE ; items
	db GENDER_F75 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/clefable/front.dimensions"
	db CUTE_CHARM, MAGIC_GUARD ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm FOCUS_PUNCH, WATER_PULSE, CALM_MIND, WORK_UP, SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, DAZZLING_GLEAM, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, DIG, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, SHOCK_WAVE, FLAMETHROWER, FIRE_BLAST, FACADE, REST, ATTRACT, FOCUS_BLAST, FLING, CHARGE_BEAM, ENDURE, DRAIN_PUNCH, RECYCLE, GIGA_IMPACT, FLASH, THUNDER_WAVE, STEALTH_ROCK, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end

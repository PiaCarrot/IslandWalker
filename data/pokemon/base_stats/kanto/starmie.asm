	db 0 ; species ID placeholder

	db  60,  75,  85, 115, 100,  85
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp
	dw STARDUST, STAR_PIECE ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/starmie/front.dimensions"
	db ILLUMINATE, NATURAL_CURE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, HAIL, ICE_BEAM, BLIZZARD, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, DAZZLINGGLEAM, THUNDERBOLT, THUNDER, PSYCHIC_M, DOUBLE_TEAM, REFLECT, FACADE, REST, SKILL_SWAP, SCALD, BRINE, ENDURE, RECYCLE, GIGA_IMPACT, FLASH, AVALANCHE, THUNDER_WAVE, GYRO_BALL, PSYCH_UP, SLEEP_TALK, DREAM_EATER, GRASS_KNOT, SWAGGER, SUBSTITUTE, FLASH_CANNON, TRICK_ROOM, SURF, WATERFALL, WHIRLPOOL
	; end

	db 0 ; species ID placeholder

	db  85,  80,  90,  60, 105,  95
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 180 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/porygon2/front.dimensions"
	db TRACE, DOWNLOAD ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm SUNNY_DAY, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLAR_BEAM, IRON_TAIL, THUNDERBOLT, THUNDER, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, AERIAL_ACE, FACADE, REST, THIEF, CHARGE_BEAM, ENDURE, RECYCLE, GIGA_IMPACT, FLASH, THUNDER_WAVE, PSYCH_UP, SLEEP_TALK, DREAM_EATER, SWAGGER, SUBSTITUTE, TRICK_ROOM
	; end

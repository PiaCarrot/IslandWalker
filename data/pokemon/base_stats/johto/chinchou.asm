	db 0 ; species ID placeholder

	db  75,  38,  38,  67,  56,  56
	evs  1,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, ELECTRIC ; type
	db 190 ; catch rate
	db 90 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/johto/chinchou/front.dimensions"
	db VOLT_ABSORB, ILLUMINATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, HAIL, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, DAZZLING_GLEAM, THUNDERBOLT, THUNDER, DOUBLE_TEAM, SHOCK_WAVE, FACADE, VOLT_SWITCH, REST, ATTRACT, SCALD, BRINE, CHARGE_BEAM, ENDURE, FLASH, THUNDER_WAVE, SLEEP_TALK, SWAGGER, SUBSTITUTE, SURF, WATERFALL, WHIRLPOOL
	; end

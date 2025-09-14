	db 0 ; species ID placeholder

	db  30,  40,  70,  60,  70,  25
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 225 ; catch rate
	db 83 ; base exp
	dw NO_ITEM, DRAGON_SCALE ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/kanto/horsea/front.dimensions"
	db SWIFT_SWIM, SNIPER ; wBaseAbility1, wBaseAbility2
	dw EXP_CANDY_XS ; drop item
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, SIGNAL_BEAM, HAIL, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, DOUBLE_TEAM, FACADE, REST, ATTRACT, SCALD, BRINE, ENDURE, DRAGON_PULSE, SLEEP_TALK, SWAGGER, SUBSTITUTE, FLASH_CANNON, SURF, WATERFALL, WHIRLPOOL, DIVE
	; end

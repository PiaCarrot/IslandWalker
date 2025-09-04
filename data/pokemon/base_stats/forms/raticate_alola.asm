	db 0 ; species ID placeholder

	db  55,  81,  60,  97,  50,  70
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/raticate_alola/front.dimensions"
	db GLUTTONY, HUSTLE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, ICE_BEAM, EMBARGO, FRUSTRATION, FACADE, BLIZZARD, RETURN, DOUBLE_TEAM, BULK_UP, U_TURN, GRASS_KNOT, TAUNT, HIDDEN_POWER, TORMENT, THIEF, ATTRACT, SUBSTITUTE, REST, SWAGGER, SUNNY_DAY, SNARL, PROTECT, RAIN_DANCE, DARK_PULSE, SLUDGE_BOMB, GIGA_IMPACT, SHADOW_CLAW, SHADOW_BALL, TOXIC, SWORDS_DANCE, HYPER_BEAM, SLEEP_TALK
	; end

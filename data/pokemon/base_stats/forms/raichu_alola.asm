	db 0 ; species ID placeholder

	db  60,  90,  55, 100,  90,  80
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

        db ELECTRIC, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 122 ; base exp
	dw NO_ITEM,ORAN_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/forms/raichu_alola/front.dimensions"
	db SURGE_SURFER, SURGE_SURFER ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
        tmhm CHARGE_BEAM, DOUBLE_TEAM, FLING, VOLT_SWITCH, REST, SURF, SLEEP_TALK, DIG, FOCUS_PUNCH, FACADE, RETURN, BRICK_BREAK, ENDURE, NASTY_PLOT, REFLECT, PROTECT, RAIN_DANCE, TOXIC, THUNDER, FRUSTRATION, PSYCHIC_M, GRASS_KNOT, DAZZLING_GLEAM, FOCUS_BLAST, THIEF, ATTRACT, SWAGGER, SKILL_SWAP, CALM_MIND, THUNDERBOLT, SAFEGUARD, IRON_TAIL, THUNDER_WAVE, HIDDEN_POWER, SUBSTITUTE, LIGHT_SCREEN, GIGA_IMPACT, HYPER_BEAM
	; end

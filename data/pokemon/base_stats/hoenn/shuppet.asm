	db 0 ; species ID placeholder

	db  44,  75,  35,  45,  63,  33
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 225 ; catch rate
	db 97 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/shuppet/front.dimensions"
	db INSOMNIA, FRISK ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CALM_MIND, TOXIC, HIDDEN_POWER, SUNNY_DAY, TAUNT, PROTECT, RAIN_DANCE, FRUSTRATION, THUNDERBOLT, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, TORMENT, FACADE, SECRET_POWER, REST, ATTRACT, THIEF, SKILL_SWAP, SNATCH, FLASH
	; end

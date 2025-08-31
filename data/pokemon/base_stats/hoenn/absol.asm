	db 0 ; species ID placeholder

	db  65, 130,  60,  75,  75,  60
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 30 ; catch rate
	db 174 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 25 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/absol/front.dimensions"
	db PRESSURE, PRESSURE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm WATER_PULSE, CALM_MIND, HAIL, SUNNY_DAY, TAUNT, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, THUNDER, SHADOW_BALL, DOUBLE_TEAM, SHOCK_WAVE, FLAMETHROWER, SANDSTORM, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, TORMENT, FACADE, REST, ATTRACT, THIEF, FALSE_SWIPE, CHARGE_BEAM, ENDURE, WILL_O_WISP, SHADOW_CLAW, PAYBACK, GIGA_IMPACT, FLASH, STONE_EDGE, THUNDER_WAVE, SWORDS_DANCE, PSYCH_UP, SNARL, DARK_PULSE, ROCK_SLIDE, X_SCISSOR, SLEEP_TALK, DREAM_EATER, SWAGGER, SUBSTITUTE, CUT, STRENGTH, ROCK_SMASH
	; end

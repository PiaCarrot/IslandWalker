	db 0 ; species ID placeholder

	db  70,  90,  70,  70,  60,  60
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 127 ; catch rate
	db 128 ; base exp
	dw NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/hoenn/mightyena/front.dimensions"
	db INTIMIDATE, INTIMIDATE ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm ROAR, SUNNY_DAY, TAUNT, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, DIG, SHADOW_BALL, DOUBLE_TEAM, TORMENT, FACADE, REST, ATTRACT, THIEF, ENDURE, NASTY_PLOT, PAYBACK, GIGA_IMPACT, SNARL, DARK_PULSE, SLEEP_TALK, SWAGGER, SUBSTITUTE, STRENGTH, ROCK_SMASH
	; end
